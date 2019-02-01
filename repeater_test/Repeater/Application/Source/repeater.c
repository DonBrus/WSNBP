/************************************************************************************
* Repeater main 
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected:
* Last Tested:
************************************************************************************/



#include "../../PLM/LibInterface/Crm.h"
#include "../../PLM/LibInterface/Timer.h"
#include "../../PLM/LibInterface/Interrupt.h"
#include "../../PLM/Interface/RF_Config.h"
#include "../../PLM/Interface/PlatformInit.h"
#include "../../SMAC/Interface/GlobalDefs.h"
#include "../../SMAC/Interface/TransceiverConfigMngmnt.h"
#include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
#include "../../SMAC/Interface/WirelessLinkMngmt.h"
#include "../../SMAC/Interface/SecurityMngmnt.h"
#include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
#include "../../SMAC/Configure/options_config.h"
#include "../../SMAC/Configure/security_config.h"
#include "../../SMAC/Drivers/Configure/board_config.h"
#include "../../SMAC/Drivers/Interface/Delay.h"
#include "../../SMAC/Drivers/Interface/ghdr/maca.h"
#include "../../SMAC/Drivers/Interface/MacaInterrupt.h"
#include "../Utilities/Leds.h"
#include "../Utilities/UartUtil.h"
#include "../Utilities/Keyboard.h"
#include "../Configure/app_config.h"

#if OTAP_ENABLED == TRUE
 #include "../Otap/Otap.h"
#endif

/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/
#define REPEATER_CHANN CHANNEL_NUMBER

#define SIZE_OF_MODE_TEXT      (6)

#define TEXT_DIGITS_PER_CHANN  (2)

#define MAX_SMAC_PACK_SZ (125)

/* MACA clocks run at 250 KHz, then each count represents 4 usec */
#define USECS_BY_MACA_CLK_TIC  (4)
#define MACA_CLK_COUNTS_FOR_ONE_MILLISEC (250)

/* Used at process_change_delay */
#define DLY_MILLISEC (0)
#define DLY_MICROSEC (1)
#define MAX_MILLI_DIGITS (5)
#define MAX_MICRO_DIGITS (3)
#define MAX_MILLI_VALUE (0xFFFF)
#define MIN_MILLI_VALUE (1)

/* Used at process_ready_prompt */
#define RDY_INIT (0)
#define RDY_READ (1)

#define PRINT_PROMPT() (Uart_Print((uint8_t *)(&u8RepRdyPrompt)))
#define PRINT_CHAR_ERROR() (Uart_Print((uint8_t *)(&u8WrongChar)))


typedef union bytes_2_short_tag {
  uint16_t u16Short;
  struct{
    uint8_t Byte0;
    uint8_t Byte1;
  }bytes;
}bytes_2_short_t;

/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************
************************************************************************************/
static void display_config(void);
static void display_menu(void);
static void display_statistics(void);
static void print_freescale_logo(void);
static void print_n_blank_spaces(uint8_t n);
static void process_uart_data(void);

static void process_change_delay (void);
static void process_repeater_run (void);
static void process_ready_prompt (void);

static void repeater_app(void);
static void repeater_app_init(void);
static void repeater_run_sm (void);

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/
#define RTCTimeout 0x000FFFFFF

typedef enum {
    gRepOpModeNormal_c = 0,
    gRepOpModeDummy_c,
    gRepOpModeSniff_c,
    gRepOpModeMax_c
} RepOpMode_t;

typedef enum RepAppState_tat{
    gRepAppStReady_c = 0,
    gRepAppStRun_c,
    gRepAppStChgDly_c,
    gRepAppStMax_c
} RepAppState_t;

typedef enum u8RepeaterRunState_tag{
    gRepeaterRunStIdle_c = 0,
    gRepeaterRunStRcv_c,
    gRepeaterRunStWaiting_c,
    gRepeaterRunStTx_c
}u8RepeaterRunState_t;

typedef struct RepDelay_tag {
  uint16_t millisecondsDly;
  uint16_t microsecondsDly;
} RepDelay_t;

typedef struct RepStat_tag {
  uint16_t u16ReccivedPkts;
  uint16_t u16RetransmitedPkts;
  uint16_t u16BadPkts;
  uint16_t u16DroppedPkts;
}RepStat_t;

