/************************************************************************************
* Keyboard.c
*
* This file contains the keyboard initialization function.
*
* Author(s): 
*
* Copyright (c) 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
Revision history:
   Date                     Author                                    Comments
   ----------               ----------------------                    -------
************************************************************************************/
/************************************************************************************
* This header file is for Keyboard Driver Interface.
*
* Copyright (c) 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

/************************************************************************************
* Public header file for the Gpio driver.
*
* Author(s):  - B04839 
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
Revision history:
   Date                     Author                                    Comments
   ----------               ----------------------                    -------
   31.08.2006                B04839                                Created
************************************************************************************/

/************************************************************************************
* This header file is provided as an interface to hardware
* This file holds definitions of the peripheral registers  
*
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
* 
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
************************************************************************************/
/************************************************************************************
* This is a template header file.
*
* Author(s):
*   Dragos Musoiu
* (c) Copyright 2005, Freescale, Inc.  All rights reserved.
*
* Freescale Confidential Proprietary
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
************************************************************************************/

/************************************************************************************
* This file holds type definitions that maps the standard c-types into types
* with guaranteed sizes. The types are target/platform specific and must be edited
* for each new target/platform.
*
* The header file also provides definitions for TRUE, FALSE and NULL.
*
* (c) Copyright 2006, Freescale Semiconductor, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*************************************************************************************/


/************************************************************************************
*
*       TYPE DEFINITIONS
*
************************************************************************************/

typedef signed    char  int8_t;
typedef unsigned  char  uint8_t;
typedef signed    short int16_t;
typedef unsigned  short uint16_t;
typedef signed    long  int32_t;
typedef unsigned  long  uint32_t;
typedef signed    long long int64_t;
typedef unsigned  long long uint64_t;

typedef signed    char  intn8_t;
typedef unsigned  char  uintn8_t;
typedef signed    short intn16_t;
typedef unsigned  short uintn16_t;
typedef signed    long  intn32_t;
typedef unsigned  long  uintn32_t;
typedef signed    long long intn64_t;
typedef unsigned  long long uintn64_t;

/* boolean types */
typedef uint8_t   bool_t;
typedef uintn8_t  booln_t;
/* used for indexing into an array in the most efficient manner for the platform */
typedef uint8_t   index_t;





typedef uint32_t zbClock32_t;
typedef uint32_t zbClock24_t;
typedef uint16_t zbClock16_t;

/* common macros to reduce code size in S08 */

/* allow for routines/variables to be static or not at compile-time. */

/* add assert codes if needed. Calls assert function. */
typedef uint8_t assertCode_t;

void BeeAppAssert(assertCode_t code);


/* indicate endian-ness of this MCU */

/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/


//------------------------------------------------------------------------
/************************************************************************************
*************************************************************************************
* Public prototypes
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t pwrSource:2;
    uint32_t pads1P8VSel:1;
    uint32_t spiF1P8VSel:1;
    uint32_t jtagEn:1;
    uint32_t xtal32Exists:1;
    uint32_t:2;
    uint32_t xtalClkDiv:6;
  } bit;
} crmSysCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t timerWuEn:1;
    uint32_t rtcWuEn:1;
    uint32_t hostWake:1;
    uint32_t autoADC:1;
    uint32_t extWuEn:4;
    uint32_t extWuEdge:4;
    uint32_t extWuPol:4;
    uint32_t timerWuIEn:1;
    uint32_t rtcWuIEn:1;
    uint32_t:2;
    uint32_t extWuIEn:4;
    uint32_t:4;
    uint32_t extOutPol:4;
  } bit;
} crmWuCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t hib:1;
    uint32_t doze:1;
    uint32_t :2;
    uint32_t ramRet:2;
    uint32_t mcuRet:1;
    uint32_t digPadEn:1;
  } bit;
} crmSleepCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t bsEn :1;
    uint32_t wait4Irq:1;
    uint32_t bsManEn:1;
    uint32_t armClkGEn:1;
    uint32_t :4;
    uint32_t armOffTime:6;              
  } bit;
} crmBSCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t copEn:1;
    uint32_t copOut:1;
    uint32_t copWP:1;
    uint32_t :5;
    uint32_t copTimeOut:7;
    uint32_t :1;
    uint32_t copCount:7;                 
  } bit;
} crmCopCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t sleepSync:1;
    uint32_t hibWuEvt:1;
    uint32_t dozeWuEvt:1;
    uint32_t rtcWuEvt:1;
    uint32_t extWuEvt:4;
    uint32_t xtal32Rdy:1;
    uint32_t calDone:1;
    uint32_t copEvt:1;
    uint32_t :5;
    uint32_t xtal32Exists:1;
    uint32_t vRegBuckRdy:1;
    uint32_t vReg1P8VRdy:1;
    uint32_t vReg1P5VRdy:1;
  } bit;
} crmStatusReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t calTimeout :16;
    uint32_t calEn:1;
    uint32_t calIEn:1;
  } bit;
} crmCalCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t rOscEn :1;
    uint32_t rOscBiasSel:3;
    uint32_t rOscFTune:5;
    uint32_t rOscCTune:4;
  } bit;
} crmRingOsclCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t wp:1;
    uint32_t smallSig:1;
    uint32_t startupDelayBypass:1;
    uint32_t:1;
    uint32_t startupDelaySel:3;
    uint32_t:1;
    uint32_t iBiasSel:4; 
    uint32_t:4;
    uint32_t fTune:5;
    uint32_t cTune:4;
    uint32_t bulktune:1;
    uint32_t:6;
  } bit;
} crmXtalCntlReg_t;



//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t xtal32En:1;
    uint32_t xtal32RdyIEn:1;
  } bit;
} crmXtal32CntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t buckEn:1;
    uint32_t buckSyncRecEn:1;
    uint32_t buckBypassEn:1;
    uint32_t vReg1P5VEn:2;
    uint32_t vReg1P5VISel:2;
    uint32_t vReg1P8VEn:1;
    uint32_t buckClkDiv:4;
  } bit;
} crmVRegCntlReg_t;

//------------------------------------------------------------------------
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t bgapBattTrim:4;
    uint32_t bgap1P8VTrim:4;
    uint32_t vReg0P9VTrim:4;
    uint32_t vReg0P9ITrim:4;
    uint32_t vRegXtalTrim:4;
    uint32_t vRegOscTrim:4;
  } bit;
} crmVRegTrimReg_t;

//------------------------------------------------------------------------
/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
/************************************************************************************
* This header file is provided as an interface to hardware
* This file holds definitions of the peripheral registers  
*
*
* Author(s): B06485
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
* 
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Revision history:
*   date (DD.MM.YYYY)       Author                       Comments
*   ----------           ------------------------         -------
*   25.06.2007                               B06485       Created
*
************************************************************************************/




