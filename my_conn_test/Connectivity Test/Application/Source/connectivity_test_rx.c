/************************************************************************************
* Connectivity Test Main 
*
* (c) Copyright 2011, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 22/08/2011
* Last Tested:
************************************************************************************/

#include "../Configure/app_config.h"
#include "../../PLM/LibInterface/Crm.h"
#include "../../PLM/LibInterface/Interrupt.h"
#include "../../PLM/LibInterface/Timer.h"
#include "../../PLM/Interface/PlatformInit.h"
#include "../../PLM/Interface/RF_Config.h"
#include "../../SMAC/Interface/GlobalDefs.h"
#include "../../SMAC/Interface/TransceiverConfigMngmnt.h"
#include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
#include "../../SMAC/Interface/WirelessLinkMngmt.h"
#include "../../SMAC/Interface/SecurityMngmnt.h"
#include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
#include "../../SMAC/Configure/options_config.h"
#include "../../SMAC/Configure/security_config.h"
#include "../../SMAC/Drivers/Interface/MacaInterrupt.h"
#include "../../SMAC/Drivers/Interface/ghdr/maca.h"
#include "../../SMAC/Drivers/Interface/Delay.h"
#include "../../SMAC/Drivers/Configure/board_config.h"
#include "../Utilities/UartUtil.h"
#include "../Utilities/Leds.h"
#include "../Utilities/Keyboard.h"
#include "../Utilities/Display.h"
#include "../Utilities/Sound.h"
#include "../Otap/Otap.h"

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/
typedef enum
{
  gChannel_c= 0,
  gPower_c,
  gRxTestMode_c,
  gTxTestMode_c,
  gBulkCap_c,
  gCoarseTune_c,
  gFineTune_c,
  MAX_OPTION
} ConfigOption_t;

typedef enum link_quality_value_tag{
  gFarRange_c = 0,
  gMediumRange_c,
  gNearRange_c,
  gVeryNearRange_c
}link_quality_value_t;

typedef struct four_digit_bcd_tag{
  uint8_t u8Units:4;
  uint8_t u8Tens:4;
  uint8_t u8Houndreds:4;
  uint8_t u8Thousands:4;
  uint8_t u8TensThousands:4;
  uint8_t u8HoundredsThousands:4;
}four_digit_bcd_t;

typedef enum per_rx_states_tag{
  IDLE_PER_RX_ST = 0,
  INIT_PER_RX_ST,
  WAITING_PER_RX_ST,
  LISTEN_PER_RX_ST,
  FINISH_PER_RX_ST  
}per_rx_states_t;

typedef enum range_rx_states_tag{
  IDLE_RANGE_RX_ST = 0,
  INIT_RANGE_RX_ST,
  WAITING_RANGE_RX_ST,
  LISTEN_RANGE_RX_ST,
  TRANSMIT_ACK_RANGE_RX_ST,
  FINISH_RANGE_RX_ST  
}range_rx_states_t;

typedef enum per_tx_states_tag{
  IDLE_PER_TX_ST = 0,
  INIT_PER_TX_ST,
  TRANSMITING_PER_TX_ST,
  DONE_PER_TX_ST,
  FINISH_PER_TX_ST  
}per_tx_states_t;

typedef enum range_tx_states_tag{
  IDLE_RANGE_TX_ST = 0,
  INIT_RANGE_TX_ST,
  TRANSMITING_RANGE_TX_ST,
  WAITING_RANGE_TX_ST,
  LISTEN_RANGE_TX_ST,
  RANGE_INDICATION_TX_ST
}range_tx_states_t;


typedef enum prbs9_tx_states_tag{
  INIT_PRBS9_TX_ST = 0,
  TRANSMIT_PRBS9_TX_ST
}prbs9_tx_states_t;


/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/
#define TX_BUF_LEN               68
#define RX_BUF_LEN               68
#define RANGE_RX_BUF_LEN         10
#define RANGE_RX_BUF_LEN_SEC     33
#define PER_RX_BUF_LEN           22
#define ACK_BUF_LEN              6
#define ACK_BUF_LEN_CTR_SEC      17
#define ACK_BUF_LEN_NO_CTR_SEC   33  

#if OTAP_ENABLED == TRUE  
  #define RX_SIZE             OTAP_RX_SIZE 
  #define PER_RX_SIZE         OTAP_RX_SIZE
  #define RANGE_RX_SIZE       OTAP_RX_SIZE
#else
  #define RX_SIZE             (smac_pdu_size(RX_BUF_LEN))
  #define PER_RX_SIZE         (smac_pdu_size(PER_RX_BUF_LEN))
  #define RANGE_RX_SIZE       (smac_pdu_size(RANGE_RX_BUF_LEN))
#endif

#define TX_SIZE               (smac_pdu_size(TX_BUF_LEN))

#if SMAC_FEATURE_SECURITY ==  TRUE

  ctr_value_t Ctr_Value = { CTR_0_INIT_VALUE, CTR_1_INIT_VALUE, \
                            CTR_2_INIT_VALUE, CTR_3_INIT_VALUE, };
  cipher_key_t CTR_Key = { KEY_0_INIT_VALUE, KEY_1_INIT_VALUE, \
                           KEY_2_INIT_VALUE, KEY_3_INIT_VALUE, };
  
  #if AES_DEFAULT_VALUE != AES_CTR_MODE
    #define ACK_SIZE (smac_pdu_size(ACK_BUF_LEN_NO_CTR_SEC))
    #define RANGE_RX_SIZE (smac_pdu_size(RANGE_RX_BUF_LEN_SEC))
  #else 
    #define ACK_SIZE (smac_pdu_size(ACK_BUF_LEN_CTR_SEC)) 
  #endif
  
#else
  #define ACK_SIZE              (smac_pdu_size(ACK_BUF_LEN))
#endif  
  
#if CLK_FREQ == F24MHZ
 #define DELAY_SIZE                   0x1770
#else
 #define DELAY_SIZE                   0x2EE0
#endif
#define LFSR_SIZE                      64
#define FLASH_DELAY                    200
#define gTotalPacketsDelay_d           400
#define MAX_COARSE_TUNE                0x0F
#define MIN_COARSE_TUNE                0x00
#define MAX_FINE_TUNE                  0x1F
#define MIN_FINE_TUNE                  0x00
#define NO_TEST_MODE_EVENT             0x00
#define TEST_MODE_INCREASE_EVENT       0x01
#define TEST_MODE_DECREASE_EVENT       0x02
#define CHANGE_OPTION_CONFIG_EVENT     0x04
#define TEST_START_EVENT               0x08  
#define MAX_POWER_LED_VALUE            0x0F
#define NOM_POWER_LED_VALUE            0x05
#define MIN_POWER_LED_VALUE            0x01
#define MAX_RX_PACKETS                 0x28

#define ChannelAdjustment              '1' 
#define PowerAdjustment                '2' 
#define TestAdjustment                 '3' 
#define ClockAdjustment                '4' 
#define PreviousMenu                   'p'
#define MaximumPower                   'M'
#define NominalPower                   'n'
#define MinimumPower                   'm'
#define TransmissionTest               'T' 
#define RangeTest                      'r'
#define IdleTest                       'I'
#define PRBS9TxTest                    'S'
#define ReceptionTest                  'R'
#define PacketErrorRateTest            'P'
#define ModulatedTxTest                'M'
#define UnmodulatedTxTest              'U'
#define Exit                           'Q'
#define BulkCapacitor                  '1'
#define CoarseTune                     '2'
#define FineTune                       '3'
#define EnableBulkCapacitor            'E'
#define DisableBulkCapacitor           'D'
  
#define SMAC_CONTINUOUS_RX             SMAC_TEST_MODE_PULSE_PRBS9_TX
#define SMAC_TEST_MODE_PER_RX          SMAC_TEST_MODE_PER_TX_RX 
#define SMAC_TEST_MODE_RANGE_RX        SMAC_TEST_MODE_RANGE_TX_RX 
  
#define SMAC_TEST_MODE_PULSE_PRBS9_TX  SMAC_TEST_MODE_PULSE_PRBS9_TX_RX
#define SMAC_TEST_MODE_PER_TX          SMAC_TEST_MODE_PER_TX_RX 
#define SMAC_TEST_MODE_RANGE_TX        SMAC_TEST_MODE_RANGE_TX_RX 


#define set_initial_option_values() \
    u8CurrentMode = SMAC_TEST_MODE_IDLE; \
    u8TestModeChannel = CHANNEL_NUMBER; \
    u8TestModePower = gDefaultPowerLevel_c; \
    u8BulkCapState = (0x10 & DEFAULT_COARSE_TRIM) >> 4; \
    u8CurrentFineTune = DEFAULT_FINE_TRIM; \
    u8CurrentCoarseTune = (0x0F & DEFAULT_COARSE_TRIM); \
    gbDataIndicationFlag = FALSE;\
    gu8TestModeEvents = NO_TEST_MODE_EVENT;\
    gu8ValidRangePacket = FALSE;\
	gu8ValidAckPacket = FALSE;\
    gu8TestAlreadyStarted = FALSE
  

#define   LEDs_RX_INIT(x) \
  do { \
    DelayMs(x); \
    TurnOffLeds(); \
    DelayMs(x); \
    TurnOnLeds(); \
    DelayMs(x); \
    TurnOffLeds(); \
    DelayMs(x); \
    TurnOnLeds(); \
    DelayMs(x); \
    TurnOffLeds(); \
  }while(0);
  
  
#define clear_event(x,y) (x &= (~y))


#define is_rx_msg_final_state(x) \
  ( (MSG_RX_ACTION_COMPLETE_SUCCESS == x.u8Status.msg_state) || \
    (MSG_RX_ACTION_COMPLETE_FAIL == x.u8Status.msg_state)    || \
    (MSG_RX_ABORTED == x.u8Status.msg_state)                 || \
    (MSG_RX_TIMEOUT_FAIL == x.u8Status.msg_state) )

#define is_tx_msg_final_state(x) \
  ( (MSG_TX_ACTION_COMPLETE_SUCCESS == x.u8Status.msg_state) || \
    (MSG_TX_ACTION_COMPLETE_FAIL == x.u8Status.msg_state)    || \
    (MSG_TX_ABORTED == x.u8Status.msg_state)                 || \
    (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == x.u8Status.msg_state) )

