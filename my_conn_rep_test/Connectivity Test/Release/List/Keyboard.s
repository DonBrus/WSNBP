///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Utilities\Keyboard.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDDCA.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Utilities\Keyboard.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\Keyboard.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Gpio_SetPortDir
        EXTERN Gpio_SetPortFunction
        EXTERN Gpio_WrPortSetting

        PUBLIC KbGpioInit

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Application\Utilities\Keyboard.c
//    1 /************************************************************************************
//    2 * Keyboard.c
//    3 *
//    4 * This file contains the keyboard initialization function.
//    5 *
//    6 * Author(s): 
//    7 *
//    8 * Copyright (c) 2008, Freescale, Inc.  All rights reserved.
//    9 *
//   10 *
//   11 * No part of this document must be reproduced in any form - including copied,
//   12 * transcribed, printed or by any electronic means - without specific written
//   13 * permission from Freescale.
//   14 *
//   15 Revision history:
//   16    Date                     Author                                    Comments
//   17    ----------               ----------------------                    -------
//   18 ************************************************************************************/
//   19 #include "Keyboard.h"
//   20 
//   21 #if (gKeyboardModule_d)
//   22 
//   23 /******************************************************************************
//   24 *******************************************************************************
//   25 * Public Macros
//   26 *******************************************************************************
//   27 ******************************************************************************/
//   28 
//   29 /*None*/
//   30 
//   31 /******************************************************************************
//   32 *******************************************************************************
//   33 * Private prototypes
//   34 *******************************************************************************
//   35 ******************************************************************************/
//   36 
//   37 /******************************************************************************
//   38 *******************************************************************************
//   39 * Private type definitions
//   40 *******************************************************************************
//   41 ******************************************************************************/
//   42 
//   43 /******************************************************************************
//   44 *******************************************************************************
//   45 * Private Memory Declarations
//   46 *******************************************************************************
//   47 ******************************************************************************/
//   48 
//   49 /******************************************************************************
//   50 *******************************************************************************
//   51 * Public functions
//   52 *******************************************************************************
//   53 ******************************************************************************/
//   54 
//   55 /******************************************************************************
//   56 * LED_Init
//   57 *
//   58 * Initialize the LED system.
//   59 *******************************************************************************/
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void KbGpioInit(void)
//   62 {
KbGpioInit:
        PUSH     {R3-R5,LR}
//   63   /* Set as input*/
//   64   (void)Gpio_SetPortDir(gKbGpioPort_c, gKbGpioAllZeros_c, gKbGpioMask_c);
        MOVS     R4,#+241
        LSLS     R4,R4,#+22       ;; #+1010827264
        MOVS     R2,R4
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
//   65   /* Pullup enable and select pullup*/
//   66   (void)Gpio_WrPortSetting(gKbGpioPort_c, gGpioPullUpEnAttr_c, gKbGpioAllOnes_c, gKbGpioMask_c);
        MOVS     R5,#+0
        MVNS     R5,R5            ;; #-1
        MOVS     R3,R4
        MOVS     R2,R5
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//   67   (void)Gpio_WrPortSetting(gKbGpioPort_c, gGpioPullUpSelAttr_c, gKbGpioAllOnes_c, gKbGpioMask_c);
        MOVS     R3,R4
        MOVS     R2,R5
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//   68   /*Read from pads*/
//   69   (void)Gpio_WrPortSetting(gKbGpioPort_c, gGpioInputDataSelAttr_c, gKbGpioAllZeros_c, gKbGpioMask_c);
        MOVS     R3,R4
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//   70   /* Gpio normal mode function */
//   71   Gpio_SetPortFunction(gKbGpioPort_c, gGpioNormalMode_c, gKbGpioMask_c);
        MOVS     R2,R4
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Gpio_SetPortFunction
//   72   
//   73 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   74 
//   75 /******************************************************************************
//   76 *******************************************************************************
//   77 * Private functions
//   78 *******************************************************************************
//   79 ******************************************************************************/
//   80 
//   81 /******************************************************************************
//   82 *******************************************************************************
//   83 * Unit Testing
//   84 *******************************************************************************
//   85 ******************************************************************************/
//   86 
//   87 /* None */
//   88 
//   89 #endif /* gLEDSupported_d */
//   90 
// 
// 72 bytes in section .text
// 
// 72 bytes of CODE memory
//
//Errors: none
//Warnings: none
