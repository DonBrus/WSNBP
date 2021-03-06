///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Source\Delay.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDC8E.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Source\Delay.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\Delay.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC DelayMs
        PUBLIC DelayUs

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Drivers\Source\Delay.c
//    1 /************************************************************************************
//    2 * Delay.c
//    3 * File that contains delay routines for miliseconds and microseconds.
//    4 *
//    5 * (c) Copyright 2008, Freescale, Inc.  All rights reserved.
//    6 *
//    7 *
//    8 * No part of this document must be reproduced in any form - including copied,
//    9 * transcribed, printed or by any electronic means - without specific written
//   10 * permission from Freescale.
//   11 *
//   12 ************************************************************************************/
//   13 #include "../../../PLM/Interface/EmbeddedTypes.h"
//   14 #include "../../../SMAC/Drivers/Configure/board_config.h"
//   15 
//   16 #define SYSTEM_CLOCK (PLATFORM_CLOCK/1000)
//   17 
//   18 /***********************************************************************************/
//   19 // this should be compiled in ARM mode, was tested only with ADS compiler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void DelayMs(uint32_t ms)
//   21 {
DelayMs:
        SUB      SP,SP,#+4
        B        ??DelayMs_0
//   22   volatile uint32_t i;
//   23   while(ms--)
//   24   {
//   25     i = (uint32_t)(SYSTEM_CLOCK/7); // 1000 us , 7 CPU cycles / loop
??DelayMs_1:
        LDR      R1,??DataTable0  ;; 0xd64
        STR      R1,[SP, #+0]
//   26     while(i--);
??DelayMs_2:
        LDR      R1,[SP, #+0]
        SUBS     R2,R1,#+1
        STR      R2,[SP, #+0]
        CMP      R1,#+0
        BNE      ??DelayMs_2
//   27   }
??DelayMs_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BNE      ??DelayMs_1
//   28 }
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DATA32
        DC32     0xd64
//   29 
//   30 /***********************************************************************************/
//   31 // this should be compiled in ARM mode, was tested only with ADS compiler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void DelayUs(uint32_t us)
//   33 {
DelayUs:
        SUB      SP,SP,#+4
        B        ??DelayUs_0
//   34   volatile uint32_t i;
//   35   while(us--)
//   36   {
//   37     i = (uint32_t)(SYSTEM_CLOCK/7000); // 1 us , 7 CPU cycles / loop
??DelayUs_1:
        MOVS     R1,#+3
        STR      R1,[SP, #+0]
//   38     while(i--);
??DelayUs_2:
        LDR      R1,[SP, #+0]
        SUBS     R2,R1,#+1
        STR      R2,[SP, #+0]
        CMP      R1,#+0
        BNE      ??DelayUs_2
//   39   }
??DelayUs_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BNE      ??DelayUs_1
//   40 }
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   41 
//   42 /***********************************************************************************/
// 
// 64 bytes in section .text
// 
// 64 bytes of CODE memory
//
//Errors: none
//Warnings: none
