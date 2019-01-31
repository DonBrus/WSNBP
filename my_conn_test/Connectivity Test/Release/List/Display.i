/************************************************************************************
* This is the source file for Display Driver.
*
*
* (c) Copyright 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
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
*
* Delay routined header.
*
* (c) Copyright 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected:
* Last Tested:
************************************************************************************/


extern void DelayMs(uint32_t ms);
extern void DelayUs(uint32_t us);



/************************************************************************************
* This header file is for LCD Driver Interface.
*
*
* (c) Copyright 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
************************************************************************************/

/*****************************************************************************
* LCD_BitMap_Char declarations.
*
* (c) Copyright 2008, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/


/*****************************************************************************
******************************************************************************
* Public type declarations
******************************************************************************
*****************************************************************************/

/* Type definition of a font set */
typedef struct 
{
  const uint16_t* pFontIndexTable;
  const uint8_t*  pFontCharTable;
  uint8_t         fontHeight;
} font_t;

/*****************************************************************************
******************************************************************************
* Public macros
******************************************************************************
*****************************************************************************/

/*****************************************************************************
******************************************************************************
* Private prototypes
******************************************************************************
*****************************************************************************/

/*****************************************************************************
******************************************************************************
* Public memory declarations
******************************************************************************
*****************************************************************************/

extern const uint16_t gLCDNormalIndex[];
extern const uint8_t  gLCDNormalFont[];
extern const uint16_t gLCDVerdanaIndex[];
extern const uint8_t  gLCDVerdanaFont[];


/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/

/* number of defined fonts */

/* gLCDGpioPinMode_c = 1 --> GPIO pins are used */
/* gLCDGpioPinMode_c = 0 --> GPIO ports are used */


/* for backward compatibility functions */

/* Graphic LCD Commands */
/* command for selecting 1/7 bias */
/* command for selecting 1/9 bias */
/* command for setting ADC to normal */
/* command for setting ADC to reverse */
/* command for setting COM to normal */
/* command for setting COM to reverse */
/* command for setting display to normal */
/* command for setting display to reverse */
/* default command for setting the V5 voltage regulator internal resistor ratio */
/* command for preparing to set the Electronic Volume */
/* command for preparing to set the Electronic Volume */
/* command for setting the power supply functions (by default all functions are disabled) */
/* command for setting all points off (by default all points are off) */
/* command for setting all points on (by default all points are off) */
/* command for turning off the display */
/* command for turning on the display */
/* command for turning off the static indicator */
/* command for setting the page address to page 0 */
/* command for setting the first nibble of column address (0)*/
/* command for setting the second nibble of column address (0)*/
/* command for setting the display line to 0*/
/* command for resetting the display */
/* command for read/modify/write */
/* command for read/modify/write end*/


/* Rb/Ra ratio must have a value between 0 and 7 */
/* if electronic volume is enabled the brightness must take a value between 0 and 63 */
/* the electronic vlume is disabled when the brightness value is 0x20 */

/* Events that are passed to the LCD task. 
   Are defined as byte masks to make possible 
   send multiple events to the task */


/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

typedef enum {
    gLCD_HexFormat_c,
    gLCD_DecFormat_c
}LCD_t;

typedef enum lcdFontType_tag
{
  gLCD_NormalFont_c = 0,
  gLCD_VerdanaFont_c,
  gLCD_MaxFont_c = 2
}lcdFontType_t;

typedef enum lcdError_tag
{
  gLCD_NoError_c = 0,
  gLCD_QueueFull_c
}lcdError_t;

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

extern const font_t aLCDFont[2];

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/******************************************************************************
* This function initializes the display
*
* Interface assumptions:
*
*
* Return value:
* None
*
******************************************************************************/
extern void LCD_Init(void);

/******************************************************************************
* This function clears the display. In case an error occured during add to queue
* operation, the clear display operation will not execute.
*
* Interface assumptions:
*
*
* Return value:
* None
*
******************************************************************************/
extern void LCD_ClearDisplay(void);

/******************************************************************************
* This function writes a string to the display
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
extern void LCD_WriteString(
  uint8_t line,  /* IN: Line in display */
  uint8_t *pstr	 /* IN: Pointer to text string */
);

/******************************************************************************
* This function writes a string and a value in decimal or hexdecimal
* to the display
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
extern void LCD_WriteStringValue
  (
  uint8_t *pstr, 		 /* IN: Pointer to text string */
  uint16_t value, 	 /* IN: Value */
  uint8_t line, 		 /* IN: Line in display. */ 
  LCD_t numberFormat /* IN: Value to show in HEX or DEC */
  );

/******************************************************************************
* This functions allows to write raw bytes to the LCD, the maximum number of bytes
*	capable per line is 8, this functions transfors every hex simbol in a byte to a char.
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
extern void LCD_WriteBytes
(
	uint8_t   *pstr,   /* IN: The pointer to the label to print with the bytes. */
	uint8_t   *value,  /* IN: The bytes to print. */
	uint8_t   line,    /* IN: The line in the LCD where the bytes with the label. */
	uint8_t   length   /* IN: The number of bytes to print in the LCD. */
);

