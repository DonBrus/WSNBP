///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  14:41:04
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\Application\Utilities\Sound.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWFBDB.tmp
//        (D:\Users\Brus\Documents\repeater_test\Repeater\Application\Utilities\Sound.c
//        -D NDEBUG -D F24MHZ -D SECURITY_ENABLED -D MC13226Included_d=0
//        --preprocess=cs
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List -lC
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List -lB
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List
//        --diag_suppress Pe940,Pe951,Pe911 -o
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\Obj
//        --endian=little --cpu=ARM7TDMI-S --fpu=None --dlib_config
//        "C:\HDDPrograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Drivers\Interface\
//        -I D:\Users\Brus\Documents\repeater_test\Repeater\PLM\Interface\
//        --cpu_mode thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List\Sound.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Gpio_SetPinFunction
        EXTERN I2c_Enable
        EXTERN I2c_Init
        EXTERN I2c_SendData
        EXTERN I2c_SetConfig
        EXTERN TmrEnable
        EXTERN TmrSetCallbackFunction
        EXTERN TmrSetCompStatusControl
        EXTERN TmrSetConfig
        EXTERN TmrSetMode
        EXTERN TmrSetStatusControl

        PUBLIC BuzzerBeep
        PUBLIC BuzzerInit
        PUBLIC mBeepDuration
        PUBLIC mMsCounter

// D:\Users\Brus\Documents\repeater_test\Repeater\Application\Utilities\Sound.c
//    1 /************************************************************************************
//    2 * Kaibab Buzzer routines
//    3 *
//    4 * Author(s):
//    5 *   
//    6 *
//    7 * (c) Copyright 2008, Freescale, Inc.  All rights reserved.
//    8 *
//    9 * Freescale Confidential Proprietary
//   10 *
//   11 * No part of this document must be reproduced in any form - including copied,
//   12 * transcribed, printed or by any electronic means - without specific written
//   13 * permission from Freescale.
//   14 *
//   15 * Last Inspected:
//   16 * Last Tested:
//   17 ************************************************************************************/
//   18 #include "../../../PLM/Interface/EmbeddedTypes.h"
//   19 #include "../../../PLM/LibInterface/Timer.h"
//   20 #include "../../../PLM/LibInterface/I2C_Interface.h"
//   21 #include "../../../PLM/LibInterface/GPIO_Interface.h"
//   22 
//   23 #include "Sound.h"
//   24 #if gHaveBuzzer_c
//   25 /************************************************************************************
//   26 *************************************************************************************
//   27 * Private macros
//   28 *************************************************************************************
//   29 ************************************************************************************/
//   30 #define mBeepFreqinKHz_c  4
//   31 #define mToggleCompareValue_c  (SYSTEM_CLOCK/(mBeepFreqinKHz_c * 2))
//   32 #define  mSLAVE_DEV_ADDRESS_c  0x50
//   33 #define  mVREG_CMD_c           0x11
//   34 #define  gGpioBeepTimer_c     ((GpioPin_t)((uint8_t)gGpioPin8_c + (uint8_t)gBeepTimer_c))
//   35 /************************************************************************************
//   36 *************************************************************************************
//   37 * Private type definitions
//   38 
//   39 *************************************************************************************
//   40 ************************************************************************************/
//   41 
//   42 /************************************************************************************
//   43 *************************************************************************************
//   44 * Private prototypes
//   45 *************************************************************************************
//   46 ************************************************************************************/
//   47 
//   48 static void BuzzerTimerCallBack(TmrNumber_t tmrNumber);
//   49 static void Llc_VolumeInit(void);
//   50 static void Llc_VolumeSet(uint8_t volume);
//   51 /************************************************************************************
//   52 *************************************************************************************
//   53 * Public memory declarations
//   54 *************************************************************************************
//   55 ************************************************************************************/
//   56 
//   57 /************************************************************************************
//   58 *************************************************************************************
//   59 * Private memory declarations
//   60 *************************************************************************************
//   61 ************************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   62 uint32_t mMsCounter;
mMsCounter:
        DS8 4
//   63 uint32_t mBeepDuration;
mBeepDuration:
        DS8 4
//   64 
//   65 /************************************************************************************
//   66 *************************************************************************************
//   67 * Public functions
//   68 *************************************************************************************
//   69 ************************************************************************************/
//   70 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 bool_t BuzzerInit(void)
//   72 {
BuzzerInit:
        PUSH     {R1-R5,LR}
//   73   TmrConfig_t tmrConfig;
//   74   TmrStatusCtrl_t tmrStatusCtrl;
//   75   TmrComparatorStatusCtrl_t tmrComparatorStatusCtrl;
//   76   /* Enable hw timer 1 */
//   77   TmrEnable(gBeepTimer_c);
        MOVS     R0,#+3
        BL       TmrEnable
