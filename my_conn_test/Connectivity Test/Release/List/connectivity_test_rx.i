/************************************************************************************
* Connectivity Test Main 
*
* (c) Copyright 2011, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 22/08/2011
* Last Tested:
************************************************************************************/

/************************************************************************************
* Application Parameters Configuration 
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 06/07/2007
* Last Tested:
************************************************************************************/
 
 
/* This file contain the features to be included within SMAC platform*/
 
 


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
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
************************************************************************************/

/************************************************************************************
* Header file for AITC Driver
*
* Author(s): R04473
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
************************************************************************************/



/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/
typedef void (*IntHandlerFunc_t)(void);

// Interrupt priorities (Normal / Fast)
typedef enum {
    gItcNormalPriority_c,
    gItcFastPriority_c
} ItcPriority_t;


//  Error codes
typedef enum {
    gItcErr_OK_c,
    gItcErr_InvalidNumber_c,
    gItcErr_InvalidPriority_c
} ItcErr_t;

////////////////////////////// Interrupt numbers //////////////////////////////////
typedef enum {
    gAsmInt_c,
    gUart1Int_c,
    gUart2Int_c,
    gCrmInt_c,
    gI2cInt_c,
    gTmrInt_c,
    gFlashInt_c,
    gMacaInt_c,
    gSsiInt_c,
    gAdcInt_c,
    gSpiInt_c,
    gMaxInt_c,
    gUndefinedException_c,
    gSupervisorException_c,
    gPrefetchAbortException_c,
    gDataAbortException_c,
    gMaxException_c
} ItcNumber_t;




/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/
/************************************************************************************
* Macro:        ITC_TestSet
*
* Description:  This macro forces assertion for one interrupt flag in IntFrc register
*
* Parameters:    IntNumber_t  Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  ItcErr_t
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/

/************************************************************************************
* Macro:        ITC_TestReset
*
* Description:  This macro forces deassertion for one interrupt flag in IntFrc register
*
* Parameters:    IntNumber_t  Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  ItcErr_t
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/

/************************************************************************************
* Macro:        ITC_GetIntEnable
*
* Description:  This macro returns the content of INTENABLE register
*
* Parameters:    IntNumber_t  Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  unsigned int  - LSB is set accordingly with the designed bit by Number parameter
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/

/************************************************************************************
* Macro:         ITC_GetFastPending
*
* Description:  This macro returns the content of FIPEND register
*
* Parameters:    IntNumber_t  Number - interrupt number corresponding to a peripheral device
*   
* Return value:  unsigned int - LSB is set accordingly with the designed bit by Number parameter
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/

/************************************************************************************
* Macro:         ITC_GetNormalPending
*
* Description:  This macro returns the content of NIPEND register
*
* Parameters:    IntNumber_t  Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  unsigned int  - LSB is set accordingly with the designed bit by Number parameter
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/

/************************************************************************************
* Macro:        ITC_GetIntSrc
*
* Description:  This macro returns the content of INTSRC register
*
* Parameters:    IntNumber_t Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  unsigned int  - LSB is set accordingly with the designed bit by Number parameter
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/

/************************************************************************************
* Macro:        IntRemoveHandler
*
* Description:  This macro removes an IRQ handler
*
* Parameters:    ItcNumber_t      Number        - interrupt number, max. value is gMaxException_c - 1
*   
* Return value:  error code
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   070406     GB      Created
* 
************************************************************************************/



/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* Function:    ITC_Init
*
* Description:  This function initilizes the ARM Interrupt Control module hardware.
*
* Parameters:  None
*   
* Return value:  None
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   070406     GB      Created
* 
************************************************************************************/
extern void ITC_Init(void);

/************************************************************************************
* Function:    IntAssignHandler
*
* Description:  This function assigns a function to an IRQ number
*
* Parameters:  IntHandlerFunc_t pfIrqHandler  - pointer to interrupt handler
*             ItcNumber_t      Number        - interrupt number, max. value is gMaxException_c - 1
*   
* Return value:  error code
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   070406     GB      Created
* 
************************************************************************************/
extern ItcErr_t IntAssignHandler(ItcNumber_t Number, IntHandlerFunc_t pfIrqHandler);

/************************************************************************************
* Function:    IntGetHandler
*
* Description:  This function returns the handler for an IRQ number. If there is none
*               assigned, it will return NULL.
*
* Parameters:   ItcNumber_t Number    - interrupt number, max. value is gMaxException_c - 1
*   
* Return value:  IntHandlerFunc_t       - pointer to interrupt handler or NULL if any error
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   151007     GB      Created
* 
************************************************************************************/
extern IntHandlerFunc_t IntGetHandler(ItcNumber_t Number);

/************************************************************************************
* Function:    ITC_SetPriority
*
* Description:  This function sets the priority to an IRQ number
*
* Parameters:  ItcNumber_t      Number        - interrupt number, max. value is gDataAbortException_c (gMaxInt_c - 1)
*             ItcPriority_t    Priority      - NormalInt or FastInt for routing to 
*                                             IRQ or FIQ into ARM7TDMI core
*   
* Return value:  error code
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   070406     GB      Created
* 
************************************************************************************/
extern ItcErr_t ITC_SetPriority(ItcNumber_t Number, ItcPriority_t Priority);

/************************************************************************************
* Function:    ITC_EnableInterrupt
*
* Description:  This function enables the interrupt corresponding to IrqNum
*
* Parameters:  ItcNumber_t Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  ItcErr_t
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/
extern ItcErr_t ITC_EnableInterrupt(ItcNumber_t Number);

/************************************************************************************
* Function:    ITC_DisableInterrupt
*
* Description:  This function disables the interrupt corresponding to IrqNum
*
* Parameters:  IntNumber_t  Number  - interrupt number corresponding to a peripheral device
*   
* Return value:  ItcErr_t
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/
extern ItcErr_t ITC_DisableInterrupt(ItcNumber_t Number);

/************************************************************************************
* Function:    ITC_SetIrqMinimumLevel
*
* Description:  This function sets the normal interrupt level mask register - NIMASK
*
* Parameters:  IntNumber_t  Number  - interrupt number corresponding to a peripheral device
*                                    set to gNoneInt_c to disable this feature
*   
* Return value:  ItcErr_t
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   110406     GB      Created
* 
************************************************************************************/
extern ItcErr_t ITC_SetIrqMinimumLevel(ItcNumber_t Number);






extern void InterruptInit(void);
extern void IntRestoreFIQ(unsigned int);  // 1 - int disabled, 0 - int enabled
extern void IntRestoreIRQ(unsigned int);  // 1 - int disabled, 0 - int enabled
extern void IntRestoreAll(unsigned int);  // 0 - all enabled, 1 - FIQ disabled/ IRQ enabled, 2 - FIQ enabled/ IRQ disabled, 3 - all disabled
extern unsigned int IntDisableIRQ(void);  // 1 - int disabled, 0 - int enabled
extern unsigned int IntDisableFIQ(void);  // 1 - int disabled, 0 - int enabled
extern unsigned int IntDisableAll(void);  // 0 - all enabled, 1 - FIQ disabled/ IRQ enabled, 2 - FIQ enabled/ IRQ disabled, 3 - all disabled


/************************************************************************************
* Public header file for the Timer driver.
*
* Author(s): B04839 
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
Revision history:
   date                        Author                                 Comments
   ----------               ----------------------                    -------
   03.07.2006                  B04839                                 Created
************************************************************************************/


/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/

/*write value to register macros*/ 
/*read value from registers macros*/

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

/** This data type enumerates the Timer API calls return values */
typedef enum {
  gTmrErrNoError_c = 0,                 
  gTmrErrTimerIsEn_c,
  gTmrErrTimerIsDis_c,   
  gTmrErrNullPointer_c,    
  gTmrErrInvalidParameter_c,    
  gTmrErrTimerBusy_c,
  gTmrErrMax_c
} TmrErr_t;

/** This data type enumerates the possible values for the timer number */
typedef enum {
  gTmr0_c = 0,
  gTmr1_c,
  gTmr2_c,
  gTmr3_c,
  gTmrMax_c
} TmrNumber_t;

/** This data type enumerates the possible values of the count mode */
typedef enum {
  gTmrNoOperation_c = 0,
  gTmrCntRiseEdgPriSrc_c ,
  gTmrCntRiseEdgFallEdgPriSrc_c,
  gTmrCntRiseEdgWhileSecInputHighActive_c,
  gTmrQuadCnt_c,
  gTmrCntPriSrcRiseEdgSecSrcSpecDir_c,
  gTmrEdgSecSrcTriggerPriCntTillComp_c,
  gTmrSyncCnt_c,
  gTmrModeMax_c
} TmrMode_t;

/** This data type enumerates the possible values for output mode */
typedef enum {
  gTmrAssert_c = 0,                 
  gTmrClearOF_c,                 
  gTmrSetOF_c,
  gTmrToggleOF_c,
  gTmrToggleOFUsingAlternateReg_c,
  gTmrSetOnCompClearOnSecInputEdg_c,
  gTmrSetOnCompClearOnRollover_c,
  gTmrEnGateClock_c,  
  gTmrOutputModeMax_c
} TmrOutputMode_t;

/** This data type enumerates the possible values for primary count source */
typedef enum {
  gTmrPrimaryCnt0Input_c = 0,                 
  gTmrPrimaryCnt1Input_c,                 
  gTmrPrimaryCnt2Input_c,
  gTmrPrimaryCnt3Input_c,
  gTmrPrimaryCnt0Output_c,
  gTmrPrimaryCnt1Output_c,
  gTmrPrimaryCnt2Output_c,
  gTmrPrimaryCnt3Output_c,
  gTmrPrimaryClkDiv1_c,
  gTmrPrimaryClkDiv2_c,
  gTmrPrimaryClkDiv4_c,
  gTmrPrimaryClkDiv8_c,
  gTmrPrimaryClkDiv16_c,
  gTmrPrimaryClkDiv32_c,
  gTmrPrimaryClkDiv64_c,
  gTmrPrimaryClkDiv128_c,
  gTmrPrimaryCntSrcMax_c
} TmrPrimaryCntSrc_t;

/** This data type enumerates the values for the secondary count sorce */
typedef enum {
  gTmrSecondaryCnt0Input_c = 0,                 
  gTmrSecondaryCnt1Input_c,                 
  gTmrSecondaryCnt2Input_c,
  gTmrSecondaryCnt3Input_c,
  gTmrSecondaryCntSrcMax_c
} TmrSecondaryCntSrc_t;

/** This data type enumerates the values for timer events*/
typedef  enum {
  gTmrComp1Event_c = 0,
  gTmrComp2Event_c,
  gTmrCompEvent_c,
  gTmrOverEvent_c,
  gTmrEdgeEvent_c,
  gTmrMaxEvent
} TmrEvent_t;
  
/** This data type describes the configuration of the Timer module .*/
typedef struct TmrConfig_tag{
  TmrOutputMode_t       tmrOutputMode;
  bool_t                tmrCoInit;
  bool_t                tmrCntDir;
  bool_t                tmrCntLen;
  bool_t                tmrCntOnce;
  TmrSecondaryCntSrc_t  tmrSecondaryCntSrc;
  TmrPrimaryCntSrc_t    tmrPrimaryCntSrc;
} TmrConfig_t;

/** This data type describes the status and control of the Timer module.*/
typedef union TmrStatusCtrl_tag{
  struct{
    uint16_t OEN:1;
    uint16_t OPS:1;
    uint16_t FORCE:1;
    uint16_t VAL:1;
    uint16_t EEOF:1;
    uint16_t MSTR:1;
    uint16_t CAPMODE:2;
    uint16_t INPUT:1;
    uint16_t IPS:1;
    uint16_t IEFIE:1;
    uint16_t IEF:1;
    uint16_t TOFIE:1;
    uint16_t TOF:1;
    uint16_t TCFIE:1;
    uint16_t TCF:1;
  } bitFields;
  uint16_t uintValue;
} TmrStatusCtrl_t;

/** This data type describes the comparator status and control of the Timer module.*/
typedef union TmrComparatorStatusCtrl_tag{
  struct{
    uint16_t CL1:2;
    uint16_t CL2:2;
    uint16_t TCF1:1;
    uint16_t TCF2:1;
    uint16_t TCF1EN:1;
    uint16_t TCF2EN:1;
    uint16_t RESERVED:5;
    uint16_t FILT_EN:1;
    uint16_t DBG_EN:2;
  } bitFields;
  uint16_t uintValue;
} TmrComparatorStatusCtrl_t;

/** This data type lists the callback functions for the Timer module driver*/
typedef void (*TmrCallbackFunction_t)(TmrNumber_t tmrNumber);

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

/*================================================================================================*/
/*===== TmrInit =====*/
/**
@brief The function is called to init timer module.

@param  

@return 
 
 Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/  
/*===============================================================================================*/
extern void TmrInit(void);

/*================================================================================================*/
/*===== TmrEnable =====*/
/**
@brief The function is called to enable corresponding  timer module.

@param  TmrNumber_t tmrNumber - number of the timer instance to enable

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrTimerAlreadyEnabled_c
 
 Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/  
/*===============================================================================================*/
extern TmrErr_t TmrEnable(TmrNumber_t tmrNumber);

/*================================================================================================*/
/*===== TmrDisable =====*/
/**
@brief The function is called to disable corresponding  timer module.

@param  TmrNumber_t tmrNumber               - number of the timer instance to enable

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrTimerAlreadyDisabled_c
 
 Revision history:
   date                              Author                           Comments
   ----------               ----------------------                    -------
   03.07.2006                        B04839                           Created
*/
/*===============================================================================================*/
extern TmrErr_t TmrDisable(TmrNumber_t tmrNumber);

/*================================================================================================*/
/*===== TmrSetMode =====*/
/**
@brief The function is called to set the working mode for the Timer peripheral specified as parameter.

@param  TmrNumber_t tmrNumber               - number of the timer instance to set working mode
@param   TmrMode_t tmrMode                  - timer working mode

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrTimerNotEnabled_c    
          gTmrErrTimerBusy_c
 
 Revision history:
   date                              Author                           Comments
   ----------               ----------------------                    -------
   03.07.2006                        B04839                           Created
*/
/*===============================================================================================*/
extern TmrErr_t TmrSetMode(TmrNumber_t tmrNumber, TmrMode_t tmrMode);

/*================================================================================================*/
/*===== TmrSetConfig =====*/
/**
@brief  The function is called to set the parameters for the Timer peripheral.

@param  TmrNumber_t tmrNumber               - number of the timer instance to enable
@param    TmrConfig_t* pConfig              - input parameter: pointer to a structure containing the configuration 
                                              parameters.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c
          gTmrErrNoCallbackDefined

 Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/
/*================================================================================================*/
extern TmrErr_t TmrSetConfig(TmrNumber_t tmrNumber, TmrConfig_t* pconfig);

/*================================================================================================*/
/*===== TmrSetStatusControl =====*/
/**
@brief  This function is called to set the level of the Rx FIFO threshold.

@param  TmrNumber_t tmrNumber               - input parameter: number of the timer instance to configurate.
@param  TmrStatusCtrl_t *pStatusCtrl        - input parameter: pointer to a structure containing the control parameters.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c
    
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrSetStatusControl(TmrNumber_t tmrNumber, TmrStatusCtrl_t* pStatusCtrl);

/*================================================================================================*/
/*===== TmrSetComparatorStatusControl =====*/
/**
@brief  The function is called to set the comparator configuration of the timer peripheral instance.

@param  uint8_t  tmrNumber                         - input parameter: number of the timer instance to configurate comparator.
@param  TmrComparatorStatusCtrl_t* pCompStatusCtrl - input parameter: pointer to a structure where the comparator configuration 
                                                     parameters shall be placed.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c 
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c
  
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrSetCompStatusControl(TmrNumber_t tmrNumber, TmrComparatorStatusCtrl_t* pCompStatusCtrl);

/*================================================================================================*/
/*===== TmrSetCallbackFunction =====*/
/**
@brief  This function will be called to set the callback functions for the timer driver.

@param  TmrNumber_t tmrNumber               - input parameter: number of the Timer instance to set the callback function.
@param  TmrCallbackFunction_t *pCallback    - input parameter: pointer to a structure containing the pointer to the callback 
                                              function.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c 
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabed_c
   
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrSetCallbackFunction(TmrNumber_t tmrNumber, TmrEvent_t tmrEvent, TmrCallbackFunction_t pCallbackFunc);

/*================================================================================================*/
/*===== TmrWriteValue =====*/
/**
@brief  The function is called to write a new value to the timer register to be used as the base for its next count.

@param  uint8_t  tmrNumber                  - input parameter: number of the Timer instance to write to.
@param  uint16_t value                      - input parameter: value to be used as the base for the next count.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrTimerNotEnabled_c
   
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrWriteValue( TmrNumber_t tmrNumber, uint16_t value);

/*================================================================================================*/
/*===== TmrGetMode =====*/
/**
@brief  The function is called to get the working mode of the timer peripheral specified as parameter. 

@param  uint8_t  tmrNumber                  - input parameter: number of the timer instance to get configuration from.
@param   TmrMode_t *tmrMode                 - input parameter: pointer to a structure where the timer working mode shall 
                                              be placed.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrTimerNotEnabled_c
          gTmrErrNullPointer_c
    
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrGetMode(TmrNumber_t tmrNumber, TmrMode_t *pTmrMode);

/*================================================================================================*/
/*===== TmrGetConfig =====*/
/**
@brief  The function is called to get the configuration of the timer peripheral specified as parameter. 

@param  uint8_t  tmrNumber                  - input parameter: number of the timer instance to get working mode from.
@param  TmrConfig_t *pConfig                - input parameter: pointer to a structure where the configuration parameters 
                                              shall be placed.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c
    
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrGetConfig(TmrNumber_t tmrNumber, TmrConfig_t* pconfig);

/*================================================================================================*/
/*===== TmrGetStatusControl =====*/
/**
@brief  The function is called to get the status of the timer peripheral instance.

@param  uint8_t  tmrNumber                  - input parameter: number of the timer instance to get status from.
@param  TmrStatusCtrl_t *pStatusCtrl        - input parameter: pointer to a structure where the status parameters shall 
                                              be placed.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c 
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c
    
Revision history:
   date                             Author                            Comments
   ----------               ----------------------                    -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrGetStatusControl(TmrNumber_t tmrNumber, TmrStatusCtrl_t* pStatusCtrl);

/*================================================================================================*/
/*===== TmrGetComparatorStatusControl =====*/
/**
@brief  The function is called to get the comparator status of the timer peripheral instance.

@param  uint8_t  tmrNumber                         - input parameter: number of the timer instance to get comparator status.
@param  TmrComparatorStatusCtrl_t* pCompStatusCtrl - input parameter: pointer to a structure where the comparator status 
                                                     parameters shall be placed.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c 
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c
  
Revision history:
   date                         Author                                Comments
   ----------               ----------------------                    -------
   03.07.2006                   B04839                                Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrGetCompStatusControl(TmrNumber_t tmrNumber, TmrComparatorStatusCtrl_t* pCompStatusCtrl);

/*================================================================================================*/
/*===== TmrReadValue =====*/
/**
@brief  The function is called to read a new value from the timer register.

@param  uint8_t  tmrNumber                  - input parameter: number of the Timer instance to read from
@param  uint16_t *value                     - input parameter: memory place where the new value from timer register 
                                              will be placed.

@return parameter of type TmrErr_t with following possible values (they are self-explaining):

          gTmrErrNoError_c
          gTmrErrInvalidParameter_c
          gTmrErrNullPointer_c
          gTmrErrTimerNotEnabled_c

Revision history:
   date                         Author                                  Comments
   ----------               ----------------------                      -------
   03.07.2006                   B04839                                  Created
*/   
/*================================================================================================*/
extern TmrErr_t TmrReadValue(TmrNumber_t tmrNumber,  uint16_t* pvalue);    

