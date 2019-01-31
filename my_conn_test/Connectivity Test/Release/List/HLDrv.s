///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\HLDrv.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDC90.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\HLDrv.c" -D NDEBUG -D F24MHZ -D SECURITY_ENABLED -D
//        MC13226Included_d=0 --preprocess=cs
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
//        Test\Release\List\HLDrv.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CRM_2kToXtal32Switch
        EXTERN CRM_RegisterISR
        EXTERN CRM_SetPowerSource
        EXTERN CRM_VRegCntl
        EXTERN CRM_VRegTrimm

        PUBLIC DRVConfigureRTC
        PUBLIC DRVConfigureVolageRegTrimm
        PUBLIC DRVConfigureVoltageControl
        PUBLIC DRVSetPowerSource

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Source\HLDrv.c
//    1 /************************************************************************************
//    2 * High Level Drivers implementation
//    3 *
//    4 * (c) Copyright 2006, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected: 01/25/2007
//   11 * Last Tested:
//   12 ************************************************************************************/
//   13 
//   14 #include "../../PLM/LibInterface/Crm.h"
//   15 #include "../Interface/HLDrv.h"
//   16 
//   17 /************************************************************************************
//   18 *************************************************************************************
//   19 * Private macros
//   20 *************************************************************************************
//   21 ************************************************************************************/
//   22 
//   23 #define countsWaiting     1000
//   24 
//   25 #define isTimingRefInvalid()        ( gMaxRtcTimingReference_c <= mTimingRef )
//   26 #define isClkToConfigInvalid()      ( gMaxClkToConfig_c <= mClkToConfig )
//   27 #define isRegisterToConfigInvalid() ( gMaxPowerRegisterToConfig_c <= mRegisterToConfig )
//   28 
//   29 /************************************************************************************
//   30 *************************************************************************************
//   31 * Private prototypes
//   32 *************************************************************************************
//   33 ************************************************************************************/
//   34 
//   35 /************************************************************************************
//   36 *************************************************************************************
//   37 * Private type definitions
//   38 *************************************************************************************
//   39 ************************************************************************************/
//   40 
//   41 /************************************************************************************
//   42 *************************************************************************************
//   43 * Private memory declarations
//   44 *************************************************************************************
//   45 ************************************************************************************/
//   46 
//   47 /************************************************************************************
//   48 *************************************************************************************
//   49 * Public functions
//   50 *************************************************************************************
//   51 ************************************************************************************/
//   52 
//   53 /************************************************************************************
//   54 * DRVConfigureRTC
//   55 *
//   56 * This primitive lets configure the Real Time Clock (RTC) for call back 
//   57 * function after some timeout and the reference clock for the RTC.
//   58 *
//   59 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 FuncReturn_t DRVConfigureRTC(crm_rtc_timingReference_t mTimingRef, uint32_t mTimeout, callback_t pfUserCallbackFn){
DRVConfigureRTC:
        PUSH     {R3-R5,LR}
//   61 
//   62   if ( isTimingRefInvalid() ) {
        CMP      R0,#+2
        BGE      ??DRVConfigureRTC_0
        MOVS     R4,R2
//   63     return gFailOutOfRange_c;
//   64   }
//   65   else if ( NULL == pfUserCallbackFn ){
        BNE      ??DRVConfigureRTC_1
//   66     return gFailOutOfRange_c;
??DRVConfigureRTC_0:
        MOVS     R0,#+1
        B        ??DRVConfigureRTC_2
