///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\TransceiverConfigMngmnt.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDFC6.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\TransceiverConfigMngmnt.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\TransceiverConfigMngmnt.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DelayMs
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinDir
        EXTERN Gpio_SetPinFunction
        EXTERN Gpio_SetPinReadSource
        EXTERN RadioInit
        EXTERN SetComplementaryPAState
        EXTERN SetEdCcaThreshold
        EXTERN SetPowerLevelLockMode
        EXTERN disable_test_mode_continuos_tx_nomod
        EXTERN radio_manager_init
        EXTERN set_test_mode_continuos_tx_nomod

        PUBLIC ConfigureBuckRegulator
        PUBLIC ConfigureRfCtlSignals
        PUBLIC MLMEGetPromiscuousMode
        PUBLIC MLMEGetRficVersion
        PUBLIC MLMEPHYResetIndication
        PUBLIC MLMEPHYSoftReset
        PUBLIC MLMEPHYXtalAdjust
        PUBLIC MLMERadioInit
        PUBLIC MLMESetPromiscuousMode
        PUBLIC MLMETestMode
        PUBLIC smac_version

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Source\TransceiverConfigMngmnt.c
//    1 /************************************************************************************
//    2 * Transceiver Configuration Management implementation
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
//   14 #include "../../PLM/LibInterface/Platform.h"
//   15 #include "../../PLM/LibInterface/CRM_Regs.h"
//   16 #include "../../PLM/LibInterface/GPIO_Interface.h"
//   17 #include "../../PLM/Interface/RF_Config.h"
//   18 #include "../Configure/options_config.h"
//   19 #include "../Drivers/Configure/board_config.h"
//   20 #include "../Drivers/Interface/Delay.h"
//   21 #include "../Drivers/Interface/ghdr/maca.h"
//   22 #include "../Drivers/LibInterface/rif_inc.h"
//   23 #include "../Drivers/LibInterface/Synthesizer_inc.h"
//   24 #include "../Interface/TransceiverConfigMngmnt.h"
//   25 
//   26 /************************************************************************************
//   27 *************************************************************************************
//   28 * Private macros
//   29 *************************************************************************************
//   30 ************************************************************************************/
//   31 #define MACA_WRITE(reg, src) (reg = src)
//   32 
//   33 #define _802_15_4_PREAMBLE    0x00000000 
//   34 
//   35 #define MACA_CONTINUOUS_TX    0x00000223
//   36 #define MACA_CONTINUOUS_RX    0x00000224
//   37 
//   38 /************************************************************************************
//   39 *************************************************************************************
//   40 * Private prototypes
//   41 *************************************************************************************
//   42 ************************************************************************************/
//   43 
//   44 /************************************************************************************
//   45 *************************************************************************************
//   46 * Private type definitions
//   47 *************************************************************************************
//   48 ************************************************************************************/
//   49 
//   50 #define mMaca_freq_init_c       (SMAC_CHANN_11)
//   51 #define mMaca_tmren_init_c      (maca_start_clk | maca_cpl_clk | maca_soft_clk)
//   52 #define mMaca_clkoffset_init_c  (0x00000000)
//   53 
//   54 #define mMaca_maskirq_init_c ( maca_irq_strt   | \ 
//   55                                maca_irq_sync   | \ 
//   56                                maca_irq_cm     | \ 
//   57                                maca_irq_sftclk | \ 
//   58                                maca_irq_lvl    | \ 
//   59                                maca_irq_di     | \ 
//   60                                maca_irq_acpl )
//   61 
//   62 #define mMaca_clrirq_init_c   (0x0000FE1F)  /* Clear all interrupt sources at init*/
//   63 #define mMaca_fltrej_init_c   (0x00000000)
//   64 
//   65 
//   66 #define mMaca_preamble_init_c 
//   67 
//   68 
//   69 #define mSMAC_Header    (uint16_t)(0xFF7E)
//   70 #define mCodeBytesSize  (sizeof(mSMAC_Header))
//   71 #define mReset_c        (0x87651234)
//   72 #define gMaxTrimVal_c   (0x0f)
//   73 #define gMaxCoarseTrim_c (0x1f)
//   74 #define gBulkCapMask_c   (0x10)
//   75 #define gMaxFineTrim_c   (0x1f)
//   76 #define gXtalTrimMask_c (0xfff0ffff)
//   77 #define ZIGBEE_MODE     (0)
//   78 #define ISM_MODE        (1)
//   79 
//   80 typedef struct version_and_size_tag {
//   81   uint32_t * version_add;
//   82   uint8_t word_size;
//   83 }version_and_size_tag;
//   84 
//   85 
//   86 /************************************************************************************
//   87 *************************************************************************************
//   88 * Private memory declarations
//   89 *************************************************************************************
//   90 ************************************************************************************/
//   91 /*
//   92    4 bits - Major
//   93    5 bits - Middle
//   94    5 bits - Minor
//   95    5 bits - Year from 2000
//   96    4 bits - Month (valid 1-12)
//   97    5 bits - Day of the month (valid 1-31)
//   98    4 bits - Consecutive number
//   99 */
//  100 #define MAJOR_SMAC_V  (1)
//  101 #define MIDDLE_SMAC_V (1)
//  102 #define MINOR_SMAC_V  (3)
//  103 #define YEAR_SMAC_V   (2009-2000)
//  104 #define MONTH_SMAC_V  (8)
//  105 #define DAY_SMAC_V    (4)
//  106 #define CONS_SMAC_V   (1)
//  107 
//  108 #if (MAJOR_SMAC_V>15) || (MIDDLE_SMAC_V>31) || (MINOR_SMAC_V>31)
//  109  #error "Cobdebase version out of range"
//  110 #endif
//  111 
//  112 #if (YEAR_SMAC_V>31) || (MONTH_SMAC_V>12) || (MONTH_SMAC_V<1) || (DAY_SMAC_V>31) || (DAY_SMAC_V<1)
//  113  #error "Version date out of range"
//  114 #endif
//  115 
//  116 #if (CONS_SMAC_V>15)
//  117  #error "Consecutive number of SMAC version out of range"
//  118 #endif
//  119 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  120 const uint32_t smac_version = ((MAJOR_SMAC_V << 28) | (MIDDLE_SMAC_V << 23 ) | \ 
smac_version:
        DATA32
        DC32 277688385