/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/
const uint8_t u8RepOpModeText[gRepOpModeMax_c][SIZE_OF_MODE_TEXT] = \
                  {{"NORMAL"},{"DUMMY "},{"SNIFF"}};

const uint8_t u8RepRdyPrompt[] = {"\n\rReady> \0"};

const uint8_t u8WrongChar[] = {"\n\rThere has been an error in your command.  Please try it again"};

static const callback_t cbRepeaterStFn_c[gRepAppStMax_c] = {
          (callback_t)(process_ready_prompt),
          (callback_t)(process_repeater_run),
          (callback_t)(process_change_delay)};


/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
extern FuncReturn_t CrmInit(void);
extern FuncReturn_t TsmInit(void);
extern void ResetMaca(void);

void repeater_rx_cb (void);
void data_indication_execute(void);

/* Variables declaration */
bool_t gbDataIndicationFlag;
bool_t gbRdyToProcessEvnt;

bool_t isUartDataRdy;

uint8_t u8RepOpMode;
uint8_t u8RepeaterPower;
uint8_t u8UartDataSz;
uint8_t u8UartBuffer[8];
uint8_t u8UartData[8];

uint8_t dataTX[smac_pdu_size(MAX_SMAC_PACK_SZ+1)];
#if OTAP_ENABLED == TRUE
  uint8_t dataRX[smac_pdu_size(MAX_SMAC_PACK_SZ)];
#else
  uint8_t dataRX[smac_pdu_size(MAX_SMAC_PACK_SZ)];
#endif

message_t TX_msg;
message_t RX_msg;

channel_num_t u8RepeaterChann;
RepDelay_t sRepeaterDelay;
RepStat_t sRepeaterStat;
RepAppState_t u8RepeaterState;
u8RepeaterRunState_t u8RepeaterRunSt;

uint32_t u32RepeatRxTimeOut;

/************************************************************************************
* main function
*
* Executes the main function.
*
************************************************************************************/
void Main(void)
{
  MSG_INIT(TX_msg, &dataTX, NULL);
  MSG_INIT(RX_msg, &dataRX, (callback_t)(repeater_rx_cb));
  RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
  
  repeater_app_init();

  for(;;)
  {
    (void)process_radio_msg();
    data_indication_execute();

#if OTAP_ENABLED == TRUE
    if(gbOtapExecute) 
    {           
        OTAP_execute();              
    }
    else
#endif  

    {
      process_uart_data();
      repeater_app();
    }
  }

}


/************************************************************************************
* repeater_rx_cb function
*
* This function is called when a MACA's event occurs.
*
************************************************************************************/
void repeater_rx_cb (void)
{
  if(TRUE == gRadioEvntFlags.Bits.data_indication_flag)
  {
    gRadioEvntFlags.Bits.data_indication_flag = FALSE;
    gbDataIndicationFlag = TRUE;
  }
  else
  {
    /* Do nothing */
  }
}

/************************************************************************************
* data_indication_execute function
*
* This function process an incoming message.
*
************************************************************************************/
void data_indication_execute(void)
{
  if( ( (MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state)           ||
        (MSG_RX_ABORTED == RX_msg.u8Status.msg_state)                ||
        (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state)   ||
        (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state)  ) &&
      (TRUE == gbDataIndicationFlag) )
  {
    gbDataIndicationFlag = FALSE;

#if OTAP_ENABLED == TRUE
    OTAP_data_indication_execute();   
    if(!gbOtapExecute)
#endif
    {
      gbRdyToProcessEvnt = TRUE;
    }
  }
}


/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* display_menu function
*
* This function displays the repeater's menu.
************************************************************************************/
static void display_menu(void)
{
  Uart_Print("\n\r-----------------  Repeater Application  -----------------------\n\r");
  Uart_Print("  <s> Show Statistics\n\r");
  Uart_Print("  <0> Reset Statistics\n\r");
  Uart_Print("  <r> Repeat menu\n\r");
  Uart_Print("  <m> Switch Repeater mode\n\r");
  Uart_Print("  <p> Change Power\n\r");
  Uart_Print("  <d> Change Delay lenght\n\r");
  Uart_Print("  <c> Switch Channel\n\r");
  Uart_Print("  <z> EXECUTE\n\r\n\r");
}