/******************************************************************************
* This function sends a command to the display controller
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
extern void LCD_WriteCommand(uint8_t command);

/******************************************************************************
* This function sends a data to the display controller
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
extern void LCD_WriteData(uint8_t data);

/******************************************************************************
* This function sets the font received as parameter as default font
*
* Interface assumptions:
*
*
* Return value:
*      TRUE:  when the font is correctly set
*      FALSE: when an unsupported font is received as parameter
* char
*
*
******************************************************************************/
extern bool_t LCD_SetFont(lcdFontType_t font);

/******************************************************************************
* This function checks if an error occured during an interface function call.
* User must always call this function to verify if an interface function executed 
* successufully.
*
* Interface assumptions:
*
*
* Return value:
*      0x01:  an error occured during an interface function call 
*      0x00:  no error
* char
*
*
******************************************************************************/
extern lcdError_t LCD_CheckError(void);

extern uint8_t LCD_ClearLine(uint8_t line);
extern void LCD_WriteString_NormalFont(uint8_t line, uint8_t *pstr);
extern void LCD_WriteStringDecValue(uint8_t *pstr,uint16_t value,uint8_t line,LCD_t numberFormat);
extern void LCD_WritePixel(uint8_t xStartCoord, uint8_t yStartCoord, bool_t mode);
extern void LCD_WriteCharacter(uint8_t symbol, uint8_t xCoord, uint8_t yCoord);
extern void LCD_SetBacklight(uint8_t brightnessValue);
extern void LCD_DrawIcon(uint8_t u8XCoord, uint8_t u8YPage, uint8_t * pu8Icon);





/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/

/* pin defines */

/* D0  = SPI_SS    (GPIO  4) , PORT LO */
/* D1  = SPI_MISO  (GPIO  5) , PORT LO */
/* D2  = SPI_MOSI  (GPIO  6) , PORT LO */
/* D3  = SPI_SCK   (GPIO  7) , PORT LO */
/* D4  = ADC2      (GPIO  32), PORT HI */
/* D5  = ADC3      (GPIO  33), PORT HI */
/* D6  = ADC4      (GPIO  34), PORT HI */
/* D7  = ADC5      (GPIO  35), PORT HI */



/* A0     = UART2_RTS (GPIO  21)   inverted, 0-data, 1-command */
/* RD     = TMR0      (GPIO  8)    double inverted, active high */
/* WR     = TMR1      (GPIO  9)    double inverted, active high */
/* CS     = UART2_CTS (GPIO  20)   double inverted, active high */
/* BL_PWM = TMR2      (GPIO  10)   1 - light, 0 - dark or PWM variable duty cycle */
/* RST    = RX_ON     (GPIO  45)   active low */
/* RST    = UART2_RX  (GPIO  19)   active low */


/* pin states */



/* number of columns to be cleared in LCD_Task */

/* number of characters to be displayed in LCD_Task */

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/
/* #pragma pack(1) */

typedef struct displayParams_tag{
  uint8_t currentXCoord;
  uint8_t currentYCoord;
  uint8_t currentLine;
  /* Bitmask: 
  *       line i is cleared, bit i from writtenLines is 0
  *       line i is written, bit i from writtenLines is 1 
  */
  uint8_t writtenLines;
  /* Bitmask: 
  *       line i will not be written, bit i from linesToWrite is 0
  *       line i will be written, bit i from linesToWrite is 1 
  */
  uint8_t linesToWrite;  
  uint8_t linesWidthWritten[8];
  uint8_t currentFontType;
  uint8_t currentStringIndex;
  uint8_t currentString[8][21];
}displayParams_t;

typedef struct lineParams_tag{
  uint8_t xCoord;
  uint8_t yCoord;
  uint8_t page;  
}lineParams_t;

typedef struct pageParams_tag{
  uint8_t xStartCoord;
  uint8_t xEndCoord;
  uint8_t yCoord;
  uint8_t line;
}pageParams_t;

typedef enum operation_tag{
  gLCD_WriteOp_c = 0,
  gLCD_ClearDisplayOp_c,
  gLCD_ClearLineOp_c,
  gLCD_MaxOp_c = 0xFF
}operation_t;

typedef struct opLine_tag{
  operation_t opQueue;
  uint8_t lineQueue;  
}opLine_t;

typedef struct queue_tag{
  uint8_t head;
  uint8_t tail;
  opLine_t opLine[10];
}queue_t;

/* #pragma pack() */

/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************
************************************************************************************/

void LCD_SetBacklight(uint8_t brightnessValue);
void LCD_ClearPage(uint8_t startXCoord, uint8_t endXCoord, uint8_t yCoord);
uint8_t LCD_ClearLine(uint8_t line);
static void SendData(uint8_t data);
static void SetHiZ(void);
static void SetOutput(void);
static void InitDisplayWrite(uint8_t xStartCoord, uint8_t yStartCoord);
static uint8_t ReadData(void);
static uint8_t GetData(void);
static uint8_t GetStrlen(const uint8_t *pString);