//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
   uint32_t SSIEN        :1;
   uint32_t TE           :1;
   uint32_t RE           :1;
   uint32_t NET          :1;
   uint32_t              :1;
   uint32_t I2S_MODE     :2;
   uint32_t              :2;
   uint32_t CLK_IST      :1;
   uint32_t TFR_CLK_DIS  :1;
   uint32_t RFR_CLK_DIS  :1;
 }bit;
}SsiCntlReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TFE            :1;
  uint32_t                :1;
  uint32_t RFF            :1;
  uint32_t                :1;
  uint32_t RLS            :1;
  uint32_t TLS            :1;
  uint32_t RFS            :1;
  uint32_t TFS            :1;
  uint32_t TUE            :1;
  uint32_t                :1;
  uint32_t ROE            :1;
  uint32_t                :1;
  uint32_t TDE            :1;
  uint32_t                :1;
  uint32_t RDR            :1;
  uint32_t                :8;
  uint32_t TFRC           :1;
  uint32_t RFRC           :1;
 }bit;
}SsiISReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TFE_EN         :1;
  uint32_t                :1;
  uint32_t RFF_EN         :1;
  uint32_t                :1;
  uint32_t RLS_EN         :1;
  uint32_t TLS_EN         :1;
  uint32_t RFS_EN         :1;
  uint32_t TFS_EN         :1;
  uint32_t TUE_EN         :1;
  uint32_t                :1;
  uint32_t ROE_EN         :1;
  uint32_t                :1;
  uint32_t TDE_EN         :1;
  uint32_t                :1;
  uint32_t RDR_EN         :1;
  uint32_t                :4;
  uint32_t TIE            :1;
  uint32_t                :1;
  uint32_t RIE            :1;
  uint32_t                :8;
  uint32_t TFRC_EN        :1;
  uint32_t RFRC_EN        :1;
 }bit;
}SsiIEReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TEFS           :1;
  uint32_t TFSL           :1;
  uint32_t TFSI           :1;
  uint32_t TSCKP          :1;
  uint32_t TSHFD          :1;
  uint32_t TXDIR          :1;
  uint32_t TFDIR          :1;
  uint32_t TFEN           :1;
  uint32_t                :1;
  uint32_t TXBIT0         :1; 
 }bit;
}SsiTCReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t REFS           :1;
  uint32_t RFSL           :1;
  uint32_t RFSI           :1;
  uint32_t RSCKP          :1;
  uint32_t RSHFD          :1;
  uint32_t RXDIR          :1;
  uint32_t RFDIR          :1;
  uint32_t RFEN           :1;
  uint32_t                :1;
  uint32_t RXBIT0         :1; 
  uint32_t RXEXT          :1;
 }bit;
}SsiRCReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t PM             :8;
  uint32_t DC             :5;
  uint32_t WL             :4;
  uint32_t PSR            :1;
  uint32_t DIV2           :1;
 }bit;
}SsiTCCReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TFWM0          :4;
  uint32_t RFWM0          :4;
  uint32_t TFCNT0         :4;
  uint32_t RFCNT0         :4;
 }bit;
}SsiFCSReg_t;
//------------------------------------------------------------------------
typedef union
{
 uint32_t word;
 struct
 {
  uint32_t SYNRST         :1;
  uint32_t                :2;
  uint32_t INIT           :1;
  uint32_t CLKOFF         :1;  
 }bit;
}SsiOptReg_t;
//------------------------------------------------------------------------

/* platform clock  boundaries */

/* RAM jumpvectores located @ Memory start. 0x00400000 */

/*-- Defines for Processor Modes --------------------------*/

/*-- Defines GPIO pin states ------------------------------*/

/*Peripheral Memory Map Base addresses*/

/* Peripheral Structure Pointer definitions */

/*  extended pointer definition  */

//define the registers for the GPIO peripheral
typedef struct
{  // Registers
  volatile unsigned long DirLo;             //MBAR_GPIO + 0x00
  volatile unsigned long DirHi;             //MBAR_GPIO + 0x04
  volatile unsigned long DataLo;            //MBAR_GPIO + 0x08
  volatile unsigned long DataHi;            //MBAR_GPIO + 0x0C
  volatile unsigned long PuEnLo;            //MBAR_GPIO + 0x10
  volatile unsigned long PuEnHi;            //MBAR_GPIO + 0x14
  volatile unsigned long FuncSel0;          //MBAR_GPIO + 0x18
  volatile unsigned long FuncSel1;          //MBAR_GPIO + 0x1C
  volatile unsigned long FuncSel2;          //MBAR_GPIO + 0x20
  volatile unsigned long FuncSel3;          //MBAR_GPIO + 0x24
  volatile unsigned long InputDataSelLo;    //MBAR_GPIO + 0x28
  volatile unsigned long InputDataSelHi;    //MBAR_GPIO + 0x2C
  volatile unsigned long PuSelLo;           //MBAR_GPIO + 0x30
  volatile unsigned long PuSelHi;           //MBAR_GPIO + 0x34
  volatile unsigned long HystEnLo;          //MBAR_GPIO + 0x38
  volatile unsigned long HystEnHi;          //MBAR_GPIO + 0x3C
  volatile unsigned long PuKeepLo;          //MBAR_GPIO + 0x40
  volatile unsigned long PuKeepHi;          //MBAR_GPIO + 0x44
  // Virtual registers
  volatile unsigned long DataSetLo;         //MBAR_GPIO + 0x48
  volatile unsigned long DataSetHi;         //MBAR_GPIO + 0x4C
  volatile unsigned long DataResetLo;       //MBAR_GPIO + 0x50
  volatile unsigned long DataResetHi;       //MBAR_GPIO + 0x54
  volatile unsigned long DirSetLo;          //MBAR_GPIO + 0x58
  volatile unsigned long DirSetHi;          //MBAR_GPIO + 0x5C
  volatile unsigned long DirResetLo;        //MBAR_GPIO + 0x60
  volatile unsigned long DirResetHi;        //MBAR_GPIO + 0x64
} GpioRegs_t;

//define the registers for the CRM peripheral

typedef struct
{
  volatile unsigned long SysCntl;            //MBAR_CRM + 0x00
  volatile unsigned long WuCntl;             //MBAR_CRM + 0x04
  volatile unsigned long SleepCntl;          //MBAR_CRM + 0x08
  volatile unsigned long BsCntl;             //MBAR_CRM + 0x0C
  volatile unsigned long CopCntl;            //MBAR_CRM + 0x10
  volatile unsigned long CopService;         //MBAR_CRM + 0x14
  volatile unsigned long Status;             //MBAR_CRM + 0x18
  volatile unsigned long ModStatus;          //MBAR_CRM + 0x1C
  volatile unsigned long WuCount;            //MBAR_CRM + 0x20
  volatile unsigned long WuTimeout;          //MBAR_CRM + 0x24
  volatile unsigned long RtcCount;           //MBAR_CRM + 0x28
  volatile unsigned long RtcTimeout;         //MBAR_CRM + 0x2C
  volatile unsigned long reserved;           //MBAR_CRM + 0x30
  volatile unsigned long CalCntl;            //MBAR_CRM + 0x34
  volatile unsigned long CalXtalCnt;         //MBAR_CRM + 0x38
  volatile unsigned long RingOsclCntl;       //MBAR_CRM + 0x3C
  volatile unsigned long XtalCntl;           //MBAR_CRM + 0x40
  volatile unsigned long Xtal32Cntl;         //MBAR_CRM + 0x44
  volatile unsigned long VregCntl;           //MBAR_CRM + 0x48
  volatile unsigned long VregTrim;           //MBAR_CRM + 0x4C
  volatile unsigned long SwRst;              //MBAR_CRM + 0x50
} CrmRegs_t;

