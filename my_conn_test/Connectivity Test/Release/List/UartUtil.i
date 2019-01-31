/************************************************************************************
* Includes the UART Utils.
*
* (c) Copyright 2008, Freescale Semiconductor, Inc. All rights reserved.
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








/******************************************************************************/
/******************************************************************************/

/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************/
static uint8_t HexToAscii(uint8_t u8Hex);

void UartEventRead1(UartReadCallbackArgs_t* args);
void UartEventWrite2(UartWriteCallbackArgs_t* args);
void UartEventRead2(UartReadCallbackArgs_t* args);
void UartEventWrite1(UartWriteCallbackArgs_t* args);
void GpioUart1Init(void);
void GpioUart2Init(void);

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/
 
/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/

UartReadStatus_t gu8SCIStatus = gUartReadStatusComplete_c;
volatile uint8_t gu8SCIDataFlag = 0;
uint16_t gu16SCINumOfBytes = 0;

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/************************************************************************************  
* Uart_Init
*
* Initializate the Uart module.
*************************************************************************************/
void Uart_Init(uint8_t *mUARTRxBuffer, uint16_t mUARTBufferSize) 
{
  UartConfig_t pConfig;
  UartCallbackFunctions_t pCallback;
  

  //initialize GPIOs for UART1 and UART2 
  GpioUart1Init();  

  //configure the uart parameters 
  pConfig.UartParity = gUartParityNone_c;
  pConfig.UartStopBits = gUartStopBits1_c;
  pConfig.UartBaudrate = ((UartBaudRate_t) 38400);
  pConfig.UartFlowControlEnabled = 0;
  pConfig.UartRTSActiveHigh = 0;

  
  //mount the interrupts corresponding to UART driver
  IntAssignHandler(gUart1Int_c, (IntHandlerFunc_t)UartIsr1);
  ITC_SetPriority(gUart1Int_c, gItcNormalPriority_c);
  //enable the interrupts corresponding to UART driver
  ITC_EnableInterrupt(gUart1Int_c);

  //initialize the uart
  UartOpen(0,((24000000)/1000));  
  UartSetConfig(0, &pConfig);  


  //configure the Uart Rx and Tx Threshold
  UartSetTransmitterThreshold(0, 5);
  UartSetReceiverThreshold(0, 5);

  //set pCallback functions
  pCallback.pfUartWriteCallback = UartEventWrite1;
  pCallback.pfUartReadCallback = UartEventRead1;
  UartSetCallbackFunctions(0, &pCallback);

  // global enable interrupts in AITC driver
  IntRestoreIRQ(0);
  
  UartReadData(0,mUARTRxBuffer,mUARTBufferSize,1);

}                                       

/************************************************************************************  
* GpioUart1Init
*
* This function initializate the gpio´s for the Uart1 module
*************************************************************************************/
void GpioUart1Init(void)
{
  register uint32_t tmpReg;

  (*((GpioRegs_t *)0x80000000)).PuSelLo |= (0x00020000UL | 0x00008000UL);  // Pull-up select: UP type
  (*((GpioRegs_t *)0x80000000)).PuEnLo  |= (0x00020000UL | 0x00008000UL);  // Pull-up enable
  (*((GpioRegs_t *)0x80000000)).InputDataSelLo &= ~(0x00020000UL | 0x00008000UL); // read from pads
  (*((GpioRegs_t *)0x80000000)).DirResetLo = (0x00020000UL | 0x00008000UL); // inputs
  (*((GpioRegs_t *)0x80000000)).DirSetLo = (0x00010000UL | 0x00004000UL);  // outputs
        
  tmpReg = (*((GpioRegs_t *)0x80000000)).FuncSel0 & ~((3UL << (15*2)) | (3UL << (14*2)));
  (*((GpioRegs_t *)0x80000000)).FuncSel0 = tmpReg | ((1 << (15*2)) | (1 << (14*2)));
  tmpReg = (*((GpioRegs_t *)0x80000000)).FuncSel1 & ~((3UL << (16*2-32)) | (3UL << (17*2-32)));
  (*((GpioRegs_t *)0x80000000)).FuncSel1 = tmpReg | ((1 << (16*2-32)) | (1 << (17*2-32)));
}