/*================================================================================================*/
/*===== TmrIsr =====*/
/**
@brief  Timer interrupt service routine.

@param  None

@return None

Revision history:
      date                          Author                            Comments
   ----------              ----------------------                     -------
   03.07.2006                       B04839                            Created
*/   
/*================================================================================================*/
extern void TmrIsr(void);

/************************************************************************************
* Init platform
*
*
* (c) Copyright 2006, Freescale Semiconductor, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
************************************************************************************/



/*
  Activates the NVM regulator via CRM
*/
void StartNvmReg(void);

/*
  Stops the NVM regulator via CRM
*/
void StopNvmReg(void);


/************************************************************************************
* Perform the complete GPIO port initialization
*
* Interface assumptions:
*
* Return value:
*   NONE
*
* Revision history:
*
*    Date    Author    Comments
*   ------   ------    --------
*   190505   JT        Created
*
************************************************************************************/
void PlatformPortInit(void);


/************************************************************************************
* RF Settings Configuration
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 06/08/2007
* Last Tested:
************************************************************************************/
 



 

/* BEGIN Dual RF Settings */
/* END Dual RF Settings */




/************************************************************************************
* This header file defines common data types
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
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/
typedef void(*callback_t)(void);
typedef void(*vScanCallback_t)(uint8_t);

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



typedef enum FuncReturn_tag
{
  gSuccess_c = 0,
  gFailOutOfRange_c,
  gFailNoResourcesAvailable_c,
  gFailNoValidCondition_c,
  gFailBusy_c,
  gFailCorrupted,
  gFailTest_c,
  gAuthenticationFailed_c,
  gAuthenticationPassed_c,
  gFail_c
} FuncReturn_t;

typedef enum channel_num_tag
{
  gChannel11_c = 0,
  gChannel12_c,
  gChannel13_c,
  gChannel14_c,
  gChannel15_c,
  gChannel16_c,
  gChannel17_c,
  gChannel18_c,
  gChannel19_c,
  gChannel20_c,
  gChannel21_c,
  gChannel22_c,
  gChannel23_c,
  gChannel24_c,
  gChannel25_c,
  gChannel26_c,
  gTotalChannels_c
} channel_num_t;






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




/**********************************************************************************/

/************************************************************************************
* This header file 
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
* This header file is the interface for the Radio Management implementation
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
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
















/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/
/*
#define action_started_mask     (1<<19)
#define sync_detected_mask      (1<<18)
#define timeout_mask            (1<<17)
#define checksum_failed_mask    (1<<16)
#define data_indication_mask    (1<<15)
#define action_complete_mask    (1<<14)
#define ac_success_mask         (1<<13)
#define ac_timeout_mask         (1<<12)
#define ac_channel_busy_mask    (1<<11)
#define ac_crc_failed_mask      (1<<10)
#define ac_aborted_mask         (1<<9)
#define ac_no_ack_mask          (1<<8)
#define ac_no_data_mask         (1<<7)
#define ac_late_start_mask      (1<<6)
#define ac_ext_timeout_mask     (1<<5)
#define ac_ext_pnd_imeout_mask  (1<<4)
#define ac_pll_unlock_mask      (1<<3)
#define ac_external_abort_mask  (1<<2)
#define ac_not_completed_mask   (1<<1)
#define ac_dma_bus_error_mask   (1<<0)
*/


typedef union evnt_flags_tag {
  struct {
    uint32_t action_started_flag:1;
    uint32_t sync_detected_flag:1;
    uint32_t timeout_flag:1;
    uint32_t checksum_failed_flag:1;
    uint32_t data_indication_flag:1;
    uint32_t action_complete_flag:1;
    uint32_t ac_success_flag:1;
    uint32_t ac_timeout_flag:1;
    uint32_t ac_channel_busy_flag:1;
    uint32_t ac_crc_failed_flag:1;
    uint32_t ac_aborted_flag:1;
    uint32_t ac_no_ack_flag:1;
    uint32_t ac_no_data_flag:1;
    uint32_t ac_late_start_flag:1;
    uint32_t ac_ext_timeout_flag:1;
    uint32_t ac_ext_pnd_timeout_flag:1;
    uint32_t ac_pll_unlock_flag:1;
    uint32_t ac_external_abort_flag:1;
    uint32_t ac_not_completed_flag:1;
    uint32_t ac_dma_bus_error_flag:1;
    uint32_t filter_failed_flag:1;
    uint32_t not_used_f01:1;
    uint32_t not_used_f02:1;
    uint32_t not_used_f03:1;
    uint32_t not_used_f04:1;
    uint32_t not_used_f05:1;
    uint32_t not_used_f06:1;
    uint32_t not_used_f07:1;
    uint32_t not_used_f08:1;
    uint32_t not_used_f09:1;
    uint32_t not_used_f10:1;
    uint32_t not_used_f11:1;
  } Bits;
  uint32_t Reg;
}evnt_flags_t;

typedef struct smac_pdu_tag {
  uint8_t  reserved[2];
  uint8_t  u8Data[1];
} smac_pdu_t;

typedef union msg_flags_tag {
  struct{
    uintn8_t reserved:5;
    uintn8_t sw_endian:1;
    uintn8_t aborted:1;
    uintn8_t ciphered:1;
  } Bits;
  uintn8_t Reg;
}msg_flags_t;

typedef enum msg_tx_state_tag{
  MSG_TX_RQST = (0),
  MSG_TX_PASSED_TO_DEVICE,
  MSG_TX_ACTION_STARTED,
  MSG_TX_ACTION_COMPLETE_CHANN_BUSY,
  MSG_TX_ACTION_COMPLETE_SUCCESS,
  MSG_TX_ACTION_COMPLETE_FAIL,
  MSG_TX_RQST_ABORT,
  MSG_TX_ABORTED,
  MAX_MSG_TX_STATE
}msg_tx_state_t;


typedef enum msg_rx_state_tag{
  MSG_RX_RQST = (0),
  MSG_RX_PASSED_TO_DEVICE,
  MSG_RX_ACTION_STARTED,
  MSG_RX_SYNC_FOUND,
  MSG_RX_TIMEOUT_FAIL,
  MSG_RX_ACTION_COMPLETE_SUCCESS,
  MSG_RX_ACTION_COMPLETE_FAIL,
  MSG_RX_RQST_ABORT,
  MSG_RX_ABORTED,
  MAX_MSG_RX_STATE
}msg_rx_state_t;


typedef enum msg_ed_state_tag{
  MSG_ED_RQST = (0),
  MSG_ED_PASSED_TO_DEVICE,
  MSG_ED_ACTION_COMPLETE_SUCCESS,
  MSG_ED_ACTION_COMPLETE_FAIL,
  MSG_ED_RQST_ABORT,
  MSG_ED_ABORTED,
  MAX_MSG_ED_STATE
}msg_ed_state_t;


typedef enum msg_to_state_tag {
  MSG_TO_RQST = (0),
  MSG_TO_PASSED_TO_DEVICE,
  MSG_TO_ACTION_COMPLETE_SUCCESS,
  MSG_TO_ACTION_COMPLETE_FAIL,
  MSG_TO_RQST_ABORT,
  MSG_TO_ABORTED,
  MAX_MSG_TO_STATE
}msg_to_state_t;


typedef enum msg_type_tag {
  TX = 0,
  RX,
  ED,
  TO,
  MAX_MSG_TYPE
} msg_type_t;


typedef struct msg_status_tag {
  msg_type_t  msg_type:3;
  uint8_t     msg_state:5;
} msg_status_t;


typedef union any_mssg_state_tag {
  msg_tx_state_t tx;
  msg_rx_state_t rx;
  msg_ed_state_t ed;
  msg_to_state_t to;
  uint8_t        any_type;
}any_mssg_state_t;



/* ------------------------------------------------------------------------------*/
/*     HOW TO USE message_t STRUCTURE                                            */
/*                  +--------------+--------------+--------------+--------------|*/
/*                  |     TX       |     RX       |      ED      |      TO      |*/
/* |----------------+--------------+--------------+--------------+--------------|*/
/* |    u8Status    |                Msg type and state                         |*/
/* |----------------+--------------+--------------+--------------+--------------|*/
/* |                | Location of  | Start add. of| Addr to store|   Timeout    |*/
/* |   pu8Buffer    | the data to  |the reception | the ED value |    value     |*/
/* |                | be transmited| buffer       |              |              |*/
/* |----------------+--------------+--------------+--------------+--------------|*/
/* |                | Size in bytes|  Number of   |   Channel    |              |*/
/* |   u8BufSize    |   to be      |  received    |  to assess   |      *       |*/
/* |                |  transmited  |   bytes      |     ED       |              |*/
/* |----------------+--------------+--------------+--------------+--------------|*/
/* |cbDataIndication|  Callback to be executed when the requested action finish |*/
/* |----------------+--------------+--------------+--------------+--------------|*/
typedef struct message_tag {
  msg_status_t u8Status;
  smac_pdu_t   *pu8Buffer;
  uint8_t      u8BufSize;
  callback_t   cbDataIndication;
} message_t;


typedef enum repeat_option_tag {
  DO_NOT_REPEAT = 0,
  REPEAT_AFTER_WAIT_PERIOD,
  REPEAT_ASAP
} repeat_option_t;

/************************************************************************************
*************************************************************************************
* Public prototypes
*************************************************************************************
************************************************************************************/


/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/
extern evnt_flags_t gRadioEvntFlags;
extern bool_t bScanReqFlag;
extern vScanCallback_t vScanReqCallBack;
extern uint16_t u16ChannToScan;
extern uint8_t u8ScanValPerChann[gTotalChannels_c];

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* This function aborts a message.
*
* Interface assumptions: 
*
* Routine limitations. 
*
* Return value: void.
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern FuncReturn_t abort_message (message_t * msg);


/************************************************************************************
* This function changes the state of the current message.
*
* Interface assumptions: 
*
* Routine limitations. 
*
* Return value: void.
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern void change_current_message_state (any_mssg_state_t mssg_state);



/************************************************************************************
* This function excutes the current message callback.
*
* Interface assumptions: Application must not call this function
*
* Routine limitations. 
*
* Return value: 
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern void execute_current_message_callback (void);


/************************************************************************************
* This function returns a pointer to the message that is been processed, it will 
* return NULL if there is no message.
*
* Interface assumptions: None
*
* Routine limitations. 
*
* Return value: The pointer to the message that is been processed.
*
* Effects on global data: None
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern message_t* get_current_message (void);

/************************************************************************************
* This function handle a new message to the queu.
*
* Interface assumptions: 
*
* Routine limitations. 
*
* Return value: SUCSESS - Released from the queu.
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern FuncReturn_t handle_new_message (message_t *, uint32_t);


/************************************************************************************
* This function process any TX/RX pending msg.
*
* Interface assumptions: This function shall be called on periodic basis
*
* Routine limitations. 
*
* Return value:
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern FuncReturn_t process_radio_msg (void);

/************************************************************************************
* This function initializes all the module variables involved in the radio management
*
* Interface assumptions: It must be called during the inicialization
*
* Routine limitations.
*
* Return value: SUCSESS - Any case
*
* Effects on global data: None
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern FuncReturn_t radio_manager_init (void);

/************************************************************************************
* This function releases the current message from the queu.
*
* Interface assumptions: Application will not modify the data passed to this handler
*                        until the message status is updated to RELEASED
*
* Routine limitations. 
*
* Return value: SUCSESS - If the message could be allocated.
*               FAIL_NO_RESOURCES_AVILABLE - If the is no memory available to
*                         handle the message.
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern FuncReturn_t release_current_message (void);


/**********************************************************************************/


/************************************************************************************
* This header file defines common data types
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
************************************************************************************/


/* BEGIN Custom Clock Frequency Settings */


/* END Custom Clock Frequency Settings */



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
typedef enum DemTypes_tag
{
  NCD = 0,
  DCD
}DemTypes_t;


/************************************************************************************
*************************************************************************************
* Public prototypes
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

/************************************************************************************
* This function initializate the Radio
*
* Return value:None
*
************************************************************************************/
extern void RadioInit(uint32_t u32ClockFreq, uint8_t u8PN, uint32_t u32LoopDiv);


/************************************************************************************
* This function set the channel number
*
* Interface assumptions:
*
* Return value: uint8_t - 0 for Successful or 0xFF when the channel is not
*               valid in power lock mode.   
*
************************************************************************************/
extern uint8_t SetChannel(uint8_t channel,  uint8_t RFSynVCODivI, uint32_t RFSynVCODivF);
 

/************************************************************************************
* This function configures the modulator to be used 
*
* Return value: None
*
************************************************************************************/
extern void SetDemulatorMode(DemTypes_t demodulator);


/************************************************************************************
* This function returns the current channel.
*
* Interface assumptions:
*
* Return value: uint8_t - The current channel configured.
*
************************************************************************************/
extern uint8_t GetCurrentChannel(const uint8_t * , const uint32_t *);


/************************************************************************************
* This function disables the synthesizer
*
* Return value: None
*
************************************************************************************/
extern void RFSynthDisable(void);


/************************************************************************************
* This function enables the synthesizer
*
* Return value: None
*
************************************************************************************/
extern void RFSynthEnable(void);


/************************************************************************************
* This function obtains the Link quality indication value.
*
* Return value: uint8_t - The LQI value between the 802.15.4 range 0x00 - 0xFF
*  
************************************************************************************/
extern uint8_t PhyPlmeGetLQI();


/************************************************************************************
* This function initialize from idle to run mode when a none 24 MHz clock is selected
*
* Interface assumptions:
*
* Return value: None
*
************************************************************************************/
extern void InitIdleToRun (void);


/************************************************************************************
* This function set the Energy Detect and Clear Channel Assessment threshold.
*
* Return value: None
*
************************************************************************************/
extern void SetEdCcaThreshold(uint8_t u8CcaThreshold);




/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/

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
typedef enum Test_Mode_tag
{
  SMAC_TEST_MODE_IDLE = 0,
  SMAC_TEST_MODE_PULSE_PRBS9_TX_RX,  
  SMAC_TEST_MODE_PER_TX_RX,
  SMAC_TEST_MODE_RANGE_TX_RX,
  SMAC_TEST_MODE_CONTINUOUS_TX_MOD,
  SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD,
  SMAC_TEST_MODE_CONTINUOUS_RX,
  SMAC_MAX_TEST_MODES
} Test_Mode_t;


typedef enum Speed_Mode_tag
{
  SMAC_SPEEDMODE_LOW = 0,
  SMAC_SPEEDMODE_HIGH,
  SMAC_MAX_SPEEDMODE
} Speed_Mode_t;

typedef enum Versioned_Entity_tag
{
//HW_JTAG_ID_REGISTER = 0,
  HW_MACA_MC1322X_ID,
  SW_SMAC_VERSION,
  SW_BOOTSTRAP_VERSION,
  MAX_VERSIONED_ENTITY
}Versioned_Entity_t;



// Valid values for ConfigureRFCtlSignals signalType
typedef enum {
  gRfSignalANT1_c,
  gRfSignalANT2_c,
  gRfSignalTXON_c,
  gRfSignalRXON_c,
  gRfSignalMax_c
}RfSignalType_t;


// Valid values for ConfigureRFCtlSignals signalFunction
typedef enum {
  gRfSignalFunctionGPIO_c,
  gRfSignalFunction1_c,
  gRfSignalFunction2_c,
  gRfSignalFunctionMax_c
}RfSignalFunction_t;