#define   LEDs_TX_INIT(x) \
  do { \
    LED_SetHex(0x08);\
    DelayMs(x);\
    LED_SetHex(0x04);\
    DelayMs(x);\
    LED_SetHex(0x02);\
    DelayMs(x);\
    LED_SetHex(0x01);\
    DelayMs(x);\
    TurnOffLeds();\
  }while(0)

#define set_xtal_coarse_tune(x)    (CRM_XTAL_CNTL.cTune = x)
#define set_xtal_fine_tune(x)     (CRM_XTAL_CNTL.fTune = x)
#define enable_bulk_cap()         (CRM_XTAL_CNTL.bulktune = 1)
#define disable_bulk_cap()        (CRM_XTAL_CNTL.bulktune = 0)
  
  
#define LQI_at_minus_88dBm   88
#define LQI_at_minus_80dBm   80
#define LQI_at_minus_60dBm   60 
#define LQI_at_minus_40dBm   40


#define LQI_LIM1 LQI_at_minus_88dBm
#define LQI_LIM2 LQI_at_minus_80dBm
#define LQI_LIM3 LQI_at_minus_60dBm
#define LQI_LIM4 LQI_at_minus_40dBm
  
#define MAX_OPTION_CONFIG  (MAX_OPTION - 1)

#define PER_NO_EVENT        (0x00000000)
#define PER_START_EVNT      (0x00000001)
#define PER_INC_CHANN_EVNT  (0x00000001<<1)
#define PER_GOOD_MSG_EVNT   (0x00000001<<2)
#define PER_DONE_MSG_EVNT   (0x00000001<<3)
  
#define MAX_NUM_TRANSMISSION  (50000)
#define NUM_DONE_TX           (15)  
#define MAX_NO_PACKET_ALLOW 0x1000 
  
#define LED_OFF             gGpioPinStateLow_c
#define LED_ON              gGpioPinStateHigh_c
#define BOUNCE_TIME         120   
#define DUTY_CICLE_TIME     1950  
  
#define BLOCK_SIZE          16
#define gEnabled_c          0x01  

#define SZ_OF_UART_RX     (10)
/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************
************************************************************************************/
void connectivity_app_init(void);
void connectivity_tx_app_init(void);
void test_mode_rx_cb(void);
void process_incoming_msg(void);
void select_config_option_isr(void);
void increase_config_option_isr(void);
void decrease_config_option_isr(void);
void start_test_isr(void);
void process_test_mode_app(void);
link_quality_value_t adjust_LQI(uint8_t u8LQI);
#if (gLEDSupported_d)
void LEDs_LQI_indication(link_quality_value_t u8LinkQuality);
#endif
void LEDs_Flash(uint8_t u8leds_state, uint32_t msec);
void LoadPRBS9(void);
char main_menu(void);
char channel_menu(void);
char select_test_mode_menu(void);
char test_mode_tx_menu(void);
char test_mode_rx_menu(void);
void tx_rx_select(void);
char clock_setting_menu(void);
char bulk_cap_menu(void);
void channel_adjust(void);
void power_adjust(void);
void test_mode_rx_adjust(void);
void test_mode_tx_adjust(void);
void configure_clock_settings(void);
void coarse_tune_adjust(void);
void fine_tune_adjust(void);
void PrintTestMode(Test_Mode_t TestModeValue);
void PrintChannel(channel_num_t u8ChannelValue);
void packet_error_rate_rx_test(void);
four_digit_bcd_t convert_2_bcd(uint16_t u16Value);
void range_rx_test(void);
void GpioTmrInit(void);
void TMR_Init(void);
void GpioTmrInit(void);
char test_transmission_menu(void);
void cont_transmission_test_adjust(void);
void packet_error_rate_tx_test(void);
void range_tx_test(void);
void pulse_prbs9_tx(void);
#if INTERFACE_TYPE == SERIAL 
static four_digit_bcd_t convert_2_bcd(uint16_t u16Value);
static void print_freescale_logo(void);
#endif  

#if (gLCDSupported_d)
void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord);
void DisplayTestMode(ConfigOption_t u8ConfiOption);
void ClearDisplay(void);
#endif
/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/
const uint8_t ku8ExpectedString[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
                                      0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F };

const uint8_t ku8DoneStr[] = { 'D', 'O', 'N', 'E' };

four_digit_bcd_t c_test_num = {0xF,0xF,0xF,1};

const uint8_t u8RangeExpectedString[]= {'S','i','m','p','l','e',' ','M','A','C'};
const uint8_t ku8AckString[] = {'A','C','K'};
const uint16_t u16TenPower[] = {1,10,100,1000,10000};

uint8_t u8LQIIcon4_c[]={0,0,0,0,48,176,176,176,176,176,176,176,176,176,176,176,176,
                        176,48,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,
                        109,109,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,
                        6,0,0,0,0,0,0,0,0,0};																					
																					
uint8_t u8LQIIcon3_c[]={0,0,0,0,0,128,128,128,128,128,128,128,128,128,128,128,128,128,
                        0,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,109,109,
                        13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,
                        0,0,0,0};																					
																					
uint8_t u8LQIIcon2_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,
                        108,108,108,108,108,108,108,108,108,12,0,0,0,0,0,0,0,0,0,0,0,0,
                        0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
																					
uint8_t u8LQIIcon1_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                        96,96,96,96,96,96,96,96,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
                        10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
																		
uint8_t u8RxIcon1_c[]={0,0,62,65,0,62,65,0,62,65,0,252,252,0,65,62,0,65,62,0,65,62,
                      0,0,0,0,0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,
                      0,0,0,0,0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};	

uint8_t u8RxIcon2_c[]={0,0,0,0,0,0,0,0,62,65,0,252,252,0,65,62,0,0,0,0,0,0,0,0,0,0,
                       0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                       0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};																					
																		

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
extern void ResetMaca(void);

/************************************************************************************
*************************************************************************************
* Variables declaration
*************************************************************************************
************************************************************************************/
Test_Mode_t u8CurrentMode;
channel_num_t u8TestModeChannel;
uint8_t u8TestModePower;
uint8_t u8LedPowerState;
message_t TX_msg;
message_t RX_msg;
message_t ACK_msg;
uint8_t mUARTRxBuffer[SZ_OF_UART_RX];
ConfigOption_t CurrentOption, ManualModeOption;
uint8_t u8CurrentCoarseTune;
uint8_t u8CurrentFineTune;
uint8_t u8BulkCapState;
uint16_t waiting_loops;
bool_t gbDataIndicationFlag;
uint8_t init_flag;
uint8_t gu8TestModeEvents;
uint32_t gu32PerRxEvents;
uint8_t gu8ValidRangePacket;
uint8_t gu8ValidAckPacket;
uint8_t gu8TestAlreadyStarted;
uint8_t gu8SCIData[10];  

uint8_t maxLQI=0,minLQI=255;

/************************************************************************************
* main function
*
* Executes the main function.
*
************************************************************************************/
void Main(void)
{
  
  uint8_t dataTX[TX_SIZE];
  uint8_t dataRX[RX_SIZE];
  uint8_t dataACK[ACK_SIZE];

  MSG_INIT(TX_msg, &dataTX, NULL);
  MSG_INIT(RX_msg, &dataRX, test_mode_rx_cb);
  MSG_INIT(ACK_msg, &dataACK, NULL);

  connectivity_app_init();
    
  for(;;)
  {
    process_test_mode_app();
  }
}

/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/
/************************************************************************************
* connectivity_app_init
*
* This function initializate the application settings.
*
************************************************************************************/
void connectivity_app_init(void)
{
  set_initial_option_values();
 
  ITC_Init();
  IntAssignHandler(gMacaInt_c, (IntHandlerFunc_t)MACA_Interrupt);
  ITC_SetPriority(gMacaInt_c, gItcNormalPriority_c);
  ITC_EnableInterrupt(gMacaInt_c);
  
#if INTERFACE_TYPE == MANUAL  
  IntAssignHandler(gCrmInt_c, (IntHandlerFunc_t)CRM_Isr);
  ITC_SetPriority(gCrmInt_c, gItcNormalPriority_c);
  ITC_EnableInterrupt(gCrmInt_c);
#endif
  
  IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr);
  ITC_SetPriority(gTmrInt_c, gItcNormalPriority_c);
  ITC_EnableInterrupt(gTmrInt_c);
  
#if INTERFACE_TYPE == MANUAL
  CRM_RegisterISR(gCrmKB4WuEvent_c,select_config_option_isr);
  CRM_RegisterISR(gCrmKB5WuEvent_c,increase_config_option_isr);
  CRM_RegisterISR(gCrmKB6WuEvent_c,decrease_config_option_isr);
  CRM_RegisterISR(gCrmKB7WuEvent_c,start_test_isr);
#endif  
  
  IntDisableIRQ();
  IntDisableFIQ();

  ResetMaca();
  MLMERadioInit();
  PlatformPortInit();
  MLMESetChannelRequest(u8TestModeChannel);
  
  IntEnableIRQ();
  IntEnableFIQ();
 
  Uart_Init(mUARTRxBuffer, SZ_OF_UART_RX);
  LED_Init();
  KbGpioInit();

#if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
  LCD_Init();
#endif

 
#if OTAP_ENABLED == TRUE 
  OTAP_Init(&RX_msg);
  gbOtapExecute = OTAP_ENABLED;
#endif
  
#if INTERFACE_TYPE == SERIAL 
  print_freescale_logo();
  Uart_getchar(mUARTRxBuffer);
#endif

 #if INTERFACE_TYPE == MANUAL 
/********************* KBI Interruptions Initialization ***********************/
  MLMESetWakeupSource(gExtWuKBI4En_c | gExtWuKBI5En_c | gExtWuKBI6En_c | gExtWuKBI7En_c, 0x00, 0x0F);
/******************************************************************************/
#endif
LoadPRBS9();

#if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
  LCD_SetBacklight(gEnabled_c);
  LCD_ClearDisplay();
  DisplayFreescaleLogo(0x15,0x10);
  DelayMs(1000);
  ClearDisplay();
  DisplayTestMode(CurrentOption);
#endif
  
 (void)MLMEPAOutputAdjust(u8TestModePower);
  MLMETestMode(u8CurrentMode); 
  MLMESetChannelRequest(u8TestModeChannel);

#if (gLCDSupported_d == FALSE || INTERFACE_TYPE == SERIAL)
    TMR_Init(); 
#endif
    
}

