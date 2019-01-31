///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Utilities\UartUtil.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWE0C2.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Utilities\UartUtil.c" -D NDEBUG -D F24MHZ -D
//        SECURITY_ENABLED -D MC13226Included_d=0 --preprocess=cs
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Release\List"
//        -lC "D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Release\List" -lB
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Release\List"
//        --diag_suppress Pe940,Pe951,Pe911 -o
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Release\Obj"
//        --endian=little --cpu=ARM7TDMI-S --fpu=None --dlib_config
//        "C:\HDDPrograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Interface\" -I
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\PLM\Interface\" --cpu_mode thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Release\List\UartUtil.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ITC_EnableInterrupt
        EXTERN ITC_SetPriority
        EXTERN IntAssignHandler
        EXTERN IntRestoreIRQ
        EXTERN UartGetByteFromRxBuffer
        EXTERN UartIsr1
        EXTERN UartOpen
        EXTERN UartReadData
        EXTERN UartSetCallbackFunctions
        EXTERN UartSetConfig
        EXTERN UartSetReceiverThreshold
        EXTERN UartSetTransmitterThreshold
        EXTERN UartWriteData
        EXTERN __aeabi_idiv
        EXTERN __aeabi_idivmod

        PUBLIC AsciitoHex
        PUBLIC GpioUart1Init
        PUBLIC GpioUart2Init
        PUBLIC UartEventRead1
        PUBLIC UartEventRead2
        PUBLIC UartEventWrite1
        PUBLIC UartEventWrite2
        PUBLIC Uart_Init
        PUBLIC Uart_Poll
        PUBLIC Uart_Print
        PUBLIC Uart_PrintByteDec
        PUBLIC Uart_PrintHex
        PUBLIC Uart_PrintShortDec
        PUBLIC Uart_Tx
        PUBLIC Uart_getchar
        PUBLIC Uart_putchar
        PUBLIC gu16SCINumOfBytes
        PUBLIC gu8SCIDataFlag
        PUBLIC gu8SCIStatus
        PUBLIC mem_cmp

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Application\Utilities\UartUtil.c
//    1 /************************************************************************************
//    2 * Includes the UART Utils.
//    3 *
//    4 * (c) Copyright 2008, Freescale Semiconductor, Inc. All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected:
//   11 * Last Tested:
//   12 *
//   13 ************************************************************************************/
//   14 #include "../../PLM/Interface/EmbeddedTypes.h"
//   15 #include "../../PLM/LibInterface/Interrupt.h"
//   16 #include "../../SMAC/Interface/GlobalDefs.h"
//   17 #include "UartUtil.h"
//   18 
//   19 /******************************************************************************/
//   20 /******************************************************************************/
//   21 
//   22 /************************************************************************************
//   23 *************************************************************************************
//   24 * Private macros
//   25 *************************************************************************************
//   26 ************************************************************************************/
//   27 
//   28 /************************************************************************************
//   29 *************************************************************************************
//   30 * Private prototypes
//   31 *************************************************************************************/
//   32 static uint8_t HexToAscii(uint8_t u8Hex);
//   33 
//   34 void UartEventRead1(UartReadCallbackArgs_t* args);
//   35 void UartEventWrite2(UartWriteCallbackArgs_t* args);
//   36 void UartEventRead2(UartReadCallbackArgs_t* args);
//   37 void UartEventWrite1(UartWriteCallbackArgs_t* args);
//   38 void GpioUart1Init(void);
//   39 void GpioUart2Init(void);
//   40 
//   41 /************************************************************************************
//   42 *************************************************************************************
//   43 * Private type definitions
//   44 *************************************************************************************
//   45 ************************************************************************************/
//   46 
//   47 /************************************************************************************
//   48 *************************************************************************************
//   49 * Public memory declarations
//   50 *************************************************************************************
//   51 ************************************************************************************/
//   52  
//   53 /************************************************************************************
//   54 *************************************************************************************
//   55 * Private memory declarations
//   56 *************************************************************************************
//   57 ************************************************************************************/
//   58 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   59 UartReadStatus_t gu8SCIStatus = gUartReadStatusComplete_c;
gu8SCIStatus:
        DS8 1
//   60 volatile uint8_t gu8SCIDataFlag = FALSE;
gu8SCIDataFlag:
        DS8 1
//   61 uint16_t gu16SCINumOfBytes = 0;
gu16SCINumOfBytes:
        DS8 2
