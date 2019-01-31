///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Utilities\Leds.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDDCB.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Utilities\Leds.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\Leds.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Gpio_GetPinData
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinDir
        EXTERN Gpio_SetPinFunction
        EXTERN Gpio_SetPinReadSource
        EXTERN Gpio_TogglePin

        PUBLIC LED_GetLed
        PUBLIC LED_Init
        PUBLIC LED_SetHex
        PUBLIC LED_ToggleLed
        PUBLIC LED_TurnOffAllLeds
        PUBLIC LED_TurnOffLed
        PUBLIC LED_TurnOnAllLeds
        PUBLIC LED_TurnOnLed
        PUBLIC Set_Pins

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Application\Utilities\Leds.c
//    1 /************************************************************************************
//    2 * Leds.c
//    3 *
//    4 * This file contains util funcions for the LEDs management.
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
//   19 #include "Leds.h"
//   20 
//   21 #if (gLEDSupported_d)
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void LED_Init(void)
//   61 {
LED_Init:
        PUSH     {R7,LR}
//   62   InitLed();
        MOVS     R0,#+15
        BL       Set_Pins
//   63   TurnOffLeds();
        BL       LED_TurnOffAllLeds
//   64   Led3Off();
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//   65 }
        POP      {R0,R3}
        BX       R3               ;; return