/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/

static displayParams_t mDisplayParams = {
  /* currentXCoord */
  0x00,
  /* currentYCoord */
  0x00,
  /* currentLine */
  0x00,
  /* writtenLines */
  0xFF,
  /* linesToWrite */
  0x00,
  /* linesWidthWritten */
  0x00,
  /* currentFontType */
  0x00,
  /* currentStringIndex */
  0x00,  
  /* currentString */
  0x00
};

static lineParams_t mLineParams[8] = {
  {0, 0, 0},
  {0, 8, 1},
  {0, 16, 2},
  {0, 24, 3},
  {0, 32, 4},
  {0, 40, 5},
  {0, 48, 6},
  {0, 56, 7},
};  


/* after initialization, all LCD lines must be erased */
static bool_t mIsLcdInitialized = 0;

/* error indicator, used for error reporting */
static volatile lcdError_t mErrorIndicator = gLCD_NoError_c;

/******************************************************************************
*******************************************************************************
* Public memory definitions
*******************************************************************************
******************************************************************************/

const uint8_t gaHexValue[] = "0123456789ABCDEF";

const font_t aLCDFont[2] = 
{
  /* character font with fixed width */ 
  {gLCDNormalIndex,  gLCDNormalFont,  1},
  /* character font with variable width */ 
  {gLCDVerdanaIndex, gLCDVerdanaFont, 2}   
};

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/******************************************************************************
* This function initializes the display
*
* Interface assumptions:
*
*
* Return value:
* None
*
******************************************************************************/
void LCD_Init(void)
{

    Gpio_SetPinFunction(gGpioPin9_c, gGpioNormalMode_c);
    Gpio_SetPinFunction(gGpioPin20_c, gGpioNormalMode_c);
    Gpio_SetPinFunction(gGpioPin8_c, gGpioNormalMode_c);
    Gpio_SetPinFunction(gGpioPin21_c, gGpioNormalMode_c);
    Gpio_SetPinFunction(gGpioPin45_c, gGpioNormalMode_c);
    Gpio_SetPinFunction(gGpioPin19_c, gGpioNormalMode_c);

    Gpio_SetPinData(gGpioPin9_c, gGpioPinStateLow_c);
    Gpio_SetPinData(gGpioPin20_c, gGpioPinStateLow_c);
    Gpio_SetPinData(gGpioPin8_c, gGpioPinStateLow_c);
    Gpio_SetPinData(gGpioPin21_c, gGpioPinStateHigh_c);
    Gpio_SetPinData(gGpioPin45_c, gGpioPinStateHigh_c);
    Gpio_SetPinData(gGpioPin19_c, gGpioPinStateHigh_c);

    /* define the LCD pins as output pins */
    (void)Gpio_SetPinReadSource(gGpioPin20_c,     gGpioPinReadReg_c);
    (void)Gpio_SetPinReadSource(gGpioPin21_c,     gGpioPinReadReg_c);
    (void)Gpio_SetPinReadSource(gGpioPin8_c,     gGpioPinReadReg_c);
    (void)Gpio_SetPinReadSource(gGpioPin9_c,     gGpioPinReadReg_c);
    (void)Gpio_SetPinReadSource(gGpioPin10_c, gGpioPinReadReg_c);
    (void)Gpio_SetPinReadSource(gGpioPin45_c,   gGpioPinReadReg_c);
    (void)Gpio_SetPinReadSource(gGpioPin19_c,   gGpioPinReadReg_c);

    (void)Gpio_SetPinDir(gGpioPin20_c,     gGpioDirOut_c);
    (void)Gpio_SetPinDir(gGpioPin21_c,     gGpioDirOut_c);
    (void)Gpio_SetPinDir(gGpioPin8_c,     gGpioDirOut_c);
    (void)Gpio_SetPinDir(gGpioPin9_c,     gGpioDirOut_c);
    (void)Gpio_SetPinDir(gGpioPin10_c, gGpioDirOut_c);
    (void)Gpio_SetPinDir(gGpioPin45_c,   gGpioDirOut_c);
    (void)Gpio_SetPinDir(gGpioPin19_c,   gGpioDirOut_c);

    /* data pins */
    Gpio_SetPortFunction(gGpioPort0_c, gGpioNormalMode_c, 0x000000F0);
    Gpio_SetPortFunction(gGpioPort1_c, gGpioNormalMode_c, 0x0000000F);

    Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpEnAttr_c, 0x000000F0, 0x000000F0);
    Gpio_WrPortSetting(gGpioPort1_c, gGpioPullUpEnAttr_c, 0x0000000F, 0x0000000F);

    Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpSelAttr_c, 0x000000F0, 0x000000F0);
    Gpio_WrPortSetting(gGpioPort1_c, gGpioPullUpSelAttr_c, 0x0000000F, 0x0000000F);

    Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpKeepAttr_c, 0x000000F0, 0x000000F0);
    Gpio_WrPortSetting(gGpioPort1_c, gGpioPullUpKeepAttr_c, 0x0000000F, 0x0000000F);
    
    Gpio_WrPortSetting(gGpioPort0_c, gGpioInputDataSelAttr_c, ~0x000000F0, 0x000000F0);
    Gpio_WrPortSetting(gGpioPort1_c, gGpioInputDataSelAttr_c, ~0x0000000F, 0x0000000F);
    
    Gpio_SetPortDir(gGpioPort0_c, ~0x000000F0, 0x000000F0);
    Gpio_SetPortDir(gGpioPort1_c, ~0x0000000F, 0x0000000F);


  Gpio_SetPinData(gGpioPin45_c, gGpioPinStateLow_c);
  Gpio_SetPinData(gGpioPin19_c, gGpioPinStateLow_c);
  DelayUs(10);
  Gpio_SetPinData(gGpioPin45_c, gGpioPinStateHigh_c);
  Gpio_SetPinData(gGpioPin19_c, gGpioPinStateHigh_c);
  DelayMs(1);

    /* Turn ON the VDD-VSS power keeping the RES pin = LOW for 0.5us */
    /* When power is stabilized, relese the RES pin (RES pin = HIGH) */
    
    /* Default initialized state: 
     - Display off
	   - Normal display (COM0 --> COM63)
	   - ADC select: normal (RAM column address n <-> SEGn)
	   - Power control register: Booster circuit OFF, Voltage regulator circuit OFF, Voltage follower circuit OFF
	   - LCD power supply bias rate = 1/9
	   - All-indicator lamps-on OFF
	   - Power saving clear
	   - V5 voltage regulator internal resistors Ra and Rb separation
	   - Output conditions of SEG and COM terminals SEG:V2/V3; COM: V1/V4
	   - Read modify write OFF
	   - Static indicator OFF
	   - Display start line set to first line
	   - Column address set to Address 0
	   - Page address set to Page 0
	   - Common output status normal
	   - V5 voltage regulator internal resistor ratio set mode clear
	   - Electronic volume register set mode clear
	   - Test mode clear 
    */

    /* reset display */
    LCD_WriteCommand(0xE2);
    DelayUs(10);

    /* set LCD bias to 1/9 */
    LCD_WriteCommand(0xA2);

    /* set ADC selection to normal: RAM column address n <-> SEGn */
    /* LCD_WriteCommand(gLCDADCNormalCommand_c); */
    LCD_WriteCommand(0xA1);

    /* set scan direction of the COM to normal: COM0 --> COM63 */
    LCD_WriteCommand(0xC0);

    /* set the Rb/Ra ratio for V5 to medium (D2D1D0 = 0b100) */
    LCD_WriteCommand( 0x20 | (4 & 0x07) );

    /* enable the electronic volume register set command */
    /* this command must always be followed by an electronic volume register set command */
    LCD_WriteCommand(0x81);
    
    LCD_WriteCommand(0x30);


    /* disable booster circuit, disable voltage regulator circuit, disable voltage follower circuit */
    LCD_WriteCommand(0x2F);
    DelayUs(10);
    /** turn ON */
    LCD_WriteCommand(0xAF);
    DelayUs(10);
    
    /* turn on the backlight */
    LCD_SetBacklight(0x0F);
    
    /* set default font */
    (void)LCD_SetFont(gLCD_NormalFont_c);

    mIsLcdInitialized = 0;
}

