///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        01/Feb/2019  11:30:27
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\Application\Source\repeater.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDDEC.tmp
//        ("D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\Application\Source\repeater.c"
//        -D NDEBUG -D F24MHZ -D SECURITY_ENABLED -D MC13226Included_d=0
//        --preprocess=cs "D:\Users\Brus\Documents\Uni\Wireless Sensors
//        Networks M\Project\WSNBP\repeater_test\Repeater\Release\List" -lC
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\Release\List" -lB
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\Release\List" --diag_suppress
//        Pe940,Pe951,Pe911 -o "D:\Users\Brus\Documents\Uni\Wireless Sensors
//        Networks M\Project\WSNBP\repeater_test\Repeater\Release\Obj"
//        --endian=little --cpu=ARM7TDMI-S --fpu=None --dlib_config
//        "C:\HDDprograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\SMAC\Drivers\Interface\" -I
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\PLM\Interface\" --cpu_mode
//        thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\repeater_test\Repeater\Release\List\repeater.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DelayMs
        EXTERN ITC_EnableInterrupt
        EXTERN ITC_Init
        EXTERN ITC_SetPriority
        EXTERN IntAssignHandler
        EXTERN IntDisableAll
        EXTERN IntRestoreAll
        EXTERN MACA_Interrupt
        EXTERN MCPSDataRequest
        EXTERN MLMEPAOutputAdjust
        EXTERN MLMERXEnableRequest
        EXTERN MLMERadioInit
        EXTERN MLMESetChannelRequest
        EXTERN PlatformPortInit
        EXTERN ResetMaca
        EXTERN UartGetByteFromRxBuffer
        EXTERN Uart_Init
        EXTERN Uart_Print
        EXTERN Uart_PrintByteDec
        EXTERN Uart_PrintHex
        EXTERN Uart_PrintShortDec
        EXTERN Uart_Tx
        EXTERN __aeabi_memcpy4
        EXTERN abort_message
        EXTERN gRadioEvntFlags
        EXTERN gu16SCINumOfBytes
        EXTERN gu8SCIStatus
        EXTERN process_radio_msg

        PUBLIC Main
        PUBLIC RX_msg
        PUBLIC TX_msg
        PUBLIC dataRX
        PUBLIC dataTX
        PUBLIC data_indication_execute
        PUBLIC gbDataIndicationFlag
        PUBLIC gbRdyToProcessEvnt
        PUBLIC isUartDataRdy
        PUBLIC repeater_rx_cb
        PUBLIC sRepeaterDelay
        PUBLIC sRepeaterStat
        PUBLIC u32RepeatRxTimeOut
        PUBLIC u8RepOpMode
        PUBLIC u8RepOpModeText
        PUBLIC u8RepRdyPrompt
        PUBLIC u8RepeaterChann
        PUBLIC u8RepeaterPower
        PUBLIC u8RepeaterRunSt
        PUBLIC u8RepeaterState
        PUBLIC u8UartBuffer
        PUBLIC u8UartData
        PUBLIC u8UartDataSz
        PUBLIC u8WrongChar


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 0AH, 0DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 20H, 20H, 52H, 65H, 70H
        DC8 65H, 61H, 74H, 65H, 72H, 20H, 41H, 70H
        DC8 70H, 6CH, 69H, 63H, 61H, 74H, 69H, 6FH
        DC8 6EH, 20H, 20H, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 0AH, 0DH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "\012\015  Current Device's configuration is:\012\015"
        DC8 0, 0, 0
        DC8 20H, 20H, 20H, 20H, 41H, 70H, 70H, 20H
        DC8 4DH, 6FH, 64H, 65H, 20H, 20H, 20H, 20H
        DC8 20H, 43H, 68H, 61H, 6EH, 6EH, 65H, 6CH
        DC8 20H, 20H, 20H, 20H, 20H, 50H, 6FH, 77H
        DC8 65H, 72H, 20H, 4CH, 65H, 76H, 65H, 6CH
        DC8 20H, 20H, 20H, 20H, 20H, 44H, 65H, 6CH
        DC8 61H, 79H, 0AH, 0DH, 0
        DC8 0, 0, 0
        DC8 20H, 20H, 20H, 20H, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 20H, 20H, 20H, 20H
        DC8 20H, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 20H, 20H, 20H, 20H, 20H, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 20H, 20H, 20H, 20H, 20H, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 0AH, 0DH, 0
        DATA8
        DC8 0
