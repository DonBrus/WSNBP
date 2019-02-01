///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Source\MacaInterrupt.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDE69.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Source\MacaInterrupt.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\MacaInterrupt.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ITC_DisableInterrupt
        EXTERN ITC_EnableInterrupt
        EXTERN MLMEGetPromiscuousMode
        EXTERN execute_current_message_callback
        EXTERN gRadioEvntFlags

        PUBLIC MACA_Interrupt
        PUBLIC ResumeMACASync
        PUBLIC flag

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Drivers\Source\MacaInterrupt.c
//    1 /************************************************************************************
//    2 * Maca Interrupt implementation
//    3 *
//    4 * (c) Copyright 2008, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected:
//   11 * Last Tested:
//   12 ************************************************************************************/
//   13 #include "../../../PLM/Interface/EmbeddedTypes.h"
//   14 #include "../../../PLM/LibInterface/ITC_Interface.h"
//   15 
//   16 #include "../Interface/ghdr/maca.h"
//   17 #include "../../../PLM/LibInterface/Platform.h"
//   18 #include "../../Interface/RadioManagement.h"
//   19 #include "../../Interface/TransceiverConfigMngmnt.h"
//   20 #include "../Interface/MacaInterrupt.h"
//   21 
//   22 
//   23 
//   24 /************************************************************************************
//   25 *************************************************************************************
//   26 * Private macros
//   27 *************************************************************************************
//   28 ************************************************************************************/
//   29 #define ZERO (0)
//   30 
//   31 #define _is_action_started_interrupt(x)      (ZERO != (maca_irq_strt & x))
//   32 #define _is_sync_detected_interrupt(x)       (ZERO != (maca_irq_sync & x))
//   33 #define _is_complete_clock_interrupt(x)      (ZERO != (maca_irq_cm & x))
//   34 #define _is_checksum_failed_interrupt(x)     (ZERO != (maca_irq_crc & x))
//   35 #define _is_filter_failed_interrupt(x)       (ZERO != (maca_irq_flt & x))
//   36 #define _is_soft_complete_clock_interrupt(x) (ZERO != (maca_irq_sftclk & x))
//   37 #define _is_fifo_level_interrupt(x)          (ZERO != (maca_irq_lvl & x))
//   38 #define _is_reset_interrupt(x)               (ZERO != (maca_irq_rst & x))
//   39 #define _is_wake_up_interrupt(x)             (ZERO != (maca_irq_wu & x))
//   40 #define _is_data_indication_interrupt(x)     (ZERO != (maca_irq_di & x))
//   41 #define _is_poll_indication_interrupt(x)     (ZERO != (maca_irq_poll & x))
//   42 #define _is_action_complete_interrupt(x)     (ZERO != (maca_irq_acpl & x))
//   43 
//   44 
//   45 #define _is_an_unused_interrupt(x)  \ 
//   46               ( _is_poll_indication_interrupt(x))
//   47 
//   48 #define _is_a_timeout_interrupt(x) \ 
//   49               ( _is_soft_complete_clock_interrupt(x) || \ 
//   50                 _is_complete_clock_interrupt(x) )
//   51 
//   52 #define maca_status_control_code  ((maca_status) & maca_status_cc_mask)
//   53 
//   54 
//   55 /************************************************************************************
//   56 *************************************************************************************
//   57 * Private prototypes
//   58 *************************************************************************************
//   59 ************************************************************************************/
//   60 
//   61 
//   62 /************************************************************************************
//   63 *************************************************************************************
//   64 * Private type definitions
//   65 *************************************************************************************
//   66 ************************************************************************************/
//   67 
//   68 
//   69 /************************************************************************************
//   70 *************************************************************************************
//   71 * Private memory declarations
//   72 *************************************************************************************
//   73 ************************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   74 static uint8_t mMacaIsrEntryCounter = 0;
mMacaIsrEntryCounter:
        DS8 1