//define the registers for the ITC peripheral
typedef struct
{
  volatile unsigned long IntCntl;           //MBAR_ITC + 0x00
  volatile unsigned long NiMask;            //MBAR_ITC + 0x04
  volatile unsigned long IntEnNum;          //MBAR_ITC + 0x08
  volatile unsigned long IntDisNum;         //MBAR_ITC + 0x0C
  volatile unsigned long IntEnable;         //MBAR_ITC + 0x10
  volatile unsigned long IntType;           //MBAR_ITC + 0x14
  volatile unsigned long reserved3;         //MBAR_ITC + 0x18
  volatile unsigned long reserved2;         //MBAR_ITC + 0x1C
  volatile unsigned long reserved1;         //MBAR_ITC + 0x20
  volatile unsigned long reserved0;         //MBAR_ITC + 0x24
  volatile unsigned long NiVector;          //MBAR_ITC + 0x28
  volatile unsigned long FiVector;          //MBAR_ITC + 0x2C
  volatile unsigned long IntSrc;            //MBAR_ITC + 0x30
  volatile unsigned long IntFrc;            //MBAR_ITC + 0x34
  volatile unsigned long NiPend;             //MBAR_ITC + 0x38
  volatile unsigned long FiPend;             //MBAR_ITC + 0x3C
} ItcRegs_t, AitcRegs_t;

//define the registers for the UART  peripherals
typedef struct
{
  volatile unsigned long Ucon;              //MBAR_UARTx + 0x00
  volatile unsigned long Ustat;             //MBAR_UARTx + 0x04
  volatile unsigned long Udata;             //MBAR_UARTx + 0x08
  volatile unsigned long Urxcon;            //MBAR_UARTx + 0x0C
  volatile unsigned long Utxcon;            //MBAR_UARTx + 0x10
  volatile unsigned long Ucts;              //MBAR_UARTx + 0x14
  volatile unsigned long Ubr;               //MBAR_UARTx + 0x18
} UartRegs_t;

//define the registers for the SPI  peripherals
typedef struct
{
  volatile unsigned long TxData;            //MBAR_SPIx + 0x00
  volatile unsigned long RxData;            //MBAR_SPIx + 0x04
  volatile unsigned long ClkCtrl;           //MBAR_SPIx + 0x08
  volatile unsigned long Setup;             //MBAR_SPIx + 0x0C
  volatile unsigned long Status;            //MBAR_SPIx + 0x10
} SpiRegs_t;

//define the registers for the TIMER  peripherals
typedef struct
{
  volatile unsigned short Comp1;            //MBAR_TMRx + 0x00
  volatile unsigned short Comp2;            //MBAR_TMRx + 0x02
  volatile unsigned short Capt;             //MBAR_TMRx + 0x04
  volatile unsigned short Load;             //MBAR_TMRx + 0x06
  volatile unsigned short Hold;             //MBAR_TMRx + 0x08
  volatile unsigned short Cntr;             //MBAR_TMRx + 0x0A
  volatile unsigned short Ctrl;             //MBAR_TMRx + 0x0C
  volatile unsigned short StatCtrl;         //MBAR_TMRx + 0x0E
  volatile unsigned short CmpLd1;           //MBAR_TMRx + 0x10
  volatile unsigned short CmpLd2;           //MBAR_TMRx + 0x12
  volatile unsigned short CompStatCtrl;     //MBAR_TMRx + 0x14
  volatile unsigned short reserved0;        //MBAR_TMRx + 0x16
  volatile unsigned short reserved1;        //MBAR_TMRx + 0x18
  volatile unsigned short reserved2;        //MBAR_TMRx + 0x1A
  volatile unsigned short reserved3;        //MBAR_TMRx + 0x1C
  volatile unsigned short reserved4;        //MBAR_TMRx + 0x1E
} TmrRegs_t;

//define the registers for the ASM peripheral
typedef struct
{
  volatile unsigned long Key0;             //MBAR_ASM + 0x00
  volatile unsigned long Key1;             //MBAR_ASM + 0x04
  volatile unsigned long Key2;             //MBAR_ASM + 0x08
  volatile unsigned long Key3;             //MBAR_ASM + 0x0C
  volatile unsigned long Data0;            //MBAR_ASM + 0x10
  volatile unsigned long Data1;            //MBAR_ASM + 0x14
  volatile unsigned long Data2;            //MBAR_ASM + 0x18
  volatile unsigned long Data3;            //MBAR_ASM + 0x1C
  volatile unsigned long Ctr0;             //MBAR_ASM + 0x20
  volatile unsigned long Ctr1;             //MBAR_ASM + 0x24
  volatile unsigned long Ctr2;             //MBAR_ASM + 0x28
  volatile unsigned long Ctr3;             //MBAR_ASM + 0x2C
  volatile unsigned long Ctr_result0;      //MBAR_ASM + 0x30
  volatile unsigned long Ctr_result1;      //MBAR_ASM + 0x34
  volatile unsigned long Ctr_result2;      //MBAR_ASM + 0x38
  volatile unsigned long Ctr_result3;      //MBAR_ASM + 0x3C
  volatile unsigned long Cbc_result0;      //MBAR_ASM + 0x40
  volatile unsigned long Cbc_result1;      //MBAR_ASM + 0x44
  volatile unsigned long Cbc_result2;      //MBAR_ASM + 0x48
  volatile unsigned long Cbc_result3;      //MBAR_ASM + 0x4C
  volatile unsigned long Control0;         //MBAR_ASM + 0x50
  volatile unsigned long Control1;         //MBAR_ASM + 0x54
  volatile unsigned long Status;           //MBAR_ASM + 0x58
  volatile unsigned long Undef0;           //MBAR_ASM + 0x5C  
  volatile unsigned long Mac0;             //MBAR_ASM + 0x60
  volatile unsigned long Mac1;             //MBAR_ASM + 0x64
  volatile unsigned long Mac2;             //MBAR_ASM + 0x68
  volatile unsigned long Mac3;             //MBAR_ASM + 0x6C  
} AsmRegs_t;

//define the registers for the I2C  peripheral
typedef struct
{
  volatile unsigned char Address;        //MBAR_I2C + 0x00     address register
  unsigned char dummy0;
  unsigned char dummy1;
  unsigned char dummy2;
  volatile unsigned char FreqDiv;        //MBAR_I2C + 0x04     frequency divider register
  unsigned char dummy3;
  unsigned char dummy4;
  unsigned char dummy5;
  volatile unsigned char Control;        //MBAR_I2C + 0x08     control register
  unsigned char dummy6;
  unsigned char dummy7;
  unsigned char dummy8;
  volatile unsigned char Status;         //MBAR_I2C + 0x0C     status register
  unsigned char dummy9;
  unsigned char dummy10;
  unsigned char dummy11;
  volatile unsigned char Data;           //MBAR_I2C + 0x10     data register
  unsigned char dummy12;
  unsigned char dummy13;
  unsigned char dummy14;
  volatile unsigned char DigitalFilter;  //MBAR_I2C + 0x14     digital filter sampling rate register
  unsigned char dummy15;
  unsigned char dummy16;
  unsigned char dummy17;
  volatile unsigned char ClockEn;        //MBAR_I2C + 0x18     clock enable register
  unsigned char dummy18;
  unsigned char dummy19;
  unsigned char dummy20;
} I2cRegs_t;