/************************************************************************************
* display_config function
*
* This function displays repeater's current configuration.
************************************************************************************/
static void display_config(void)
{
  Uart_Print("\n\r  Current Device's configuration is:\n\r");
  Uart_Print("    App Mode     Channel     Power Level     Delay\n\r");
  Uart_Print("    --------     -------     -----------     -------------------\n\r");
  print_n_blank_spaces(4);
  Uart_Tx(&(u8RepOpModeText[u8RepOpMode][0]), SIZE_OF_MODE_TEXT);
  print_n_blank_spaces(7);
  Uart_PrintByteDec(u8RepeaterChann+11);
  print_n_blank_spaces(10);
  Uart_PrintByteDec(u8RepeaterPower);
  print_n_blank_spaces(14);
  Uart_PrintShortDec(sRepeaterDelay.millisecondsDly);
  Uart_Print(" ms   ");
  Uart_PrintShortDec(sRepeaterDelay.microsecondsDly);
  Uart_Print(" us\n\r");
}

/************************************************************************************
* display_config function
*
* This function displays repeater's statistics.
************************************************************************************/
static void display_statistics(void)
{
  Uart_Print("\n\r  ------------------  Statistics ------------------\n\r");
  Uart_Print("  Number of packets\n\r");
  Uart_Print("  Received     Retrasmitted     Bad         Dropped\n\r");
  Uart_Print("  --------     ------------     -------     -------\n\r");

  print_n_blank_spaces(5);
  Uart_PrintShortDec(sRepeaterStat.u16ReccivedPkts);
  print_n_blank_spaces(12);
  Uart_PrintShortDec(sRepeaterStat.u16RetransmitedPkts);
  print_n_blank_spaces(7);
  Uart_PrintShortDec(sRepeaterStat.u16BadPkts);
  print_n_blank_spaces(7);
  Uart_PrintShortDec(sRepeaterStat.u16DroppedPkts);

  Uart_Print("\n\r");
}

/************************************************************************************
* execute_command function
*
* This function performs the selected action from the repeater menu.
************************************************************************************/
static void execute_command(uint8_t cmd)
{
  FuncReturn_t tmpChange;
  uint8_t u8SafeTimeOut;
  
  u8SafeTimeOut = 0xff;

  switch(cmd){
    case('s'):
      {
        display_statistics();
        PRINT_PROMPT();
      }
      break;
    case('0'):
      {
        sRepeaterStat.u16ReccivedPkts = 0;
        sRepeaterStat.u16RetransmitedPkts = 0;
        sRepeaterStat.u16BadPkts = 0;
        sRepeaterStat.u16DroppedPkts = 0;
        Uart_Print("\n\r  Statistics reset");
        PRINT_PROMPT();
      }
      break;
    case('r'):
      {
        display_menu();
        display_config();
        PRINT_PROMPT();
      }
      break;
    case('m'):
      {
        u8RepOpMode++;
        if(gRepOpModeMax_c <= u8RepOpMode)
        {
          u8RepOpMode = 0;
        }
        display_config();
        PRINT_PROMPT();
      }
      break;
    case('p'):
      {
        do{
          u8RepeaterPower++;
          if((MAX_POWER+1) <= u8RepeaterPower)
          {
            u8RepeaterPower = 0;
          }
          u8SafeTimeOut++;
          tmpChange = MLMEPAOutputAdjust(u8RepeaterPower);
        }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
        display_config();
        PRINT_PROMPT();
      }
      break;
    case('d'):
      {
        u8RepeaterState = gRepAppStChgDly_c;
        Uart_Print("\n\r  Enter delay, first enter the miliseconds and then the microseconds.\n\r");
        Uart_Print(" how many msecs usecs (where 00001<value<65535) please write all digits> ");
      }
      break;
    case('c'):
      {
        do{
          u8RepeaterChann++;
          if(TOTAL_CHANN <= u8RepeaterChann)
          {
            u8RepeaterChann = CHANNEL11;
          }
          u8SafeTimeOut++;
          tmpChange = MLMESetChannelRequest(u8RepeaterChann);
        }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));          
        display_config();
        PRINT_PROMPT();
      }
      break;
    case('z'):
      {
        Uart_Print("\n\r  Press any key to go back to the main menu");
        Uart_Print("\n\r  Executing...");
        u8RepeaterState = gRepAppStRun_c;
      }
      break;

    default:
      PRINT_CHAR_ERROR();
      PRINT_PROMPT();
      break;
  }
}


