///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  14:41:04
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Source\TransceiverPowerMngmnt.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWFCA8.tmp
//        (D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Source\TransceiverPowerMngmnt.c
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
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List\TransceiverPowerMngmnt.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CRM_WuCntl

        PUBLIC GetConfiguredWakeupSource
        PUBLIC MLMESetWakeupSource
        PUBLIC SetWakeupTimerTimeout

// D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Source\TransceiverPowerMngmnt.c
//    1 /************************************************************************************
//    2 * Transceiver Power Management implementation
//    3 *
//    4 * (c) Copyright 2006, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected: 01/11/2007
//   11 * Last Tested:
//   12 ************************************************************************************/
//   13 
//   14 #include "../Interface/TransceiverPowerMngmnt.h"
//   15 #include "../Drivers/LibInterface/rif_inc.h"
//   16 #include "../../PLM/LibInterface/Platform.h"
//   17 #include "../../PLM/LibInterface/CRM_Regs.h"
//   18 
//   19 
//   20 /************************************************************************************
//   21 *************************************************************************************
//   22 * Private macros
//   23 *************************************************************************************
//   24 ************************************************************************************/
//   25 #define gExtWuKBI_c           (gExtWuKBI4En_c | gExtWuKBI5En_c | gExtWuKBI6En_c | gExtWuKBI7En_c)
//   26 #define crm_sleep_cntl_st     ((crm_sleep_cntl_t *)(&crm_sleep_cntl))
//   27 #define _set_ram_ret_size(x)  (crm_sleep_cntl_st->Bits.RAM_RET = x)
//   28 #define _set_mcu_ret_state(x) (crm_sleep_cntl_st->Bits.MCU_RET = x)
//   29 
//   30 
//   31 /************************************************************************************
//   32 *************************************************************************************
//   33 * Private prototypes
//   34 *************************************************************************************
//   35 ************************************************************************************/
//   36 void CrmGoToSleep(SleepCtrl_t* pSleepCtrl);
//   37 
//   38 
//   39 /************************************************************************************
//   40 *************************************************************************************
//   41 * Private type definitions
//   42 *************************************************************************************
//   43 ************************************************************************************/
//   44 #define mMaxKBI_c                (0x0F)
//   45 #define mMaxWakeupSource_c       (0xF3)
//   46 #define mWuKBIShiftSize_c        (0x04)
//   47 #define mNoWakeupSource_c        (0x00)
//   48 #define mRam_Ret_Size_c          (0x11)
//   49 #define mMCU_Ret_Enable_c        (0x01)
//   50 #define mMCU_Ret_Disable_c       (0x00)
//   51 /************************************************************************************
//   52 *************************************************************************************
//   53 * Private memory declarations
//   54 *************************************************************************************
//   55 ************************************************************************************/
//   56 
//   57 /************************************************************************************
//   58 *************************************************************************************
//   59 * Public functions
//   60 *************************************************************************************
//   61 ************************************************************************************/
//   62 
//   63 /************************************************************************************
//   64 * SetWakeupTimerTimeout
//   65 *
//   66 * This function is used to set the timeout value for a specific clock.
//   67 *
//   68 ************************************************************************************/
//   69 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 FuncReturn_t SetWakeupTimerTimeout(clock_config_t u8Clock, uint32_t u32TimeOut){
SetWakeupTimerTimeout:
        PUSH     {R4}
        MOVS     R2,R0
//   71 
//   72   FuncReturn_t retTmp;  
//   73 
//   74   if(gTimerWakeup_c==u8Clock)
        LDR      R3,??DataTable1  ;; 0x80003024
        MOVS     R0,#+0
        MOVS     R4,R2
        BNE      ??SetWakeupTimerTimeout_0
