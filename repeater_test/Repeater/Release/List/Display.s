///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  14:41:04
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\Application\Utilities\Display.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWF8D4.tmp
//        (D:\Users\Brus\Documents\repeater_test\Repeater\Application\Utilities\Display.c
//        -D NDEBUG -D F24MHZ -D SECURITY_ENABLED -D MC13226Included_d=0
//        --preprocess=cs
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List -lC
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List -lB
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List
//        --diag_suppress Pe014,Pe001,Pe991,Pa039 -o
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\Obj --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --endian=little --cpu=ARM7TDMI-S --fpu=None
//        --dlib_config "C:\HDDPrograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Drivers\Interface\
//        -I D:\Users\Brus\Documents\repeater_test\Repeater\PLM\Interface\
//        --cpu_mode thumb -On --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List\Display.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DelayMs
        EXTERN DelayUs
        EXTERN Gpio_GetPortData
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinDir
        EXTERN Gpio_SetPinFunction
        EXTERN Gpio_SetPinReadSource
        EXTERN Gpio_SetPortData
        EXTERN Gpio_SetPortDir
        EXTERN Gpio_SetPortFunction
        EXTERN Gpio_WrPortSetting
        EXTERN LCD_WriteString
        EXTERN __aeabi_idiv
        EXTERN __aeabi_idivmod
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN gLCDNormalFont
        EXTERN gLCDNormalIndex
        EXTERN gLCDVerdanaFont
        EXTERN gLCDVerdanaIndex

        PUBLIC LCD_CheckError
        PUBLIC LCD_ClearDisplay
        PUBLIC LCD_ClearLine
        PUBLIC LCD_ClearPage
        PUBLIC LCD_DrawIcon
        PUBLIC LCD_Init
        PUBLIC LCD_SetBacklight
        PUBLIC LCD_SetFont
        PUBLIC LCD_WriteBytes
        PUBLIC LCD_WriteCharacter
        PUBLIC LCD_WriteCommand
        PUBLIC LCD_WriteData
        PUBLIC LCD_WritePixel
        PUBLIC LCD_WriteStringDecValue
        PUBLIC LCD_WriteStringValue
        PUBLIC LCD_WriteString_NormalFont
        PUBLIC aLCDFont
        PUBLIC gaHexValue

// D:\Users\Brus\Documents\repeater_test\Repeater\Application\Utilities\Display.c
//    1 /************************************************************************************
//    2 * This is the source file for Display Driver.
//    3 *
//    4 *
//    5 * (c) Copyright 2008, Freescale, Inc.  All rights reserved.
//    6 *
//    7 *
//    8 * No part of this document must be reproduced in any form - including copied,
//    9 * transcribed, printed or by any electronic means - without specific written
//   10 * permission from Freescale Semiconductor.
//   11 ************************************************************************************/
//   12 
//   13 #include "../../PLM/Interface/EmbeddedTypes.h"
//   14 #include "../../PLM/LibInterface/GPIO_Interface.h"
//   15 #include "../../SMAC/Drivers/Interface/Delay.h"
//   16 #include "Display.h"
//   17 #define gLcdBackLightEnabled_d 1
//   18 #if (gLCDSupported_d)
//   19 
//   20 
//   21 
//   22 /************************************************************************************
//   23 *************************************************************************************
//   24 * Private macros
//   25 *************************************************************************************
//   26 ************************************************************************************/
//   27 
//   28 /* pin defines */
//   29 
//   30 /* D0  = SPI_SS    (GPIO  4) , PORT LO */
//   31 /* D1  = SPI_MISO  (GPIO  5) , PORT LO */
//   32 /* D2  = SPI_MOSI  (GPIO  6) , PORT LO */
//   33 /* D3  = SPI_SCK   (GPIO  7) , PORT LO */
//   34 /* D4  = ADC2      (GPIO  32), PORT HI */
//   35 /* D5  = ADC3      (GPIO  33), PORT HI */
//   36 /* D6  = ADC4      (GPIO  34), PORT HI */
//   37 /* D7  = ADC5      (GPIO  35), PORT HI */
//   38 #define LCD_D0  gGpioPin4_c
//   39 #define LCD_D1  gGpioPin5_c
//   40 #define LCD_D2  gGpioPin6_c
//   41 #define LCD_D3  gGpioPin7_c
//   42 #define LCD_D4  gGpioPin32_c
//   43 #define LCD_D5  gGpioPin33_c
//   44 #define LCD_D6  gGpioPin34_c
//   45 #define LCD_D7  gGpioPin35_c
//   46 
//   47 #define LCD_DATA_LO_MASK  0x000000F0
//   48 #define LCD_DATA_LO_PORT  gGpioPort0_c
//   49 #define LCD_DATA_LO_WRITE(x) (x)<<4
//   50 #define LCD_DATA_LO_READ(x)  (x)>>4
//   51 
//   52 #define LCD_DATA_HI_MASK  0x0000000F
//   53 #define LCD_DATA_HI_PORT  gGpioPort1_c
//   54 #define LCD_DATA_HI_WRITE(x) (x)>>4
//   55 #define LCD_DATA_HI_READ(x)  (x)<<4
//   56 
//   57 /* A0     = UART2_RTS (GPIO  21)   inverted, 0-data, 1-command */
//   58 /* RD     = TMR0      (GPIO  8)    double inverted, active high */
//   59 /* WR     = TMR1      (GPIO  9)    double inverted, active high */
//   60 /* CS     = UART2_CTS (GPIO  20)   double inverted, active high */
//   61 /* BL_PWM = TMR2      (GPIO  10)   1 - light, 0 - dark or PWM variable duty cycle */
//   62 /* RST    = RX_ON     (GPIO  45)   active low */
//   63 /* RST    = UART2_RX  (GPIO  19)   active low */
//   64 #define LCD_A0          gGpioPin21_c
//   65 #define LCD_RD          gGpioPin8_c
//   66 #define LCD_WR          gGpioPin9_c
//   67 #define LCD_CS          gGpioPin20_c
//   68 #define LCD_BL_PWM      gGpioPin10_c
//   69 #define LCD_RSTN        gGpioPin45_c
//   70 #define LCD_RSTN_debug  gGpioPin19_c
//   71 
//   72 
//   73 /* pin states */
//   74 #define LCD_A0_COMMAND  gGpioPinStateHigh_c
//   75 #define LCD_A0_DATA     gGpioPinStateLow_c
//   76 #define LCD_CS_ACTIVE   gGpioPinStateHigh_c
//   77 #define LCD_CS_INACTIVE gGpioPinStateLow_c
//   78 #define LCD_WR_ACTIVE   gGpioPinStateHigh_c
//   79 #define LCD_WR_INACTIVE gGpioPinStateLow_c
//   80 #define LCD_RD_ACTIVE   gGpioPinStateHigh_c
//   81 #define LCD_RD_INACTIVE gGpioPinStateLow_c
//   82 #define LCD_BL_ON       gGpioPinStateHigh_c
//   83 #define LCD_BL_OFF      gGpioPinStateLow_c
//   84 #define LCD_RSTN_IDLE   gGpioPinStateHigh_c
//   85 #define LCD_RSTN_RESET  gGpioPinStateLow_c
//   86 
//   87 #define ON                      1
//   88 #define OFF                     0
//   89 
//   90 #define mFontOffset_c          32
//   91 
//   92 /* number of columns to be cleared in LCD_Task */
//   93 #define mMaxDeleteColumns_c    32
//   94 #define mMaxLineNumber_c        8
//   95 #define mMaxQueueEntries_c     10
//   96 #define mEmptyQueue_c          0xFF
//   97 
//   98 /* number of characters to be displayed in LCD_Task */
//   99 #define mNumberOfCharToWrite_c  19
//  100 
//  101 /************************************************************************************
//  102 *************************************************************************************
//  103 * Private type definitions
//  104 *************************************************************************************
//  105 ************************************************************************************/
//  106 /* #pragma pack(1) */
//  107 
//  108 typedef struct displayParams_tag{
//  109   uint8_t currentXCoord;
//  110   uint8_t currentYCoord;
//  111   uint8_t currentLine;
//  112   /* Bitmask: 
//  113   *       line i is cleared, bit i from writtenLines is 0
//  114   *       line i is written, bit i from writtenLines is 1 
//  115   */
//  116   uint8_t writtenLines;
//  117   /* Bitmask: 
//  118   *       line i will not be written, bit i from linesToWrite is 0
//  119   *       line i will be written, bit i from linesToWrite is 1 
//  120   */
//  121   uint8_t linesToWrite;  
//  122   uint8_t linesWidthWritten[mMaxLineNumber_c];
//  123   uint8_t currentFontType;
//  124   uint8_t currentStringIndex;
//  125   uint8_t currentString[mMaxLineNumber_c][gMAX_LCD_CHARS_c];
//  126 }displayParams_t;
//  127 
//  128 typedef struct lineParams_tag{
//  129   uint8_t xCoord;
//  130   uint8_t yCoord;
//  131   uint8_t page;  
//  132 }lineParams_t;
//  133 
//  134 typedef struct pageParams_tag{
//  135   uint8_t xStartCoord;
//  136   uint8_t xEndCoord;
//  137   uint8_t yCoord;
//  138   uint8_t line;
//  139 }pageParams_t;
//  140 
//  141 typedef enum operation_tag{
//  142   gLCD_WriteOp_c = 0,
//  143   gLCD_ClearDisplayOp_c,
//  144   gLCD_ClearLineOp_c,
//  145   gLCD_MaxOp_c = 0xFF
//  146 }operation_t;
//  147 
//  148 typedef struct opLine_tag{
//  149   operation_t opQueue;
//  150   uint8_t lineQueue;  
//  151 }opLine_t;
//  152 
//  153 typedef struct queue_tag{
//  154   uint8_t head;
//  155   uint8_t tail;
//  156   opLine_t opLine[mMaxQueueEntries_c];
//  157 }queue_t;
//  158 
//  159 /* #pragma pack() */
//  160 
//  161 /************************************************************************************
//  162 *************************************************************************************
//  163 * Private prototypes
//  164 *************************************************************************************
//  165 ************************************************************************************/
//  166 
//  167 void LCD_SetBacklight(uint8_t brightnessValue);
//  168 void LCD_ClearPage(uint8_t startXCoord, uint8_t endXCoord, uint8_t yCoord);
//  169 uint8_t LCD_ClearLine(uint8_t line);
//  170 static void SendData(uint8_t data);
//  171 static void SetHiZ(void);
//  172 static void SetOutput(void);
//  173 static void InitDisplayWrite(uint8_t xStartCoord, uint8_t yStartCoord);
//  174 static uint8_t ReadData(void);
//  175 static uint8_t GetData(void);
//  176 static uint8_t GetStrlen(const uint8_t *pString);
//  177 
//  178 
//  179 /************************************************************************************
//  180 *************************************************************************************
//  181 * Private memory declarations
//  182 *************************************************************************************
//  183 ************************************************************************************/
//  184 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  185 static displayParams_t mDisplayParams = {
mDisplayParams:
        DATA8
        DC8 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0
//  186   /* currentXCoord */
//  187   0x00,
//  188   /* currentYCoord */
//  189   0x00,
//  190   /* currentLine */
//  191   0x00,
//  192   /* writtenLines */
//  193   0xFF,
//  194   /* linesToWrite */
//  195   0x00,
//  196   /* linesWidthWritten */
//  197   0x00,
//  198   /* currentFontType */
//  199   0x00,
//  200   /* currentStringIndex */
//  201   0x00,  
//  202   /* currentString */
//  203   0x00
//  204 };
//  205 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  206 static lineParams_t mLineParams[mMaxLineNumber_c] = {
mLineParams:
        DATA8
        DC8 0, 0, 0, 0, 8, 1, 0, 16, 2, 0, 24, 3, 0, 32, 4, 0, 40, 5, 0, 48, 6
        DC8 0, 56, 7
//  207   {0, 0, 0},
//  208   {0, 8, 1},
//  209   {0, 16, 2},
//  210   {0, 24, 3},
//  211   {0, 32, 4},
//  212   {0, 40, 5},
//  213   {0, 48, 6},
//  214   {0, 56, 7},
//  215 };  
//  216 
//  217 
//  218 /* after initialization, all LCD lines must be erased */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  219 static bool_t mIsLcdInitialized = FALSE;
mIsLcdInitialized:
        DS8 1