/******************************************************************************
* This function clears the display. In case an error occured during add to queue
* operation, the clear display operation will not execute.
*
* Interface assumptions:
*
*
* Return value:
* None
*
******************************************************************************/
void LCD_ClearDisplay(void)
{

  static uint8_t linesToClear = 0x00;
  uint8_t line, deleteWriteLines = 0xFF;
  
  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;
  
    
 /* determine the lines that were written and need to be cleared */   
  linesToClear = mDisplayParams.writtenLines;  
  if(mIsLcdInitialized == 1)
  {
 /* determine if there are lines that need to be erased and after need to be written */
    deleteWriteLines = linesToClear & mDisplayParams.linesToWrite;
    if(deleteWriteLines)
    { /* if there are */
     /* mark that lines as deleted and jump over them */
      linesToClear &= ~(deleteWriteLines);  
    }
  }
   line = 0;
   /* find the first written line */
   
  do
  {
    while((!((linesToClear>>line)&0x01))&&(line<8))
    {
      line++;
    }
   
    if(line!= 8)
    {
     /* in case at least a line is written */
      if(1 == LCD_ClearLine(line))
      {
       /* mark line as cleared */
        mDisplayParams.writtenLines &= ~(1 << line);
        linesToClear &= ~(1 << line);
       /* check if there are other lines written */
      }
    }
  }while(line!= 8);
}