//   62 
//   63 /************************************************************************************
//   64 *************************************************************************************
//   65 * Public functions
//   66 *************************************************************************************
//   67 ************************************************************************************/
//   68 
//   69 /************************************************************************************  
//   70 * Uart_Init
//   71 *
//   72 * Initializate the Uart module.
//   73 *************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void Uart_Init(uint8_t *mUARTRxBuffer, uint16_t mUARTBufferSize) 
//   75 {
Uart_Init:
        PUSH     {R3-R5,LR}
        SUB      SP,SP,#+16
        MOVS     R5,R0
        MOVS     R4,R1
//   76   UartConfig_t pConfig;
//   77   UartCallbackFunctions_t pCallback;
//   78   
//   79 #if gUart_PortDefault_d == UART_1
//   80 
//   81   //initialize GPIOs for UART1 and UART2 
//   82   GpioUart1Init();  
        BL       GpioUart1Init
//   83 
//   84   //configure the uart parameters 
//   85   pConfig.UartParity = gUartParityNone_c;
        MOVS     R1,#+0
        ADD      R0,SP,#+8
        STRH     R1,[R0, #+4]
//   86   pConfig.UartStopBits = gUartStopBits1_c;
//   87   pConfig.UartBaudrate = gUartDefaultBaud_c;
        MOVS     R2,#+150
        LSLS     R2,R2,#+8        ;; #+38400
        STR      R2,[SP, #+8]
//   88   pConfig.UartFlowControlEnabled = gUart1_EnableHWFlowControl_d;
        STRH     R1,[R0, #+6]
//   89   pConfig.UartRTSActiveHigh = FALSE;
//   90 
//   91   
//   92   //mount the interrupts corresponding to UART driver
//   93   IntAssignHandler(gUart1Int_c, (IntHandlerFunc_t)UartIsr1);
        LDR      R1,??DataTable8
        MOVS     R0,#+1
        BL       IntAssignHandler
//   94   ITC_SetPriority(gUart1Int_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       ITC_SetPriority
//   95   //enable the interrupts corresponding to UART driver
//   96   ITC_EnableInterrupt(gUart1Int_c);
        MOVS     R0,#+1
        BL       ITC_EnableInterrupt
//   97 
//   98   //initialize the uart
//   99   UartOpen(UART_1,gPlatformClock_c);  
        LDR      R1,??DataTable8_1  ;; 0x5dc0
        MOVS     R0,#+0
        BL       UartOpen
//  100   UartSetConfig(UART_1, &pConfig);  
        ADD      R1,SP,#+8
        MOVS     R0,#+0
        BL       UartSetConfig
//  101 
//  102 #if gUart1_EnableHWFlowControl_d == TRUE
//  103   UartSetCTSThreshold(UART_1, gUart_RxFlowControlSkew_d);
//  104 #endif
//  105 
//  106   //configure the Uart Rx and Tx Threshold
//  107   UartSetTransmitterThreshold(UART_1, 5);
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       UartSetTransmitterThreshold
//  108   UartSetReceiverThreshold(UART_1, 5);
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       UartSetReceiverThreshold
//  109 
//  110   //set pCallback functions
//  111   pCallback.pfUartWriteCallback = UartEventWrite1;
        LDR      R0,??DataTable8_2
        STR      R0,[SP, #+4]
//  112   pCallback.pfUartReadCallback = UartEventRead1;
        LDR      R0,??DataTable8_3
        STR      R0,[SP, #+0]
//  113   UartSetCallbackFunctions(UART_1, &pCallback);
        MOV      R1,SP
        MOVS     R0,#+0
        BL       UartSetCallbackFunctions
//  114 #endif
//  115 
//  116 #if gUart_PortDefault_d == UART_2
//  117 
//  118   //initialize GPIOs for UART1 and UART2
//  119   GpioUart2Init();  
//  120 
//  121   //configure the uart parameters
//  122   pConfig.UartParity = gUartParityNone_c;
//  123   pConfig.UartStopBits = gUartStopBits1_c;
//  124   pConfig.UartBaudrate = gUartDefaultBaud_c;
//  125   pConfig.UartFlowControlEnabled = gUart2_EnableHWFlowControl_d;
//  126 
//  127         //mount the interrupts corresponding to UART driver
//  128   IntAssignHandler(gUart2Int_c, (IntHandlerFunc_t)UartIsr2);
//  129   ITC_SetPriority(gUart2Int_c, gItcNormalPriority_c);
//  130   //enable the interrupts corresponding to UART driver
//  131   ITC_EnableInterrupt(gUart2Int_c);
//  132   
//  133   //initialize the uart
//  134   UartOpen(UART_2,gPlatformClock_c);
//  135   UartSetConfig(UART_2,&pConfig);
//  136 
//  137 #if gUart2_EnableHWFlowControl_d == TRUE
//  138   UartSetCTSThreshold(UART_2, gUart_RxFlowControlSkew_d);
//  139 #endif
//  140 
//  141   //configure the Uart Rx and Tx Threshold
//  142   UartSetTransmitterThreshold(UART_2,5);
//  143   UartSetReceiverThreshold(UART_2,5);
//  144 
//  145   //set pCallback functions
//  146   pCallback.pfUartWriteCallback = UartEventWrite2;
//  147   pCallback.pfUartReadCallback = UartEventRead2;
//  148   UartSetCallbackFunctions(UART_2,&pCallback);
//  149 
//  150 #endif /* gUart2_Enabled_d */
//  151   // global enable interrupts in AITC driver
//  152   IntEnableIRQ();
        MOVS     R0,#+0
        BL       IntRestoreIRQ
//  153   
//  154   UartReadData(gUart_PortDefault_d,mUARTRxBuffer,mUARTBufferSize,TRUE);
        MOVS     R3,#+1
        MOVS     R2,R4
        MOVS     R1,R5
        MOVS     R0,#+0
        BL       UartReadData
//  155 
//  156 }                                       
        ADD      SP,SP,#+20
        POP      {R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  157 
//  158 /************************************************************************************  
//  159 * GpioUart1Init
//  160 *
//  161 * This function initializate the gpio´s for the Uart1 module
//  162 *************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  163 void GpioUart1Init(void)
//  164 {
//  165   register uint32_t tmpReg;
//  166 
//  167   GPIO.PuSelLo |= (GPIO_UART1_RTS_bit | GPIO_UART1_RX_bit);  // Pull-up select: UP type
GpioUart1Init:
        LDR      R0,??DataTable8_4  ;; 0x80000010
        MOVS     R1,#+160
        LSLS     R1,R1,#+10       ;; #+163840
        LDR      R2,[R0, #+32]
        ORRS     R2,R2,R1
        STR      R2,[R0, #+32]
//  168   GPIO.PuEnLo  |= (GPIO_UART1_RTS_bit | GPIO_UART1_RX_bit);  // Pull-up enable
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,R1
        STR      R2,[R0, #+0]
//  169   GPIO.InputDataSelLo &= ~(GPIO_UART1_RTS_bit | GPIO_UART1_RX_bit); // read from pads
        LDR      R2,[R0, #+24]
        LDR      R3,??DataTable8_5  ;; 0xfffd7fff
        ANDS     R3,R3,R2
        STR      R3,[R0, #+24]
//  170   GPIO.DirResetLo = (GPIO_UART1_RTS_bit | GPIO_UART1_RX_bit); // inputs
        STR      R1,[R0, #+80]
//  171   GPIO.DirSetLo = (GPIO_UART1_CTS_bit | GPIO_UART1_TX_bit);  // outputs
        LSRS     R1,R1,#+1
        STR      R1,[R0, #+72]
//  172         
//  173   tmpReg = GPIO.FuncSel0 & ~((FN_MASK << GPIO_UART1_RX_fnpos) | (FN_MASK << GPIO_UART1_TX_fnpos));
        LDR      R1,[R0, #+8]
//  174   GPIO.FuncSel0 = tmpReg | ((FN_ALT << GPIO_UART1_RX_fnpos) | (FN_ALT << GPIO_UART1_TX_fnpos));
        LSLS     R1,R1,#+4
        LSRS     R1,R1,#+4
        MOVS     R2,#+160
        LSLS     R2,R2,#+23       ;; #+1342177280
        ORRS     R2,R2,R1
        STR      R2,[R0, #+8]
//  175   tmpReg = GPIO.FuncSel1 & ~((FN_MASK << GPIO_UART1_CTS_fnpos) | (FN_MASK << GPIO_UART1_RTS_fnpos));
        LDR      R1,[R0, #+12]
//  176   GPIO.FuncSel1 = tmpReg | ((FN_ALT << GPIO_UART1_CTS_fnpos) | (FN_ALT << GPIO_UART1_RTS_fnpos));
        MOVS     R2,#+15
        BICS     R1,R1,R2
        MOVS     R2,#+5
        ORRS     R2,R2,R1
        STR      R2,[R0, #+12]
//  177 }
        BX       LR               ;; return
//  178 
//  179 /************************************************************************************  
//  180 * GpioUart2Init
//  181 *
//  182 * This function initializate the gpio´s for the Uart2 module
//  183 *************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void GpioUart2Init(void)
//  185 {
//  186   register uint32_t tmpReg;
//  187 
//  188   GPIO.PuSelLo |= (GPIO_UART2_RTS_bit | GPIO_UART2_RX_bit);  // Pull-up select: UP type
GpioUart2Init:
        LDR      R0,??DataTable8_4  ;; 0x80000010
        MOVS     R1,#+160
        LSLS     R1,R1,#+14       ;; #+2621440
        LDR      R2,[R0, #+32]
        ORRS     R2,R2,R1
        STR      R2,[R0, #+32]
//  189   GPIO.PuEnLo  |= (GPIO_UART2_RTS_bit | GPIO_UART2_RX_bit);  // Pull-up enable
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,R1
        STR      R2,[R0, #+0]
//  190   GPIO.InputDataSelLo &= ~(GPIO_UART2_RTS_bit | GPIO_UART2_RX_bit); // read from pads
        LDR      R2,[R0, #+24]
        LDR      R3,??DataTable8_6  ;; 0xffd7ffff
        ANDS     R3,R3,R2
        STR      R3,[R0, #+24]
//  191   GPIO.DirResetLo = (GPIO_UART2_RTS_bit | GPIO_UART2_RX_bit); // inputs
        STR      R1,[R0, #+80]
//  192   GPIO.DirSetLo = (GPIO_UART2_CTS_bit | GPIO_UART2_TX_bit);  // outputs
        LSRS     R1,R1,#+1
        STR      R1,[R0, #+72]
//  193 
//  194   tmpReg = GPIO.FuncSel1 & ~((FN_MASK << GPIO_UART2_CTS_fnpos) | (FN_MASK << GPIO_UART2_RTS_fnpos)\ 
//  195   | (FN_MASK << GPIO_UART2_RX_fnpos) | (FN_MASK << GPIO_UART2_TX_fnpos));
        LDR      R1,[R0, #+12]
//  196   GPIO.FuncSel1 = tmpReg | ((FN_ALT << GPIO_UART2_CTS_fnpos) | (FN_ALT << GPIO_UART2_RTS_fnpos)\ 
//  197   | (FN_ALT << GPIO_UART2_RX_fnpos) | (FN_ALT << GPIO_UART2_TX_fnpos));
        LDR      R2,??DataTable8_7  ;; 0xfffff00f
        ANDS     R2,R2,R1
        MOVS     R1,#+170
        LSLS     R1,R1,#+3        ;; #+1360
        ORRS     R1,R1,R2
        STR      R1,[R0, #+12]
//  198 }
        BX       LR               ;; return
//  199 
//  200 /*******************************************************************************  
//  201 * UartEventRead1 
//  202 *
//  203 * Callabck function for the reception process in the Uart1
//  204 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 void UartEventRead1(UartReadCallbackArgs_t* args)
//  206 {
//  207   gu8SCIDataFlag = TRUE;
UartEventRead1:
        B.N      ?Subroutine0
//  208   gu16SCINumOfBytes = args->UartNumberBytesReceived;
//  209   gu8SCIStatus = args->UartStatus;
//  210 }
//  211 
//  212 /*******************************************************************************  
//  213 * UartEventWrite1
//  214 *
//  215 * Callback function for the transmission interruption in the Uart1.
//  216 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 void UartEventWrite1(UartWriteCallbackArgs_t* args)
//  218 {
//  219 }
UartEventWrite1:
        BX       LR               ;; return
//  220 
//  221 /*******************************************************************************  
//  222 * UartEventRead12
//  223 *
//  224 * Callabck function for the reception process in the Uart2
//  225 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  226 void UartEventRead2(UartReadCallbackArgs_t* args)
//  227 {
//  228   gu8SCIDataFlag = TRUE; 
UartEventRead2:
        Nop      
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  229   gu16SCINumOfBytes = args->UartNumberBytesReceived;
//  230   gu8SCIStatus = args->UartStatus;
//  231 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R1,??DataTable8_8
        MOVS     R2,#+1
        STRB     R2,[R1, #+1]
        LDRH     R2,[R0, #+2]
        STRH     R2,[R1, #+2]
        LDRB     R0,[R0, #+0]
        STRB     R0,[R1, #+0]
        BX       LR               ;; return
//  232 
//  233 /*******************************************************************************  
//  234 * UartEventWrite2
//  235 *
//  236 * Callback function for the transmission interruption in the Uart1.
//  237 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  238 void UartEventWrite2(UartWriteCallbackArgs_t* args)
//  239 {
//  240 }
UartEventWrite2:
        BX       LR               ;; return
//  241 
//  242 /*******************************************************************************  
//  243 * HexToAscii
//  244 *
//  245 * This function converts an hexadecimal value in ascii code.
//  246 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 static uint8_t HexToAscii(uint8_t u8Hex)
//  248 {
//  249   u8Hex &= 0x0F;
HexToAscii:
        LSLS     R0,R0,#+28
        LSRS     R0,R0,#+28
//  250   return u8Hex + ((u8Hex <= 9) ? '0' : ('A'-10));
        CMP      R0,#+10
        BGE      ??HexToAscii_0
        MOVS     R1,#+48
        B        ??HexToAscii_1
??HexToAscii_0:
        MOVS     R1,#+55
??HexToAscii_1:
        ADDS     R0,R0,R1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BX       LR               ;; return
//  251 }
//  252 
//  253 /*******************************************************************************  
//  254 * Uart_putchar
//  255 *
//  256 * This function print a byte in the serial interface
//  257 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void Uart_putchar(uint8_t u8Char)
//  259 {
Uart_putchar:
        PUSH     {R0,LR}
//  260   UartWriteData(gUart_PortDefault_d,&u8Char,1);
        MOVS     R2,#+1
        MOV      R1,SP
        MOVS     R0,#+0
        BL       UartWriteData
//  261 }
        POP      {R0,R3}
        BX       R3               ;; return
//  262 
//  263 
//  264 /*******************************************************************************  
//  265 * Uart_Print
//  266 *
//  267 * This function transmit a string to the initializated Uart. 
//  268 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  269 void Uart_Print(uint8_t* pString)
//  270 {
Uart_Print:
        PUSH     {R2-R6,LR}
        MOVS     R6,R0
//  271   uint8_t WriteBuffer[1];
//  272   uint8_t length = 0;
        MOVS     R5,#+0
//  273   uint16_t u8Timeout;
//  274   while(pString[length] != '\0'){
??Uart_Print_0:
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        LDRB     R0,[R6, R0]
        CMP      R0,#+0
        BEQ      ??Uart_Print_1
//  275     WriteBuffer[0] = pString[length];
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  276     length++;
        ADDS     R5,R5,#+1
//  277     u8Timeout = 0;
        MOVS     R4,#+250
        LSLS     R4,R4,#+4        ;; #+4000
//  278     while((UartWriteData(gUart_PortDefault_d,WriteBuffer,1) != gUartErrNoError_c) && (u8Timeout < gUartTimeout_d))
??Uart_Print_2:
        MOVS     R2,#+1
        MOV      R1,SP
        MOVS     R0,#+0
        BL       UartWriteData
        CMP      R0,#+0
        BEQ      ??Uart_Print_0
        CMP      R4,#+0
        BEQ      ??Uart_Print_0
//  279     {
//  280       u8Timeout ++;
        SUBS     R4,R4,#+1
        B        ??Uart_Print_2
//  281     }
//  282   }
//  283 }
??Uart_Print_1:
        POP      {R0,R1,R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  284 
//  285 /*******************************************************************************  
//  286 * Uart_getchar
//  287 *
//  288 * Waits until a character is received in the Uart. 
//  289 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 char Uart_getchar(uint8_t *u8Char)
//  291 {
Uart_getchar:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable8_8
//  292   while(TRUE != gu8SCIDataFlag){}
??Uart_getchar_0:
        LDRB     R1,[R0, #+1]
        CMP      R1,#+1
        BNE      ??Uart_getchar_0
//  293   gu8SCIDataFlag = FALSE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  294   UartGetByteFromRxBuffer(gUart_PortDefault_d, u8Char);
        MOVS     R1,R4
        MOVS     R0,#+0
        BL       UartGetByteFromRxBuffer
//  295   
//  296   return *u8Char;
        LDRB     R0,[R4, #+0]
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  297 }
//  298 
//  299 /*******************************************************************************  
//  300 * Uart_Tx
//  301 *
//  302 * Transmits a buffer to the UART. 
//  303 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  304 void Uart_Tx(const uint8_t * msg, uint8_t length)
//  305 {
Uart_Tx:
        PUSH     {R0,R1,R4-R7,LR}
        SUB      SP,SP,#+4
        MOVS     R6,R0
//  306   uint8_t WriteBuffer[1];
//  307   uint32_t i;
//  308   uint16_t u8Timeout;
//  309 
//  310   for(i=0;i<length;i++)
        MOVS     R7,#+0
        B        ??Uart_Tx_0
//  311   {
//  312     if(*msg == '\n' ){
//  313       WriteBuffer[0] = '\r';
//  314       u8Timeout = 0;
//  315       while((UartWriteData(gUart_PortDefault_d,WriteBuffer,1) != gUartErrNoError_c) && (u8Timeout < gUartTimeout_d))
??Uart_Tx_1:
        CMP      R4,#+0
        BEQ      ??Uart_Tx_2
//  316       {
//  317         u8Timeout ++;
        SUBS     R4,R4,#+1
        B        ??Uart_Tx_3
//  318       }
//  319     }
//  320     WriteBuffer[0] = *msg;
//  321     
//  322     u8Timeout = 0;
//  323     while((UartWriteData(gUart_PortDefault_d,WriteBuffer,1) != gUartErrNoError_c) && u8Timeout < gUartTimeout_d )
//  324     {
//  325       u8Timeout ++;
//  326     }
//  327    
//  328     msg++;
//  329   }
//  330 }
??Uart_Tx_4:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
??Uart_Tx_5:
        ADDS     R6,R6,#+1
        ADDS     R7,R7,#+1
??Uart_Tx_0:
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        CMP      R7,R0
        BCS      ??Uart_Tx_4
        MOVS     R0,#+250
        LSLS     R5,R0,#+4
        LDRB     R0,[R6, #+0]
        CMP      R0,#+10
        BNE      ??Uart_Tx_2
        MOVS     R0,#+13
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        MOVS     R4,R5
??Uart_Tx_3:
        MOVS     R2,#+1
        MOV      R1,SP
        MOVS     R0,#+0
        BL       UartWriteData
        CMP      R0,#+0
        BNE      ??Uart_Tx_1
??Uart_Tx_2:
        LDRB     R0,[R6, #+0]
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        MOVS     R4,R5
??Uart_Tx_6:
        MOVS     R2,#+1
        MOV      R1,SP
        MOVS     R0,#+0
        BL       UartWriteData
        CMP      R0,#+0
        BEQ      ??Uart_Tx_5
        CMP      R4,#+0
        BEQ      ??Uart_Tx_5
        SUBS     R4,R4,#+1
        B        ??Uart_Tx_6
//  331 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void Uart_Poll(uint8_t *pRxBuffer)
//  333 {
Uart_Poll:
        MOVS     R1,R0
        LDR      R0,??DataTable8_8
        LDRB     R2,[R0, #+1]
        CMP      R2,#+0
        BNE      ??Uart_Poll_0
        BX       LR
??Uart_Poll_0:
        PUSH     {R7,LR}
//  334   if (gu8SCIDataFlag) {
//  335     gu8SCIDataFlag = FALSE;
        MOVS     R2,#+0
        STRB     R2,[R0, #+1]
//  336     UartGetByteFromRxBuffer(gUart_PortDefault_d, pRxBuffer);
        MOVS     R0,#+0
        BL       UartGetByteFromRxBuffer
//  337   } 
//  338 }
        POP      {R0,R3}
        BX       R3               ;; return
//  339 
//  340 /*******************************************************************************  
//  341 * AsciitoHex
//  342 *
//  343 * This function converts an ascii code in a hexadecimal value.
//  344 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 uint8_t AsciitoHex(uint8_t u8Ascii)
//  346 {
//  347   if ((u8Ascii > 47) && (u8Ascii <= 57)){
AsciitoHex:
        MOVS     R1,R0
        MOVS     R2,R1
        SUBS     R2,R2,#+48
        CMP      R2,#+10
        BCS      ??AsciitoHex_0
//  348     return u8Ascii - '0';
        SUBS     R0,R0,#+48
        B        ??AsciitoHex_1
//  349   }
//  350   else{ 
//  351     if((u8Ascii > 64) && (u8Ascii <= 70))
??AsciitoHex_0:
        MOVS     R2,R1
        SUBS     R2,R2,#+65
        CMP      R2,#+6
        BCS      ??AsciitoHex_2
//  352     { 
//  353       return (u8Ascii - 'A' + 10);
        SUBS     R0,R0,#+55
        B        ??AsciitoHex_1
//  354     }
//  355     else if((u8Ascii > 96) && (u8Ascii <= 102))
??AsciitoHex_2:
        SUBS     R1,R1,#+97
        CMP      R1,#+6
        BCS      ??AsciitoHex_3
//  356     {
//  357       return (u8Ascii - 'a' + 10);
        SUBS     R0,R0,#+87
??AsciitoHex_1:
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
//  358     } 
//  359   }
//  360 }
??AsciitoHex_3:
        BX       LR               ;; return
//  361 
//  362 /*******************************************************************************  
//  363 * Uart_PrintHex
//  364 *
//  365 * This function transmit a hexadecimal value to the initializated Uart. 
//  366 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  367 void Uart_PrintHex(uint8_t *pu8Hex, uint8_t u8len, uint8_t u8flags)
//  368 {
Uart_PrintHex:
        PUSH     {R3-R7,LR}
//  369   uint8_t hexString[3];
//  370   if(! (u8flags & gPrtHexBigEndian_c))
        LSLS     R3,R2,#+31
        BMI      ??Uart_PrintHex_0
//  371     pu8Hex = pu8Hex + (u8len-1);
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+1
??Uart_PrintHex_0:
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOV      R6,SP
//  372   
//  373   while(u8len)
??Uart_PrintHex_1:
        LSLS     R0,R5,#+24
        BEQ      ??Uart_PrintHex_2
//  374   {
//  375     hexString[2] = '\0';
        MOVS     R0,#+0
        STRB     R0,[R6, #+2]
//  376     hexString[1] = HexToAscii( *pu8Hex );
        LDRB     R0,[R4, #+0]
        BL       HexToAscii
        STRB     R0,[R6, #+1]
//  377     hexString[0] = HexToAscii((*pu8Hex)>>4);
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+4
        BL       HexToAscii
        STRB     R0,[R6, #+0]
//  378     
//  379     Uart_Print((uint8_t*) hexString);
        MOV      R0,SP
        BL       Uart_Print
//  380     
//  381     if(u8flags & gPrtHexCommas_c)
        LSLS     R0,R7,#+29
        BPL      ??Uart_PrintHex_3
//  382       Uart_Print((uint8_t*)",");
        ADR      R0,??DataTable8_9  ;; ","
        BL       Uart_Print
//  383     pu8Hex = pu8Hex + (u8flags & gPrtHexBigEndian_c ? 1 : -1);
??Uart_PrintHex_3:
        LSLS     R0,R7,#+31
        BMI      ??Uart_PrintHex_4
        MOVS     R0,#+0
        MVNS     R0,R0            ;; #-1
        B        ??Uart_PrintHex_5
??Uart_PrintHex_4:
        MOVS     R0,#+1
??Uart_PrintHex_5:
        ADDS     R4,R4,R0
//  384     u8len--;
        SUBS     R5,R5,#+1
        B        ??Uart_PrintHex_1
//  385   }
//  386   if(u8flags & gPrtHexNewLine_c)
??Uart_PrintHex_2:
        LSLS     R0,R7,#+30
        BPL      ??Uart_PrintHex_6
//  387     Uart_Print((uint8_t*)"\n");
        ADR      R0,??DataTable8_10  ;; "\n"
        BL       Uart_Print
//  388 }
??Uart_PrintHex_6:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DATA32
        DC32     UartIsr1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DATA32
        DC32     0x5dc0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DATA32
        DC32     UartEventWrite1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DATA32
        DC32     UartEventRead1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DATA32
        DC32     0x80000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DATA32
        DC32     0xfffd7fff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DATA32
        DC32     0xffd7ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DATA32
        DC32     0xfffff00f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DATA32
        DC32     gu8SCIStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DATA8
        DC8      ",",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DATA8
        DC8      "\n",0x0,0x0
//  389 
//  390 /*******************************************************************************  
//  391 * Uart_PrintByteDec
//  392 *
//  393 * This function transmit a decimal value to the initializated Uart
//  394 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 void Uart_PrintByteDec(uint8_t u8Dec)
//  396 {
Uart_PrintByteDec:
        PUSH     {R2-R5,R7,LR}
        MOVS     R5,R0
//  397   uint8_t decString[3];
//  398   uint8_t  tem;
//  399   tem = u8Dec & 0x0F;
        LSLS     R7,R5,#+28
        LSRS     R7,R7,#+28
//  400   decString[2] = '\0';
        MOV      R4,SP
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
//  401   decString[0]= tem/10;
        MOVS     R0,R7
        MOVS     R1,#+10
        BL       __aeabi_idiv
        STRB     R0,[R4, #+0]
//  402   decString[1] = tem%10;
        MOVS     R0,R7
        MOVS     R1,#+10
        BL       __aeabi_idivmod
        STRB     R1,[R4, #+1]
//  403 
//  404   tem = ((u8Dec>>4) & 0x0F);
//  405   tem = tem * 16;
        MOVS     R7,#+240
        ANDS     R7,R7,R5
//  406   
//  407   if(decString[1] + (tem%10) >= 10){
        MOVS     R0,R7
        MOVS     R1,#+10
        BL       __aeabi_idiv
        MOVS     R5,R0
        MOVS     R0,R7
        MOVS     R1,#+10
        BL       __aeabi_idivmod
        LDRB     R0,[R4, #+1]
        ADDS     R2,R0,R1
        CMP      R2,#+10
        LDRB     R2,[R4, #+0]
        BLT      ??Uart_PrintByteDec_0
//  408     decString[0] = ( decString[0] + (tem/10) + 1 + '0');
        ADDS     R5,R5,#+49
        ADDS     R2,R2,R5
        STRB     R2,[R4, #+0]
//  409     decString[1] = ( decString[1] + (tem%10) - 10 +'0');
        ADDS     R1,R1,#+38
        B        ??Uart_PrintByteDec_1
//  410   }
//  411   else{
//  412     decString[0] = ( decString[0] + (tem/10) + '0');
??Uart_PrintByteDec_0:
        ADDS     R5,R5,#+48
        ADDS     R2,R2,R5
        STRB     R2,[R4, #+0]
//  413     decString[1] = ( decString[1] + (tem%10) + '0');
        ADDS     R1,R1,#+48
??Uart_PrintByteDec_1:
        ADDS     R0,R0,R1
        STRB     R0,[R4, #+1]
//  414   }
//  415   Uart_Print((uint8_t*) decString);
        MOV      R0,SP
        BL       Uart_Print
//  416 }
        POP      {R0,R1,R4,R5,R7}
        POP      {R3}
        BX       R3               ;; return
//  417 
//  418 /*******************************************************************************  
//  419 * Uart_PrintShortDec
//  420 *
//  421 * This function transmit a decimal value to the initializated Uart
//  422 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  423 void Uart_PrintShortDec(uint16_t u16Dec)
//  424 {
Uart_PrintShortDec:
        PUSH     {R1-R4,R6,LR}
        MOVS     R6,R0
//  425   uint8_t decString[6];
//  426   uint16_t  temp;
//  427 
//  428   decString[5] = '\0';
        MOV      R4,SP
        MOVS     R0,#+0
        STRB     R0,[R4, #+5]
//  429   temp = u16Dec;
//  430 
//  431   decString[4] = (temp%10) + '0';
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idivmod
        ADDS     R1,R1,#+48
        STRB     R1,[R4, #+4]
//  432   temp = temp/10;
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idiv
        LSLS     R6,R0,#+16
        LSRS     R6,R6,#+16
//  433   decString[3] = (temp%10) + '0';
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idivmod
        ADDS     R1,R1,#+48
        STRB     R1,[R4, #+3]
//  434   temp = temp/10;
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idiv
        LSLS     R6,R0,#+16
        LSRS     R6,R6,#+16
//  435   decString[2] = (temp%10) + '0';
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idivmod
        ADDS     R1,R1,#+48
        STRB     R1,[R4, #+2]
//  436   temp = temp/10;
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idiv
        LSLS     R6,R0,#+16
        LSRS     R6,R6,#+16
//  437   decString[1] = (temp%10) + '0';
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idivmod
        ADDS     R1,R1,#+48
        STRB     R1,[R4, #+1]
//  438   temp = temp/10;
//  439 
//  440   decString[0] = temp + '0';
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idiv
        ADDS     R0,R0,#+48
        STRB     R0,[R4, #+0]
//  441 
//  442   Uart_Print((uint8_t*) decString);
        MOV      R0,SP
        BL       Uart_Print
//  443 }
        POP      {R0-R2,R4,R6}
        POP      {R3}
        BX       R3               ;; return
//  444 
//  445 /*******************************************************************************  
//  446 * mem_cmp 
//  447 *
//  448 * This function compare two strings, return FALSE when these are diferents or 
//  449 * TRUE when are equals.
//  450 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  451 bool_t mem_cmp(uint8_t * str1, uint8_t * str2, uint8_t sz)
//  452 {
mem_cmp:
        PUSH     {R4,R5}
//  453   uint8_t i;
//  454   for(i=0; i<sz; i++)
        MOVS     R3,#+0
        B        ??mem_cmp_0
??mem_cmp_1:
        ADDS     R3,R3,#+1
??mem_cmp_0:
        CMP      R3,R2
        BGE      ??mem_cmp_2
//  455   {
//  456     if( (str1[i]) != (str2[i]))
        LDRB     R4,[R0, R3]
        LDRB     R5,[R1, R3]
        CMP      R4,R5
        BEQ      ??mem_cmp_1
//  457     {
//  458       return FALSE;
        MOVS     R0,#+0
        B        ??mem_cmp_3
//  459     }
//  460   }
//  461   return TRUE;
??mem_cmp_2:
        MOVS     R0,#+1
??mem_cmp_3:
        POP      {R4,R5}
        BX       LR               ;; return
//  462 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_0:
        DC8 ","

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_1:
        DC8 "\012"

        END
//  463 
// 
//   4 bytes in section .bss
//   4 bytes in section .rodata
// 930 bytes in section .text
// 
// 930 bytes of CODE  memory
//   4 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