/************************************************************************************  
* GpioUart2Init
*
* This function initializate the gpio´s for the Uart2 module
*************************************************************************************/
void GpioUart2Init(void)
{
  register uint32_t tmpReg;

  (*((GpioRegs_t *)0x80000000)).PuSelLo |= (0x00200000UL | 0x00080000UL);  // Pull-up select: UP type
  (*((GpioRegs_t *)0x80000000)).PuEnLo  |= (0x00200000UL | 0x00080000UL);  // Pull-up enable
  (*((GpioRegs_t *)0x80000000)).InputDataSelLo &= ~(0x00200000UL | 0x00080000UL); // read from pads
  (*((GpioRegs_t *)0x80000000)).DirResetLo = (0x00200000UL | 0x00080000UL); // inputs
  (*((GpioRegs_t *)0x80000000)).DirSetLo = (0x00100000UL | 0x00040000UL);  // outputs

  tmpReg = (*((GpioRegs_t *)0x80000000)).FuncSel1 & ~((3UL << (20*2-32)) | (3UL << (21*2-32))  | (3UL << (19*2-32)) | (3UL << (18*2-32)));
  (*((GpioRegs_t *)0x80000000)).FuncSel1 = tmpReg | ((1 << (20*2-32)) | (1 << (21*2-32))  | (1 << (19*2-32)) | (1 << (18*2-32)));
}

/*******************************************************************************  
* UartEventRead1 
*
* Callabck function for the reception process in the Uart1
*******************************************************************************/
void UartEventRead1(UartReadCallbackArgs_t* args)
{
  gu8SCIDataFlag = 1;
  gu16SCINumOfBytes = args->UartNumberBytesReceived;
  gu8SCIStatus = args->UartStatus;
}

/*******************************************************************************  
* UartEventWrite1
*
* Callback function for the transmission interruption in the Uart1.
*******************************************************************************/
void UartEventWrite1(UartWriteCallbackArgs_t* args)
{
}

/*******************************************************************************  
* UartEventRead12
*
* Callabck function for the reception process in the Uart2
*******************************************************************************/
void UartEventRead2(UartReadCallbackArgs_t* args)
{
  gu8SCIDataFlag = 1; 
  gu16SCINumOfBytes = args->UartNumberBytesReceived;
  gu8SCIStatus = args->UartStatus;
}

/*******************************************************************************  
* UartEventWrite2
*
* Callback function for the transmission interruption in the Uart1.
*******************************************************************************/
void UartEventWrite2(UartWriteCallbackArgs_t* args)
{
}

/*******************************************************************************  
* HexToAscii
*
* This function converts an hexadecimal value in ascii code.
*******************************************************************************/
static uint8_t HexToAscii(uint8_t u8Hex)
{
  u8Hex &= 0x0F;
  return u8Hex + ((u8Hex <= 9) ? '0' : ('A'-10));
}

/*******************************************************************************  
* Uart_putchar
*
* This function print a byte in the serial interface
*******************************************************************************/
void Uart_putchar(uint8_t u8Char)
{
  UartWriteData(0,&u8Char,1);
}


/*******************************************************************************  
* Uart_Print
*
* This function transmit a string to the initializated Uart. 
*******************************************************************************/
void Uart_Print(uint8_t* pString)
{
  uint8_t WriteBuffer[1];
  uint8_t length = 0;
  uint16_t u8Timeout;
  while(pString[length] != '\0'){
    WriteBuffer[0] = pString[length];
    length++;
    u8Timeout = 0;
    while((UartWriteData(0,WriteBuffer,1) != gUartErrNoError_c) && (u8Timeout < (4000)))
    {
      u8Timeout ++;
    }
  }
}

/*******************************************************************************  
* Uart_getchar
*
* Waits until a character is received in the Uart. 
*******************************************************************************/
char Uart_getchar(uint8_t *u8Char)
{
  while(1 != gu8SCIDataFlag){}
  gu8SCIDataFlag = 0;
  UartGetByteFromRxBuffer(0, u8Char);
  
  return *u8Char;
}

/*******************************************************************************  
* Uart_Tx
*
* Transmits a buffer to the UART. 
*******************************************************************************/
void Uart_Tx(const uint8_t * msg, uint8_t length)
{
  uint8_t WriteBuffer[1];
  uint32_t i;
  uint16_t u8Timeout;

  for(i=0;i<length;i++)
  {
    if(*msg == '\n' ){
      WriteBuffer[0] = '\r';
      u8Timeout = 0;
      while((UartWriteData(0,WriteBuffer,1) != gUartErrNoError_c) && (u8Timeout < (4000)))
      {
        u8Timeout ++;
      }
    }
    WriteBuffer[0] = *msg;
    
    u8Timeout = 0;
    while((UartWriteData(0,WriteBuffer,1) != gUartErrNoError_c) && u8Timeout < (4000) )
    {
      u8Timeout ++;
    }
   
    msg++;
  }
}