//   66 
//   67 
//   68 /******************************************************************************
//   69 * Set_Pins
//   70 *
//   71 * Set a PIN with Direction Out, this PIN can be used as a LED.
//   72 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void Set_Pins( LED_t LEDNr )
//   74 {
Set_Pins:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   75   if (LEDNr & LED1){
        LSLS     R0,R4,#+31
        BPL      ??Set_Pins_0
//   76     Gpio_SetPinFunction(LED1_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinFunction
//   77     Gpio_SetPinReadSource(LED1_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinReadSource
//   78     Gpio_SetPinDir(LED1_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinDir
//   79   Gpio_SetPinData(LED1_PIN, gGpioPinStateHigh_c);
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//   80   }
//   81   if (LEDNr & LED2){
??Set_Pins_0:
        LSLS     R0,R4,#+30
        BPL      ??Set_Pins_1
//   82     Gpio_SetPinFunction(LED2_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinFunction
//   83     Gpio_SetPinReadSource(LED2_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinReadSource
//   84     Gpio_SetPinDir(LED2_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinDir
//   85     Gpio_SetPinData(LED2_PIN, gGpioPinStateHigh_c);
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//   86   }
//   87   if (LEDNr & LED3){
??Set_Pins_1:
        LSLS     R0,R4,#+29
        BPL      ??Set_Pins_2
//   88     Gpio_SetPinFunction(LED3_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinFunction
//   89     Gpio_SetPinReadSource(LED3_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinReadSource
//   90     Gpio_SetPinDir(LED3_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinDir
//   91     Gpio_SetPinData(LED3_PIN, gGpioPinStateHigh_c);
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//   92   }
//   93   if (LEDNr & LED4){
??Set_Pins_2:
        LSLS     R0,R4,#+28
        BPL      ??Set_Pins_3
//   94     Gpio_SetPinFunction(LED4_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinFunction
//   95     Gpio_SetPinReadSource(LED4_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinReadSource
//   96     Gpio_SetPinDir(LED4_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinDir
//   97     Gpio_SetPinData(LED4_PIN, gGpioPinStateHigh_c);
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//   98   }
//   99 }
??Set_Pins_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  100 
//  101 /******************************************************************************
//  102 * LED_GetLed
//  103 *
//  104 * Get LED state.
//  105 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 LedState_t LED_GetLed( LED_t LEDNr)                      
//  107 {
LED_GetLed:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
//  108   GpioPinState_t gpioPinState;
//  109   LED_t LEDpinsState = 0;
//  110   int8_t ReturnSingleLED = 0;
//  111   
//  112   if ( (LEDNr == LED1) || (LEDNr == LED2) || (LEDNr == LED3) || (LEDNr == LED4) )
        CMP      R0,#+1
        BEQ      ??LED_GetLed_0
        CMP      R0,#+2
        BEQ      ??LED_GetLed_0
        CMP      R0,#+4
        BEQ      ??LED_GetLed_0
        CMP      R0,#+8
        BNE      ??LED_GetLed_1
//  113     ReturnSingleLED = 1;
??LED_GetLed_0:
        MOVS     R5,#+1
        B        ??LED_GetLed_2
//  114   else
//  115     ReturnSingleLED = 0;
??LED_GetLed_1:
        MOVS     R5,#+0
//  116   
//  117   if (LEDNr & LED1)
??LED_GetLed_2:
        LSLS     R0,R4,#+31
        BPL      ??LED_GetLed_3
//  118   {
//  119     Gpio_GetPinData(LED1_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+23
        BL       Gpio_GetPinData
//  120     if (ReturnSingleLED)
        CMP      R5,#+0
        BNE      ??LED_GetLed_4
//  121       return !gpioPinState;
//  122   }
//  123   LEDpinsState |= gpioPinState << 0;
??LED_GetLed_3:
        MOV      R0,SP
        LDRB     R6,[R0, #+0]
//  124   
//  125   if (LEDNr & LED2)
        LSLS     R0,R4,#+30
        BPL      ??LED_GetLed_5
//  126   {
//  127     Gpio_GetPinData(LED2_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+24
        BL       Gpio_GetPinData
//  128     if (ReturnSingleLED)
        CMP      R5,#+0
        BNE      ??LED_GetLed_4
//  129       return !gpioPinState;
//  130   }
//  131   LEDpinsState |= gpioPinState << 1;
??LED_GetLed_5:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        ORRS     R0,R0,R6
        MOVS     R6,R0
//  132   
//  133   if (LEDNr & LED3)
        LSLS     R0,R4,#+29
        BPL      ??LED_GetLed_6
//  134   {
//  135     Gpio_GetPinData(LED3_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+25
        BL       Gpio_GetPinData
//  136     if (ReturnSingleLED)
        CMP      R5,#+0
        BNE      ??LED_GetLed_4
//  137       return !gpioPinState;
//  138   }
//  139   LEDpinsState |= gpioPinState << 2;
??LED_GetLed_6:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+2
        ORRS     R0,R0,R6
        MOVS     R6,R0
//  140   
//  141   if (LEDNr & LED4)
        LSLS     R0,R4,#+28
        BPL      ??LED_GetLed_7
//  142   {
//  143     Gpio_GetPinData(LED4_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+44
        BL       Gpio_GetPinData
//  144     if (ReturnSingleLED)
        CMP      R5,#+0
        BEQ      ??LED_GetLed_7
//  145       return !gpioPinState;
??LED_GetLed_4:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        B        ??LED_GetLed_8
//  146   }
//  147   LEDpinsState |= gpioPinState << 3;
//  148   
//  149   return ~LEDpinsState;
??LED_GetLed_7:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R1,R0,#+3
        ORRS     R1,R1,R6
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        MVNS     R0,R1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
??LED_GetLed_8:
        POP      {R1,R2,R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  150   
//  151 }
//  152 
//  153 /******************************************************************************
//  154 * LED_ToggleLed
//  155 *
//  156 * Toggles on or more LEDs. Doesn't check/affect flashing states.
//  157 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  158 void LED_ToggleLed(LED_t LEDNr)
//  159 {
LED_ToggleLed:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  160   if (LEDNr & LED1){    
        LSLS     R0,R4,#+31
        BPL      ??LED_ToggleLed_0
//  161     Led1Toggle();
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  162   }
//  163   if (LEDNr & LED2){    
??LED_ToggleLed_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_ToggleLed_1
//  164     Led2Toggle();
        MOVS     R0,#+24
        BL       Gpio_TogglePin
//  165   }
//  166   if (LEDNr & LED3){    
??LED_ToggleLed_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_ToggleLed_2
//  167     Led3Toggle();
        MOVS     R0,#+25
        BL       Gpio_TogglePin
//  168   }
//  169   if (LEDNr & LED4){    
??LED_ToggleLed_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_ToggleLed_3
//  170     Led4Toggle();
        MOVS     R0,#+44
        BL       Gpio_TogglePin
//  171   }
//  172 }
??LED_ToggleLed_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  173 
//  174 /******************************************************************************
//  175 * LED_TurnOffLed
//  176 *
//  177 * Turns off on or more LEDs. Doesn't check/affect flashing states.
//  178 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 void LED_TurnOffLed(LED_t LEDNr)
//  180 {
LED_TurnOffLed:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  181   if (LEDNr & LED1)
        LSLS     R0,R4,#+31
        BPL      ??LED_TurnOffLed_0
//  182     Led1Off();
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  183   if (LEDNr & LED2)
??LED_TurnOffLed_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_TurnOffLed_1
//  184     Led2Off();
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  185   if (LEDNr & LED3)
??LED_TurnOffLed_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_TurnOffLed_2
//  186     Led3Off();
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  187   if (LEDNr & LED4)
??LED_TurnOffLed_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_TurnOffLed_3
//  188     Led4Off();
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  189 }
??LED_TurnOffLed_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  190 
//  191 /******************************************************************************
//  192 * LED_TurnOnLed
//  193 *
//  194 * Turn on one or more LEDs. Doesn't check/affect flashing states.
//  195 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 void LED_TurnOnLed(LED_t LEDNr)
//  197 {
LED_TurnOnLed:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  198   if (LEDNr & LED1)
        LSLS     R0,R4,#+31
        BPL      ??LED_TurnOnLed_0
//  199     Led1On();
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  200   if (LEDNr & LED2)
??LED_TurnOnLed_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_TurnOnLed_1
//  201     Led2On();
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  202   if (LEDNr & LED3)
??LED_TurnOnLed_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_TurnOnLed_2
//  203     Led3On();
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  204   if (LEDNr & LED4)
??LED_TurnOnLed_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_TurnOnLed_3
//  205     Led4On();
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  206 }
??LED_TurnOnLed_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  207 
//  208 /******************************************************************************
//  209 * LED_TurnOffAllLeds
//  210 *
//  211 * Turn off all LEDs. 
//  212 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 void LED_TurnOffAllLeds(void)
//  214 {
LED_TurnOffAllLeds:
        PUSH     {R7,LR}
//  215   LED_TurnOffLed(LED_ALL);
        MOVS     R0,#+15
        BL       LED_TurnOffLed
//  216 }
        POP      {R0,R3}
        BX       R3               ;; return
//  217 
//  218 /******************************************************************************
//  219 * LED_TurnOnAllLeds
//  220 *
//  221 * Turn on all LEDs. 
//  222 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 void LED_TurnOnAllLeds(void)
//  224 {
LED_TurnOnAllLeds:
        PUSH     {R7,LR}
//  225   LED_TurnOnLed(LED_ALL);
        MOVS     R0,#+15
        BL       LED_TurnOnLed
//  226 }
        POP      {R0,R3}
        BX       R3               ;; return
//  227 
//  228 /************************************************************************************
//  229 * ShowBinaryLedValue
//  230 *
//  231 * The purpose of this function is to show the binary value received as parameter 
//  232 * through four LEDs, then the maximum possible u8leds_value is the 0x0F.
//  233 *
//  234 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 void LED_SetHex(uint8_t u8HexValue){
LED_SetHex:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  236 
//  237   TurnOffLeds(); 
        BL       LED_TurnOffAllLeds
//  238 
//  239   if(0x01 & u8HexValue)
        LSLS     R0,R4,#+31
        BPL      ??LED_SetHex_0
//  240   {
//  241     Led4On();
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  242   }
//  243   if((0x01<<1) & u8HexValue)
??LED_SetHex_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_SetHex_1
//  244   {
//  245     Led3On();
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  246   }
//  247   if((0x01<<2) & u8HexValue)
??LED_SetHex_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_SetHex_2
//  248   {
//  249     Led2On();
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  250   }
//  251   if((0x01<<3) & u8HexValue)
??LED_SetHex_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_SetHex_3
//  252   {
//  253     Led1On();
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  254   }
//  255   
//  256 }
??LED_SetHex_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  257 
//  258 /******************************************************************************
//  259 *******************************************************************************
//  260 * Private functions
//  261 *******************************************************************************
//  262 ******************************************************************************/
//  263 
//  264 /******************************************************************************
//  265 *******************************************************************************
//  266 * Unit Testing
//  267 *******************************************************************************
//  268 ******************************************************************************/
//  269 
//  270 /* None */
//  271 
//  272 #endif /* gLEDSupported_d */
//  273 
// 
// 580 bytes in section .text
// 
// 580 bytes of CODE memory
//
//Errors: none
//Warnings: none