//  121                                (MINOR_SMAC_V << 18) | (YEAR_SMAC_V << 13 ) | \ 
//  122                                (MONTH_SMAC_V << 9) | (DAY_SMAC_V << 4 ) | CONS_SMAC_V);
//  123 
//  124 
//  125 static bool_t mIsPromiscousMode = FALSE;
//  126 static const version_and_size_tag version_registers[MAX_VERSIONED_ENTITY] = {
//  127   {(uint32_t *)(&maca_mc1322x_id), 1},     /* MACA_MC1322x_ID VERSION */
//  128   {(uint32_t *)(&smac_version), 1},        /* SMAC VERSION */
//  129   {(uint32_t *)(0x00000020),    1},        /* BOOTSTRAP VERSION */
//  130 };
//  131 
//  132 static void InitializePhy(void);
//  133 
//  134 
//  135 
//  136 /************************************************************************************
//  137 *************************************************************************************
//  138 * Public functions
//  139 *************************************************************************************
//  140 ************************************************************************************/
//  141 
//  142 /************************************************************************************
//  143 * MLMESoftReset
//  144 *
//  145 * This function is called to perform a complete reset of the system.
//  146 *
//  147 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 void MLMEPHYSoftReset(void)
//  149 {
//  150   MLMEPHYResetIndication();
//  151   CRM_REGS_P->SwRst = mReset_c;
MLMEPHYSoftReset:
        LDR      R0,??DataTable8  ;; 0x87651234
        LDR      R1,??DataTable8_1  ;; 0x80003050
        STR      R0,[R1, #+0]
//  152 }
        BX       LR               ;; return
//  153 
//  154 /************************************************************************************
//  155 * MLMEPHYResetIndication
//  156 *
//  157 * Callback called when a SoftReset has occurred.
//  158 *
//  159 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void MLMEPHYResetIndication(void)
//  161 {
//  162   /* Place your application´s code here */
//  163 }
MLMEPHYResetIndication:
        BX       LR               ;; return
//  164 
//  165 /************************************************************************************
//  166 * MLMEPHYXtalAdjust
//  167 *
//  168 * Adjust the transceiver reference clock by a trim value.
//  169 *
//  170 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 FuncReturn_t MLMEPHYXtalAdjust(uint8_t u8CoarseTrim, uint8_t u8FineTrim)
//  172 {
MLMEPHYXtalAdjust:
        PUSH     {R4}
//  173   if( (gMaxCoarseTrim_c < u8CoarseTrim) || 
//  174       (gMaxFineTrim_c < u8FineTrim)){
        CMP      R0,#+32
        BGE      ??MLMEPHYXtalAdjust_0
        CMP      R1,#+32
        BLT      ??MLMEPHYXtalAdjust_1
//  175     return gFailOutOfRange_c;
??MLMEPHYXtalAdjust_0:
        MOVS     R0,#+1
        B        ??MLMEPHYXtalAdjust_2
//  176   }
//  177   else {
//  178     /*Do nothing */
//  179   }
//  180 
//  181   if(gBulkCapMask_c & u8CoarseTrim)
??MLMEPHYXtalAdjust_1:
        LDR      R2,??DataTable8_2  ;; 0x80003040
        LSLS     R3,R0,#+27
        LDR      R3,[R2, #+0]
        BPL      ??MLMEPHYXtalAdjust_3
//  182   {
//  183     enable_bulk_cap();
        MOVS     R4,#+128
        LSLS     R4,R4,#+18       ;; #+33554432
        ORRS     R4,R4,R3
        B        ??MLMEPHYXtalAdjust_4
//  184   }
//  185   else
//  186   {
//  187     disable_bulk_cap();
??MLMEPHYXtalAdjust_3:
        LDR      R4,??DataTable8_3  ;; 0xfdffffff
        ANDS     R4,R4,R3
??MLMEPHYXtalAdjust_4:
        STR      R4,[R2, #+0]
//  188   }
//  189 
//  190   set_xtal_coarse_tune((~gBulkCapMask_c) & u8CoarseTrim);
        LDR      R3,[R2, #+0]
        LDR      R4,??DataTable8_4  ;; 0xfe1fffff
        ANDS     R4,R4,R3
        LSLS     R0,R0,#+21
        MOVS     R3,#+240
        LSLS     R3,R3,#+17       ;; #+31457280
        ANDS     R3,R3,R0
        ORRS     R3,R3,R4
        STR      R3,[R2, #+0]
//  191   set_xtal_fine_tune(u8FineTrim);
        LDR      R0,[R2, #+0]
        LDR      R3,??DataTable8_5  ;; 0xffe0ffff
        ANDS     R3,R3,R0
        LSLS     R0,R1,#+16
        MOVS     R1,#+248
        LSLS     R1,R1,#+13       ;; #+2031616
        ANDS     R1,R1,R0
        ORRS     R1,R1,R3
        STR      R1,[R2, #+0]
//  192 
//  193   return gSuccess_c;
        MOVS     R0,#+0
??MLMEPHYXtalAdjust_2:
        POP      {R4}
        BX       LR               ;; return
//  194   
//  195 }
//  196 
//  197 
//  198 /************************************************************************************
//  199 * MLMEGetRficVersion
//  200 *
//  201 * This function shall provide the calling function with version of the IC and the 
//  202 * version of the software.
//  203 *
//  204 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  205 FuncReturn_t MLMEGetRficVersion(Versioned_Entity_t Entity, uint32_t *Buffer)
//  206 {
MLMEGetRficVersion:
        PUSH     {R4,R5}
//  207   uint8_t i;
//  208 
//  209   if(MAX_VERSIONED_ENTITY <= Entity){
        CMP      R0,#+3
        BLT      ??MLMEGetRficVersion_0
//  210     return gFailOutOfRange_c;
        MOVS     R0,#+1
        B        ??MLMEGetRficVersion_1
//  211   }
//  212   else{
//  213     /* Do nothing */
//  214   }
//  215 
//  216   for(i=0; i<version_registers[Entity].word_size; i++)
??MLMEGetRficVersion_0:
        MOVS     R2,#+0
        B        ??MLMEGetRficVersion_2
//  217   {
//  218     *Buffer++ = *((version_registers[Entity].version_add)+i);
??MLMEGetRficVersion_3:
        LDR      R3,[R3, #+0]
        LSLS     R4,R4,#+2
        LDR      R3,[R3, R4]
        STR      R3,[R1, #+0]
        ADDS     R1,R1,#+4
//  219   }
        ADDS     R2,R2,#+1
??MLMEGetRficVersion_2:
        Nop      
        ADR.N    R3,version_registers
        LSLS     R4,R0,#+3
        ADDS     R3,R3,R4
        LDRB     R5,[R3, #+4]
        LSLS     R4,R2,#+24
        LSRS     R4,R4,#+24
        CMP      R4,R5
        BCC      ??MLMEGetRficVersion_3
//  220 
//  221   return gSuccess_c;
        MOVS     R0,#+0
??MLMEGetRficVersion_1:
        POP      {R4,R5}
        BX       LR               ;; return
//  222 }
//  223 
//  224 /************************************************************************************
//  225 * MLMETestMode
//  226 *
//  227 * This SMAC primitive was added to place the device into MACA tests modes.
//  228 *
//  229 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 void MLMETestMode (Test_Mode_t u8Mode)
//  231 {
MLMETestMode:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
//  232   disable_test_mode_continuos_tx_nomod();
        BL       disable_test_mode_continuos_tx_nomod
//  233 
//  234   switch(u8Mode){
        LDR      R4,??DataTable8_6  ;; 0x8000400c
        LDR      R0,??DataTable8_7  ;; 0x1808
        CMP      R5,#+4
        BEQ      ??MLMETestMode_0
        BCC      ??MLMETestMode_1
        CMP      R5,#+6
        BEQ      ??MLMETestMode_2
        BCS      ??MLMETestMode_1
//  235     case(SMAC_TEST_MODE_IDLE):
//  236       {
//  237         maca_control = SMAC_MACA_CNTL_INIT_STATE;
//  238       }
//  239       break;
//  240           
//  241     case(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD):
//  242       {
//  243         maca_control = SMAC_MACA_CNTL_INIT_STATE;
        STR      R0,[R4, #+0]
//  244         DelayMs(2);
        MOVS     R0,#+2
        BL       DelayMs
//  245         set_test_mode_continuos_tx_nomod();
        BL       set_test_mode_continuos_tx_nomod
//  246       }
//  247       break;
        B        ??MLMETestMode_3
//  248       
//  249     case(SMAC_TEST_MODE_CONTINUOUS_TX_MOD):
//  250       {
//  251         maca_control = SMAC_MACA_CNTL_INIT_STATE;
??MLMETestMode_0:
        STR      R0,[R4, #+0]
//  252         DelayMs(2);
        MOVS     R0,#+2
        BL       DelayMs
//  253         maca_control = MACA_CONTINUOUS_TX;
        LDR      R0,??DataTable8_8  ;; 0x223
        B        ??MLMETestMode_1
//  254       }
//  255       break;
//  256       
//  257     case(SMAC_TEST_MODE_CONTINUOUS_RX):
//  258       {
//  259         maca_control = SMAC_MACA_CNTL_INIT_STATE;
??MLMETestMode_2:
        STR      R0,[R4, #+0]
//  260         DelayMs(2);
        MOVS     R0,#+2
        BL       DelayMs
//  261         maca_control = MACA_CONTINUOUS_RX;
        MOVS     R0,#+137
        LSLS     R0,R0,#+2        ;; #+548
//  262       }
//  263       break;    
//  264     
//  265     default:
//  266       maca_control = SMAC_MACA_CNTL_INIT_STATE;
??MLMETestMode_1:
        STR      R0,[R4, #+0]
//  267       break;
//  268   }
//  269 }
??MLMETestMode_3:
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  270 
//  271 
//  272 /************************************************************************************
//  273 * MLMESetPromiscuousMode
//  274 *
//  275 * This function sets the promiscous mode to on/off
//  276 *
//  277 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  278 FuncReturn_t MLMESetPromiscuousMode(bool_t isPromiscousMode)
//  279 {
//  280   mIsPromiscousMode = isPromiscousMode;
MLMESetPromiscuousMode:
        LDR      R1,??DataTable8_9
        STRB     R0,[R1, #+0]
//  281   return gSuccess_c;
        MOVS     R0,#+0
        BX       LR               ;; return
//  282 }
//  283 
//  284 /************************************************************************************
//  285 * MLMEGetPromiscuousMode
//  286 *
//  287 * This function gets the current promiscous mode to on/off.
//  288 *
//  289 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 bool_t MLMEGetPromiscuousMode(void)
//  291 {
//  292   return mIsPromiscousMode;
MLMEGetPromiscuousMode:
        LDR      R0,??DataTable8_9
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
//  293 }
//  294 
//  295 /************************************************************************************
//  296 * MLMERadioInit
//  297 *
//  298 * This function configures the different parameters of the MAC accelerator and the 
//  299 * radio interface
//  300 *
//  301 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 FuncReturn_t MLMERadioInit(void)
//  303 {
MLMERadioInit:
        PUSH     {R2-R6,LR}
//  304   static uint8_t i=0;  
//  305   uint32_t u32LoopDiv;  
//  306 
//  307   u32LoopDiv = ((gDigitalClock_RN_c<<25) + gDigitalClock_RAFC_c);
//  308 
//  309   if (0==i){
        MOVS     R4,#+0
        MOVS     R5,#+1
        LDR      R6,??DataTable8_9
        LDRB     R0,[R6, #+1]
        CMP      R0,#+0
        BNE      ??MLMERadioInit_0
//  310     i = 1;
        STRB     R5,[R6, #+1]
//  311     RadioInit(PLATFORM_CLOCK, gDigitalClock_PN_c, u32LoopDiv);
        MOVS     R2,#+168
        LSLS     R2,R2,#+22       ;; #+704643072
        MOVS     R1,#+24
        LDR      R0,??DataTable8_10  ;; 0x16e3600
        BL       RadioInit
//  312     MLMEPHYXtalAdjust(DEFAULT_COARSE_TRIM, DEFAULT_FINE_TRIM);
        MOVS     R1,#+15
        MOVS     R0,#+8
        BL       MLMEPHYXtalAdjust
//  313     MLMESetPromiscuousMode(SMAC_PROMISCUOUS_MODE);
        STRB     R4,[R6, #+0]
//  314     radio_manager_init();
        BL       radio_manager_init
//  315   }
//  316   
//  317   if(PLATFORM_CLOCK != 24000000)
//  318   {
//  319     InitIdleToRun();
//  320   }
//  321   
//  322   InitializePhy(); // Re-init MACA
??MLMERadioInit_0:
        LDR      R0,??DataTable8_11  ;; 0x80004004
        STR      R5,[R0, #+0]
        MOV      R2,SP
        STRB     R4,[R2, #+0]
        B        ??MLMERadioInit_1
??MLMERadioInit_2:
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R2, #+0]
??MLMERadioInit_1:
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        CMP      R1,#+100
        BLT      ??MLMERadioInit_2
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
        STR      R4,[R0, #+8]
        MOVS     R1,#+5
        STR      R1,[R0, #+60]
        LDR      R1,??DataTable8_12  ;; 0x800040cc
        MOVS     R2,#+95
        STR      R2,[R1, #+72]
        LDR      R2,??DataTable8_13  ;; 0x180012
        STR      R2,[R1, #+76]
        MOVS     R2,#+4
        STR      R2,[R1, #+124]
        LDR      R2,??DataTable8_14  ;; 0x8000414c
        LDR      R3,??DataTable8_15  ;; 0x1a0022
        STR      R3,[R2, #+0]
        MOVS     R3,#+37
        STR      R3,[R2, #+8]
        MOVS     R2,#+167
        STR      R2,[R1, #+88]
        MOVS     R2,#+8
        STR      R2,[R0, #+68]
        LDR      R2,??DataTable8_16  ;; 0x3815
        STR      R2,[R1, #+0]
        MOVS     R1,#+212
        LSLS     R1,R1,#+14       ;; #+3473408
        STR      R1,[R0, #+96]
//  323   SetComplementaryPAState(gEnableComplementaryPAOutput_c);
        MOVS     R0,#+0
        BL       SetComplementaryPAState
//  324   SetPowerLevelLockMode(gPowerLevelLock_c);
        MOVS     R0,#+0
        BL       SetPowerLevelLockMode
//  325   SetEdCcaThreshold(gCcaThreshold_c);
        MOVS     R0,#+57
        BL       SetEdCcaThreshold
//  326   
//  327   CRM_REGS_P->VregCntl = 0x00000F78; //Enables the radio voltage source
        LDR      R0,??DataTable8_17  ;; 0xf78
        LDR      R1,??DataTable8_18  ;; 0x80003048
        STR      R0,[R1, #+0]
//  328   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R1,R2,R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  329 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
mIsPromiscousMode:
        DS8 1
        DS8 1
//  330 
//  331 
//  332 /************************************************************************************
//  333 *************************************************************************************
//  334 * Private functions
//  335 *************************************************************************************
//  336 ************************************************************************************/
//  337 
//  338 /************************************************************************************
//  339 * InitializePhy
//  340 *
//  341 * This function configures the different parameters of the MAC accelerator and the 
//  342 * radio interface
//  343 *
//  344 ************************************************************************************/
//  345 static void InitializePhy(void)
//  346 {
//  347   volatile uint8_t cnt;
//  348   
//  349   MACA_WRITE(maca_reset, maca_reset_rst);
//  350  
//  351   for(cnt=0; cnt < 100; cnt++); 
//  352 
//  353   MACA_WRITE(maca_reset      , maca_reset_cln_on);                      // 0x80004004
//  354   MACA_WRITE(maca_control    , control_seq_nop);                        // 0x8000400c
//  355   MACA_WRITE(maca_tmren      , maca_start_clk | maca_soft_clk);          // 0x80004040
//  356   MACA_WRITE(maca_divider    , gMACA_Clock_DIV_c);                      // 0x80004114
//  357   MACA_WRITE(maca_warmup     , 0x00180012);                             // 0x80004118
//  358   MACA_WRITE(maca_eofdelay   , 0x00000004);                             // 0x80004148
//  359   MACA_WRITE(maca_ccadelay   , 0x001a0022);                             // 0x8000414c
//  360   MACA_WRITE(maca_txccadelay , 0x00000025);                             // 0x80008154
//  361   MACA_WRITE(maca_framesync  , 0x000000A7);                             // 0x80004124
//  362   MACA_WRITE(maca_clk        , 0x00000008);                             // 0x80004048
//  363   MACA_WRITE(maca_maskirq    , (maca_irq_cm   | maca_irq_acpl | 
//  364                                 maca_irq_rst  | maca_irq_di | maca_irq_crc | maca_irq_flt ));
//  365   MACA_WRITE(maca_slotoffset , 0x00350000);                             // 0x80004064
//  366   // MACA
//  367 
//  368 }
//  369 
//  370 
//  371 /************************************************************************************
//  372 * ConfigureRfCtlSignals()
//  373 *
//  374 * This function ...
//  375 *
//  376 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  377 void ConfigureRfCtlSignals(RfSignalType_t signalType, RfSignalFunction_t function, bool_t gpioOutput, bool_t gpioOutputHigh )
//  378 {
ConfigureRfCtlSignals:
        PUSH     {R4-R6,LR}
        MOVS     R4,R3
//  379  /* Validate the input paramters */
//  380  if( (signalType >= gRfSignalMax_c) || (function >= gRfSignalFunctionMax_c) )
        CMP      R0,#+3
        BGT      ??ConfigureRfCtlSignals_0
        CMP      R1,#+2
        BGT      ??ConfigureRfCtlSignals_0
//  381  {
//  382   /* SignalType or function out of range */ 
//  383   return;
//  384  }
//  385  
//  386  if( (signalType < gRfSignalTXON_c) && (function > gRfSignalFunction1_c) )
        CMP      R0,#+2
        BGE      ??ConfigureRfCtlSignals_1
        CMP      R1,#+2
        BGE      ??ConfigureRfCtlSignals_0
//  387  {
//  388   /* Function2 requested for ANT_1 or ANT_2 */
//  389   return;
//  390  }
//  391  
//  392  if(function > 0)
??ConfigureRfCtlSignals_1:
        ADDS     R0,R0,#+42
        MOVS     R5,R0
        MOVS     R0,R1
        BEQ      ??ConfigureRfCtlSignals_2
//  393  {
//  394   /* Function 1 or 2 was requested for the RF pin. Apply the change at the GPIO function level for the requested signal */
//  395   Gpio_SetPinFunction((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), (GpioFunctionMode_t)function); 
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinFunction
        B        ??ConfigureRfCtlSignals_0
//  396  }
??ConfigureRfCtlSignals_2:
        MOVS     R6,R2
//  397  else
//  398  {
//  399   /* GPIO mode requested for the RF pin. Apply the function, direction and level for the requested signal */
//  400   Gpio_SetPinFunction((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioNormalMode_c); 
        MOVS     R1,#+0
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinFunction
        CMP      R6,#+1
        BNE      ??ConfigureRfCtlSignals_3
//  401   if(gpioOutput == TRUE)
//  402   {  
//  403    Gpio_SetPinDir((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioDirOut_c);
        MOVS     R1,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinDir
//  404    Gpio_SetPinReadSource((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioPinReadReg_c);
        MOVS     R1,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinReadSource
//  405    Gpio_SetPinData((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), (GpioPinState_t)gpioOutputHigh); 
        MOVS     R1,R4
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinData
        B        ??ConfigureRfCtlSignals_0
//  406   }
//  407   else
//  408   {
//  409    Gpio_SetPinDir((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioDirIn_c);
??ConfigureRfCtlSignals_3:
        MOVS     R1,#+0
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinDir
//  410    Gpio_SetPinReadSource((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioPinReadPad_c);
        MOVS     R1,#+0
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       Gpio_SetPinReadSource
//  411   }  
//  412  }
//  413  
//  414 }
??ConfigureRfCtlSignals_0:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  415 
//  416 
//  417 /************************************************************************************
//  418 * ConfigureBuckRegulator
//  419 *
//  420 * This function enables or bypass the buck regulator 
//  421 *
//  422 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  423 void ConfigureBuckRegulator(BuckTypes_t BuckRegState)
//  424 {
//  425  
//  426   if(BUCK_DISABLE == BuckRegState)
ConfigureBuckRegulator:
        MOVS     R2,#+1
        MVNS     R2,R2            ;; #-2
        LDR      R1,??DataTable8_19  ;; 0x80003000
        MOVS     R3,R0
        BNE      ??ConfigureBuckRegulator_0
//  427   {
//  428     CRM_REGS_P->SysCntl &= 0xFFFFFFFE;
        LDR      R0,[R1, #+0]
        ANDS     R2,R2,R0
        STR      R2,[R1, #+0]
//  429     CRM_REGS_P->VregCntl = 0x00000F78;
        LDR      R0,??DataTable8_17  ;; 0xf78
        B        ??ConfigureBuckRegulator_1
//  430   }
//  431   if(BUCK_ENABLE == BuckRegState)
??ConfigureBuckRegulator_0:
        CMP      R0,#+2
        BNE      ??ConfigureBuckRegulator_2
//  432   {
//  433     CRM_REGS_P->SysCntl |= BIT0;  //Enables buck regutation as power supply
        LDR      R0,[R1, #+0]
        MOVS     R2,#+1
        ORRS     R2,R2,R0
        STR      R2,[R1, #+0]
//  434     CRM_REGS_P->VregCntl = 0x00000F7B;
        LDR      R0,??DataTable8_20  ;; 0xf7b
        B        ??ConfigureBuckRegulator_1
//  435   }
//  436   
//  437   if(BUCK_BYPASS == BuckRegState)
??ConfigureBuckRegulator_2:
        CMP      R0,#+1
        BNE      ??ConfigureBuckRegulator_3
//  438   {
//  439     CRM_REGS_P->SysCntl &= 0xFFFFFFFE;
        LDR      R0,[R1, #+0]
        ANDS     R2,R2,R0
        STR      R2,[R1, #+0]
//  440     CRM_REGS_P->VregCntl = 0x00000F7C;
        LDR      R0,??DataTable8_21  ;; 0xf7c
??ConfigureBuckRegulator_1:
        STR      R0,[R1, #+72]
//  441   }
//  442 }
??ConfigureBuckRegulator_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DATA32
        DC32     0x87651234

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DATA32
        DC32     0x80003050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DATA32
        DC32     0x80003040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DATA32
        DC32     0xfdffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DATA32
        DC32     0xfe1fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DATA32
        DC32     0xffe0ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DATA32
        DC32     0x8000400c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DATA32
        DC32     0x1808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DATA32
        DC32     0x223

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DATA32
        DC32     mIsPromiscousMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DATA32
        DC32     0x16e3600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DATA32
        DC32     0x80004004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DATA32
        DC32     0x800040cc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DATA32
        DC32     0x180012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DATA32
        DC32     0x8000414c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DATA32
        DC32     0x1a0022

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DATA32
        DC32     0x3815

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DATA32
        DC32     0xf78

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DATA32
        DC32     0x80003048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DATA32
        DC32     0x80003000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DATA32
        DC32     0xf7b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DATA32
        DC32     0xf7c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
version_registers:
        DATA32
        DC32 80004018H
        DATA8
        DC8 1, 0, 0, 0
        DATA32
        DC32 smac_version
        DATA8
        DC8 1, 0, 0, 0
        DATA32
        DC32 20H
        DATA8
        DC8 1, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  443 
//  444 
//  445 /************************************************************************************
//  446 *************************************************************************************
//  447 * Private Debug stuff
//  448 *************************************************************************************
//  449 ************************************************************************************/
//  450 
//  451 
// 
//   2 bytes in section .bss
//   4 bytes in section .rodata
// 650 bytes in section .text
// 
// 650 bytes of CODE  memory
//   4 bytes of CONST memory
//   2 bytes of DATA  memory
//
//Errors: none
//Warnings: none