//   75   {
//   76     CRM_REGS_P->WuTimeout = u32TimeOut;
        STR      R1,[R3, #+0]
//   77     retTmp = gSuccess_c;
        B        ??SetWakeupTimerTimeout_1
//   78   }
//   79   else
//   80   {
//   81     if(gRTCWakeup_c!=u8Clock)
??SetWakeupTimerTimeout_0:
        CMP      R2,#+1
        BEQ      ??SetWakeupTimerTimeout_2
//   82     {
//   83       retTmp = gFailOutOfRange_c;
        MOVS     R0,#+1
        B        ??SetWakeupTimerTimeout_1
//   84     }
//   85     else
//   86     {
//   87       CRM_RTCSetTimeout(u32TimeOut); 
??SetWakeupTimerTimeout_2:
        STR      R1,[R3, #+8]
//   88       retTmp = gSuccess_c;
//   89     }
//   90   }
//   91   return retTmp;
??SetWakeupTimerTimeout_1:
        POP      {R4}
        BX       LR               ;; return
//   92 }
//   93 
//   94 
//   95 /************************************************************************************
//   96 * MLMESetWakeupSource
//   97 *
//   98 * This function configures the device auto wake up capability. Three types of wakeups 
//   99 * are possible: 1) An external wakeup signal though 4 pads, 2) An internal time wake up 
//  100 * and 3)A Real Time Clock timeout.
//  101 *
//  102 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 FuncReturn_t MLMESetWakeupSource(uint8_t u8Mode, uint8_t u8KBIPol,uint8_t u8KBIEdge)
//  104 {
MLMESetWakeupSource:
        PUSH     {R0,R1,R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R7,R2
//  105   FuncReturn_t tmpRteurn;
//  106   crmWuCtrl_t WuCtrl;
//  107   u8Mode &= mMaxWakeupSource_c;
//  108 
//  109   tmpRteurn = gFailNoValidCondition_c;
        MOVS     R5,#+3
        MOVS     R0,#+3
//  110 
//  111   if(gNull_c != (u8Mode & gTimerWuEn_c))
        MOVS     R6,#+0
        LSLS     R1,R4,#+31
        BPL      ??MLMESetWakeupSource_0
//  112   { 
//  113        WuCtrl.wuSource = gTimerWu_c;
        MOVS     R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  114        WuCtrl.TIMER_WU_EN = 1;
//  115        WuCtrl.TIMER_WU_INT_EN = 1;
        LDR      R0,[SP, #+4]
        ORRS     R0,R0,R5
        STR      R0,[SP, #+4]
//  116        CRM_WuCntl(&WuCtrl);
        MOV      R0,SP
        BL       CRM_WuCntl
//  117        tmpRteurn = gSuccess_c;
        MOVS     R0,#+0
//  118   }
//  119   else
//  120   {
//  121       //Do nothing
//  122   }
//  123 
//  124   if(gNull_c != (u8Mode & gRTCWuEn_c))
??MLMESetWakeupSource_0:
        MOVS     R1,#+2
        TST      R4,R1
        BEQ      ??MLMESetWakeupSource_1
//  125   { 
//  126      WuCtrl.wuSource = gRtcWu_c;
        MOV      R0,SP
        STRB     R1,[R0, #+0]
//  127      WuCtrl.RTC_WU_EN = 1;
//  128      WuCtrl.RTC_WU_INT_EN = 1;
        LDR      R0,[SP, #+4]
        ORRS     R5,R5,R0
        STR      R5,[SP, #+4]
//  129      CRM_WuCntl(&WuCtrl); 
        MOV      R0,SP
        BL       CRM_WuCntl
//  130      tmpRteurn = gSuccess_c;
        MOVS     R0,#+0
//  131   }
//  132   else{
//  133       //Do nothing
//  134   }
//  135 
//  136   if(gNull_c != (u8Mode & gExtWuKBI_c))
??MLMESetWakeupSource_1:
        MOVS     R1,#+240
        ANDS     R1,R1,R4
        BEQ      ??MLMESetWakeupSource_2
        MOV      R0,SP
        LDRB     R0,[R0, #+16]
//  137   {
//  138      u8Mode &= gExtWuKBI_c;
//  139      WuCtrl.wuSource = gExtWu_c;
        MOV      R1,SP
        STRB     R6,[R1, #+0]
//  140      WuCtrl.KBI_WU_EN = (u8Mode >> 4); 
//  141      WuCtrl.KBI_INT_EN = (u8Mode >> 4);
//  142      WuCtrl.KBI_WU_POL = (u8KBIPol & mMaxKBI_c);
//  143      WuCtrl.KBI_WU_EVENT =(u8KBIEdge & mMaxKBI_c);
        LSRS     R1,R4,#+4
        MOVS     R3,#+15
        LDR      R2,[SP, #+4]
        LSRS     R2,R2,#+16
        LSLS     R2,R2,#+16
        ANDS     R0,R0,R3
        LSLS     R0,R0,#+8
        ANDS     R3,R3,R7
        LSLS     R3,R3,#+4
        ORRS     R3,R3,R0
        ORRS     R3,R3,R1
        LSLS     R0,R1,#+12
        ORRS     R0,R0,R3
        ORRS     R0,R0,R2
        STR      R0,[SP, #+4]
//  144      CRM_WuCntl(&WuCtrl); 
        MOV      R0,SP
        BL       CRM_WuCntl
//  145      tmpRteurn = gSuccess_c;
        MOVS     R0,#+0
//  146   }
//  147   else{
//  148     //Do nothing/
//  149   }
//  150 
//  151   return tmpRteurn;
??MLMESetWakeupSource_2:
        ADD      SP,SP,#+20
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  152 }
//  153 
//  154 
//  155 
//  156 /************************************************************************************
//  157 * MLMEGetConfiguredWakeupSource
//  158 *
//  159 * Return the wake up sources that were configured through the MLMESetWakeSource 
//  160 * fucntion.
//  161 *
//  162 ************************************************************************************/
//  163 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 uint8_t GetConfiguredWakeupSource(void){
//  165   uint8_t u8Mode = 0;
//  166   u8Mode = CRM_REGS_P->WuCntl;
GetConfiguredWakeupSource:
        LDR      R0,??DataTable1_1  ;; 0x80003004
        LDR      R1,[R0, #+0]
//  167   u8Mode &= mMaxWakeupSource_c; 
//  168   return u8Mode;
        MOVS     R0,#+243
        ANDS     R0,R0,R1
        BX       LR               ;; return
//  169 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     0x80003024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     0x80003004

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  170 
//  171 #if (gUseLowPowerMode_c)
//  172 /************************************************************************************
//  173 * MLMEHibernateRequest
//  174 *
//  175 * This function places the device into Hibernate mode and permit to configure a clock
//  176 *for hibernate mode (XTAL32kHz or RINGOSC2kHz)
//  177 *
//  178 ************************************************************************************/
//  179 FuncReturn_t MLMEHibernateRequest(uint8_t u8HibClock, crmSleepCtrl_t SleepCtl)
//  180 {
//  181   if(mNoWakeupSource_c == GetConfiguredWakeupSource){
//  182       return gFailNoValidCondition_c;
//  183   }
//  184   else{
//  185     // Do nothing 
//  186   }
//  187   if(gXtal32khz_c != u8HibClock) {
//  188     if(gRingOsc2khz_c != u8HibClock){
//  189       return gFailOutOfRange_c;
//  190     }
//  191     else{
//  192       // Do nothing 
//  193     }
//  194   }
//  195   else {
//  196     CRM_2kToXtal32Switch(TRUE, NULL); 
//  197   }
//  198   
//  199   SleepCtl.sleepType = gHibernate_c;
//  200   CRM_GoToSleep(&SleepCtl);
//  201   return gSuccess_c;
//  202 }
//  203 
//  204 /************************************************************************************
//  205 * MLMEDozeRequest
//  206 *
//  207 * This function places the device into Doze mode and verify that any Wake up 
//  208 *Source had been enabled unless.
//  209 *
//  210 ************************************************************************************/
//  211 FuncReturn_t MLMEDozeRequest(crmSleepCtrl_t SleepCtl)
//  212 {
//  213   if(mNoWakeupSource_c == GetConfiguredWakeupSource()){
//  214     return gFailNoValidCondition_c;
//  215   }
//  216   else{
//  217     SleepCtl.sleepType = gDoze_c;
//  218  
//  219     CRM_GoToSleep(&SleepCtl);
//  220   }
//  221   return gSuccess_c;
//  222 }
//  223 
//  224 #endif
//  225 
//  226 /************************************************************************************
//  227 *************************************************************************************
//  228 * Private functions
//  229 *************************************************************************************
//  230 ************************************************************************************/
//  231 
//  232 
//  233 /************************************************************************************
//  234 *************************************************************************************
//  235 * Private Debug stuff
//  236 *************************************************************************************
//  237 ************************************************************************************/
//  238 
// 
// 170 bytes in section .text
// 
// 170 bytes of CODE memory
//
//Errors: none
//Warnings: none