/******************************************************************************
* This function writes a string to the display. In case an error occured 
* during add to queue operation, the write string operation will not execute.
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/

void LCD_WriteString_NormalFont(uint8_t line, uint8_t *pstr){
 
 uint8_t len; 
 uint8_t i;
 mDisplayParams.currentXCoord = mLineParams[line].xCoord;;  
 mDisplayParams.currentYCoord = mLineParams[line].yCoord;   
 len = GetStrlen(pstr);
 
 for(i=0; ((i< len) && (i < 21)); i++)
 {
   LCD_WriteCharacter(*pstr,mDisplayParams.currentXCoord, mDisplayParams.currentYCoord);   
   mDisplayParams.currentXCoord += 6;
  pstr++;
 }
}

/******************************************************************************
* This function write a string and a value in decimal or hexdecimal
* to the display
*
* Interface assumptions:
* The pstr must be zero-terminated.
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_WriteStringValue
  (
  uint8_t *pstr,     /* IN: Pointer to text string */
  uint16_t value,    /* IN: Value */
  uint8_t line, 	   /* IN: Line in display */
  LCD_t numberFormat /* IN: Value to show in HEX or DEC */
  )
{

  int16_t divDec=10000, divHex=16;
  uint8_t loop=5, i=0,counter=0, aH[6], aHex[6];
  uint8_t aDec[6], aString[17];
  
  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;

 if(numberFormat == gLCD_DecFormat_c) {
    if(value < 100) {
      loop = 2;
      divDec = 10;
    }
    else if(value >= 100 && value <1000) {
      loop = 3;
      divDec = 100;
    }
    else if(value >= 1000 && value <9999) {
      loop = 4;
      divDec = 1000;
    }

    for(i=0; i<loop; i++) {
      if((value/divDec)!= 0) {
        aDec[counter++] = (value/divDec) + 0x30;
        value = value % divDec;
      }
      else {
        aDec[counter++] = 0x30;
      }
      divDec = divDec/10;
    }
    aDec[counter]='\0';
    counter=0;
    while (*pstr != '\0' && counter <21 ) {
      aString[counter++]=*pstr;
      pstr++;
    }
    i=0;
    while (aDec[i] != '\0' && counter <21 ) {
      aString[counter++]=aDec[i++];
    }
    aString[counter]='\0';
    LCD_WriteString_NormalFont( line, aString );
  }
  else if(numberFormat == gLCD_HexFormat_c) {
    do{
      aH[i]=gaHexValue[value % divHex];
      value=value / divHex;
      i++;
    }
    while(value > 15);
    aH[i]=gaHexValue[value];
    counter=0;
    while(i > 0){
      aHex[counter++]=aH[i--];
    }

    aHex[counter++]=aH[0];
    aHex[counter]='\0';

    counter=0;
    while (*pstr != '\0' && counter <21 ) {
      aString[counter++]=*pstr;
      pstr++;
    }
    i=0;
    while (aHex[i] != '\0' && counter <21 ) {
      aString[counter++]=aHex[i++];
    }
    aString[counter]='\0';
    LCD_WriteString_NormalFont( line, aString );
  }
  else {
    LCD_WriteString_NormalFont( line, "Format unknow" );
  }
}

void LCD_WriteStringDecValue
  (
  uint8_t *pstr,     /* IN: Pointer to text string */
  uint16_t value,    /* IN: Value */
  uint8_t line, 	   /* IN: Line in display */
  LCD_t numberFormat /* IN: Value to show in HEX or DEC */
  )
{

  int16_t divDec=10000, divHex=16;
  uint8_t loop=5, i=0,counter=0, aH[6], aHex[6];
  uint8_t aDec[6], aString[17] = {0};
  uint8_t u8TempVal;
  uint8_t u8Count;
 
  
  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;

 if(numberFormat == gLCD_DecFormat_c) {
    u8TempVal = (value >> 8);
    
    for( u8Count= 0;  u8Count < 2;  u8Count++)
    {
      if(u8TempVal < 100) 
      {
        loop = 2;
        divDec = 10;
      }
      else if(u8TempVal >= 100 && u8TempVal < 255) {
        loop = 3;
        divDec = 100;
      }
      for(i=0; i<loop; i++) {
        if((u8TempVal/divDec)!= 0) 
        {
          aDec[counter++] = (u8TempVal/divDec) + 0x30;
          u8TempVal = u8TempVal % divDec;
        }
        else {
          aDec[counter++] = 0x30;
        }
        divDec = divDec/10;
      }
      if(u8Count < 1)
      {  
        aDec[counter++] = '.';
      }
      u8TempVal = value;
    } 
      
    aDec[counter]='\0';
    counter=0;
    
    while (*pstr != '\0' && counter <21 ) 
    {
      aString[counter++]=*pstr;
      pstr++;
    }
    i=0;

    while (aDec[i] != '\0' && counter <21 ) {
      aString[counter++]=aDec[i++];
    }
    LCD_WriteString_NormalFont( line, aString );
  }
 
  else if(numberFormat == gLCD_HexFormat_c) {
    do{
      aH[i]=gaHexValue[value % divHex];
      value=value / divHex;
      i++;
    }
    while(value > 15);
    aH[i]=gaHexValue[value];
    counter=0;
    while(i > 0){
      aHex[counter++]=aH[i--];
    }

    aHex[counter++]=aH[0];
    aHex[counter]='\0';

    counter=0;
    while (*pstr != '\0' && counter <21 ) {
      aString[counter++]=*pstr;
      pstr++;
    }
    i=0;
    while (aHex[i] != '\0' && counter <21 ) {
      aString[counter++]=aHex[i++];
    }
    aString[counter]='\0';
    LCD_WriteString_NormalFont( line, aString );
  }
  else {
    LCD_WriteString_NormalFont( line,"Format unknow"); 
  }
}