//define the registers for the SSI peripheral
typedef struct
{
  volatile unsigned long  STX;        //MBAR_SSI + 0x00     STX   (Transmit Data register)
           unsigned long  dummy1;     //MBAR_SSI + 0x04
  volatile unsigned long  SRX;        //MBAR_SSI + 0x08     SRX   (Receive Data Register)
           unsigned long  dummy2;     //MBAR_SSI + 0x0C
  volatile unsigned long  SCR;        //MBAR_SSI + 0x10     SCR   (Control register)
  volatile unsigned long  SISR;       //MBAR_SSI + 0x14     SISR  (Interrupt status register)
  volatile unsigned long  SIER;       //MBAR_SSI + 0x18     SIER  (Interrupt enable register)
  volatile unsigned long  STCR;       //MBAR_SSI + 0x1C     STCR  (Transmit configuration register)
  volatile unsigned long  SRCR;       //MBAR_SSI + 0x20     SRCR  (Receive configuration register)
  volatile unsigned long  STCCR;      //MBAR_SSI + 0x24     STCCR (Transmit and Receive Clock configuration register)
           unsigned long  dummy3;     //MBAR_SSI + 0x28
  volatile unsigned long  SFCSR;      //MBAR_SSI + 0x2C     SFCSR (FIFO control / status register)
  volatile unsigned long  STR;        //MBAR_SSI + 0x30     STR   (Test register)
  volatile unsigned long  SOR;        //MBAR_SSI + 0x34     SOR   (Option register)
           unsigned long  dummy4;     //MBAR_SSI + 0x38
           unsigned long  dummy5;     //MBAR_SSI + 0x3C
           unsigned long  dummy6;     //MBAR_SSI + 0x40
           unsigned long  dummy7;     //MBAR_SSI + 0x44
  volatile unsigned long  STMSK;      //MBAR_SSI + 0x48     STMSK (Transmit Time Slot mask register)
  volatile unsigned long  SRMSK;      //MBAR_SSI + 0x4C     SRMSK (Receive Time Slot mask register)
}SsiRegs_t;

//define the registers for the ADC  peripheral
typedef struct
{
  volatile unsigned short Comp0;            //MBAR_ADC + 0x00     Compare0 register
  volatile unsigned short Comp1;            //MBAR_ADC + 0x02     Compare1 register
  volatile unsigned short Comp2;            //MBAR_ADC + 0x04     Compare2 register
  volatile unsigned short Comp3;            //MBAR_ADC + 0x06     Compare3 register
  volatile unsigned short Comp4;            //MBAR_ADC + 0x08     Compare4 register
  volatile unsigned short Comp5;            //MBAR_ADC + 0x0A     Compare5 register
  volatile unsigned short Comp6;            //MBAR_ADC + 0x0C     Compare6 register
  volatile unsigned short Comp7;            //MBAR_ADC + 0x0E     Compare7 register
  volatile unsigned short BattCompOver;     //MBAR_ADC + 0x10     Battery Voltage upper trip point
  volatile unsigned short BattCompUnder;    //MBAR_ADC + 0x12     Battery Voltage lower trip point
  volatile unsigned short Seq1;             //MBAR_ADC + 0x14     Sequencer1 register
  volatile unsigned short Seq2;             //MBAR_ADC + 0x16     Sequencer2 register
  volatile unsigned short Control;          //MBAR_ADC + 0x18     Control register
  volatile unsigned short Triggers;         //MBAR_ADC + 0x1A     Triggers register
  volatile unsigned short Prescale;         //MBAR_ADC + 0x1C     Prescale register
  volatile unsigned short reserved1;        //MBAR_ADC + 0x1E     reserved
  volatile unsigned short FifoRead;         //MBAR_ADC + 0x20     FIFO Read register
  volatile unsigned short FifoCtrl;         //MBAR_ADC + 0x22     FIFO Control register
  volatile unsigned short FifoStatus;       //MBAR_ADC + 0x24     FIFO Status register
  volatile unsigned short reserved2;        //MBAR_ADC + 0x26     register
  volatile unsigned short reserved3;        //MBAR_ADC + 0x28     register
  volatile unsigned short reserved4;        //MBAR_ADC + 0x2A     register
  volatile unsigned short reserved5;        //MBAR_ADC + 0x2C     register
  volatile unsigned short reserved6;        //MBAR_ADC + 0x2E     register
  volatile unsigned short Sr1High;          //MBAR_ADC + 0x30     Timer1 Sample Rate High Value
  volatile unsigned short Sr1Low;           //MBAR_ADC + 0x32     Timer1 Sample Rate Low Value
  volatile unsigned short Sr2High;          //MBAR_ADC + 0x34     Timer2 Sample Rate High Value
  volatile unsigned short Sr2Low;           //MBAR_ADC + 0x36     Timer2 Sample Rate Low Value
  volatile unsigned short OnTime;           //MBAR_ADC + 0x38     On Time register
  volatile unsigned short ConvTime;         //MBAR_ADC + 0x3A     Convert Time register
  volatile unsigned short ClkDiv;           //MBAR_ADC + 0x3C     Clock divider register
  volatile unsigned short reserved7;        //MBAR_ADC + 0x3E     reserved
  volatile unsigned short Override;         //MBAR_ADC + 0x40     Override register
  volatile unsigned short Irq;              //MBAR_ADC + 0x42     Interrupt register
  volatile unsigned short Mode;             //MBAR_ADC + 0x44     ADC Mode register
  volatile unsigned short Adc1Result;       //MBAR_ADC + 0x46     ADC1 Result register
  volatile unsigned short Adc2Result;       //MBAR_ADC + 0x48     ADC2 Result register
} AdcRegs_t;

////////////////////////////////// UART ////////////////////////////////////////
// GPIO settings
// 1 bit masks
// 'Lo' group

// 'Lo' group

// 2 bit groups positions
// FNSEL0 group

// FNSEL1 group


////////////////////////////////// SPI  ////////////////////////////////////////
// GPIO settings
// 1 bit masks
// 'Lo' group

// 2 bit groups positions
// FNSEL0 group

////////////////////////////////// Timer////////////////////////////////////////
// GPIO settings
// 1 bit masks
// 'Lo' group

// 2 bit groups positions
// FNSEL0 group

////////////////////////////////////////////////////////////////////////////////



/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

typedef enum
{
  gGpioPort0_c = 0,
  gGpioPort1_c,
  gGpioPortMax_c
} GpioPort_t;

typedef enum
{
  gGpioDirIn_c = 0,
  gGpioDirOut_c,
  gGpioDirMax_c
} GpioDirection_t;

typedef enum
{
  gGpioPinStateLow_c = 0,
  gGpioPinStateHigh_c,
  gGpioPinStateMax_c,
} GpioPinState_t;

typedef enum
{
  gGpioPinReadPad_c = 0,
  gGpioPinReadReg_c,
  gGpioPinReadMax_c
} GpioPinReadSel_t;

typedef enum
{
  gGpioPinPulldown_c = 0,
  gGpioPinPullup_c,
  gGpioPinPullupMax_c,
} GpioPinPullupSel_t;

