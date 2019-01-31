/************************************************************************************
* Radio Management implementation
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
 












/*Clock definitions*/




extern void DelayMs(uint32_t);
extern void DelayUs(uint32_t);
extern const uint8_t gaRFSynVCODivI_c[16];
extern const uint32_t gaRFSynVCODivF_c[16];

extern uint8_t SetChannel(uint8_t channel,  uint8_t RFSynVCODivI, uint32_t RFSynVCODivF);

/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/


//#define _get_ed_value()       (maca_edvalue)





/* Radio commands section */









/* Radio events section */



                                      













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
static FuncReturn_t process_tx_msg (void);
static FuncReturn_t process_rx_msg (void);
static FuncReturn_t process_ed_msg (void);
static FuncReturn_t process_to_msg (void);
static uint8_t calculate_ed_value (uint32_t);


static bool_t is_a_handled_message(message_t * msg);
const uint8_t gaRFSynVCODivI_c[16] = { 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30};
const uint32_t gaRFSynVCODivF_c[16] = { 0x00355555, 0x006aaaaa, 0x00a00000, 0x00d55555, 0x010aaaaa, 0x01400000, 0x01755555, 0x01aaaaaa, 0x01e00000, 0x00155555, 0x004aaaaa, 0x00800000, 0x00b55555, 0x00eaaaaa, 0x01200000, 0x01555555};

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/



/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/
static uint8_t mRetries_timmer;


static uint8_t current_msg;
static uint8_t next_msg_to_store;
static message_t* maMessage_Queu[(4)];
static uint32_t maMessageTO[(4)];

//static uint32_t mStartclk_offset = mStartclk_init_c;
static uint32_t mCplclk_offset   = (0x00001E00);
static uint32_t mSftclk_offset   = (0x000001FE);



/* This constant must keep the same order than the msg_type_tag enumeration */
static const callback_t cbProcessMsg_c[MAX_MSG_TYPE] = {
          (callback_t)(process_tx_msg),
          (callback_t)(process_rx_msg),
          (callback_t)(process_ed_msg),
          (callback_t)(process_to_msg) };

static const uint8_t mAbortStates[MAX_MSG_TYPE] = {
          MSG_TX_RQST_ABORT,
          MSG_RX_RQST_ABORT,
          MSG_ED_RQST_ABORT,
          MSG_TO_RQST_ABORT };


/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/
evnt_flags_t gRadioEvntFlags;
// when doing Tx MACA requires a valid pointer in maca_dmarx 
// in order to handle possible incoming ACK frames;
// this space can also be allocated dinamically;
uint32_t ackBox[10];

message_t Scan_msg;
vScanCallback_t vScanReqCallBack;
uint16_t u16ChannToScan;
uint8_t u8ScanValPerChann[gTotalChannels_c];
uint8_t dataScan[1];
bool_t bScanReqFlag;

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
void process_scan_req(void);
channel_num_t get_next_chann_to_scan(channel_num_t);
extern FuncReturn_t MLMEEnergyDetect  (message_t *, channel_num_t);


/************************************************************************************
* abort_message
*
* This function aborts a message
*
************************************************************************************/
FuncReturn_t abort_message (message_t * msg){
  if(0 == is_a_handled_message(msg)){
    return gFailOutOfRange_c;
  }
  else{
    /* Do Nothing */
  }
  if(maMessage_Queu[current_msg] == msg){
    do { (*((volatile uint32_t *)(0x80004040))) = (0); (*((volatile uint32_t *)(0x8000400c))) = ((1<<9) | control_seq_abort); } while (0);
  }
  else{
    /* Do Nothing */
  }
  msg->u8Status.msg_state = (mAbortStates[msg->u8Status.msg_type]);
  return gSuccess_c;
}

/************************************************************************************
* is_a_handled_message
*
* This function check if a given message is placed at the queu
*
************************************************************************************/
static bool_t is_a_handled_message(message_t * msg){
  uint8_t i;
  for(i=0; i<(4); i++){
    if(maMessage_Queu[i] == msg){
      return 1;
    }
    else{
      /* Do Nothing */
    }
  }
  return 0;
}