//   78   /* Don't stat the timer yet */ 
//   79   if (gTmrErrNoError_c != TmrSetMode(gBeepTimer_c, gTmrNoOperation_c)) /*set timer mode no operation*/
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetMode
        CMP      R0,#+0
        BNE      ??BuzzerInit_0
//   80   {
//   81     return FALSE;
//   82   }
//   83   /* Register the callback executed when an interrupt occur */
//   84   if(gTmrErrNoError_c != TmrSetCallbackFunction(gBeepTimer_c, gTmrComp1Event_c, BuzzerTimerCallBack))
        LDR      R2,??DataTable2
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetCallbackFunction
        CMP      R0,#+0
        BNE      ??BuzzerInit_0
//   85   {
//   86     return FALSE;
//   87   }
//   88   tmrStatusCtrl.uintValue = 0x0000;
//   89   tmrStatusCtrl.bitFields.OEN = 1;    //output enable
        MOVS     R4,#+1
        MOV      R1,SP
        STRH     R4,[R1, #+2]
//   90   if (gTmrErrNoError_c != TmrSetStatusControl(gBeepTimer_c, &tmrStatusCtrl))
        ADDS     R1,R1,#+2
        MOVS     R0,#+3
        BL       TmrSetStatusControl
        CMP      R0,#+0
        BNE      ??BuzzerInit_0
//   91   {
//   92     return FALSE;
//   93   }  
//   94   tmrComparatorStatusCtrl.uintValue = 0x0000;
//   95   tmrComparatorStatusCtrl.bitFields.TCF1EN = TRUE; /* Enable Compare 1 interrupt */
        MOVS     R0,#+64
        MOV      R1,SP
        STRH     R0,[R1, #+0]
//   96   if (gTmrErrNoError_c != TmrSetCompStatusControl(gBeepTimer_c, &tmrComparatorStatusCtrl))
        MOVS     R0,#+3
        BL       TmrSetCompStatusControl
        CMP      R0,#+0
        BNE      ??BuzzerInit_0
//   97   {
//   98     return FALSE;
//   99   }
//  100   tmrConfig.tmrOutputMode = gTmrToggleOF_c; 
??BuzzerInit_1:
        ADD      R0,SP,#+4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  101   tmrConfig.tmrCoInit = FALSE;  /*co-chanel counter/timers can not force a re-initialization of this counter/timer*/
        MOVS     R5,#+0
        STRB     R5,[R0, #+1]
//  102   tmrConfig.tmrCntDir = FALSE;  /*count-up*/
        STRB     R5,[R0, #+2]
//  103   tmrConfig.tmrCntLen = TRUE;  /*count until compare*/
        STRB     R4,[R0, #+3]
//  104   tmrConfig.tmrCntOnce = FALSE;   /*count repeatedly*/
        STRH     R5,[R0, #+4]
//  105   tmrConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;    /*secondary count source not needed*/
//  106   tmrConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;    /*primary count source is IP BUS clock divide by 1 prescaler*/
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
//  107   if (gTmrErrNoError_c != TmrSetConfig(gBeepTimer_c, &tmrConfig))  /*set timer configuration */
        ADD      R1,SP,#+4
        MOVS     R0,#+3
        BL       TmrSetConfig
        CMP      R0,#+0
        BEQ      ??BuzzerInit_2
//  108   {
//  109     return FALSE;
??BuzzerInit_0:
        MOVS     R0,#+0
        B        ??BuzzerInit_3
//  110   }
//  111   /* Config timer to raise interrupts each 0.1 ms */
//  112   SetComp1Val(gBeepTimer_c, mToggleCompareValue_c);
??BuzzerInit_2:
        LDR      R0,??DataTable2_1  ;; 0x80007060
        LDR      R1,??DataTable2_2  ;; 0xbb8
        STRH     R1,[R0, #+0]
//  113   /* Config timer to start from 0 after compare event */
//  114   SetLoadVal(gBeepTimer_c, 0);
        STRH     R5,[R0, #+6]
//  115   I2c_Init();
        BL       I2c_Init
//  116   Gpio_SetPinFunction(gGpioBeepTimer_c, gGpioAlternate1Mode_c); 
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
//  117   Gpio_SetPinFunction(gGpioPin12_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+12
        BL       Gpio_SetPinFunction
//  118   Gpio_SetPinFunction(gGpioPin13_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+13
        BL       Gpio_SetPinFunction
//  119   return TRUE;
        MOVS     R0,#+1
??BuzzerInit_3:
        POP      {R1-R5}
        POP      {R3}
        BX       R3               ;; return
//  120 }
//  121 
//  122 /***********************************************************************************/
//  123 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 bool_t BuzzerBeep (uint16_t u16BeepDurationInMs) 
//  125 {
BuzzerBeep:
        PUSH     {R1-R5,LR}
        MOVS     R4,R0
//  126   if( u16BeepDurationInMs == 0 )
        BEQ      ??BuzzerBeep_0
//  127     return FALSE;
//  128   if (gTmrErrNoError_c != TmrSetMode(gBeepTimer_c, gTmrNoOperation_c)) /*set timer mode no operation*/
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetMode
        CMP      R0,#+0
        BEQ      ??BuzzerBeep_1
//  129   {
//  130     return FALSE;
??BuzzerBeep_0:
        MOVS     R0,#+0
        B        ??BuzzerBeep_2
//  131   }
//  132   mMsCounter = 0;
??BuzzerBeep_1:
        LDR      R0,??DataTable2_3
        MOVS     R5,#+0
        STR      R5,[R0, #+0]
//  133   mBeepDuration = u16BeepDurationInMs;
        STR      R4,[R0, #+4]
//  134   SetCntrVal(gBeepTimer_c, 0) ; /*clear counter*/
        LDR      R1,??DataTable2_4  ;; 0x8000706a
        STRH     R5,[R1, #+0]
//  135   Llc_VolumeInit();
        BL       I2c_Enable
        MOV      R0,SP
        STRB     R5,[R0, #+4]
        MOVS     R1,#+32
        STRB     R1,[R0, #+1]
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        STRB     R5,[R0, #+0]
        STRB     R5,[R0, #+3]
        BL       I2c_SetConfig
//  136   Llc_VolumeSet(gBeepVolumeInPrc_c);   
        MOV      R0,SP
        MOVS     R1,#+17
        STRB     R1,[R0, #+0]
        STRB     R5,[R0, #+1]
        MOVS     R3,#+1
        MOVS     R2,#+2
        MOV      R1,SP
        MOVS     R0,#+80
        BL       I2c_SendData
//  137   if (gTmrErrNoError_c != TmrSetMode(gBeepTimer_c, gTmrCntRiseEdgPriSrc_c))
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       TmrSetMode
        SUBS     R0,R0,#+1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
//  138   {
//  139     return FALSE;
//  140   }
//  141   return TRUE;
??BuzzerBeep_2:
        POP      {R1-R5}
        POP      {R3}
        BX       R3               ;; return
//  142 }
//  143 
//  144 /************************************************************************************
//  145 *************************************************************************************
//  146 * Private functions
//  147 *************************************************************************************
//  148 ************************************************************************************/
//  149 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 static void BuzzerTimerCallBack(TmrNumber_t tmrNumber)
//  151 {
BuzzerTimerCallBack:
        LDR      R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
        CMP      R1,#+8
        BCS      ??BuzzerTimerCallBack_0
        BX       LR
??BuzzerTimerCallBack_0:
        PUSH     {R7,LR}
//  152   mMsCounter++;
//  153   if(mMsCounter >= mBeepFreqinKHz_c<<1)
//  154   {
//  155     mMsCounter = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  156     mBeepDuration --;
        LDR      R1,[R0, #+4]
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+4]
//  157     if(mBeepDuration == 0)
        BNE      ??BuzzerTimerCallBack_1
//  158     {
//  159       TmrSetMode(gBeepTimer_c, gTmrNoOperation_c);    //stop timer  
        MOVS     R0,#+3
        BL       TmrSetMode
//  160     }
//  161   }
//  162 }
??BuzzerTimerCallBack_1:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     BuzzerTimerCallBack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     0x80007060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     0xbb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     mMsCounter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     0x8000706a

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  163 
//  164 /***********************************************************************************/
//  165 
//  166 static void Llc_VolumeInit(void)
//  167 {
//  168   I2cConfig_t i2cConfig;
//  169   I2c_Enable();
//  170   i2cConfig.i2cBroadcastEn = FALSE;
//  171   i2cConfig.freqDivider   = 0x20;
//  172   i2cConfig.saplingRate   = 0x01;
//  173   i2cConfig.slaveAddress   = 0x00;
//  174   i2cConfig.i2cInterruptEn = FALSE; 
//  175   I2c_SetConfig(&i2cConfig);
//  176 }
//  177 
//  178 /***********************************************************************************/
//  179 
//  180 static void Llc_VolumeSet(uint8_t volume)
//  181 {
//  182   uint8_t buffer[2];
//  183   if(volume > (uint8_t)100)
//  184   {
//  185     volume = 100; /* Limit volume to 100% */
//  186   }
//  187   /* Scale down the volume value to 0 - 31 range */
//  188   volume = (volume * 31) / 100;
//  189   buffer[0] = mVREG_CMD_c;
//  190   buffer[1] = (volume & 0xFF) << 3;
//  191   I2c_SendData(mSLAVE_DEV_ADDRESS_c, &buffer[0], 2, gI2cMstrReleaseBus_c);
//  192 }
//  193 
//  194 #endif 
//  195  
//  196  
// 
//   8 bytes in section .bss
// 304 bytes in section .text
// 
// 304 bytes of CODE memory
//   8 bytes of DATA memory
//
//Errors: none
//Warnings: none