/************************************************************************************
* process_uart_data function
*
* This function checks and reports if any data arrives to the UART.
************************************************************************************/
static void process_uart_data(void)
{
  isUartDataRdy = FALSE;
  if(gUartReadStatusComplete_c == gu8SCIStatus)
  {
    if(0 != gu16SCINumOfBytes)
    {
      uint8_t i;
      UartGetByteFromRxBuffer(gUart_PortDefault_d, u8UartBuffer);
      u8UartDataSz = (uint8_t)(gu16SCINumOfBytes);
      for(i=0; i<u8UartDataSz; i++)
      {
        u8UartData[i] = u8UartBuffer[i];
      }
      gu16SCINumOfBytes = 0;
      isUartDataRdy = TRUE; 
    }
  }
}

/************************************************************************************
* process_ready_prompt function
*
* This function .
************************************************************************************/
static void process_ready_prompt (void)
{
  static uint8_t u8RdySt = RDY_INIT;

  if(TRUE == isUartDataRdy)
  {
    switch(u8RdySt)
    {
      case(RDY_INIT):
        {
          display_menu();
          display_config();
          PRINT_PROMPT();
          u8RdySt = RDY_READ;
        }
        break;

      case(RDY_READ):
        {
          execute_command(u8UartData[0]);
        }
        break;

      default:
        break;
    }
  }
}

/************************************************************************************
* process_repeater_run function
*
* This function .
************************************************************************************/
static void process_repeater_run (void)
{
  if(TRUE == isUartDataRdy)
  {
    abort_message(&RX_msg);
    abort_message(&TX_msg);
    u8RepeaterRunSt = gRepeaterRunStIdle_c;

    u8RepeaterState = gRepAppStReady_c;
    PRINT_PROMPT();
  }
  else
  {
    repeater_run_sm();
  }
}


/************************************************************************************
* repeater_run_sm function
*
* This function .
************************************************************************************/
static void repeater_run_sm (void)
{
  switch(u8RepeaterRunSt)
  {
    case(gRepeaterRunStIdle_c):
      {
        /* Use the TX buffer to receive then it will be ready to be repeated */
        // assegna al buffer rx, riempito successivamente dalla funzione corrispondente,
        // l'indirizzo di tx così da usarlo direttamente
        RX_msg.pu8Buffer = (smac_pdu_t *)(&dataTX);
        
        /* Receive without any timeout */
        RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
        MLMERXEnableRequest(&RX_msg, 0x00000000);

        u8RepeaterRunSt = gRepeaterRunStRcv_c;
      }
      break;
    case(gRepeaterRunStRcv_c):
      {
        if(TRUE == gbRdyToProcessEvnt)
        {
          gbRdyToProcessEvnt = FALSE;
          
          if(MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state)
          {
            (sRepeaterStat.u16ReccivedPkts)++;
            TX_msg.u8BufSize = RX_msg.u8BufSize;
            TX_msg.pu8Buffer = (smac_pdu_t *)(&(dataTX[1]));
            if(gRepOpModeNormal_c == u8RepOpMode)
            {
              RX_msg.pu8Buffer = (smac_pdu_t *)(&dataRX);
              RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
              MLMERXEnableRequest(&RX_msg, u32RepeatRxTimeOut);
              u8RepeaterRunSt = gRepeaterRunStWaiting_c;
            }
            else if(gRepOpModeDummy_c == u8RepOpMode)
            {
              (sRepeaterStat.u16RetransmitedPkts)++;
			  TX_msg.pu8Buffer->u8Data[4] = 'R';

              MCPSDataRequest(&TX_msg);
              u8RepeaterRunSt = gRepeaterRunStTx_c;
            }
            else if(gRepOpModeSniff_c == u8RepOpMode)
            {
              Uart_Print("New frame: ");
              Uart_PrintHex( (RX_msg.pu8Buffer->reserved), \
                             ((RX_msg.pu8Buffer->reserved[0])+1), \
                             (gPrtHexCommas_c|gPrtHexBigEndian_c));
              Uart_Print("\n\r");
              u8RepeaterRunSt = gRepeaterRunStIdle_c;
            }
          }
          else
          {
            if( (MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state) ||
                (MSG_RX_ABORTED == RX_msg.u8Status.msg_state)      ||
                (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state) )
            {
              (sRepeaterStat.u16BadPkts)++;
              /* Receive without any timeout */
              RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
              MLMERXEnableRequest(&RX_msg, 0x00000000);
            }
          }
        }
        else
        {
          if( (MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state) ||
              (MSG_RX_ABORTED == RX_msg.u8Status.msg_state)      ||
              (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state) ||
              (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state) )
          {
            u8RepeaterRunSt = gRepeaterRunStIdle_c;
          }
        }
        
      }
      break;
    case(gRepeaterRunStWaiting_c):
      {
        if(MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state)
        {
          (sRepeaterStat.u16DroppedPkts)++;
          u8RepeaterRunSt = gRepeaterRunStIdle_c;
        }
        else if(MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state)
        {
          (sRepeaterStat.u16RetransmitedPkts)++;
          MCPSDataRequest(&TX_msg);
          u8RepeaterRunSt = gRepeaterRunStTx_c;
        }
        else if( (MSG_RX_ABORTED == RX_msg.u8Status.msg_state) ||
                 (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state))
        {
          (sRepeaterStat.u16BadPkts)++;
          u8RepeaterRunSt = gRepeaterRunStIdle_c;
        }
      }
      break;
    case(gRepeaterRunStTx_c):
      {
        if( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state) ||
            (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg.u8Status.msg_state)    ||
            (MSG_TX_ABORTED == TX_msg.u8Status.msg_state) )
        {
            u8RepeaterRunSt = gRepeaterRunStIdle_c;
        }
      }
      break;
    default:
      {
      }
      break;
  }
}