typedef union jtag_id_reg_tag
{
  struct
  {
    uint32_t  RESERVED1:1;
    uint32_t  MANUFACTURER_ID:11;
    uint32_t  PART_NUMBER:16;
    uint32_t  VERSION:4;
  } Bits;
  uint32_t Reg;
} jtag_id_reg_t;


typedef enum BuckTypes_tag
{
  BUCK_DISABLE = 0, 
  BUCK_BYPASS,
  BUCK_ENABLE
}BuckTypes_t;




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
* This function is called to perform a complete reset of the system.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
void MLMEPHYSoftReset(void);


/************************************************************************************
* This callback function needs to be filled by the application. This allows the SMAC 
* to call this function when a SoftReset has occurred.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
void MLMEPHYResetIndication(void);



/************************************************************************************
* This function is used to adjust the transceiver reference clock by a trim value.
* The trim is a four bits value as specified at the CRM documentation.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
FuncReturn_t MLMEPHYXtalAdjust(uint8_t u8CoarseTrim, uint8_t u8FineTrim);



/************************************************************************************
* This function shall provide the calling function with version of the IC and the 
* version of the software.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
FuncReturn_t MLMEGetRficVersion(Versioned_Entity_t Entity, uint32_t *Buffer);



/************************************************************************************
* This SMAC primitive was added to place the device into MACA tests modes.
*
* Interface assumptions: The use of this primitive could cause to abort any message
*                       in process.
*                        It is recommended use it just for testing propouses and 
*                       to clear the message queu before using this function.
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
void MLMETestMode (Test_Mode_t u8Mode);


/************************************************************************************
* This function configures the different parameters of the MAC accelerator and the 
* radio interface
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
FuncReturn_t MLMERadioInit(void);

/************************************************************************************
* This function sets the promiscous mode to on/off.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
FuncReturn_t MLMESetPromiscuousMode(bool_t isPromiscousMode);


/************************************************************************************
* This function gets the current promiscous mode to on/off.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
bool_t MLMEGetPromiscuousMode(void);


/************************************************************************************
* This function configures the RF control signals.
*
* Interface assumptions:
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
void ConfigureRfCtlSignals(RfSignalType_t, RfSignalFunction_t, bool_t, bool_t);


/************************************************************************************
* This function set the buck regulator state.
*
* Interface assumptions: 
*
* Return value:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
void ConfigureBuckRegulator(BuckTypes_t BuckRegState);


/**********************************************************************************/

/************************************************************************************
* This header file 
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
* Function to handle/set the different power down states.
*
*
* (c) Copyright 2005, Freescale Semiconductor, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
***********************************************************************************/

/************************************************************************************
*************************************************************************************
* Module configuration constants
*************************************************************************************
************************************************************************************/
//-----------------------------------------------------------------------------
// To enable/disable all of the code for low power mode in the TransceiverConfigMngmnt
// files.
// TRUE =  1: Use Low Power functions (Normal)
// FALSE = 0: Don't use Low Power. Will cut variables and code out. But
//     functions still exist. Useful for debugging and test purposes

// To configure the MCU retention mode used during sleep
//   0:          No MCU retention
//   1:          MCU retention is On during sleep

// To configure the MCU Pad retention mode used during sleep (if MCU retention configured)
//   0:          No Pad retention
//   1:          MCU Pad retention on id MCU retention was configured also 


// To configure the RAM retention mode used during sleep
//   gRamRet8k_c:         First 8k of RAM retained during sleep
//   gRamRet32k_c:        First 32k of RAM retained during sleep
//   gRamRet64k_c:        First 64k of RAM retained during sleep
//   gRamRet96k_c:        First 96k (All) of RAM retained during sleep





/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/

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






typedef enum clock_config_tag
{
  gTimerWakeup_c = 0,
  gRTCWakeup_c,
  gMaxNumClock_c 
} clock_config_t;


typedef enum range_mode_tag
{
  gRangeModeLow_c =0,
  gRangeModeHigh_c,
  gRangeModeNormal_c
} range_mode_t;

typedef enum wakeup_source_tag
{
  gNoWu_c         = 0x00, // Defining that the wake up source not found
  gTimerWuEn_c    = 0x01, // Defining the wake up from the sleep timer
  gRTCWuEn_c      = 0x02, // Defining the wake up from the RTC
  gExtWuKBI4En_c  = 0x10, // Defining the wake up from the pad KBI 4
  gExtWuKBI5En_c  = 0x20, // Defining the wake up from the pad KBI 5
  gExtWuKBI6En_c  = 0x40, // Defining the wake up from the pad KBI 6
  gExtWuKBI7En_c  = 0x80 // Defining the wake up from the pad KBI 7
} wakeup_source_t;


typedef void (*pToDoBeforeSleep_t)(void);

typedef struct
{
              uint8_t SleepType:1;// 0 hibernate / 1 doze
              uint8_t RamRet:2;
              uint8_t McuRet:1;
              uint8_t DigPadRet:1;
              pToDoBeforeSleep_t  pToDoBeforeSleep;
}SleepCtrl_t;


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
* This function set the timeout value for a specific clock.
*
*
* Routine limitations: This routine can configure only the clocks used for wake u.
*
* Parameters: clock_config_t u8Clock    - ID for the clock to be adjusted.  
*             uint32_t u32Count         - Timeout value.
*
* Return value: gFailOutOfRange_c shall be sent for an incorrect parameter.
*               gSuccess_c when the configuration is correct.
*
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
FuncReturn_t SetWakeupTimerTimeout(clock_config_t u8Clock, uint32_t u32Count);



/************************************************************************************
* This function set the wake up sources for the device.
*
*
* Interface assumptions: If the MCU_RET is enabled, the interruption of each wake up
*                       source will be executed, otherwise the system will restart.
*
* Parameters: wakeup_source_t u8Mode    -Set of wakeup sources.
*
* Return value: gFailOutOfRange_c shall be sent for an incorrect parameter.
*               gSuccess_c in case of a correct configuration.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
FuncReturn_t MLMESetWakeupSource(uint8_t u8Mode, uint8_t u8KBIPol, uint8_t u8KBIEdge);

/************************************************************************************
* This primitive is used to get all the options configured as wakeup source.
*
* Return value: u8Mode, this value represents the options enabled as Wakeup sources.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
uint8_t GetConfiguredWakeupSource(void);

/**********************************************************************************/

/************************************************************************************
* This header file is the interface for the Wireless Link Management implementation
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
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

/************************************************************************************
* This data primitive is used to send a SMAC packet.
*
* Interface assumptions: 
*
* Routine limitations. 
*
* Return value:
* gSuccess_c - If the message could be allocated in the queue.
* gFail_c - If the is no memory available to handle the message.                  
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MCPSDataRequest (message_t *msg);

/************************************************************************************
* This primitive is used to set the frequency where the MC1322X will operate. 
* Valid parameters are between Channel 11(2405MHz) and Channel 26 (2480MHz), any 
* different value will return an error.
*
* Interface assumptions: 
*
* Routine limitations.
* This function does not check if the radio is busy or a message is being processed
*
* Return value:
* gSuccess_c - If the channel number was inside the range value.
* gFailOutOfRange_c - If the is no memory available to handle the message.                  
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MLMESetChannelRequest (channel_num_t u8channel);

/************************************************************************************
* This primitive returns the channel number where the MC1322X is operating.
*
* Interface assumptions: 
*
* Routine limitations.
*
*
* Return value:
*
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern uint8_t MLMEGetChannelRequest (void);

/************************************************************************************
* This function enables the MC1322X for a packet reception with or without a 
* timeout using the 250 KHz clock.
*
* Interface assumptions: 
* The timer selection could be configured as a 'Hard Timeout' (receive sequence 
* is terminated immediately) and/or a 'Soft Timeout' (receive sequence is terminated 
* until the end of the current reception) will be defined at Radio Initialization. 
* The user must define the timeout value as a pointer to pu8Buffer. 

* Routine limitations.
* 
* Return value:
* gSuccess_c - If the message could be allocated in the queue.
* gFail_c - If the is no memory available to handle the message.                  
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MLMERXEnableRequest (message_t *msg, uint32_t timeout);


/************************************************************************************
* This function disables and releases a specific message for a packet reception 
* from the message queue. The message will be disabled the next time it has the 
* scheduler time.
*
* Interface assumptions: 
*
*
* Routine limitations.
* If the message was successfully aborted the status will be changed.
*
* Return value:
* gSuccess_c - If the message was sucessfully aborted.
* gFail_c - If the message could not been aborted.                  
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MLMERXDisableRequest (message_t *msg);

/************************************************************************************
* This function is used to detect the energy measured in dBm of a specific channel.
*
* Interface assumptions: 
* Channel number must be saved in the message pu8BufSize and result will be 
* pointed by pu8Buffer.
*
* Routine limitations.
* 
*
* Return value:
* gSuccess_c - If the message could be allocated in the queue.
* gFail_c - If the is no memory available to handle the message.
*           If the channel number is outside the range.
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MLMEEnergyDetect  (message_t *msg, channel_num_t u8channel);


/************************************************************************************
* This function is used to calculate the LQI of the last received message.
*
* Interface assumptions: 
*
* Routine limitations.
*
* Return value:
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern FuncReturn_t MLMELinkQuality (uint8_t * u8ReturnValue);

/************************************************************************************
* This function adjusts the output power of the transmitter using the Power Amplifier 
* included in the MC1322X. 
*
* Interface assumptions: 
*
*
* Routine limitations.
* 
*
* Return value:
*
*
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MLMEPAOutputAdjust (uint8_t u8Power);

/************************************************************************************
* This function allows the user to scan the channels pointed by pu8Buffer and 
* obtain the energy detection of each one and store the results in a table pointed 
* by pu8Buffer. 
*
* Interface assumptions: 
*
*
* Routine limitations.
* 
*
* Return value:
*
*
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/

extern FuncReturn_t MLMEScanRequest (uint16_t u16Channels, vScanCallback_t cbFn);
/**********************************************************************************/

/************************************************************************************
* This header file is the interface for the Security Management implementation
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
* SMAC Options Configuration
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
* Freescale Confidential Proprietary
* Digianswer Confidential
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 06/07/2007
* Last Tested:
************************************************************************************/
 
 
/* This file contain the features to be included within SMAC platform*/
 

 
  







/************************************************************************************
* Security Parameters Configuration
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 06/07/2007
* Last Tested:
************************************************************************************/
 
 
/* This file contain the features to be included within Security Module*/
 





/************************************************************************************
* This header file contains the MacaInterrupt function.
*
* (c) Copyright 2008, Freescale, Inc.  All rights reserved.
*
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


/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/
extern bool_t flag;


/************************************************************************************
*************************************************************************************
* Public prototypes
*************************************************************************************
************************************************************************************/

/************************************************************************************
* This function implement the MACA interrupt service routine.
*
* Interface assumptions:
*
* Routine limitations. 
*
* Return value:
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/
extern void MACA_Interrupt(void);

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
* This function ...
*
* Interface assumptions:
*
* Routine limitations. 
*
* Return value:
*
* Effects on global data:
*
* Source of algorithm used:
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*   
************************************************************************************/


/**********************************************************************************/



  
//rom_base_adr      equ 0x00000000   ; rom  base address
//ram_base_adr      equ 0x00400000   ; ram  base address
//ram0_base_adr     equ 0x00400000   ; ram0 base address (2K words =  8K
//bytes)
//ram1_base_adr     equ 0x00402000   ; ram1 base address (6K words = 24K
//bytes)
//ram2_base_adr     equ 0x00408000   ; ram2 base address (8K words = 32K
//bytes)
//ram3_base_adr     equ 0x00410000   ; ram3 base address (8K words
enum {
   cc_success          = 0,
   cc_timeout          = 1,
   cc_channel_busy     = 2,
   cc_crc_fail         = 3,
   cc_aborted          = 4,
   cc_no_ack           = 5,
   cc_no_data          = 6,
   cc_late_start       = 7,
   cc_ext_timeout      = 8,
   cc_ext_pnd_timeout  = 9,
   cc_nc1              = 10,
   cc_nc2              = 11,
   cc_nc3              = 12,
   cc_cc_external_abort= 13,
   cc_not_completed    = 14,
   cc_bus_error        = 15
};
//control codes for mode bits

enum {
   control_mode_no_cca      = 0,
   control_mode_non_slotted = (1<<3),
   control_mode_slotted     = (1<<4)
};
//control codes for sequence bits
enum {
    control_seq_nop    = 0,
    control_seq_abort  = 1,
    control_seq_wait   = 2,
    control_seq_tx     = 3,
    control_seq_rx     = 4,
    control_seq_txpoll = 5,
    control_seq_cca    = 6,
    control_seq_ed     = 7
};  


















  



typedef union maca_mc1322x_id_reg_tag
{
  struct
  {
    uint32_t  MC1322X_ID:9;
    uint32_t  RESERVED1:23;
  } Bits;
  uint32_t Reg;
} maca_mc1322x_id_reg_t;



typedef union maca_reset_reg_tag
{
  struct
  {
    uint32_t  RESERVED:30;
    uint32_t  CLK_ON:1;
    uint32_t  RST:1;
  } Bits;
  uint32_t Reg;
} maca_reset_reg_t;



typedef union maca_ctrl_reg_tag
{
  struct
  {
    uint32_t  RESERVED:11;
    uint32_t  ISM:1;
    uint32_t  PRE_COUNT:4;
    uint32_t  RSTO:1;
    uint32_t  RSV:1;
    uint32_t  ROLE:1;
    uint32_t  NOFC:1;
    uint32_t  PRM:1;
    uint32_t  rel:1;
    uint32_t  ASAP:1;
    uint32_t  BCN:1;
    uint32_t  AUTO:1;
    uint32_t  LFSR:1;
    uint32_t  TM:1;
    uint32_t  MODE:2;
    uint32_t  SEQUENCE:3;
  } Bits;
  uint32_t Reg;
} maca_ctrl_reg_t;






typedef union maca_status_reg_tag
{
  struct
  {
    uint32_t  RESERVED:16;
    uint32_t  TO:1;
    uint32_t  CRC:1;
    uint32_t  BUSY:1;
    uint32_t  OVR:1;
    uint32_t  zigbee:1;
    uint32_t  :7;
    uint32_t  COMPLETE_CODE:4;
  } Bits;
  uint32_t Reg;
} maca_status_reg_t;


typedef enum maca_freq_chann_tag
{
  SMAC_CHANN_11 = 0,
  SMAC_CHANN_12,
  SMAC_CHANN_13,
  SMAC_CHANN_14,
  SMAC_CHANN_15,
  SMAC_CHANN_16,
  SMAC_CHANN_17,
  SMAC_CHANN_18,
  SMAC_CHANN_19,
  SMAC_CHANN_20,
  SMAC_CHANN_21,
  SMAC_CHANN_22,
  SMAC_CHANN_23,
  SMAC_CHANN_24,
  SMAC_CHANN_25,
  SMAC_CHANN_26,
  MAX_SMAC_CHANNELS
} maca_freq_chann_t;


typedef union maca_maskirq_reg_tag
{
  struct
  {
    uint32_t  RESERVED1:16;
    uint32_t  STRT:1;
    uint32_t  SYNC:1;
    uint32_t  CM:1;
    uint32_t  CRC:1;
    uint32_t  FLT:1;
    uint32_t  SFT:1;
    uint32_t  LVL:1;
    uint32_t  RESERVED0:4;
    uint32_t  NOT_USED1:1;
    uint32_t  NOT_USED0:1;
    uint32_t  DI:1;
    uint32_t  POLL:1;
    uint32_t  ACPL:1;
  } Bits;
  uint32_t Reg;
} maca_maskirq_reg_t;





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
 












/*Clock definitions*/



/************************************************************************************
* Includes the UART Utils.
*
* (c) Copyright 2008, Freescale Semiconductor, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected:
* Last Tested:
*
************************************************************************************/

/************************************************************************************
* Public header file for the UART driver.
*
* Author(s): r04471 
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                r04471                                     Created
   25.05.2006                r04471                                    Modified - Review ID 3556
   01.06.2006                r04471                                    Modified - Implementation of flow control mechanism
   22.05.2007                r200036                                  Added UartGetByteFromRxBuffer
                                                                               Added support for Beekit UART componen
                                                                               Added gUartPatchingMode_d define
************************************************************************************/


/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/



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

/** This data type enumerates the UART API calls return values */
typedef enum {
    gUartErrNoError_c = 0,                 
    gUartErrUartAlreadyOpen_c,                 
    gUartErrUartNotOpen_c,
    gUartErrNoCallbackDefined_c,
    gUartErrReadOngoing_c,
    gUartErrWriteOngoing_c,
    gUartErrInvalidClock_c,
    gUartErrNullPointer_c,
    gUartErrInvalidNrBytes_c,
    gUartErrInvalidBaudrate_c,
    gUartErrInvalidParity_c,
    gUartErrInvalidStop_c,
    gUartErrInvalidCTS_c,
    gUartErrInvalidThreshold_c,
    gUartErrWrongUartNumber_c,
    gUartErrMax_c
} UartErr_t;

/** This data type enumerates the possible read operation status */
typedef enum {
    gUartReadStatusComplete_c = 0,
    gUartReadStatusCanceled_c ,
    gUartReadStatusError_c,
    gUartReadStatusMax_c
} UartReadStatus_t;

/** This data type enumerates the possible write operation status */
typedef enum {
    gUartWriteStatusComplete_c = 0,
    gUartWriteStatusCanceled_c,
    gUartWriteStatusMax_c
} UartWriteStatus_t;

/** This data type enumerates the possible values of UART parity modes */
typedef enum {
    gUartParityNone_c = 0,
    gUartParityEven_c,
    gUartParityOdd_c,
    gUartParityMax_c
} UartParityMode_t;