/************************************************************************************
* test_mode_rx_cb
*
* This function is the callback for the reception message, every time that a message 
* is received the function is executed and it turns on a flag to indicate that one
* message was received.
************************************************************************************/
void test_mode_rx_cb (void)
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
* process_incoming_msg
*
* This function process the received messages.
*
************************************************************************************/
static void process_incoming_msg(void)
{
  
#if INTERFACE_TYPE == SERIAL        
  uint8_t i;
  four_digit_bcd_t tmp = {0,0,0,0,0,0};
#endif
#if INTERFACE_TYPE == MANUAL 
  link_quality_value_t u8LQIAdjusted;
#endif  
  uint8_t u8MsgLen;
  uint8_t * ptrRcvMsg;
  uint8_t u8Lqi;

  
  uint16_t u16SeqNum;
  static uint16_t u16MsgCounter = 0;
  static uint16_t u16TotalMsg = 10;
  
#if (INTERFACE_TYPE == MANUAL) && (gLCDSupported_d)     
  static uint8_t u8State = 0;
#endif
  
#if OTAP_ENABLED == TRUE  
  OTAP_data_indication_execute();
  if(!gbOtapExecute)
#endif
    
  {
    if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
    {
      u8MsgLen = sizeof(ku8ExpectedString);
      ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[5]);
      if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8ExpectedString, u8MsgLen))
      {
  #if INTERFACE_TYPE == SERIAL        
        uint8_t u8Lqi;
  #endif
        u16SeqNum = (RX_msg.pu8Buffer->u8Data[3] << 8);
        u16SeqNum |= RX_msg.pu8Buffer->u8Data[4];
        if(u16SeqNum < u16TotalMsg)
        {
          u16TotalMsg = (RX_msg.pu8Buffer->u8Data[1] << 8);
          u16TotalMsg |= RX_msg.pu8Buffer->u8Data[2];    
        }
        
        u16MsgCounter++;
        
  #if INTERFACE_TYPE == SERIAL        
        Uart_Print("\r\nN:");
        tmp = convert_2_bcd(u16SeqNum);
        Uart_PrintHex((uint8_t *)(&tmp),3,0);
        Uart_Print(" L:");
        tmp = convert_2_bcd(u8MsgLen);
        Uart_PrintHex((uint8_t *)(&tmp),1,0);
        Uart_Print(" LQI=-");
        (void)MLMELinkQuality(&u8Lqi);
        u8Lqi = (u8Lqi / 3);
        if(100 >= u8Lqi)
        {  
          u8Lqi = 100 - u8Lqi;
        }
        else
        {
          u8Lqi = u8Lqi - 100;
        }
        tmp = convert_2_bcd(u8Lqi);
        Uart_PrintHex((uint8_t *)(&tmp),1,0);
        Uart_Print(" CRC=1 Data=");
      
        for(i=5; i<21; i++)
        {
          Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
          ((RX_msg.pu8Buffer)->u8Data[i]) = 0;
        }
   #endif 
       
        
//  #if INTERFACE_TYPE == MANUAL        
        LED_ToggleLed(LED1);
//  #endif      
      }
      
      ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
      if( (TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8DoneStr, 4)) &&
        (0 != u16MsgCounter))
      {

  #if INTERFACE_TYPE == SERIAL 
        tmp = convert_2_bcd(u16MsgCounter);
        Uart_Print("\r\n\nGood:	");
        Uart_PrintHex((uint8_t *)(&tmp),3,0);
        Uart_Print("/");

        tmp = convert_2_bcd(u16TotalMsg);
        Uart_PrintHex((uint8_t *)(&tmp),3,0);
        Uart_Print("\r\n\nHalt\n");
  #endif 

  #if INTERFACE_TYPE == MANUAL
        u16MsgCounter--;
        c_test_num = convert_2_bcd(u16MsgCounter);
        
#if (gLCDSupported_d)      

        LCD_WriteString_NormalFont(4,"                     ");
        LCD_WriteStringValue("             /",(u16TotalMsg),4,gLCD_DecFormat_c);

        if(100 > u16MsgCounter)
        {
          LCD_WriteStringValue("    Good:  ",(u16MsgCounter),4,gLCD_DecFormat_c);
        }
        else if(1000 > u16MsgCounter)
        {
          LCD_WriteStringValue("    Good: ",(u16MsgCounter),4,gLCD_DecFormat_c);
        }
        else
        {
          LCD_WriteStringValue("    Good:",(u16MsgCounter),4,gLCD_DecFormat_c);
        }  
        LCD_WriteStringValue("Max LQI:",(maxLQI),3,gLCD_DecFormat_c);
        LCD_WriteStringValue("Min LQI:",(minLQI),3,gLCD_DecFormat_c);
          maxLQI=0;
          minLQI=255;
          DelayMs(1500);
          
        LCD_WriteString_NormalFont(7," SW4 Start Listening ");
  #endif         

  #endif      
        u16MsgCounter = 0;
        gu32PerRxEvents |= PER_DONE_MSG_EVNT;
      }
    }
  
    if(SMAC_CONTINUOUS_RX == u8CurrentMode)
    { 
      u8MsgLen = RX_msg.u8BufSize;
  #if INTERFACE_TYPE == SERIAL
      LED_ToggleLed(LED1);
      Uart_Print("\r\n");
      Uart_Print("Received Packet:");
      for(i=1; i < u8MsgLen ; i++)
      {
        Uart_Print("0x");
        Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
        (RX_msg.pu8Buffer)->u8Data[i] = 0;
        Uart_Print(" ");
      }
      Uart_Print("\n");
  #endif 

#if INTERFACE_TYPE == MANUAL && gLCDSupported_d
      if(2 > u8State)
      {
        u8State++;
        LCD_DrawIcon(50,4,u8RxIcon1_c);
      }
      else if(4 > u8State)
      {
        u8State++;     
        LCD_DrawIcon(50,4,u8RxIcon2_c);
      }
      else
      {
        u8State = 0;
      }
#endif
        LED_ToggleLed(LED1); 
    }  
    
    if( SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
    {
      ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
      u8MsgLen = sizeof(u8RangeExpectedString);
  
  #if SMAC_FEATURE_SECURITY ==  TRUE
      {
        (void)DecipherMsgU8(&(RX_msg.pu8Buffer->u8Data[1]), 
                            (RX_msg.u8BufSize));
      }
  #endif
  
      if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
      {  
        u8Lqi = 0;
        gu8ValidRangePacket = TRUE;
        (void)MLMELinkQuality(&u8Lqi);
        u8Lqi = (u8Lqi / 3);
        if(100 >= u8Lqi)
        {  
          u8Lqi = 100 - u8Lqi;
        }
        else
        {
          u8Lqi = u8Lqi - 100;
        }
   
  #if INTERFACE_TYPE == MANUAL      
        u8LQIAdjusted = adjust_LQI(u8Lqi);
  #endif      
#if (gLCDSupported_d)
        LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
          if(u8Lqi <= LQI_LIM4)
        {
          LCD_DrawIcon(80,3,u8LQIIcon4_c);
        }
        else if(u8Lqi <= LQI_LIM3)
        {
          LCD_DrawIcon(80,3,u8LQIIcon3_c);
        }
        else if (u8Lqi <= LQI_LIM2)
        {
          LCD_DrawIcon(80,3,u8LQIIcon2_c);
        }
        else
        {
          LCD_DrawIcon(80,3,u8LQIIcon1_c);
        }
     
#endif
        ACK_msg.pu8Buffer->u8Data[0] = 'A';
        ACK_msg.pu8Buffer->u8Data[1] = 'C';
        ACK_msg.pu8Buffer->u8Data[2] = 'K';
  
  #if INTERFACE_TYPE == SERIAL
        ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
  #endif      
  
  #if INTERFACE_TYPE == MANUAL
        ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
  #endif      
  
        
  #if SMAC_FEATURE_SECURITY ==  TRUE
        uint8_t fill_counter;
        for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
        {
          ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
        }
  
        if(AES_DEFAULT_MODE != AES_CTR_MODE)
        {
          ACK_msg.u8BufSize = 2*BLOCK_SIZE;
        }
        else
        {
          ACK_msg.u8BufSize = BLOCK_SIZE;
        }
  
        (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
  #else
          ACK_msg.pu8Buffer->u8Data[4] = '\0';
          ACK_msg.u8BufSize = 5;
  #endif  
        
              
  #if INTERFACE_TYPE == SERIAL
        Uart_Print("\r\n"); 
        Uart_Print(" LQI=-");
        tmp = convert_2_bcd(u8Lqi);
        Uart_PrintHex((uint8_t *)(&tmp),1,0); 
  #else
    DelayMs(2);      
  #endif  
  
      
       LED_ToggleLed(LED1);
  #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
        LEDs_LQI_indication( u8LQIAdjusted); 
  #endif 
      }
    } 
   
if(SMAC_TEST_MODE_RANGE_TX == u8CurrentMode)
    u8MsgLen = 3;
    ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
    {
      
  #if SMAC_FEATURE_SECURITY ==  TRUE
    (void)DecipherMsgU8 (&(RX_msg.pu8Buffer->u8Data[0]),(RX_msg.u8BufSize));    
  #endif
    
      if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
      {
  #if (gLEDSupported_d  || INTERFACE_TYPE == SERIAL)   
        uint8_t u8Lqi;
        u8Lqi = RX_msg.pu8Buffer->u8Data[4];
  #endif
        
        
  #if INTERFACE_TYPE == SERIAL

        Uart_Print("\r\n");   
        Uart_Print(" LQI=-");
        tmp = convert_2_bcd(u8Lqi);
        Uart_PrintHex((uint8_t *)(&tmp),1,0);
  #endif 
        
  #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
       Led1Toggle(); 
       LEDs_LQI_indication((link_quality_value_t)u8Lqi); 
       if(minLQI>u8Lqi) minLQI=u8Lqi;
       if(maxLQI<u8Lqi) maxLQI=u8Lqi;
  #endif      
        gu8ValidAckPacket = TRUE;
      }
    }     
       
  }
}

#if INTERFACE_TYPE == MANUAL 

/************************************************************************************
* select_config_option_isr
*
* This function is the callback function for the KBI4 interruption, it enables only 
* a flag to indicate that the KBI interruption occurred and the current option
* to configure must increase.
*
************************************************************************************/
  void select_config_option_isr(void)
  {
    DelayMs(BOUNCE_TIME);
    gu8TestModeEvents |= CHANGE_OPTION_CONFIG_EVENT;
  }