typedef enum
{
  gGpioPin0_c,   gGpioPin1_c,  gGpioPin2_c,  gGpioPin3_c,  gGpioPin4_c,  gGpioPin5_c,  gGpioPin6_c, gGpioPin7_c,
  gGpioPin8_c,   gGpioPin9_c, gGpioPin10_c, gGpioPin11_c, gGpioPin12_c, gGpioPin13_c, gGpioPin14_c, gGpioPin15_c,
  gGpioPin16_c, gGpioPin17_c, gGpioPin18_c, gGpioPin19_c, gGpioPin20_c, gGpioPin21_c, gGpioPin22_c, gGpioPin23_c,
  gGpioPin24_c, gGpioPin25_c, gGpioPin26_c, gGpioPin27_c, gGpioPin28_c, gGpioPin29_c, gGpioPin30_c, gGpioPin31_c,
  gGpioPin32_c, gGpioPin33_c, gGpioPin34_c, gGpioPin35_c, gGpioPin36_c, gGpioPin37_c, gGpioPin38_c, gGpioPin39_c,
  gGpioPin40_c, gGpioPin41_c, gGpioPin42_c, gGpioPin43_c, gGpioPin44_c, gGpioPin45_c, gGpioPin46_c, gGpioPin47_c,
  gGpioPin48_c, gGpioPin49_c, gGpioPin50_c, gGpioPin51_c, gGpioPin52_c, gGpioPin53_c, gGpioPin54_c, gGpioPin55_c,
  gGpioPin56_c, gGpioPin57_c, gGpioPin58_c, gGpioPin59_c, gGpioPin60_c, gGpioPin61_c, gGpioPin62_c, gGpioPin63_c,
  gGpioPinMax_c
} GpioPin_t;

typedef enum {
  gGpioNormalMode_c = 0,
  gGpioAlternate1Mode_c,
  gGpioAlternate2Mode_c,
  gGpioAlternate3Mode_c,
  gGpioFunctionModeMax_c
} GpioFunctionMode_t;

typedef enum {
  gGpioErrNoError_c = 0,
  gGpioErrInvalidParameter_c
} GpioErr_t;

typedef enum {
  gGpioDirAttr_c = 0,
  gGpioDataAttr_c ,
  gGpioInputDataSelAttr_c,
  gGpioPullUpEnAttr_c ,
  gGpioPullUpSelAttr_c,
  gGpioHystEnAttr_c,
  gGpioPullUpKeepAttr_c,
  gGpioMaxAttr_c
}GpioPortAttr_t;

typedef struct{
  uint32_t portDir;
  uint32_t portData;
  uint32_t portInputDataSel;
  uint32_t portPuEn;
  uint32_t portPuSel;
  uint32_t portHystEn;
  uint32_t portPuKeepEn;
}GpioPortInit_t;

/************************************************************************************
*************************************************************************************
* Public prototypes
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/*GENERAL*/

/*================================================================================================*/
/*===== Gpio_InitPort =====*/
/**
@brief  Set the initial port settings of the port gpioPort specified as paramer.

@param  GpioPort_t gpioPort                 - input parameter: port which will be affected by the function.

@param  GpioPortInit_t* gpioPortInit        - input parameter: pointer to a structure that hold the 
                                              initial port settings.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal 
                                     than gGpioPortMax_c or gpioPortInit is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_InitPort(GpioPort_t gpioPort, GpioPortInit_t* gpioPortInit);

/*================================================================================================*/
/*===== Gpio_WrPortSetting =====*/
/**
@brief  Modify the attribute portAttr of the port gpioPort specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port which will be affected by the function.

@param  GpioPortAttr_t portAttr             - input parameter: port attribute that should be modified.

@param  uint32_t portAttrValue              - input parameter: new attribute value.

@param  uint32_t mask                       - input parameter: specifies which pins of the port gpioPort 
                                              should be affected by the function (the attribute would be 
                                              modified if the corresponding bit is set).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal than 
                                    gGpioPortMax_c or portAttr is grater or equal than gMaxAttr_c .

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_WrPortSetting(GpioPort_t gpioPort, GpioPortAttr_t portAttr, uint32_t portAttrValue, uint32_t mask);

/*================================================================================================*/
/*===== Gpio_RdPortSetting =====*/
/**
@brief  Read the value of attribute portAttr of the gpioPort port specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port which will be affected by the function.

@param  GpioPortAttr_t portAttr             - input parameter: port attribute that should be modified.

@param  uint32_t *portAttrValue             - output parameter: pointer to the memory location where 
                                              attribute value will be placed.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal 
                                     than gGpioPortMax_c or portAttrValue is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_RdPortSetting(GpioPort_t gpioPort, GpioPortAttr_t portAttr, uint32_t* portAttrValue);

/*DIRECTION*/

/*================================================================================================*/
/*===== Gpio_SetPortDir =====*/
/**
@brief  Set the direction value of the port gpioPort specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port which will be affected by the function.

@param  uint32_t portDir                    - input parameter: port direction value.

@param  uint32_t mask                       - input parameter: specifies which pins of the port gpioPort 
                                              should be affected by the function (the directiorn would be 
                                              modified if the corresponding bit is set).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal 
                                     than gGpioPortMax_c or portAttrValue is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPortDir(GpioPort_t gpioPort, uint32_t portDir, uint32_t mask);

/*================================================================================================*/
/*===== Gpio_GetPortDir =====*/
/**
@brief  Read the direction value of the gpioPort port specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port to get direction.

@param  uint32_t *portDir                   - output parameter: pointer to memeory location where 
                                              GPIO port direction value will be placed.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal 
                                    than gGpioPortMax_c or portDir is NULL .

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPortDir(GpioPort_t gpioPort, uint32_t* portDir);

/*================================================================================================*/
/*===== Gpio_SetPinDir =====*/
/**
@brief  Set the direction value of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  GpioDirection_t gpioPinDir          - input parameter: pin's direction value.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioPinDir is grater or equal than gGpioDirMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPinDir(GpioPin_t gpioPin, GpioDirection_t gpioPinDir);

/*================================================================================================*/
/*===== Gpio_GetPinDir =====*/
/**
@brief  Get the direction value of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin to get direction.

@param  GpioDirection_t *gpioPinDir         - output parameter: pin's direction value.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioPinDir is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPinDir(GpioPin_t gpioPin, GpioDirection_t* gpioPinDir);

/*DATA*/

/*================================================================================================*/
/*===== Gpio_SetPortData =====*/
/**
@brief  Set the data value of the port gpioPin specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port which will be affected by the function.

@param  uint32_t portData                   - input parameter: port data value.

@param  uint32_t mask                       - input parameter: specifies which pins of the port gpioPort 
                                              should be affected by the function (the data would be 
                                              modified if the corresponding bit is set).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal than 
                                    gGpioPortMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPortData(GpioPort_t gpioPort, uint32_t portData, uint32_t mask);

/*================================================================================================*/
/*===== Gpio_GetPortData =====*/
/**
@brief  Read data value of the gpioPort port specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port to get direction.

@param  uint32_t *portData                  - output parameter: pointer to memeory location where port
                                              data value will be placed.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the port gpioPort specified as parameter is grater or equal than 
                                    gGpioPortMax_c or portData is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPortData(GpioPort_t gpioPort, uint32_t* portData);

/*================================================================================================*/
/*===== Gpio_SetPinData =====*/
/**
@brief  Set the data value of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  GpioPinState_t gpioPinState         - input parameter: pin's data value.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than
                                    gGpioPinMax_c or gpioPinState is grater or equal than gGpioPinStateMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPinData(GpioPin_t gpioPin, GpioPinState_t gpioPinState);


/*================================================================================================*/
/*===== Gpio_GetPinData =====*/
/**
@brief  Get the data value of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin to get data.

@param  GpioPinState_t *gpioPinState        - output parameter: pin's data value.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than
                                    gGpioPinMax_c or gpioPinState is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPinData(GpioPin_t gpioPin, GpioPinState_t* gpioPinState);

/*================================================================================================*/
/*===== Gpio_TogglePin =====*/
/**
@brief  Toggle the state of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than gGpioPinMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_TogglePin(GpioPin_t gpioPin);

/*READ CONTROL*/

