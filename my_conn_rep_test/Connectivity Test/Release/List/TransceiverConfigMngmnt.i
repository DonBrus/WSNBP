/************************************************************************************
* Transceiver Configuration Management implementation
*
* (c) Copyright 2006, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
* Last Inspected:
* Last Tested:
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


/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/


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
* This function ...
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
extern uint8_t SetPower(uint8_t);



/************************************************************************************
* This function ...
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
extern void SetComplementaryPAState(bool_t);


/************************************************************************************
* This function ...
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
extern uint8_t SetPowerLevelLockMode(bool_t);

/************************************************************************************
* This function ...
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
extern void disable_test_mode_continuos_tx_nomod(void);


/************************************************************************************
* This function ...
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
extern void set_test_mode_continuos_tx_nomod(void);



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
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/



/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/








typedef struct version_and_size_tag {
  uint32_t * version_add;
  uint8_t word_size;
}version_and_size_tag;


/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/
/*
   4 bits - Major
   5 bits - Middle
   5 bits - Minor
   5 bits - Year from 2000
   4 bits - Month (valid 1-12)
   5 bits - Day of the month (valid 1-31)
   4 bits - Consecutive number
*/




const uint32_t smac_version = (((1) << 28) | ((1) << 23 ) |                                ((3) << 18) | ((2009-2000) << 13 ) |                                ((8) << 9) | ((4) << 4 ) | (1));


static bool_t mIsPromiscousMode = 0;
static const version_and_size_tag version_registers[MAX_VERSIONED_ENTITY] = {
  {(uint32_t *)(&(*((volatile uint32_t *)(0x80004018)))), 1},     /* MACA_MC1322x_ID VERSION */
  {(uint32_t *)(&smac_version), 1},        /* SMAC VERSION */
  {(uint32_t *)(0x00000020),    1},        /* BOOTSTRAP VERSION */
};

static void InitializePhy(void);



/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* MLMESoftReset
*
* This function is called to perform a complete reset of the system.
*
************************************************************************************/
void MLMEPHYSoftReset(void)
{
  MLMEPHYResetIndication();
  ((CrmRegs_t *)0x80003000)->SwRst = (0x87651234);
}

/************************************************************************************
* MLMEPHYResetIndication
*
* Callback called when a SoftReset has occurred.
*
************************************************************************************/
void MLMEPHYResetIndication(void)
{
  /* Place your application´s code here */
}

/************************************************************************************
* MLMEPHYXtalAdjust
*
* Adjust the transceiver reference clock by a trim value.
*
************************************************************************************/
FuncReturn_t MLMEPHYXtalAdjust(uint8_t u8CoarseTrim, uint8_t u8FineTrim)
{
  if( ((0x1f) < u8CoarseTrim) || 
      ((0x1f) < u8FineTrim)){
    return gFailOutOfRange_c;
  }
  else {
    /*Do nothing */
  }

  if((0x10) & u8CoarseTrim)
  {
    (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . bulktune = 1);
  }
  else
  {
    (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . bulktune = 0);
  }

  (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . cTune = (~(0x10)) & u8CoarseTrim);
  (((crmXtalCntlReg_t*)&((CrmRegs_t *)0x80003000)->XtalCntl)->bit . fTune = u8FineTrim);

  return gSuccess_c;
  
}


/************************************************************************************
* MLMEGetRficVersion
*
* This function shall provide the calling function with version of the IC and the 
* version of the software.
*
************************************************************************************/
FuncReturn_t MLMEGetRficVersion(Versioned_Entity_t Entity, uint32_t *Buffer)
{
  uint8_t i;

  if(MAX_VERSIONED_ENTITY <= Entity){
    return gFailOutOfRange_c;
  }
  else{
    /* Do nothing */
  }

  for(i=0; i<version_registers[Entity].word_size; i++)
  {
    *Buffer++ = *((version_registers[Entity].version_add)+i);
  }

  return gSuccess_c;
}

/************************************************************************************
* MLMETestMode
*
* This SMAC primitive was added to place the device into MACA tests modes.
*
************************************************************************************/
void MLMETestMode (Test_Mode_t u8Mode)
{
  disable_test_mode_continuos_tx_nomod();

  switch(u8Mode){
    case(SMAC_TEST_MODE_IDLE):
      {
        (*((volatile uint32_t *)(0x8000400c))) = ( (1<<11) | (1<<12) | control_mode_non_slotted );
      }
      break;
          
    case(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD):
      {
        (*((volatile uint32_t *)(0x8000400c))) = ( (1<<11) | (1<<12) | control_mode_non_slotted );
        DelayMs(2);
        set_test_mode_continuos_tx_nomod();
      }
      break;
      
    case(SMAC_TEST_MODE_CONTINUOUS_TX_MOD):
      {
        (*((volatile uint32_t *)(0x8000400c))) = ( (1<<11) | (1<<12) | control_mode_non_slotted );
        DelayMs(2);
        (*((volatile uint32_t *)(0x8000400c))) = 0x00000223;
      }
      break;
      
    case(SMAC_TEST_MODE_CONTINUOUS_RX):
      {
        (*((volatile uint32_t *)(0x8000400c))) = ( (1<<11) | (1<<12) | control_mode_non_slotted );
        DelayMs(2);
        (*((volatile uint32_t *)(0x8000400c))) = 0x00000224;
      }
      break;    
    
    default:
      (*((volatile uint32_t *)(0x8000400c))) = ( (1<<11) | (1<<12) | control_mode_non_slotted );
      break;
  }
}


/************************************************************************************
* MLMESetPromiscuousMode
*
* This function sets the promiscous mode to on/off
*
************************************************************************************/
FuncReturn_t MLMESetPromiscuousMode(bool_t isPromiscousMode)
{
  mIsPromiscousMode = isPromiscousMode;
  return gSuccess_c;
}