/************************************************************************************
* increase_config_option_isr
*
* This function turns on a flag to indicate that the KBI5 interruption occurred, 
* which is used to increase the current option value.
*
***********************************************************************************/

 void increase_config_option_isr(void)
  {
    DelayMs(BOUNCE_TIME);
    gu8TestModeEvents |= TEST_MODE_INCREASE_EVENT;
    gu8TestAlreadyStarted = FALSE;
  }

/************************************************************************************
* decrease_config_option_isr
*
* This function turns on a flag to indicate that the KBI6 interruption occurred, 
* which is used to decrease the current option value.
*
***********************************************************************************/

  void decrease_config_option_isr(void)
  {
    DelayMs(BOUNCE_TIME);
    gu8TestModeEvents |= TEST_MODE_DECREASE_EVENT;
    gu8TestAlreadyStarted = FALSE;    
  }

/************************************************************************************
* decrease_config_option_isr
*
* This function turns on a flag to indicate that the KBI6 interruption occurred, 
* which is used to decrease the current option value.
*
***********************************************************************************/

void start_test_isr(void)
{
  DelayMs(BOUNCE_TIME);
  gu8TestModeEvents |= TEST_START_EVENT;
  gu8TestAlreadyStarted = FALSE;
}

#endif

/************************************************************************************
* process_test_mode_app
*
* This function process the test mode application, execute the serial or the manual
* interface code according with the selected interface type in the app_config.h file.
*
************************************************************************************/

void process_test_mode_app(void){
  
#if INTERFACE_TYPE == MANUAL
  FuncReturn_t tmpChange;
  uint8_t u8SafeTimeOut;
#endif

  if (CHANGE_OPTION_CONFIG_EVENT & gu8TestModeEvents)
  {
   clear_event(gu8TestModeEvents,CHANGE_OPTION_CONFIG_EVENT);
   
#if (gLCDSupported_d)
   if(gRxTestMode_c <= CurrentOption)
    {
      CurrentOption = gChannel_c;
    }
    else
    {
      CurrentOption++;
    }
#else
    if(MAX_OPTION_CONFIG <= CurrentOption)
    {
      CurrentOption = gChannel_c;
    }
    else
    {
      CurrentOption++;
    }
#endif
   
#if (gLCDSupported_d)   
   DisplayTestMode(CurrentOption);
#endif
  }

  #if INTERFACE_TYPE == SERIAL
  
    switch(main_menu())
    {

       case ChannelAdjustment:
          channel_adjust();
          break;
        case PowerAdjustment:
          power_adjust();
          break;
        case TestAdjustment:
          tx_rx_select();
          break;
        case ClockAdjustment:  
          configure_clock_settings();
          break;
        case PreviousMenu:
          break;
        default:
          Uart_Print("  Invalid Option!!!\n");
          break;
      }
  #else 
      
  #if INTERFACE_TYPE == MANUAL
      LED_SetHex(CurrentOption);
      switch(CurrentOption)
      {
        case gChannel_c:
          if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
          {
            MLMETestMode(SMAC_TEST_MODE_IDLE);
            DelayUs(10);
            tmpChange = gFail_c;
            u8SafeTimeOut = 0xff;
            if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
            {
              clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
              do{
                if(MAX_CHAN_NUM <= u8TestModeChannel)
                {
                  u8TestModeChannel = CHANNEL11;
                }
                else
                {
                  u8TestModeChannel ++;
                }
                u8SafeTimeOut++;
                tmpChange = MLMESetChannelRequest(u8TestModeChannel);
              }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
             
            }
            else
            {
              clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
              do{
                if(CHANNEL11 == u8TestModeChannel)
                {
                  u8TestModeChannel = (channel_num_t)MAX_CHAN_NUM;
                }
                else
                {
                  u8TestModeChannel --;
                }
                u8SafeTimeOut++;
                tmpChange = MLMESetChannelRequest(u8TestModeChannel);
              }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
            }

            MLMETestMode(u8CurrentMode);
#if (gLCDSupported_d)           
            LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
#endif
            LEDs_Flash(u8TestModeChannel, FLASH_DELAY);
 
          }

          break;
       
        case  gPower_c:
          if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
          {
            tmpChange = gFail_c;
            u8SafeTimeOut = 0xff;
            if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
            {
              clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
              do{
                if(MAX_POWER <= u8TestModePower)
                {
                  u8TestModePower = MIN_POWER;
                }
                else
                { 
                  u8TestModePower++;
                }
                u8SafeTimeOut++;
                tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
              }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
            }
            else
            {
              clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
  
              do{
                if(MIN_POWER == u8TestModePower)
                {
                  u8TestModePower = MAX_POWER;
                }
                else 
                {
                  u8TestModePower--;
                }
                u8SafeTimeOut++;
                tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
              }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
            }

#if (gLCDSupported_d)          
            LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
#endif            
            LEDs_Flash(u8TestModePower, FLASH_DELAY);
          }
          break;
          
        case gRxTestMode_c:
          if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);           
            if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
            {
              u8CurrentMode = SMAC_TEST_MODE_IDLE;
            }            
            else
            {
              u8CurrentMode ++;
            }
            MLMETestMode(u8CurrentMode);
#if (gLCDSupported_d)            
            DisplayTestMode(CurrentOption);
#endif            
            LEDs_Flash(u8CurrentMode, FLASH_DELAY);
          }
          else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);           
            if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
            {
             u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
            }
            else
            {            
              u8CurrentMode --;
            }
            MLMETestMode(u8CurrentMode);
#if (gLCDSupported_d)            
            DisplayTestMode(CurrentOption);
#endif            
            LEDs_Flash(u8CurrentMode, FLASH_DELAY);
          }
          
          RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
          LED_SetHex(CurrentOption);
         
          while((SMAC_TEST_MODE_PER_RX == u8CurrentMode)  && 
                (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
                (gRxTestMode_c == CurrentOption))
          {
            if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)            
            {  
              packet_error_rate_rx_test();
            }
          }  
          
          while( (SMAC_TEST_MODE_RANGE_RX == u8CurrentMode) && 
                 (NO_TEST_MODE_EVENT == gu8TestModeEvents)  &&
                 (gRxTestMode_c == CurrentOption) )
          {
            range_rx_test();
          }           
          while( (SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode) && 
                (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
                (gRxTestMode_c == CurrentOption) )
          {
            pulse_prbs9_tx();
          }

          while( (SMAC_TEST_MODE_PER_TX == u8CurrentMode) &&  
               ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
                )
          {
            packet_error_rate_tx_test();
          }  
          
          while( (SMAC_TEST_MODE_RANGE_TX == u8CurrentMode) &&  
               ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
                )
          {
            range_tx_test();
          }           
          
          break;
          
        case gBulkCap_c:
          if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
            enable_bulk_cap(); 
            u8BulkCapState = gEnable_c;
            LEDs_Flash(u8BulkCapState, FLASH_DELAY);
          }
          else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
            disable_bulk_cap(); 
            u8BulkCapState = gDisable_c;
            LEDs_Flash(u8BulkCapState, FLASH_DELAY);
          }
          break; 
            
        case gCoarseTune_c:
          if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
            if(MAX_COARSE_TUNE == u8CurrentCoarseTune)
            {
              u8CurrentCoarseTune = MIN_COARSE_TUNE;
            }
            else
            {
              u8CurrentCoarseTune++;
            }
            set_xtal_coarse_tune(u8CurrentCoarseTune);
            LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
          }
          else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
            if(MIN_COARSE_TUNE == u8CurrentCoarseTune)
            {
              u8CurrentCoarseTune = MAX_COARSE_TUNE;
            }
            else
            {
              u8CurrentCoarseTune--;
            }
            set_xtal_coarse_tune(u8CurrentCoarseTune);
            LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
          }
          break; 
          
        case gFineTune_c:
          if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
            if(MAX_FINE_TUNE == u8CurrentFineTune)
            {
              u8CurrentFineTune = MIN_FINE_TUNE;
            }
            else
            {
              u8CurrentFineTune++;
            }
            set_xtal_fine_tune(u8CurrentFineTune);
            LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
            if(0x0F < u8CurrentFineTune)
            {
              LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
            }
          }
          else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
          {
            clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
            if(MIN_FINE_TUNE == u8CurrentFineTune)
            {
              u8CurrentCoarseTune = MAX_FINE_TUNE;
            }
            else
            {
              u8CurrentFineTune--;
            }
            set_xtal_fine_tune(u8CurrentFineTune);
            LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
            if(0x0F < u8CurrentFineTune)
            {
              LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
            }
          }
          break;  
          
        default:
          break;
      }
  #endif
#endif

}

/************************************************************************************
* adjust_LQI
*
* The purpose of this function is to adjust the link quality indicator value obtained
* from the MLMELinkQuality primitive to only four possible values.
*
************************************************************************************/

link_quality_value_t adjust_LQI(uint8_t u8LQI)
{
  link_quality_value_t LQIAdjusted;
  
  if(LQI_LIM1 < u8LQI)
  {
     LQIAdjusted = gFarRange_c;
  }  
  else
  {
    if(LQI_LIM2 < u8LQI)
    {
       LQIAdjusted = gMediumRange_c;
    }
    else
    {
       if(LQI_LIM3 <= u8LQI)
       {
         LQIAdjusted = gNearRange_c;
       }
       else
       {
         LQIAdjusted = gVeryNearRange_c;
       }
     }
  }
  return LQIAdjusted;
}


/************************************************************************************
* convert_2_bcd function
*
* This function converts the received data as parameter to bcd format
*
************************************************************************************/
static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
{
  four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
  uint16_t tmp;
  if(10000 > u16Value)
  {
    tmp = u16Value;
    if(1000 <= u16Value)
    {
      tmp = u16Value/1000;
      u16RtrnVal.u8Thousands = tmp;
      tmp = u16Value%1000;
      u16Value = tmp;
    }
    if(100 <= u16Value)
    {
      tmp = u16Value/100;
      u16RtrnVal.u8Houndreds = tmp;
      tmp = u16Value%100;
      u16Value = tmp;
    }
    if(10 <= u16Value)
    {
      tmp = u16Value/10;
      u16RtrnVal.u8Tens = tmp;
      tmp = u16Value%10;
      u16Value = tmp;
    }
    u16RtrnVal.u8Units = tmp;
  }
  return u16RtrnVal;
}