/*================================================================================================*/
/*===== Gpio_SetPinReadSource =====*/
/**
@brief  Set the read source of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  GpioPinReadSel_t gpioReadSource     - input parameter: pin read source (gGpioPinReadPad_c for 
                                              reading data from pin, gGpioPinReadReg_c for reading data from latch).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioReadSource is grater or equal than gGpioPinReadMax_c 
                                    the function exits with gGpioErrInvalidParamater_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPinReadSource(GpioPin_t gpioPin, GpioPinReadSel_t gpioReadSource);

/*================================================================================================*/
/*===== Gpio_GetPinReadSource =====*/
/**
@brief  Get the source of reading (pad or latch) for the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin to get read source.

@param  GpioPinReadSel_t *gpioReadSource    - output parameter: pin's read source value.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioReadSource is NULL the function exits with 
                                    gGpioErrInvalidParamater_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPinReadSource(GpioPin_t gpioPin, GpioPinReadSel_t* gpioReadSource);

/*PULLUP ENABLE*/

/*================================================================================================*/
/*===== Gpio_EnPinPullup =====*/
/**
@brief  Enable pull-up of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  bool_t gpioEnPinPu                  - input parameter: pull-up enable (TRUE for enabling pull-up, 
                                              FALSE for disabling pull-up).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_EnPinPullup(GpioPin_t gpioPin, bool_t gpioEnPinPu);

/*================================================================================================*/
/*===== Gpio_IsPinPullupEn =====*/
/**
@brief  Get the pull-up enable state of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: GPIO pin to get pull-up enable state 
                                              (enabled/disabled).

@param  bool_t *gpioEnPinPu                 - output parameter: pin's pull-up enable state (TRUE for pull-up 
                                              enabled, FALSE for pull-up disabled).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than
                                    gGpioPinMax_c or gpioEnPinPu is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_IsPinPullupEn(GpioPin_t gpioPin, bool_t* gpioEnPinPu);

/*PULLUP SELECT*/

/*================================================================================================*/
/*===== Gpio_SelectPinPullup =====*/
/**
@brief  Select pull-up/pull-down of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  GpioPinPullupSel_t gpioPinPuSel     - input parameter: pin pull-up selection (gGpioPinPulldown_c 
                                              for pull-down selection, gGpioPinPullup_c for pull-up selection).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioPinPuSel is grater or equal than gGpioPinPullupMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SelectPinPullup(GpioPin_t gpioPin, GpioPinPullupSel_t gpioPinPuSel);

/*================================================================================================*/
/*===== Gpio_GetPinPullupSel =====*/
/**
@brief  Get the pull-up selection state of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: GPIO pin to get pull-up selection state
                                              (pull-up/pull-down).

@param  GpioPinPullupSel_t *gpioPinPuSel    - output parameter: pin pull-up selection state (gGpioPinPulldown_c
                                              for pull-down selection, gGpioPinPullup_c for pull-up selection).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than gGpioPinMax_c
                                    or gpioPinPuSel is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPinPullupSel(GpioPin_t gpioPin, GpioPinPullupSel_t* gpioPinPuSel);

/*PULLUP KEEPER*/

/*================================================================================================*/
/*===== Gpio_EnPinPuKeeper =====*/
/**
@brief  Enable pull-up keeper of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  bool_t gpioEnPinPuKeep              - input parameter: pin pull-up keeper enable (TRUE for enabling 
                                              pull-up keeper, FALSE for disabling pull-up keeper).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than gGpioPinMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_EnPinPuKeeper(GpioPin_t gpioPin, bool_t gpioEnPinPuKeep);

/*================================================================================================*/
/*===== Gpio_IsPinPuKeeperEn =====*/
/**
@brief  Get the pull-up keeper enable state of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: GPIO pin to get pull-up selection state
                                              (pull-up/pull-down).

@param  bool_t *gpioEnPinPuKeep            - output parameter: pin pull-up keeper enable state (TRUE
                                             for pull-up keeper enabled, FALSE for pull-up keeper disabled).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than gGpioPinMax_c
                                    or gpioPinPuSel is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_IsPinPuKeeperEn(GpioPin_t gpioPin, bool_t* gpioEnPinPuKeep);

/*HYSTERESIS*/

/*================================================================================================*/
/*===== Gpio_EnPinHyst =====*/
/**
@brief  Enable hysteresis of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  bool_t gpioEnPinPuKeep              - input parameter: enable hysteresis state for the pin gpioPin
                                              specified as parameter.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than gGpioPinMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_EnPinHyst(GpioPin_t gpioPin, bool_t gpioEnPinHyst);

/*================================================================================================*/
/*===== Gpio_IsPinHystEn =====*/
/**
@brief  Get the hysteresis enable state of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: GPIO pin to get pull-up selection state
                                              (pull-up/pull-down).

@param  bool_t *gpioEnPinHyst               - output parameter: pin's hysteresis enable state (TRUE for 
                                              hysteresis enabled, FALSE for hysteresis  disabled).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioEnPinHyst is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_IsPinHystEn(GpioPin_t gpioPin, bool_t* gpioEnPinHyst);

/*FUCTION MODE*/

/*================================================================================================*/
/*===== Gpio_SetPortFunction =====*/
/**
@brief  Set the functionality (GPIO or alternate function) for the gpioPort port specified as parameter.

@param  GpioPort_t gpioPort                 - input parameter: port which will be affected by the function.

@param  GpioFunctionMode_t gpioPortFunction - input parameter: port function mode.

@param  uint32_t mask                       - input parameter: specifies which pins of the port gpioPort 
                                              should be affected by the function (the function mode would
                                              be modified if the corresponding bit is set).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPort port specified as parameter is grater or equal than
                                    gGpioPortMax_c or gpioPortFunction is grater or equal than gGpioFunctionModeMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPortFunction(GpioPort_t gpioPort, GpioFunctionMode_t gpioPortFunction, uint32_t mask);

/*================================================================================================*/
/*===== Gpio_SetPinFunction =====*/
/**
@brief  Set function mode for the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin which will be affected by the function.

@param  GpioFunctionMode_t gpioPinFunction  - input parameter: pin function mode.

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than 
                                    gGpioPinMax_c or gpioPinFunction is grater or equal than gGpioFunctionModeMax_c.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_SetPinFunction(GpioPin_t gpioPin, GpioFunctionMode_t gpioPinFunction);

/*================================================================================================*/
/*===== Gpio_GetPinFunction =====*/
/**
@brief  Get function mode of the pin gpioPin specified as parameter.

@param  GpioPin_t gpioPin                   - input parameter: pin to get function mode.

@param  GpioFunctionMode_t* gpioPinFunction - output parameter: pin's hysteresis enable state (TRUE for 
                                              hysteresis enabled, FALSE for hysteresis  disabled).

@return parameter of type GpioErr_t with following possible values:

    gGpioErrInvalidParamater_c    - if the gpioPin pin specified as parameter is grater or equal than
                                    gGpioPinMax_c or gpioPinFunction is NULL.

    gGpioErrNoError_c             - in rest.

 Revision history:
      Date                          Author                            Comments
   ----------               ----------------------                    -------
   26.06.2007                       B04839                             Created
*/
/*===============================================================================================*/
extern GpioErr_t Gpio_GetPinFunction(GpioPin_t gpioPin, GpioFunctionMode_t* gpioPinFunction);