/******************************************************************************
* This functions allows to write raw bytes to the LCD, the maximum number of bytes
*	capable per line is 8, this functions transfors every hex simbol in a byte to a char.
*
* Interface assumptions:
*	IN: The pointer to the label to print with the bytes.
*	IN: The bytes to print.
*	IN: The line in the LCD where the bytes with the label.
*	IN: The number of bytes to print in the LCD.
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_WriteBytes
(
	uint8_t   *pstr,   /* IN: The pointer to the label to print with the bytes. */
	uint8_t   *value,  /* IN: The bytes to print in hex. */
	uint8_t   line,    /* IN: The line in the LCD where the bytes with the label. */
	uint8_t   length   /* IN: The number of bytes to print in the LCD. */
)
{

	uint8_t i=0,counter=0, cIndex,auxIndex;
	uint8_t aString[17];

	uint8_t  hexIndex;
	uint8_t aHex[21]={'S','i','z','e',' ','N','o','t',' ','V','a','l','i','d','*','*'};

  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;
  
	counter=0;
	while (*pstr != '\0' && counter <21 )
	{
		aString[counter++]=*pstr;
		pstr++;
	}
	if ((((length*2)+counter) <= 21) && ((length*2) > 0))
	{
		for (cIndex =0,auxIndex = 0; cIndex < length; cIndex++,auxIndex+=2)
		{
			hexIndex = value[cIndex]&0xf0;
			hexIndex = hexIndex>>4;
			aHex[auxIndex] = gaHexValue[hexIndex];
			hexIndex = value[cIndex] & 0x0f;
			aHex[auxIndex + 1] = gaHexValue[hexIndex];
		}
		aHex[(length * 2)]='\0';
	}
	else
		counter = 0;

	i=0;
	while (aHex[i] != '\0' && counter <21 )
		aString[counter++]=aHex[i++];

	aString[counter]='\0';
	LCD_WriteString( line, aString );
}

/******************************************************************************
* This function sends a command to the display controller
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_WriteCommand(uint8_t command)
{
  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;
  
  Gpio_SetPinData(gGpioPin21_c, gGpioPinStateHigh_c);
  SetOutput();
  Gpio_SetPinData(gGpioPin20_c, gGpioPinStateHigh_c);
  Gpio_SetPinData(gGpioPin9_c, gGpioPinStateHigh_c);
  SendData(command);
  DelayUs(1);
  Gpio_SetPinData(gGpioPin9_c, gGpioPinStateLow_c);
  Gpio_SetPinData(gGpioPin20_c, gGpioPinStateLow_c);
  SetHiZ();
  DelayUs(1);
}

/******************************************************************************
* This function sends a data to the display controller
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_WriteData(uint8_t data)
{
  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;

  Gpio_SetPinData(gGpioPin21_c, gGpioPinStateLow_c);
  Gpio_SetPinData(gGpioPin20_c, gGpioPinStateHigh_c);
  SetOutput();
  SendData(data);
  Gpio_SetPinData(gGpioPin9_c, gGpioPinStateHigh_c);
  DelayUs(1);
  Gpio_SetPinData(gGpioPin9_c, gGpioPinStateLow_c);
  Gpio_SetPinData(gGpioPin20_c, gGpioPinStateLow_c);
  SetHiZ();
  DelayUs(1);  
 
}

/******************************************************************************
* This function sets the font received as parameter as default font
*
* Interface assumptions:
*
*
* Return value:
*      TRUE:  when the font is correctly set
*      FALSE: when an unsupported font is received as parameter
* char
*
*
******************************************************************************/
bool_t LCD_SetFont(lcdFontType_t font)
{
  /* clear the error indicator */
  mErrorIndicator = gLCD_NoError_c;

  if(2 > font)
  {
    mDisplayParams.currentFontType = font;
    return 1;
  }
  else
  {
    return 0;
  }
}

/******************************************************************************
* This function checks if an error occured during an interface function call.
* User must always call this function to verify if an interface function executed 
* successufully.
*
* Interface assumptions:
*
*
* Return value:  lcdError_t
*      gLCD_NoError_c:   no error
*      gLCD_QueueFull_c: queue is full
*
*
******************************************************************************/
lcdError_t LCD_CheckError(void)
{
  return mErrorIndicator;
}

/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/