/************************************************************************************
* LEDs_Flash
*
* This function flash the binary number of the received parameter through LEDs.
*
************************************************************************************/

void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
{
  LED_TurnOffAllLeds();  
  DelayMs(msec);
  LED_SetHex(u8leds_state);
  DelayMs(msec);  
  LED_TurnOffAllLeds(); 
  DelayMs(msec);
}

/************************************************************************************
* LoadPRBS9
*
* The purpose of this function is to load the pseudo random binary sequence order 9 
* in a transmission message. The polynomial to transmit is the following:
*
*
************************************************************************************/
void LoadPRBS9(void)
{
  uint8_t u8c1;                           /* Byte counter */
  uint8_t u8c2;                           /* Bit counter */
  uint16_t u16t1;                         /* LFSR */
  uint16_t u16t2;                         /* LFSR output */
  uint16_t u16t3;                         /* LFSR feedback tap */
  uint8_t u8t4;                           /* Assembled transmit byte */
  
  u16t1 = 0x01FF;                       /* Initialize the LFSR */
  for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
  {
    u8t4 = 0x00;                        /* Initialize the byte */
    for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
    {
      u16t2 = (u16t1 & 0x0001);       /* LFSR output */
      if (u16t2 == 0x0001)
      {
        u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
      }
      if (u8c2 != 7)
      {
        u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
      }
      
      u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
      u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
      if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
      {
        u16t1 = u16t1 & 0xFEFF;
      }
      else
      {
        u16t1 = u16t1 | 0x0100;
      }
      }
      TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
    } 
  TX_msg.pu8Buffer->u8Data[64] = '\0';
  TX_msg.u8BufSize = 65;
}

/************************************************************************************
* main_menu
*
* This function displays the main menu for the serial interface and waits until the 
* user select an option.
*
************************************************************************************/