//   75 
//   76 
//   77 /************************************************************************************
//   78 *************************************************************************************
//   79 * Public memory declarations
//   80 *************************************************************************************
//   81 ************************************************************************************/
//   82 bool_t flag;
flag:
        DS8 1
//   83 
//   84 
//   85 
//   86 
//   87 /************************************************************************************
//   88 *************************************************************************************
//   89 * Private functions
//   90 *************************************************************************************
//   91 ************************************************************************************/
//   92 
//   93 /* 
//   94  * Do the ABORT-Wait-NOP-Wait sequence in order to prevent MACA malfunctioning.
//   95  * This seqeunce is synchronous and no interrupts should be triggered when it is done.
//   96  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void ResumeMACASync(void)
//   98 { 
ResumeMACASync:
        PUSH     {R2-R6,LR}
//   99   uint32_t clk, TsmRxSteps, LastWarmupStep, LastWarmupData, LastWarmdownStep, LastWarmdownData;
//  100 //  bool_t tmpIsrStatus;
//  101   volatile uint32_t i;
//  102 
//  103   ITC_DisableInterrupt(gMacaInt_c);  
        MOVS     R0,#+7
        BL       ITC_DisableInterrupt
//  104 
//  105   /* Manual TSM modem shutdown */
//  106 
//  107   /* read TSM_RX_STEPS */
//  108   TsmRxSteps = (*((volatile uint32_t *)(0x80009204)));
        LDR      R0,??DataTable1  ;; 0x80009204
        LDR      R3,[R0, #+0]
//  109  
//  110   /* isolate the RX_WU_STEPS */
//  111   /* shift left to align with 32-bit addressing */
//  112   LastWarmupStep = (TsmRxSteps & 0x1f) << 2;
        MOVS     R4,#+124
        LSLS     R0,R3,#+2
        ANDS     R0,R0,R4
//  113   /* Read "current" TSM step and save this value for later */
//  114   LastWarmupData = (*((volatile uint32_t *)(0x80009300 + LastWarmupStep)));
        LDR      R2,??DataTable1_1  ;; 0x80009300
        ADDS     R0,R0,R2
        LDR      R1,[R0, #+0]
//  115 
//  116   /* isolate the RX_WD_STEPS */
//  117   /* right-shift bits down to bit 0 position */
//  118   /* left-shift to align with 32-bit addressing */
//  119   LastWarmdownStep = ((TsmRxSteps & 0x1f00) >> 8) << 2;
//  120   /* write "last warmdown data" to current TSM step to shutdown rx */
//  121   LastWarmdownData = (*((volatile uint32_t *)(0x80009300 + LastWarmdownStep)));
        LSRS     R3,R3,#+6
        ANDS     R4,R4,R3
        ADDS     R2,R4,R2
        LDR      R2,[R2, #+0]
//  122   (*((volatile uint32_t *)(0x80009300 + LastWarmupStep))) = LastWarmdownData;
        STR      R2,[R0, #+0]
//  123 
//  124   /* Abort */
//  125   MACA_WRITE(maca_control, 1);
        LDR      R2,??DataTable1_2  ;; 0x8000400c
        MOVS     R3,#+1
        STR      R3,[R2, #+0]
//  126   
//  127   /* Wait ~8us */
//  128   for (clk = maca_clk, i = 0; maca_clk - clk < 3 && i < 300; i++)
        LDR      R5,[R2, #+60]
        MOVS     R3,#+0
        STR      R3,[SP, #+0]
        MOVS     R4,#+150
        LSLS     R4,R4,#+1        ;; #+300
??ResumeMACASync_0:
        LDR      R6,[R2, #+60]
        SUBS     R6,R6,R5
        CMP      R6,#+3
        BCS      ??ResumeMACASync_1
        LDR      R6,[SP, #+0]
        CMP      R6,R4
        BCS      ??ResumeMACASync_1
        LDR      R6,[SP, #+0]
        ADDS     R6,R6,#+1
        STR      R6,[SP, #+0]
        B        ??ResumeMACASync_0
//  129     ;
//  130  
//  131   /* NOP */
//  132   MACA_WRITE(maca_control, 0);  
//  133   
//  134   /* Wait ~8us */  
//  135   for (clk = maca_clk, i = 0; maca_clk - clk < 3 && i < 300; i++)
??ResumeMACASync_2:
        LDR      R3,[SP, #+0]
        CMP      R3,R4
        BCS      ??ResumeMACASync_3
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        B        ??ResumeMACASync_4
??ResumeMACASync_1:
        STR      R3,[R2, #+0]
        LDR      R5,[R2, #+60]
??ResumeMACASync_4:
        STR      R3,[SP, #+0]
        LDR      R3,[R2, #+60]
        SUBS     R3,R3,R5
        CMP      R3,#+3
        BCC      ??ResumeMACASync_2
//  136     ;
//  137    
//  138 
//  139   /* restore original "last warmup step" data to TSM (VERY IMPORTANT!!!) */
//  140   (*((volatile uint32_t *)(0x80009300 + LastWarmupStep))) = LastWarmupData;
??ResumeMACASync_3:
        STR      R1,[R0, #+0]
//  141 
//  142   
//  143   
//  144   /* Clear all MACA interrupts - we should have gotten the ABORT IRQ */
//  145   MACA_WRITE(maca_clrirq, 0xFFFF);
        LDR      R0,??DataTable1_3  ;; 0xffff
        LDR      R1,??DataTable1_4  ;; 0x800040c4
        STR      R0,[R1, #+0]
//  146 
//  147   ITC_EnableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_EnableInterrupt
//  148 }
        POP      {R0,R1,R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  149 
//  150 
//  151 /************************************************************************************
//  152 *************************************************************************************
//  153 * Public functions
//  154 *************************************************************************************
//  155 ************************************************************************************/
//  156 
//  157 /************************************************************************************
//  158 * MACA_Interrupt
//  159 *
//  160 * This function is the MACA Interrupt Service Routine
//  161 *
//  162 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  163 void MACA_Interrupt(void)
//  164 {
MACA_Interrupt:
        PUSH     {R3-R7,LR}
//  165   uint32_t irqSrc;
//  166   irqSrc = maca_irq;
        LDR      R0,??DataTable1_5  ;; 0x800040c0
        LDR      R4,[R0, #+0]
//  167   maca_clrirq = irqSrc;
        STR      R4,[R0, #+4]
//  168   mMacaIsrEntryCounter++;
        LDR      R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//  169 
//  170   if( _is_action_started_interrupt(irqSrc) )
        LDR      R5,??DataTable1_7
        LSLS     R0,R4,#+16
        BPL      ??MACA_Interrupt_1
//  171   {
//  172     gRadioEvntFlags.Bits.action_started_flag = TRUE;
        LDR      R0,[R5, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
//  173   }
//  174   
//  175    
//  176   if(_is_action_complete_interrupt(irqSrc)){
??MACA_Interrupt_1:
        LDR      R0,[R5, #+0]
        LDR      R6,??DataTable1_2  ;; 0x8000400c
        LSLS     R1,R4,#+31
        BPL      ??MACA_Interrupt_2
//  177     gRadioEvntFlags.Bits.action_complete_flag = TRUE;
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
//  178     execute_current_message_callback();    
        BL       execute_current_message_callback
//  179     switch(maca_status_control_code){
        LDR      R0,[R5, #+0]
        MOVS     R7,#+128
        LDR      R1,[R6, #+4]
        LSLS     R1,R1,#+28
        LSRS     R1,R1,#+28
        CMP      R1,#+15
        BHI      ??MACA_Interrupt_3
        ADR      R2,??MACA_Interrupt_0
        LDRB     R2,[R2, R1]
        ADD      PC,PC,R2
        Nop      
        DATA
??MACA_Interrupt_0:
        DC8      0x10,0x1E,0x2A,0x2E
        DC8      0x32,0xE6,0xEA,0xEA
        DC8      0x36,0x40,0xEA,0xEA
        DC8      0xEA,0x5C,0x60,0x6A
        THUMB
//  180       case(cc_success):
//  181         {
//  182           gRadioEvntFlags.Bits.ac_success_flag = TRUE;
??MACA_Interrupt_4:
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
//  183           // notify main task that a new data request can
//  184           // be sent to MACA;
//  185           flag = TRUE;
        MOVS     R0,#+1
        LDR      R1,??DataTable1_6
        STRB     R0,[R1, #+1]
//  186         }
//  187         break;
??MACA_Interrupt_3:
        B        ??MACA_Interrupt_5
//  188       case(cc_timeout):
//  189         {
//  190           /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  191           ResumeMACASync();
??MACA_Interrupt_6:
        BL       ResumeMACASync
//  192           gRadioEvntFlags.Bits.ac_timeout_flag = TRUE;
        LDR      R0,[R5, #+0]
        ORRS     R7,R7,R0
        STR      R7,[R5, #+0]
//  193         }
//  194         break;
        B        ??MACA_Interrupt_5
//  195       case(cc_channel_busy):
//  196         {
//  197           gRadioEvntFlags.Bits.ac_channel_busy_flag = TRUE;
??MACA_Interrupt_7:
        LSRS     R1,R6,#+23
        B.N      ??MACA_Interrupt_8
//  198         }
//  199         break;
//  200       case(cc_crc_fail):
//  201         {
//  202           gRadioEvntFlags.Bits.ac_crc_failed_flag = TRUE;
??MACA_Interrupt_9:
        LSRS     R1,R6,#+22
        B.N      ??MACA_Interrupt_8
//  203         }
//  204         break;
//  205       case(cc_aborted):
//  206         {
//  207           gRadioEvntFlags.Bits.ac_aborted_flag = TRUE;
??MACA_Interrupt_10:
        LSRS     R1,R6,#+21
        B.N      ??MACA_Interrupt_11
//  208           ResumeMACASync();
//  209         }
//  210         break;
//  211       case(cc_no_ack):
//  212         {
//  213           /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  214           ResumeMACASync();
//  215           /* Not used in SMAC */
//  216         }
//  217         break;
//  218       case(cc_no_data):
//  219         {
//  220           /* Not used in SMAC */
//  221         }
//  222         break;
//  223       case(cc_late_start):
//  224         {
//  225           /* Not used in SMAC */
//  226         }
//  227         break;
//  228       case(cc_ext_timeout):
//  229         {
//  230           /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  231           ResumeMACASync();
??MACA_Interrupt_12:
        BL       ResumeMACASync
//  232           gRadioEvntFlags.Bits.ac_ext_timeout_flag = TRUE;
        LDR      R0,[R5, #+0]
        LSRS     R1,R6,#+17
        B.N      ??MACA_Interrupt_8
//  233         }
//  234         break;
//  235       case(cc_ext_pnd_timeout):
//  236         {
//  237           /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  238           ResumeMACASync();
??MACA_Interrupt_13:
        BL       ResumeMACASync
//  239           if ((irqSrc & maca_irq_crc )|| (irqSrc & maca_irq_flt ))
        MOVS     R0,#+192
        LSLS     R0,R0,#+5        ;; #+6144
        ANDS     R0,R0,R4
        BEQ      ??MACA_Interrupt_14
//  240           {
//  241             ResumeMACASync();
        BL       ResumeMACASync
//  242             gRadioEvntFlags.Bits.ac_timeout_flag = TRUE;
        LDR      R0,[R5, #+0]
        ORRS     R7,R7,R0
        STR      R7,[R5, #+0]
//  243           }
//  244           gRadioEvntFlags.Bits.ac_ext_pnd_timeout_flag = TRUE;
??MACA_Interrupt_14:
        LDR      R0,[R5, #+0]
        LSRS     R1,R6,#+16
        B.N      ??MACA_Interrupt_8
//  245           /* Not used in SMAC */
//  246         }
//  247         break;
//  248       case(cc_nc1):
//  249       case(cc_nc2):
//  250         {
//  251           /* Not used */
//  252         }
//  253         break;
//  254       case(cc_nc3):
//  255         {
//  256           /* Not used in SMAC */
//  257         }
//  258         break;
//  259       case(cc_cc_external_abort):
//  260         {
//  261           gRadioEvntFlags.Bits.ac_external_abort_flag = TRUE;
??MACA_Interrupt_15:
        LSLS     R1,R7,#+10
        B.N      ??MACA_Interrupt_8
//  262           /* Not used in SMAC */
//  263         }
//  264         break;
//  265       case(cc_not_completed):
//  266         {
//  267           /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  268           ResumeMACASync();
??MACA_Interrupt_16:
        BL       ResumeMACASync
//  269           gRadioEvntFlags.Bits.ac_not_completed_flag = TRUE;
        LDR      R0,[R5, #+0]
        LSLS     R1,R7,#+11
        B.N      ??MACA_Interrupt_8
//  270         }
//  271         break;
//  272       case(cc_bus_error):
//  273         {
//  274           gRadioEvntFlags.Bits.ac_dma_bus_error_flag = TRUE;
??MACA_Interrupt_17:
        LSLS     R1,R7,#+12
        B.N      ??MACA_Interrupt_8
//  275         }
//  276         break;
//  277       default:
//  278         {
//  279         }
//  280         break;
//  281     }
//  282   }
//  283   
//  284   else if(_is_checksum_failed_interrupt(irqSrc) && !_is_action_complete_interrupt(irqSrc))
??MACA_Interrupt_2:
        LDR      R1,??DataTable1_8  ;; 0x1001
        ANDS     R1,R1,R4
        LSRS     R2,R6,#+19
        CMP      R1,R2
        BNE      ??MACA_Interrupt_18
//  285   {
//  286     gRadioEvntFlags.Bits.checksum_failed_flag = TRUE;
        MOVS     R1,#+8
??MACA_Interrupt_11:
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
//  287     /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  288     ResumeMACASync();
        B        ??MACA_Interrupt_19
//  289   }
//  290   
//  291   else if(_is_data_indication_interrupt(irqSrc)){
??MACA_Interrupt_18:
        MOVS     R1,#+4
        TST      R4,R1
        BEQ      ??MACA_Interrupt_20
//  292     maca_control = (control_seq_abort | control_asap);
        LDR      R0,??DataTable1_9  ;; 0x201
        STR      R0,[R6, #+0]
//  293     if(FALSE == MLMEGetPromiscuousMode()){
        BL       MLMEGetPromiscuousMode
        CMP      R0,#+0
        BNE      ??MACA_Interrupt_21
//  294 #ifndef __ISM_MODE__
//  295       if( ((0x7E) == *((uint8_t *)(maca_dmarx+1))) && 
//  296           ((0xFF) == *((uint8_t *)(maca_dmarx+2)))){
        LDR      R0,[R6, #+116]
        ADDS     R0,R0,#+1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+126
        BNE      ??MACA_Interrupt_22
        LDR      R0,[R6, #+116]
        ADDS     R0,R0,#+2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??MACA_Interrupt_21
//  297 #else
//  298 		if( ((0x7E) == *((uint8_t *)(maca_dmarx+2))) && 
//  299 			((0xFF) == *((uint8_t *)(maca_dmarx+3)))){
//  300 #endif
//  301         gRadioEvntFlags.Bits.data_indication_flag = TRUE;
//  302         gRadioEvntFlags.Bits.action_complete_flag = TRUE;
//  303         gRadioEvntFlags.Bits.ac_success_flag = TRUE;
//  304         execute_current_message_callback();
//  305       }
//  306       else{
//  307         gRadioEvntFlags.Bits.ac_not_completed_flag = TRUE;
??MACA_Interrupt_22:
        LDR      R0,[R5, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+11       ;; #+262144
        B.N      ??MACA_Interrupt_8
//  308       }
//  309     }
//  310     else{
//  311       gRadioEvntFlags.Bits.data_indication_flag = TRUE;
//  312       gRadioEvntFlags.Bits.action_complete_flag = TRUE;
//  313       gRadioEvntFlags.Bits.ac_success_flag = TRUE;
??MACA_Interrupt_21:
        LDR      R0,[R5, #+0]
        MOVS     R1,#+112
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
//  314       execute_current_message_callback();
        BL       execute_current_message_callback
        B        ??MACA_Interrupt_5
//  315     }
//  316   }
//  317   else if( _is_filter_failed_interrupt(irqSrc))
??MACA_Interrupt_20:
        LSLS     R2,R4,#+20
        BPL      ??MACA_Interrupt_23
//  318   {
//  319     /* Prevent MACA lock-up and prepare the event to inject on aborted or not_completed irq */
//  320     ResumeMACASync(); 
        BL       ResumeMACASync
//  321     gRadioEvntFlags.Bits.filter_failed_flag = TRUE;
        LDR      R0,[R5, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+13       ;; #+1048576
        B.N      ??MACA_Interrupt_8
//  322   }
//  323   
//  324   else if(_is_sync_detected_interrupt(irqSrc)){
??MACA_Interrupt_23:
        LSLS     R2,R4,#+17
        BPL      ??MACA_Interrupt_24
//  325     gRadioEvntFlags.Bits.sync_detected_flag = TRUE;
        MOVS     R1,#+2
        B.N      ??MACA_Interrupt_8
//  326   }
//  327   else if(_is_a_timeout_interrupt(irqSrc)){
??MACA_Interrupt_24:
        MOVS     R2,#+144
        LSLS     R2,R2,#+6        ;; #+9216
        ANDS     R2,R2,R4
        BEQ      ??MACA_Interrupt_25
//  328     gRadioEvntFlags.Bits.timeout_flag = TRUE;
??MACA_Interrupt_8:
        ORRS     R1,R1,R0
        STR      R1,[R5, #+0]
        B        ??MACA_Interrupt_5
//  329   }
//  330   else if(_is_fifo_level_interrupt(irqSrc)){
??MACA_Interrupt_25:
        LSLS     R0,R4,#+22
        BPL      ??MACA_Interrupt_5
//  331     ResumeMACASync();
??MACA_Interrupt_19:
        BL       ResumeMACASync
//  332   }
//  333   if(_is_reset_interrupt(irqSrc)){
//  334   }
//  335   if(_is_an_unused_interrupt(irqSrc)){
//  336    }
//  337  
//  338 
//  339   else {
//  340   }
//  341   mMacaIsrEntryCounter--;
??MACA_Interrupt_5:
        LDR      R0,??DataTable1_6
        LDRB     R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STRB     R1,[R0, #+0]
//  342 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     0x80009204

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     0x80009300

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     0x8000400c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     0xffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     0x800040c4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     0x800040c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     mMacaIsrEntryCounter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     gRadioEvntFlags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     0x1001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     0x201

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  343 
//  344 
//  345 
//  346 /************************************************************************************
//  347 *************************************************************************************
//  348 * Private Debug stuff
//  349 *************************************************************************************
//  350 ************************************************************************************/
//  351 
//  352 
// 
//   2 bytes in section .bss
// 478 bytes in section .text
// 
// 478 bytes of CODE memory
//   2 bytes of DATA memory
//
//Errors: none
//Warnings: none
