///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\PLM\Source\Common\Sys\PlatformInit.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDEB8.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\PLM\Source\Common\Sys\PlatformInit.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\PlatformInit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC PlatformPortInit
        PUBLIC StartNvmReg
        PUBLIC StopNvmReg

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\PLM\Source\Common\Sys\PlatformInit.c
//    1 /************************************************************************************
//    2 *
//    3 * (c) Copyright 2007, Freescale, Inc.  All rights reserved.
//    4 *
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 ************************************************************************************/
//   11 
//   12 #include "../../../Interface/PortConfig.h"
//   13 #include "../../../Interface/PlatformInit.h"
//   14 #include "../../../Interface/EmbeddedTypes.h"
//   15 #include "../../../LibInterface/GPIO_Interface.h"
//   16 #include "../../../Interface/RF_Config.h"
//   17 
//   18 
//   19 /* CRM register containing the control of NVM regulator */
//   20 #define VregCntl            (*((volatile unsigned long*)(0x80003048)))
//   21 #define VREG_1P8V_EN        0x00000080UL
//   22 #define BUCK_BYPASS_EN      0x00000004UL
//   23 #define BUCK_EN             0x00000001UL
//   24 
//   25 
//   26 
//   27 static void PlatformInitGpio(void);
//   28 
//   29 /**************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void PlatformPortInit(void)
//   31 {
//   32   PlatformInitGpio();
PlatformPortInit:
        MOVS     R0,#+128
        LSLS     R0,R0,#+24       ;; #-2147483648
        MOVS     R1,#+240
        LSLS     R1,R1,#+18       ;; #+62914560
        STR      R1,[R0, #+8]
        MOVS     R2,#+0
        STR      R2,[R0, #+12]
        STR      R1,[R0, #+0]
        STR      R2,[R0, #+4]
        MOVS     R1,#+0
        MVNS     R1,R1            ;; #-1
        STR      R1,[R0, #+16]
        STR      R1,[R0, #+20]
        STR      R2,[R0, #+24]
        STR      R2,[R0, #+28]
        STR      R2,[R0, #+32]
        STR      R2,[R0, #+36]
        STR      R2,[R0, #+40]
        STR      R2,[R0, #+44]
        MOVS     R1,#+192
        LSLS     R1,R1,#+6        ;; #+12288
        STR      R1,[R0, #+48]
        LDR      R1,??DataTable2  ;; 0x8001c000
        STR      R1,[R0, #+52]
        STR      R2,[R0, #+56]
        STR      R2,[R0, #+60]
        MOVS     R1,#+192
        LSLS     R1,R1,#+24       ;; #-1073741824
        STR      R1,[R0, #+64]
        MOVS     R1,#+223
        STR      R1,[R0, #+68]
//   33 }
        BX       LR               ;; return
//   34 
//   35 /**************************************************************************************/
//   36 /*
//   37   Activates the NVM regulator via CRM
//   38 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void StartNvmReg(void)
//   40 {
StartNvmReg:
        SUB      SP,SP,#+4
//   41   volatile uint32_t counter;
//   42 
//   43   VregCntl &= (~BUCK_EN);
        LDR      R0,??DataTable2_1  ;; 0x80003048
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        BICS     R1,R1,R2
        STR      R1,[R0, #+0]
//   44   VregCntl |= BUCK_BYPASS_EN;
        LDR      R1,[R0, #+0]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        STR      R2,[R0, #+0]
//   45 
//   46   counter = 18200;
        LDR      R1,??DataTable2_2  ;; 0x4718
        STR      R1,[SP, #+0]
//   47   while(counter--);
??StartNvmReg_0:
        LDR      R1,[SP, #+0]
        SUBS     R2,R1,#+1
        STR      R2,[SP, #+0]
        CMP      R1,#+0
        BNE      ??StartNvmReg_0
//   48 
//   49   VregCntl |= VREG_1P8V_EN;
        LDR      R1,[R0, #+0]
        MOVS     R2,#+128
        ORRS     R2,R2,R1
        STR      R2,[R0, #+0]
//   50   counter = 5200;
        B.N      ?Subroutine0
//   51   while(counter--);
//   52 }
//   53 
//   54 /**************************************************************************************/
//   55 /*
//   56   Stops the NVM regulator via CRM
//   57 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void StopNvmReg(void)
//   59 {
StopNvmReg:
        SUB      SP,SP,#+4
//   60   volatile uint32_t counter;
//   61 
//   62   VregCntl &= ~VREG_1P8V_EN;
        LDR      R0,??DataTable2_1  ;; 0x80003048
        LDR      R1,[R0, #+0]
        MOVS     R2,#+128
        BICS     R1,R1,R2
        STR      R1,[R0, #+0]
//   63   counter = 5200;
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//   64   while(counter--);
//   65 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R0,??DataTable2_3  ;; 0x1450
        STR      R0,[SP, #+0]
??Subroutine0_0:
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE      ??Subroutine0_0
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0x8001c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     0x80003048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     0x4718

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     0x1450

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   66 
//   67 /**************************************************************************************/
//   68 
//   69 static void PlatformInitGpio(void)
//   70 {
//   71   GPIO_REGS_P->DataLo = gDataLoValue_c;                  //MBAR_GPIO + 0x08
//   72   GPIO_REGS_P->DataHi = gDataHiValue_c;                  //MBAR_GPIO + 0x0C
//   73 
//   74   GPIO_REGS_P->DirLo =  gDirLoValue_c;                   //MBAR_GPIO + 0x00
//   75   GPIO_REGS_P->DirHi =  gDirHiValue_c;                   //MBAR_GPIO + 0x04
//   76 
//   77   GPIO_REGS_P->PuEnLo = gPuEnLoValue_c;                  //MBAR_GPIO + 0x10
//   78   GPIO_REGS_P->PuEnHi = gPuEnHiValue_c;                  //MBAR_GPIO + 0x14
//   79   GPIO_REGS_P->FuncSel0 = gFuncSel0Value_c;              //MBAR_GPIO + 0x18
//   80   GPIO_REGS_P->FuncSel1 = gFuncSel1Value_c;              //MBAR_GPIO + 0x1C
//   81   GPIO_REGS_P->FuncSel2 = gFuncSel2Value_c;              //MBAR_GPIO + 0x20
//   82   GPIO_REGS_P->FuncSel3 = gFuncSel3Value_c;              //MBAR_GPIO + 0x24
//   83   GPIO_REGS_P->InputDataSelLo = gInputDataSelLoValue_c;  //MBAR_GPIO + 0x28
//   84   GPIO_REGS_P->InputDataSelHi = gInputDataSelHiValue_c;  //MBAR_GPIO + 0x2C
//   85   GPIO_REGS_P->PuSelLo = gPuSelLoValue_c;                //MBAR_GPIO + 0x30
//   86   GPIO_REGS_P->PuSelHi = gPuSelHiValue_c;                //MBAR_GPIO + 0x34
//   87   GPIO_REGS_P->HystEnLo = gHystEnLoValue_c;              //MBAR_GPIO + 0x38
//   88   GPIO_REGS_P->HystEnHi = gHystEnHiValue_c;              //MBAR_GPIO + 0x3C
//   89   GPIO_REGS_P->PuKeepLo = gPuKeepLoValue_c;              //MBAR_GPIO + 0x40
//   90   GPIO_REGS_P->PuKeepHi = gPuKeepHiValue_c;              //MBAR_GPIO + 0x44 
//   91 }
// 
// 154 bytes in section .text
// 
// 154 bytes of CODE memory
//
//Errors: none
//Warnings: none