/************************************************************************************
* change_current_message_state
*
* This function the current message state to the "mssg_state"
*
************************************************************************************/
void change_current_message_state (any_mssg_state_t mssg_state){
  if((( void * )( 0 )) != maMessage_Queu[current_msg]){
    (maMessage_Queu[current_msg])->u8Status.msg_state = (mssg_state.any_type);
  }
  else{
    /* Do Nothing */
  }
}


/************************************************************************************
* change_current_message_state
*
* This function the callback assosiated with the current message
*
************************************************************************************/
void execute_current_message_callback (void){
  if((( void * )( 0 )) != maMessage_Queu[current_msg]){
    if((( void * )( 0 )) != ((maMessage_Queu[current_msg])->cbDataIndication)){
      (maMessage_Queu[current_msg])->cbDataIndication();
    }
    else {
      /* Do Nothing */
    }
  }
  else{
    /* Do Nothing */
  }
}

/************************************************************************************
* get_current_message
*
* This function returns a pointer to the message that is been processed, it will 
* return NULL if there is no message.
*
************************************************************************************/
message_t* get_current_message (void){
  return (maMessage_Queu[current_msg]);
}


/************************************************************************************
* handle_new_message
*
* This function link a new msg to the queu.
*
************************************************************************************/
FuncReturn_t handle_new_message (message_t * msg, uint32_t timeout){
  if((( void * )( 0 )) != maMessage_Queu[next_msg_to_store]){
    return gFailNoResourcesAvailable_c;
  }
  else{
    msg->u8Status.msg_state = (0);
    maMessage_Queu[next_msg_to_store] = msg;
    maMessageTO[next_msg_to_store]= timeout;
    next_msg_to_store = ((((4)-1) == next_msg_to_store)? 0: next_msg_to_store + 1);
  }
  return gSuccess_c;
}


/************************************************************************************
* release_current_message
*
* This function releases a message from the queu.
*
************************************************************************************/
FuncReturn_t release_current_message (void){
  if((( void * )( 0 )) != maMessage_Queu[current_msg]){
    maMessage_Queu[current_msg] = (( void * )( 0 ));
    maMessageTO[current_msg] = 0;
    current_msg = ((((4)-1) == current_msg)? 0: current_msg+1);
  }
  else{
    /* Do Nothing */
  }
  return gSuccess_c;
}


/************************************************************************************
* radio_manager_init
*
* This initializes all the variables involved in the radio management.
*
************************************************************************************/
FuncReturn_t radio_manager_init (void){
  uint8_t queu_count;
  for(queu_count=0; queu_count<(4); queu_count++){
    maMessage_Queu[queu_count] = (( void * )( 0 ));
    maMessageTO[queu_count] = 0;
  }
  current_msg = 0;
  next_msg_to_store = 0;
  do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
  bScanReqFlag = 0;
  do { Scan_msg . pu8Buffer = (smac_pdu_t *)(&dataScan); Scan_msg . cbDataIndication = (( void * )( 0 )); } while(0);
  Scan_msg.u8Status.msg_state = MSG_ED_ACTION_COMPLETE_FAIL;
  Scan_msg.u8Status.msg_type = ED;
  u16ChannToScan = 0xFFFF;
  return gSuccess_c;
}

/************************************************************************************
* process_radio_msg
*
* This function process any TX/RX/EnergyDetect/Timeout pending msg.
*
************************************************************************************/
FuncReturn_t process_radio_msg (void){

  if((( void * )( 0 )) != maMessage_Queu[current_msg]){
    if(MAX_MSG_TYPE > (maMessage_Queu[current_msg])->u8Status.msg_type){
      cbProcessMsg_c[(maMessage_Queu[current_msg])->u8Status.msg_type]();
    }
    else {
      /* Do Nothing */
    }
  }
  else {
    /* Do Nothing */
  }

  if(1 == bScanReqFlag)
  {
    process_scan_req();
  }

  return gSuccess_c;
}