/** This data type enumerates the possible values of UART stop bits */
typedef enum {
    gUartStopBits1_c = 0,
    gUartStopBits2_c,
    gUartStopBitsMax_c
} UartStopBits_t;

/** This data type describes the configuration of the UART module */
typedef struct {
    uint32_t         UartBaudrate;
    UartParityMode_t UartParity;
    UartStopBits_t   UartStopBits;
    bool_t           UartFlowControlEnabled;
    bool_t           UartRTSActiveHigh;
} UartConfig_t;

/** This data type describes the possible errors passed to the read callback function  */
typedef struct {
    uint32_t   UartReadOverrunError:1;
    uint32_t   UartParityError:1;
    uint32_t   UartFrameError:1;
    uint32_t   UartStartBitError:1;
    uint32_t   Reserved:4;
} UartReadErrorFlags_t;

/** This data type describes the parameter passed to the read callback function */
/** Do not modify the order of the members in the structure,  because it is optimized for lower space consumption*/
typedef struct {
    UartReadStatus_t            UartStatus;
    uint16_t                    UartNumberBytesReceived;    
    UartReadErrorFlags_t        UartReadError;
} UartReadCallbackArgs_t;

/** This data type describes the parameter passed to the write callback function */
typedef struct {
    UartWriteStatus_t       UartStatus;
    uint16_t                UartNumberBytesSent;
} UartWriteCallbackArgs_t;

/** This data type lists the callback functions for the UART driver */
typedef struct {
    void (*pfUartReadCallback)(UartReadCallbackArgs_t* args);
    void (*pfUartWriteCallback)(UartWriteCallbackArgs_t* args);
} UartCallbackFunctions_t;

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
************************************************************************************/

/*================================================================================================*/
/*===== UartOpen =====*/
/**
@brief  This function will be called to open an UART instance.

@param  uint8_t    UartNumber    - input parameter: number of the UART instance to be opened
@param  uint32_t PlatformClock -  input parameter: platform clock (in Khz). Will be used for baudrate calculation

@return parameter of type UartErr_t
        possible values: they are self-explaining
              gUartErrNoError_c
              gUartErrWrongUartNumber_c
              gUartErrInvalidClock_c
              gUartErrUartAlreadyOpen_c

 Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                          r04471                           Created
   25.05.2006                          r04471                           Modified - Review ID 3556

===============================================================================================*/
extern UartErr_t UartOpen(uint8_t UartNumber, uint32_t PlatformClock);


/*================================================================================================*/
/*===== UartSetConfig =====*/
/**
@brief  This function will be called to configure the UART.

@param  uint8_t       UartNumber   - input parameter: number of the UART to configure
@param    UartConfig_t* pConfig      - input parameter: a pointer to the stucture containing the configuration settings for UART.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c
                  gUartErrNullPointer_c
                  gUartErrUartNotOpen_c
                  gUartErrReadOngoing_c
                  gUartErrWriteOngoing_c
                  gUartErrInvalidBaudrate_c
                  gUartErrInvalidParity_c
                  gUartErrInvalidStop_c
       
 Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
   01.06.2006                     r04471                               Flow control feature added
*/
/*================================================================================================*/
extern UartErr_t UartSetConfig(uint8_t UartNumber, UartConfig_t* pConfig);


/*================================================================================================*/
/*===== UartSetReceiverThreshold =====*/
/*
@brief  This function is called to set the level of the Rx FIFO threshold.

@param  uint8_t UartNumber - input parameter: number of the UART instance to set receiver threshold.
@param  uint8_t Threshold  - input parameter: specifies the value of the threshold.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                gUartErrNoError_c
                gUartErrWrongUartNumber_c
                gUartErrInvalidThreshold_c
                gUartErrUartNotOpen_c
                gUartErrReadOngoing_c

    
Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
   01.06.2006                     r04471                               Flow control feature added       
*/
/*================================================================================================*/
extern UartErr_t UartSetReceiverThreshold(uint8_t UartNumber, uint8_t Threshold);


/*================================================================================================*/
/*===== UartSetTransmitterThreshold =====*/
/*
@brief  This function is called to set the level of the Tx FIFO threshold.

@param  uint8_t UartNumber - input parameter: number of the UART instance to set transmitter threshold.
@param  uint8_t Threshold  - input parameter: specifies the value of the threshold.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                gUartErrNoError_c
                gUartErrWrongUartNumber_c
                gUartErrInvalidThreshold_c
                gUartErrUartNotOpen_c
                gUartErrReadOngoing_c

    
Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
       
*/
/*================================================================================================*/
extern UartErr_t UartSetTransmitterThreshold(uint8_t UartNumber, uint8_t Threshold);

/*================================================================================================*/
/*===== UartSetCTSThreshold =====*/
/*
@brief  This function is called to set the level of the CTS FIFO threshold.

@param  uint8_t UartNumber - input parameter: number of the UART instance to set CTS threshold.
@param  uint8_t Threshold  - input parameter: specifies the value of the threshold.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                gUartErrNoError_c
                gUartErrWrongUartNumber_c
                gUartErrInvalidThreshold_c
                gUartErrUartNotOpen_c
                gUartErrReadOngoing_c

Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   01.06.2006                     r04471                               Created      
   
*/
/*================================================================================================*/
extern UartErr_t UartSetCTSThreshold(uint8_t UartNumber, uint8_t Threshold);

/*================================================================================================*/
/*===== UartSetCallbackFunctions =====*/
/*
@brief  This function will be called to set the callback functions for the UART driver.

@param  uint8_t                     UartNumber - input parameter: number of the UART instance to set the callback functions to
@param  UartCallbackFunctions_t* pConfig    - input parameter: a pointer to the stucture containing the callback functions for UART driver.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c 
                  gUartErrNullPointer_c
                  gUartErrUartNotOpen_c

Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
   
*/
/*================================================================================================*/
extern UartErr_t UartSetCallbackFunctions(uint8_t UartNumber, UartCallbackFunctions_t* pConfig);


/*================================================================================================*/
/*===== UartReadData =====*/
/*
@brief  This function is called to make a read request to a UART driver instance.

@param  uint8_t  UartNumber          - input parameter: number of the UART instance to read from
@param  uint8_t* pBuf                - input parameter: pointer to a location in memory where the data shall be copied to.
@param  uint16_t BufferSize          - input parameter: maximum number of bytes that can be copied to the buffer. 
@param  bool_t UartDirectFifoMode    - input parameter: Enable the UART direct FIFO mode.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c
                  gUartErrNullPointer_c
                  gUartErrInvalidNrBytes_c
                  gUartErrUartNotOpen_c
                  gUartErrReadOngoing_c
                  gUartErrNoCallbackDefined_c

Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
       
*/
/*================================================================================================*/
extern UartErr_t UartReadData(uint8_t UartNumber,  uint8_t* pBuf, uint16_t BufferSize, bool_t UartDirectFifoMode);


/*================================================================================================*/
/*===== UartGetByteFromRxBuffer =====*/
/*
@brief  This function gets the trailing byte from the receiving queue

@param  uint8_t  UartNumber   - input parameter: number of the UART instance to read from
@param  uint8_t* pDst         - output parameter: pointer to a location in memory where the byte shall be copied to.

@return parameter of type bool_t
        possible values: 
    TRUE - if there is at least one byte in the queue
    FALSE - otherwise

Revision history:
   date                     Author                                          Comments
   ----------               ----------------------                         -------------
   22.05.2007                         r200036                                  Created         
*/
/*================================================================================================*/
extern bool_t UartGetByteFromRxBuffer(uint8_t UartNumber, uint8_t *pDst);


/*================================================================================================*/
/*===== UartOpenCloseTransceiver =====*/
/*
@brief  This function enables or disables the receiver or transmitter of the specified UART port

@param  uint8_t  UartNumber   - input parameter: number of the UART instance to read from
@param  uint8_t Pin         - input parameter: BIT_RX_EN or BIT_TX_EN
@param  bool_t Open         - input parameter: TRUE if the specified pin will be enabled, FALSE otherwise

@return parameter or type void      

Revision history:
   date                     Author                                          Comments
   ----------               ----------------------                         -------------
   22.05.2007                        r200036                                 Created         
*/
/*================================================================================================*/
extern void UartOpenCloseTransceiver(uint8_t UartNumber, uint8_t Pin, bool_t Open);


/*================================================================================================*/
/*===== UartClearErrors =====*/
/*
@brief  This function clears the Status register of the specified UART port

@param  uint8_t  UartNumber   - input parameter: number of the UART instance to read from

@return parameter or type void      

Revision history:
   date                     Author                                          Comments
   ----------               ----------------------                         -------------
   22.05.2007                      r200036                                  Created         
*/
/*================================================================================================*/
extern void UartClearErrors(uint8_t UartNumber);


/*================================================================================================*/
/*===== UartCancelReadData =====*/
/*
@brief  This function is called to make a cancel read request to a UART driver instance.

@param  uint8_t  UartNumber   - input parameter: number of the UART instance to cancel read operation.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c
                  gUartErrUartNotOpen_c

           
Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
       
*/
/*================================================================================================*/
extern UartErr_t UartCancelReadData(uint8_t UartNumber);


/*================================================================================================*/
/*===== UartWriteData =====*/
/*
@brief  This function is called to make a write request to the UART.


@param  uint8_t  UartNumber     - input parameter: number of the UART instance to write to.
@param  uint8_t* pBuf        - input parameter: pointer to a location in memory where from the data shall be send from.
@param  uint16_t NumberBytes - input parameter: number of bytes to send.


@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c
                  gUartErrNullPointer_c
                  gUartErrInvalidNrBytes_c
                  gUartErrUartNotOpen_c
                  gUartErrWriteOngoing_c
                  gUartErrNoCallbackDefined_c


Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
       
*/
/*================================================================================================*/
extern UartErr_t UartWriteData( uint8_t UartNumber, uint8_t* pBuf, uint16_t NumberBytes);


/*================================================================================================*/
/*===== UartCancelWriteData =====*/
/*
@brief  This function is called to make a cancel write request to a UART driver instance.

@param  uint8_t  UartNumber   - input parameter: number of the UART instance to cancel write operation.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c
                  gUartErrUartNotOpen_c

Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
       
*/
/*================================================================================================*/
extern UartErr_t UartCancelWriteData(uint8_t UartNumber);


/*================================================================================================*/
/*===== UartGetStatus =====*/
/*
@brief  This function returns the status of the UART instance.

@param  uint8_t UartNumber - input parameter: number of the UART instance to get status from

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c 
                  gUartErrUartNotOpen_c
                  gUartErrReadOngoing_c
                  gUartErrWriteOngoing_c
                  gUartErrNoCallbacksDefined_c

Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
       
*/
/*================================================================================================*/
extern UartErr_t UartGetStatus(uint8_t UartNumber);


/*================================================================================================*/
/*===== UartGetConfig =====*/
/*
@brief  This function will be called to get the configuration of the UART.

@param  uint8_t       UartNumber - input parameter: number of the UART instance to get configuration from
@param  UartConfig_t* pConfig    - input parameter: a pointer to the stucture where the configuration settings for UART will be placed.

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c
                  gUartErrWrongUartNumber_c
                  gUartErrNullPointer_c
                  gUartErrUartNotOpen_c

Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
   01.06.2006                     r04471                               Flow control feature added       
*/
/*================================================================================================*/
extern UartErr_t UartGetConfig(uint8_t UartNumber, UartConfig_t* pConfig);



extern uint32_t UartGetUnreadBytesNumber(uint8_t UartNumber);


/*================================================================================================*/
/*===== UartClose =====*/
/*
@brief  This function will be called to close an UART instance.

@param  uint8_t UartNumber - input parameter: number of the UART instance to close

@return parameter of type UartErr_t
        possible values: they are self-explaining
                  gUartErrNoError_c 
                  gUartErrWrongUartNumber_c
                  gUartErrReadOngoing_c
                  gUartErrWriteOngoing_c
    
Revision history:
   date                     Author                                     Comments
   ----------               ----------------------                    -------
   05.05.2006                     r04471                               Created
   25.05.2006                     r04471                               Modified - Review ID 3556
             
*/
/*================================================================================================*/
extern UartErr_t UartClose(uint8_t UartNumber);

/*================================================================================================*/
/*===== UartSetHalfFlowControl =====*/
/*
@brief  This function sets the half flow control mode.

@param  uint8_t uartNumber - input parameter: number of the UART instance to set HFC

@return parameter of type void

Revision history:
      date                        Author                             Comments
   ----------               ----------------------                    -------
   06.06.2008                     B04839                              Created
       
*/
/*================================================================================================*/
extern void UartSetHalfFlowControl(uint8_t uartNumber, bool_t bHalfFlowControl);


/*================================================================================================*/
/*===== UartIsr1 =====*/
/*
@brief  This function will be called by the AITC driver when interrupt for UART 1 instance is triggered.

@param  none

@return none
    
 Revision history:
   date                Author                        Comments
   ----------        ----------------------        -------
   05.05.2006                     r04471               Created
       
*/
/*================================================================================================*/
extern void UartIsr1(void);


/*================================================================================================*/
/*===== UartIsr2 =====*/
/*
@brief  This function will be called by the AITC driver when interrupt for UART 2 instance is triggered.

@param  none

@return none
    
 Revision history:
   date                Author                        Comments
   ----------        ----------------------        -------
   05.05.2006                     r04471               Created
       
*/
/*================================================================================================*/
extern void UartIsr2(void);


/*****************************************************************************
* UART / SCI / USB / Serial Port driver declarations.
* 
* This driver supports both SCI1 and SCI2 on the ARM7, each of which can be
* enabled or disabled independantly. On the SRB, USB and NCB boards, the USB
* (SCI1) port is used. 
*
* Copyright (c) 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

/* On the receive side, this module keeps a small circular buffer, and calls
 * a callback function whenever a byte is received. The application can
 * retrieve bytes from the buffer at it's convenience, as long as it does so
 * before the driver's buffer fills up.
 *
 * On the transmit side, this module keeps a list of buffers to be
 * transmitted, and calls an application callback function when the entire
 * buffer has been sent. The application is responsible for ensuring that the
 * buffer is available until the callback function is called.
 *
 * If both SCI ports are enabled, each has it's own Rx circular buffer and
 * list of Tx buffers.
 */



/*****************************************************************************
******************************************************************************
* Public macros
******************************************************************************
*****************************************************************************/


/* The ARM has two SCI/UART hardware interfaces. Define the one(s) in use. */




/*****************************************************************************/

/* Use hardware flow control? */



/*****************************************************************************/

/* Tuning definitions. */

/* Number of entries in the transmit-buffers-in-waiting list. */


/* Size of the driver's Rx circular buffer. These buffers are used to */
/* hold received bytes until the application can retrieve them via the */
/* UartX_GetBytesFromRxBuffer() functions, and are not otherwise accessable */
/* from outside the driver. The size does not need to be a power of two. */


/* If flow control is used, there is a delay before telling the far side */
/* to stop and the far side actually stopping. When there are SKEW bytes */
/* remaining in the driver's Rx buffer, tell the far side to stop */
/* transmitting. */


/* Number of bytes left in the Rx buffer when hardware flow control is */
/* deasserted. */



/*
#if gUart_RxFlowControlResume_d >= (gUart_ReceiveBufferSize_c - gUart_RxFlowControlSkew_d)
#error Deassert flow control before it is asserted?
#endif
*/

/*****************************************************************************/

typedef uint32_t UartBaudRate_t;



/* Default baud rate. */


/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************/
/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/

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

/* If you have to print a hex number you can choose between 
   BigEndian=1/LittleEndian=0, newline, commas or spaces (between bytes) */
enum {
  gPrtHexBigEndian_c = 1<<0,
  gPrtHexNewLine_c   = 1<<1,
  gPrtHexCommas_c    = 1<<2,
  gPrtHexSpaces_c    = 1<<3
};

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/
extern UartReadStatus_t gu8SCIStatus;
extern uint16_t gu16SCINumOfBytes;

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* Function that initializate the Uart module, the module to initializate is the Uart 
* defined as default in the board_config.h file. The baud rate and the system clock
* frequency are also defined in the board_config.h.
*
* Interface assumptions:
*   This function initializate the respective SCI interruption.
*   
* Return value:
*   None
* 
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/
void Uart_Init(uint8_t *mUARTRxBuffer, uint16_t mUARTBufferSize);

/************************************************************************************
* Function that prints out a string on the UART interface. String needs to be 
* 0-terminated.
* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
* Parameters: uint8_t * pString - String that will be printed on the serial interface.
*  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/
void Uart_Print(uint8_t* pString);

/************************************************************************************
* Function that prints out one byte on the UART interface as a hexdecimal string.
* E.g. the byte 0x5E is printed as the string "5E". It is up to the user to add
* decorations before or after the string is printed. 
* Example:
*   Uart_Print("Number is: 0x");
*   Uart_PrintHex(0x5E,1,0);
*   Uart_Print("\r\n");
*   This will result in "Number is 0x5E" being printed over the UART with line shift.
*   
* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
* Parameters: uint8_t * pHex a pointer to the data that will be printed as hexadecimal.
*             uint8_t len the length of the value in bytes.
*             uint8_t uint8_t flags indicator of a specific functionality.
*
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
* 
************************************************************************************/
void Uart_PrintHex(uint8_t *pu8Hex, uint8_t u8len, uint8_t u8flags);

/************************************************************************************
* The Uart_PrintByteDec function prints out one byte on the UART interface as a 
* decimal string. E.g. the byte 0x0E is printed as the string "14". It is up to the
* user to add decorations before or after the string is printed. 
* Example:
*   Uart_Print("Number is: ");
*   Uart_PrintHex(0x0E);
*   Uart_Print("\r\n");
*   This will result in "Number is 14" being printed over the UART with line shift.
*   
* Interface assumptions:
*   None
*   
* Return value:
*   None
*
* Parameters: uint8_t u8Dec number in hexadecinal to be printed in its corresponding
*                           decimal value.    
*           
* Parameters: uint8_t u8dec a pointer to the data that will be printed as hexadecimal.
*
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
* 
************************************************************************************/
void Uart_PrintByteDec(uint8_t u8Dec);