// D:\Users\Brus\Documents\Uni\Wireless Sensors Networks M\Project\WSNBP\repeater_test\Repeater\Application\Source\repeater.c
//    1 /************************************************************************************
//    2 * Repeater main 
//    3 *
//    4 * (c) Copyright 2006, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected:
//   11 * Last Tested:
//   12 ************************************************************************************/
//   13 
//   14 
//   15 
//   16 #include "../../PLM/LibInterface/Crm.h"
//   17 #include "../../PLM/LibInterface/Timer.h"
//   18 #include "../../PLM/LibInterface/Interrupt.h"
//   19 #include "../../PLM/Interface/RF_Config.h"
//   20 #include "../../PLM/Interface/PlatformInit.h"
//   21 #include "../../SMAC/Interface/GlobalDefs.h"
//   22 #include "../../SMAC/Interface/TransceiverConfigMngmnt.h"
//   23 #include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
//   24 #include "../../SMAC/Interface/WirelessLinkMngmt.h"
//   25 #include "../../SMAC/Interface/SecurityMngmnt.h"
//   26 #include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
//   27 #include "../../SMAC/Configure/options_config.h"
//   28 #include "../../SMAC/Configure/security_config.h"
//   29 #include "../../SMAC/Drivers/Configure/board_config.h"
//   30 #include "../../SMAC/Drivers/Interface/Delay.h"
//   31 #include "../../SMAC/Drivers/Interface/ghdr/maca.h"
//   32 #include "../../SMAC/Drivers/Interface/MacaInterrupt.h"
//   33 #include "../Utilities/Leds.h"
//   34 #include "../Utilities/UartUtil.h"
//   35 #include "../Utilities/Keyboard.h"
//   36 #include "../Configure/app_config.h"
//   37 
//   38 #if OTAP_ENABLED == TRUE
//   39  #include "../Otap/Otap.h"
//   40 #endif
//   41 
//   42 /************************************************************************************
//   43 *************************************************************************************
//   44 * Private macros
//   45 *************************************************************************************
//   46 ************************************************************************************/
//   47 #define REPEATER_CHANN CHANNEL_NUMBER
//   48 
//   49 #define SIZE_OF_MODE_TEXT      (6)
//   50 
//   51 #define TEXT_DIGITS_PER_CHANN  (2)
//   52 
//   53 #define MAX_SMAC_PACK_SZ (125)
//   54 
//   55 /* MACA clocks run at 250 KHz, then each count represents 4 usec */
//   56 #define USECS_BY_MACA_CLK_TIC  (4)
//   57 #define MACA_CLK_COUNTS_FOR_ONE_MILLISEC (250)
//   58 
//   59 /* Used at process_change_delay */
//   60 #define DLY_MILLISEC (0)
//   61 #define DLY_MICROSEC (1)
//   62 #define MAX_MILLI_DIGITS (5)
//   63 #define MAX_MICRO_DIGITS (3)
//   64 #define MAX_MILLI_VALUE (0xFFFF)
//   65 #define MIN_MILLI_VALUE (1)
//   66 
//   67 /* Used at process_ready_prompt */
//   68 #define RDY_INIT (0)
//   69 #define RDY_READ (1)
//   70 
//   71 #define PRINT_PROMPT() (Uart_Print((uint8_t *)(&u8RepRdyPrompt)))
//   72 #define PRINT_CHAR_ERROR() (Uart_Print((uint8_t *)(&u8WrongChar)))
//   73 
//   74 
//   75 typedef union bytes_2_short_tag {
//   76   uint16_t u16Short;
//   77   struct{
//   78     uint8_t Byte0;
//   79     uint8_t Byte1;
//   80   }bytes;
//   81 }bytes_2_short_t;
//   82 
//   83 /************************************************************************************
//   84 *************************************************************************************
//   85 * Private prototypes
//   86 *************************************************************************************
//   87 ************************************************************************************/
//   88 static void display_config(void);
//   89 static void display_menu(void);
//   90 static void display_statistics(void);
//   91 static void print_freescale_logo(void);
//   92 static void print_n_blank_spaces(uint8_t n);
//   93 static void process_uart_data(void);
//   94 
//   95 static void process_change_delay (void);
//   96 static void process_repeater_run (void);
//   97 static void process_ready_prompt (void);
//   98 
//   99 static void repeater_app(void);
//  100 static void repeater_app_init(void);
//  101 static void repeater_run_sm (void);
//  102 
//  103 /************************************************************************************
//  104 *************************************************************************************
//  105 * Private type definitions
//  106 *************************************************************************************
//  107 ************************************************************************************/
//  108 #define RTCTimeout 0x000FFFFFF
//  109 
//  110 typedef enum {
//  111     gRepOpModeNormal_c = 0,
//  112     gRepOpModeDummy_c,
//  113     gRepOpModeSniff_c,
//  114     gRepOpModeMax_c
//  115 } RepOpMode_t;
//  116 
//  117 typedef enum RepAppState_tat{
//  118     gRepAppStReady_c = 0,
//  119     gRepAppStRun_c,
//  120     gRepAppStChgDly_c,
//  121     gRepAppStMax_c
//  122 } RepAppState_t;
//  123 
//  124 typedef enum u8RepeaterRunState_tag{
//  125     gRepeaterRunStIdle_c = 0,
//  126     gRepeaterRunStRcv_c,
//  127     gRepeaterRunStWaiting_c,
//  128     gRepeaterRunStTx_c
//  129 }u8RepeaterRunState_t;
//  130 
//  131 typedef struct RepDelay_tag {
//  132   uint16_t millisecondsDly;
//  133   uint16_t microsecondsDly;
//  134 } RepDelay_t;
//  135 
//  136 typedef struct RepStat_tag {
//  137   uint16_t u16ReccivedPkts;
//  138   uint16_t u16RetransmitedPkts;
//  139   uint16_t u16BadPkts;
//  140   uint16_t u16DroppedPkts;
//  141 }RepStat_t;
//  142 
//  143 /************************************************************************************
//  144 *************************************************************************************
//  145 * Private memory declarations
//  146 *************************************************************************************
//  147 ************************************************************************************/
//  148 const uint8_t u8RepOpModeText[gRepOpModeMax_c][SIZE_OF_MODE_TEXT] = \ 
//  149                   {{"NORMAL"},{"DUMMY "},{"SNIFF"}};
//  150 
//  151 const uint8_t u8RepRdyPrompt[] = {"\n\rReady> \0"};
//  152 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC8 0AH, 0DH, 20H, 20H, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 20H, 20H
        DC8 53H, 74H, 61H, 74H, 69H, 73H, 74H, 69H
        DC8 63H, 73H, 20H, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 0AH, 0DH, 0
        DC8 20H, 20H, 52H, 65H, 63H, 65H, 69H, 76H
        DC8 65H, 64H, 20H, 20H, 20H, 20H, 20H, 52H
        DC8 65H, 74H, 72H, 61H, 73H, 6DH, 69H, 74H
        DC8 74H, 65H, 64H, 20H, 20H, 20H, 20H, 20H
        DC8 42H, 61H, 64H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 44H, 72H, 6FH, 70H
        DC8 70H, 65H, 64H, 0AH, 0DH, 0
        DATA16
        DC8 0, 0
        DC8 20H, 20H, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 20H, 20H, 20H, 20H, 20H, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 20H, 20H, 20H, 20H, 20H
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 20H
        DC8 20H, 20H, 20H, 20H, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 0AH, 0DH, 0
        DC8 0, 0
        DC8 0AH, 0DH, 20H, 20H, 45H, 6EH, 74H, 65H
        DC8 72H, 20H, 64H, 65H, 6CH, 61H, 79H, 2CH
        DC8 20H, 66H, 69H, 72H, 73H, 74H, 20H, 65H
        DC8 6EH, 74H, 65H, 72H, 20H, 74H, 68H, 65H
        DC8 20H, 6DH, 69H, 6CH, 69H, 73H, 65H, 63H
        DC8 6FH, 6EH, 64H, 73H, 20H, 61H, 6EH, 64H
        DC8 20H, 74H, 68H, 65H, 6EH, 20H, 74H, 68H
        DC8 65H, 20H, 6DH, 69H, 63H, 72H, 6FH, 73H
        DC8 65H, 63H, 6FH, 6EH, 64H, 73H, 2EH, 0AH
        DC8 0DH, 0
        DC8 0, 0
        DC8 20H, 68H, 6FH, 77H, 20H, 6DH, 61H, 6EH
        DC8 79H, 20H, 6DH, 73H, 65H, 63H, 73H, 20H
        DC8 75H, 73H, 65H, 63H, 73H, 20H, 28H, 77H
        DC8 68H, 65H, 72H, 65H, 20H, 30H, 30H, 30H
        DC8 30H, 31H, 3CH, 76H, 61H, 6CH, 75H, 65H
        DC8 3CH, 36H, 35H, 35H, 33H, 35H, 29H, 20H
        DC8 70H, 6CH, 65H, 61H, 73H, 65H, 20H, 77H
        DC8 72H, 69H, 74H, 65H, 20H, 61H, 6CH, 6CH
        DC8 20H, 64H, 69H, 67H, 69H, 74H, 73H, 3EH
        DC8 20H, 0
        DC8 0, 0
        DC8 "\012\015  Press any key to go back to the main menu"
        DC8 0, 0
        DC8 20H, 20H, 48H, 6FH, 77H, 20H, 6DH, 61H
        DC8 6EH, 79H, 20H, 75H, 73H, 65H, 63H, 73H
        DC8 20H, 28H, 77H, 68H, 65H, 72H, 65H, 20H
        DC8 30H, 30H, 30H, 3CH, 76H, 61H, 6CH, 75H
        DC8 65H, 3CH, 39H, 39H, 39H, 29H, 2CH, 20H
        DC8 70H, 6CH, 65H, 61H, 73H, 65H, 20H, 77H
        DC8 72H, 69H, 74H, 65H, 20H, 61H, 6CH, 6CH
        DC8 20H, 74H, 68H, 72H, 65H, 65H, 20H, 64H
        DC8 69H, 67H, 69H, 74H, 73H, 20H, 28H, 69H
        DC8 66H, 20H, 79H, 6FH, 75H, 20H, 64H, 6FH
        DC8 6EH, 20H, 27H, 74H, 20H, 77H, 61H, 6EH
        DC8 74H, 20H, 74H, 6FH, 20H, 75H, 73H, 65H
        DC8 20H, 69H, 74H, 20H, 6AH, 75H, 73H, 74H
        DC8 20H, 77H, 72H, 69H, 74H, 65H, 20H, 30H
        DC8 30H, 30H, 29H, 3EH, 20H, 0
        DC8 0, 0
//  153 const uint8_t u8WrongChar[] = {"\n\rThere has been an error in your command.  Please try it again"};
u8WrongChar:
        DC8 0AH, 0DH, 54H, 68H, 65H, 72H, 65H, 20H
        DC8 68H, 61H, 73H, 20H, 62H, 65H, 65H, 6EH
        DC8 20H, 61H, 6EH, 20H, 65H, 72H, 72H, 6FH
        DC8 72H, 20H, 69H, 6EH, 20H, 79H, 6FH, 75H
        DC8 72H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH
        DC8 64H, 2EH, 20H, 20H, 50H, 6CH, 65H, 61H
        DC8 73H, 65H, 20H, 74H, 72H, 79H, 20H, 69H
        DC8 74H, 20H, 61H, 67H, 61H, 69H, 6EH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_11:
        DC8 "\015  ###  *  #         CODICE FATTO\012"
        DATA8
        DC8 0
        DC8 "\015     ***            M   A       L       E >:(((\012"
        DATA16
        DC8 0, 0
        DC8 "\015  #           Press any key to continue...\012\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_25:
        DC8 "\012\015"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_30:
        DC8 " "
//  154 
//  155 static const callback_t cbRepeaterStFn_c[gRepAppStMax_c] = {
//  156           (callback_t)(process_ready_prompt),
//  157           (callback_t)(process_repeater_run),
//  158           (callback_t)(process_change_delay)};
//  159 
//  160 
//  161 /************************************************************************************
//  162 *************************************************************************************
//  163 * Public functions
//  164 *************************************************************************************
//  165 ************************************************************************************/
//  166 extern FuncReturn_t CrmInit(void);
//  167 extern FuncReturn_t TsmInit(void);
//  168 extern void ResetMaca(void);
//  169 
//  170 void repeater_rx_cb (void);
//  171 void data_indication_execute(void);
//  172 
//  173 /* Variables declaration */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  174 bool_t gbDataIndicationFlag;
//  175 bool_t gbRdyToProcessEvnt;
//  176 
//  177 bool_t isUartDataRdy;
//  178 
//  179 uint8_t u8RepOpMode;
//  180 uint8_t u8RepeaterPower;
//  181 uint8_t u8UartDataSz;
//  182 uint8_t u8UartBuffer[8];
//  183 uint8_t u8UartData[8];
//  184 
//  185 uint8_t dataTX[smac_pdu_size(MAX_SMAC_PACK_SZ+1)];
//  186 #if OTAP_ENABLED == TRUE
//  187   uint8_t dataRX[smac_pdu_size(MAX_SMAC_PACK_SZ)];
//  188 #else
//  189   uint8_t dataRX[smac_pdu_size(MAX_SMAC_PACK_SZ)];
//  190 #endif
//  191 
//  192 message_t TX_msg;
//  193 message_t RX_msg;
RX_msg:
        DS8 16