/******************************************************************************
* This function enables/disables the backlight
*
* Interface assumptions:
*   0 - disable backlight
*   >0 - enables backlight
*
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_SetBacklight(uint8_t brightnessValue)
{
    GpioPinState_t backLightState;
    backLightState = (0 != brightnessValue) ? gGpioPinStateHigh_c : gGpioPinStateLow_c;
    Gpio_SetPinData(gGpioPin10_c,  backLightState);
}

/******************************************************************************
* This function sets/ clears the pixel from (XStartCoord, YStartCoord)
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_WritePixel(uint8_t xStartCoord, uint8_t yStartCoord, bool_t mode)
{
  uint8_t page;
  uint8_t read;

  if (xStartCoord>=128 || yStartCoord>=64)
  {
    return; /* if pixel out of screen exit */
  }

  page = yStartCoord >> 3;
  yStartCoord %= 8;

  LCD_WriteCommand(0x40);
  LCD_WriteCommand(0xB0 + page);
  LCD_WriteCommand(0x10 | ((xStartCoord & 0xF0)>>4));
  LCD_WriteCommand(0x00 | (xStartCoord & 0x0F));       

  read = ReadData(); // Dummy read
  read = ReadData();

  LCD_WriteCommand(0x40);
  LCD_WriteCommand(0xB0 + page);
  LCD_WriteCommand(0x10 | ((xStartCoord & 0xF0)>>4));
  LCD_WriteCommand(0x00 | (xStartCoord & 0x0F));

  if( 1 == mode )
  {
    LCD_WriteData((read | (1 << yStartCoord)));
  }
  else
  {  
    LCD_WriteData((read & ~(1 << yStartCoord)));  
  }
}

/******************************************************************************
* This function displays a character starting with xCoord and yCoord
*
* Interface assumptions:
*  yCoord is a multiple of 8
*
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_WriteCharacter(uint8_t symbol, uint8_t xCoord, uint8_t yCoord)
{
  uint16_t arrayLocation=0; 
  uint8_t i, maxLength;
 
  /* if pixel out of screen, exit */
  if((xCoord >= 128) && (yCoord >= 64))
  {
    return;
  }
    
  arrayLocation = symbol - 32;
  maxLength = aLCDFont[mDisplayParams.currentFontType].fontHeight;
  /* each character has: 
  *  (aLCDFont[mDisplayParams.currentFontType].pFontIndex[arrayLocation+1] - 
  *   aLCDFont[mDisplayParams.currentFontType].pFontIndex[arrayLocation]) pixels as width 
  *  (aLCDFont[mDisplayParams.currentFontType].fontHeight * 8) pixels as height 
  */
  while(maxLength > 0)
  {
    maxLength--;      
    InitDisplayWrite(xCoord,yCoord);        
    /* mark line as written */
    mDisplayParams.writtenLines |= (1<<(yCoord>>3));   
    for(i = 0;
        i < ((aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation+1] - 
              aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation]) *
              aLCDFont[mDisplayParams.currentFontType].fontHeight);
        i += aLCDFont[mDisplayParams.currentFontType].fontHeight)        
    {
      /* in case the character is representd on multiple lines,
       * (aLCDFont[mDisplayParams.currentFontType].fontHeight > 1),
       * display first the upper part of the character and after the lower part 
       */
      LCD_WriteData(aLCDFont[mDisplayParams.currentFontType].pFontCharTable[aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation]*aLCDFont[mDisplayParams.currentFontType].fontHeight + i + maxLength]);
    }
    yCoord += 8;
  }    
}

/****************************************************************************************
* This function clears the pixels between startXCoord and endXCoord within a single page
* (page located at yCoord)
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
void LCD_ClearPage(uint8_t startXCoord, uint8_t endXCoord, uint8_t yCoord)
{
  uint8_t i;
  
  InitDisplayWrite(startXCoord, yCoord);
  for(i = startXCoord; i < endXCoord; i++)
  {
    LCD_WriteData(0);    
  }    
}

/****************************************************************************************
* This function clears an entire LCD line
*
* Interface assumptions:
*     char line = 0..7
*
*
* Return value:
*     TRUE if the line was cleared
*     FALSE if the line is not cleared yet
*     0xFF  if the line parameter is not valid
* None
*
*
******************************************************************************/
uint8_t LCD_ClearLine(uint8_t line)
{
  static pageParams_t pageToDelete;
  static bool_t isPageDeleted = 1;
  
  if(line < 8)
  {
    /* save the page coordinates */
    if(isPageDeleted)
    {
      pageToDelete.xStartCoord = mLineParams[line].xCoord;
      pageToDelete.xEndCoord   = 128;
      pageToDelete.yCoord      = mLineParams[line].yCoord;
      pageToDelete.line        = line; 
    }
    
    /* delete only mMaxDeleteColumns_c columns once because of time constraints */
    if(((pageToDelete.xEndCoord - pageToDelete.xStartCoord) >= 32))
    {
      /* the page will be deleted with (gLCDMaxColumns_c/mMaxDeleteColumns_c) consecutive operations */
      isPageDeleted            = 0;
      LCD_ClearPage(pageToDelete.xStartCoord, 
                    pageToDelete.xStartCoord + 32, 
                    pageToDelete.yCoord); 
      /* compute the new xStartCoord for the current page */
      pageToDelete.xStartCoord = pageToDelete.xStartCoord + 32;        
      return 0;  
    }
    else
    {    
      LCD_ClearPage(pageToDelete.xStartCoord, 
                    pageToDelete.xEndCoord, 
                    pageToDelete.yCoord);
      isPageDeleted            = 1;
      return 1;  
    } 
  }
  else
  {
    return 0xFF;
  }
}