/************************************************************************************
* The Uart_PrintShortDec function transmit a decimal value to the Uart. 
*
* Interface assumptions:
*   None
*   
* Return value:
*   None
*
* Parameters: uint16_t u16Dec number in hexadecinal to be printed in its corresponding
*                           decimal value.    
*           
*
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
* 
************************************************************************************/
void Uart_PrintShortDec(uint16_t u16Dec);


void Uart_Tx(const uint8_t * msg, uint8_t length);
/************************************************************************************
* Function that waits for a character from the Uart interface.
*
* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
* Parameters: uint8_t * pRxBuffer - Pointer to the buffer where the received 
*                                   character is stored.
*  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/
void Uart_Poll(uint8_t *pRxBuffer);


/************************************************************************************
* Function that waits for a character from the Uart interface.
*
* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
* Parameters: uint8_t * pRxBuffer - Pointer to the buffer where the received 
*                                   character is stored.
*  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/
char Uart_getchar(uint8_t * u8Char);


/************************************************************************************
* Function that converts a ascii byte in hexadecimal value.
*
* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
* Parameters: uint8_t u8Ascii - Value in ascci
*  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/
uint8_t AsciitoHex(uint8_t ascii);

/************************************************************************************
* Function that compare two strings
*
* Interface assumptions:
*   uint8_t  *str1 - First string to compare.
*   uint8_t  *str2 - Second string to compare.
*   uint8_t  *sz   - String size.
*
* Return value:
*   bool_t TRUE if str1 == str2
*          FALSE in other case.         
* 
* Parameters: uint8_t u8Hex - Value in ascci
*  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/
bool_t mem_cmp(uint8_t * str1, uint8_t * str2, uint8_t sz);

/************************************************************************************
* Function that print a character in the UART.
*
* Interface assumptions:
*   uint8_t u8Char - character to send to UART.
*   
* Return value:
*   None
* 
* Parameters: uint8_t u8Hex - Value in ascci
*  
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
************************************************************************************/

void Uart_putchar(uint8_t u8Char);







/************************************************************************************
* Led.h
*
* This header file is for LED Driver Interface.
*
* Author(s):  
*
* Copyright (c) 2008, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
Revision history:
   Date                     Author                        Comments
   ----------               ----------------------      -------
************************************************************************************/

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


/******************************************************************************
*******************************************************************************
* Public Macros
*******************************************************************************
******************************************************************************/


/* are LEDs supported */

/* BEGIN Define LED pin mapping */
/* for the future  use of next platforms: we can use  LED1_PIN_TARGET or LED1_PIN as defines */

/* Pin levels for LED ON and OFF states */
/*END Define LED pin mapping */


/* possible LED values for LED_SetLed() */




typedef uint8_t LED_t;


/* note: all LEDs can operate independantly */
typedef uint8_t LedState_t; /* possible LED int states for LEDs */

/* Define LED pin mapping for driver*/

/******************************************************************************
*******************************************************************************
* Public Macros
*******************************************************************************
******************************************************************************/

/*   Macros with functionality to LED   */




/* Turn off LEDs */
/* Turn on LEDs */
/* Init all leds*/

/******************************************************************************
*******************************************************************************
* Public prototypes
*******************************************************************************
******************************************************************************/

/* LEDs not supported */

/******************************************************************************
*******************************************************************************
* Public type definitions
*******************************************************************************
******************************************************************************/
/* None */

/******************************************************************************
*******************************************************************************
* Public Memory Declarations
*******************************************************************************
******************************************************************************/
/* None */



/************************************************************************************
* This function initializate the LEDs of the system.
*
* Parameters: None.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void LED_Init(void);                                      /* Initializing LEDs state */


/************************************************************************************
* This function turns off all leds.
*
* Parameters: None.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void LED_TurnOffAllLeds(void);        

/************************************************************************************
* This function turns on all leds.
*
* Parameters: None.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void LED_TurnOnAllLeds(void);                            

/************************************************************************************
* This function turns off the led that receives as parameter.
*
* Parameters: None.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void LED_TurnOffLed(LED_t LEDNr);                         

/************************************************************************************
* This function turns on the led received as parameter.
*
* Parameters: None.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void LED_TurnOnLed(LED_t LEDNr);                          

/************************************************************************************
* Function that toggles LED state with number LEDNr.
*
* Parameters: LED_T LEDNr - Contains the led number to toggle.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void LED_ToggleLed(LED_t LEDNr);                          

/************************************************************************************
* Function that gets the state of the LED.
*
* Parameters: LED_T LEDNr - Contains the led number that wants to know its state.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
LedState_t  LED_GetLed( LED_t LEDNr);                     /* Get State of LEDNr*/

/************************************************************************************
* Function that shows the binary value received as parameter through four LEDs, 
* then the maximum possible u8leds_value is the 0x0F.
*
* Parameters: uint8_t u8HexValue - Hexadecimal value to toggle.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void    LED_SetHex( uint8_t u8HexValue);                    /* Set LEDs state to show a binary Value */

/************************************************************************************
* Function that initializate the GPIOs for the LEDs
*
* Parameters: LED_t LED_t - The number of the number to initializate.
*
* Return value: None.
*
* Revison history:
*   date      Author    Comments
*   ------    ------    --------
*
************************************************************************************/
void    Set_Pins  ( LED_t LEDNr);                         /* Set initial state of LED */

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


/* Sound.h
*
* Header file for interface to the sound driver. Includes only buzzer support for
* now.
*
* Copyright (c) 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
************************************************************************************/

/* enable/disable buzzer support */



/* buzzer supported this board (and turned on) */

extern bool_t BuzzerInit(void); /* TmrInit() must be called before this function  */
extern bool_t BuzzerBeep (uint16_t u16BeepDurationInMs);/* InterruptInit(), TmrInit(), 
                                   IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr),
                                   ITC_EnableInterrupt(gTmrInt_c),  BuzzerInit(), IntEnableIRQ()
                                   must be called before this function  */

/* buzzer not supported this board (or turned off) */


/************************************************************************************
* OTAP Header File
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected: 05/12/2008
* Last Tested:
************************************************************************************/
 

/************************************************************************************
* This is a template header file.
*
* Author(s):
    Thomas O. Jensen
*   Dragos Musoiu
* (c) Copyright 2005, Freescale, Inc.  All rights reserved.
*
* Freescale Confidential Proprietary
* Digianswer Confidential
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
typedef enum
{
  gNvmType_NoNvm_c,
  gNvmType_SST_c,
  gNvmType_ST_c,
  gNvmType_ATM_c,
  gNvmType_Max_c
} nvmType_t;

typedef enum
{
  gNvmErrNoError_c = 0,
  gNvmErrInvalidInterface_c,
  gNvmErrInvalidNvmType_c,
  gNvmErrInvalidPointer_c,
  gNvmErrWriteProtect_c,
  gNvmErrVerifyError_c,
  gNvmErrAddressSpaceOverflow_c,
  gNvmErrBlankCheckError_c,
  gNvmErrRestrictedArea_c,
  gNvmErrMaxError_c
} nvmErr_t;

typedef enum
{
  gNvmInternalInterface_c,
  gNvmExternalInterface_c, 
  gNvmInterfaceMax_c
} nvmInterface_t;

/***********************************************************************************/



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
* This function executes a search for the known NVM types
*   
* Interface assumptions:
*   None
*   
* Return value:
* nvmErr
*   gNvmErrInvalidInterface_c  : if nvmInterface is not one of the two valid values(gNvmInternalInterface_c or gNvmExternalInterface_c)
*   gNvmErrInvalidPointer_c    : if pNvmType is NULL
*   gNvmErrNoError_c           : if nvmInterface is one of the two valid values
* 
* *pNvmType
*   gNvmType_SST_c             : SST   NVM was found
*   gNvmType_ST_c              : ST    NVM was found
*   gNvmType_ATM_c             : ATMEL NVM was found
*   gNvmType_NoNvm_c           : No    NVM was found
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   030106     TOJ      Created
*  07.11.2007  MD
************************************************************************************/
extern nvmErr_t NVM_Detect(nvmInterface_t nvmInterface,nvmType_t* pNvmType);

/************************************************************************************
* Reads numBytes of data from the flash. The address is used initially, but any
* subsequent reads are done in "continous-read" mode, without setting the address
* again. The read data is copied into the memory location referred to by pDest.
*   
* Interface assumptions:
*   The address uses only 24 bits.
*   
* Return value:
*
* nvmErr_t
*   gNvmErrInvalidInterface_c      : if nvmInterface is not one of the two valid values(gNvmInternalInterface_c or gNvmExternalInterface_c)
*   gNvmErrInvalidNvmType_c        : if nvmType is not one of the three known values(gNvmType_SST_c,gNvmType_ST_c,gNvmType_ATM_c)
*   gNvmErrAddressSpaceOverflow_c  : if (address +numBytes-1 )> gNvmMaxAddress_c
*   gNvmErrInvalidPointer_c        : if  pDest == NULL
*   gNvmErrRestrictedArea_c        : if  nvmInterface = gNvmInternalInterface_c and the address space reachs last sector 
*   gNvmErrNoError_c               : in rest
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   030106     TOJ      Created
* 07.11.2007   MD
************************************************************************************/
extern nvmErr_t NVM_Read(nvmInterface_t nvmInterface , nvmType_t nvmType , void *pDest, uint32_t address, uint32_t numBytes);

/************************************************************************************
* Erase a set of sectors, identified by the sector_bitfield.
*   
* for  nvmType = gNvmType_SST_c NVM 
*         Sector size = 4096. Number of sectors = 32 .
*         Each bit of the sectorBitfield represents a sector.Bit 0 represents sector 0... Bit 31 represents sector 31
* 
* for  nvmType = gNvmType_ST_c or nvmType = gNvmType_ATM_c
*         Sector size = 32768. Number of sectors = 4 
*         Only the least 4  significant bits represents a sector.Bit 0 represents sector 0... Bit 3 represents sector 3
*   
* Return value:
*   nvmErr
*     gNvmErrInvalidInterface_c      : if nvmInterface is not one of the two valid values(gNvmInternalInterface_c or gNvmExternalInterface_c)
*     gNvmErrInvalidNvmType_c        : if nvmType is not one of the three known values(gNvmType_SST_c,gNvmType_ST_c,gNvmType_ATM_c) 
*     gNvmErrRestrictedArea_c        : if the last sector is set to be erased  
*     gNvmErrNoError_c               : in rest
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
*   030106     TOJ      Created
* 07.11.2007   MD
************************************************************************************/
extern nvmErr_t NVM_Erase(nvmInterface_t nvmInterface, nvmType_t nvmType ,uint32_t sectorBitfield);
/************************************************************************************
* Writes numBytes of data from the memory location referred to by pSrc to the address location in flash.
*
* Interface assumptions:
*   The address uses only 24 bits.
*   
* Return value:
*   nvmErr
*     gNvmErrInvalidInterface_c      : if nvmInterface is not one of the two valid values(gNvmInternalInterface_c or gNvmExternalInterface_c)
*     gNvmErrInvalidNvmType_c        : if nvmType is not one of the three known values(gNvmType_SST_c,gNvmType_ST_c,gNvmType_ATM_c)
*     gNvmErrAddressSpaceOverflow_c  : if (address +numBytes-1 )> gNvmMaxAddress_c
*     gNvmErrRestrictedArea_c        : if  nvmInterface = gNvmInternalInterface_c and the address space reachs last sector 
*     gNvmErrBlankCheckError_c       : if at lest one of the location to write is not blank(0xff)
*     gNvmErrWriteProtect_c          : if the NVM cannot be enabled to be write   
*     gNvmErrVerifyError_c           : if after the write operation at least one location in NVM is different from it's intended value
*     gNvmErrNoError_c               : in rest
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
* 07.11.2007   MD
* 
************************************************************************************/
extern nvmErr_t NVM_Write(nvmInterface_t nvmInterface, nvmType_t nvmType ,void *pSrc, uint32_t address, uint32_t numBytes);

/************************************************************************************
* Verifies  numBytes of data from the address address in flash to be equal with the data referred to by pSrc in RAM .
*   
* Interface assumptions:
*   The address uses only 24 bits.
*   
* Return value:
*   nvmErr
*     gNvmErrInvalidInterface_c      : if nvmInterface is not one of the two valid values(gNvmInternalInterface_c or gNvmExternalInterface_c)
*     gNvmErrInvalidNvmType_c        : if nvmType is not one of the three known values(gNvmType_SST_c,gNvmType_ST_c,gNvmType_ATM_c)
*     gNvmErrAddressSpaceOverflow_c  : if (address +numBytes-1 )> gNvmMaxAddress_c
*     gNvmErrInvalidPointer_c        : if pSrc is NULL
*     gNvmErrVerifyError_c           : if at least one location in NVM is different from it's corespondind location in RAM 
*     gNvmErrNoError_c               : in rest
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
* 07.11.2007   MD
* 
************************************************************************************/
extern nvmErr_t NVM_Verify(nvmInterface_t nvmInterface, nvmType_t nvmType ,void *pSrc, uint32_t address, uint32_t numBytes);

/************************************************************************************
* Verifies  numBytes of data from the address address in NVM to be blank .
*   
* Interface assumptions:
*   The address uses only 24 bits.
*   
* Return value:
*   nvmErr
*     gNvmErrInvalidInterface_c      : if nvmInterface is not one of the two valid values(gNvmInternalInterface_c or gNvmExternalInterface_c)
*     gNvmErrInvalidNvmType_c        : if nvmType is not one of the three known values(gNvmType_SST_c,gNvmType_ST_c,gNvmType_ATM_c)
*     gNvmErrAddressSpaceOverflow_c  : if (address +numBytes-1 )> gNvmMaxAddress_c
*     gNvmErrInvalidPointer_c        : if pSrc is NULL
*     gNvmErrBlankCheckError_c       : if at least one addressed location in NVM is not blank(0xff)
*     gNvmErrNoError_c               : in rest
* Revision history:
*   date      Author    Comments
*   ------    ------    --------
* 07.11.2007   MD
* 
************************************************************************************/
extern nvmErr_t NVM_BlankCheck(nvmInterface_t nvmInterface, nvmType_t nvmType , uint32_t address, uint32_t numBytes);





  

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/
typedef enum
{
  gChannel_c= 0,
  gPower_c,
  gRxTestMode_c,
  gTxTestMode_c,
  gBulkCap_c,
  gCoarseTune_c,
  gFineTune_c,
  MAX_OPTION
} ConfigOption_t;

typedef enum link_quality_value_tag{
  gFarRange_c = 0,
  gMediumRange_c,
  gNearRange_c,
  gVeryNearRange_c
}link_quality_value_t;

typedef struct four_digit_bcd_tag{
  uint8_t u8Units:4;
  uint8_t u8Tens:4;
  uint8_t u8Houndreds:4;
  uint8_t u8Thousands:4;
  uint8_t u8TensThousands:4;
  uint8_t u8HoundredsThousands:4;
}four_digit_bcd_t;

typedef enum per_rx_states_tag{
  IDLE_PER_RX_ST = 0,
  INIT_PER_RX_ST,
  WAITING_PER_RX_ST,
  LISTEN_PER_RX_ST,
  FINISH_PER_RX_ST  
}per_rx_states_t;

typedef enum range_rx_states_tag{
  IDLE_RANGE_RX_ST = 0,
  INIT_RANGE_RX_ST,
  WAITING_RANGE_RX_ST,
  LISTEN_RANGE_RX_ST,
  TRANSMIT_ACK_RANGE_RX_ST,
  FINISH_RANGE_RX_ST  
}range_rx_states_t;

typedef enum per_tx_states_tag{
  IDLE_PER_TX_ST = 0,
  INIT_PER_TX_ST,
  TRANSMITING_PER_TX_ST,
  DONE_PER_TX_ST,
  FINISH_PER_TX_ST  
}per_tx_states_t;

typedef enum range_tx_states_tag{
  IDLE_RANGE_TX_ST = 0,
  INIT_RANGE_TX_ST,
  TRANSMITING_RANGE_TX_ST,
  WAITING_RANGE_TX_ST,
  LISTEN_RANGE_TX_ST,
  RANGE_INDICATION_TX_ST
}range_tx_states_t;


typedef enum prbs9_tx_states_tag{
  INIT_PRBS9_TX_ST = 0,
  TRANSMIT_PRBS9_TX_ST
}prbs9_tx_states_t;


/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/



  

  
  


  

  
  





  
  


  

  
  
  

/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************
************************************************************************************/
void connectivity_app_init(void);
void connectivity_tx_app_init(void);
void test_mode_rx_cb(void);
void process_incoming_msg(void);
void select_config_option_isr(void);
void increase_config_option_isr(void);
void decrease_config_option_isr(void);
void start_test_isr(void);
void process_test_mode_app(void);
link_quality_value_t adjust_LQI(uint8_t u8LQI);
void LEDs_LQI_indication(link_quality_value_t u8LinkQuality);
void LEDs_Flash(uint8_t u8leds_state, uint32_t msec);
void LoadPRBS9(void);
char main_menu(void);
char channel_menu(void);
char select_test_mode_menu(void);
char test_mode_tx_menu(void);
char test_mode_rx_menu(void);
void tx_rx_select(void);
char clock_setting_menu(void);
char bulk_cap_menu(void);
void channel_adjust(void);
void power_adjust(void);
void test_mode_rx_adjust(void);
void test_mode_tx_adjust(void);
void configure_clock_settings(void);
void coarse_tune_adjust(void);
void fine_tune_adjust(void);
void PrintTestMode(Test_Mode_t TestModeValue);
void PrintChannel(channel_num_t u8ChannelValue);
void packet_error_rate_rx_test(void);
four_digit_bcd_t convert_2_bcd(uint16_t u16Value);
void range_rx_test(void);
void GpioTmrInit(void);
void TMR_Init(void);
void GpioTmrInit(void);
char test_transmission_menu(void);
void cont_transmission_test_adjust(void);
void packet_error_rate_tx_test(void);
void range_tx_test(void);
void pulse_prbs9_tx(void);
static four_digit_bcd_t convert_2_bcd(uint16_t u16Value);
static void print_freescale_logo(void);