gbDataIndicationFlag:
        DS8 1
gbRdyToProcessEvnt:
        DS8 1
isUartDataRdy:
        DS8 1
u8RepOpMode:
        DS8 1
u8RepeaterPower:
        DS8 1
//  194 
//  195 channel_num_t u8RepeaterChann;
u8RepeaterChann:
        DS8 1
//  196 RepDelay_t sRepeaterDelay;
//  197 RepStat_t sRepeaterStat;
//  198 RepAppState_t u8RepeaterState;
u8RepeaterState:
        DS8 1
//  199 u8RepeaterRunState_t u8RepeaterRunSt;
u8RepeaterRunSt:
        DS8 1
u8UartBuffer:
        DS8 8
u8UartData:
        DS8 8
sRepeaterStat:
        DS8 8
sRepeaterDelay:
        DS8 4
//  200 
//  201 uint32_t u32RepeatRxTimeOut;
u32RepeatRxTimeOut:
        DS8 4
dataRX:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
TX_msg:
        DS8 16
u8UartDataSz:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
dataTX:
        DS8 128
//  202 
//  203 /************************************************************************************
//  204 * main function
//  205 *
//  206 * Executes the main function.
//  207 *
//  208 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  209 void Main(void)
//  210 {
Main:
        PUSH     {R3-R7,LR}