//  220 
//  221 /* error indicator, used for error reporting */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  222 static volatile lcdError_t mErrorIndicator = gLCD_NoError_c;
mErrorIndicator:
        DS8 1

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Format unknow"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA8
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DATA8
        DC8 83, 105, 122, 101, 32, 78, 111, 116, 32, 86, 97, 108, 105, 100, 42
        DC8 42, 0, 0, 0, 0, 0, 0, 0, 0
//  223 
//  224 /******************************************************************************
//  225 *******************************************************************************
//  226 * Public memory definitions
//  227 *******************************************************************************
//  228 ******************************************************************************/
//  229 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  230 const uint8_t gaHexValue[] = "0123456789ABCDEF";
gaHexValue:
        DC8 "0123456789ABCDEF"
        DC8 0, 0, 0
//  231 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  232 const font_t aLCDFont[gLCDNumFonts_c] = 
aLCDFont:
        DATA32
        DC32 gLCDNormalIndex, gLCDNormalFont
        DATA8
        DC8 1, 0, 0, 0
        DATA32
        DC32 gLCDVerdanaIndex, gLCDVerdanaFont
        DATA8
        DC8 2, 0, 0, 0
//  233 {
//  234   /* character font with fixed width */ 
//  235   {gLCDNormalIndex,  gLCDNormalFont,  1},
//  236   /* character font with variable width */ 
//  237   {gLCDVerdanaIndex, gLCDVerdanaFont, 2}   
//  238 };
//  239 
//  240 /************************************************************************************
//  241 *************************************************************************************
//  242 * Public functions
//  243 *************************************************************************************
//  244 ************************************************************************************/
//  245 
//  246 /******************************************************************************
//  247 * This function initializes the display
//  248 *
//  249 * Interface assumptions:
//  250 *
//  251 *
//  252 * Return value:
//  253 * None
//  254 *
//  255 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void LCD_Init(void)
//  257 {
LCD_Init:
        PUSH     {R3-R5,LR}
//  258 
//  259     Gpio_SetPinFunction(LCD_WR, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
//  260     Gpio_SetPinFunction(LCD_CS, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinFunction
//  261     Gpio_SetPinFunction(LCD_RD, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
//  262     Gpio_SetPinFunction(LCD_A0, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+21
        BL       Gpio_SetPinFunction
//  263     Gpio_SetPinFunction(LCD_RSTN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+45
        BL       Gpio_SetPinFunction
//  264     Gpio_SetPinFunction(LCD_RSTN_debug, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+19
        BL       Gpio_SetPinFunction
//  265 
//  266     Gpio_SetPinData(LCD_WR, LCD_WR_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  267     Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  268     Gpio_SetPinData(LCD_RD, LCD_RD_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       Gpio_SetPinData
//  269     Gpio_SetPinData(LCD_A0, LCD_A0_COMMAND);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinData
//  270     Gpio_SetPinData(LCD_RSTN, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinData
//  271     Gpio_SetPinData(LCD_RSTN_debug, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinData
//  272 
//  273     /* define the LCD pins as output pins */
//  274     (void)Gpio_SetPinReadSource(LCD_CS,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinReadSource
//  275     (void)Gpio_SetPinReadSource(LCD_A0,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinReadSource
//  276     (void)Gpio_SetPinReadSource(LCD_RD,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinReadSource
//  277     (void)Gpio_SetPinReadSource(LCD_WR,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinReadSource
//  278     (void)Gpio_SetPinReadSource(LCD_BL_PWM, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinReadSource
//  279     (void)Gpio_SetPinReadSource(LCD_RSTN,   gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinReadSource
//  280     (void)Gpio_SetPinReadSource(LCD_RSTN_debug,   gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinReadSource
//  281 
//  282     (void)Gpio_SetPinDir(LCD_CS,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinDir
//  283     (void)Gpio_SetPinDir(LCD_A0,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinDir
//  284     (void)Gpio_SetPinDir(LCD_RD,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinDir
//  285     (void)Gpio_SetPinDir(LCD_WR,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinDir
//  286     (void)Gpio_SetPinDir(LCD_BL_PWM, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinDir
//  287     (void)Gpio_SetPinDir(LCD_RSTN,   gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinDir
//  288     (void)Gpio_SetPinDir(LCD_RSTN_debug,   gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinDir
//  289 
//  290     /* data pins */
//  291 #if gLCDGpioPinMode_c
//  292     (void)Gpio_SetPinFunction(LCD_D0,      gGpioNormalMode_c);
//  293     (void)Gpio_SetPinFunction(LCD_D1,      gGpioNormalMode_c);
//  294     (void)Gpio_SetPinFunction(LCD_D2,      gGpioNormalMode_c);
//  295     (void)Gpio_SetPinFunction(LCD_D3,      gGpioNormalMode_c);
//  296     (void)Gpio_SetPinFunction(LCD_D4,      gGpioNormalMode_c);
//  297     (void)Gpio_SetPinFunction(LCD_D5,      gGpioNormalMode_c);
//  298     (void)Gpio_SetPinFunction(LCD_D6,      gGpioNormalMode_c);
//  299     (void)Gpio_SetPinFunction(LCD_D7,      gGpioNormalMode_c);
//  300 
//  301     /* define data pins as inputs */
//  302     (void)Gpio_EnPinPullup(LCD_D0,      TRUE);
//  303     (void)Gpio_EnPinPullup(LCD_D1,      TRUE);
//  304     (void)Gpio_EnPinPullup(LCD_D2,      TRUE);
//  305     (void)Gpio_EnPinPullup(LCD_D3,      TRUE);
//  306     (void)Gpio_EnPinPullup(LCD_D4,      TRUE);
//  307     (void)Gpio_EnPinPullup(LCD_D5,      TRUE);
//  308     (void)Gpio_EnPinPullup(LCD_D6,      TRUE);
//  309     (void)Gpio_EnPinPullup(LCD_D7,      TRUE);
//  310 
//  311     (void)Gpio_SelectPinPullup(LCD_D0,      gGpioPinPullup_c);
//  312     (void)Gpio_SelectPinPullup(LCD_D1,      gGpioPinPullup_c);
//  313     (void)Gpio_SelectPinPullup(LCD_D2,      gGpioPinPullup_c);
//  314     (void)Gpio_SelectPinPullup(LCD_D3,      gGpioPinPullup_c);
//  315     (void)Gpio_SelectPinPullup(LCD_D4,      gGpioPinPullup_c);
//  316     (void)Gpio_SelectPinPullup(LCD_D5,      gGpioPinPullup_c);
//  317     (void)Gpio_SelectPinPullup(LCD_D6,      gGpioPinPullup_c);
//  318     (void)Gpio_SelectPinPullup(LCD_D7,      gGpioPinPullup_c);
//  319 
//  320     (void)Gpio_EnPinPuKeeper(LCD_D0,      TRUE);
//  321     (void)Gpio_EnPinPuKeeper(LCD_D1,      TRUE);
//  322     (void)Gpio_EnPinPuKeeper(LCD_D2,      TRUE);
//  323     (void)Gpio_EnPinPuKeeper(LCD_D3,      TRUE);
//  324     (void)Gpio_EnPinPuKeeper(LCD_D4,      TRUE);
//  325     (void)Gpio_EnPinPuKeeper(LCD_D5,      TRUE);
//  326     (void)Gpio_EnPinPuKeeper(LCD_D6,      TRUE);
//  327     (void)Gpio_EnPinPuKeeper(LCD_D7,      TRUE);
//  328 
//  329     (void)Gpio_SetPinReadSource(LCD_D0,      gGpioPinReadPad_c);
//  330     (void)Gpio_SetPinReadSource(LCD_D1,      gGpioPinReadPad_c);
//  331     (void)Gpio_SetPinReadSource(LCD_D2,      gGpioPinReadPad_c);
//  332     (void)Gpio_SetPinReadSource(LCD_D3,      gGpioPinReadPad_c);
//  333     (void)Gpio_SetPinReadSource(LCD_D4,      gGpioPinReadPad_c);
//  334     (void)Gpio_SetPinReadSource(LCD_D5,      gGpioPinReadPad_c);
//  335     (void)Gpio_SetPinReadSource(LCD_D6,      gGpioPinReadPad_c);
//  336     (void)Gpio_SetPinReadSource(LCD_D7,      gGpioPinReadPad_c);
//  337 
//  338     (void)Gpio_SetPinDir(LCD_D0,      gGpioDirIn_c);
//  339     (void)Gpio_SetPinDir(LCD_D1,      gGpioDirIn_c);
//  340     (void)Gpio_SetPinDir(LCD_D2,      gGpioDirIn_c);
//  341     (void)Gpio_SetPinDir(LCD_D3,      gGpioDirIn_c);
//  342     (void)Gpio_SetPinDir(LCD_D4,      gGpioDirIn_c);
//  343     (void)Gpio_SetPinDir(LCD_D5,      gGpioDirIn_c);
//  344     (void)Gpio_SetPinDir(LCD_D6,      gGpioDirIn_c);
//  345     (void)Gpio_SetPinDir(LCD_D7,      gGpioDirIn_c);
//  346 #else /* gLCDGpioPinMode_c */
//  347     Gpio_SetPortFunction(LCD_DATA_LO_PORT, gGpioNormalMode_c, LCD_DATA_LO_MASK);
        MOVS     R2,#+240
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Gpio_SetPortFunction
//  348     Gpio_SetPortFunction(LCD_DATA_HI_PORT, gGpioNormalMode_c, LCD_DATA_HI_MASK);
        MOVS     R2,#+15
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       Gpio_SetPortFunction
//  349 
//  350     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioPullUpEnAttr_c, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  351     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioPullUpEnAttr_c, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  352 
//  353     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioPullUpSelAttr_c, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  354     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioPullUpSelAttr_c, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  355 
//  356     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioPullUpKeepAttr_c, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  357     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioPullUpKeepAttr_c, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  358     
//  359     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioInputDataSelAttr_c, ~LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R5,#+240
        MVNS     R5,R5            ;; #-241
        MOVS     R3,#+240
        MOVS     R2,R5
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  360     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioInputDataSelAttr_c, ~LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R4,#+15
        MVNS     R4,R4            ;; #-16
        MOVS     R3,#+15
        MOVS     R2,R4
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  361     
//  362     Gpio_SetPortDir(LCD_DATA_LO_PORT, ~LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R2,#+240
        MOVS     R1,R5
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
//  363     Gpio_SetPortDir(LCD_DATA_HI_PORT, ~LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R2,#+15
        MOVS     R1,R4
        MOVS     R0,#+1
        BL       Gpio_SetPortDir
//  364 #endif /* gLCDGpioPinMode_c */
//  365 
//  366 
//  367   Gpio_SetPinData(LCD_RSTN, LCD_RSTN_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+45
        BL       Gpio_SetPinData
//  368   Gpio_SetPinData(LCD_RSTN_debug, LCD_RSTN_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+19
        BL       Gpio_SetPinData
//  369   DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  370   Gpio_SetPinData(LCD_RSTN, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinData
//  371   Gpio_SetPinData(LCD_RSTN_debug, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinData
//  372   DelayMs(1);
        MOVS     R0,#+1
        BL       DelayMs
//  373 
//  374     /* Turn ON the VDD-VSS power keeping the RES pin = LOW for 0.5us */
//  375     /* When power is stabilized, relese the RES pin (RES pin = HIGH) */
//  376     
//  377     /* Default initialized state: 
//  378      - Display off
//  379 	   - Normal display (COM0 --> COM63)
//  380 	   - ADC select: normal (RAM column address n <-> SEGn)
//  381 	   - Power control register: Booster circuit OFF, Voltage regulator circuit OFF, Voltage follower circuit OFF
//  382 	   - LCD power supply bias rate = 1/9
//  383 	   - All-indicator lamps-on OFF
//  384 	   - Power saving clear
//  385 	   - V5 voltage regulator internal resistors Ra and Rb separation
//  386 	   - Output conditions of SEG and COM terminals SEG:V2/V3; COM: V1/V4
//  387 	   - Read modify write OFF
//  388 	   - Static indicator OFF
//  389 	   - Display start line set to first line
//  390 	   - Column address set to Address 0
//  391 	   - Page address set to Page 0
//  392 	   - Common output status normal
//  393 	   - V5 voltage regulator internal resistor ratio set mode clear
//  394 	   - Electronic volume register set mode clear
//  395 	   - Test mode clear 
//  396     */
//  397 
//  398     /* reset display */
//  399     LCD_WriteCommand(gLCDResetCommand_c);
        MOVS     R0,#+226
        BL       LCD_WriteCommand