/************************************************************************************
* MLMEGetPromiscuousMode
*
* This function gets the current promiscous mode to on/off.
*
************************************************************************************/
bool_t MLMEGetPromiscuousMode(void)
{
  return mIsPromiscousMode;
}

/************************************************************************************
* MLMERadioInit
*
* This function configures the different parameters of the MAC accelerator and the 
* radio interface
*
************************************************************************************/
FuncReturn_t MLMERadioInit(void)
{
  static uint8_t i=0;  
  uint32_t u32LoopDiv;  

  u32LoopDiv = ((21<<25) + 0);

  if (0==i){
    i = 1;
    RadioInit((24000000), 24, u32LoopDiv);
    MLMEPHYXtalAdjust(0x08, 0x0F);
    MLMESetPromiscuousMode(0);
    radio_manager_init();
  }
  
  if((24000000) != 24000000)
  {
    InitIdleToRun();
  }
  
  InitializePhy(); // Re-init MACA
  SetComplementaryPAState(0);
  SetPowerLevelLockMode(0);
  SetEdCcaThreshold(0x39);
  
  ((CrmRegs_t *)0x80003000)->VregCntl = 0x00000F78; //Enables the radio voltage source
  return gSuccess_c;
}


/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* InitializePhy
*
* This function configures the different parameters of the MAC accelerator and the 
* radio interface
*
************************************************************************************/
static void InitializePhy(void)
{
  volatile uint8_t cnt;
  
  ((*((volatile uint32_t *)(0x80004004))) = (1<<0));
 
  for(cnt=0; cnt < 100; cnt++); 

  ((*((volatile uint32_t *)(0x80004004))) = (1<<1));                      // 0x80004004
  ((*((volatile uint32_t *)(0x8000400c))) = control_seq_nop);                        // 0x8000400c
  ((*((volatile uint32_t *)(0x80004040))) = (1<<0) | (1<<2));          // 0x80004040
  ((*((volatile uint32_t *)(0x80004114))) = 95);                      // 0x80004114
  ((*((volatile uint32_t *)(0x80004118))) = 0x00180012);                             // 0x80004118
  ((*((volatile uint32_t *)(0x80004148))) = 0x00000004);                             // 0x80004148
  ((*((volatile uint32_t *)(0x8000414c))) = 0x001a0022);                             // 0x8000414c
  ((*((volatile uint32_t *)(0x80004154))) = 0x00000025);                             // 0x80008154
  ((*((volatile uint32_t *)(0x80004124))) = 0x000000A7);                             // 0x80004124
  ((*((volatile uint32_t *)(0x80004048))) = 0x00000008);                             // 0x80004048
  ((*((volatile uint32_t *)(0x800040cc))) = ((1<<13) | (1<<0) | (1<<4) | (1<<2) | (1<<12) | (1<<11) ));
  ((*((volatile uint32_t *)(0x80004064))) = 0x00350000);                             // 0x80004064
  // MACA

}


/************************************************************************************
* ConfigureRfCtlSignals()
*
* This function ...
*
************************************************************************************/
void ConfigureRfCtlSignals(RfSignalType_t signalType, RfSignalFunction_t function, bool_t gpioOutput, bool_t gpioOutputHigh )
{
 /* Validate the input paramters */
 if( (signalType >= gRfSignalMax_c) || (function >= gRfSignalFunctionMax_c) )
 {
  /* SignalType or function out of range */ 
  return;
 }
 
 if( (signalType < gRfSignalTXON_c) && (function > gRfSignalFunction1_c) )
 {
  /* Function2 requested for ANT_1 or ANT_2 */
  return;
 }
 
 if(function > 0)
 {
  /* Function 1 or 2 was requested for the RF pin. Apply the change at the GPIO function level for the requested signal */
  Gpio_SetPinFunction((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), (GpioFunctionMode_t)function); 
 }
 else
 {
  /* GPIO mode requested for the RF pin. Apply the function, direction and level for the requested signal */
  Gpio_SetPinFunction((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioNormalMode_c); 
  if(gpioOutput == 1)
  {  
   Gpio_SetPinDir((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioDirOut_c);
   Gpio_SetPinReadSource((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioPinReadReg_c);
   Gpio_SetPinData((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), (GpioPinState_t)gpioOutputHigh); 
  }
  else
  {
   Gpio_SetPinDir((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioDirIn_c);
   Gpio_SetPinReadSource((GpioPin_t)((GpioPin_t)gGpioPin42_c+(GpioPin_t)signalType), gGpioPinReadPad_c);
  }  
 }
 
}


/************************************************************************************
* ConfigureBuckRegulator
*
* This function enables or bypass the buck regulator 
*
************************************************************************************/
void ConfigureBuckRegulator(BuckTypes_t BuckRegState)
{
 
  if(BUCK_DISABLE == BuckRegState)
  {
    ((CrmRegs_t *)0x80003000)->SysCntl &= 0xFFFFFFFE;
    ((CrmRegs_t *)0x80003000)->VregCntl = 0x00000F78;
  }
  if(BUCK_ENABLE == BuckRegState)
  {
    ((CrmRegs_t *)0x80003000)->SysCntl |= 0x00000001UL;  //Enables buck regutation as power supply
    ((CrmRegs_t *)0x80003000)->VregCntl = 0x00000F7B;
  }
  
  if(BUCK_BYPASS == BuckRegState)
  {
    ((CrmRegs_t *)0x80003000)->SysCntl &= 0xFFFFFFFE;
    ((CrmRegs_t *)0x80003000)->VregCntl = 0x00000F7C;
  }
}


/************************************************************************************
*************************************************************************************
* Private Debug stuff
*************************************************************************************
************************************************************************************/