/************************************************************************************
* Header file for Crm Driver
*
* Author(s): Dragos Musoiu
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Revision history:
*   date                     Author                       Comments
*   ----------           ------------------------         -------
*   14.11.2006                DM                         Created
*
*
*
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/



/************************************************************************************
* This macro  enables the Wakeup Timer interrupt 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  disables  the Wakeup Timer interrupt 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  resets  the COP timer 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  enables the RTC Timer  interrupt
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  disables the RTC Timer  interrupt
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  write protects CRM_XTAL_CNTL register
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  disables the Ring oscillator
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  enables the Ring oscillator
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  sets the Timeout value for the RTC Timer 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro enables the Jtag interface
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro disables the Jtag interface
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/
/************************************************************************************
* This macro Resets The MCU
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/

/************************************************************************************
* This macro can be used in an if statement to test if one of the following three voltage regulators are runing
*    - buck regulator if the macro parameter is V_REG_MASK_BUCK
*    - 1.5V regulator if the macro parameter is V_REG_MASK_1P5V
*    - 1.8V regulator if the macro parameter is V_REG_MASK_1P8V
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  08.11.2007  DM
************************************************************************************/


/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/
typedef enum
{
  gCrmErrNoError_c,
  gCrmErrCopCntlWP_c,
  gCrmErrXtalCntlWP_c,
  gCrmErrInvalidParameters_c,
  gCrmErrCalInProgress_c,
  gCrmErrNoCalInProgress_c,
  gCrmErrRingOscOff_c,
  gCrmErrIgnoredInActualPowerMode_c,
  gCrmErrInvalidPowerSource_c,
  gCrmErrBuckNotEnabledNorBypassed_c
}crmErr_t;

typedef enum
{
  gCrmPwS3V3Battery_c,
  gCrmPwSBuckRegulation_c,
  gCrmPwS1V8Battery_c,
  gCrmPwSNotValid_c
}crmPowerSource_t;

typedef enum
{
  gPadStandardDrive_c,
  gPadHighDrive_c
}crmPadsDriveStrength_t;

typedef enum 
{
  gARegDisable_c,
  gRxTxRegEnable_c,
  gARegNotValid_c,
  gRxTxandPLLRegEnable_c = 3
}crmAnalogVRegEnable_t;

typedef enum 
{
  gARegCurent4mA_c,
  gARegCurent20mA_c,
  gARegCurentNotValid_c,
  gARegCurent40mA_c = 3
}crmAnalogVRegCurrentSel_t;

typedef enum 
{
  gBuckVReg_c,
  g1P5VReg_c,
  g1P8VReg_c,
  gMaxVReg_c
}crmVReg_t;

typedef enum 
{
  gBuckClkDiv_16_c,
  gBuckClkDiv_8_c = 8,
  gBuckClkDiv_9_c,
  gBuckClkDiv_10_c,
  gBuckClkDiv_11_c,
  gBuckClkDiv_12_c,
  gBuckClkDiv_13_c,
  gBuckClkDiv_14_c,
  gBuckClkDiv_15_c,
}crmBuckClkDiv_t;

typedef   struct
{
  uint32_t buckEn:1; 
  uint32_t buckSyncRecEn:1; 
  uint32_t buckBypassEn:1; 
  uint32_t buckClkDiv:4; 
}crmBuckCntl_t;

typedef   struct
{
  uint32_t vReg1P5VEn:2; 
  uint32_t vReg1P5VISel:2; 
}crmVReg1P5VCntl_t;                

typedef   struct
{
  crmVReg_t vReg;
  union
  {
    crmBuckCntl_t buckCntl;
    crmVReg1P5VCntl_t vReg1P5VCntl;
    bool_t vReg1P8VEn;
  }cntl;
}crmVRegCntl_t;               




typedef enum
{
  gCrmTimerWuEvent_c,
  gCrmRTCWuEvent_c,
  gCrmKB4WuEvent_c,
  gCrmKB5WuEvent_c,
  gCrmKB6WuEvent_c,
  gCrmKB7WuEvent_c,
  gCrmCalDoneEvent_c,
  gCrmXtal32ReadyEvent_c,
  gCrmCOPTimeoutEvent_c
}crmInterruptSource_t;

typedef enum
{
  gBgapBatt_c,
  gBgap1P8V_c,
  gVReg0P9VTrim_c,
  gVReg0P9ITrim_c,
  gVRegXtalTrim_c,
  gVRegOscTrim_c,
  gTrimMax_c
}crmTrimmedDevice_t;

typedef void (*pfCallback_t)(void);

typedef enum
{
  gXSD512_c,
  gXSD1024_c, 
  gXSD2048_c,
  gXSD4096_c,
  gXSD8192_c,
  gXSD16384_c,
  gXSD32768_c,
  gXSD65536_c
}crmXtalStartupDelay_t;

typedef union
{
  uint32_t word;
  struct
  {
    uint32_t wp:1;
    uint32_t smallSig:1;
    uint32_t startupDelayBypass:1;
    uint32_t startupDelaySel:3;
    uint32_t refXtalDiv:6;
  }bit; 
}crmRefXtalCntl_t;              

typedef enum
{
  gAutomaticBs_c,
  gManualBs_c,
  gDisableBs_c
}crmBSCntl_t;

typedef union
{
  uint32_t word;
  struct
  {
    uint32_t armEn:1;
    uint32_t macaEn:1;
    uint32_t asmEn:1;
    uint32_t spiEn:1;
    uint32_t gpioEn:1;
    uint32_t uart1En:1;
    uint32_t uart2En:1;
    uint32_t tmrEn:1;
    uint32_t rifEn:1;
    uint32_t i2cEn:1;
    uint32_t ssiEn:1;
    uint32_t spiFEn:1;
    uint32_t adcEn:1;
    uint32_t ahbEn:1;
    uint32_t jtagEn:1;
    uint32_t nexEn:1;
    uint32_t tmxEn:1;
    uint32_t aimEn:1;
  }bit;
}crmModuleEnableStatus_t;

typedef  union
{
  uint32_t word;
  struct
  {
    uint32_t copEn:1;
    uint32_t copOut:1;
    uint32_t copWP:1;
    uint32_t copTimeOut:7;
  } bit;
}crmCopCntl_t;

typedef enum
{
  gExtWu_c,
  gTimerWu_c,
  gRtcWu_c
} crmWuSource_t;

typedef enum
{
  gExtWuEventLevel_c,
  gExtWuEventEdge_c
}crmExtWuEvent_t;

typedef enum
{
  gExtWuPolLLevel_or_NEdge_c,
  gExtWuPolHLevel_or_PEdge_c
}crmExtWuPol_t;