//  400     DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  401 
//  402     /* set LCD bias to 1/9 */
//  403     LCD_WriteCommand(gLCD19BiasCommand_c);
        MOVS     R0,#+162
        BL       LCD_WriteCommand
//  404 
//  405     /* set ADC selection to normal: RAM column address n <-> SEGn */
//  406     /* LCD_WriteCommand(gLCDADCNormalCommand_c); */
//  407     LCD_WriteCommand(gLCDADCReverseCommand_c);
        MOVS     R0,#+161
        BL       LCD_WriteCommand
//  408 
//  409     /* set scan direction of the COM to normal: COM0 --> COM63 */
//  410     LCD_WriteCommand(gLCDComNormalCommand_c);
        MOVS     R0,#+192
        BL       LCD_WriteCommand
//  411 
//  412     /* set the Rb/Ra ratio for V5 to medium (D2D1D0 = 0b100) */
//  413     LCD_WriteCommand( gLCDDefaultRatioCommand_c | (gLCDRatioValue_c & 0x07) );
        MOVS     R0,#+36
        BL       LCD_WriteCommand
//  414 
//  415     /* enable the electronic volume register set command */
//  416     /* this command must always be followed by an electronic volume register set command */
//  417     LCD_WriteCommand(gLCDElectronicVolumeModeSetCommand_c);
        MOVS     R0,#+129
        BL       LCD_WriteCommand
//  418     
//  419     LCD_WriteCommand(gLCDElectronicVolumeInitCommand_c);
        MOVS     R0,#+48
        BL       LCD_WriteCommand
//  420 
//  421 
//  422     /* disable booster circuit, disable voltage regulator circuit, disable voltage follower circuit */
//  423     LCD_WriteCommand(0x2F);
        MOVS     R0,#+47
        BL       LCD_WriteCommand
//  424     DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  425     /** turn ON */
//  426     LCD_WriteCommand(gLCDDisplayOnCommand_c);
        MOVS     R0,#+175
        BL       LCD_WriteCommand
//  427     DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  428     
//  429     /* turn on the backlight */
//  430     LCD_SetBacklight(gLCDDefaultBrightnessValue_c);
        MOVS     R0,#+15
        BL       LCD_SetBacklight