/************************************************************************************
* process_change_delay function
*
* This function .
************************************************************************************/
static void process_change_delay (void)
{
  static uint8_t u8ChgDlySt = DLY_MILLISEC;
  static uint8_t u8DigitCount = 0;
  static uint32_t u32MilliSecsTmp = 0;
  static uint16_t u16MicroSecsTmp = 0;
  uint8_t u8Digit;

  if(TRUE == isUartDataRdy)
  {
    u8DigitCount++;
    if( ('0' <= (u8UartData[0]) ) &&
        ('9' >= (u8UartData[0]) )    )
    {
      u8Digit = (u8UartData[0]) - '0';
      switch(u8ChgDlySt)
      {
        case(DLY_MILLISEC):
          {
            u32MilliSecsTmp = u32MilliSecsTmp*10;
            u32MilliSecsTmp = u32MilliSecsTmp + u8Digit;
            if(MAX_MILLI_DIGITS == u8DigitCount)
            {

              u8DigitCount = 0;
              if( (MIN_MILLI_VALUE <= u32MilliSecsTmp) &&
                  (MAX_MILLI_VALUE >= u32MilliSecsTmp)    )
              {
                u8ChgDlySt = DLY_MICROSEC;
                Uart_Print("\n\r  Thank you\n\r");
                Uart_Print("  How many usecs (where 000<value<999), please write all three digits (if you don 't want to use it just write 000)> ");
              }
              else
              {
                u8ChgDlySt = DLY_MILLISEC;
                u32MilliSecsTmp = 0;
                u16MicroSecsTmp = 0;
                PRINT_CHAR_ERROR();
                PRINT_PROMPT();
                u8RepeaterState = gRepAppStReady_c;
              }

            }

          }
          break;
  
        case(DLY_MICROSEC):
          {
            u16MicroSecsTmp = u16MicroSecsTmp * 10;
            u16MicroSecsTmp = u16MicroSecsTmp + u8Digit;
            if(MAX_MICRO_DIGITS == u8DigitCount)
            {
              sRepeaterDelay.millisecondsDly = (uint16_t)(u32MilliSecsTmp);
              sRepeaterDelay.microsecondsDly = u16MicroSecsTmp;

               u32RepeatRxTimeOut = (sRepeaterDelay.millisecondsDly * MACA_CLK_COUNTS_FOR_ONE_MILLISEC) \
                                   + ((sRepeaterDelay.microsecondsDly)>>2);

              Uart_Print("\n\r  Thank you\n\r");
              display_config();
              PRINT_PROMPT();
              u8ChgDlySt = DLY_MILLISEC;
              u8DigitCount = 0;
              u32MilliSecsTmp = 0;
              u16MicroSecsTmp = 0;
              u8RepeaterState = gRepAppStReady_c;
            }
          }
          break;
  
        default:
          break;
      }
    }
    else
    {
      u8ChgDlySt = DLY_MILLISEC;
      u8DigitCount = 0;
      u32MilliSecsTmp = 0;
      u16MicroSecsTmp = 0;
      PRINT_CHAR_ERROR();
      PRINT_PROMPT();
      u8RepeaterState = gRepAppStReady_c;
    }
  }
}