void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord);
void DisplayTestMode(ConfigOption_t u8ConfiOption);
void ClearDisplay(void);
/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/
const uint8_t ku8ExpectedString[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
                                      0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F };

const uint8_t ku8DoneStr[] = { 'D', 'O', 'N', 'E' };

four_digit_bcd_t c_test_num = {0xF,0xF,0xF,1};

const uint8_t u8RangeExpectedString[]= {'S','i','m','p','l','e',' ','M','A','C'};
const uint8_t ku8AckString[] = {'A','C','K'};
const uint16_t u16TenPower[] = {1,10,100,1000,10000};

uint8_t u8LQIIcon4_c[]={0,0,0,0,48,176,176,176,176,176,176,176,176,176,176,176,176,
                        176,48,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,
                        109,109,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,
                        6,0,0,0,0,0,0,0,0,0};																					
																					
uint8_t u8LQIIcon3_c[]={0,0,0,0,0,128,128,128,128,128,128,128,128,128,128,128,128,128,
                        0,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,109,109,
                        13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,
                        0,0,0,0};																					
																					
uint8_t u8LQIIcon2_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,
                        108,108,108,108,108,108,108,108,108,12,0,0,0,0,0,0,0,0,0,0,0,0,
                        0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
																					
uint8_t u8LQIIcon1_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                        96,96,96,96,96,96,96,96,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
                        10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
																		
uint8_t u8RxIcon1_c[]={0,0,62,65,0,62,65,0,62,65,0,252,252,0,65,62,0,65,62,0,65,62,
                      0,0,0,0,0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,
                      0,0,0,0,0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};	

uint8_t u8RxIcon2_c[]={0,0,0,0,0,0,0,0,62,65,0,252,252,0,65,62,0,0,0,0,0,0,0,0,0,0,
                       0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                       0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};																					
																		

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
extern void ResetMaca(void);

/************************************************************************************
*************************************************************************************
* Variables declaration
*************************************************************************************
************************************************************************************/
Test_Mode_t u8CurrentMode;
channel_num_t u8TestModeChannel;
uint8_t u8TestModePower;
uint8_t u8LedPowerState;
message_t TX_msg;
message_t RX_msg;
message_t ACK_msg;
uint8_t mUARTRxBuffer[(10)];
ConfigOption_t CurrentOption, ManualModeOption;
uint8_t u8CurrentCoarseTune;
uint8_t u8CurrentFineTune;
uint8_t u8BulkCapState;
uint16_t waiting_loops;
bool_t gbDataIndicationFlag;
uint8_t init_flag;
uint8_t gu8TestModeEvents;
uint32_t gu32PerRxEvents;
uint8_t gu8ValidRangePacket;
uint8_t gu8ValidAckPacket;
uint8_t gu8TestAlreadyStarted;
uint8_t gu8SCIData[10];  

uint8_t maxLQI=0,minLQI=255;

/************************************************************************************
* main function
*
* Executes the main function.
*
************************************************************************************/
void Main(void)
{
  
  uint8_t dataTX[((sizeof(smac_pdu_t)+68-1))];
  uint8_t dataRX[((sizeof(smac_pdu_t)+68-1))];
  uint8_t dataACK[((sizeof(smac_pdu_t)+6-1))];

  do { TX_msg . pu8Buffer = (smac_pdu_t *)(&dataTX); TX_msg . cbDataIndication = (( void * )( 0 )); } while(0);
  do { RX_msg . pu8Buffer = (smac_pdu_t *)(&dataRX); RX_msg . cbDataIndication = test_mode_rx_cb; } while(0);
  do { ACK_msg . pu8Buffer = (smac_pdu_t *)(&dataACK); ACK_msg . cbDataIndication = (( void * )( 0 )); } while(0);

  connectivity_app_init();
    
  for(;;)
  {
    process_test_mode_app();
  }
}

/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/
/************************************************************************************
* connectivity_app_init
*
* This function initializate the application settings.
*
************************************************************************************/
void connectivity_app_init(void)
{
  u8CurrentMode = SMAC_TEST_MODE_PER_TX_RX; u8TestModeChannel = gChannel11_c; u8TestModePower = 0x0f; u8BulkCapState = (0x10 & 0x08) >> 4; u8CurrentFineTune = 0x0F; u8CurrentCoarseTune = (0x0F & 0x08); gbDataIndicationFlag = 0; gu8TestModeEvents = 0x00; gu8ValidRangePacket = 0; gu8ValidAckPacket = 0; gu8TestAlreadyStarted = 0;
 
  ITC_Init();
  IntAssignHandler(gMacaInt_c, (IntHandlerFunc_t)MACA_Interrupt);
  ITC_SetPriority(gMacaInt_c, gItcNormalPriority_c);
  ITC_EnableInterrupt(gMacaInt_c);
  
  
  IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr);
  ITC_SetPriority(gTmrInt_c, gItcNormalPriority_c);
  ITC_EnableInterrupt(gTmrInt_c);
  
  
  IntDisableIRQ();
  IntDisableFIQ();

  ResetMaca();
  MLMERadioInit();
  PlatformPortInit();
  MLMESetChannelRequest(u8TestModeChannel);
  
  IntRestoreIRQ(0);
  IntRestoreFIQ(0);
 
  Uart_Init(mUARTRxBuffer, (10));
  LED_Init();
  KbGpioInit();


 
  
  print_freescale_logo();
  Uart_getchar(mUARTRxBuffer);

LoadPRBS9();

  
 (void)MLMEPAOutputAdjust(u8TestModePower);
  MLMETestMode(u8CurrentMode); 
  MLMESetChannelRequest(u8TestModeChannel);

    TMR_Init(); 
    
}

/************************************************************************************
* test_mode_rx_cb
*
* This function is the callback for the reception message, every time that a message 
* is received the function is executed and it turns on a flag to indicate that one
* message was received.
************************************************************************************/
void test_mode_rx_cb (void)
{
  if(1 == gRadioEvntFlags.Bits.data_indication_flag)
  {
    gRadioEvntFlags.Bits.data_indication_flag = 0;
    gbDataIndicationFlag = 1;
  }
  else
  {
    /* Do nothing */
  }
}