//  431     
//  432     /* set default font */
//  433     (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
//  434 
//  435     mIsLcdInitialized = FALSE;
        MOVS     R0,#+0
        LDR      R1,??DataTable2
        STRB     R0,[R1, #+0]
//  436 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  437 
//  438 /******************************************************************************
//  439 * This function clears the display. In case an error occured during add to queue
//  440 * operation, the clear display operation will not execute.
//  441 *
//  442 * Interface assumptions:
//  443 *
//  444 *
//  445 * Return value:
//  446 * None
//  447 *
//  448 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  449 void LCD_ClearDisplay(void)
//  450 {
LCD_ClearDisplay:
        PUSH     {R3-R7,LR}
//  451 
//  452   static uint8_t linesToClear = 0x00;
//  453   uint8_t line, deleteWriteLines = 0xFF;
        MOVS     R0,#+255
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  454   
//  455   /* clear the error indicator */
//  456   mErrorIndicator = gLCD_NoError_c;
        MOVS     R5,#+0
        MOVS     R0,R5
        LDR      R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//  457   
//  458     
//  459  /* determine the lines that were written and need to be cleared */   
//  460   linesToClear = mDisplayParams.writtenLines;  
        LDR      R4,??DataTable2_2
        LDR      R7,??DataTable2_3
        LDRB     R0,[R7, #+3]
        STRB     R0,[R4, #+0]
//  461   if(mIsLcdInitialized == TRUE)
        LDR      R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??LCD_ClearDisplay_0
//  462   {
//  463  /* determine if there are lines that need to be erased and after need to be written */
//  464     deleteWriteLines = linesToClear & mDisplayParams.linesToWrite;
        LDRB     R0,[R4, #+0]
        LDRB     R1,[R7, #+4]
        ANDS     R1,R1,R0
        MOV      R0,SP
        STRB     R1,[R0, #+0]
//  465     if(deleteWriteLines)
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_ClearDisplay_0
//  466     { /* if there are */
//  467      /* mark that lines as deleted and jump over them */
//  468       linesToClear &= ~(deleteWriteLines);  
        LDRB     R0,[R4, #+0]
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        BICS     R0,R0,R1
        STRB     R0,[R4, #+0]
//  469     }
//  470   }
//  471    line = 0;
//  472    /* find the first written line */
//  473    
//  474   do
//  475   {
//  476     while((!((linesToClear>>line)&0x01))&&(line<mMaxLineNumber_c))
??LCD_ClearDisplay_0:
??LCD_ClearDisplay_1:
        MOVS     R6,#+1
        LDRB     R0,[R4, #+0]
        ASRS     R0,R0,R5
        ANDS     R0,R0,R6
        CMP      R0,#+0
        BNE      ??LCD_ClearDisplay_2
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BGE      ??LCD_ClearDisplay_2
//  477     {
//  478       line++;
        ADDS     R5,R5,#+1
        B        ??LCD_ClearDisplay_1
//  479     }
//  480    
//  481     if(line!= mMaxLineNumber_c)
??LCD_ClearDisplay_2:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BEQ      ??LCD_ClearDisplay_3
//  482     {
//  483      /* in case at least a line is written */
//  484       if(TRUE == LCD_ClearLine(line))
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_ClearLine
        CMP      R0,#+1
        BNE      ??LCD_ClearDisplay_3
//  485       {
//  486        /* mark line as cleared */
//  487         mDisplayParams.writtenLines &= ~(1 << line);
        LDRB     R1,[R7, #+3]
        MOVS     R0,R6
        LSLS     R0,R0,R5
        BICS     R1,R1,R0
        STRB     R1,[R7, #+3]
//  488         linesToClear &= ~(1 << line);
        LDRB     R0,[R4, #+0]
        LSLS     R6,R6,R5
        BICS     R0,R0,R6
        STRB     R0,[R4, #+0]
//  489        /* check if there are other lines written */
//  490       }
//  491     }
//  492   }while(line!= mMaxLineNumber_c);
??LCD_ClearDisplay_3:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BNE      ??LCD_ClearDisplay_1
//  493 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`LCD_ClearDisplay::linesToClear`:
        DS8 1
//  494 
//  495 /******************************************************************************
//  496 * This function writes a string to the display. In case an error occured 
//  497 * during add to queue operation, the write string operation will not execute.
//  498 *
//  499 * Interface assumptions:
//  500 *
//  501 *
//  502 * Return value:
//  503 * None
//  504 *
//  505 *
//  506 ******************************************************************************/
//  507 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  508 void LCD_WriteString_NormalFont(uint8_t line, uint8_t *pstr){
LCD_WriteString_NormalFont:
        PUSH     {R0,R4-R7,LR}
        MOVS     R4,R1
//  509  
//  510  uint8_t len; 
//  511  uint8_t i;
//  512  mDisplayParams.currentXCoord = mLineParams[line].xCoord;;  
        LDR      R6,??DataTable2_3
        LDR      R0,??DataTable3
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+3
        MULS     R1,R2,R1
        LDRB     R1,[R0, R1]
        STRB     R1,[R6, #+0]
//  513  mDisplayParams.currentYCoord = mLineParams[line].yCoord;   
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+3
        MULS     R1,R2,R1
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+1]
        STRB     R0,[R6, #+1]
//  514  len = GetStrlen(pstr);
        MOVS     R0,R4
        BL       GetStrlen
        MOVS     R7,R0
//  515  
//  516  for(i=0; ((i< len) && (i < gMAX_LCD_CHARS_c)); i++)
        MOVS     R5,#+0
??LCD_WriteString_NormalFont_0:
        MOVS     R0,R5
        MOVS     R1,R7
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R0,R1
        BCS      ??LCD_WriteString_NormalFont_1
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+21
        BGE      ??LCD_WriteString_NormalFont_1
//  517  {
//  518    LCD_WriteCharacter(*pstr,mDisplayParams.currentXCoord, mDisplayParams.currentYCoord);   
        LDRB     R2,[R6, #+1]
        LDRB     R1,[R6, #+0]
        LDRB     R0,[R4, #+0]
        BL       LCD_WriteCharacter
//  519    mDisplayParams.currentXCoord += 6;
        LDRB     R0,[R6, #+0]
        ADDS     R0,R0,#+6
        STRB     R0,[R6, #+0]
//  520   pstr++;
        ADDS     R4,R4,#+1
//  521  }
        ADDS     R5,R5,#+1
        B        ??LCD_WriteString_NormalFont_0
//  522 }
??LCD_WriteString_NormalFont_1:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     mIsLcdInitialized

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     mErrorIndicator

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     `LCD_ClearDisplay::linesToClear`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     mDisplayParams
//  523 
//  524 /******************************************************************************
//  525 * This function write a string and a value in decimal or hexdecimal
//  526 * to the display
//  527 *
//  528 * Interface assumptions:
//  529 * The pstr must be zero-terminated.
//  530 *
//  531 * Return value:
//  532 * None
//  533 *
//  534 *
//  535 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  536 void LCD_WriteStringValue
//  537   (
//  538   uint8_t *pstr,     /* IN: Pointer to text string */
//  539   uint16_t value,    /* IN: Value */
//  540   uint8_t line, 	   /* IN: Line in display */
//  541   LCD_t numberFormat /* IN: Value to show in HEX or DEC */
//  542   )
//  543 {
LCD_WriteStringValue:
        PUSH     {R1-R7,LR}
        SUB      SP,SP,#+56
        MOVS     R6,R0
        MOVS     R7,R1
//  544 
//  545   int16_t divDec=10000, divHex=16;
        LDR      R0,??DataTable3_1  ;; 0x2710
        MOV      R1,SP
        STRH     R0,[R1, #+6]
        MOVS     R0,#+16
        MOV      R1,SP
        STRH     R0,[R1, #+8]
//  546   uint8_t loop=5, i=0,counter=0, aH[6], aHex[6];
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+4]
        MOVS     R5,#+0
        MOVS     R4,#+0
//  547   uint8_t aDec[6], aString[17];
//  548   
//  549   /* clear the error indicator */
//  550   mErrorIndicator = gLCD_NoError_c;
        MOVS     R0,#+0
        LDR      R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//  551 
//  552  if(numberFormat == gLCD_DecFormat_c) {
        ADD      R0,SP,#+64
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      .+4
        B        ??LCD_WriteStringValue_0
//  553     if(value < 100) {
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+100
        BGE      ??LCD_WriteStringValue_1
//  554       loop = 2;
        MOVS     R0,#+2
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  555       divDec = 10;
        MOVS     R0,#+10
        MOV      R1,SP
        STRH     R0,[R1, #+6]
        B        ??LCD_WriteStringValue_2
//  556     }
//  557     else if(value >= 100 && value <1000) {
??LCD_WriteStringValue_1:
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+100
        BLT      ??LCD_WriteStringValue_3
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        MOVS     R1,#+250
        LSLS     R1,R1,#+2        ;; #+1000
        CMP      R0,R1
        BGE      ??LCD_WriteStringValue_3
//  558       loop = 3;
        MOVS     R0,#+3
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  559       divDec = 100;
        MOVS     R0,#+100
        MOV      R1,SP
        STRH     R0,[R1, #+6]
        B        ??LCD_WriteStringValue_2
//  560     }
//  561     else if(value >= 1000 && value <9999) {
??LCD_WriteStringValue_3:
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        MOVS     R1,R7
        LSLS     R1,R1,#+16       ;; ZeroExtS R1,R1,#+16,#+16
        LSRS     R1,R1,#+16
        CMP      R1,R0
        BLT      ??LCD_WriteStringValue_2
        MOVS     R1,R7
        LSLS     R1,R1,#+16       ;; ZeroExtS R1,R1,#+16,#+16
        LSRS     R1,R1,#+16
        LDR      R2,??DataTable3_3  ;; 0x270f
        CMP      R1,R2
        BGE      ??LCD_WriteStringValue_2
//  562       loop = 4;
        MOVS     R1,#+4
        MOV      R2,SP
        STRB     R1,[R2, #+4]
//  563       divDec = 1000;
        MOV      R1,SP
        STRH     R0,[R1, #+6]
//  564     }
//  565 
//  566     for(i=0; i<loop; i++) {
??LCD_WriteStringValue_2:
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, #+0]
??LCD_WriteStringValue_4:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        MOV      R1,SP
        LDRB     R1,[R1, #+4]
        CMP      R0,R1
        BCS      ??LCD_WriteStringValue_5
//  567       if((value/divDec)!= 0) {
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        MOV      R2,SP
        MOVS     R1,#+6
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idiv
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_6
//  568         aDec[counter++] = (value/divDec) + 0x30;
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        MOV      R2,SP
        MOVS     R1,#+6
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idiv
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+12
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R4,R4,#+1
//  569         value = value % divDec;
        LSLS     R7,R7,#+16       ;; ZeroExtS R7,R7,#+16,#+16
        LSRS     R7,R7,#+16
        MOVS     R0,R7
        MOV      R2,SP
        MOVS     R1,#+6
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idivmod
        MOVS     R7,R1
        B        ??LCD_WriteStringValue_7
//  570       }
//  571       else {
//  572         aDec[counter++] = 0x30;
??LCD_WriteStringValue_6:
        MOVS     R0,#+48
        ADD      R1,SP,#+12
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R4,R4,#+1
//  573       }
//  574       divDec = divDec/10;
??LCD_WriteStringValue_7:
        MOV      R1,SP
        MOVS     R0,#+6
        LDRSH    R0,[R1, R0]
        MOVS     R1,#+10
        BL       __aeabi_idiv
        MOV      R1,SP
        STRH     R0,[R1, #+6]
//  575     }
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        B        ??LCD_WriteStringValue_4
//  576     aDec[counter]='\0';
??LCD_WriteStringValue_5:
        ADD      R0,SP,#+12
        MOVS     R1,#+0
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R1,[R0, R2]
//  577     counter=0;
        MOVS     R1,#+0
        MOVS     R4,R1
//  578     while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_8:
        LDRB     R1,[R6, #+0]
        CMP      R1,#+0
        BEQ      ??LCD_WriteStringValue_9
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+21
        BGE      ??LCD_WriteStringValue_9
//  579       aString[counter++]=*pstr;
        LDRB     R1,[R6, #+0]
        ADD      R2,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
        ADDS     R4,R4,#+1
//  580       pstr++;
        ADDS     R6,R6,#+1
        B        ??LCD_WriteStringValue_8
//  581     }
//  582     i=0;
??LCD_WriteStringValue_9:
        MOVS     R5,#+0
//  583     while (aDec[i] != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_10:
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ      ??LCD_WriteStringValue_11
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+21
        BGE      ??LCD_WriteStringValue_11
//  584       aString[counter++]=aDec[i++];
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R0, R1]
        ADD      R2,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringValue_10
//  585     }
//  586     aString[counter]='\0';
??LCD_WriteStringValue_11:
        MOVS     R0,#+0
        ADD      R1,SP,#+20
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  587     LCD_WriteString_NormalFont( line, aString );
        ADD      R1,SP,#+20
        ADD      R0,SP,#+60
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString_NormalFont
        B        ??LCD_WriteStringValue_12
//  588   }
//  589   else if(numberFormat == gLCD_HexFormat_c) {
??LCD_WriteStringValue_0:
        ADD      R0,SP,#+64
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      .+4
        B        ??LCD_WriteStringValue_13
//  590     do{
//  591       aH[i]=gaHexValue[value % divHex];
??LCD_WriteStringValue_14:
        LDR      R0,??DataTable3_4
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        MOV      R2,SP
        MOVS     R1,#+8
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idivmod
        LDR      R0,[SP, #+0]
        LDRB     R0,[R0, R1]
        ADD      R1,SP,#+48
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  592       value=value / divHex;
        LSLS     R7,R7,#+16       ;; ZeroExtS R7,R7,#+16,#+16
        LSRS     R7,R7,#+16
        MOVS     R0,R7
        MOV      R2,SP
        MOVS     R1,#+8
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idiv
        MOVS     R7,R0
//  593       i++;
        ADDS     R5,R5,#+1
//  594     }
//  595     while(value > 15);
        MOVS     R0,R7
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+16
        BGE      ??LCD_WriteStringValue_14
//  596     aH[i]=gaHexValue[value];
        ADD      R1,SP,#+48
        LDR      R0,??DataTable3_4
        MOVS     R2,R7
        LSLS     R2,R2,#+16       ;; ZeroExtS R2,R2,#+16,#+16
        LSRS     R2,R2,#+16
        LDRB     R0,[R0, R2]
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  597     counter=0;
        MOVS     R0,#+0
//  598     while(i > 0){
??LCD_WriteStringValue_15:
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+0
        BEQ      ??LCD_WriteStringValue_16
//  599       aHex[counter++]=aH[i--];
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LDRB     R2,[R1, R2]
        ADD      R3,SP,#+40
        MOVS     R4,R0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        STRB     R2,[R3, R4]
        SUBS     R5,R5,#+1
        ADDS     R0,R0,#+1
        B        ??LCD_WriteStringValue_15
//  600     }
//  601 
//  602     aHex[counter++]=aH[0];
??LCD_WriteStringValue_16:
        ADD      R2,SP,#+40
        LDRB     R1,[R1, #+0]
        MOVS     R3,R0
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
        ADDS     R0,R0,#+1
//  603     aHex[counter]='\0';
        MOVS     R1,#+0
        MOVS     R3,R0
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
//  604 
//  605     counter=0;
        MOVS     R4,#+0
//  606     while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_17:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_18
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+21
        BGE      ??LCD_WriteStringValue_18
//  607       aString[counter++]=*pstr;
        LDRB     R0,[R6, #+0]
        ADD      R1,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R0,[R1, R3]
        ADDS     R4,R4,#+1
//  608       pstr++;
        ADDS     R6,R6,#+1
        B        ??LCD_WriteStringValue_17
//  609     }
//  610     i=0;
??LCD_WriteStringValue_18:
        MOVS     R0,#+0
        MOVS     R5,R0
//  611     while (aHex[i] != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_19:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDRB     R0,[R2, R0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_20
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+21
        BGE      ??LCD_WriteStringValue_20
//  612       aString[counter++]=aHex[i++];
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDRB     R0,[R2, R0]
        ADD      R1,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R0,[R1, R3]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringValue_19
//  613     }
//  614     aString[counter]='\0';
??LCD_WriteStringValue_20:
        MOVS     R0,#+0
        ADD      R1,SP,#+20
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  615     LCD_WriteString_NormalFont( line, aString );
        ADD      R1,SP,#+20
        ADD      R0,SP,#+60
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString_NormalFont
        B        ??LCD_WriteStringValue_12
//  616   }
//  617   else {
//  618     LCD_WriteString_NormalFont( line, "Format unknow" );
??LCD_WriteStringValue_13:
        LDR      R1,??DataTable4
        ADD      R0,SP,#+60
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString_NormalFont
//  619   }
//  620 }
??LCD_WriteStringValue_12:
        ADD      SP,SP,#+68
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA32
        DC32     mLineParams

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA32
        DC32     mErrorIndicator

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DATA32
        DC32     0x270f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DATA32
        DC32     gaHexValue
//  621 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  622 void LCD_WriteStringDecValue
//  623   (
//  624   uint8_t *pstr,     /* IN: Pointer to text string */
//  625   uint16_t value,    /* IN: Value */
//  626   uint8_t line, 	   /* IN: Line in display */
//  627   LCD_t numberFormat /* IN: Value to show in HEX or DEC */
//  628   )
//  629 {
LCD_WriteStringDecValue:
        PUSH     {R1-R7,LR}
        SUB      SP,SP,#+56
        MOVS     R7,R0
//  630 
//  631   int16_t divDec=10000, divHex=16;
        LDR      R6,??DataTable4_1  ;; 0x2710
        MOVS     R0,#+16
        MOV      R1,SP
        STRH     R0,[R1, #+8]
//  632   uint8_t loop=5, i=0,counter=0, aH[6], aHex[6];
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+6]
        MOVS     R5,#+0
        MOVS     R4,#+0
//  633   uint8_t aDec[6], aString[17] = {0};
        ADD      R0,SP,#+20
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//  634   uint8_t u8TempVal;
//  635   uint8_t u8Count;
//  636  
//  637   
//  638   /* clear the error indicator */
//  639   mErrorIndicator = gLCD_NoError_c;
        MOVS     R0,#+0
        LDR      R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  640 
//  641  if(numberFormat == gLCD_DecFormat_c) {
        ADD      R0,SP,#+64
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      .+4
        B        ??LCD_WriteStringDecValue_0
//  642     u8TempVal = (value >> 8);
        MOV      R0,SP
        LDRH     R0,[R0, #+56]
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  643     
//  644     for( u8Count= 0;  u8Count < 2;  u8Count++)
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, #+5]
??LCD_WriteStringDecValue_1:
        MOV      R0,SP
        LDRB     R0,[R0, #+5]
        CMP      R0,#+2
        BGE      ??LCD_WriteStringDecValue_2
//  645     {
//  646       if(u8TempVal < 100) 
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGE      ??LCD_WriteStringDecValue_3
//  647       {
//  648         loop = 2;
        MOVS     R0,#+2
        MOV      R1,SP
        STRB     R0,[R1, #+6]
//  649         divDec = 10;
        MOVS     R0,#+10
        MOVS     R6,R0
        B        ??LCD_WriteStringDecValue_4
//  650       }
//  651       else if(u8TempVal >= 100 && u8TempVal < 255) {
??LCD_WriteStringDecValue_3:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BLT      ??LCD_WriteStringDecValue_4
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+255
        BEQ      ??LCD_WriteStringDecValue_4
//  652         loop = 3;
        MOVS     R0,#+3
        MOV      R1,SP
        STRB     R0,[R1, #+6]
//  653         divDec = 100;
        MOVS     R0,#+100
        MOVS     R6,R0
//  654       }
//  655       for(i=0; i<loop; i++) {
??LCD_WriteStringDecValue_4:
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_WriteStringDecValue_5:
        MOVS     R0,R5
        MOV      R1,SP
        LDRB     R1,[R1, #+6]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,R1
        BCS      ??LCD_WriteStringDecValue_6
//  656         if((u8TempVal/divDec)!= 0) 
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,R6
        LSLS     R1,R1,#+16       ;; SignExtS R1,R1,#+16,#+16
        ASRS     R1,R1,#+16
        BL       __aeabi_idiv
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringDecValue_7
//  657         {
//  658           aDec[counter++] = (u8TempVal/divDec) + 0x30;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,R6
        LSLS     R1,R1,#+16       ;; SignExtS R1,R1,#+16,#+16
        ASRS     R1,R1,#+16
        BL       __aeabi_idiv
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+12
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R4,R4,#+1
//  659           u8TempVal = u8TempVal % divDec;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,R6
        LSLS     R1,R1,#+16       ;; SignExtS R1,R1,#+16,#+16
        ASRS     R1,R1,#+16
        BL       __aeabi_idivmod
        MOV      R0,SP
        STRB     R1,[R0, #+4]
        B        ??LCD_WriteStringDecValue_8
//  660         }
//  661         else {
//  662           aDec[counter++] = 0x30;
??LCD_WriteStringDecValue_7:
        MOVS     R0,#+48
        ADD      R1,SP,#+12
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R4,R4,#+1
//  663         }
//  664         divDec = divDec/10;
??LCD_WriteStringDecValue_8:
        LSLS     R6,R6,#+16       ;; SignExtS R6,R6,#+16,#+16
        ASRS     R6,R6,#+16
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idiv
        MOVS     R6,R0
//  665       }
        ADDS     R5,R5,#+1
        B        ??LCD_WriteStringDecValue_5
//  666       if(u8Count < 1)
??LCD_WriteStringDecValue_6:
        MOV      R0,SP
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BNE      ??LCD_WriteStringDecValue_9
//  667       {  
//  668         aDec[counter++] = '.';
        MOVS     R0,#+46
        ADD      R1,SP,#+12
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R4,R4,#+1
//  669       }
//  670       u8TempVal = value;
??LCD_WriteStringDecValue_9:
        MOV      R0,SP
        LDRH     R0,[R0, #+56]
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  671     } 
        MOV      R0,SP
        LDRB     R0,[R0, #+5]
        ADDS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+5]
        B        ??LCD_WriteStringDecValue_1
//  672       
//  673     aDec[counter]='\0';
??LCD_WriteStringDecValue_2:
        MOVS     R0,#+0
        MOVS     R1,R0
        ADD      R2,SP,#+12
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
//  674     counter=0;
        MOVS     R1,R0
        MOVS     R4,R1
//  675     
//  676     while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c ) 
??LCD_WriteStringDecValue_10:
        LDRB     R1,[R7, #+0]
        CMP      R1,#+0
        BEQ      ??LCD_WriteStringDecValue_11
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+21
        BGE      ??LCD_WriteStringDecValue_11
//  677     {
//  678       aString[counter++]=*pstr;
        LDRB     R1,[R7, #+0]
        ADD      R2,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
        ADDS     R4,R4,#+1
//  679       pstr++;
        ADDS     R7,R7,#+1
        B        ??LCD_WriteStringDecValue_10
//  680     }
//  681     i=0;
??LCD_WriteStringDecValue_11:
        MOVS     R5,R0
//  682 
//  683     while (aDec[i] != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringDecValue_12:
        ADD      R0,SP,#+12
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ      ??LCD_WriteStringDecValue_13
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+21
        BGE      ??LCD_WriteStringDecValue_13
//  684       aString[counter++]=aDec[i++];
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDRB     R0,[R0, R1]
        ADD      R1,SP,#+20
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringDecValue_12
//  685     }
//  686     LCD_WriteString_NormalFont( line, aString );
??LCD_WriteStringDecValue_13:
        ADD      R1,SP,#+20
        ADD      R0,SP,#+60
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString_NormalFont
        B        ??LCD_WriteStringDecValue_14
//  687   }
//  688  
//  689   else if(numberFormat == gLCD_HexFormat_c) {
??LCD_WriteStringDecValue_0:
        ADD      R0,SP,#+64
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??LCD_WriteStringDecValue_15
//  690     do{
//  691       aH[i]=gaHexValue[value % divHex];
??LCD_WriteStringDecValue_16:
        LDR      R0,??DataTable9
        STR      R0,[SP, #+0]
        MOV      R0,SP
        LDRH     R0,[R0, #+56]
        MOV      R2,SP
        MOVS     R1,#+8
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idivmod
        LDR      R0,[SP, #+0]
        LDRB     R0,[R0, R1]
        ADD      R1,SP,#+48
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  692       value=value / divHex;
        MOV      R0,SP
        LDRH     R0,[R0, #+56]
        MOV      R2,SP
        MOVS     R1,#+8
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idiv
        MOV      R1,SP
        STRH     R0,[R1, #+56]
//  693       i++;
        ADDS     R5,R5,#+1
//  694     }
//  695     while(value > 15);
        MOV      R0,SP
        LDRH     R0,[R0, #+56]
        CMP      R0,#+16
        BGE      ??LCD_WriteStringDecValue_16
//  696     aH[i]=gaHexValue[value];
        ADD      R1,SP,#+48
        LDR      R0,??DataTable9
        MOV      R2,SP
        LDRH     R2,[R2, #+56]
        LDRB     R0,[R0, R2]
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  697     counter=0;
        MOVS     R0,#+0
//  698     while(i > 0){
??LCD_WriteStringDecValue_17:
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+0
        BEQ      ??LCD_WriteStringDecValue_18
//  699       aHex[counter++]=aH[i--];
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LDRB     R2,[R1, R2]
        ADD      R3,SP,#+40
        MOVS     R4,R0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        STRB     R2,[R3, R4]
        SUBS     R5,R5,#+1
        ADDS     R0,R0,#+1
        B        ??LCD_WriteStringDecValue_17
//  700     }
//  701 
//  702     aHex[counter++]=aH[0];
??LCD_WriteStringDecValue_18:
        ADD      R2,SP,#+40
        LDRB     R1,[R1, #+0]
        MOVS     R3,R0
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
        ADDS     R0,R0,#+1
//  703     aHex[counter]='\0';
        MOVS     R1,#+0
        MOVS     R3,R0
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R1,[R2, R3]
//  704 
//  705     counter=0;
        MOVS     R4,#+0
//  706     while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringDecValue_19:
        LDRB     R0,[R7, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringDecValue_20
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+21
        BGE      ??LCD_WriteStringDecValue_20
//  707       aString[counter++]=*pstr;
        LDRB     R0,[R7, #+0]
        ADD      R1,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R0,[R1, R3]
        ADDS     R4,R4,#+1
//  708       pstr++;
        ADDS     R7,R7,#+1
        B        ??LCD_WriteStringDecValue_19
//  709     }
//  710     i=0;
??LCD_WriteStringDecValue_20:
        MOVS     R0,#+0
        MOVS     R5,R0
//  711     while (aHex[i] != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringDecValue_21:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDRB     R0,[R2, R0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringDecValue_22
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+21
        BGE      ??LCD_WriteStringDecValue_22
//  712       aString[counter++]=aHex[i++];
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDRB     R0,[R2, R0]
        ADD      R1,SP,#+20
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R0,[R1, R3]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringDecValue_21
//  713     }
//  714     aString[counter]='\0';
??LCD_WriteStringDecValue_22:
        MOVS     R0,#+0
        ADD      R1,SP,#+20
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
//  715     LCD_WriteString_NormalFont( line, aString );
        ADD      R1,SP,#+20
        ADD      R0,SP,#+60
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString_NormalFont
        B        ??LCD_WriteStringDecValue_14
//  716   }
//  717   else {
//  718     LCD_WriteString_NormalFont( line,"Format unknow"); 
??LCD_WriteStringDecValue_15:
        LDR      R1,??DataTable4
        ADD      R0,SP,#+60
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString_NormalFont
//  719   }
//  720 }
??LCD_WriteStringDecValue_14:
        ADD      SP,SP,#+68
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DATA32
        DC32     mErrorIndicator
//  721 
//  722 
//  723 
//  724 /******************************************************************************
//  725 * This functions allows to write raw bytes to the LCD, the maximum number of bytes
//  726 *	capable per line is 8, this functions transfors every hex simbol in a byte to a char.
//  727 *
//  728 * Interface assumptions:
//  729 *	IN: The pointer to the label to print with the bytes.
//  730 *	IN: The bytes to print.
//  731 *	IN: The line in the LCD where the bytes with the label.
//  732 *	IN: The number of bytes to print in the LCD.
//  733 *
//  734 * Return value:
//  735 * None
//  736 *
//  737 *
//  738 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  739 void LCD_WriteBytes
//  740 (
//  741 	uint8_t   *pstr,   /* IN: The pointer to the label to print with the bytes. */
//  742 	uint8_t   *value,  /* IN: The bytes to print in hex. */
//  743 	uint8_t   line,    /* IN: The line in the LCD where the bytes with the label. */
//  744 	uint8_t   length   /* IN: The number of bytes to print in the LCD. */
//  745 )
//  746 {
LCD_WriteBytes:
        PUSH     {R1-R7,LR}
        SUB      SP,SP,#+48
        MOVS     R6,R0
//  747 
//  748 	uint8_t i=0,counter=0, cIndex,auxIndex;
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, #+2]
        MOVS     R5,#+0
//  749 	uint8_t aString[17];
//  750 
//  751 	uint8_t  hexIndex;
//  752 	uint8_t aHex[gMAX_LCD_CHARS_c]={'S','i','z','e',' ','N','o','t',' ','V','a','l','i','d','*','*'};
        ADD      R0,SP,#+24
        LDR      R1,??DataTable9_1
        MOVS     R2,#+24
        BL       __aeabi_memcpy4
//  753 
//  754   /* clear the error indicator */
//  755   mErrorIndicator = gLCD_NoError_c;
        MOVS     R0,#+0
        LDR      R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  756   
//  757 	counter=0;
        MOVS     R4,#+0
//  758 	while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c )
??LCD_WriteBytes_0:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteBytes_1
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+21
        BGE      ??LCD_WriteBytes_1
//  759 	{
//  760 		aString[counter++]=*pstr;
        LDRB     R0,[R6, #+0]
        ADD      R1,SP,#+4
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R0,[R1, R2]
        ADDS     R4,R4,#+1
//  761 		pstr++;
        ADDS     R6,R6,#+1
        B        ??LCD_WriteBytes_0
//  762 	}
//  763 	if ((((length*2)+counter) <= gMAX_LCD_CHARS_c) && ((length*2) > 0))
??LCD_WriteBytes_1:
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R0,R1
        CMP      R0,#+22
        BGE      ??LCD_WriteBytes_2
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        CMP      R0,#+1
        BLT      ??LCD_WriteBytes_2
//  764 	{
//  765 		for (cIndex =0,auxIndex = 0; cIndex < length; cIndex++,auxIndex+=2)
        MOVS     R0,#+0
        MOVS     R1,R0
        MOVS     R7,R1
        MOVS     R1,R0
        MOV      R2,SP
        STRB     R1,[R2, #+0]
??LCD_WriteBytes_3:
        MOVS     R1,R7
        ADD      R2,SP,#+56
        LDRB     R2,[R2, #+0]
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,R2
        BCS      ??LCD_WriteBytes_4
//  766 		{
//  767 			hexIndex = value[cIndex]&0xf0;
        LDR      R1,[SP, #+48]
        MOVS     R2,R7
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LDRB     R2,[R1, R2]
        MOVS     R1,#+240
        ANDS     R1,R1,R2
//  768 			hexIndex = hexIndex>>4;
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        MOV      R2,SP
        STRB     R1,[R2, #+1]
//  769 			aHex[auxIndex] = gaHexValue[hexIndex];
        LDR      R2,??DataTable9
        ADD      R1,SP,#+24
        MOV      R3,SP
        LDRB     R3,[R3, #+1]
        LDRB     R3,[R2, R3]
        MOV      R5,SP
        LDRB     R5,[R5, #+0]
        STRB     R3,[R1, R5]
//  770 			hexIndex = value[cIndex] & 0x0f;
        LDR      R3,[SP, #+48]
        MOVS     R5,R7
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LDRB     R3,[R3, R5]
        LSLS     R3,R3,#+28       ;; ZeroExtS R3,R3,#+28,#+28
        LSRS     R3,R3,#+28
        MOV      R5,SP
        STRB     R3,[R5, #+1]
//  771 			aHex[auxIndex + 1] = gaHexValue[hexIndex];
        MOV      R3,SP
        LDRB     R3,[R3, #+1]
        LDRB     R2,[R2, R3]
        MOV      R3,SP
        LDRB     R3,[R3, #+0]
        ADDS     R1,R1,R3
        STRB     R2,[R1, #+1]
//  772 		}
        ADDS     R7,R7,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+2
        MOV      R2,SP
        STRB     R1,[R2, #+0]
        B        ??LCD_WriteBytes_3
//  773 		aHex[(length * 2)]='\0';
??LCD_WriteBytes_4:
        ADD      R1,SP,#+24
        ADD      R2,SP,#+56
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+2
        MULS     R2,R3,R2
        STRB     R0,[R1, R2]
        B        ??LCD_WriteBytes_5
//  774 	}
//  775 	else
//  776 		counter = 0;
??LCD_WriteBytes_2:
        MOVS     R0,#+0
        MOVS     R4,R0
//  777 
//  778 	i=0;
??LCD_WriteBytes_5:
        MOVS     R1,#+0
        MOVS     R5,R1
//  779 	while (aHex[i] != '\0' && counter <gMAX_LCD_CHARS_c )
??LCD_WriteBytes_6:
        ADD      R0,SP,#+24
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LDRB     R2,[R0, R2]
        CMP      R2,#+0
        BEQ      ??LCD_WriteBytes_7
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+21
        BGE      ??LCD_WriteBytes_7
//  780 		aString[counter++]=aHex[i++];
        MOVS     R2,R5
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LDRB     R0,[R0, R2]
        ADD      R2,SP,#+4
        MOVS     R3,R4
        LSLS     R3,R3,#+24       ;; ZeroExtS R3,R3,#+24,#+24
        LSRS     R3,R3,#+24
        STRB     R0,[R2, R3]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteBytes_6
//  781 
//  782 	aString[counter]='\0';
??LCD_WriteBytes_7:
        ADD      R0,SP,#+4
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        STRB     R1,[R0, R2]
//  783 	LCD_WriteString( line, aString );
        ADD      R1,SP,#+4
        ADD      R0,SP,#+52
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString
//  784 }
        ADD      SP,SP,#+60
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  785 
//  786 /******************************************************************************
//  787 * This function sends a command to the display controller
//  788 *
//  789 * Interface assumptions:
//  790 *
//  791 *
//  792 * Return value:
//  793 * None
//  794 *
//  795 *
//  796 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  797 void LCD_WriteCommand(uint8_t command)
//  798 {
LCD_WriteCommand:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  799   /* clear the error indicator */
//  800   mErrorIndicator = gLCD_NoError_c;
        MOVS     R0,#+0
        LDR      R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  801   
//  802   Gpio_SetPinData(LCD_A0, LCD_A0_COMMAND);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinData
//  803   SetOutput();
        BL       SetOutput
//  804   Gpio_SetPinData(LCD_CS, LCD_CS_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  805   Gpio_SetPinData(LCD_WR, LCD_WR_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  806   SendData(command);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       SendData
//  807   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
//  808   Gpio_SetPinData(LCD_WR, LCD_WR_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  809   Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  810   SetHiZ();
        BL       SetHiZ
//  811   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
//  812 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  813 
//  814 /******************************************************************************
//  815 * This function sends a data to the display controller
//  816 *
//  817 * Interface assumptions:
//  818 *
//  819 *
//  820 * Return value:
//  821 * None
//  822 *
//  823 *
//  824 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  825 void LCD_WriteData(uint8_t data)
//  826 {
LCD_WriteData:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  827   /* clear the error indicator */
//  828   mErrorIndicator = gLCD_NoError_c;
        MOVS     R0,#+0
        LDR      R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  829 
//  830   Gpio_SetPinData(LCD_A0, LCD_A0_DATA);
        MOVS     R1,#+0
        MOVS     R0,#+21
        BL       Gpio_SetPinData
//  831   Gpio_SetPinData(LCD_CS, LCD_CS_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  832   SetOutput();
        BL       SetOutput
//  833   SendData(data);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       SendData
//  834   Gpio_SetPinData(LCD_WR, LCD_WR_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  835   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
//  836   Gpio_SetPinData(LCD_WR, LCD_WR_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  837   Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  838   SetHiZ();
        BL       SetHiZ
//  839   DelayUs(1);  
        MOVS     R0,#+1
        BL       DelayUs
//  840  
//  841 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  842 
//  843 /******************************************************************************
//  844 * This function sets the font received as parameter as default font
//  845 *
//  846 * Interface assumptions:
//  847 *
//  848 *
//  849 * Return value:
//  850 *      TRUE:  when the font is correctly set
//  851 *      FALSE: when an unsupported font is received as parameter
//  852 * char
//  853 *
//  854 *
//  855 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  856 bool_t LCD_SetFont(lcdFontType_t font)
//  857 {
LCD_SetFont:
        PUSH     {LR}
        MOVS     R1,R0
//  858   /* clear the error indicator */
//  859   mErrorIndicator = gLCD_NoError_c;
        MOVS     R0,#+0
        LDR      R2,??DataTable9_2
        STRB     R0,[R2, #+0]
//  860 
//  861   if(gLCDNumFonts_c > font)
        MOVS     R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BGE      ??LCD_SetFont_0
//  862   {
//  863     mDisplayParams.currentFontType = font;
        LDR      R0,??DataTable11
        STRB     R1,[R0, #+13]
//  864     return TRUE;
        MOVS     R0,#+1
        B        ??LCD_SetFont_1
//  865   }
//  866   else
//  867   {
//  868     return FALSE;
??LCD_SetFont_0:
        MOVS     R0,#+0
??LCD_SetFont_1:
        POP      {R3}
        BX       R3               ;; return
//  869   }
//  870 }
//  871 
//  872 /******************************************************************************
//  873 * This function checks if an error occured during an interface function call.
//  874 * User must always call this function to verify if an interface function executed 
//  875 * successufully.
//  876 *
//  877 * Interface assumptions:
//  878 *
//  879 *
//  880 * Return value:  lcdError_t
//  881 *      gLCD_NoError_c:   no error
//  882 *      gLCD_QueueFull_c: queue is full
//  883 *
//  884 *
//  885 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  886 lcdError_t LCD_CheckError(void)
//  887 {
//  888   return mErrorIndicator;
LCD_CheckError:
        LDR      R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
//  889 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DATA32
        DC32     gaHexValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DATA32
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DATA32
        DC32     mErrorIndicator
//  890 
//  891 /************************************************************************************
//  892 *************************************************************************************
//  893 * Private functions
//  894 *************************************************************************************
//  895 ************************************************************************************/
//  896 
//  897 
//  898 /******************************************************************************
//  899 * This function enables/disables the backlight
//  900 *
//  901 * Interface assumptions:
//  902 *   0 - disable backlight
//  903 *   >0 - enables backlight
//  904 *
//  905 *
//  906 * Return value:
//  907 * None
//  908 *
//  909 *
//  910 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  911 void LCD_SetBacklight(uint8_t brightnessValue)
//  912 {
LCD_SetBacklight:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
//  913     GpioPinState_t backLightState;
//  914     backLightState = (0 != brightnessValue) ? gGpioPinStateHigh_c : gGpioPinStateLow_c;
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+0
        BEQ      ??LCD_SetBacklight_0
        MOVS     R4,#+1
        B        ??LCD_SetBacklight_1
??LCD_SetBacklight_0:
        MOVS     R4,#+0
//  915     Gpio_SetPinData(LCD_BL_PWM,  backLightState);
??LCD_SetBacklight_1:
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,#+10
        BL       Gpio_SetPinData
//  916 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  917 
//  918 /******************************************************************************
//  919 * This function sets/ clears the pixel from (XStartCoord, YStartCoord)
//  920 *
//  921 * Interface assumptions:
//  922 *
//  923 *
//  924 * Return value:
//  925 * None
//  926 *
//  927 *
//  928 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  929 void LCD_WritePixel(uint8_t xStartCoord, uint8_t yStartCoord, bool_t mode)
//  930 {
LCD_WritePixel:
        PUSH     {R0,R2,R4-R7,LR}
        SUB      SP,SP,#+4
        MOVS     R0,R1
//  931   uint8_t page;
//  932   uint8_t read;
//  933 
//  934   if (xStartCoord>=gLCDMaxColumns_c || yStartCoord>=gLCDMaxLines_c)
        MOV      R1,SP
        LDRB     R1,[R1, #+4]
        CMP      R1,#+128
        BGE      ??LCD_WritePixel_0
        MOVS     R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+64
        BLT      ??LCD_WritePixel_1
//  935   {
//  936     return; /* if pixel out of screen exit */
??LCD_WritePixel_0:
        B        ??LCD_WritePixel_2
//  937   }
//  938 
//  939   page = yStartCoord >> 3;
??LCD_WritePixel_1:
        MOVS     R7,R0
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        LSRS     R7,R7,#+3
//  940   yStartCoord %= 8;
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        MOVS     R1,#+8
        BL       __aeabi_idivmod
        MOV      R0,SP
        STRB     R1,[R0, #+0]
//  941 
//  942   LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
//  943   LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + page);
        MOVS     R0,R7
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
//  944   LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((xStartCoord & 0xF0)>>4));
        MOVS     R4,#+16
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
//  945   LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (xStartCoord & 0x0F));       
        MOVS     R5,#+15
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
//  946 
//  947   read = ReadData(); // Dummy read
        BL       ReadData
        MOV      R1,SP
        STRB     R0,[R1, #+1]
//  948   read = ReadData();
        BL       ReadData
        MOVS     R6,R0
//  949 
//  950   LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
//  951   LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + page);
        MOVS     R0,R7
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
//  952   LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((xStartCoord & 0xF0)>>4));
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSRS     R0,R0,#+4
        ORRS     R4,R4,R0
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
//  953   LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (xStartCoord & 0x0F));
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        ANDS     R5,R5,R0
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
//  954 
//  955   if( TRUE == mode )
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        CMP      R0,#+1
        BNE      ??LCD_WritePixel_3
//  956   {
//  957     LCD_WriteData((read | (1 << yStartCoord)));
        MOVS     R0,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        LSLS     R0,R0,R1
        ORRS     R0,R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteData
        B        ??LCD_WritePixel_4
//  958   }
//  959   else
//  960   {  
//  961     LCD_WriteData((read & ~(1 << yStartCoord)));  
??LCD_WritePixel_3:
        MOVS     R1,#+1
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R1,R1,R0
        MVNS     R0,R1
        ANDS     R0,R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteData
//  962   }
//  963 }
??LCD_WritePixel_4:
??LCD_WritePixel_2:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  964 
//  965 /******************************************************************************
//  966 * This function displays a character starting with xCoord and yCoord
//  967 *
//  968 * Interface assumptions:
//  969 *  yCoord is a multiple of 8
//  970 *
//  971 *
//  972 * Return value:
//  973 * None
//  974 *
//  975 *
//  976 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  977 void LCD_WriteCharacter(uint8_t symbol, uint8_t xCoord, uint8_t yCoord)
//  978 {
LCD_WriteCharacter:
        PUSH     {R0-R2,R4-R7,LR}
        SUB      SP,SP,#+8
//  979   uint16_t arrayLocation=0; 
        MOVS     R0,#+0
//  980   uint8_t i, maxLength;
//  981  
//  982   /* if pixel out of screen, exit */
//  983   if((xCoord >= gLCDMaxColumns_c) && (yCoord >= gLCDMaxLines_c))
        MOV      R1,SP
        LDRB     R1,[R1, #+12]
        CMP      R1,#+128
        BLT      ??LCD_WriteCharacter_0
        MOV      R1,SP
        LDRB     R1,[R1, #+16]
        CMP      R1,#+64
        BGE      ??LCD_WriteCharacter_1
//  984   {
//  985     return;
//  986   }
//  987     
//  988   arrayLocation = symbol - mFontOffset_c;
??LCD_WriteCharacter_0:
        MOV      R1,SP
        LDRB     R1,[R1, #+8]
        SUBS     R1,R1,#+32
        MOV      R2,SP
        STRH     R1,[R2, #+0]
//  989   maxLength = aLCDFont[mDisplayParams.currentFontType].fontHeight;
        LDR      R5,??DataTable11
        LDR      R6,??DataTable11_1
        LDRB     R1,[R5, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        ADDS     R1,R6,R1
        LDRB     R7,[R1, #+8]
//  990   /* each character has: 
//  991   *  (aLCDFont[mDisplayParams.currentFontType].pFontIndex[arrayLocation+1] - 
//  992   *   aLCDFont[mDisplayParams.currentFontType].pFontIndex[arrayLocation]) pixels as width 
//  993   *  (aLCDFont[mDisplayParams.currentFontType].fontHeight * 8) pixels as height 
//  994   */
//  995   while(maxLength > 0)
??LCD_WriteCharacter_2:
        MOVS     R0,R7
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+0
        BEQ      ??LCD_WriteCharacter_3
//  996   {
//  997     maxLength--;      
        SUBS     R7,R7,#+1
//  998     InitDisplayWrite(xCoord,yCoord);        
        MOV      R0,SP
        LDRB     R1,[R0, #+16]
        MOV      R0,SP
        LDRB     R0,[R0, #+12]
        BL       InitDisplayWrite
//  999     /* mark line as written */
// 1000     mDisplayParams.writtenLines |= (1<<(yCoord>>3));   
        LDRB     R1,[R5, #+3]
        MOVS     R0,#+1
        MOV      R2,SP
        LDRB     R2,[R2, #+16]
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LSRS     R2,R2,#+3
        LSLS     R0,R0,R2
        ORRS     R0,R0,R1
        STRB     R0,[R5, #+3]
// 1001     for(i = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1002         i < ((aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation+1] - 
// 1003               aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation]) *
// 1004               aLCDFont[mDisplayParams.currentFontType].fontHeight);
??LCD_WriteCharacter_4:
        MOVS     R2,R4
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LDRB     R0,[R5, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R0,[R6, R0]
        MOV      R1,SP
        LDRH     R1,[R1, #+0]
        MOVS     R3,#+2
        MULS     R3,R1,R3
        ADDS     R0,R0,R3
        LDRH     R3,[R0, #+2]
        LDRB     R0,[R5, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,[R6, R0]
        MOV      R12,R1
        MOV      R0,SP
        LDRH     R1,[R0, #+0]
        MOVS     R0,#+2
        MULS     R0,R1,R0
        MOV      R1,R12
        LDRH     R0,[R1, R0]
        SUBS     R0,R3,R0
        LDRB     R1,[R5, #+13]
        MOVS     R3,#+12
        MULS     R1,R3,R1
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+8]
        MULS     R0,R1,R0
        CMP      R2,R0
        BGE      ??LCD_WriteCharacter_5
// 1005         i += aLCDFont[mDisplayParams.currentFontType].fontHeight)        
// 1006     {
// 1007       /* in case the character is representd on multiple lines,
// 1008        * (aLCDFont[mDisplayParams.currentFontType].fontHeight > 1),
// 1009        * display first the upper part of the character and after the lower part 
// 1010        */
// 1011       LCD_WriteData(aLCDFont[mDisplayParams.currentFontType].pFontCharTable[aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation]*aLCDFont[mDisplayParams.currentFontType].fontHeight + i + maxLength]);
        LDRB     R0,[R5, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        ADDS     R0,R6,R0
        LDR      R0,[R0, #+4]
        LDRB     R1,[R5, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R1,[R6, R1]
        MOV      R2,SP
        LDRH     R2,[R2, #+0]
        MOVS     R3,#+2
        MULS     R3,R2,R3
        LDRH     R1,[R1, R3]
        LDRB     R2,[R5, #+13]
        MOVS     R3,#+12
        MULS     R2,R3,R2
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+8]
        MULS     R2,R1,R2
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        ADDS     R1,R2,R1
        MOVS     R2,R7
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        ADDS     R1,R1,R2
        LDRB     R0,[R0, R1]
        BL       LCD_WriteData
// 1012     }
        LDRB     R0,[R5, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+8]
        ADDS     R4,R4,R0
        B        ??LCD_WriteCharacter_4
// 1013     yCoord += 8;
??LCD_WriteCharacter_5:
        MOV      R0,SP
        LDRB     R0,[R0, #+16]
        ADDS     R0,R0,#+8
        MOV      R1,SP
        STRB     R0,[R1, #+16]
        B        ??LCD_WriteCharacter_2
// 1014   }    
// 1015 }
??LCD_WriteCharacter_3:
??LCD_WriteCharacter_1:
        ADD      SP,SP,#+20
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1016 
// 1017 /****************************************************************************************
// 1018 * This function clears the pixels between startXCoord and endXCoord within a single page
// 1019 * (page located at yCoord)
// 1020 *
// 1021 * Interface assumptions:
// 1022 *
// 1023 *
// 1024 * Return value:
// 1025 * None
// 1026 *
// 1027 *
// 1028 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1029 void LCD_ClearPage(uint8_t startXCoord, uint8_t endXCoord, uint8_t yCoord)
// 1030 {
LCD_ClearPage:
        PUSH     {R3-R7,LR}
        MOVS     R5,R0
        MOVS     R4,R1
        MOVS     R7,R2
// 1031   uint8_t i;
// 1032   
// 1033   InitDisplayWrite(startXCoord, yCoord);
        MOVS     R1,R7
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       InitDisplayWrite
// 1034   for(i = startXCoord; i < endXCoord; i++)
        MOVS     R6,R5
??LCD_ClearPage_0:
        MOVS     R0,R6
        MOVS     R1,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R0,R1
        BCS      ??LCD_ClearPage_1
// 1035   {
// 1036     LCD_WriteData(OFF);    
        MOVS     R0,#+0
        BL       LCD_WriteData
// 1037   }    
        ADDS     R6,R6,#+1
        B        ??LCD_ClearPage_0
// 1038 }
??LCD_ClearPage_1:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1039 
// 1040 /****************************************************************************************
// 1041 * This function clears an entire LCD line
// 1042 *
// 1043 * Interface assumptions:
// 1044 *     char line = 0..7
// 1045 *
// 1046 *
// 1047 * Return value:
// 1048 *     TRUE if the line was cleared
// 1049 *     FALSE if the line is not cleared yet
// 1050 *     0xFF  if the line parameter is not valid
// 1051 * None
// 1052 *
// 1053 *
// 1054 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1055 uint8_t LCD_ClearLine(uint8_t line)
// 1056 {
LCD_ClearLine:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
// 1057   static pageParams_t pageToDelete;
// 1058   static bool_t isPageDeleted = TRUE;
// 1059   
// 1060   if(line < gLCDMaxRamDataPages_c)
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BGE      ??LCD_ClearLine_0
// 1061   {
// 1062     /* save the page coordinates */
// 1063     if(isPageDeleted)
        LDR      R5,??DataTable11_2
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_ClearLine_1
// 1064     {
// 1065       pageToDelete.xStartCoord = mLineParams[line].xCoord;
        LDR      R0,??DataTable11_3
        LDR      R1,??DataTable11_4
        MOVS     R2,R6
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        MOVS     R3,#+3
        MULS     R2,R3,R2
        LDRB     R2,[R1, R2]
        STRB     R2,[R0, #+0]
// 1066       pageToDelete.xEndCoord   = gLCDMaxColumns_c;
        MOVS     R2,#+128
        STRB     R2,[R0, #+1]
// 1067       pageToDelete.yCoord      = mLineParams[line].yCoord;
        MOVS     R2,R6
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        MOVS     R3,#+3
        MULS     R2,R3,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+1]
        STRB     R1,[R0, #+2]
// 1068       pageToDelete.line        = line; 
        STRB     R6,[R0, #+3]
// 1069     }
// 1070     
// 1071     /* delete only mMaxDeleteColumns_c columns once because of time constraints */
// 1072     if(((pageToDelete.xEndCoord - pageToDelete.xStartCoord) >= mMaxDeleteColumns_c))
??LCD_ClearLine_1:
        LDR      R4,??DataTable11_3
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+32
        BLT      ??LCD_ClearLine_2
// 1073     {
// 1074       /* the page will be deleted with (gLCDMaxColumns_c/mMaxDeleteColumns_c) consecutive operations */
// 1075       isPageDeleted            = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
// 1076       LCD_ClearPage(pageToDelete.xStartCoord, 
// 1077                     pageToDelete.xStartCoord + mMaxDeleteColumns_c, 
// 1078                     pageToDelete.yCoord); 
        LDRB     R2,[R4, #+2]
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,#+32
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDRB     R0,[R4, #+0]
        BL       LCD_ClearPage
// 1079       /* compute the new xStartCoord for the current page */
// 1080       pageToDelete.xStartCoord = pageToDelete.xStartCoord + mMaxDeleteColumns_c;        
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,#+32
        STRB     R0,[R4, #+0]
// 1081       return FALSE;  
        MOVS     R0,#+0
        B        ??LCD_ClearLine_3
// 1082     }
// 1083     else
// 1084     {    
// 1085       LCD_ClearPage(pageToDelete.xStartCoord, 
// 1086                     pageToDelete.xEndCoord, 
// 1087                     pageToDelete.yCoord);
??LCD_ClearLine_2:
        LDRB     R2,[R4, #+2]
        LDRB     R1,[R4, #+1]
        LDRB     R0,[R4, #+0]
        BL       LCD_ClearPage
// 1088       isPageDeleted            = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
// 1089       return TRUE;  
        MOVS     R0,#+1
        B        ??LCD_ClearLine_3
// 1090     } 
// 1091   }
// 1092   else
// 1093   {
// 1094     return 0xFF;
??LCD_ClearLine_0:
        MOVS     R0,#+255
??LCD_ClearLine_3:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1095   }
// 1096 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DATA32
        DC32     mDisplayParams

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DATA32
        DC32     aLCDFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DATA32
        DC32     `LCD_ClearLine::isPageDeleted`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DATA32
        DC32     `LCD_ClearLine::pageToDelete`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DATA32
        DC32     mLineParams

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`LCD_ClearLine::pageToDelete`:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
`LCD_ClearLine::isPageDeleted`:
        DATA8
        DC8 1
// 1097 
// 1098 /******************************************************************************
// 1099 * This function process an LCD operation (clear, write string).
// 1100 *
// 1101 * Interface assumptions:
// 1102 *
// 1103 *
// 1104 * Return value:
// 1105 * None
// 1106 *
// 1107 *
// 1108 ******************************************************************************/
// 1109 
// 1110 
// 1111 /******************************************************************************
// 1112 * This function sets a certain value to the LCD DATA pins
// 1113 *
// 1114 * Interface assumptions:
// 1115 *
// 1116 *
// 1117 * Return value:
// 1118 * None
// 1119 *
// 1120 *
// 1121 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1122 static void SendData(uint8_t data)
// 1123 {
SendData:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1124 #if gLCDGpioPinMode_c
// 1125     /* bit |7|6|5|4|3|2|1|0| */
// 1126     (void)Gpio_SetPinData(LCD_D0, (data & 0x01)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1127     (void)Gpio_SetPinData(LCD_D1, (data & 0x02)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1128     (void)Gpio_SetPinData(LCD_D2, (data & 0x04)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1129     (void)Gpio_SetPinData(LCD_D3, (data & 0x08)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1130     (void)Gpio_SetPinData(LCD_D4, (data & 0x10)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1131     (void)Gpio_SetPinData(LCD_D5, (data & 0x20)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1132     (void)Gpio_SetPinData(LCD_D6, (data & 0x40)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1133     (void)Gpio_SetPinData(LCD_D7, (data & 0x80)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1134 #else /* gLCDGpioPinMode_c */    
// 1135     Gpio_SetPortData(LCD_DATA_LO_PORT, LCD_DATA_LO_WRITE(data), LCD_DATA_LO_MASK); 
        MOVS     R2,#+240
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSLS     R1,R0,#+4
        MOVS     R0,#+0
        BL       Gpio_SetPortData
// 1136     Gpio_SetPortData(LCD_DATA_HI_PORT, LCD_DATA_HI_WRITE(data), LCD_DATA_HI_MASK);
        MOVS     R2,#+15
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,#+1
        BL       Gpio_SetPortData
// 1137     
// 1138 #endif /* gLCDGpioPinMode_c */     
// 1139 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1140 
// 1141 /******************************************************************************
// 1142 * This function sets the LCD DATA pins as inputs
// 1143 *
// 1144 * Interface assumptions:
// 1145 *
// 1146 *
// 1147 * Return value:
// 1148 * None
// 1149 *
// 1150 *
// 1151 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1152 static void SetHiZ(void)
// 1153 {
SetHiZ:
        PUSH     {R7,LR}
// 1154     /* change data pins direction back to input */
// 1155 #if gLCDGpioPinMode_c
// 1156     (void)Gpio_SetPinDir(LCD_D0,      gGpioDirIn_c);
// 1157     (void)Gpio_SetPinDir(LCD_D1,      gGpioDirIn_c);
// 1158     (void)Gpio_SetPinDir(LCD_D2,      gGpioDirIn_c);
// 1159     (void)Gpio_SetPinDir(LCD_D3,      gGpioDirIn_c);
// 1160     (void)Gpio_SetPinDir(LCD_D4,      gGpioDirIn_c);
// 1161     (void)Gpio_SetPinDir(LCD_D5,      gGpioDirIn_c);
// 1162     (void)Gpio_SetPinDir(LCD_D6,      gGpioDirIn_c);
// 1163     (void)Gpio_SetPinDir(LCD_D7,      gGpioDirIn_c);
// 1164 #else /* gLCDGpioPinMode_c */ 
// 1165     Gpio_SetPortDir(LCD_DATA_LO_PORT, ~LCD_DATA_LO_MASK, LCD_DATA_LO_MASK); 
        MOVS     R2,#+240
        MOVS     R1,#+240
        MVNS     R1,R1            ;; #-241
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
// 1166     Gpio_SetPortDir(LCD_DATA_HI_PORT, ~LCD_DATA_HI_MASK, LCD_DATA_HI_MASK); 
        MOVS     R2,#+15
        MOVS     R1,#+15
        MVNS     R1,R1            ;; #-16
        MOVS     R0,#+1
        BL       Gpio_SetPortDir
// 1167     
// 1168 #endif /* gLCDGpioPinMode_c */
// 1169 
// 1170 }
        POP      {R0,R3}
        BX       R3               ;; return
// 1171 
// 1172 /******************************************************************************
// 1173 * This function sets the LCD DATA pins as outputs
// 1174 *
// 1175 * Interface assumptions:
// 1176 *
// 1177 *
// 1178 * Return value:
// 1179 * None
// 1180 *
// 1181 *
// 1182 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1183 static void SetOutput(void)
// 1184 {
SetOutput:
        PUSH     {R7,LR}
// 1185   /* change data pins direction to output */
// 1186 #if gLCDGpioPinMode_c
// 1187   (void)Gpio_SetPinDir(LCD_D0,      gGpioDirOut_c);
// 1188   (void)Gpio_SetPinDir(LCD_D1,      gGpioDirOut_c);
// 1189   (void)Gpio_SetPinDir(LCD_D2,      gGpioDirOut_c);
// 1190   (void)Gpio_SetPinDir(LCD_D3,      gGpioDirOut_c);
// 1191   (void)Gpio_SetPinDir(LCD_D4,      gGpioDirOut_c);
// 1192   (void)Gpio_SetPinDir(LCD_D5,      gGpioDirOut_c);
// 1193   (void)Gpio_SetPinDir(LCD_D6,      gGpioDirOut_c);
// 1194   (void)Gpio_SetPinDir(LCD_D7,      gGpioDirOut_c);
// 1195 #else /* gLCDGpioPinMode_c */
// 1196    
// 1197     Gpio_SetPortDir(LCD_DATA_LO_PORT, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);      
        MOVS     R2,#+240
        MOVS     R1,#+240
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
// 1198     Gpio_SetPortDir(LCD_DATA_HI_PORT, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);         
        MOVS     R2,#+15
        MOVS     R1,#+15
        MOVS     R0,#+1
        BL       Gpio_SetPortDir
// 1199     
// 1200 #endif /* gLCDGpioPinMode_c */
// 1201 
// 1202 }
        POP      {R0,R3}
        BX       R3               ;; return
// 1203 
// 1204 /******************************************************************************
// 1205 * This function initilizes the display for a data write (line, page, column)
// 1206 *
// 1207 * Interface assumptions:
// 1208 *
// 1209 *
// 1210 * Return value:
// 1211 * None
// 1212 *
// 1213 *
// 1214 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1215 static void InitDisplayWrite(uint8_t xStartCoord, uint8_t yStartCoord)
// 1216 {
InitDisplayWrite:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1217 
// 1218   uint8_t page;  
// 1219   
// 1220   page = yStartCoord >> 3;
        MOVS     R6,R4
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        LSRS     R6,R6,#+3
// 1221 
// 1222   LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
// 1223   LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + page);
        MOVS     R0,R6
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1224   LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((xStartCoord & 0xF0)>>4));
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        MOVS     R0,#+16
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1225   LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (xStartCoord & 0x0F));         
        LSLS     R0,R5,#+28       ;; ZeroExtS R0,R5,#+28,#+28
        LSRS     R0,R0,#+28
        BL       LCD_WriteCommand
// 1226 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1227 
// 1228 /******************************************************************************
// 1229 * This function reads the current location from display data RAM
// 1230 *
// 1231 * Interface assumptions:
// 1232 *
// 1233 *
// 1234 * Return value:
// 1235 * None
// 1236 *
// 1237 *
// 1238 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1239 static uint8_t ReadData(void)
// 1240 {
ReadData:
        PUSH     {R4,LR}
// 1241   uint8_t ReturnValue;
// 1242   Gpio_SetPinData(LCD_A0, LCD_A0_DATA);
        MOVS     R1,#+0
        MOVS     R0,#+21
        BL       Gpio_SetPinData
// 1243   Gpio_SetPinData(LCD_CS, LCD_CS_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinData
// 1244   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1245   Gpio_SetPinData(LCD_RD, LCD_RD_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinData
// 1246   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1247   ReturnValue = GetData();
        BL       GetData
        MOVS     R4,R0
// 1248   Gpio_SetPinData(LCD_RD, LCD_RD_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       Gpio_SetPinData
// 1249   Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
// 1250   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1251   return ReturnValue;
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1252 }
// 1253 
// 1254 /******************************************************************************
// 1255 * This function sets the data from the current RAM display location
// 1256 * to LCD DATA pins
// 1257 *
// 1258 * Interface assumptions:
// 1259 *
// 1260 *
// 1261 * Return value:
// 1262 * unsigned 8 bit
// 1263 *
// 1264 *
// 1265 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1266 static uint8_t GetData(void)
// 1267 {
GetData:
        PUSH     {R3-R5,LR}
// 1268     uint8_t        ReturnValue = 0;
        MOVS     R4,#+0
// 1269 #if gLCDGpioPinMode_c
// 1270     GpioPinState_t Bitdata;
// 1271     /* bit |7|6|5|4|3|2|1|0| */
// 1272     Gpio_GetPinData(LCD_D7, &Bitdata);
// 1273     ReturnValue = (Bitdata)? (1<<7) : 0;
// 1274     Gpio_GetPinData(LCD_D6, &Bitdata);
// 1275     ReturnValue |= (Bitdata)? (1<<6) : 0;
// 1276     Gpio_GetPinData(LCD_D5, &Bitdata);
// 1277     ReturnValue |= (Bitdata)? (1<<5) : 0;
// 1278     Gpio_GetPinData(LCD_D4, &Bitdata);
// 1279     ReturnValue |= (Bitdata)? (1<<4) : 0;
// 1280     Gpio_GetPinData(LCD_D3, &Bitdata);
// 1281     ReturnValue |= (Bitdata)? (1<<3) : 0;
// 1282     Gpio_GetPinData(LCD_D2, &Bitdata);
// 1283     ReturnValue |= (Bitdata)? (1<<2) : 0;
// 1284     Gpio_GetPinData(LCD_D1, &Bitdata);
// 1285     ReturnValue |= (Bitdata)? (1<<1) : 0;
// 1286     Gpio_GetPinData(LCD_D0, &Bitdata);
// 1287     ReturnValue |= (Bitdata)? (1<<0) : 0;
// 1288     
// 1289 #else /* gLCDGpioPinMode_c */
// 1290     uint32_t temp;
// 1291     Gpio_GetPortData(LCD_DATA_LO_PORT, &temp);
        MOV      R1,SP
        MOVS     R0,#+0
        BL       Gpio_GetPortData
// 1292     ReturnValue = LCD_DATA_LO_READ(LCD_DATA_LO_MASK & temp);
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+4
        LSLS     R5,R0,#+28       ;; ZeroExtS R5,R0,#+28,#+28
        LSRS     R5,R5,#+28
// 1293     Gpio_GetPortData(LCD_DATA_HI_PORT, &temp);
        MOV      R1,SP
        MOVS     R0,#+1
        BL       Gpio_GetPortData
// 1294     ReturnValue |= LCD_DATA_HI_READ(LCD_DATA_HI_MASK & temp);
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+4
        ORRS     R0,R0,R5
// 1295 
// 1296 #endif /* gLCDGpioPinMode_c */
// 1297     
// 1298     return ReturnValue;
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R1,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1299 }
// 1300 
// 1301 /******************************************************************************
// 1302 * This function gets the length of a string and return the length
// 1303 *
// 1304 * Interface assumptions:
// 1305 *
// 1306 *
// 1307 * Return value:
// 1308 * char
// 1309 *
// 1310 *
// 1311 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1312 static uint8_t GetStrlen
// 1313   (
// 1314   const uint8_t *pString /* IN: Pointer to text string */
// 1315   )
// 1316 {
GetStrlen:
        PUSH     {LR}
        MOVS     R1,R0
// 1317   int8_t count=0, length=0;
        MOVS     R0,#+0
        MOVS     R2,R0
// 1318 
// 1319   while (*pString != '\0' && count <gMAX_LCD_CHARS_c ) {
??GetStrlen_0:
        LDRB     R3,[R1, #+0]
        CMP      R3,#+0
        BEQ      ??GetStrlen_1
        MOVS     R3,R2
        LSLS     R3,R3,#+24       ;; SignExtS R3,R3,#+24,#+24
        ASRS     R3,R3,#+24
        CMP      R3,#+21
        BGE      ??GetStrlen_1
// 1320     count++;
        ADDS     R2,R2,#+1
// 1321     length++;
        ADDS     R0,R0,#+1
// 1322     pString++;
        ADDS     R1,R1,#+1
        B        ??GetStrlen_0
// 1323   }
// 1324 
// 1325   /* Check boundries */
// 1326   if ( length > gMAX_LCD_CHARS_c ) {
??GetStrlen_1:
        MOVS     R3,R0
        LSLS     R3,R3,#+24       ;; SignExtS R3,R3,#+24,#+24
        ASRS     R3,R3,#+24
        CMP      R3,#+22
        BLT      ??GetStrlen_2
// 1327     length = gMAX_LCD_CHARS_c;
        MOVS     R3,#+21
        MOVS     R0,R3
// 1328   }
// 1329 
// 1330   return length;
??GetStrlen_2:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R3}
        BX       R3               ;; return
// 1331 }
// 1332 
// 1333 /******************************************************************************
// 1334 * This function draws a 24x24 pixels Icon
// 1335 *
// 1336 * Interface assumptions:
// 1337 *
// 1338 *
// 1339 * Return value:
// 1340 * char
// 1341 *
// 1342 *
// 1343 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1344 void LCD_DrawIcon(uint8_t u8XCoord, uint8_t u8YPage, uint8_t * pu8Icon)
// 1345 {
LCD_DrawIcon:
        PUSH     {R0,R4-R7,LR}
        MOVS     R7,R1
        MOVS     R4,R2
// 1346   uint8_t u8i;
// 1347   uint8_t u8j;
// 1348   
// 1349   if (u8XCoord >= gLCDMaxColumns_c || u8YPage >= gLCDMaxRamDataPages_c)
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BGE      ??LCD_DrawIcon_0
        MOVS     R0,R7
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??LCD_DrawIcon_1
// 1350   {
// 1351     return; /* if pixel out of screen exit */
??LCD_DrawIcon_0:
        B        ??LCD_DrawIcon_2
// 1352   }
// 1353 
// 1354   for(u8i = 0; u8i < 3; u8i++)
??LCD_DrawIcon_1:
        MOVS     R6,#+0
??LCD_DrawIcon_3:
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+3
        BGE      ??LCD_DrawIcon_4
// 1355   {
// 1356     LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
// 1357     LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + u8YPage++);
        MOVS     R0,R7
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
        ADDS     R7,R7,#+1
// 1358     LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((u8XCoord & 0xF0)>>4));
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        MOVS     R0,#+16
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1359     LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (u8XCoord & 0x0F));
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        BL       LCD_WriteCommand
// 1360     for(u8j = 0; u8j < 24; u8j++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_DrawIcon_5:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+24
        BGE      ??LCD_DrawIcon_6
// 1361     {
// 1362       LCD_WriteData(*pu8Icon); 
        LDRB     R0,[R4, #+0]
        BL       LCD_WriteData
// 1363       pu8Icon++;
        ADDS     R4,R4,#+1
// 1364     }
        ADDS     R5,R5,#+1
        B        ??LCD_DrawIcon_5
// 1365   }
??LCD_DrawIcon_6:
        ADDS     R6,R6,#+1
        B        ??LCD_DrawIcon_3
// 1366   
// 1367 }
??LCD_DrawIcon_4:
??LCD_DrawIcon_2:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1368 
// 1369 #endif /* (gLCDSupported_d == 1) */
// 
//     7 bytes in section .bss
//   209 bytes in section .data
//   104 bytes in section .rodata
// 3 866 bytes in section .text
// 
// 3 866 bytes of CODE  memory
//   104 bytes of CONST memory
//   216 bytes of DATA  memory
//
//Errors: none
//Warnings: none