/************************************************************************************
* repeater_app function
*
* This function .
************************************************************************************/
static void repeater_app (void)
{
  (cbRepeaterStFn_c[u8RepeaterState])();
}


/************************************************************************************
* repeater_app_init function
*
* This function .
************************************************************************************/
static void repeater_app_init(void)
{
  gbDataIndicationFlag = FALSE;
  gbRdyToProcessEvnt = FALSE;

  u8RepOpMode = gRepOpModeDummy_c;
  u8RepeaterChann = REPEATER_CHANN;
  u8RepeaterPower = gDefaultPowerLevel_c;
  sRepeaterDelay.millisecondsDly = 1;
  sRepeaterDelay.microsecondsDly = 0;
  sRepeaterStat.u16ReccivedPkts = 0;
  sRepeaterStat.u16RetransmitedPkts = 0;
  sRepeaterStat.u16BadPkts = 0;
  sRepeaterStat.u16DroppedPkts = 0;
  u8RepeaterState = gRepAppStReady_c;
  isUartDataRdy = FALSE;

  u8RepeaterRunSt = gRepeaterRunStIdle_c;
  
  u32RepeatRxTimeOut = (sRepeaterDelay.millisecondsDly * MACA_CLK_COUNTS_FOR_ONE_MILLISEC) \
                       + ((sRepeaterDelay.microsecondsDly)>>2);

  ITC_Init();
  IntAssignHandler(gMacaInt_c, MACA_Interrupt);
  ITC_SetPriority(gMacaInt_c, gItcFastPriority_c); // gItcNormalPriority_c
  ITC_EnableInterrupt(gMacaInt_c);
  IntDisableAll();

  ResetMaca();
  MLMERadioInit();
  PlatformPortInit();
  MLMESetChannelRequest(u8RepeaterChann);

  IntEnableAll();
  
  Uart_Init(u8UartBuffer, 8);

  print_freescale_logo();

  (void)MLMEPAOutputAdjust(u8RepeaterPower);


  DelayMs(500);
  MLMESetChannelRequest(u8RepeaterChann);



#if OTAP_ENABLED == TRUE
  OTAP_Init(&RX_msg);
  gbOtapExecute = OTAP_ENABLED;  
#endif 

}

/************************************************************************************
* display_config function
*
* This function prints n blank spaces.
************************************************************************************/
static void print_n_blank_spaces(uint8_t n)
{
  uint8_t i;
  for(i=0; i<n; i++)
  {
    Uart_Print(" ");
  }
}


/************************************************************************************
* display_config function
*
* This function prints an ASCII Freescale's logo.
************************************************************************************/
static void print_freescale_logo(void)
{
  Uart_Print("\n\r\n\r\n\r      #\n");
  Uart_Print("\r     ###\n");
  Uart_Print("\r    ###  *\n");
  Uart_Print("\r     #  ***\n");
  Uart_Print("\r       ***  #\n");
  Uart_Print("\r        *  ###\n");
  Uart_Print("\r          ###\n");
  Uart_Print("\r        *  #\n");
  Uart_Print("\r       ***\n");
  Uart_Print("\r      ***  #\n");
  Uart_Print("\r    #  *  ###\n");
  Uart_Print("\r   ###   ###\n");
  Uart_Print("\r  ###  *  #         CODICE FATTO\n");
  Uart_Print("\r   #  ***\n");
  Uart_Print("\r     ***            M   A       L       E >:(((\n");
  Uart_Print("\r   #  *\n");
  Uart_Print("\r  ###               2 0 1 9\n");
  Uart_Print("\r ###\n");
  Uart_Print("\r  #           Press any key to continue...\n\n");
}


/************************************************************************************
*************************************************************************************
* Private Debug stuff
*************************************************************************************
************************************************************************************/