//  211   MSG_INIT(TX_msg, &dataTX, NULL);
        LDR      R6,??DataTable40
        LDR      R0,??DataTable40_1
        STR      R0,[R6, #+4]
        MOVS     R5,#+0
        STR      R5,[R6, #+12]
//  212   MSG_INIT(RX_msg, &dataRX, (callback_t)(repeater_rx_cb));
        LDR      R4,??DataTable40_2
        MOVS     R0,R4
        ADDS     R0,R0,#+56
        STR      R0,[R4, #+4]
        LDR      R0,??DataTable40_3
        STR      R0,[R4, #+12]
//  213   RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
        MOVS     R0,#+125
        STRB     R0,[R4, #+8]
//  214   
//  215   repeater_app_init();
        BL       repeater_app_init
        LDR      R7,??DataTable40_4
//  216 
//  217   for(;;)
//  218   {
//  219     (void)process_radio_msg();
??Main_0:
        BL       process_radio_msg
//  220     data_indication_execute();
        BL       data_indication_execute
//  221 
//  222 #if OTAP_ENABLED == TRUE
//  223     if(gbOtapExecute) 
//  224     {           
//  225         OTAP_execute();              
//  226     }
//  227     else
//  228 #endif  
//  229 
//  230     {
//  231       process_uart_data();
        STRB     R5,[R4, #+18]
        LDR      R0,??DataTable40_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Main_1
        LDRH     R0,[R7, #+0]
        CMP      R0,#+0
        BEQ      ??Main_1
        MOVS     R1,R4
        ADDS     R1,R1,#+24
        MOVS     R0,#+0
        BL       UartGetByteFromRxBuffer
        LDRH     R0,[R7, #+0]
        STRB     R0,[R6, #+16]
        LDRB     R2,[R6, #+16]
        MOVS     R0,R2
        BEQ      ??Main_2
        MOVS     R1,R4
        ADDS     R1,R1,#+24
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       __aeabi_memcpy4
??Main_2:
        STRH     R5,[R7, #+0]
        MOVS     R0,#+1
        STRB     R0,[R4, #+18]
//  232       repeater_app();
??Main_1:
        ADR.N    R0,cbRepeaterStFn_c
        LDRB     R1,[R4, #+22]
        LSLS     R1,R1,#+2
        LDR      R0,[R0, R1]
        BL       ??__iar_via_R0_0
//  233     }
//  234   }
        B        ??Main_0
//  235 
//  236 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
cbRepeaterStFn_c:
        DATA32
        DC32 process_ready_prompt, process_repeater_run, process_change_delay
//  237 
//  238 
//  239 /************************************************************************************
//  240 * repeater_rx_cb function
//  241 *
//  242 * This function is called when a MACA's event occurs.
//  243 *
//  244 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 void repeater_rx_cb (void)
//  246 {
//  247   if(TRUE == gRadioEvntFlags.Bits.data_indication_flag)
repeater_rx_cb:
        LDR      R0,??DataTable40_6
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LSRS     R3,R1,#+4
        ANDS     R3,R3,R2
        BEQ      ??repeater_rx_cb_0
//  248   {
//  249     gRadioEvntFlags.Bits.data_indication_flag = FALSE;
        MOVS     R3,#+16
        BICS     R1,R1,R3
        STR      R1,[R0, #+0]
//  250     gbDataIndicationFlag = TRUE;
        LDR      R0,??DataTable40_2
        STRB     R2,[R0, #+16]
//  251   }
//  252   else
//  253   {
//  254     /* Do nothing */
//  255   }
//  256 }
??repeater_rx_cb_0:
        BX       LR               ;; return
//  257 
//  258 /************************************************************************************
//  259 * data_indication_execute function
//  260 *
//  261 * This function process an incoming message.
//  262 *
//  263 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  264 void data_indication_execute(void)
//  265 {
//  266   if( ( (MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state)           ||
//  267         (MSG_RX_ABORTED == RX_msg.u8Status.msg_state)                ||
//  268         (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state)   ||
//  269         (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state)  ) &&
//  270       (TRUE == gbDataIndicationFlag) )
data_indication_execute:
        LDR      R0,??DataTable40_2
        LDRB     R1,[R0, #+0]
        LSRS     R1,R1,#+3
        CMP      R1,#+4
        BEQ      ??data_indication_execute_0
        CMP      R1,#+8
        BEQ      ??data_indication_execute_0
        CMP      R1,#+6
        BEQ      ??data_indication_execute_0
        CMP      R1,#+5
        BNE      ??data_indication_execute_1
??data_indication_execute_0:
        LDRB     R1,[R0, #+16]
        CMP      R1,#+1
        BNE      ??data_indication_execute_1
//  271   {
//  272     gbDataIndicationFlag = FALSE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
//  273 
//  274 #if OTAP_ENABLED == TRUE
//  275     OTAP_data_indication_execute();   
//  276     if(!gbOtapExecute)
//  277 #endif
//  278     {
//  279       gbRdyToProcessEvnt = TRUE;
        MOVS     R1,#+1
        STRB     R1,[R0, #+17]
//  280     }
//  281   }
//  282 }
??data_indication_execute_1:
        BX       LR               ;; return
//  283 
//  284 
//  285 /************************************************************************************
//  286 *************************************************************************************
//  287 * Private functions
//  288 *************************************************************************************
//  289 ************************************************************************************/
//  290 
//  291 /************************************************************************************
//  292 * display_menu function
//  293 *
//  294 * This function displays the repeater's menu.
//  295 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  296 static void display_menu(void)
//  297 {
display_menu:
        PUSH     {R7,LR}
//  298   Uart_Print("\n\r-----------------  Repeater Application  -----------------------\n\r");
        LDR      R0,??DataTable41
        BL       Uart_Print
//  299   Uart_Print("  <s> Show Statistics\n\r");
        ADR.N    R0,?_14
        BL       Uart_Print
//  300   Uart_Print("  <0> Reset Statistics\n\r");
        Nop      
        ADR.N    R0,?_15
        BL       Uart_Print
//  301   Uart_Print("  <r> Repeat menu\n\r");
        Nop      
        ADR.N    R0,?_16
        BL       Uart_Print
//  302   Uart_Print("  <m> Switch Repeater mode\n\r");
        Nop      
        ADR.N    R0,?_17
        BL       Uart_Print
//  303   Uart_Print("  <p> Change Power\n\r");
        Nop      
        ADR.N    R0,?_18
        BL       Uart_Print
//  304   Uart_Print("  <d> Change Delay lenght\n\r");
        Nop      
        ADR.N    R0,?_19
        BL       Uart_Print
//  305   Uart_Print("  <c> Switch Channel\n\r");
        Nop      
        ADR.N    R0,?_20
        BL       Uart_Print
//  306   Uart_Print("  <z> EXECUTE\n\r\n\r");
        Nop      
        ADR.N    R0,?_21
        BL       Uart_Print
//  307 }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_14:
        DC8 "  <s> Show Statistics\012\015"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_15:
        DC8 "  <0> Reset Statistics\012\015"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_16:
        DC8 "  <r> Repeat menu\012\015"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_17:
        DC8 "  <m> Switch Repeater mode\012\015"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_18:
        DC8 "  <p> Change Power\012\015"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_19:
        DC8 "  <d> Change Delay lenght\012\015"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_20:
        DC8 "  <c> Switch Channel\012\015"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_21:
        DC8 "  <z> EXECUTE\012\015\012\015"
        DATA16
        DC8 0, 0
//  308 
//  309 
//  310 /************************************************************************************
//  311 * display_config function
//  312 *
//  313 * This function displays repeater's current configuration.
//  314 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  315 static void display_config(void)
//  316 {
display_config:
        PUSH     {R4,LR}
//  317   Uart_Print("\n\r  Current Device's configuration is:\n\r");
        LDR      R4,??DataTable43
        MOVS     R0,R4
        BL       Uart_Print
//  318   Uart_Print("    App Mode     Channel     Power Level     Delay\n\r");
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        BL       Uart_Print
//  319   Uart_Print("    --------     -------     -----------     -------------------\n\r");
        MOVS     R0,R4
        ADDS     R0,R0,#+100
        BL       Uart_Print
//  320   print_n_blank_spaces(4);
        MOVS     R0,#+4
        BL       print_n_blank_spaces
//  321   Uart_Tx(&(u8RepOpModeText[u8RepOpMode][0]), SIZE_OF_MODE_TEXT);
        LDR      R4,??DataTable43_1
        MOVS     R1,#+6
        ADR.N    R0,u8RepOpModeText
        LDRB     R2,[R4, #+19]
        MOVS     R3,#+6
        MULS     R2,R3,R2
        ADDS     R0,R0,R2
        BL       Uart_Tx
//  322   print_n_blank_spaces(7);
        MOVS     R0,#+7
        BL       print_n_blank_spaces
//  323   Uart_PrintByteDec(u8RepeaterChann+11);
        LDRB     R0,[R4, #+21]
        ADDS     R0,R0,#+11
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       Uart_PrintByteDec
//  324   print_n_blank_spaces(10);
        MOVS     R0,#+10
        BL       print_n_blank_spaces
//  325   Uart_PrintByteDec(u8RepeaterPower);
        LDRB     R0,[R4, #+20]
        BL       Uart_PrintByteDec
//  326   print_n_blank_spaces(14);
        MOVS     R0,#+14
        BL       print_n_blank_spaces
//  327   Uart_PrintShortDec(sRepeaterDelay.millisecondsDly);
        LDRH     R0,[R4, #+48]
        BL       Uart_PrintShortDec
//  328   Uart_Print(" ms   ");
        ADR.N    R0,?_22
        BL       Uart_Print
//  329   Uart_PrintShortDec(sRepeaterDelay.microsecondsDly);
        LDRH     R0,[R4, #+50]
        BL       Uart_PrintShortDec
//  330   Uart_Print(" us\n\r");
        ADR.N    R0,?_23
        BL       Uart_Print
//  331 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_1:
        DATA32
        DC32     dataTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_2:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_3:
        DATA32
        DC32     repeater_rx_cb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_4:
        DATA32
        DC32     gu16SCINumOfBytes

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_5:
        DATA32
        DC32     gu8SCIStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_6:
        DATA32
        DC32     gRadioEvntFlags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
u8RepOpModeText:
        DC8 4EH, 4FH, 52H, 4DH, 41H, 4CH
        DC8 44H, 55H, 4DH, 4DH, 59H, 20H
        DC8 "SNIFF"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_22:
        DC8 " ms   "
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_23:
        DC8 " us\012\015"
        DATA16
        DC8 0, 0
//  332 
//  333 /************************************************************************************
//  334 * display_config function
//  335 *
//  336 * This function displays repeater's statistics.
//  337 ************************************************************************************/
//  338 static void display_statistics(void)
//  339 {
//  340   Uart_Print("\n\r  ------------------  Statistics ------------------\n\r");
//  341   Uart_Print("  Number of packets\n\r");
//  342   Uart_Print("  Received     Retrasmitted     Bad         Dropped\n\r");
//  343   Uart_Print("  --------     ------------     -------     -------\n\r");
//  344 
//  345   print_n_blank_spaces(5);
//  346   Uart_PrintShortDec(sRepeaterStat.u16ReccivedPkts);
//  347   print_n_blank_spaces(12);
//  348   Uart_PrintShortDec(sRepeaterStat.u16RetransmitedPkts);
//  349   print_n_blank_spaces(7);
//  350   Uart_PrintShortDec(sRepeaterStat.u16BadPkts);
//  351   print_n_blank_spaces(7);
//  352   Uart_PrintShortDec(sRepeaterStat.u16DroppedPkts);
//  353 
//  354   Uart_Print("\n\r");
//  355 }
//  356 
//  357 /************************************************************************************
//  358 * execute_command function
//  359 *
//  360 * This function performs the selected action from the repeater menu.
//  361 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  362 static void execute_command(uint8_t cmd)
//  363 {
execute_command:
        PUSH     {R3-R7,LR}
//  364   FuncReturn_t tmpChange;
//  365   uint8_t u8SafeTimeOut;
//  366   
//  367   u8SafeTimeOut = 0xff;
//  368 
//  369   switch(cmd){
        MOVS     R4,#+0
        LDR      R7,??DataTable43_2
        LDR      R5,??DataTable41_1
        LDR      R6,??DataTable43_3
        CMP      R0,#+48
        BEQ      ??execute_command_0
        CMP      R0,#+99
        BNE      .+4
        B        ??execute_command_1
        CMP      R0,#+100
        BEQ      ??execute_command_2
        CMP      R0,#+109
        BEQ      ??execute_command_3
        CMP      R0,#+112
        BEQ      ??execute_command_4
        CMP      R0,#+114
        BEQ      ??execute_command_5
        CMP      R0,#+115
        BEQ      ??execute_command_6
        CMP      R0,#+122
        BEQ      ??execute_command_7
        B        ??execute_command_8
//  370     case('s'):
//  371       {
//  372         display_statistics();
??execute_command_6:
        MOVS     R0,R6
        BL       Uart_Print
        ADR.N    R0,?_24
        BL       Uart_Print
        MOVS     R0,R6
        ADDS     R0,R0,#+56
        BL       Uart_Print
        MOVS     R0,R6
        ADDS     R0,R0,#+112
        BL       Uart_Print
        MOVS     R0,#+5
        BL       print_n_blank_spaces
        LDRH     R0,[R5, #+40]
        BL       Uart_PrintShortDec
        MOVS     R0,#+12
        BL       print_n_blank_spaces
        LDRH     R0,[R5, #+42]
        BL       Uart_PrintShortDec
        MOVS     R0,#+7
        BL       print_n_blank_spaces
        LDRH     R0,[R5, #+44]
        BL       Uart_PrintShortDec
        MOVS     R0,#+7
        BL       print_n_blank_spaces
        LDRH     R0,[R5, #+46]
        BL       Uart_PrintShortDec
        ADR      R0,??DataTable44  ;; 0x0A, 0x0D, 0x00, 0x00
        B        ??execute_command_9
//  373         PRINT_PROMPT();
//  374       }
//  375       break;
//  376     case('0'):
//  377       {
//  378         sRepeaterStat.u16ReccivedPkts = 0;
??execute_command_0:
        STR      R4,[R5, #+40]
//  379         sRepeaterStat.u16RetransmitedPkts = 0;
//  380         sRepeaterStat.u16BadPkts = 0;
        STR      R4,[R5, #+44]
//  381         sRepeaterStat.u16DroppedPkts = 0;
//  382         Uart_Print("\n\r  Statistics reset");
        Nop      
        ADR.N    R0,?_26
        B        ??execute_command_9
//  383         PRINT_PROMPT();
//  384       }
//  385       break;
//  386     case('r'):
//  387       {
//  388         display_menu();
??execute_command_5:
        BL       display_menu
//  389         display_config();
//  390         PRINT_PROMPT();
//  391       }
//  392       break;
//  393     case('m'):
//  394       {
//  395         u8RepOpMode++;
//  396         if(gRepOpModeMax_c <= u8RepOpMode)
//  397         {
//  398           u8RepOpMode = 0;
//  399         }
//  400         display_config();
//  401         PRINT_PROMPT();
//  402       }
//  403       break;
//  404     case('p'):
//  405       {
//  406         do{
//  407           u8RepeaterPower++;
//  408           if((MAX_POWER+1) <= u8RepeaterPower)
//  409           {
//  410             u8RepeaterPower = 0;
//  411           }
//  412           u8SafeTimeOut++;
//  413           tmpChange = MLMEPAOutputAdjust(u8RepeaterPower);
//  414         }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
//  415         display_config();
//  416         PRINT_PROMPT();
//  417       }
//  418       break;
//  419     case('d'):
//  420       {
//  421         u8RepeaterState = gRepAppStChgDly_c;
//  422         Uart_Print("\n\r  Enter delay, first enter the miliseconds and then the microseconds.\n\r");
//  423         Uart_Print(" how many msecs usecs (where 00001<value<65535) please write all digits> ");
//  424       }
//  425       break;
//  426     case('c'):
//  427       {
//  428         do{
//  429           u8RepeaterChann++;
//  430           if(TOTAL_CHANN <= u8RepeaterChann)
//  431           {
//  432             u8RepeaterChann = CHANNEL11;
//  433           }
//  434           u8SafeTimeOut++;
//  435           tmpChange = MLMESetChannelRequest(u8RepeaterChann);
//  436         }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));          
//  437         display_config();
??execute_command_10:
        BL       display_config
//  438         PRINT_PROMPT();
        B        ??execute_command_11
??execute_command_3:
        LDRB     R0,[R5, #+19]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+19]
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLE      ??execute_command_10
        STRB     R4,[R5, #+19]
        B        ??execute_command_10
??execute_command_2:
        MOVS     R0,#+2
        STRB     R0,[R5, #+22]
        MOVS     R0,R6
        ADDS     R0,R0,#+168
        BL       Uart_Print
        MOVS     R0,R6
        ADDS     R0,R0,#+244
        B        ??execute_command_12
//  439       }
//  440       break;
//  441     case('z'):
//  442       {
//  443         Uart_Print("\n\r  Press any key to go back to the main menu");
??execute_command_7:
        MOVS     R0,#+160
        LSLS     R0,R0,#+1        ;; #+320
        ADDS     R0,R6,R0
        BL       Uart_Print
//  444         Uart_Print("\n\r  Executing...");
        ADR.N    R0,?_27
        BL       Uart_Print
//  445         u8RepeaterState = gRepAppStRun_c;
        MOVS     R0,#+1
        STRB     R0,[R5, #+22]
//  446       }
//  447       break;
        B        ??execute_command_13
//  448 
//  449     default:
//  450       PRINT_CHAR_ERROR();
??execute_command_8:
        MOVS     R0,#+244
        LSLS     R0,R0,#+1        ;; #+488
        ADDS     R0,R6,R0
??execute_command_9:
        BL       Uart_Print
//  451       PRINT_PROMPT();
??execute_command_11:
        MOVS     R0,R7
??execute_command_12:
        BL       Uart_Print
//  452       break;
//  453   }
//  454 }
??execute_command_13:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
??execute_command_4:
        MOVS     R6,#+255
??execute_command_14:
        LDRB     R0,[R5, #+20]
        ADDS     R0,R0,#+1
        LSLS     R1,R0,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+18
        BLT      ??execute_command_15
        MOVS     R0,#+0
??execute_command_15:
        STRB     R0,[R5, #+20]
        ADDS     R6,R6,#+1
        LDRB     R0,[R5, #+20]
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BEQ      ??execute_command_10
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??execute_command_14
        B        ??execute_command_10
??execute_command_1:
        MOVS     R6,#+255
??execute_command_16:
        LDRB     R0,[R5, #+21]
        ADDS     R0,R0,#+1
        LSLS     R1,R0,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+16
        BLT      ??execute_command_17
        MOVS     R0,#+0
??execute_command_17:
        STRB     R0,[R5, #+21]
        ADDS     R6,R6,#+1
        LDRB     R0,[R5, #+21]
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BEQ      ??execute_command_10
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLT      ??execute_command_16
        B        ??execute_command_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable41:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable41_1:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_24:
        DC8 "  Number of packets\012\015"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_26:
        DC8 "\012\015  Statistics reset"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_27:
        DC8 "\012\015  Executing..."
        DC8 0, 0, 0
//  455 
//  456 
//  457 /************************************************************************************
//  458 * process_uart_data function
//  459 *
//  460 * This function checks and reports if any data arrives to the UART.
//  461 ************************************************************************************/
//  462 static void process_uart_data(void)
//  463 {
//  464   isUartDataRdy = FALSE;
//  465   if(gUartReadStatusComplete_c == gu8SCIStatus)
//  466   {
//  467     if(0 != gu16SCINumOfBytes)
//  468     {
//  469       uint8_t i;
//  470       UartGetByteFromRxBuffer(gUart_PortDefault_d, u8UartBuffer);
//  471       u8UartDataSz = (uint8_t)(gu16SCINumOfBytes);
//  472       for(i=0; i<u8UartDataSz; i++)
//  473       {
//  474         u8UartData[i] = u8UartBuffer[i];
//  475       }
//  476       gu16SCINumOfBytes = 0;
//  477       isUartDataRdy = TRUE; 
//  478     }
//  479   }
//  480 }
//  481 
//  482 /************************************************************************************
//  483 * process_ready_prompt function
//  484 *
//  485 * This function .
//  486 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  487 static void process_ready_prompt (void)
//  488 {
process_ready_prompt:
        LDR      R0,??DataTable43_1
        LDRB     R1,[R0, #+18]
        CMP      R1,#+1
        BEQ      ??process_ready_prompt_0
        BX       LR
??process_ready_prompt_0:
        PUSH     {R4,LR}
//  489   static uint8_t u8RdySt = RDY_INIT;
//  490 
//  491   if(TRUE == isUartDataRdy)
//  492   {
//  493     switch(u8RdySt)
        LDR      R4,??DataTable45
        LDRB     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ      ??process_ready_prompt_1
        CMP      R1,#+1
        BEQ      ??process_ready_prompt_2
        B        ??process_ready_prompt_3
//  494     {
//  495       case(RDY_INIT):
//  496         {
//  497           display_menu();
??process_ready_prompt_1:
        BL       display_menu
//  498           display_config();
        BL       display_config
//  499           PRINT_PROMPT();
        LDR      R0,??DataTable43_2
        BL       Uart_Print
//  500           u8RdySt = RDY_READ;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  501         }
//  502         break;
        B        ??process_ready_prompt_3
//  503 
//  504       case(RDY_READ):
//  505         {
//  506           execute_command(u8UartData[0]);
??process_ready_prompt_2:
        MOVS     R1,#+32
        LDRB     R0,[R0, R1]
        BL       execute_command
//  507         }
//  508         break;
//  509 
//  510       default:
//  511         break;
//  512     }
//  513   }
//  514 }
??process_ready_prompt_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`process_ready_prompt::u8RdySt`:
        DS8 1
//  515 
//  516 /************************************************************************************
//  517 * process_repeater_run function
//  518 *
//  519 * This function .
//  520 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  521 static void process_repeater_run (void)
//  522 {
process_repeater_run:
        PUSH     {R4,LR}
//  523   if(TRUE == isUartDataRdy)
        LDR      R4,??DataTable43_1
        LDRB     R0,[R4, #+18]
        CMP      R0,#+1
        BNE      ??process_repeater_run_0
//  524   {
//  525     abort_message(&RX_msg);
        MOVS     R0,R4
        BL       abort_message
//  526     abort_message(&TX_msg);
        LDR      R0,??DataTable45_1
        BL       abort_message
//  527     u8RepeaterRunSt = gRepeaterRunStIdle_c;
        MOVS     R0,#+0
//  528 
//  529     u8RepeaterState = gRepAppStReady_c;
        STRH     R0,[R4, #+22]
//  530     PRINT_PROMPT();
        LDR      R0,??DataTable43_2
        BL       Uart_Print
        B        ??process_repeater_run_1
//  531   }
//  532   else
//  533   {
//  534     repeater_run_sm();
??process_repeater_run_0:
        BL       repeater_run_sm
//  535   }
//  536 }
??process_repeater_run_1:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43:
        DATA32
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_1:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_2:
        DATA32
        DC32     u8RepRdyPrompt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_3:
        DATA32
        DC32     ?_4
//  537 
//  538 
//  539 /************************************************************************************
//  540 * repeater_run_sm function
//  541 *
//  542 * This function .
//  543 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  544 static void repeater_run_sm (void)
//  545 {
repeater_run_sm:
        PUSH     {R3-R7,LR}
//  546   switch(u8RepeaterRunSt)
        LDR      R4,??DataTable45_2
        LDRB     R0,[R4, #+0]
        LSRS     R3,R0,#+3
        MOVS     R5,#+0
        MOVS     R1,#+125
        LDR      R2,??DataTable45_3
        LDR      R0,??DataTable45_1
        MOVS     R6,#+3
        LDRB     R7,[R4, #+23]
        CMP      R7,#+0
        BEQ      ??repeater_run_sm_0
        CMP      R7,#+2
        BEQ      ??repeater_run_sm_1
        BCC      ??repeater_run_sm_2
        CMP      R7,#+3
        BEQ      ??repeater_run_sm_3
        B        ??repeater_run_sm_4
//  547   {
//  548     case(gRepeaterRunStIdle_c):
//  549       {
//  550         /* Use the TX buffer to receive then it will be ready to be repeated */
//  551         // assegna al buffer rx, riempito successivamente dalla funzione corrispondente,
//  552         // l'indirizzo di tx così da usarlo direttamente
//  553         RX_msg.pu8Buffer = (smac_pdu_t *)(&dataTX);
??repeater_run_sm_0:
        STR      R2,[R4, #+4]
//  554         
//  555         /* Receive without any timeout */
//  556         RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
        STRB     R1,[R4, #+8]
//  557         MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       MLMERXEnableRequest
//  558 
//  559         u8RepeaterRunSt = gRepeaterRunStRcv_c;
        MOVS     R0,#+1
        B.N      ??repeater_run_sm_5
//  560       }
//  561       break;
//  562     case(gRepeaterRunStRcv_c):
//  563       {
//  564         if(TRUE == gbRdyToProcessEvnt)
??repeater_run_sm_2:
        LDRB     R7,[R4, #+17]
        CMP      R7,#+1
        BNE      ??repeater_run_sm_6
//  565         {
//  566           gbRdyToProcessEvnt = FALSE;
        STRB     R5,[R4, #+17]
//  567           
//  568           if(MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state)
        CMP      R3,#+5
        BNE      ??repeater_run_sm_7
//  569           {
//  570             (sRepeaterStat.u16ReccivedPkts)++;
        LDRH     R3,[R4, #+40]
        ADDS     R3,R3,#+1
        STRH     R3,[R4, #+40]
//  571             TX_msg.u8BufSize = RX_msg.u8BufSize;
        LDRB     R3,[R4, #+8]
        STRB     R3,[R0, #+8]
//  572             TX_msg.pu8Buffer = (smac_pdu_t *)(&(dataTX[1]));
        ADDS     R3,R2,#+1
        STR      R3,[R0, #+4]
//  573             if(gRepOpModeNormal_c == u8RepOpMode)
        LDRB     R3,[R4, #+19]
        CMP      R3,#+0
        BNE      ??repeater_run_sm_8
//  574             {
//  575               RX_msg.pu8Buffer = (smac_pdu_t *)(&dataRX);
        MOVS     R0,R4
        ADDS     R0,R0,#+56
        STR      R0,[R4, #+4]
//  576               RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
        STRB     R1,[R4, #+8]
//  577               MLMERXEnableRequest(&RX_msg, u32RepeatRxTimeOut);
        LDR      R1,[R4, #+52]
        MOVS     R0,R4
        BL       MLMERXEnableRequest
//  578               u8RepeaterRunSt = gRepeaterRunStWaiting_c;
        MOVS     R0,#+2
??repeater_run_sm_5:
        STRB     R0,[R4, #+23]
        B        ??repeater_run_sm_4
//  579             }
//  580             else if(gRepOpModeDummy_c == u8RepOpMode)
??repeater_run_sm_8:
        CMP      R3,#+1
        BNE      ??repeater_run_sm_9
//  581             {
//  582               (sRepeaterStat.u16RetransmitedPkts)++;
        LDRH     R1,[R4, #+42]
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+42]
//  583 			  TX_msg.pu8Buffer->u8Data[3] = 'R';
        MOVS     R1,#+82
        STRB     R1,[R2, #+6]
//  584 
//  585               MCPSDataRequest(&TX_msg);
        B.N      ??repeater_run_sm_10
//  586               u8RepeaterRunSt = gRepeaterRunStTx_c;
//  587             }
//  588             else if(gRepOpModeSniff_c == u8RepOpMode)
??repeater_run_sm_9:
        CMP      R3,#+2
        BNE      ??repeater_run_sm_4
//  589             {
//  590               Uart_Print("New frame: ");
        Nop      
        ADR.N    R0,?_28
        BL       Uart_Print
//  591               Uart_PrintHex( (RX_msg.pu8Buffer->reserved), \ 
//  592                              ((RX_msg.pu8Buffer->reserved[0])+1), \ 
//  593                              (gPrtHexCommas_c|gPrtHexBigEndian_c));
        LDR      R0,[R4, #+4]
        MOVS     R2,#+5
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        BL       Uart_PrintHex
//  594               Uart_Print("\n\r");
        ADR      R0,??DataTable44  ;; 0x0A, 0x0D, 0x00, 0x00
        BL       Uart_Print
//  595               u8RepeaterRunSt = gRepeaterRunStIdle_c;
        B        ??repeater_run_sm_11
//  596             }
//  597           }
//  598           else
//  599           {
//  600             if( (MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state) ||
//  601                 (MSG_RX_ABORTED == RX_msg.u8Status.msg_state)      ||
//  602                 (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state) )
??repeater_run_sm_7:
        CMP      R3,#+4
        BEQ      ??repeater_run_sm_12
        CMP      R3,#+8
        BEQ      ??repeater_run_sm_12
        CMP      R3,#+6
        BNE      ??repeater_run_sm_4
//  603             {
//  604               (sRepeaterStat.u16BadPkts)++;
??repeater_run_sm_12:
        LDRH     R0,[R4, #+44]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+44]
//  605               /* Receive without any timeout */
//  606               RX_msg.u8BufSize = MAX_SMAC_PACK_SZ;
        STRB     R1,[R4, #+8]
//  607               MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       MLMERXEnableRequest
        B        ??repeater_run_sm_4
//  608             }
//  609           }
//  610         }
//  611         else
//  612         {
//  613           if( (MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state) ||
//  614               (MSG_RX_ABORTED == RX_msg.u8Status.msg_state)      ||
//  615               (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state) ||
//  616               (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state) )
??repeater_run_sm_6:
        CMP      R3,#+4
        BEQ      ??repeater_run_sm_11
        CMP      R3,#+8
        BEQ      ??repeater_run_sm_11
        CMP      R3,#+6
        BEQ      ??repeater_run_sm_11
        CMP      R3,#+5
        BNE      ??repeater_run_sm_4
//  617           {
//  618             u8RepeaterRunSt = gRepeaterRunStIdle_c;
        B        ??repeater_run_sm_11
//  619           }
//  620         }
//  621         
//  622       }
//  623       break;
//  624     case(gRepeaterRunStWaiting_c):
//  625       {
//  626         if(MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg.u8Status.msg_state)
??repeater_run_sm_1:
        CMP      R3,#+5
        BNE      ??repeater_run_sm_13
//  627         {
//  628           (sRepeaterStat.u16DroppedPkts)++;
        LDRH     R0,[R4, #+46]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+46]
//  629           u8RepeaterRunSt = gRepeaterRunStIdle_c;
        B        ??repeater_run_sm_11
//  630         }
//  631         else if(MSG_RX_TIMEOUT_FAIL == RX_msg.u8Status.msg_state)
??repeater_run_sm_13:
        CMP      R3,#+4
        BNE      ??repeater_run_sm_14
//  632         {
//  633           (sRepeaterStat.u16RetransmitedPkts)++;
        LDRH     R1,[R4, #+42]
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+42]
//  634           MCPSDataRequest(&TX_msg);
??repeater_run_sm_10:
        BL       MCPSDataRequest
//  635           u8RepeaterRunSt = gRepeaterRunStTx_c;
        STRB     R6,[R4, #+23]
        B        ??repeater_run_sm_4
//  636         }
//  637         else if( (MSG_RX_ABORTED == RX_msg.u8Status.msg_state) ||
//  638                  (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg.u8Status.msg_state))
??repeater_run_sm_14:
        CMP      R3,#+8
        BEQ      ??repeater_run_sm_15
        CMP      R3,#+6
        BNE      ??repeater_run_sm_4
//  639         {
//  640           (sRepeaterStat.u16BadPkts)++;
??repeater_run_sm_15:
        LDRH     R0,[R4, #+44]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+44]
//  641           u8RepeaterRunSt = gRepeaterRunStIdle_c;
        B        ??repeater_run_sm_11
//  642         }
//  643       }
//  644       break;
//  645     case(gRepeaterRunStTx_c):
//  646       {
//  647         if( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state) ||
//  648             (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg.u8Status.msg_state)    ||
//  649             (MSG_TX_ABORTED == TX_msg.u8Status.msg_state) )
??repeater_run_sm_3:
        LDRB     R0,[R0, #+0]
        LSRS     R0,R0,#+3
        CMP      R0,#+4
        BEQ      ??repeater_run_sm_11
        CMP      R0,#+5
        BEQ      ??repeater_run_sm_11
        CMP      R0,#+7
        BNE      ??repeater_run_sm_4
//  650         {
//  651             u8RepeaterRunSt = gRepeaterRunStIdle_c;
??repeater_run_sm_11:
        STRB     R5,[R4, #+23]
//  652         }
//  653       }
//  654       break;
//  655     default:
//  656       {
//  657       }
//  658       break;
//  659   }
//  660 }
??repeater_run_sm_4:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable44:
        DATA8
        DC8      0x0A, 0x0D, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_28:
        DC8 "New frame: "
//  661 
//  662 /************************************************************************************
//  663 * process_change_delay function
//  664 *
//  665 * This function .
//  666 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  667 static void process_change_delay (void)
//  668 {
process_change_delay:
        PUSH     {R1-R7,LR}
//  669   static uint8_t u8ChgDlySt = DLY_MILLISEC;
//  670   static uint8_t u8DigitCount = 0;
//  671   static uint32_t u32MilliSecsTmp = 0;
//  672   static uint16_t u16MicroSecsTmp = 0;
//  673   uint8_t u8Digit;
//  674 
//  675   if(TRUE == isUartDataRdy)
        LDR      R4,??DataTable45_2
        LDRB     R0,[R4, #+18]
        CMP      R0,#+1
        BNE      ??process_change_delay_0
//  676   {
//  677     u8DigitCount++;
        LDR      R5,??DataTable47
        LDRB     R2,[R5, #+1]
        ADDS     R2,R2,#+1
        STRB     R2,[R5, #+1]
//  678     if( ('0' <= (u8UartData[0]) ) &&
//  679         ('9' >= (u8UartData[0]) )    )
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        LDR      R7,??DataTable47_1
        MOVS     R1,#+244
        LSLS     R1,R1,#+1        ;; #+488
        ADDS     R1,R7,R1
        STR      R1,[SP, #+4]
        MOVS     R6,#+0
        MOVS     R1,R0
        SUBS     R1,R1,#+48
        CMP      R1,#+10
        BCS      ??process_change_delay_1
//  680     {
//  681       u8Digit = (u8UartData[0]) - '0';
        SUBS     R0,R0,#+48
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        STR      R0,[SP, #+0]
//  682       switch(u8ChgDlySt)
        LDR      R1,[R5, #+4]
        ADR.N    R0,?_29
        LDRB     R3,[R5, #+0]
        CMP      R3,#+0
        BEQ      ??process_change_delay_2
        CMP      R3,#+1
        BEQ      ??process_change_delay_3
        B        ??process_change_delay_0
//  683       {
//  684         case(DLY_MILLISEC):
//  685           {
//  686             u32MilliSecsTmp = u32MilliSecsTmp*10;
//  687             u32MilliSecsTmp = u32MilliSecsTmp + u8Digit;
??process_change_delay_2:
        MOVS     R3,#+10
        MULS     R1,R3,R1
        LDR      R3,[SP, #+0]
        ADDS     R1,R1,R3
        STR      R1,[R5, #+4]
//  688             if(MAX_MILLI_DIGITS == u8DigitCount)
        LSLS     R2,R2,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+5
        BNE      ??process_change_delay_0
//  689             {
//  690 
//  691               u8DigitCount = 0;
        STRB     R6,[R5, #+1]
//  692               if( (MIN_MILLI_VALUE <= u32MilliSecsTmp) &&
//  693                   (MAX_MILLI_VALUE >= u32MilliSecsTmp)    )
        CMP      R1,#+0
        BEQ      ??process_change_delay_4
        MOVS     R2,#+128
        LSLS     R2,R2,#+9        ;; #+65536
        CMP      R1,R2
        BCS      ??process_change_delay_4
//  694               {
//  695                 u8ChgDlySt = DLY_MICROSEC;
        MOVS     R1,#+1
        STRB     R1,[R5, #+0]
//  696                 Uart_Print("\n\r  Thank you\n\r");
        BL       Uart_Print
//  697                 Uart_Print("  How many usecs (where 000<value<999), please write all three digits (if you don 't want to use it just write 000)> ");
        MOVS     R0,#+184
        LSLS     R0,R0,#+1        ;; #+368
        ADDS     R0,R7,R0
        BL       Uart_Print
        B        ??process_change_delay_0
//  698               }
//  699               else
//  700               {
//  701                 u8ChgDlySt = DLY_MILLISEC;
//  702                 u32MilliSecsTmp = 0;
//  703                 u16MicroSecsTmp = 0;
//  704                 PRINT_CHAR_ERROR();
//  705                 PRINT_PROMPT();
//  706                 u8RepeaterState = gRepAppStReady_c;
//  707               }
//  708 
//  709             }
//  710 
//  711           }
//  712           break;
//  713   
//  714         case(DLY_MICROSEC):
//  715           {
//  716             u16MicroSecsTmp = u16MicroSecsTmp * 10;
//  717             u16MicroSecsTmp = u16MicroSecsTmp + u8Digit;
??process_change_delay_3:
        LDRH     R3,[R5, #+2]
        MOVS     R7,#+10
        MULS     R3,R7,R3
        LDR      R7,[SP, #+0]
        ADDS     R3,R3,R7
        STRH     R3,[R5, #+2]
//  718             if(MAX_MICRO_DIGITS == u8DigitCount)
        LSLS     R2,R2,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+3
        BNE      ??process_change_delay_0
//  719             {
//  720               sRepeaterDelay.millisecondsDly = (uint16_t)(u32MilliSecsTmp);
        STRH     R1,[R4, #+48]
//  721               sRepeaterDelay.microsecondsDly = u16MicroSecsTmp;
        STRH     R3,[R4, #+50]
//  722 
//  723                u32RepeatRxTimeOut = (sRepeaterDelay.millisecondsDly * MACA_CLK_COUNTS_FOR_ONE_MILLISEC) \ 
//  724                                    + ((sRepeaterDelay.microsecondsDly)>>2);
        LDRH     R1,[R4, #+48]
        MOVS     R2,#+250
        MULS     R2,R1,R2
        LSLS     R1,R3,#+16
        LSRS     R1,R1,#+18
        ADDS     R1,R2,R1
        STR      R1,[R4, #+52]
//  725 
//  726               Uart_Print("\n\r  Thank you\n\r");
        BL       Uart_Print
//  727               display_config();
        BL       display_config
//  728               PRINT_PROMPT();
        ADR.N    R0,u8RepRdyPrompt
        BL       Uart_Print
//  729               u8ChgDlySt = DLY_MILLISEC;
        STRB     R6,[R5, #+0]
//  730               u8DigitCount = 0;
        STRB     R6,[R5, #+1]
//  731               u32MilliSecsTmp = 0;
        STR      R6,[R5, #+4]
//  732               u16MicroSecsTmp = 0;
        STRH     R6,[R5, #+2]
//  733               u8RepeaterState = gRepAppStReady_c;
        B        ??process_change_delay_5
//  734             }
//  735           }
//  736           break;
//  737   
//  738         default:
//  739           break;
//  740       }
//  741     }
//  742     else
//  743     {
//  744       u8ChgDlySt = DLY_MILLISEC;
??process_change_delay_1:
        STRB     R6,[R5, #+0]
//  745       u8DigitCount = 0;
        STRB     R6,[R5, #+1]
//  746       u32MilliSecsTmp = 0;
??process_change_delay_4:
        STR      R6,[R5, #+4]
//  747       u16MicroSecsTmp = 0;
        STRH     R6,[R5, #+2]
//  748       PRINT_CHAR_ERROR();
        LDR      R0,[SP, #+4]
        BL       Uart_Print
//  749       PRINT_PROMPT();
        Nop      
        ADR.N    R0,u8RepRdyPrompt
        BL       Uart_Print
//  750       u8RepeaterState = gRepAppStReady_c;
??process_change_delay_5:
        STRB     R6,[R4, #+22]
//  751     }
//  752   }
//  753 }
??process_change_delay_0:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable45:
        DATA32
        DC32     `process_ready_prompt::u8RdySt`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable45_1:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable45_2:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable45_3:
        DATA32
        DC32     dataTX

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`process_change_delay::u8ChgDlySt`:
        DS8 1
        DS8 1
        DS8 2
        DS8 4
//  754 
//  755 /************************************************************************************
//  756 * repeater_app function
//  757 *
//  758 * This function .
//  759 ************************************************************************************/
//  760 static void repeater_app (void)
//  761 {
//  762   (cbRepeaterStFn_c[u8RepeaterState])();
//  763 }
//  764 
//  765 
//  766 /************************************************************************************
//  767 * repeater_app_init function
//  768 *
//  769 * This function .
//  770 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  771 static void repeater_app_init(void)
//  772 {
repeater_app_init:
        PUSH     {R3-R5,LR}
//  773   gbDataIndicationFlag = FALSE;
        MOVS     R0,#+0
        LDR      R4,??DataTable47_2
        STRH     R0,[R4, #+16]
//  774   gbRdyToProcessEvnt = FALSE;
//  775 
//  776   u8RepOpMode = gRepOpModeDummy_c;
        MOVS     R1,#+1
        STRB     R1,[R4, #+19]
//  777   u8RepeaterChann = REPEATER_CHANN;
        STRB     R0,[R4, #+21]
//  778   u8RepeaterPower = gDefaultPowerLevel_c;
        MOVS     R2,#+15
        STRB     R2,[R4, #+20]
//  779   sRepeaterDelay.millisecondsDly = 1;
        STRH     R1,[R4, #+48]
//  780   sRepeaterDelay.microsecondsDly = 0;
        STRH     R0,[R4, #+50]
//  781   sRepeaterStat.u16ReccivedPkts = 0;
        STR      R0,[R4, #+40]
//  782   sRepeaterStat.u16RetransmitedPkts = 0;
//  783   sRepeaterStat.u16BadPkts = 0;
        STR      R0,[R4, #+44]
//  784   sRepeaterStat.u16DroppedPkts = 0;
//  785   u8RepeaterState = gRepAppStReady_c;
        STRH     R0,[R4, #+22]
//  786   isUartDataRdy = FALSE;
        STRB     R0,[R4, #+18]
//  787 
//  788   u8RepeaterRunSt = gRepeaterRunStIdle_c;
//  789   
//  790   u32RepeatRxTimeOut = (sRepeaterDelay.millisecondsDly * MACA_CLK_COUNTS_FOR_ONE_MILLISEC) \ 
//  791                        + ((sRepeaterDelay.microsecondsDly)>>2);
        MOVS     R0,#+250
        STR      R0,[R4, #+52]
//  792 
//  793   ITC_Init();
        BL       ITC_Init
//  794   IntAssignHandler(gMacaInt_c, MACA_Interrupt);
        LDR      R1,??DataTable47_3
        MOVS     R0,#+7
        BL       IntAssignHandler
//  795   ITC_SetPriority(gMacaInt_c, gItcFastPriority_c); // gItcNormalPriority_c
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       ITC_SetPriority
//  796   ITC_EnableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_EnableInterrupt
//  797   IntDisableAll();
        BL       IntDisableAll
//  798 
//  799   ResetMaca();
        BL       ResetMaca
//  800   MLMERadioInit();
        BL       MLMERadioInit
//  801   PlatformPortInit();
        BL       PlatformPortInit
//  802   MLMESetChannelRequest(u8RepeaterChann);
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
//  803 
//  804   IntEnableAll();
        MOVS     R0,#+0
        BL       IntRestoreAll
//  805   
//  806   Uart_Init(u8UartBuffer, 8);
        MOVS     R1,#+8
        MOVS     R0,R4
        ADDS     R0,R0,#+24
        BL       Uart_Init
//  807 
//  808   print_freescale_logo();
        Nop      
        ADR.N    R0,?_31
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_32
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_33
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_34
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_35
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_36
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_37
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_38
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_39
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_40
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_41
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_42
        BL       Uart_Print
        LDR      R5,??DataTable47_4
        MOVS     R0,R5
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_43
        BL       Uart_Print
        MOVS     R0,R5
        ADDS     R0,R0,#+36
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_44
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_45
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_46
        BL       Uart_Print
        MOVS     R0,R5
        ADDS     R0,R0,#+88
        BL       Uart_Print
//  809 
//  810   (void)MLMEPAOutputAdjust(u8RepeaterPower);
        LDRB     R0,[R4, #+20]
        BL       MLMEPAOutputAdjust
//  811 
//  812 
//  813   DelayMs(500);
        MOVS     R0,#+250
        LSLS     R0,R0,#+1        ;; #+500
        BL       DelayMs
//  814   MLMESetChannelRequest(u8RepeaterChann);
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
//  815 
//  816 
//  817 
//  818 #if OTAP_ENABLED == TRUE
//  819   OTAP_Init(&RX_msg);
//  820   gbOtapExecute = OTAP_ENABLED;  
//  821 #endif 
//  822 
//  823 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  824 
//  825 /************************************************************************************
//  826 * display_config function
//  827 *
//  828 * This function prints n blank spaces.
//  829 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  830 static void print_n_blank_spaces(uint8_t n)
//  831 {
print_n_blank_spaces:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
//  832   uint8_t i;
//  833   for(i=0; i<n; i++)
        MOVS     R6,#+0
        ADR      R4,??DataTable47_5  ;; " "
        B        ??print_n_blank_spaces_0
//  834   {
//  835     Uart_Print(" ");
??print_n_blank_spaces_1:
        MOVS     R0,R4
        BL       Uart_Print
//  836   }
        ADDS     R6,R6,#+1
??print_n_blank_spaces_0:
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,R5
        BCC      ??print_n_blank_spaces_1
//  837 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47:
        DATA32
        DC32     `process_change_delay::u8ChgDlySt`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47_1:
        DATA32
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47_2:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47_3:
        DATA32
        DC32     MACA_Interrupt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47_4:
        DATA32
        DC32     ?_11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47_5:
        DATA8
        DC8      " ",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_29:
        DC8 "\012\015  Thank you\012\015"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_31:
        DC8 "\012\015\012\015\012\015      #\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_32:
        DC8 "\015     ###\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_33:
        DC8 "\015    ###  *\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_34:
        DC8 "\015     #  ***\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_35:
        DC8 "\015       ***  #\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_36:
        DC8 "\015        *  ###\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_37:
        DC8 "\015          ###\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_38:
        DC8 "\015        *  #\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_39:
        DC8 "\015       ***\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_40:
        DC8 "\015      ***  #\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_41:
        DC8 "\015    #  *  ###\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_42:
        DC8 "\015   ###   ###\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_43:
        DC8 "\015   #  ***\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_44:
        DC8 "\015   #  *\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_45:
        DC8 "\015  ###               2 0 1 9\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_46:
        DC8 "\015 ###\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
u8RepRdyPrompt:
        DC8 0AH, 0DH, 52H, 65H, 61H, 64H, 79H, 3EH
        DC8 20H, 0, 0
        DATA8
        DC8 0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        THUMB
??__iar_via_R0_0:
        BX       R0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  838 
//  839 
//  840 /************************************************************************************
//  841 * display_config function
//  842 *
//  843 * This function prints an ASCII Freescale's logo.
//  844 ************************************************************************************/
//  845 static void print_freescale_logo(void)
//  846 {
//  847   Uart_Print("\n\r\n\r\n\r      #\n");
//  848   Uart_Print("\r     ###\n");
//  849   Uart_Print("\r    ###  *\n");
//  850   Uart_Print("\r     #  ***\n");
//  851   Uart_Print("\r       ***  #\n");
//  852   Uart_Print("\r        *  ###\n");
//  853   Uart_Print("\r          ###\n");
//  854   Uart_Print("\r        *  #\n");
//  855   Uart_Print("\r       ***\n");
//  856   Uart_Print("\r      ***  #\n");
//  857   Uart_Print("\r    #  *  ###\n");
//  858   Uart_Print("\r   ###   ###\n");
//  859   Uart_Print("\r  ###  *  #         CODICE FATTO\n");
//  860   Uart_Print("\r   #  ***\n");
//  861   Uart_Print("\r     ***            M   A       L       E >:(((\n");
//  862   Uart_Print("\r   #  *\n");
//  863   Uart_Print("\r  ###               2 0 1 9\n");
//  864   Uart_Print("\r ###\n");
//  865   Uart_Print("\r  #           Press any key to continue...\n\n");
//  866 }
//  867 
//  868 
//  869 /************************************************************************************
//  870 *************************************************************************************
//  871 * Private Debug stuff
//  872 *************************************************************************************
//  873 ************************************************************************************/
//  874 
//  875 
// 
//   338 bytes in section .bss
//   934 bytes in section .rodata
// 2 276 bytes in section .text
// 
// 2 274 bytes of CODE  memory (+ 2 bytes shared)
//   934 bytes of CONST memory
//   338 bytes of DATA  memory
//
//Errors: none
//Warnings: none