//   67   }
//   68 
//   69   CRM_RTCSetTimeout(mTimeout);
??DRVConfigureRTC_1:
        LDR      R5,??DataTable0  ;; 0x80003004
        STR      R1,[R5, #+40]
//   70   
//   71   if ( gTimerRef_2Khz_c == mTimingRef ) {
        MOVS     R1,R0
        BNE      ??DRVConfigureRTC_3
//   72     CRM_RingOscillatorEnable();
        LDR      R0,[R5, #+56]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        STR      R1,[R5, #+56]
//   73     CRM_Xtal32Disable();
        LDR      R0,[R5, #+64]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        STR      R0,[R5, #+64]
        B        ??DRVConfigureRTC_4
//   74   }
//   75   else if (gTimerRef_32Khz_c == mTimingRef) {
??DRVConfigureRTC_3:
        CMP      R0,#+1
        BNE      ??DRVConfigureRTC_4
//   76     CRM_2kToXtal32Switch(TRUE, NULL); 
        MOVS     R1,#+0
        BL       CRM_2kToXtal32Switch
//   77   }
//   78   else {
//   79     /* Do nothing */
//   80   }
//   81   if (CRM_RegisterISR(gCrmRTCWuEvent_c, pfUserCallbackFn) == gCrmErrNoError_c) 
??DRVConfigureRTC_4:
        MOVS     R1,R4
        MOVS     R0,#+1
        BL       CRM_RegisterISR
        CMP      R0,#+0
        BNE      ??DRVConfigureRTC_5
//   82   {
//   83     CRM_RTCInterruptEnable();
        LDR      R0,[R5, #+0]
        LSRS     R1,R5,#+14
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
//   84     return gSuccess_c;
        MOVS     R0,#+0
        B        ??DRVConfigureRTC_2
//   85   }
//   86   else {
//   87      return gFail_c;
??DRVConfigureRTC_5:
        MOVS     R0,#+9
??DRVConfigureRTC_2:
        POP      {R1,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//   88   }
//   89 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DATA32
        DC32     0x80003004
//   90 
//   91 /************************************************************************************
//   92 * DRVSetPowerSorce
//   93 *
//   94 * This function sets the power power configuration for the MCU. This settings are 
//   95 * retainded during sleep modes.
//   96 *
//   97 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 FuncReturn_t DRVSetPowerSource(crmPowerSource_t pwSource)
//   99 {
DRVSetPowerSource:
        PUSH     {R7,LR}
//  100   if(gCrmErrNoError_c == CRM_SetPowerSource(pwSource))
        BL       CRM_SetPowerSource
        B.N      ?Subroutine0
//  101   {
//  102     return gSuccess_c;
//  103   }
//  104   else
//  105   {
//  106     return gFail_c;
//  107   }
//  108 }
//  109 
//  110 /************************************************************************************
//  111 * DRVConfigureVoltageRegTrimm
//  112 *
//  113 * This function is called to adjust the behavior of the specific device.
//  114 *
//  115 ************************************************************************************/
//  116 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 FuncReturn_t DRVConfigureVolageRegTrimm(crmTrimmedDevice_t trimmedDevice,uint8_t trimmValue)
//  118 {
DRVConfigureVolageRegTrimm:
        PUSH     {R7,LR}
//  119   if(gCrmErrNoError_c == CRM_VRegTrimm(trimmedDevice,trimmValue))
        BL       CRM_VRegTrimm
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  120   {
//  121     return gSuccess_c;
//  122   }
//  123   else 
//  124   {
//  125     return gFail_c;
//  126   }
//  127 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        CMP      R0,#+0
        BEQ      ??Subroutine0_0
        MOVS     R0,#+9
??Subroutine0_0:
        POP      {R1,R3}
        BX       R3               ;; return
//  128 
//  129 /************************************************************************************
//  130 * DRVConfigureVoltageControl
//  131 *
//  132 * This function is called to configure one of the following three voltage regulators:
//  133 * Bulk Voltage regulator, 1.5 voltage regulator or 1.8 voltage regulator.
//  134 *
//  135 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 FuncReturn_t DRVConfigureVoltageControl(crmVRegCntl_t* pVRegCntl)
//  137 {
DRVConfigureVoltageControl:
        PUSH     {R7,LR}
//  138   if(gCrmErrNoError_c == CRM_VRegCntl(pVRegCntl))
        BL       CRM_VRegCntl
        B.N      ?Subroutine0
//  139   {
//  140     return gSuccess_c;
//  141   }
//  142   else  
//  143   {
//  144     return gFail_c;
//  145   }
//  146 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  147 
//  148 
//  149 /************************************************************************************
//  150 *************************************************************************************
//  151 * Private functions
//  152 *************************************************************************************
//  153 ************************************************************************************/
//  154 
//  155 /************************************************************************************
//  156 *************************************************************************************
//  157 * Private Debug stuff
//  158 *************************************************************************************
//  159 ************************************************************************************/
//  160 
//  161 
//  162 
// 
// 118 bytes in section .text
// 
// 118 bytes of CODE memory
//
//Errors: none
//Warnings: none