typedef union
{
  uint32_t word;
  struct 
  {
    uint32_t  kbi4WuEn:1;
    uint32_t  kbi5WuEn:1;
    uint32_t  kbi6WuEn:1;
    uint32_t  kbi7WuEn:1;
    uint32_t  kbi4WuEvent:1;
    uint32_t  kbi5WuEvent:1;
    uint32_t  kbi6WuEvent:1;
    uint32_t  kbi7WuEvent:1;
    uint32_t  kbi4WuPol:1;
    uint32_t  kbi5WuPol:1;
    uint32_t  kbi6WuPol:1;
    uint32_t  kbi7WuPol:1;
    uint32_t  kbi4IntEn:1;
    uint32_t  kbi5IntEn:1;
    uint32_t  kbi6IntEn:1;
    uint32_t  kbi7IntEn:1;
  }bit;
  struct 
  {
    uint32_t  kbiWuEn:4;
    uint32_t  kbiWuEvent:4;
    uint32_t  kbiWuPol:4;
    uint32_t  kbiIntEn:4;
  }nibble;
}crmExtWuCtrl_t;

 
 
 
 
               
typedef struct
{
  uint32_t timerWuEn:1; 
  uint32_t timerWuIntEn:1; 
  uint32_t timeOut;      
}crmTimerWuCtrl_t; 
              
              
typedef struct
{
  uint32_t rtcWuEn:1;
  uint32_t rtcWuIntEn:1;
  uint32_t timeOut;      
}crmRtcWuCtrl_t;    

              
typedef struct{
  crmWuSource_t wuSource;
  union
  {
    crmExtWuCtrl_t   ext;
    crmTimerWuCtrl_t timer;
    crmRtcWuCtrl_t   rtc;              
  }ctrl;
}crmWuCtrl_t;

typedef enum
{
  gRamRet8k_c,
  gRamRet32k_c,
  gRamRet64k_c,
  gRamRet96k_c
} crmRamRet_t;

typedef enum
{
  gNoMcuRet_c,
  gMcuRet_c,
  gMcuAndDigPadRet_c=3
} crmMcuRet_t;

typedef enum
{
  gHibernate_c,
  gDoze_c
} crmSleep_t;

typedef struct
{
  uint8_t sleepType:1;// 0 hibernate / 1 doze
  uint8_t ramRet:2;
  uint8_t mcuRet:1;
  uint8_t digPadRet:1;
  pfCallback_t  pfToDoBeforeSleep;
}crmSleepCtrl_t;


/************************************************************************************
*************************************************************************************
* Public prototypes
*************************************************************************************
************************************************************************************/

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern void CRM_GoToSleep(crmSleepCtrl_t* pSleepCtrl);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_WuCntl(crmWuCtrl_t* pWuCtrl);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmModuleEnableStatus_t CRM_ModuleEnStatus(void);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_CopCntl(crmCopCntl_t copCntl);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_ForceCopTimeout(void);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern void CRM_Wait4Irq(void);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_BusStealingCntl(crmBSCntl_t bsCntl,bool_t armClkGate,uint8_t cyclesToSteal);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_RefXtalControl(crmRefXtalCntl_t xtalCntl);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_2kToXtal32Switch(bool_t armHalted, pfCallback_t pfToCallback);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_RingOscCal(uint16_t calLength,bool_t haltMcu, void * pTR);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_RingOscAbortCal(void);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_SetPowerSource(crmPowerSource_t pwSource);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_VRegCntl(crmVRegCntl_t* pVRegCntl);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_VRegTrimm(crmTrimmedDevice_t trimmedDevice,uint8_t trimmValue);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_SetDigOutDriveStrength(crmPadsDriveStrength_t padsDriveStrength);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_SetSPIFDriveStrength(crmPadsDriveStrength_t spiFDriveStrength);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern crmErr_t CRM_RegisterISR(crmInterruptSource_t crmIS, pfCallback_t pfISR);

/************************************************************************************
* Interface assumptions:
*   None
*   
* Return value:
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*  07.11.2007  MD
************************************************************************************/
extern void CRM_Isr(void);
/************************************************************************************
* Board Parameters Configuration
*
* (c) Copyright 2008, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 
* Last Tested:
************************************************************************************/
 


/* BEGIN Custom Clock Frequency Settings */


/* END Custom Clock Frequency Settings */














/*Clock definitions*/





/*****************************************************************************
******************************************************************************
* Public macros
******************************************************************************
*****************************************************************************/

/* BEGIN Define Key pin mapping */
/* Select the port */

/* Select the pins for switch 1-4. Possible values: 26, 27, 28, 29  */

/* Center key pin for joystick */
/* END Define Key pin mapping */




/* Select the port */








/* Enable Wake up for all 4 keys*/
/*Select egde sense for all  keys*/
/*Select wake up polarity to be negativ edge*/
/*enable interrupts for all keys */




/* Read the port and shift it for better detection of key pressed*/

/*Enable and disable one/more kye interrupt*/

/*Enable and Disable all external interrupts*/

/*****************************************************************************
******************************************************************************
* Public type definitions
******************************************************************************
*****************************************************************************/

/*****************************************************************************
******************************************************************************
* Public prototypes
******************************************************************************
*****************************************************************************/

/*Init the GPIO as input, normal functin mode, pull up enable and read from pads */
extern void KbGpioInit(void);





/******************************************************************************
*******************************************************************************
* Public Macros
*******************************************************************************
******************************************************************************/

/*None*/

/******************************************************************************
*******************************************************************************
* Private prototypes
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Private type definitions
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Private Memory Declarations
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Public functions
*******************************************************************************
******************************************************************************/

/******************************************************************************
* LED_Init
*
* Initialize the LED system.
*******************************************************************************/

void KbGpioInit(void)
{
  /* Set as input*/
  (void)Gpio_SetPortDir(gGpioPort0_c, 0x00000000, ((1 << gGpioPin26_c) | (1 << gGpioPin27_c) | (1 << gGpioPin28_c) | (1 << gGpioPin29_c) | (1 << gGpioPin22_c)));
  /* Pullup enable and select pullup*/
  (void)Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpEnAttr_c, 0xFFFFFFFF, ((1 << gGpioPin26_c) | (1 << gGpioPin27_c) | (1 << gGpioPin28_c) | (1 << gGpioPin29_c) | (1 << gGpioPin22_c)));
  (void)Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpSelAttr_c, 0xFFFFFFFF, ((1 << gGpioPin26_c) | (1 << gGpioPin27_c) | (1 << gGpioPin28_c) | (1 << gGpioPin29_c) | (1 << gGpioPin22_c)));
  /*Read from pads*/
  (void)Gpio_WrPortSetting(gGpioPort0_c, gGpioInputDataSelAttr_c, 0x00000000, ((1 << gGpioPin26_c) | (1 << gGpioPin27_c) | (1 << gGpioPin28_c) | (1 << gGpioPin29_c) | (1 << gGpioPin22_c)));
  /* Gpio normal mode function */
  Gpio_SetPortFunction(gGpioPort0_c, gGpioNormalMode_c, ((1 << gGpioPin26_c) | (1 << gGpioPin27_c) | (1 << gGpioPin28_c) | (1 << gGpioPin29_c) | (1 << gGpioPin22_c)));
  
}

/******************************************************************************
*******************************************************************************
* Private functions
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Unit Testing
*******************************************************************************
******************************************************************************/

/* None */


