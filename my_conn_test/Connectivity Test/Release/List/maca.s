///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Source\maca.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDE58.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Source\maca.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\maca.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC ResetMaca

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Drivers\Source\maca.c
//    1 /************************************************************************************
//    2 * maca funcions implementation 
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
//   13 
//   14 #include "../Interface/ghdr/maca.h"
//   15 
//   16 
//   17 /************************************************************************************
//   18 *************************************************************************************
//   19 * Private macros
//   20 *************************************************************************************
//   21 ************************************************************************************/
//   22 
//   23 /************************************************************************************
//   24 *************************************************************************************
//   25 * Private prototypes
//   26 *************************************************************************************
//   27 ************************************************************************************/
//   28 void ResetMaca(void);
//   29 
//   30 /************************************************************************************
//   31 *************************************************************************************
//   32 * Private type definitions
//   33 *************************************************************************************
//   34 ************************************************************************************/
//   35 
//   36 /************************************************************************************
//   37 *************************************************************************************
//   38 * Private memory declarations
//   39 *************************************************************************************
//   40 ************************************************************************************/
//   41 
//   42 /************************************************************************************
//   43 *************************************************************************************
//   44 * Public functions
//   45 *************************************************************************************
//   46 ************************************************************************************/
//   47 
//   48 /************************************************************************************
//   49 * main ResetMaca
//   50 *
//   51 * Resets MACA module.
//   52 *
//   53 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   54 void ResetMaca(void)
//   55 {
//   56   uint32_t tmp;
//   57   MACA_WRITE(maca_control, control_seq_nop); 
ResetMaca:
        LDR      R0,??ResetMaca_0  ;; 0x8000400c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   58   do
//   59   {
//   60     tmp = MACA_READ(maca_status);
??ResetMaca_1:
        LDR      R1,[R0, #+4]
//   61   }
//   62   while ((tmp & maca_status_cc_mask) == cc_not_completed);
        LSLS     R1,R1,#+28
        LSRS     R1,R1,#+28
        CMP      R1,#+14
        BEQ      ??ResetMaca_1
//   63  
//   64   /* Clear all interrupts. */
//   65   MACA_WRITE(maca_clrirq,   0xFFFF);
        LDR      R0,??ResetMaca_0+0x4  ;; 0xffff
        LDR      R1,??ResetMaca_0+0x8  ;; 0x800040c4
        STR      R0,[R1, #+0]
//   66 }
        BX       LR               ;; return
        DATA
??ResetMaca_0:
        DATA32
        DC32     0x8000400c
        DC32     0xffff
        DC32     0x800040c4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   67 
// 
// 36 bytes in section .text
// 
// 36 bytes of CODE memory
//
//Errors: none
//Warnings: none