char main_menu(){
  Uart_Print("\r ______________________________________\n");
  Uart_Print("\r|                                      |\n");
  Uart_Print("\r|    Connectivity Test Interface    |\n");
  Uart_Print("\r|______________________________________|\n\n");
  Uart_Print("\r      1 - CHANGE CHANNEL\n");
  Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
  Uart_Print("\r      3 - SELECT TEST MODE\n");
  Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
  Uart_Print("\r      Note: Case sensitive.");
  Uart_Print("\r\n\n Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* channel_menu
*
* This function displays the possible channels when the channel option is selected 
* and waits for a user selection.
*
************************************************************************************/

char channel_menu(void){
  Uart_Print("\r\n     ___________________________________ \n");
  Uart_Print("\r    |                                   |\n");
  Uart_Print("\r    |      Channel Adjustment Menu      |\n");
  Uart_Print("\r    |___________________________________|\n\n");
  Uart_Print("\r    Current Channel: ");
  PrintChannel(u8TestModeChannel);
  Uart_Print("\n");
  Uart_Print("\r      0 - CHANNEL 11");
  Uart_Print("      8 - CHANNEL 19\n");
  Uart_Print("\r      1 - CHANNEL 12");
  Uart_Print("      9 - CHANNEL 20\n");
  Uart_Print("\r      2 - CHANNEL 13");
  Uart_Print("      A - CHANNEL 21\n");
  Uart_Print("\r      3 - CHANNEL 14");
  Uart_Print("      B - CHANNEL 22\n");
  Uart_Print("\r      4 - CHANNEL 15");
  Uart_Print("      C - CHANNEL 23\n");
  Uart_Print("\r      5 - CHANNEL 16");
  Uart_Print("      D - CHANNEL 24\n");
  Uart_Print("\r      6 - CHANNEL 17");
  Uart_Print("      E - CHANNEL 25\n");  
  Uart_Print("\r      7 - CHANNEL 18");
  if(gPowerLevelLock_c == FALSE)
  {
    Uart_Print("      F - CHANNEL 26\n");      
  }
  else
  {
    Uart_Print("\n");
  }
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}


/************************************************************************************
* test_mode_rx_menu
*
* This function displays the test mode options when the SELECT TEST MODE is 
* selected.
*
************************************************************************************/

char test_mode_rx_menu(void){
  Uart_Print("\r\n     __________________________\n");
  Uart_Print("\r    |                          |\n");
  Uart_Print("\r    |   Reception Tests Menu   |\n");
  Uart_Print("\r    |__________________________|\n\n");  
  Uart_Print("\r    Current Test Mode: ");
  PrintTestMode(u8CurrentMode);
  Uart_Print("\r\n      I - IDLE\n");
  Uart_Print("\r      R - RECEPTION\n");
  Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
  Uart_Print("\r      r - RANGE TEST RECEIVER\n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* test_mode_tx_menu
*
* This function displays the test mode options when the SELECT TEST MODE is 
* selected.
*
************************************************************************************/
char test_mode_tx_menu(void){
  Uart_Print("\r\n     _____________________________\n");
  Uart_Print("\r    |                             |\n");
  Uart_Print("\r    |   Transmission Tests Menu   |\n");
  Uart_Print("\r    |_____________________________|\n\n");  
  Uart_Print("\r    Current Test Mode: ");
  PrintTestMode(u8CurrentMode);
  Uart_Print("\r\n      I - IDLE\n");
  Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
  Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
  Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}


/************************************************************************************
* select_test_mode_menu
*
* This function displays the option to select between TX and RX mode
*
************************************************************************************/

char select_test_mode_menu(void){
  Uart_Print("\r\n     __________________________\n");
  Uart_Print("\r    |                          |\n");
  Uart_Print("\r    |   TX / RX Menu   |\n");
  Uart_Print("\r    |__________________________|\n\n");  
  Uart_Print("\r      R - RECEIVER MODE \n");
  Uart_Print("\r      T - TRANSMITTER MODE \n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* test_transmission_menu
*
* This function displays the transmissions options when the transmission option 
* is selected in the main menu.
*
************************************************************************************/
char test_transmission_menu(void)
{
  Uart_Print("\r\n     ______________________________________\n");
  Uart_Print("\r    |                                      |\n");
  Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
  Uart_Print("\r    |______________________________________|\n\n");  
  Uart_Print("\r    Current Transmission Test: ");
  PrintTestMode(u8CurrentMode);
  Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
  Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
  Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}


/************************************************************************************
* clock_settings_menu
*
* This function displays a menu with the clock settings options and waits for a 
* user selection.
*
************************************************************************************/

char clock_setting_menu(void)
{
  Uart_Print("\r\n     _____________________");
  Uart_Print("\r\n    |                     |");
  Uart_Print("\r\n    | Clock Settings Menu |");
  Uart_Print("\r\n    |_____________________|\n\n");  
  Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
  Uart_Print("\r    2 - Adjust COARSE TUNE\n");
  Uart_Print("\r    3 - Adjust FINE TUNE \n");
  Uart_Print("\r    p - Previous Menu\n");
  Uart_Print("\r\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* bulk_cap_menu
*
* The bulk_cap_menu shows the two possible bulk capacitor states and waits until
* the user selects an option.
*
************************************************************************************/

char bulk_cap_menu(void)
{
  Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
  Uart_Print("\r\n   Current Bulk Capacitor State:");
  if(gEnable_c == u8BulkCapState){
    Uart_Print("  Enable\n\n");
  }
  else{
    Uart_Print("  Disable\n\n");    
  }
  Uart_Print("\r   E - Enable Capacitor.\n");
  Uart_Print("\r   D - Disable Capacitor\n");
  Uart_Print("\r   p - Previous Menu\n");
  Uart_Print("\r\nPlease select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* channel_adjust
*
* This function updates the channel with the value selected by the user.
*
************************************************************************************/

void channel_adjust(void){
  char option, hexOption;
  CurrentOption = gChannel_c;
  do{
    option = channel_menu();
    hexOption = AsciitoHex(option);
    
    if(PreviousMenu != hexOption)
    {
      MLMETestMode(SMAC_TEST_MODE_IDLE);
      DelayUs(10);
      if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
      {  
        u8TestModeChannel = (channel_num_t)hexOption;
      }
      else
      {
        Uart_Print("  Invalid Option!!!");  
      }
      MLMETestMode(u8CurrentMode);
      
    }
  }while(option != PreviousMenu);
}

/************************************************************************************
* power_adjust
*
* This function change the power value to the power selected by the user in the
* serial interface
*
************************************************************************************/

void power_adjust(void){
  uint8_t u8TempPower;
  CurrentOption = gPower_c;
  Uart_Print("\r\n     ___________________________\n");
  Uart_Print("\r    |                           |\n");
  Uart_Print("\r    |   Power Adjustment Menu   |\n");
  Uart_Print("\r    |___________________________|\n\n");
  Uart_Print("\r    Current Power: ");
  Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);

  if(gPowerLevelLock_c)
  {
    Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
  }
  else
  {
    Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
  } 
  
  Uart_getchar(mUARTRxBuffer);
  
  u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
    
  u8TempPower = (u8TempPower << 4);
  Uart_getchar(mUARTRxBuffer);
  u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
  
  
  if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
  {
    u8TestModePower = u8TempPower;
    Uart_Print("\n");
  }
  else
  {
    Uart_Print("\r\n    Incorrect value!!!");  
    Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
    Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
  }
}

/************************************************************************************
* test_mode_rx_adjust
*
* In this function the current test mode is adjusted to the new value selected by the 
* user in the serial interface.
*
************************************************************************************/

void test_mode_rx_adjust(void)
{
  char option;
  CurrentOption = gRxTestMode_c;
  do{
    option = test_mode_rx_menu();
    switch(option)
    {
      case IdleTest:
        u8CurrentMode = SMAC_TEST_MODE_IDLE;
        MLMETestMode(u8CurrentMode);
        break;
      case ReceptionTest:
        Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
        Uart_Print("\r\nPress any key to start.....");
        Uart_getchar(mUARTRxBuffer);
        u8CurrentMode = SMAC_CONTINUOUS_RX;
        MLMETestMode(u8CurrentMode);
        MLMERXEnableRequest(&RX_msg, 0x0000200);
        do
        {
            (void)process_radio_msg();
            if(TRUE == gbDataIndicationFlag)
            {
              gbDataIndicationFlag = FALSE;
              process_incoming_msg();
            }
          
#if OTAP_ENABLED == TRUE
          if(gbOtapExecute)
          {
            OTAP_execute();        
          }
          else
#endif
          {          
            if(is_rx_msg_final_state(RX_msg))
            {
              RX_msg.u8BufSize = RX_SIZE;
              MLMERXEnableRequest(&RX_msg, 0x00000000);
            }
          }
          Uart_Poll(mUARTRxBuffer);
          }
        while (mUARTRxBuffer[0] != Exit);   
        break;
        
      case PacketErrorRateTest:
        packet_error_rate_rx_test();
        break;
      case RangeTest:
        range_rx_test();
        break;
      case PreviousMenu:
        break; 
        
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != PreviousMenu);
}

/************************************************************************************
* test_mode_tx_adjust
*
* In this function the current test mode is adjusted to the new value selected by the 
* user in the serial interface.
*
************************************************************************************/
void test_mode_tx_adjust(void){
  char option;
  CurrentOption = gTxTestMode_c;
  do{
    option = test_mode_tx_menu();
    switch(option)
    {
      case IdleTest:
        u8CurrentMode = SMAC_TEST_MODE_IDLE;
        MLMETestMode(u8CurrentMode);
        break;
      case TransmissionTest:  
        cont_transmission_test_adjust();
        break;
      case PacketErrorRateTest:
        packet_error_rate_tx_test();
        break;
      case RangeTest:
        range_tx_test();
        break;
      case PreviousMenu:
        break;      
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != PreviousMenu);
}


/************************************************************************************
* tx_rx_select
*
* This function select between transmitter and receiver mode
*
***********************************************************************************/
void tx_rx_select(void)
{
  char option;
  do
  {
    option = select_test_mode_menu();
    switch(option)
    {
      case TransmissionTest:
        test_mode_tx_adjust();   
        break;
        
      case ReceptionTest:
        test_mode_rx_adjust();     
        break;          
        
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != PreviousMenu);
}



/************************************************************************************
* cont_transmission_test_adjust
*
* This function execute a specific transmission mode: modulated, unmodulated or 
* the pseudo random binary sequence.
*
***********************************************************************************/
void cont_transmission_test_adjust(void)
{
  char option;
  CurrentOption = gTxTestMode_c;
  
  do
  {
    option = test_transmission_menu();
    switch(option)
    {
      case PRBS9TxTest:
        pulse_prbs9_tx();
        break;
      case ModulatedTxTest:
        u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
        MLMETestMode(u8CurrentMode);        
        break;        
      case UnmodulatedTxTest:
        u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
        MLMETestMode(u8CurrentMode);
        break;  
    case PreviousMenu:
        break;      
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != PreviousMenu);
}


/************************************************************************************
* pulse_prbs9_tx
*
* This function performs the transmission process for the pseudo random binary 
* sequence.
*
***********************************************************************************/

void pulse_prbs9_tx(void)
{
  static prbs9_tx_states_t u8AppState;
  static uint16_t u16DutyCicleCounter;
  
#if INTERFACE_TYPE == MANUAL 
  if(FALSE == gu8TestAlreadyStarted)
  {
       TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
      u8AppState = INIT_PRBS9_TX_ST;
  }  
#endif  


#if INTERFACE_TYPE == SERIAL
  u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX;
  TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
  u8AppState =  INIT_PRBS9_TX_ST;
  MLMETestMode(u8CurrentMode);
  Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
  Uart_Print("\r\nPress any key to start.....");
  Uart_getchar(mUARTRxBuffer);
  do  
  {
#endif        
        
    (void)process_radio_msg();
    switch(u8AppState)
    {
      case INIT_PRBS9_TX_ST:
      {
        LoadPRBS9();
        u16DutyCicleCounter = 0;
        u8AppState = TRANSMIT_PRBS9_TX_ST;
      }
      break;
      
      case TRANSMIT_PRBS9_TX_ST:
      {
        if(is_tx_msg_final_state(TX_msg))
        {
          u16DutyCicleCounter++;
          if(u16DutyCicleCounter == DUTY_CICLE_TIME)
          {
            u16DutyCicleCounter = 0;
            MCPSDataRequest(&TX_msg);
          }
        }
      }
      
      default:
      break;
    }
         
#if INTERFACE_TYPE == SERIAL    
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != Exit); 
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
#endif

#if INTERFACE_TYPE == MANUAL      
  gu8TestAlreadyStarted = TRUE;
#endif
}

/************************************************************************************
* packet_error_rate_tx_test
*
* This function performs the packet error rate transmission process.
*
***********************************************************************************/
void packet_error_rate_tx_test(void)
{
  static per_tx_states_t u8AppState;
  static uint16_t u16MsgCount;
  static uint16_t u16DoneCount;
  uint32_t u32NumTransmissions;

#if   INTERFACE_TYPE == SERIAL
  uint8_t u8InvalidCharFlag = FALSE;
#endif
  
#if   INTERFACE_TYPE == SERIAL
  uint8_t u8Count;
  uint8_t u8TempNumTx[5];
#endif
  
  u32NumTransmissions = NUM_TRANSMISSIONS;

#if INTERFACE_TYPE == SERIAL
  u8AppState = IDLE_PER_TX_ST;   
  u8CurrentMode = SMAC_TEST_MODE_PER_TX;
  do{
#endif

#if INTERFACE_TYPE == MANUAL 
  if(FALSE == gu8TestAlreadyStarted)
  {
    clear_event(gu8TestModeEvents, TEST_START_EVENT);
    TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
    LEDs_TX_INIT(250);  
    u8AppState = INIT_PER_TX_ST;
    gu8TestAlreadyStarted = TRUE;
#if (gLCDSupported_d) 
    LCD_WriteString_NormalFont(7,"                     ");
    LCD_WriteString_NormalFont(4,"PER Transmitting..");
#endif    
  }
#endif
    
    (void)process_radio_msg();
    if(TRUE == gbDataIndicationFlag)
    {
      gbDataIndicationFlag = FALSE;
      process_incoming_msg();
    }
    
#if INTERFACE_TYPE == MANUAL    
    if (TRUE == gu8TestAlreadyStarted)
    {
#endif      
    switch(u8AppState){
      case IDLE_PER_TX_ST:
      {
#if INTERFACE_TYPE == SERIAL          
        Uart_Print("\r\n    ****************************");
        Uart_Print("\r\n    ** Packet Error Rate Test **");
        Uart_Print("\r\n    ****************************");
        Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
        Uart_Print("\r\nPress Enter. Packets to transmit: ");
        Uart_PrintShortDec((uint16_t)NUM_TRANSMISSIONS);
        do
        {
         uint8_t i;
         uint8_t u8Shift;
          Uart_Print("\r\n\n  Number of packets in decimal: ");
          u8Count = 0;
          u8InvalidCharFlag = FALSE;

          u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
                    
          while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= Exit))
          { 
            if((0x3A < u8TempNumTx[u8Count]))
            {
              u8InvalidCharFlag = TRUE;
            }
            else if(0x30 > u8TempNumTx[u8Count])
            {
              u8InvalidCharFlag = TRUE;
            }

            u8Count ++;
            u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
          }
          if(u8TempNumTx[u8Count] == 0x0D)
          { 
            if(0 != u8Count)
            {
              u8Count--;
            }
            else
            {
              u8InvalidCharFlag = TRUE;
            }   
            Uart_getchar(mUARTRxBuffer);
           }
          
          if(Exit == u8TempNumTx[u8Count])
          {
            return;
          }

          u32NumTransmissions = 0;
          u8Shift = u8Count;
          /*To validate 0-9, a-f and A-F values*/

          for(i = 0; i <= u8Count; i++)
          {
            u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
            u8Shift--;
          }
          
          if(MAX_NUM_TRANSMISSION < u32NumTransmissions)
          {
            Uart_Print("\r\n  Value out of range, please try again.");
          }
          
          if(u8InvalidCharFlag == TRUE)
          {
            Uart_Print("\r\n  Invalid characters, please use only numbers.");
          }
        }
        while((MAX_NUM_TRANSMISSION < u32NumTransmissions) || (TRUE == u8InvalidCharFlag));
        
#endif         
         u8AppState = INIT_PER_TX_ST;
      }
      break;
      case INIT_PER_TX_ST:
      {
        uint8_t i;
        uint8_t u8Count = 4;
        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        {
          TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
          u8Count ++;
        }

        u16MsgCount = 0;
        u16DoneCount = 0;
        u8AppState = TRANSMITING_PER_TX_ST;
      }
      break;
      case TRANSMITING_PER_TX_ST:
      {
        if(is_tx_msg_final_state(TX_msg))
        {
          if(u32NumTransmissions > u16MsgCount)
          {
            TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
            TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
            TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
#if INTERFACE_TYPE == SERIAL          
            DelayMs(14);
#else
            DelayMs(5);
#endif            

            MCPSDataRequest(&TX_msg);
            u16MsgCount++;
          }
          else
          {
            uint8_t i;
            for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
            {
              TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
            }
            u8AppState = DONE_PER_TX_ST;
          }
        }   
      }  
      break;
      
      case DONE_PER_TX_ST:
      {
        if(NUM_DONE_TX >= u16DoneCount)
        {
          if(is_tx_msg_final_state(TX_msg))
          {
            if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
              u16DoneCount++;
            TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
            DelayMs(14);
            MCPSDataRequest(&TX_msg);
          }
        }
        else
        {
          u8AppState = FINISH_PER_TX_ST;
        }
      }
      break;
      
      case FINISH_PER_TX_ST:
        u8AppState = IDLE_PER_TX_ST;
#if INTERFACE_TYPE == MANUAL                
        gu8TestAlreadyStarted = FALSE;
#endif        
 
        break;
      
      default:
      {
      }
      break;
    }

#if INTERFACE_TYPE == MANUAL        
  }
#endif
  
#if INTERFACE_TYPE == SERIAL    
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != Exit); 
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
#endif

  
}

/************************************************************************************
* packet_error_rate_rx_test
*
* This function performs the packet error rate reception process.
*
***********************************************************************************/
void packet_error_rate_rx_test(void)
{
  static per_rx_states_t u8AppState;

#if INTERFACE_TYPE == MANUAL 
  if(FALSE == gu8TestAlreadyStarted)
  {  
    RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
    LEDs_RX_INIT(250);  


#if (gLCDSupported_d) 
    LCD_WriteString_NormalFont(7,"                     ");
    LCD_WriteString_NormalFont(4," PER Listening..");
#endif
    u8AppState = INIT_PER_RX_ST;
    gu8TestAlreadyStarted = TRUE;
  }
#endif
  

#if INTERFACE_TYPE == SERIAL
  u8CurrentMode = SMAC_TEST_MODE_PER_RX;
  RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\n    ** Packet Error Rate Test **");
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
  Uart_Print("\r\nPress any key to start.....");
  Uart_getchar(mUARTRxBuffer);
  u8AppState = INIT_PER_RX_ST;
  do{
#endif    
    
#if INTERFACE_TYPE == MANUAL    


  if (TRUE == gu8TestAlreadyStarted)
  {
#endif      
      (void)process_radio_msg();
      if(TRUE == gbDataIndicationFlag)
      {
        gbDataIndicationFlag = FALSE;
        process_incoming_msg();
      }
    
#if OTAP_ENABLED == TRUE
    if(gbOtapExecute)
    {
      OTAP_execute();        
    }
    else
#endif
    {          
  
      switch(u8AppState){
        case IDLE_PER_RX_ST:
        {
          // Do nothing when idle
        }
        break;
        case INIT_PER_RX_ST:
        {
#if INTERFACE_TYPE == SERIAL        
          Uart_Print("\r\n\nThe RX radio is now listening...");
#endif       
          u8AppState = LISTEN_PER_RX_ST;
          
          
        }
        break;
        case WAITING_PER_RX_ST:
        {
          if(is_rx_msg_final_state(RX_msg))
          {
            u8AppState = LISTEN_PER_RX_ST;
          }
          if(gu32PerRxEvents & PER_DONE_MSG_EVNT)
          {
            gu32PerRxEvents = PER_NO_EVENT;
            u8AppState = FINISH_PER_RX_ST;
          }
        }
        break;
        case LISTEN_PER_RX_ST:
        {
          if(is_rx_msg_final_state(RX_msg))
          {
            RX_msg.u8BufSize = PER_RX_SIZE;
            MLMERXEnableRequest(&RX_msg, 0x00000000);
            u8AppState = WAITING_PER_RX_ST;
          }
        }
        break;
        case FINISH_PER_RX_ST:
        {
          u8AppState = INIT_PER_RX_ST;
#if INTERFACE_TYPE == MANUAL 
          LED_SetHex((uint8_t)(c_test_num.u8Thousands));
          DelayMs(gTotalPacketsDelay_d);
          LED_TurnOffAllLeds();
          DelayMs(gTotalPacketsDelay_d);
          LED_SetHex((uint8_t)(c_test_num.u8Houndreds));
          DelayMs(gTotalPacketsDelay_d);
          LED_TurnOffAllLeds();
          DelayMs(gTotalPacketsDelay_d);
          LED_SetHex((uint8_t)(c_test_num.u8Tens));
          DelayMs(gTotalPacketsDelay_d);
          LED_TurnOffAllLeds();
          DelayMs(gTotalPacketsDelay_d);
          LED_SetHex((uint8_t)(c_test_num.u8Units));
          DelayMs(gTotalPacketsDelay_d);
          gu8TestAlreadyStarted = FALSE;
#endif        
        }
        break;
        default:
        {
        }
        break;
      }
    }  
#if INTERFACE_TYPE == MANUAL        
  }
#endif
  
#if INTERFACE_TYPE == SERIAL    
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != Exit);  
  
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
#endif
  
}

/************************************************************************************
* range_rx_test
*
* This function performs the range reception process.
*
***********************************************************************************/
void range_rx_test(void)
{
  volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
  volatile uint8_t u8retries;
#if INTERFACE_TYPE == MANUAL 
  if(FALSE == gu8TestAlreadyStarted)
  {
     u8AppState = INIT_RANGE_RX_ST;
     LEDs_RX_INIT(250);
#if (gLCDSupported_d) 
    LCD_WriteString_NormalFont(7,"    ");
    LCD_WriteString_NormalFont(4,"Range Listening..");
#endif        
  }  
#endif  

#if INTERFACE_TYPE == SERIAL
  u8CurrentMode = SMAC_TEST_MODE_RANGE_RX;
  
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\n    **       Range Test       **");
  Uart_Print("\r\n    ****************************");
   
  Uart_Print("\r\nPress Q to exit from Range Test");
  Uart_Print("\r\nPress any key to start.....");
  Uart_getchar(mUARTRxBuffer);
  u8AppState = INIT_RANGE_RX_ST;
  do{
#endif

      (void)process_radio_msg();
      if(TRUE == gbDataIndicationFlag)
      {
        gbDataIndicationFlag = FALSE;
        process_incoming_msg();
      }
      else{
      }

#if OTAP_ENABLED == TRUE
    if(gbOtapExecute)
    {
      OTAP_execute();        
    }
    else
#endif
    {          
      switch(u8AppState){
        case IDLE_RANGE_RX_ST:
        {
          // Do nothing when idle
        }
        break;
        
        case INIT_RANGE_RX_ST:
        {
          RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
          ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
  #if INTERFACE_TYPE == SERIAL        
          Uart_Print("\r\n\nThe RX radio is now listening...");
          Uart_Print("\r\nStart the test by pressing any key on TX radio");
  #endif       
          u8AppState = LISTEN_RANGE_RX_ST;
        }
        break;
        
        case LISTEN_RANGE_RX_ST:
        {
          if(is_rx_msg_final_state(RX_msg))
          {
            RX_msg.u8BufSize = RANGE_RX_SIZE;
            MLMERXEnableRequest(&RX_msg, 0x00000200);
            u8AppState = WAITING_RANGE_RX_ST;
          }
        }
        break;
  
       case WAITING_RANGE_RX_ST:
        {
          if(is_rx_msg_final_state(RX_msg))
          {
            u8AppState = LISTEN_RANGE_RX_ST;
          }
          if(TRUE == gu8ValidRangePacket)
          {
            gu8ValidRangePacket = FALSE;
            u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
            u8retries = 5;
          }
        }
        break;
   
        
        case TRANSMIT_ACK_RANGE_RX_ST:
        {

          if(is_tx_msg_final_state(ACK_msg))
          { 
            MCPSDataRequest(&ACK_msg); 
            u8retries --;
          }
          if(0 == u8retries)
          {
            u8AppState = WAITING_RANGE_RX_ST;
          }
        }
        break;
        
        case FINISH_RANGE_RX_ST:
        {
          /*Do nothing*/
        }
        break;
        default:
        {
        }
        break;
      }
   }
#if INTERFACE_TYPE == SERIAL       
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != Exit);  
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
#endif  
#if INTERFACE_TYPE == MANUAL      
  gu8TestAlreadyStarted = TRUE;
#endif
}

/************************************************************************************
* range_tx_test
*
* This function performs the range transmission process.
*
***********************************************************************************/

void range_tx_test(void)
{
  static range_tx_states_t u8AppState; 
  static uint16_t u8CountNoPacket = 0;
   
#if INTERFACE_TYPE == MANUAL 
  if(FALSE == gu8TestAlreadyStarted)
  {
    clear_event(gu8TestModeEvents, TEST_START_EVENT);
    u8AppState = INIT_RANGE_TX_ST;
    LEDs_TX_INIT(250);  
#if (gLCDSupported_d) 
    LCD_WriteString_NormalFont(7,"    ");
    LCD_WriteString_NormalFont(4,"Range Transmitting..");
#endif        
  }  
#endif  

#if INTERFACE_TYPE == SERIAL    

  u8AppState = INIT_RANGE_TX_ST;
  
  u8CurrentMode = SMAC_TEST_MODE_RANGE_TX;
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\n    **       Range Test       **");
  Uart_Print("\r\n    ****************************");
   
  Uart_Print("\r\nPress Q to exit from Range Test");
  Uart_Print("\r\nPress any key to start the test.....");
  Uart_getchar(mUARTRxBuffer);
  do{
#endif
    (void)process_radio_msg();
    if(TRUE == gbDataIndicationFlag)
    {
      gbDataIndicationFlag = FALSE;
      process_incoming_msg();
      u8CountNoPacket = 0;
    }
    else{
      u8CountNoPacket++;
      if(MAX_NO_PACKET_ALLOW == u8CountNoPacket)
      {
          u8CountNoPacket = 0;
          TurnOffLeds();
      }
    }
    
#if OTAP_ENABLED == TRUE
 if(gbOtapExecute)
 {
    OTAP_execute();        
 }
 else
#endif
  {
    
    switch(u8AppState)
    {
      case IDLE_RANGE_TX_ST:
      {
        // Do nothing when idle
  		u8AppState = INIT_RANGE_TX_ST;
      }
      break;
      case INIT_RANGE_TX_ST:
      {
        uint8_t i;
          RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
          TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
          ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
          for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
          {
            TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
          }
#if SMAC_FEATURE_SECURITY ==  TRUE
        {
          uint8_t fill_counter;
          for(fill_counter=sizeof(u8RangeExpectedString); fill_counter<16; fill_counter++)
          {
             TX_msg.pu8Buffer->u8Data[fill_counter] = '\0';
          }
          TX_msg.u8BufSize = 16;
          (void)CipherMsgU8(&(TX_msg.pu8Buffer->u8Data[0]), (TX_msg.u8BufSize));
        }
#else
        TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));
#endif


#if INTERFACE_TYPE == SERIAL              
          Uart_Print("\r\n\nThe transceiver is now transmitting...");
#endif          
          u8AppState = TRANSMITING_RANGE_TX_ST;
      }
      break;
      
      case TRANSMITING_RANGE_TX_ST:
      {
        if(is_tx_msg_final_state(TX_msg))
        {
          
          DelayMs(5);
          MCPSDataRequest(&TX_msg);
        }
        u8AppState = LISTEN_RANGE_TX_ST;
      }  
      break;
      
      case LISTEN_RANGE_TX_ST:
      {
        if(is_rx_msg_final_state(RX_msg))
        {
          RX_msg.u8BufSize = RANGE_RX_SIZE;
          MLMERXEnableRequest(&RX_msg, 0x00000200);
        }
        u8AppState = WAITING_RANGE_TX_ST;
      }
      break;
      
      case WAITING_RANGE_TX_ST:
      {
        if(is_tx_msg_final_state(TX_msg))
        {
          u8AppState = TRANSMITING_RANGE_TX_ST;
        }
        if(is_rx_msg_final_state(RX_msg))
        {
          u8AppState = LISTEN_RANGE_TX_ST;
        }
        if(TRUE == gu8ValidAckPacket)
        {
          gu8ValidAckPacket = FALSE;
          u8AppState = RANGE_INDICATION_TX_ST;
        }
      }
      break;
      
      case RANGE_INDICATION_TX_ST:
      {
        u8AppState = WAITING_RANGE_TX_ST;
      }
      break;
      
      default:
      {
      }
      break;
    }
  }
#if INTERFACE_TYPE == SERIAL                  
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != Exit);  
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
#endif

#if INTERFACE_TYPE == MANUAL      
  gu8TestAlreadyStarted = TRUE;
#endif
}


/************************************************************************************
* configure_clock_setting
*
* This function adjust the clock setting selected by the user in the serial interface.
*
***********************************************************************************/
void configure_clock_settings(void)
{
  char option_menu, option;
   do{
      option_menu = clock_setting_menu();
      switch(option_menu)
      {
        case BulkCapacitor:
         do
          {
            option = bulk_cap_menu();
            switch(option)
            {
              case EnableBulkCapacitor:
                enable_bulk_cap(); 
                u8BulkCapState = gEnable_c;
                break;
              case DisableBulkCapacitor:
                disable_bulk_cap(); 
                u8BulkCapState = gDisable_c;
                break;
              case PreviousMenu:
                break;
              default:
                Uart_Print("  Invalid Option!!!");
                break;              
            }
          }while(option != PreviousMenu);
          break;
          
        case CoarseTune:
          coarse_tune_adjust();
          break;
          
        case FineTune:
          fine_tune_adjust();
          break;
          
        case PreviousMenu:
          break;
          
        default:
          Uart_Print("  Invalid Option!!!\n");
          break;
     }
  }while(option_menu != PreviousMenu); 
}

/************************************************************************************
* coarse_tune_adjust
*
* This function ajusts the current coarse tune value to the new typed by the user 
* in the serial interface.
*
***********************************************************************************/
void coarse_tune_adjust(void)
{
  uint8_t u8TempCoarse;
  Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
  Uart_Print("\r  Current Coarse Tune Value: ");
  Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
  Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
  Uart_getchar(mUARTRxBuffer);
  u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
  Uart_getchar(mUARTRxBuffer);

  if(u8TempCoarse > 0X00)
  {
    Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
  }
  else
  {
    u8CurrentCoarseTune = (u8TempCoarse << 4);
    u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
    set_xtal_coarse_tune(u8CurrentCoarseTune); 
  }
}

/************************************************************************************
* fine_tune_adjust
*
* This function ajusts the current fine tune value to the new typed by the user
* through the serial interface.
*
***********************************************************************************/
void fine_tune_adjust()
{
  uint8_t u8TempFine;
  Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
  Uart_Print("\r  Current Fine Tune Value: ");
  Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
  Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
  u8TempFine = Uart_getchar(mUARTRxBuffer);
  u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
  Uart_getchar(mUARTRxBuffer);
  if(u8TempFine > 0X01)
  {
    Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
  }
  else
  {
    u8CurrentFineTune = (u8TempFine << 4);
    u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
    set_xtal_fine_tune(u8CurrentFineTune); 
  }

}
/************************************************************************************
* PrintTestMode
*
* This function prints the Test Mode name received as parameter.
*
*********************************************************************************/
void PrintTestMode(Test_Mode_t TestModeValue)
{
  switch(TestModeValue)
  {
    case SMAC_TEST_MODE_IDLE:
      Uart_Print("IDLE MODE\n");
      break;
	  
    case SMAC_TEST_MODE_CONTINUOUS_RX:
      Uart_Print("CONTINUOUS RECEPTION\n");
      break;
	  
    case SMAC_TEST_MODE_PULSE_PRBS9_TX:
      Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
      break;
	  
    case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
      Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
      break;       
	  
    case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
      Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
      break;      
	  
    case SMAC_TEST_MODE_PER_TX:
      Uart_Print("PACKET ERROR RATE TEST\n");
      break;
	  
    case SMAC_TEST_MODE_RANGE_TX:
      Uart_Print("RANGE TEST\n");
      break;
	  
    default:
      break;
  }
}

/************************************************************************************
* PrintChannel
*
* This function prints the Channel number received as parameter.
*
***********************************************************************************/
void PrintChannel(channel_num_t u8ChannelValue)
{
  if( TOTAL_CHANN > u8ChannelValue ){
    u8ChannelValue += 11;
    Uart_Print("CHANNEL ");
    Uart_PrintByteDec(u8ChannelValue);
    Uart_Print("\n");
  }
}

/************************************************************************************
* LEDs_LQI_indicator
*
* This function show the four possible LQI adjusted values using three LEDs.
*
************************************************************************************/
#if (gLEDSupported_d)
void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
{
  uint8_t LEDs_state[4][4]={gFarRange_c,LED_OFF,LED_OFF,LED_OFF,
                            gMediumRange_c,LED_ON,LED_OFF,LED_OFF,
                            gNearRange_c,LED_ON,LED_ON,LED_OFF,
                            gVeryNearRange_c,LED_ON,LED_ON,LED_ON
                           };
  Gpio_SetPinData(LED2_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
  Gpio_SetPinData(LED3_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
  Gpio_SetPinData(LED4_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
}
#endif

/************************************************************************************
* TMR_Init
*
* This function configurates the timer to generate a output frequency at 2 MHz.
* 
**********************************************************************************/
void TMR_Init(void)
{              
  TmrConfig_t pConfig;
  TmrStatusCtrl_t pStatusCtrl;
  TmrComparatorStatusCtrl_t pCompStatusCtrl;
  
  TmrInit();
  GpioTmrInit();
  TmrEnable(gTmr1_c);
 
  SetLoadVal(gTmr1_c, 0x00);
  SetCntrVal(gTmr1_c, 0x00);
  SetCompLoad1Val(gTmr1_c, 0x05);         
  SetCompLoad2Val(gTmr1_c, 0x05);        
 
  SetComp1Val(gTmr1_c, 0x05);  
  SetComp2Val(gTmr1_c, 0x05);              
     
  TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   

  pConfig.tmrOutputMode = gTmrToggleOF_c;
  pConfig.tmrCoInit = FALSE;
  pConfig.tmrCntDir = FALSE;
  pConfig.tmrCntLen = TRUE;
  pConfig.tmrCntOnce = FALSE;
  pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
  pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
  TmrSetConfig(gTmr1_c, &pConfig);  

  pCompStatusCtrl.uintValue =0x06;
  TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
 
  pStatusCtrl.uintValue = 0x05;
  TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
}

/************************************************************************************
* GpioTmrInit
*
* This function initializate the Timer´s gpios.
*
***********************************************************************************/
void GpioTmrInit(void)
{
  Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
}

/************************************************************************************
* display_config function
*
* This function prints an ASCII Freescale's logo.
************************************************************************************/
#if INTERFACE_TYPE == SERIAL
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
  Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
  Uart_Print("\r   #  ***\n");
  Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
  Uart_Print("\r   #  *\n");
  Uart_Print("\r  ###               2 0 1 1\n");
  Uart_Print("\r ###\n");
  Uart_Print("\r  #           Press any key to continue...\n\n");
}
#endif

/*******************************************************************************
* DisplayFreescaleLogo
*
* This function displays the Freescale Logo in the LCD.
*******************************************************************************/
#if (gLCDSupported_d)
void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
{
  uint8_t u8Count;
  uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
  uint8_t i;
  
  for(i=0; i < 8; i++)
  {  
    LCD_WritePixel(xStartCoord, yStartCoord, 1);
    LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
    LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
    LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
    LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
    LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  

    
   if(i == 2 || i == 4 || i == 6)
   {
     if(i == 4)
     {
       yStartCoord += 3;
       xStartCoord -= 9;
     }
     else
     {
       yStartCoord += 6;
       xStartCoord -= 6;
     }
   }
   else
   {
    yStartCoord += 3;
    xStartCoord += 4;

   }
  }
 (void)LCD_SetFont(gLCD_VerdanaFont_c);
  yStartCoord -= 20;
  xStartCoord += 15;
  
  for(u8Count = 0; u8Count < 9; u8Count++)
  {
    LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
    xStartCoord += 6;
  }

 (void)LCD_SetFont(gLCD_NormalFont_c);
  yStartCoord -= 20;
  xStartCoord += 15;
}
#endif


#if (gLCDSupported_d)
  
void DisplayTestMode(ConfigOption_t u8ConfigOption)
{
  uint8_t line = 0;
  uint8_t i;
  ClearDisplay();
  LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");

  for(i = 0; i< 130 ; i++)
  {
    LCD_WritePixel(i,10,1);  
    LCD_WritePixel(i,11,1);  
  }
  line++;
  

  switch(u8ConfigOption)
  {
    case gChannel_c:
      line++;
      LCD_WriteString_NormalFont(line," Option: Channel");
      line++;
      LCD_WriteString_NormalFont(line,"  SW1 Change option");
      line++;
      LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
      line++;
      LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
      LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
    break;
    
    case gPower_c:
      line++;
      LCD_WriteString_NormalFont(line," Option: Power");
      line++;
      LCD_WriteString_NormalFont(line,"  SW1 Change option");
      line++;
      LCD_WriteString_NormalFont(line,"  SW2 Power Up");
      line++;
      LCD_WriteString_NormalFont(line,"  SW3 Power Down");
      LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
    break;
    
    case gRxTestMode_c:
      line++;
      
      if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Option: Test");
        line++;
        LCD_WriteString_NormalFont(line,"  SW1 Change option");
        line++;
        LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        line++;
        LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        line++;
        LCD_WriteString_NormalFont(7,"Idle Mode");
      }
    /* RX options */  
      /*
      if(SMAC_CONTINUOUS_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Continuous Reception");
      } 
      */
      if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line,"PER Test running");
        line = line + 2 ;
        LCD_WriteString_NormalFont(line,"SW4 for PER TX");
      }  

      if(SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line,"Range Test running");
        line = line + 2 ;
        LCD_WriteString_NormalFont(line,"SW4 for Range TX");
      }  
      
    /* TX options */  
      if(SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
      }            
      if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Cont TX Mod ");
      }              
      if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Cont TX No Mod ");
      }        
      
    break;
  
    default:
    break;
  }
}

void ClearDisplay(void)
{
  uint8_t u8Line;
  for(u8Line = 0; u8Line < 9; u8Line++)
  {
    LCD_WriteString_NormalFont(u8Line,"                     ");
  }
}

#endif

/************************************************************************************
*************************************************************************************
* Private Debug stuff
*************************************************************************************
************************************************************************************/