void Uart_Poll(uint8_t *pRxBuffer)
{
  if (gu8SCIDataFlag) {
    gu8SCIDataFlag = 0;
    UartGetByteFromRxBuffer(0, pRxBuffer);
  } 
}

/*******************************************************************************  
* AsciitoHex
*
* This function converts an ascii code in a hexadecimal value.
*******************************************************************************/
uint8_t AsciitoHex(uint8_t u8Ascii)
{
  if ((u8Ascii > 47) && (u8Ascii <= 57)){
    return u8Ascii - '0';
  }
  else{ 
    if((u8Ascii > 64) && (u8Ascii <= 70))
    { 
      return (u8Ascii - 'A' + 10);
    }
    else if((u8Ascii > 96) && (u8Ascii <= 102))
    {
      return (u8Ascii - 'a' + 10);
    } 
  }
}

/*******************************************************************************  
* Uart_PrintHex
*
* This function transmit a hexadecimal value to the initializated Uart. 
*******************************************************************************/
void Uart_PrintHex(uint8_t *pu8Hex, uint8_t u8len, uint8_t u8flags)
{
  uint8_t hexString[3];
  if(! (u8flags & gPrtHexBigEndian_c))
    pu8Hex = pu8Hex + (u8len-1);
  
  while(u8len)
  {
    hexString[2] = '\0';
    hexString[1] = HexToAscii( *pu8Hex );
    hexString[0] = HexToAscii((*pu8Hex)>>4);
    
    Uart_Print((uint8_t*) hexString);
    
    if(u8flags & gPrtHexCommas_c)
      Uart_Print((uint8_t*)",");
    pu8Hex = pu8Hex + (u8flags & gPrtHexBigEndian_c ? 1 : -1);
    u8len--;
  }
  if(u8flags & gPrtHexNewLine_c)
    Uart_Print((uint8_t*)"\n");
}

/*******************************************************************************  
* Uart_PrintByteDec
*
* This function transmit a decimal value to the initializated Uart
*******************************************************************************/
void Uart_PrintByteDec(uint8_t u8Dec)
{
  uint8_t decString[3];
  uint8_t  tem;
  tem = u8Dec & 0x0F;
  decString[2] = '\0';
  decString[0]= tem/10;
  decString[1] = tem%10;

  tem = ((u8Dec>>4) & 0x0F);
  tem = tem * 16;
  
  if(decString[1] + (tem%10) >= 10){
    decString[0] = ( decString[0] + (tem/10) + 1 + '0');
    decString[1] = ( decString[1] + (tem%10) - 10 +'0');
  }
  else{
    decString[0] = ( decString[0] + (tem/10) + '0');
    decString[1] = ( decString[1] + (tem%10) + '0');
  }
  Uart_Print((uint8_t*) decString);
}

/*******************************************************************************  
* Uart_PrintShortDec
*
* This function transmit a decimal value to the initializated Uart
*******************************************************************************/
void Uart_PrintShortDec(uint16_t u16Dec)
{
  uint8_t decString[6];
  uint16_t  temp;

  decString[5] = '\0';
  temp = u16Dec;

  decString[4] = (temp%10) + '0';
  temp = temp/10;
  decString[3] = (temp%10) + '0';
  temp = temp/10;
  decString[2] = (temp%10) + '0';
  temp = temp/10;
  decString[1] = (temp%10) + '0';
  temp = temp/10;

  decString[0] = temp + '0';

  Uart_Print((uint8_t*) decString);
}

/*******************************************************************************  
* mem_cmp 
*
* This function compare two strings, return FALSE when these are diferents or 
* TRUE when are equals.
*******************************************************************************/
bool_t mem_cmp(uint8_t * str1, uint8_t * str2, uint8_t sz)
{
  uint8_t i;
  for(i=0; i<sz; i++)
  {
    if( (str1[i]) != (str2[i]))
    {
      return 0;
    }
  }
  return 1;
}