/******************************************************************************
* This function process an LCD operation (clear, write string).
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/


/******************************************************************************
* This function sets a certain value to the LCD DATA pins
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
static void SendData(uint8_t data)
{
    Gpio_SetPortData(gGpioPort0_c, (data)<<4, 0x000000F0); 
    Gpio_SetPortData(gGpioPort1_c, (data)>>4, 0x0000000F);
    
}

/******************************************************************************
* This function sets the LCD DATA pins as inputs
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
static void SetHiZ(void)
{
    /* change data pins direction back to input */
    Gpio_SetPortDir(gGpioPort0_c, ~0x000000F0, 0x000000F0); 
    Gpio_SetPortDir(gGpioPort1_c, ~0x0000000F, 0x0000000F); 
    

}

/******************************************************************************
* This function sets the LCD DATA pins as outputs
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
static void SetOutput(void)
{
  /* change data pins direction to output */
   
    Gpio_SetPortDir(gGpioPort0_c, 0x000000F0, 0x000000F0);      
    Gpio_SetPortDir(gGpioPort1_c, 0x0000000F, 0x0000000F);         
    

}

/******************************************************************************
* This function initilizes the display for a data write (line, page, column)
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
static void InitDisplayWrite(uint8_t xStartCoord, uint8_t yStartCoord)
{

  uint8_t page;  
  
  page = yStartCoord >> 3;

  LCD_WriteCommand(0x40);
  LCD_WriteCommand(0xB0 + page);
  LCD_WriteCommand(0x10 | ((xStartCoord & 0xF0)>>4));
  LCD_WriteCommand(0x00 | (xStartCoord & 0x0F));         
}

/******************************************************************************
* This function reads the current location from display data RAM
*
* Interface assumptions:
*
*
* Return value:
* None
*
*
******************************************************************************/
static uint8_t ReadData(void)
{
  uint8_t ReturnValue;
  Gpio_SetPinData(gGpioPin21_c, gGpioPinStateLow_c);
  Gpio_SetPinData(gGpioPin20_c, gGpioPinStateHigh_c);
  DelayUs(1);
  Gpio_SetPinData(gGpioPin8_c, gGpioPinStateHigh_c);
  DelayUs(1);
  ReturnValue = GetData();
  Gpio_SetPinData(gGpioPin8_c, gGpioPinStateLow_c);
  Gpio_SetPinData(gGpioPin20_c, gGpioPinStateLow_c);
  DelayUs(1);
  return ReturnValue;
}

/******************************************************************************
* This function sets the data from the current RAM display location
* to LCD DATA pins
*
* Interface assumptions:
*
*
* Return value:
* unsigned 8 bit
*
*
******************************************************************************/
static uint8_t GetData(void)
{
    uint8_t        ReturnValue = 0;
    uint32_t temp;
    Gpio_GetPortData(gGpioPort0_c, &temp);
    ReturnValue = (0x000000F0 & temp)>>4;
    Gpio_GetPortData(gGpioPort1_c, &temp);
    ReturnValue |= (0x0000000F & temp)<<4;

    
    return ReturnValue;
}

/******************************************************************************
* This function gets the length of a string and return the length
*
* Interface assumptions:
*
*
* Return value:
* char
*
*
******************************************************************************/
static uint8_t GetStrlen
  (
  const uint8_t *pString /* IN: Pointer to text string */
  )
{
  int8_t count=0, length=0;

  while (*pString != '\0' && count <21 ) {
    count++;
    length++;
    pString++;
  }

  /* Check boundries */
  if ( length > 21 ) {
    length = 21;
  }

  return length;
}

/******************************************************************************
* This function draws a 24x24 pixels Icon
*
* Interface assumptions:
*
*
* Return value:
* char
*
*
******************************************************************************/
void LCD_DrawIcon(uint8_t u8XCoord, uint8_t u8YPage, uint8_t * pu8Icon)
{
  uint8_t u8i;
  uint8_t u8j;
  
  if (u8XCoord >= 128 || u8YPage >= 8)
  {
    return; /* if pixel out of screen exit */
  }

  for(u8i = 0; u8i < 3; u8i++)
  {
    LCD_WriteCommand(0x40);
    LCD_WriteCommand(0xB0 + u8YPage++);
    LCD_WriteCommand(0x10 | ((u8XCoord & 0xF0)>>4));
    LCD_WriteCommand(0x00 | (u8XCoord & 0x0F));
    for(u8j = 0; u8j < 24; u8j++)
    {
      LCD_WriteData(*pu8Icon); 
      pu8Icon++;
    }
  }
  
}