/************************************************************************************
* process_incoming_msg
*
* This function process the received messages.
*
************************************************************************************/
static void process_incoming_msg(void)
{
  
  uint8_t i;
  four_digit_bcd_t tmp = {0,0,0,0,0,0};
  uint8_t u8MsgLen;
  uint8_t * ptrRcvMsg;
  uint8_t u8Lqi;

  
  uint16_t u16SeqNum;
  static uint16_t u16MsgCounter = 0;
  static uint16_t u16TotalMsg = 10;
  
  
    
  {
    if(SMAC_TEST_MODE_PER_TX_RX == u8CurrentMode)
    {
      u8MsgLen = sizeof(ku8ExpectedString);
      ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[5]);
      if(1 == mem_cmp(ptrRcvMsg, (uint8_t *)ku8ExpectedString, u8MsgLen))
      {
        uint8_t u8Lqi;
        u16SeqNum = (RX_msg.pu8Buffer->u8Data[3] << 8);
        u16SeqNum |= RX_msg.pu8Buffer->u8Data[4];
        if(u16SeqNum < u16TotalMsg)
        {
          u16TotalMsg = (RX_msg.pu8Buffer->u8Data[1] << 8);
          u16TotalMsg |= RX_msg.pu8Buffer->u8Data[2];    
        }
        
                
        ACK_msg.pu8Buffer->u8Data[0] = 'A';
        ACK_msg.pu8Buffer->u8Data[1] = 'C';
        ACK_msg.pu8Buffer->u8Data[2] = 'K';
  
        ACK_msg.pu8Buffer->u8Data[3] = 0; //lqi 
  
  
        
          ACK_msg.pu8Buffer->u8Data[4] = '\0';
          ACK_msg.u8BufSize = 5;
          
          
        MCPSDataRequest(&ACK_msg); 
        
        
        
        u16MsgCounter++;
        
        Uart_Print("\r\nN:");
        tmp = convert_2_bcd(u16SeqNum);
        Uart_PrintHex((uint8_t *)(&tmp),3,0);
        Uart_Print(" L:");
        tmp = convert_2_bcd(u8MsgLen);
        Uart_PrintHex((uint8_t *)(&tmp),1,0);
        Uart_Print(" LQI=-");
        (void)MLMELinkQuality(&u8Lqi);
        u8Lqi = (u8Lqi / 3);
        if(100 >= u8Lqi)
        {  
          u8Lqi = 100 - u8Lqi;
        }
        else
        {
          u8Lqi = u8Lqi - 100;
        }
        tmp = convert_2_bcd(u8Lqi);
        Uart_PrintHex((uint8_t *)(&tmp),1,0);
        Uart_Print(" CRC=1 Data=");
      
        for(i=5; i<21; i++)
        {
          Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
          ((RX_msg.pu8Buffer)->u8Data[i]) = 0;
        }
        
       
        
               
        
        
//  #if INTERFACE_TYPE == MANUAL        
        LED_ToggleLed(0x01);
//  #endif      
      }
      
      ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
      if( (1 == mem_cmp(ptrRcvMsg, (uint8_t *)ku8DoneStr, 4)) &&
        (0 != u16MsgCounter))
      {

        tmp = convert_2_bcd(u16MsgCounter);
        Uart_Print("\r\n\nGood:	");
        Uart_PrintHex((uint8_t *)(&tmp),3,0);
        Uart_Print("/");

        tmp = convert_2_bcd(u16TotalMsg);
        Uart_PrintHex((uint8_t *)(&tmp),3,0);
        Uart_Print("\r\n\nHalt\n");

        u16MsgCounter = 0;
        gu32PerRxEvents |= (0x00000001<<3);
      }
    }
  
    if(SMAC_TEST_MODE_PULSE_PRBS9_TX_RX == u8CurrentMode)
    { 
      u8MsgLen = RX_msg.u8BufSize;
      LED_ToggleLed(0x01);
      Uart_Print("\r\n");
      Uart_Print("Received Packet:");
      for(i=1; i < u8MsgLen ; i++)
      {
        Uart_Print("0x");
        Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
        (RX_msg.pu8Buffer)->u8Data[i] = 0;
        Uart_Print(" ");
      }
      Uart_Print("\n");

        LED_ToggleLed(0x01); 
    }  
    
    if( SMAC_TEST_MODE_RANGE_TX_RX == u8CurrentMode)
    {
      ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
      u8MsgLen = sizeof(u8RangeExpectedString);
  
  
      if(1 == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
      {  
        u8Lqi = 0;
        gu8ValidRangePacket = 1;
        (void)MLMELinkQuality(&u8Lqi);
        u8Lqi = (u8Lqi / 3);
        if(100 >= u8Lqi)
        {  
          u8Lqi = 100 - u8Lqi;
        }
        else
        {
          u8Lqi = u8Lqi - 100;
        }
   
        LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
          if(u8Lqi <= 40)
        {
          LCD_DrawIcon(80,3,u8LQIIcon4_c);
        }
        else if(u8Lqi <= 60)
        {
          LCD_DrawIcon(80,3,u8LQIIcon3_c);
        }
        else if (u8Lqi <= 80)
        {
          LCD_DrawIcon(80,3,u8LQIIcon2_c);
        }
        else
        {
          LCD_DrawIcon(80,3,u8LQIIcon1_c);
        }
     
        ACK_msg.pu8Buffer->u8Data[0] = 'A';
        ACK_msg.pu8Buffer->u8Data[1] = 'C';
        ACK_msg.pu8Buffer->u8Data[2] = 'K';
  
        ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
  
  
        
          ACK_msg.pu8Buffer->u8Data[4] = '\0';
          ACK_msg.u8BufSize = 5;
        
              
        Uart_Print("\r\n"); 
        Uart_Print(" LQI=-");
        tmp = convert_2_bcd(u8Lqi);
        Uart_PrintHex((uint8_t *)(&tmp),1,0); 
  
      
       LED_ToggleLed(0x01);
      }
    } 
   
if(SMAC_TEST_MODE_RANGE_TX_RX == u8CurrentMode)
    u8MsgLen = 3;
    ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
    {
      
    
      if(1 == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
      {
        uint8_t u8Lqi;
        u8Lqi = RX_msg.pu8Buffer->u8Data[4];
        
        

        Uart_Print("\r\n");   
        Uart_Print(" LQI=-");
        tmp = convert_2_bcd(u8Lqi);
        Uart_PrintHex((uint8_t *)(&tmp),1,0);
        
        gu8ValidAckPacket = 1;
      }
    }     
       
  }
}


/************************************************************************************
* process_test_mode_app
*
* This function process the test mode application, execute the serial or the manual
* interface code according with the selected interface type in the app_config.h file.
*
************************************************************************************/

void process_test_mode_app(void){
  

  if (0x04 & gu8TestModeEvents)
  {
   (gu8TestModeEvents &= (~0x04));
   
   if(gRxTestMode_c <= CurrentOption)
    {
      CurrentOption = gChannel_c;
    }
    else
    {
      CurrentOption++;
    }
   
   DisplayTestMode(CurrentOption);
  }

  
    switch(main_menu())
    {

       case '1':
          channel_adjust();
          break;
        case '2':
          power_adjust();
          break;
        case '3':
          tx_rx_select();
          break;
        case '4':  
          configure_clock_settings();
          break;
        case 'p':
          break;
        default:
          Uart_Print("  Invalid Option!!!\n");
          break;
      }

}

/************************************************************************************
* adjust_LQI
*
* The purpose of this function is to adjust the link quality indicator value obtained
* from the MLMELinkQuality primitive to only four possible values.
*
************************************************************************************/

link_quality_value_t adjust_LQI(uint8_t u8LQI)
{
  link_quality_value_t LQIAdjusted;
  
  if(88 < u8LQI)
  {
     LQIAdjusted = gFarRange_c;
  }  
  else
  {
    if(80 < u8LQI)
    {
       LQIAdjusted = gMediumRange_c;
    }
    else
    {
       if(60 <= u8LQI)
       {
         LQIAdjusted = gNearRange_c;
       }
       else
       {
         LQIAdjusted = gVeryNearRange_c;
       }
     }
  }
  return LQIAdjusted;
}


/************************************************************************************
* convert_2_bcd function
*
* This function converts the received data as parameter to bcd format
*
************************************************************************************/
static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
{
  four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
  uint16_t tmp;
  if(10000 > u16Value)
  {
    tmp = u16Value;
    if(1000 <= u16Value)
    {
      tmp = u16Value/1000;
      u16RtrnVal.u8Thousands = tmp;
      tmp = u16Value%1000;
      u16Value = tmp;
    }
    if(100 <= u16Value)
    {
      tmp = u16Value/100;
      u16RtrnVal.u8Houndreds = tmp;
      tmp = u16Value%100;
      u16Value = tmp;
    }
    if(10 <= u16Value)
    {
      tmp = u16Value/10;
      u16RtrnVal.u8Tens = tmp;
      tmp = u16Value%10;
      u16Value = tmp;
    }
    u16RtrnVal.u8Units = tmp;
  }
  return u16RtrnVal;
}



/************************************************************************************
* LEDs_Flash
*
* This function flash the binary number of the received parameter through LEDs.
*
************************************************************************************/

void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
{
  LED_TurnOffAllLeds();  
  DelayMs(msec);
  LED_SetHex(u8leds_state);
  DelayMs(msec);  
  LED_TurnOffAllLeds(); 
  DelayMs(msec);
}

/************************************************************************************
* LoadPRBS9
*
* The purpose of this function is to load the pseudo random binary sequence order 9 
* in a transmission message. The polynomial to transmit is the following:
*
*
************************************************************************************/
void LoadPRBS9(void)
{
  uint8_t u8c1;                           /* Byte counter */
  uint8_t u8c2;                           /* Bit counter */
  uint16_t u16t1;                         /* LFSR */
  uint16_t u16t2;                         /* LFSR output */
  uint16_t u16t3;                         /* LFSR feedback tap */
  uint8_t u8t4;                           /* Assembled transmit byte */
  
  u16t1 = 0x01FF;                       /* Initialize the LFSR */
  for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
  {
    u8t4 = 0x00;                        /* Initialize the byte */
    for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
    {
      u16t2 = (u16t1 & 0x0001);       /* LFSR output */
      if (u16t2 == 0x0001)
      {
        u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
      }
      if (u8c2 != 7)
      {
        u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
      }
      
      u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
      u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
      if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
      {
        u16t1 = u16t1 & 0xFEFF;
      }
      else
      {
        u16t1 = u16t1 | 0x0100;
      }
      }
      TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
    } 
  TX_msg.pu8Buffer->u8Data[64] = '\0';
  TX_msg.u8BufSize = 65;
}

/************************************************************************************
* main_menu
*
* This function displays the main menu for the serial interface and waits until the 
* user select an option.
*
************************************************************************************/

char main_menu(){
  Uart_Print("\r ______________________________________\n");
  Uart_Print("\r|                                      |\n");
  Uart_Print("\r|    Connectivity Test Interface    |\n");
  Uart_Print("\r|______________________________________|\n\n");
  Uart_Print("\r      1 - CHANGE CHANNEL\n");
  Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
  Uart_Print("\r      3 - SELECT TEST MODE\n");
  Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
  Uart_Print("\r      Note: Case sensitive.");
  Uart_Print("\r\n\n Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* channel_menu
*
* This function displays the possible channels when the channel option is selected 
* and waits for a user selection.
*
************************************************************************************/

char channel_menu(void){
  Uart_Print("\r\n     ___________________________________ \n");
  Uart_Print("\r    |                                   |\n");
  Uart_Print("\r    |      Channel Adjustment Menu      |\n");
  Uart_Print("\r    |___________________________________|\n\n");
  Uart_Print("\r    Current Channel: ");
  PrintChannel(u8TestModeChannel);
  Uart_Print("\n");
  Uart_Print("\r      0 - CHANNEL 11");
  Uart_Print("      8 - CHANNEL 19\n");
  Uart_Print("\r      1 - CHANNEL 12");
  Uart_Print("      9 - CHANNEL 20\n");
  Uart_Print("\r      2 - CHANNEL 13");
  Uart_Print("      A - CHANNEL 21\n");
  Uart_Print("\r      3 - CHANNEL 14");
  Uart_Print("      B - CHANNEL 22\n");
  Uart_Print("\r      4 - CHANNEL 15");
  Uart_Print("      C - CHANNEL 23\n");
  Uart_Print("\r      5 - CHANNEL 16");
  Uart_Print("      D - CHANNEL 24\n");
  Uart_Print("\r      6 - CHANNEL 17");
  Uart_Print("      E - CHANNEL 25\n");  
  Uart_Print("\r      7 - CHANNEL 18");
  if(0 == 0)
  {
    Uart_Print("      F - CHANNEL 26\n");      
  }
  else
  {
    Uart_Print("\n");
  }
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}


/************************************************************************************
* test_mode_rx_menu
*
* This function displays the test mode options when the SELECT TEST MODE is 
* selected.
*
************************************************************************************/

char test_mode_rx_menu(void){
  Uart_Print("\r\n     __________________________\n");
  Uart_Print("\r    |                          |\n");
  Uart_Print("\r    |   Reception Tests Menu   |\n");
  Uart_Print("\r    |__________________________|\n\n");  
  Uart_Print("\r    Current Test Mode: ");
  PrintTestMode(u8CurrentMode);
  Uart_Print("\r\n      I - IDLE\n");
  Uart_Print("\r      R - RECEPTION\n");
  Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
  Uart_Print("\r      r - RANGE TEST RECEIVER\n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* test_mode_tx_menu
*
* This function displays the test mode options when the SELECT TEST MODE is 
* selected.
*
************************************************************************************/
char test_mode_tx_menu(void){
  Uart_Print("\r\n     _____________________________\n");
  Uart_Print("\r    |                             |\n");
  Uart_Print("\r    |   Transmission Tests Menu   |\n");
  Uart_Print("\r    |_____________________________|\n\n");  
  Uart_Print("\r    Current Test Mode: ");
  PrintTestMode(u8CurrentMode);
  Uart_Print("\r\n      I - IDLE\n");
  Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
  Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
  Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}


/************************************************************************************
* select_test_mode_menu
*
* This function displays the option to select between TX and RX mode
*
************************************************************************************/

char select_test_mode_menu(void){
  Uart_Print("\r\n     __________________________\n");
  Uart_Print("\r    |                          |\n");
  Uart_Print("\r    |   TX / RX Menu   |\n");
  Uart_Print("\r    |__________________________|\n\n");  
  Uart_Print("\r      R - RECEIVER MODE \n");
  Uart_Print("\r      T - TRANSMITTER MODE \n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* test_transmission_menu
*
* This function displays the transmissions options when the transmission option 
* is selected in the main menu.
*
************************************************************************************/
char test_transmission_menu(void)
{
  Uart_Print("\r\n     ______________________________________\n");
  Uart_Print("\r    |                                      |\n");
  Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
  Uart_Print("\r    |______________________________________|\n\n");  
  Uart_Print("\r    Current Transmission Test: ");
  PrintTestMode(u8CurrentMode);
  Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
  Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
  Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
  Uart_Print("\r      p - Previous Menu\n");      
  Uart_Print("\r\n\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}


/************************************************************************************
* clock_settings_menu
*
* This function displays a menu with the clock settings options and waits for a 
* user selection.
*
************************************************************************************/

char clock_setting_menu(void)
{
  Uart_Print("\r\n     _____________________");
  Uart_Print("\r\n    |                     |");
  Uart_Print("\r\n    | Clock Settings Menu |");
  Uart_Print("\r\n    |_____________________|\n\n");  
  Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
  Uart_Print("\r    2 - Adjust COARSE TUNE\n");
  Uart_Print("\r    3 - Adjust FINE TUNE \n");
  Uart_Print("\r    p - Previous Menu\n");
  Uart_Print("\r\n    Please select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* bulk_cap_menu
*
* The bulk_cap_menu shows the two possible bulk capacitor states and waits until
* the user selects an option.
*
************************************************************************************/

char bulk_cap_menu(void)
{
  Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
  Uart_Print("\r\n   Current Bulk Capacitor State:");
  if((0x01) == u8BulkCapState){
    Uart_Print("  Enable\n\n");
  }
  else{
    Uart_Print("  Disable\n\n");    
  }
  Uart_Print("\r   E - Enable Capacitor.\n");
  Uart_Print("\r   D - Disable Capacitor\n");
  Uart_Print("\r   p - Previous Menu\n");
  Uart_Print("\r\nPlease select an option:  ");
  return Uart_getchar(mUARTRxBuffer);
}

/************************************************************************************
* channel_adjust
*
* This function updates the channel with the value selected by the user.
*
************************************************************************************/

void channel_adjust(void){
  char option, hexOption;
  CurrentOption = gRxTestMode_c;
  do{
    option = channel_menu();
    hexOption = AsciitoHex(option);
    
    if('p' != hexOption)
    {
      MLMETestMode(SMAC_TEST_MODE_IDLE);
      DelayUs(10);
      if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
      {  
        u8TestModeChannel = (channel_num_t)hexOption;
      }
      else
      {
        Uart_Print("  Invalid Option!!!");  
      }
      MLMETestMode(u8CurrentMode);
      
    }
  }while(option != 'p');
}

/************************************************************************************
* power_adjust
*
* This function change the power value to the power selected by the user in the
* serial interface
*
************************************************************************************/

void power_adjust(void){
  uint8_t u8TempPower;
  CurrentOption = gPower_c;
  Uart_Print("\r\n     ___________________________\n");
  Uart_Print("\r    |                           |\n");
  Uart_Print("\r    |   Power Adjustment Menu   |\n");
  Uart_Print("\r    |___________________________|\n\n");
  Uart_Print("\r    Current Power: ");
  Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);

  if(0)
  {
    Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
  }
  else
  {
    Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
  } 
  
  Uart_getchar(mUARTRxBuffer);
  
  u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
    
  u8TempPower = (u8TempPower << 4);
  Uart_getchar(mUARTRxBuffer);
  u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
  
  
  if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
  {
    u8TestModePower = u8TempPower;
    Uart_Print("\n");
  }
  else
  {
    Uart_Print("\r\n    Incorrect value!!!");  
    Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
    Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
  }
}

/************************************************************************************
* test_mode_rx_adjust
*
* In this function the current test mode is adjusted to the new value selected by the 
* user in the serial interface.
*
************************************************************************************/

void test_mode_rx_adjust(void)
{
  char option;
  CurrentOption = gRxTestMode_c;
  do{
    option = test_mode_rx_menu();
    switch(option)
    {
      case 'I':
        u8CurrentMode = SMAC_TEST_MODE_IDLE;
        MLMETestMode(u8CurrentMode);
        break;
      case 'R':
        Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
        Uart_Print("\r\nPress any key to start.....");
        Uart_getchar(mUARTRxBuffer);
        u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX_RX;
        MLMETestMode(u8CurrentMode);
        MLMERXEnableRequest(&RX_msg, 0x0000200);
        do
        {
            (void)process_radio_msg();
            if(1 == gbDataIndicationFlag)
            {
              gbDataIndicationFlag = 0;
              process_incoming_msg();
            }
          
          {          
            if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
            {
              RX_msg.u8BufSize = ((sizeof(smac_pdu_t)+68-1));
              MLMERXEnableRequest(&RX_msg, 0x00000000);
            }
          }
          Uart_Poll(mUARTRxBuffer);
          }
        while (mUARTRxBuffer[0] != 'Q');   
        break;
        
      case 'P':
        packet_error_rate_rx_test();
        break;
      case 'r':
        range_rx_test();
        break;
      case 'p':
        break; 
        
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != 'p');
}

/************************************************************************************
* test_mode_tx_adjust
*
* In this function the current test mode is adjusted to the new value selected by the 
* user in the serial interface.
*
************************************************************************************/
void test_mode_tx_adjust(void){
  char option;
  CurrentOption = gTxTestMode_c;
  do{
    option = test_mode_tx_menu();
    switch(option)
    {
      case 'I':
        u8CurrentMode = SMAC_TEST_MODE_IDLE;
        MLMETestMode(u8CurrentMode);
        break;
      case 'T':  
        cont_transmission_test_adjust();
        break;
      case 'P':
        packet_error_rate_tx_test();
        break;
      case 'r':
        range_tx_test();
        break;
      case 'p':
        break;      
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != 'p');
}


/************************************************************************************
* tx_rx_select
*
* This function select between transmitter and receiver mode
*
***********************************************************************************/
void tx_rx_select(void)
{
  char option;
  do
  {
    option = select_test_mode_menu();
    switch(option)
    {
      case 'T':
        test_mode_tx_adjust();   
        break;
        
      case 'R':
        test_mode_rx_adjust();     
        break;          
        
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != 'p');
}



/************************************************************************************
* cont_transmission_test_adjust
*
* This function execute a specific transmission mode: modulated, unmodulated or 
* the pseudo random binary sequence.
*
***********************************************************************************/
void cont_transmission_test_adjust(void)
{
  char option;
  CurrentOption = gTxTestMode_c;
  
  do
  {
    option = test_transmission_menu();
    switch(option)
    {
      case 'S':
        pulse_prbs9_tx();
        break;
      case 'M':
        u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
        MLMETestMode(u8CurrentMode);        
        break;        
      case 'U':
        u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
        MLMETestMode(u8CurrentMode);
        break;  
    case 'p':
        break;      
      default:
        Uart_Print("  Invalid Option!!!");
        break;
    }
  }while(option != 'p');
}


/************************************************************************************
* pulse_prbs9_tx
*
* This function performs the transmission process for the pseudo random binary 
* sequence.
*
***********************************************************************************/

void pulse_prbs9_tx(void)
{
  static prbs9_tx_states_t u8AppState;
  static uint16_t u16DutyCicleCounter;
  


  u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX_RX;
  TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
  u8AppState =  INIT_PRBS9_TX_ST;
  MLMETestMode(u8CurrentMode);
  Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
  Uart_Print("\r\nPress any key to start.....");
  Uart_getchar(mUARTRxBuffer);
  do  
  {
        
    (void)process_radio_msg();
    switch(u8AppState)
    {
      case INIT_PRBS9_TX_ST:
      {
        LoadPRBS9();
        u16DutyCicleCounter = 0;
        u8AppState = TRANSMIT_PRBS9_TX_ST;
      }
      break;
      
      case TRANSMIT_PRBS9_TX_ST:
      {
        if(( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg . u8Status . msg_state) || (MSG_TX_ABORTED == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == TX_msg . u8Status . msg_state) ))
        {
          u16DutyCicleCounter++;
          if(u16DutyCicleCounter == 1950)
          {
            u16DutyCicleCounter = 0;
            MCPSDataRequest(&TX_msg);
          }
        }
      }
      
      default:
      break;
    }
         
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != 'Q'); 
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);

}

/************************************************************************************
* packet_error_rate_tx_test
*
* This function performs the packet error rate transmission process.
*
***********************************************************************************/
void packet_error_rate_tx_test(void)
{
  static per_tx_states_t u8AppState;
  static uint16_t u16MsgCount;
  static uint16_t u16DoneCount;
  uint32_t u32NumTransmissions;

  uint8_t u8InvalidCharFlag = 0;
  
  uint8_t u8Count;
  uint8_t u8TempNumTx[5];
  
  u32NumTransmissions = 999;

  u8AppState = IDLE_PER_TX_ST;   
  u8CurrentMode = SMAC_TEST_MODE_PER_TX_RX;
  do{

    
    (void)process_radio_msg();
    if(1 == gbDataIndicationFlag)
    {
      gbDataIndicationFlag = 0;
      process_incoming_msg();
    }
    
    switch(u8AppState){
      case IDLE_PER_TX_ST:
      {
        Uart_Print("\r\n    ****************************");
        Uart_Print("\r\n    ** Packet Error Rate Test **");
        Uart_Print("\r\n    ****************************");
        Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
        Uart_Print("\r\nPress Enter. Packets to transmit: ");
        Uart_PrintShortDec((uint16_t)999);
        do
        {
         uint8_t i;
         uint8_t u8Shift;
          Uart_Print("\r\n\n  Number of packets in decimal: ");
          u8Count = 0;
          u8InvalidCharFlag = 0;

          u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
                    
          while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= 'Q'))
          { 
            if((0x3A < u8TempNumTx[u8Count]))
            {
              u8InvalidCharFlag = 1;
            }
            else if(0x30 > u8TempNumTx[u8Count])
            {
              u8InvalidCharFlag = 1;
            }

            u8Count ++;
            u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
          }
          if(u8TempNumTx[u8Count] == 0x0D)
          { 
            if(0 != u8Count)
            {
              u8Count--;
            }
            else
            {
              u8InvalidCharFlag = 1;
            }   
            Uart_getchar(mUARTRxBuffer);
           }
          
          if('Q' == u8TempNumTx[u8Count])
          {
            return;
          }

          u32NumTransmissions = 0;
          u8Shift = u8Count;
          /*To validate 0-9, a-f and A-F values*/

          for(i = 0; i <= u8Count; i++)
          {
            u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
            u8Shift--;
          }
          
          if((50000) < u32NumTransmissions)
          {
            Uart_Print("\r\n  Value out of range, please try again.");
          }
          
          if(u8InvalidCharFlag == 1)
          {
            Uart_Print("\r\n  Invalid characters, please use only numbers.");
          }
        }
        while(((50000) < u32NumTransmissions) || (1 == u8InvalidCharFlag));
        
         u8AppState = INIT_PER_TX_ST;
      }
      break;
      case INIT_PER_TX_ST:
      {
        uint8_t i;
        uint8_t u8Count = 4;
        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        {
          TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
          u8Count ++;
        }

        u16MsgCount = 0;
        u16DoneCount = 0;
        u8AppState = TRANSMITING_PER_TX_ST;
      }
      break;
      case TRANSMITING_PER_TX_ST:
      {
        if(( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg . u8Status . msg_state) || (MSG_TX_ABORTED == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == TX_msg . u8Status . msg_state) ))
        {
          if(u32NumTransmissions > u16MsgCount)
          {
            TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
            TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
            TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
            DelayMs(14);

            MCPSDataRequest(&TX_msg);
            u16MsgCount++;
          }
          else
          {
            uint8_t i;
            for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
            {
              TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
            }
            u8AppState = DONE_PER_TX_ST;
          }
        }   
      }  
      break;
      
      case DONE_PER_TX_ST:
      {
        if((15) >= u16DoneCount)
        {
          if(( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg . u8Status . msg_state) || (MSG_TX_ABORTED == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == TX_msg . u8Status . msg_state) ))
          {
            if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
              u16DoneCount++;
            TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
            DelayMs(14);
            MCPSDataRequest(&TX_msg);
          }
        }
        else
        {
          u8AppState = FINISH_PER_TX_ST;
        }
      }
      break;
      
      case FINISH_PER_TX_ST:
        u8AppState = IDLE_PER_TX_ST;
 
        break;
      
      default:
      {
      }
      break;
    }

  
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != 'Q'); 
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);

  
}

/************************************************************************************
* packet_error_rate_rx_test
*
* This function performs the packet error rate reception process.
*
***********************************************************************************/
void packet_error_rate_rx_test(void)
{
  static per_rx_states_t u8AppState;

  

  u8CurrentMode = SMAC_TEST_MODE_PER_TX_RX;
  RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\n    ** Packet Error Rate Test **");
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
  Uart_Print("\r\nPress any key to start.....");
  Uart_getchar(mUARTRxBuffer);
  u8AppState = INIT_PER_RX_ST;
  do{
    
      (void)process_radio_msg();
      if(1 == gbDataIndicationFlag)
      {
        gbDataIndicationFlag = 0;
        process_incoming_msg();
      }
    
    {          
  
      switch(u8AppState){
        case IDLE_PER_RX_ST:
        {
          // Do nothing when idle
        }
        break;
        case INIT_PER_RX_ST:
        {
          Uart_Print("\r\n\nThe RX radio is now listening...");
          u8AppState = LISTEN_PER_RX_ST;
          
          
        }
        break;
        case WAITING_PER_RX_ST:
        {
          if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
          {
            u8AppState = LISTEN_PER_RX_ST;
          }
          if(gu32PerRxEvents & (0x00000001<<3))
          {
            gu32PerRxEvents = (0x00000000);
            u8AppState = FINISH_PER_RX_ST;
          }
        }
        break;
        case LISTEN_PER_RX_ST:
        {
          if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
          {
            RX_msg.u8BufSize = ((sizeof(smac_pdu_t)+22-1));
            MLMERXEnableRequest(&RX_msg, 0x00000000);
            u8AppState = WAITING_PER_RX_ST;
          }
        }
        break;
        case FINISH_PER_RX_ST:
        {
          u8AppState = INIT_PER_RX_ST;
        }
        break;
        default:
        {
        }
        break;
      }
    }  
  
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != 'Q');  
  
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
  
}

/************************************************************************************
* range_rx_test
*
* This function performs the range reception process.
*
***********************************************************************************/
void range_rx_test(void)
{
  volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
  volatile uint8_t u8retries;

  u8CurrentMode = SMAC_TEST_MODE_RANGE_TX_RX;
  
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\n    **       Range Test       **");
  Uart_Print("\r\n    ****************************");
   
  Uart_Print("\r\nPress Q to exit from Range Test");
  Uart_Print("\r\nPress any key to start.....");
  Uart_getchar(mUARTRxBuffer);
  u8AppState = INIT_RANGE_RX_ST;
  do{

      (void)process_radio_msg();
      if(1 == gbDataIndicationFlag)
      {
        gbDataIndicationFlag = 0;
        process_incoming_msg();
      }
      else{
      }

    {          
      switch(u8AppState){
        case IDLE_RANGE_RX_ST:
        {
          // Do nothing when idle
        }
        break;
        
        case INIT_RANGE_RX_ST:
        {
          RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
          ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
          Uart_Print("\r\n\nThe RX radio is now listening...");
          Uart_Print("\r\nStart the test by pressing any key on TX radio");
          u8AppState = LISTEN_RANGE_RX_ST;
        }
        break;
        
        case LISTEN_RANGE_RX_ST:
        {
          if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
          {
            RX_msg.u8BufSize = ((sizeof(smac_pdu_t)+10-1));
            MLMERXEnableRequest(&RX_msg, 0x00000200);
            u8AppState = WAITING_RANGE_RX_ST;
          }
        }
        break;
  
       case WAITING_RANGE_RX_ST:
        {
          if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
          {
            u8AppState = LISTEN_RANGE_RX_ST;
          }
          if(1 == gu8ValidRangePacket)
          {
            gu8ValidRangePacket = 0;
            u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
            u8retries = 5;
          }
        }
        break;
   
        
        case TRANSMIT_ACK_RANGE_RX_ST:
        {

          if(( (MSG_TX_ACTION_COMPLETE_SUCCESS == ACK_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_FAIL == ACK_msg . u8Status . msg_state) || (MSG_TX_ABORTED == ACK_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == ACK_msg . u8Status . msg_state) ))
          { 
            MCPSDataRequest(&ACK_msg); 
            u8retries --;
          }
          if(0 == u8retries)
          {
            u8AppState = WAITING_RANGE_RX_ST;
          }
        }
        break;
        
        case FINISH_RANGE_RX_ST:
        {
          /*Do nothing*/
        }
        break;
        default:
        {
        }
        break;
      }
   }
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != 'Q');  
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);
}

/************************************************************************************
* range_tx_test
*
* This function performs the range transmission process.
*
***********************************************************************************/

void range_tx_test(void)
{
  static range_tx_states_t u8AppState; 
  static uint16_t u8CountNoPacket = 0;
   


  u8AppState = INIT_RANGE_TX_ST;
  
  u8CurrentMode = SMAC_TEST_MODE_RANGE_TX_RX;
  Uart_Print("\r\n    ****************************");
  Uart_Print("\r\n    **       Range Test       **");
  Uart_Print("\r\n    ****************************");
   
  Uart_Print("\r\nPress Q to exit from Range Test");
  Uart_Print("\r\nPress any key to start the test.....");
  Uart_getchar(mUARTRxBuffer);
  do{
    (void)process_radio_msg();
    if(1 == gbDataIndicationFlag)
    {
      gbDataIndicationFlag = 0;
      process_incoming_msg();
      u8CountNoPacket = 0;
    }
    else{
      u8CountNoPacket++;
      if(0x1000 == u8CountNoPacket)
      {
          u8CountNoPacket = 0;
          LED_TurnOffAllLeds();
      }
    }
    
  {
    
    switch(u8AppState)
    {
      case IDLE_RANGE_TX_ST:
      {
        // Do nothing when idle
  		u8AppState = INIT_RANGE_TX_ST;
      }
      break;
      case INIT_RANGE_TX_ST:
      {
        uint8_t i;
          RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
          TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
          ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
          for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
          {
            TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
          }
        TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));


          Uart_Print("\r\n\nThe transceiver is now transmitting...");
          u8AppState = TRANSMITING_RANGE_TX_ST;
      }
      break;
      
      case TRANSMITING_RANGE_TX_ST:
      {
        if(( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg . u8Status . msg_state) || (MSG_TX_ABORTED == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == TX_msg . u8Status . msg_state) ))
        {
          
          DelayMs(5);
          MCPSDataRequest(&TX_msg);
        }
        u8AppState = LISTEN_RANGE_TX_ST;
      }  
      break;
      
      case LISTEN_RANGE_TX_ST:
      {
        if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
        {
          RX_msg.u8BufSize = ((sizeof(smac_pdu_t)+10-1));
          MLMERXEnableRequest(&RX_msg, 0x00000200);
        }
        u8AppState = WAITING_RANGE_TX_ST;
      }
      break;
      
      case WAITING_RANGE_TX_ST:
      {
        if(( (MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_FAIL == TX_msg . u8Status . msg_state) || (MSG_TX_ABORTED == TX_msg . u8Status . msg_state) || (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == TX_msg . u8Status . msg_state) ))
        {
          u8AppState = TRANSMITING_RANGE_TX_ST;
        }
        if(( (MSG_RX_ACTION_COMPLETE_SUCCESS == RX_msg . u8Status . msg_state) || (MSG_RX_ACTION_COMPLETE_FAIL == RX_msg . u8Status . msg_state) || (MSG_RX_ABORTED == RX_msg . u8Status . msg_state) || (MSG_RX_TIMEOUT_FAIL == RX_msg . u8Status . msg_state) ))
        {
          u8AppState = LISTEN_RANGE_TX_ST;
        }
        if(1 == gu8ValidAckPacket)
        {
          gu8ValidAckPacket = 0;
          u8AppState = RANGE_INDICATION_TX_ST;
        }
      }
      break;
      
      case RANGE_INDICATION_TX_ST:
      {
        u8AppState = WAITING_RANGE_TX_ST;
      }
      break;
      
      default:
      {
      }
      break;
    }
  }
    Uart_Poll(mUARTRxBuffer);
  }while (mUARTRxBuffer[0] != 'Q');  
  u8CurrentMode = SMAC_TEST_MODE_IDLE;
  MLMETestMode(u8CurrentMode);

}


/************************************************************************************
* configure_clock_setting
*
* This function adjust the clock setting selected by the user in the serial interface.
*
***********************************************************************************/
void configure_clock_settings(void)
{
  char option_menu, option;
   do{
      option_menu = clock_setting_menu();
      switch(option_menu)
      {
        case '1':
         do
          {
            option = bulk_cap_menu();
            switch(option)
            {
              case 'E':
                (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . bulktune = 1); 
                u8BulkCapState = (0x01);
                break;
              case 'D':
                (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . bulktune = 0); 
                u8BulkCapState = (0x00);
                break;
              case 'p':
                break;
              default:
                Uart_Print("  Invalid Option!!!");
                break;              
            }
          }while(option != 'p');
          break;
          
        case '2':
          coarse_tune_adjust();
          break;
          
        case '3':
          fine_tune_adjust();
          break;
          
        case 'p':
          break;
          
        default:
          Uart_Print("  Invalid Option!!!\n");
          break;
     }
  }while(option_menu != 'p'); 
}

/************************************************************************************
* coarse_tune_adjust
*
* This function ajusts the current coarse tune value to the new typed by the user 
* in the serial interface.
*
***********************************************************************************/
void coarse_tune_adjust(void)
{
  uint8_t u8TempCoarse;
  Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
  Uart_Print("\r  Current Coarse Tune Value: ");
  Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
  Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
  Uart_getchar(mUARTRxBuffer);
  u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
  Uart_getchar(mUARTRxBuffer);

  if(u8TempCoarse > 0X00)
  {
    Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
  }
  else
  {
    u8CurrentCoarseTune = (u8TempCoarse << 4);
    u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
    (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . cTune = u8CurrentCoarseTune); 
  }
}

/************************************************************************************
* fine_tune_adjust
*
* This function ajusts the current fine tune value to the new typed by the user
* through the serial interface.
*
***********************************************************************************/
void fine_tune_adjust()
{
  uint8_t u8TempFine;
  Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
  Uart_Print("\r  Current Fine Tune Value: ");
  Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
  Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
  u8TempFine = Uart_getchar(mUARTRxBuffer);
  u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
  Uart_getchar(mUARTRxBuffer);
  if(u8TempFine > 0X01)
  {
    Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
  }
  else
  {
    u8CurrentFineTune = (u8TempFine << 4);
    u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
    (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . fTune = u8CurrentFineTune); 
  }

}
/************************************************************************************
* PrintTestMode
*
* This function prints the Test Mode name received as parameter.
*
*********************************************************************************/
void PrintTestMode(Test_Mode_t TestModeValue)
{
  switch(TestModeValue)
  {
    case SMAC_TEST_MODE_IDLE:
      Uart_Print("IDLE MODE\n");
      break;
	  
    case SMAC_TEST_MODE_CONTINUOUS_RX:
      Uart_Print("CONTINUOUS RECEPTION\n");
      break;
	  
    case SMAC_TEST_MODE_PULSE_PRBS9_TX_RX:
      Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
      break;
	  
    case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
      Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
      break;       
	  
    case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
      Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
      break;      
	  
    case SMAC_TEST_MODE_PER_TX_RX:
      Uart_Print("PACKET ERROR RATE TEST\n");
      break;
	  
    case SMAC_TEST_MODE_RANGE_TX_RX:
      Uart_Print("RANGE TEST\n");
      break;
	  
    default:
      break;
  }
}

/************************************************************************************
* PrintChannel
*
* This function prints the Channel number received as parameter.
*
***********************************************************************************/
void PrintChannel(channel_num_t u8ChannelValue)
{
  if( gTotalChannels_c > u8ChannelValue ){
    u8ChannelValue += 11;
    Uart_Print("CHANNEL ");
    Uart_PrintByteDec(u8ChannelValue);
    Uart_Print("\n");
  }
}

/************************************************************************************
* LEDs_LQI_indicator
*
* This function show the four possible LQI adjusted values using three LEDs.
*
************************************************************************************/
void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
{
  uint8_t LEDs_state[4][4]={gFarRange_c,gGpioPinStateLow_c,gGpioPinStateLow_c,gGpioPinStateLow_c,
                            gMediumRange_c,gGpioPinStateHigh_c,gGpioPinStateLow_c,gGpioPinStateLow_c,
                            gNearRange_c,gGpioPinStateHigh_c,gGpioPinStateHigh_c,gGpioPinStateLow_c,
                            gVeryNearRange_c,gGpioPinStateHigh_c,gGpioPinStateHigh_c,gGpioPinStateHigh_c
                           };
  Gpio_SetPinData(gGpioPin24_c, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
  Gpio_SetPinData(gGpioPin25_c, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
  Gpio_SetPinData(gGpioPin44_c, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
}

/************************************************************************************
* TMR_Init
*
* This function configurates the timer to generate a output frequency at 2 MHz.
* 
**********************************************************************************/
void TMR_Init(void)
{              
  TmrConfig_t pConfig;
  TmrStatusCtrl_t pStatusCtrl;
  TmrComparatorStatusCtrl_t pCompStatusCtrl;
  
  TmrInit();
  GpioTmrInit();
  TmrEnable(gTmr1_c);
 
  ((TmrRegs_t *)(0x80007000 + (((gTmr1_c) & 0x03) << 0x05)))->Load = (0x00);
  ((TmrRegs_t *)(0x80007000 + (((gTmr1_c) & 0x03) << 0x05)))->Cntr = (0x00);
  ((TmrRegs_t *)(0x80007000 + (((gTmr1_c) & 0x03) << 0x05)))->CmpLd1 = (0x05);         
  ((TmrRegs_t *)(0x80007000 + (((gTmr1_c) & 0x03) << 0x05)))->CmpLd2 = (0x05);        
 
  ((TmrRegs_t *)(0x80007000 + (((gTmr1_c) & 0x03) << 0x05)))->Comp1 = (0x05);  
  ((TmrRegs_t *)(0x80007000 + (((gTmr1_c) & 0x03) << 0x05)))->Comp2 = (0x05);              
     
  TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   

  pConfig.tmrOutputMode = gTmrToggleOF_c;
  pConfig.tmrCoInit = 0;
  pConfig.tmrCntDir = 0;
  pConfig.tmrCntLen = 1;
  pConfig.tmrCntOnce = 0;
  pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
  pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
  TmrSetConfig(gTmr1_c, &pConfig);  

  pCompStatusCtrl.uintValue =0x06;
  TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
 
  pStatusCtrl.uintValue = 0x05;
  TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
}

/************************************************************************************
* GpioTmrInit
*
* This function initializate the Timer´s gpios.
*
***********************************************************************************/
void GpioTmrInit(void)
{
  Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
}

/************************************************************************************
* display_config function
*
* This function prints an ASCII Freescale's logo.
************************************************************************************/
static void print_freescale_logo(void)
{
  Uart_Print("\n\r\n\r\n\r      #\n");
  Uart_Print("\r     ###\n");
  Uart_Print("\r    ###  *\n");
  Uart_Print("\r     #  ***\n");
  Uart_Print("\r       ***  #\n");
  Uart_Print("\r        *  ###\n");
  Uart_Print("\r          ###\n");
  Uart_Print("\r        *  #\n");
  Uart_Print("\r       ***\n");
  Uart_Print("\r      ***  #\n");
  Uart_Print("\r    #  *  ###\n");
  Uart_Print("\r   ###   ###\n");
  Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
  Uart_Print("\r   #  ***\n");
  Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
  Uart_Print("\r   #  *\n");
  Uart_Print("\r  ###               2 0 1 1\n");
  Uart_Print("\r ###\n");
  Uart_Print("\r  #           Press any key to continue...\n\n");
}

/*******************************************************************************
* DisplayFreescaleLogo
*
* This function displays the Freescale Logo in the LCD.
*******************************************************************************/
void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
{
  uint8_t u8Count;
  uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
  uint8_t i;
  
  for(i=0; i < 8; i++)
  {  
    LCD_WritePixel(xStartCoord, yStartCoord, 1);
    LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
    LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
    LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
    LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
    LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
    LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
    LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
    LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
    LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  

    
   if(i == 2 || i == 4 || i == 6)
   {
     if(i == 4)
     {
       yStartCoord += 3;
       xStartCoord -= 9;
     }
     else
     {
       yStartCoord += 6;
       xStartCoord -= 6;
     }
   }
   else
   {
    yStartCoord += 3;
    xStartCoord += 4;

   }
  }
 (void)LCD_SetFont(gLCD_VerdanaFont_c);
  yStartCoord -= 20;
  xStartCoord += 15;
  
  for(u8Count = 0; u8Count < 9; u8Count++)
  {
    LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
    xStartCoord += 6;
  }

 (void)LCD_SetFont(gLCD_NormalFont_c);
  yStartCoord -= 20;
  xStartCoord += 15;
}


  
void DisplayTestMode(ConfigOption_t u8ConfigOption)
{
  uint8_t line = 0;
  uint8_t i;
  ClearDisplay();
  LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");

  for(i = 0; i< 130 ; i++)
  {
    LCD_WritePixel(i,10,1);  
    LCD_WritePixel(i,11,1);  
  }
  line++;
  

  switch(u8ConfigOption)
  {
    case gChannel_c:
      line++;
      LCD_WriteString_NormalFont(line," Option: Channel");
      line++;
      LCD_WriteString_NormalFont(line,"  SW1 Change option");
      line++;
      LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
      line++;
      LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
      LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
    break;
    
    case gPower_c:
      line++;
      LCD_WriteString_NormalFont(line," Option: Power");
      line++;
      LCD_WriteString_NormalFont(line,"  SW1 Change option");
      line++;
      LCD_WriteString_NormalFont(line,"  SW2 Power Up");
      line++;
      LCD_WriteString_NormalFont(line,"  SW3 Power Down");
      LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
    break;
    
    case gRxTestMode_c:
      line++;
      
      if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Option: Test");
        line++;
        LCD_WriteString_NormalFont(line,"  SW1 Change option");
        line++;
        LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        line++;
        LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        line++;
        LCD_WriteString_NormalFont(7,"Idle Mode");
      }
    /* RX options */  
      /*
      if(SMAC_CONTINUOUS_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Continuous Reception");
      } 
      */
      if(SMAC_TEST_MODE_PER_TX_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line,"PER Test running");
        line = line + 2 ;
        LCD_WriteString_NormalFont(line,"SW4 for PER TX");
      }  

      if(SMAC_TEST_MODE_RANGE_TX_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line,"Range Test running");
        line = line + 2 ;
        LCD_WriteString_NormalFont(line,"SW4 for Range TX");
      }  
      
    /* TX options */  
      if(SMAC_TEST_MODE_PULSE_PRBS9_TX_RX == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
      }            
      if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Cont TX Mod ");
      }              
      if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
      {
        LCD_WriteString_NormalFont(line," Cont TX No Mod ");
      }        
      
    break;
  
    default:
    break;
  }
}

void ClearDisplay(void)
{
  uint8_t u8Line;
  for(u8Line = 0; u8Line < 9; u8Line++)
  {
    LCD_WriteString_NormalFont(u8Line,"                     ");
  }
}


/************************************************************************************
*************************************************************************************
* Private Debug stuff
*************************************************************************************
************************************************************************************/