/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
* process_tx_msg
*
* This function process any TX pending msg.
*
************************************************************************************/
static FuncReturn_t process_tx_msg (void){
  msg_tx_state_t state;
  state = (msg_tx_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
  
  if(((1 == gRadioEvntFlags . Bits . ac_crc_failed_flag) || (1 == gRadioEvntFlags . Bits . ac_not_completed_flag) || (1 == gRadioEvntFlags . Bits . checksum_failed_flag) || (1 == gRadioEvntFlags . Bits . filter_failed_flag)))
  {
    do { gRadioEvntFlags . Bits . ac_crc_failed_flag = 0; gRadioEvntFlags . Bits . ac_not_completed_flag = 0; gRadioEvntFlags . Bits . checksum_failed_flag = 0; gRadioEvntFlags . Bits . filter_failed_flag = 0; }while(0);
    (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_ACTION_COMPLETE_FAIL; 
    return gSuccess_c;
  }
  
  switch(state)
  {
    case MSG_TX_RQST:
      {
        do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
        mRetries_timmer = 0;

        do { (*((volatile uint32_t *)(0x8000408c))) = (uint32_t)((maMessage_Queu[current_msg]->u8BufSize)+4); (*((volatile uint32_t *)(0x80004084))) = (uint32_t)(maMessage_Queu[current_msg]->pu8Buffer->reserved); (*((volatile uint32_t *)(0x80004080))) = (uint32_t)&ackBox; (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | control_mode_no_cca | (1<<9) | control_seq_tx); }while(0);
        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_PASSED_TO_DEVICE;
      }
      break;
    case MSG_TX_PASSED_TO_DEVICE:
      {
        if(( (1 == gRadioEvntFlags . Bits . action_started_flag) || (1 == gRadioEvntFlags . Bits . action_complete_flag))){
          do { gRadioEvntFlags . Bits . action_started_flag = 0; }while(0);
          (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_ACTION_STARTED;
        }
        else{

        }
      }
      break;
    case MSG_TX_ACTION_STARTED:
      {
        if((1 == gRadioEvntFlags . Bits . action_complete_flag)){
          do { gRadioEvntFlags . Bits . action_complete_flag = 0; }while(0);
          if((1 == gRadioEvntFlags . Bits . ac_success_flag)) {
            do { gRadioEvntFlags . Bits . ac_success_flag = 0; }while(0);
            (maMessage_Queu[current_msg])->u8Status.msg_state =                                                        MSG_TX_ACTION_COMPLETE_SUCCESS;
            release_current_message();
          }
          else {
            if((0) != mRetries_timmer){
              (mRetries_timmer = ((0 == mRetries_timmer)? 0: (mRetries_timmer-1)));
              do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
              do { (*((volatile uint32_t *)(0x8000408c))) = (uint32_t)((maMessage_Queu[current_msg]->u8BufSize)+4); (*((volatile uint32_t *)(0x80004084))) = (uint32_t)(maMessage_Queu[current_msg]->pu8Buffer->reserved); (*((volatile uint32_t *)(0x80004080))) = (uint32_t)&ackBox; (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | control_mode_no_cca | (1<<9) | control_seq_tx); }while(0);
              (maMessage_Queu[current_msg])->u8Status.msg_state =                                                               MSG_TX_PASSED_TO_DEVICE;
            }
            else {
              (maMessage_Queu[current_msg])->u8Status.msg_state =                                                           MSG_TX_ACTION_COMPLETE_FAIL;
              release_current_message();
            }
          }
        }
        else {
        }
      }
      break;
    case MSG_TX_RQST_ABORT:
      {
        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_ABORTED;
        release_current_message();
      }
      break;
    case MSG_TX_ABORTED:
    case MSG_TX_ACTION_COMPLETE_SUCCESS:
    case MSG_TX_ACTION_COMPLETE_FAIL:
    default:
      {
        release_current_message();
      }
      break;
  }

  return gSuccess_c;
}

/************************************************************************************
* process_rx_msg
*
* This function process any RX pending msg.
*
************************************************************************************/
static FuncReturn_t process_rx_msg (void){
  msg_rx_state_t state;
  state = (msg_rx_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
  
  if(((1 == gRadioEvntFlags . Bits . ac_crc_failed_flag) || (1 == gRadioEvntFlags . Bits . ac_not_completed_flag) || (1 == gRadioEvntFlags . Bits . checksum_failed_flag) || (1 == gRadioEvntFlags . Bits . filter_failed_flag)))
  {
    do { gRadioEvntFlags . Bits . ac_crc_failed_flag = 0; gRadioEvntFlags . Bits . ac_not_completed_flag = 0; gRadioEvntFlags . Bits . checksum_failed_flag = 0; gRadioEvntFlags . Bits . filter_failed_flag = 0; }while(0);
    (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_ACTION_COMPLETE_FAIL; 
     return gSuccess_c;
  }
  
  switch(state)
  {
    case MSG_RX_RQST:
      {
        do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
        mRetries_timmer = 0;

        (mSftclk_offset = maMessageTO[current_msg]);
        do { (*((volatile uint32_t *)(0x8000408c))) = (uint32_t)((maMessage_Queu[current_msg]->u8BufSize) << 16); (*((volatile uint32_t *)(0x80004084))) = (uint32_t)&ackBox; (*((volatile uint32_t *)(0x80004080))) = (uint32_t)(&(maMessage_Queu[current_msg]->pu8Buffer->reserved[0])); if(0 != mCplclk_offset){ ((*((volatile uint32_t *)(0x80004054))) = (*((volatile uint32_t *)(0x80004048))) + mSftclk_offset); (*((volatile uint32_t *)(0x80004040))) = ((1<<2)); } else{ (*((volatile uint32_t *)(0x80004040))) = (0); } (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | (1<<9) | control_seq_rx); }while(0);

        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_PASSED_TO_DEVICE;
      }
      break;
    case MSG_RX_PASSED_TO_DEVICE:
      {
        if(( (1 == gRadioEvntFlags . Bits . action_started_flag) || (1 == gRadioEvntFlags . Bits . action_complete_flag))){
          do { gRadioEvntFlags . Bits . action_started_flag = 0; }while(0);
          (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_ACTION_STARTED;
        }
        else{
          /* Do nothing */
        }
      }
      break;
    case MSG_RX_ACTION_STARTED:
      {
        if((1 == gRadioEvntFlags . Bits . action_complete_flag)){
          do { gRadioEvntFlags . Bits . action_complete_flag = 0; }while(0);
          if((1 == gRadioEvntFlags . Bits . ac_success_flag)) {
            do { gRadioEvntFlags . Bits . ac_success_flag = 0; }while(0);
            (maMessage_Queu[current_msg])->u8BufSize = (((maMessage_Queu[current_msg])->pu8Buffer->reserved[0])-4);
            (maMessage_Queu[current_msg])->u8Status.msg_state =                                                        MSG_RX_ACTION_COMPLETE_SUCCESS;
            release_current_message();
          }

          else {
            if(((1 == gRadioEvntFlags . Bits . timeout_flag) | (1 == gRadioEvntFlags . Bits . ac_ext_timeout_flag) | (1 == gRadioEvntFlags . Bits . ac_ext_pnd_timeout_flag))){
                do { gRadioEvntFlags . Bits . timeout_flag = 0; gRadioEvntFlags . Bits . ac_ext_timeout_flag = 0; gRadioEvntFlags . Bits . ac_ext_pnd_timeout_flag = 0; }while(0);
                (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_TIMEOUT_FAIL;
                release_current_message();
            }
            else {
              if((0) != mRetries_timmer){
                (mRetries_timmer = ((0 == mRetries_timmer)? 0: (mRetries_timmer-1)));
                do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
                (maMessage_Queu[current_msg])->u8BufSize = (0x00);
                do { (*((volatile uint32_t *)(0x8000408c))) = (uint32_t)((maMessage_Queu[current_msg]->u8BufSize) << 16); (*((volatile uint32_t *)(0x80004084))) = (uint32_t)&ackBox; (*((volatile uint32_t *)(0x80004080))) = (uint32_t)(&(maMessage_Queu[current_msg]->pu8Buffer->reserved[0])); if(0 != mCplclk_offset){ ((*((volatile uint32_t *)(0x80004054))) = (*((volatile uint32_t *)(0x80004048))) + mSftclk_offset); (*((volatile uint32_t *)(0x80004040))) = ((1<<2)); } else{ (*((volatile uint32_t *)(0x80004040))) = (0); } (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | (1<<9) | control_seq_rx); }while(0);
                (maMessage_Queu[current_msg])->u8Status.msg_state =                                                               MSG_RX_PASSED_TO_DEVICE;
              }
//              else {
              if((0) == mRetries_timmer){

                (maMessage_Queu[current_msg])->u8Status.msg_state =                                                           MSG_RX_ACTION_COMPLETE_FAIL;

                release_current_message();

              }
            }
          }

        }
        else {

        }
      }
      break;
    case MSG_RX_SYNC_FOUND:
      {
        /* Not used at this time */
      }
      break;
    case MSG_RX_RQST_ABORT:
      {
        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_ABORTED;
        release_current_message();
      }
      break;
    case MSG_RX_ABORTED:
    case MSG_RX_TIMEOUT_FAIL:
    case MSG_RX_ACTION_COMPLETE_SUCCESS:
    case MSG_RX_ACTION_COMPLETE_FAIL:
    default:
      {
        release_current_message();
      }
      break;
  }

  return gSuccess_c;
}



 uint32_t command_xcvr_ed (uint8_t chann)
  { 
          uint32_t tmpChannel;
          tmpChannel = GetCurrentChannel(gaRFSynVCODivI_c, gaRFSynVCODivF_c);
          SetChannel(chann,gaRFSynVCODivI_c[chann],gaRFSynVCODivF_c[chann]);
          (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | (1<<9) | control_seq_ed );
          return tmpChannel;
  }



/************************************************************************************
* process_ed_msg
*
* This function process any Energy Detect pending msg.
*
************************************************************************************/
static FuncReturn_t process_ed_msg (void){
  static uint32_t prev_chann;
  msg_ed_state_t state;
  state = (msg_ed_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
  switch(state)
  {
    case MSG_ED_RQST:
      {
        do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
        mRetries_timmer = 0;

        /* Use u8BufSize to store the desired channel */
        if((uintn8_t)MAX_SMAC_CHANNELS > ((maMessage_Queu[current_msg])->u8BufSize)){
          prev_chann = command_xcvr_ed((maMessage_Queu[current_msg])->u8BufSize);
          (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_ED_PASSED_TO_DEVICE;
        }
        else{
          (maMessage_Queu[current_msg])->u8Status.msg_state =                                                           MSG_ED_ACTION_COMPLETE_FAIL;
          release_current_message();
        }
      }
      break;
    case MSG_ED_PASSED_TO_DEVICE:
      {
        if((1 == gRadioEvntFlags . Bits . action_complete_flag)){
          do { gRadioEvntFlags . Bits . action_complete_flag = 0; }while(0);
          if((1 == gRadioEvntFlags . Bits . ac_success_flag)) {
            do { gRadioEvntFlags . Bits . ac_success_flag = 0; }while(0);
            (maMessage_Queu[current_msg])->u8Status.msg_state =                                                        MSG_ED_ACTION_COMPLETE_SUCCESS;          
            *((maMessage_Queu[current_msg])->pu8Buffer->u8Data) = calculate_ed_value(((*((volatile uint32_t *)(0x80009488)))));
            SetChannel(prev_chann,gaRFSynVCODivI_c[prev_chann],gaRFSynVCODivF_c[prev_chann]);
            release_current_message();
          }
          else {
            if((0) != mRetries_timmer){
              (mRetries_timmer = ((0 == mRetries_timmer)? 0: (mRetries_timmer-1)));
              do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
              (void)command_xcvr_ed((maMessage_Queu[current_msg])->u8BufSize);
            }
            else {              
              if ((1 == gRadioEvntFlags . Bits . ac_channel_busy_flag))
              {
                (maMessage_Queu[current_msg])->u8Status.msg_state =                                                        MSG_ED_ACTION_COMPLETE_SUCCESS; 
                *((maMessage_Queu[current_msg])->pu8Buffer->u8Data) = calculate_ed_value(((*((volatile uint32_t *)(0x80009488))))); 
              }
              else
              { 
              (maMessage_Queu[current_msg])->u8Status.msg_state =                                                           MSG_ED_ACTION_COMPLETE_FAIL;
              }
              SetChannel(prev_chann,gaRFSynVCODivI_c[prev_chann],gaRFSynVCODivF_c[prev_chann]);
              release_current_message();         
            }
          }
        }
        else {

        }
      }
      break;
    case MSG_ED_RQST_ABORT:
      {
        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_ED_ABORTED;
        release_current_message();
      }
      break;
    case MSG_ED_ABORTED:
    case MSG_ED_ACTION_COMPLETE_SUCCESS:
    case MSG_ED_ACTION_COMPLETE_FAIL:
    default:
      {
        release_current_message();
      }
      break;
  }

  if(((1 == gRadioEvntFlags . Bits . ac_crc_failed_flag) || (1 == gRadioEvntFlags . Bits . ac_not_completed_flag) || (1 == gRadioEvntFlags . Bits . checksum_failed_flag) || (1 == gRadioEvntFlags . Bits . filter_failed_flag)))
  {
    do { gRadioEvntFlags . Bits . ac_crc_failed_flag = 0; gRadioEvntFlags . Bits . ac_not_completed_flag = 0; gRadioEvntFlags . Bits . checksum_failed_flag = 0; gRadioEvntFlags . Bits . filter_failed_flag = 0; }while(0);
    (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_ED_ACTION_COMPLETE_FAIL; 
    release_current_message();
  }
  return gSuccess_c;
}

/************************************************************************************
* process_to_msg
*
* This function process any Timeout pending msg.
*
************************************************************************************/
static FuncReturn_t process_to_msg (void){
  msg_to_state_t state;
  state = (msg_to_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
  switch(state)
  {
    case MSG_TO_RQST:
      {
        do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
        mRetries_timmer = 0;

        do { ((*((volatile uint32_t *)(0x80004050))) = (*((volatile uint32_t *)(0x80004048))) + (uint32_t)(*(maMessage_Queu[current_msg]->pu8Buffer->u8Data))); ((*((volatile uint32_t *)(0x80004054))) = (*((volatile uint32_t *)(0x80004048))) + (uint32_t)(*(maMessage_Queu[current_msg]->pu8Buffer->u8Data))); (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | (1<<9) | control_seq_wait); }while(0);
        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TO_PASSED_TO_DEVICE;
      }
      break;
    case MSG_TO_PASSED_TO_DEVICE:
      {
        if((1 == gRadioEvntFlags . Bits . action_complete_flag)){
          do { gRadioEvntFlags . Bits . action_complete_flag = 0; }while(0);
          if(( (1 == gRadioEvntFlags . Bits . ac_success_flag)) || 
             ( (1 == gRadioEvntFlags . Bits . ac_timeout_flag)) ||
             ( ((1 == gRadioEvntFlags . Bits . timeout_flag) | (1 == gRadioEvntFlags . Bits . ac_ext_timeout_flag) | (1 == gRadioEvntFlags . Bits . ac_ext_pnd_timeout_flag)))) {
            do { gRadioEvntFlags . Bits . ac_success_flag = 0; }while(0);
            do { gRadioEvntFlags . Bits . ac_timeout_flag = 0; }while(0);
            do { gRadioEvntFlags . Bits . timeout_flag = 0; gRadioEvntFlags . Bits . ac_ext_timeout_flag = 0; gRadioEvntFlags . Bits . ac_ext_pnd_timeout_flag = 0; }while(0);
            (maMessage_Queu[current_msg])->u8Status.msg_state =                                                        MSG_TO_ACTION_COMPLETE_SUCCESS;
            release_current_message();
          }
          else {
            if((0) != mRetries_timmer){
              (mRetries_timmer = ((0 == mRetries_timmer)? 0: (mRetries_timmer-1)));
              do{ gRadioEvntFlags . Reg = (0x00000000); }while(0);
              do { ((*((volatile uint32_t *)(0x80004050))) = (*((volatile uint32_t *)(0x80004048))) + (uint32_t)(*(maMessage_Queu[current_msg]->pu8Buffer->u8Data))); ((*((volatile uint32_t *)(0x80004054))) = (*((volatile uint32_t *)(0x80004048))) + (uint32_t)(*(maMessage_Queu[current_msg]->pu8Buffer->u8Data))); (*((volatile uint32_t *)(0x8000400c))) = ((1<<11) | (1<<9) | control_seq_wait); }while(0);
            }
            else {
              (maMessage_Queu[current_msg])->u8Status.msg_state =                                                           MSG_TO_ACTION_COMPLETE_FAIL;
              release_current_message();
            }
          }
        }
        else {

        }
      }
      break;
    case MSG_TO_RQST_ABORT:
      {
        (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TO_ABORTED;
        release_current_message();
      }
      break;
    case MSG_TO_ABORTED:
    case MSG_TO_ACTION_COMPLETE_SUCCESS:
    case MSG_TO_ACTION_COMPLETE_FAIL:
    default:
      {
        release_current_message();
      }
      break;
  }

  if(((1 == gRadioEvntFlags . Bits . ac_crc_failed_flag) || (1 == gRadioEvntFlags . Bits . ac_not_completed_flag) || (1 == gRadioEvntFlags . Bits . checksum_failed_flag) || (1 == gRadioEvntFlags . Bits . filter_failed_flag)))
  {
    do { gRadioEvntFlags . Bits . ac_crc_failed_flag = 0; gRadioEvntFlags . Bits . ac_not_completed_flag = 0; gRadioEvntFlags . Bits . checksum_failed_flag = 0; gRadioEvntFlags . Bits . filter_failed_flag = 0; }while(0);
    (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TO_ACTION_COMPLETE_FAIL; 
    release_current_message();
  }


  return gSuccess_c;
}

/************************************************************************************
* calculate_ed_value function
*
* This function is called to calculate the Energy Dectect value.
*
************************************************************************************/
uint8_t calculate_ed_value(uint32_t x_agc_cca_ed_out)
{
  uint32_t u32EdVal;

  u32EdVal = x_agc_cca_ed_out & 0x000000FF;
  
  if(u32EdVal<0x0F)
  {
    u32EdVal = 0x00;
  }
  else if(u32EdVal>0x64)
  {
    u32EdVal = 0xFF;
  }
  else
  {
    u32EdVal = ((u32EdVal<<1)+u32EdVal)-0x2D;
  }

  return (uint8_t)(u32EdVal);
}

/************************************************************************************
* process_scan_req function
*
* This function is called to procees Channels Scan Requests.
*
************************************************************************************/
void process_scan_req(void)
{
  channel_num_t prevChann;
  static uint8_t u8BestVal = 255;
  static channel_num_t bestChann = gChannel11_c;
  static channel_num_t EdCh2Evaluate = gChannel11_c;
  static bool_t isSecondPass = 0;

  if(MSG_ED_ACTION_COMPLETE_SUCCESS == Scan_msg.u8Status.msg_state)
  {
    u8ScanValPerChann[EdCh2Evaluate] = Scan_msg.pu8Buffer->u8Data[0];
    if( (0 != (u8ScanValPerChann[EdCh2Evaluate])) ||(1 == isSecondPass))
    {
      if(u8ScanValPerChann[EdCh2Evaluate] < u8BestVal)
       {
        u8BestVal = u8ScanValPerChann[EdCh2Evaluate];
        bestChann = EdCh2Evaluate;
       }      
      prevChann = EdCh2Evaluate;
      EdCh2Evaluate = get_next_chann_to_scan(EdCh2Evaluate);
      isSecondPass = 0;
      if(prevChann > EdCh2Evaluate)
      {
        bScanReqFlag = 0;
        vScanReqCallBack((uint8_t)(bestChann));
        u8BestVal = 255;
        bestChann = gChannel11_c;
      }
    }
    else
    {
      isSecondPass = 1;
    }
    if(0 == is_a_handled_message(&Scan_msg))
    {
      MLMEEnergyDetect(&Scan_msg, EdCh2Evaluate);
    }
  }
  else if( (MSG_ED_ABORTED == Scan_msg.u8Status.msg_state) || 
           (MSG_ED_ACTION_COMPLETE_FAIL == Scan_msg.u8Status.msg_state) )
  {
    MLMEEnergyDetect(&Scan_msg, EdCh2Evaluate);
  }
}


/************************************************************************************
* get_next_chann_to_scan function
*
* This function answer which is the next m.
*
************************************************************************************/
channel_num_t get_next_chann_to_scan(channel_num_t currentCh)
{
  channel_num_t nextChann;
  uint8_t timeOut;
  nextChann = currentCh;

  timeOut = 0;
  while(gTotalChannels_c > timeOut)
  {
    if(gChannel26_c > nextChann)
    {
      nextChann++;
    }
    else
    {
      nextChann = gChannel11_c;
    }
    if(u16ChannToScan & (0x01<<nextChann))
      break;
    timeOut++;
  }
  return nextChann;
}

/************************************************************************************
*************************************************************************************
* Private Debug stuff
*************************************************************************************
************************************************************************************/


