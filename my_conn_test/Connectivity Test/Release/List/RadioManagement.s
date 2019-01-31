///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\RadioManagement.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDEE8.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\RadioManagement.c" -D NDEBUG -D F24MHZ -D
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
//        Test\Release\List\RadioManagement.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GetCurrentChannel
        EXTERN MLMEEnergyDetect
        EXTERN SetChannel

        PUBLIC Scan_msg
        PUBLIC abort_message
        PUBLIC ackBox
        PUBLIC bScanReqFlag
        PUBLIC change_current_message_state
        PUBLIC command_xcvr_ed
        PUBLIC dataScan
        PUBLIC execute_current_message_callback
        PUBLIC gRadioEvntFlags
        PUBLIC gaRFSynVCODivF_c
        PUBLIC gaRFSynVCODivI_c
        PUBLIC get_current_message
        PUBLIC get_next_chann_to_scan
        PUBLIC handle_new_message
        PUBLIC process_radio_msg
        PUBLIC process_scan_req
        PUBLIC radio_manager_init
        PUBLIC release_current_message
        PUBLIC u16ChannToScan
        PUBLIC u8ScanValPerChann
        PUBLIC vScanReqCallBack

// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Source\RadioManagement.c
//    1 /************************************************************************************
//    2 * Radio Management implementation
//    3 *
//    4 * (c) Copyright 2006, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected:
//   11 * Last Tested:
//   12 ************************************************************************************/
//   13 
//   14 #include "../Interface/RadioManagement.h"
//   15 #include "../Drivers/Interface/Delay.h"
//   16 #include "RadioMngmntWrapper.h"
//   17 
//   18 
//   19 
//   20 /************************************************************************************
//   21 *************************************************************************************
//   22 * Private macros
//   23 *************************************************************************************
//   24 ************************************************************************************/
//   25 #define mStartclk_init_c    (0x00000080)
//   26 #define mCplclk_init_c      (0x00001E00)
//   27 #define mSftclk_init_c      (0x000001FE)
//   28 
//   29 #define is_any_action_complete_evnt() \ 
//   30                       ( is_tx_action_completed_evnt() || \ 
//   31                         is_rx_action_completed_evnt() || \ 
//   32                         is_action_completed_evnt() )
//   33 
//   34 /************************************************************************************
//   35 *************************************************************************************
//   36 * Private prototypes
//   37 *************************************************************************************
//   38 ************************************************************************************/
//   39 static FuncReturn_t process_tx_msg (void);
//   40 static FuncReturn_t process_rx_msg (void);
//   41 static FuncReturn_t process_ed_msg (void);
//   42 static FuncReturn_t process_to_msg (void);
//   43 static uint8_t calculate_ed_value (uint32_t);
//   44 
//   45 
//   46 static bool_t is_a_handled_message(message_t * msg);
//   47 const uint8_t gaRFSynVCODivI_c[16] = gaRFSynVCODivIVal_c;

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   48 const uint32_t gaRFSynVCODivF_c[16] = gaRFSynVCODivFVal_c;
gaRFSynVCODivF_c:
        DATA32
        DC32 3495253, 6990506, 10485760, 13981013, 17476266, 20971520, 24466773
        DC32 27962026, 31457280, 1398101, 4893354, 8388608, 11883861, 15379114
        DC32 18874368, 22369621
//   49 
//   50 /************************************************************************************
//   51 *************************************************************************************
//   52 * Private type definitions
//   53 *************************************************************************************
//   54 ************************************************************************************/
//   55 #define MAX_NUM_MSG (4)
//   56 #define PROCESS_TIMEOUT  (0xffff)
//   57 
//   58 #define _inc_msg(x) (((MAX_NUM_MSG-1) == x)? 0: x+1)
//   59 
//   60 
//   61 /************************************************************************************
//   62 *************************************************************************************
//   63 * Private memory declarations
//   64 *************************************************************************************
//   65 ************************************************************************************/
//   66 static uint8_t mRetries_timmer;
//   67 
//   68 
//   69 static uint8_t current_msg;
//   70 static uint8_t next_msg_to_store;
//   71 static message_t* maMessage_Queu[MAX_NUM_MSG];
//   72 static uint32_t maMessageTO[MAX_NUM_MSG];
//   73 
//   74 //static uint32_t mStartclk_offset = mStartclk_init_c;
//   75 static uint32_t mCplclk_offset   = mCplclk_init_c;
//   76 static uint32_t mSftclk_offset   = mSftclk_init_c;
//   77 
//   78 #define _set_startclk_offset(x) (mStartclk_offset = x)
//   79 #define _set_cplclk_offset(x)   (mCplclk_offset = x)
//   80 #define _set_sftclk_offset(x)   (mSftclk_offset = x)
//   81 
//   82 
//   83 /* This constant must keep the same order than the msg_type_tag enumeration */
//   84 static const callback_t cbProcessMsg_c[MAX_MSG_TYPE] = {
//   85           (callback_t)(process_tx_msg),
//   86           (callback_t)(process_rx_msg),
//   87           (callback_t)(process_ed_msg),
//   88           (callback_t)(process_to_msg) };
//   89 
//   90 static const uint8_t mAbortStates[MAX_MSG_TYPE] = {
//   91           MSG_TX_RQST_ABORT,
//   92           MSG_RX_RQST_ABORT,
//   93           MSG_ED_RQST_ABORT,
//   94           MSG_TO_RQST_ABORT };
//   95 
//   96 
//   97 /************************************************************************************
//   98 *************************************************************************************
//   99 * Public memory declarations
//  100 *************************************************************************************
//  101 ************************************************************************************/
//  102 evnt_flags_t gRadioEvntFlags;
//  103 // when doing Tx MACA requires a valid pointer in maca_dmarx 
//  104 // in order to handle possible incoming ACK frames;
//  105 // this space can also be allocated dinamically;
//  106 uint32_t ackBox[10];
//  107 
//  108 message_t Scan_msg;
//  109 vScanCallback_t vScanReqCallBack;
//  110 uint16_t u16ChannToScan;
//  111 uint8_t u8ScanValPerChann[TOTAL_CHANN];
//  112 uint8_t dataScan[1];
//  113 bool_t bScanReqFlag;
//  114 
//  115 /************************************************************************************
//  116 *************************************************************************************
//  117 * Public functions
//  118 *************************************************************************************
//  119 ************************************************************************************/
//  120 void process_scan_req(void);
//  121 channel_num_t get_next_chann_to_scan(channel_num_t);
//  122 extern FuncReturn_t MLMEEnergyDetect  (message_t *, channel_num_t);
//  123 
//  124 
//  125 /************************************************************************************
//  126 * abort_message
//  127 *
//  128 * This function aborts a message
//  129 *
//  130 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  131 FuncReturn_t abort_message (message_t * msg){
abort_message:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  132   if(FALSE == is_a_handled_message(msg)){
        BL       is_a_handled_message
        CMP      R0,#+0
        BNE      ??abort_message_0
//  133     return gFailOutOfRange_c;
        MOVS     R0,#+1
        B        ??abort_message_1
//  134   }
//  135   else{
//  136     /* Do Nothing */
//  137   }
//  138   if(maMessage_Queu[current_msg] == msg){
??abort_message_0:
        LDR      R0,??DataTable12
        LDRB     R1,[R0, #+1]
        LSLS     R1,R1,#+2
        ADDS     R0,R0,R1
        LDR      R0,[R0, #+44]
        CMP      R0,R4
        BNE      ??abort_message_2
//  139     command_xcvr_abort();
        LDR      R0,??DataTable12_1  ;; 0x8000400c
        MOVS     R1,#+0
        STR      R1,[R0, #+52]
        LDR      R1,??DataTable12_2  ;; 0x201
        STR      R1,[R0, #+0]
//  140   }
//  141   else{
//  142     /* Do Nothing */
//  143   }
//  144   msg->u8Status.msg_state = (mAbortStates[msg->u8Status.msg_type]);
??abort_message_2:
        MOVS     R0,#+7
        LDRB     R1,[R4, #+0]
        ANDS     R1,R1,R0
        Nop      
        ADR.N    R2,mAbortStates
        LDRB     R3,[R4, #+0]
        ANDS     R0,R0,R3
        LDRB     R0,[R2, R0]
        LSLS     R0,R0,#+3
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+0]
//  145   return gSuccess_c;
        MOVS     R0,#+0
??abort_message_1:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  146 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
mAbortStates:
        DATA8
        DC8 6, 7, 4, 4
//  147 
//  148 /************************************************************************************
//  149 * is_a_handled_message
//  150 *
//  151 * This function check if a given message is placed at the queu
//  152 *
//  153 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 static bool_t is_a_handled_message(message_t * msg){
is_a_handled_message:
        PUSH     {R4}
//  155   uint8_t i;
//  156   for(i=0; i<MAX_NUM_MSG; i++){
        MOVS     R1,#+0
        LDR      R2,??DataTable12
//  157     if(maMessage_Queu[i] == msg){
??is_a_handled_message_0:
        MOVS     R3,R2
        ADDS     R3,R3,#+44
        LSLS     R4,R1,#+24
        LSRS     R4,R4,#+22
        LDR      R3,[R3, R4]
        CMP      R3,R0
        BEQ      ??is_a_handled_message_1
        ADDS     R1,R1,#+1
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+24
        CMP      R3,#+4
        BLT      ??is_a_handled_message_0
//  158       return TRUE;
//  159     }
//  160     else{
//  161       /* Do Nothing */
//  162     }
//  163   }
//  164   return FALSE;
        MOVS     R0,#+0
??is_a_handled_message_2:
        POP      {R4}
        BX       LR               ;; return
??is_a_handled_message_1:
        MOVS     R0,#+1
        B        ??is_a_handled_message_2
//  165 }
//  166 
//  167 
//  168 /************************************************************************************
//  169 * change_current_message_state
//  170 *
//  171 * This function the current message state to the "mssg_state"
//  172 *
//  173 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 void change_current_message_state (any_mssg_state_t mssg_state){
change_current_message_state:
        SUB      SP,SP,#+4
//  175   if(NULL != maMessage_Queu[current_msg]){
        LDR      R1,??DataTable12
        LDRB     R2,[R1, #+1]
        LSLS     R2,R2,#+2
        ADDS     R1,R1,R2
        LDR      R1,[R1, #+44]
        CMP      R1,#+0
        BEQ      ??change_current_message_state_0
        STR      R0,[SP, #+0]
//  176     (maMessage_Queu[current_msg])->u8Status.msg_state = (mssg_state.any_type);
        LDRB     R0,[R1, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOV      R2,SP
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+3
        ORRS     R2,R2,R0
        STRB     R2,[R1, #+0]
//  177   }
//  178   else{
//  179     /* Do Nothing */
//  180   }
//  181 }
??change_current_message_state_0:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  182 
//  183 
//  184 /************************************************************************************
//  185 * change_current_message_state
//  186 *
//  187 * This function the callback assosiated with the current message
//  188 *
//  189 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  190 void execute_current_message_callback (void){
execute_current_message_callback:
        LDR      R0,??DataTable12
        LDRB     R1,[R0, #+1]
        LSLS     R1,R1,#+2
        ADDS     R0,R0,R1
        LDR      R0,[R0, #+44]
        CMP      R0,#+0
        BNE      ??execute_current_message_callback_0
        BX       LR
??execute_current_message_callback_0:
        PUSH     {R7,LR}
//  191   if(NULL != maMessage_Queu[current_msg]){
//  192     if(NULL != ((maMessage_Queu[current_msg])->cbDataIndication)){
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BEQ      ??execute_current_message_callback_1
//  193       (maMessage_Queu[current_msg])->cbDataIndication();
        BL       ??__iar_via_R0_0
//  194     }
//  195     else {
//  196       /* Do Nothing */
//  197     }
//  198   }
//  199   else{
//  200     /* Do Nothing */
//  201   }
//  202 }
??execute_current_message_callback_1:
        POP      {R0,R3}
        BX       R3               ;; return
//  203 
//  204 /************************************************************************************
//  205 * get_current_message
//  206 *
//  207 * This function returns a pointer to the message that is been processed, it will 
//  208 * return NULL if there is no message.
//  209 *
//  210 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 message_t* get_current_message (void){
//  212   return (maMessage_Queu[current_msg]);
get_current_message:
        LDR      R0,??DataTable12
        LDRB     R1,[R0, #+1]
        LSLS     R1,R1,#+2
        ADDS     R0,R0,R1
        LDR      R0,[R0, #+44]
        BX       LR               ;; return
//  213 }
//  214 
//  215 
//  216 /************************************************************************************
//  217 * handle_new_message
//  218 *
//  219 * This function link a new msg to the queu.
//  220 *
//  221 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 FuncReturn_t handle_new_message (message_t * msg, uint32_t timeout){
handle_new_message:
        PUSH     {R4,R5}
//  223   if(NULL != maMessage_Queu[next_msg_to_store]){
        LDR      R2,??DataTable13
        LDRB     R3,[R2, #+2]
        LSLS     R4,R3,#+2
        ADDS     R4,R2,R4
        LDR      R5,[R4, #+44]
        CMP      R5,#+0
        BEQ      ??handle_new_message_0
//  224     return gFailNoResourcesAvailable_c;
        MOVS     R0,#+2
        B        ??handle_new_message_1
//  225   }
//  226   else{
//  227     msg->u8Status.msg_state = initial_state_c;
??handle_new_message_0:
        LDRB     R5,[R0, #+0]
        LSLS     R5,R5,#+29
        LSRS     R5,R5,#+29
        STRB     R5,[R0, #+0]
//  228     maMessage_Queu[next_msg_to_store] = msg;
        STR      R0,[R4, #+44]
//  229     maMessageTO[next_msg_to_store]= timeout;
        STR      R1,[R4, #+60]
//  230     next_msg_to_store = _inc_msg(next_msg_to_store);
        CMP      R3,#+3
        BNE      ??handle_new_message_2
        MOVS     R3,#+0
        B        ??handle_new_message_3
??handle_new_message_2:
        ADDS     R3,R3,#+1
??handle_new_message_3:
        STRB     R3,[R2, #+2]
//  231   }
//  232   return gSuccess_c;
        MOVS     R0,#+0
??handle_new_message_1:
        POP      {R4,R5}
        BX       LR               ;; return
//  233 }
//  234 
//  235 
//  236 /************************************************************************************
//  237 * release_current_message
//  238 *
//  239 * This function releases a message from the queu.
//  240 *
//  241 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 FuncReturn_t release_current_message (void){
//  243   if(NULL != maMessage_Queu[current_msg]){
release_current_message:
        LDR      R0,??DataTable13
        LDRB     R1,[R0, #+1]
        LSLS     R2,R1,#+2
        ADDS     R2,R0,R2
        LDR      R3,[R2, #+44]
        CMP      R3,#+0
        BEQ      ??release_current_message_0
//  244     maMessage_Queu[current_msg] = NULL;
        MOVS     R3,#+0
        STR      R3,[R2, #+44]
//  245     maMessageTO[current_msg] = 0;
        STR      R3,[R2, #+60]
//  246     current_msg = _inc_msg(current_msg);
        CMP      R1,#+3
        BNE      ??release_current_message_1
        MOVS     R1,#+0
        B        ??release_current_message_2
??release_current_message_1:
        ADDS     R1,R1,#+1
??release_current_message_2:
        STRB     R1,[R0, #+1]
//  247   }
//  248   else{
//  249     /* Do Nothing */
//  250   }
//  251   return gSuccess_c;
??release_current_message_0:
        MOVS     R0,#+0
        BX       LR               ;; return
//  252 }
//  253 
//  254 
//  255 /************************************************************************************
//  256 * radio_manager_init
//  257 *
//  258 * This initializes all the variables involved in the radio management.
//  259 *
//  260 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  261 FuncReturn_t radio_manager_init (void){
radio_manager_init:
        PUSH     {R4}
//  262   uint8_t queu_count;
//  263   for(queu_count=0; queu_count<MAX_NUM_MSG; queu_count++){
        MOVS     R1,#+0
        MOVS     R2,#+0
        LDR      R0,??DataTable12
//  264     maMessage_Queu[queu_count] = NULL;
??radio_manager_init_0:
        LSLS     R3,R2,#+2
        MOVS     R4,R0
        ADDS     R4,R4,#+44
        STR      R1,[R4, R3]
//  265     maMessageTO[queu_count] = 0;
        MOVS     R4,R0
        ADDS     R4,R4,#+60
        STR      R1,[R4, R3]
//  266   }
        ADDS     R2,R2,#+1
        CMP      R2,#+3
        BLE      ??radio_manager_init_0
//  267   current_msg = 0;
        STRB     R1,[R0, #+1]
//  268   next_msg_to_store = 0;
        STRB     R1,[R0, #+2]
//  269   clear_all_radio_events();
        STR      R1,[R0, #+80]
//  270   bScanReqFlag = FALSE;
        STRB     R1,[R0, #+3]
//  271   MSG_INIT(Scan_msg, &dataScan, NULL);
        MOVS     R2,R0
        ADDS     R2,R2,#+92
        STR      R2,[R0, #+12]
        STR      R1,[R0, #+20]
//  272   Scan_msg.u8Status.msg_state = MSG_ED_ACTION_COMPLETE_FAIL;
        LDRB     R1,[R0, #+8]
        LSLS     R1,R1,#+29
        LSRS     R1,R1,#+29
        MOVS     R2,#+24
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+8]
//  273   Scan_msg.u8Status.msg_type = ED;
        MOVS     R1,#+26
        STRB     R1,[R0, #+8]
//  274   u16ChannToScan = 0xFFFF;
        LDR      R1,??DataTable14  ;; 0xffff
        STRH     R1,[R0, #+40]
//  275   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        BX       LR               ;; return
//  276 }
//  277 
//  278 /************************************************************************************
//  279 * process_radio_msg
//  280 *
//  281 * This function process any TX/RX/EnergyDetect/Timeout pending msg.
//  282 *
//  283 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  284 FuncReturn_t process_radio_msg (void){
process_radio_msg:
        PUSH     {R4,LR}
//  285 
//  286   if(NULL != maMessage_Queu[current_msg]){
        LDR      R4,??DataTable13
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+2
        ADDS     R0,R4,R0
        LDR      R0,[R0, #+44]
        CMP      R0,#+0
        BEQ      ??process_radio_msg_0
//  287     if(MAX_MSG_TYPE > (maMessage_Queu[current_msg])->u8Status.msg_type){
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+3
        BGT      ??process_radio_msg_0
//  288       cbProcessMsg_c[(maMessage_Queu[current_msg])->u8Status.msg_type]();
        Nop      
        ADR.N    R1,cbProcessMsg_c
        LSLS     R0,R0,#+2
        LDR      R0,[R1, R0]
        BL       ??__iar_via_R0_0
//  289     }
//  290     else {
//  291       /* Do Nothing */
//  292     }
//  293   }
//  294   else {
//  295     /* Do Nothing */
//  296   }
//  297 
//  298   if(TRUE == bScanReqFlag)
??process_radio_msg_0:
        LDRB     R0,[R4, #+3]
        CMP      R0,#+1
        BNE      ??process_radio_msg_1
//  299   {
//  300     process_scan_req();
        BL       process_scan_req
//  301   }
//  302 
//  303   return gSuccess_c;
??process_radio_msg_1:
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  304 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
cbProcessMsg_c:
        DATA32
        DC32 process_tx_msg, process_rx_msg, process_ed_msg, process_to_msg
//  305 
//  306 
//  307 /************************************************************************************
//  308 *************************************************************************************
//  309 * Private functions
//  310 *************************************************************************************
//  311 ************************************************************************************/
//  312 
//  313 /************************************************************************************
//  314 * process_tx_msg
//  315 *
//  316 * This function process any TX pending msg.
//  317 *
//  318 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  319 static FuncReturn_t process_tx_msg (void){
process_tx_msg:
        PUSH     {R3-R7,LR}
//  320   msg_tx_state_t state;
//  321   state = (msg_tx_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
//  322   
//  323   if(is_action_completed_fail())
        LDR      R4,??DataTable12
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+2
        ADDS     R0,R4,R0
        LDR      R0,[R0, #+44]
        LDR      R6,[R4, #+80]
        MOVS     R5,#+40
        MOVS     R1,#+7
        LDR      R2,??DataTable14_1  ;; 0x140208
        ANDS     R2,R2,R6
        BEQ      ??process_tx_msg_0
//  324   {
//  325     clear_complete_fail_evnt();
        LDR      R2,??DataTable14_2  ;; 0xffebfdf7
        ANDS     R2,R2,R6
        STR      R2,[R4, #+80]
//  326     (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_ACTION_COMPLETE_FAIL; 
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        ORRS     R5,R5,R1
        STRB     R5,[R0, #+0]
//  327     return gSuccess_c;
        B        ??process_tx_msg_1
//  328   }
//  329   
//  330   switch(state)
??process_tx_msg_0:
        MOVS     R2,R4
        ADDS     R2,R2,#+96
        STR      R2,[SP, #+0]
        LDR      R2,??DataTable14_3  ;; 0xa03
        MOVS     R3,#+8
        LDRB     R7,[R0, #+0]
        LSRS     R7,R7,#+3
        BEQ      ??process_tx_msg_2
        CMP      R7,#+1
        BEQ      ??process_tx_msg_3
        CMP      R7,#+2
        BEQ      ??process_tx_msg_4
        CMP      R7,#+6
        BEQ      ??process_tx_msg_5
        B        ??process_tx_msg_6
//  331   {
//  332     case MSG_TX_RQST:
//  333       {
//  334         clear_all_radio_events();
??process_tx_msg_2:
        MOVS     R5,#+0
        STR      R5,[R4, #+80]
//  335         mRetries_timmer = MAX_TX_RETRIES;
        STRB     R5,[R4, #+0]
//  336 
//  337         command_xcvr_tx();
        LDRB     R4,[R0, #+8]
        ADDS     R4,R4,#+4
        LDR      R5,??DataTable14_4  ;; 0x8000408c
        STR      R4,[R5, #+0]
        LDR      R4,[R0, #+4]
        LDR      R5,??DataTable12_1  ;; 0x8000400c
        STR      R4,[R5, #+120]
        LDR      R4,[SP, #+0]
        STR      R4,[R5, #+116]
        STR      R2,[R5, #+0]
//  338         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_PASSED_TO_DEVICE;
        B.N      ??process_tx_msg_7
//  339       }
//  340       break;
//  341     case MSG_TX_PASSED_TO_DEVICE:
//  342       {
//  343         if(is_action_started_evnt()){
??process_tx_msg_3:
        MOVS     R2,#+33
        ANDS     R2,R2,R6
        BEQ      ??process_tx_msg_1
//  344           clear_action_started_evnt();
        MOVS     R2,#+1
        BICS     R6,R6,R2
        STR      R6,[R4, #+80]
//  345           (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_ACTION_STARTED;
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        MOVS     R2,#+16
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
        B        ??process_tx_msg_1
//  346         }
//  347         else{
//  348 
//  349         }
//  350       }
//  351       break;
//  352     case MSG_TX_ACTION_STARTED:
//  353       {
//  354         if(is_tx_action_completed_evnt()){
??process_tx_msg_4:
        LSLS     R7,R6,#+26
        LSRS     R7,R7,#+31
        BEQ      ??process_tx_msg_1
//  355           clear_tx_action_completed_evnt();
        MOVS     R7,#+32
        BICS     R6,R6,R7
        STR      R6,[R4, #+80]
//  356           if(is_tx_ac_success_evnt()) {
        LSLS     R7,R6,#+25
        LSRS     R7,R7,#+31
        BEQ      ??process_tx_msg_8
//  357             clear_tx_ac_success_evnt();
        MOVS     R2,R6
        MOVS     R3,#+64
        BICS     R2,R2,R3
        STR      R2,[R4, #+80]
//  358             (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  359                                                        MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        MOVS     R2,#+32
        B        ??process_tx_msg_9
//  360             release_current_message();
//  361           }
//  362           else {
//  363             if(gNull_c != mRetries_timmer){
??process_tx_msg_8:
        LDRB     R6,[R4, #+0]
        CMP      R6,#+0
        BEQ      ??process_tx_msg_10
//  364               _t_dec(mRetries_timmer);
        SUBS     R5,R6,#+1
        STRB     R5,[R4, #+0]
//  365               clear_all_radio_events();
        MOVS     R5,#+0
        STR      R5,[R4, #+80]
//  366               command_xcvr_tx();
        LDRB     R4,[R0, #+8]
        ADDS     R4,R4,#+4
        LDR      R5,??DataTable14_4  ;; 0x8000408c
        STR      R4,[R5, #+0]
        LDR      R4,??DataTable12_1  ;; 0x8000400c
        LDR      R5,[R0, #+4]
        STR      R5,[R4, #+120]
        LDR      R5,[SP, #+0]
        STR      R5,[R4, #+116]
        STR      R2,[R4, #+0]
//  367               (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  368                                                               MSG_TX_PASSED_TO_DEVICE;
??process_tx_msg_7:
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        ORRS     R3,R3,R1
        STRB     R3,[R0, #+0]
        B        ??process_tx_msg_1
//  369             }
//  370             else {
//  371               (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  372                                                           MSG_TX_ACTION_COMPLETE_FAIL;
??process_tx_msg_10:
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        ORRS     R5,R5,R1
        STRB     R5,[R0, #+0]
//  373               release_current_message();
        B        ??process_tx_msg_6
//  374             }
//  375           }
//  376         }
//  377         else {
//  378         }
//  379       }
//  380       break;
//  381     case MSG_TX_RQST_ABORT:
//  382       {
//  383         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TX_ABORTED;
??process_tx_msg_5:
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        MOVS     R2,#+56
??process_tx_msg_9:
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
//  384         release_current_message();
//  385       }
//  386       break;
//  387     case MSG_TX_ABORTED:
//  388     case MSG_TX_ACTION_COMPLETE_SUCCESS:
//  389     case MSG_TX_ACTION_COMPLETE_FAIL:
//  390     default:
//  391       {
//  392         release_current_message();
??process_tx_msg_6:
        BL       release_current_message
//  393       }
//  394       break;
//  395   }
//  396 
//  397   return gSuccess_c;
??process_tx_msg_1:
        B.N      ?Subroutine0
//  398 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DATA32
        DC32     mRetries_timmer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DATA32
        DC32     0x8000400c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DATA32
        DC32     0x201
//  399 
//  400 /************************************************************************************
//  401 * process_rx_msg
//  402 *
//  403 * This function process any RX pending msg.
//  404 *
//  405 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  406 static FuncReturn_t process_rx_msg (void){
process_rx_msg:
        PUSH     {R3-R7,LR}
//  407   msg_rx_state_t state;
//  408   state = (msg_rx_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
//  409   
//  410   if(is_action_completed_fail())
        LDR      R6,??DataTable13
        LDRB     R0,[R6, #+1]
        LSLS     R0,R0,#+2
        ADDS     R0,R6,R0
        LDR      R4,[R0, #+44]
        LDR      R3,[R6, #+80]
        MOVS     R1,#+7
        LDR      R2,??DataTable14_1  ;; 0x140208
        ANDS     R2,R2,R3
        BEQ      ??process_rx_msg_0
//  411   {
//  412     clear_complete_fail_evnt();
        LDR      R0,??DataTable14_2  ;; 0xffebfdf7
        ANDS     R0,R0,R3
        STR      R0,[R6, #+80]
//  413     (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_ACTION_COMPLETE_FAIL; 
        LDRB     R0,[R4, #+0]
        ANDS     R1,R1,R0
        MOVS     R0,#+48
        B.N      ??process_rx_msg_1
//  414      return gSuccess_c;
//  415   }
//  416   
//  417   switch(state)
??process_rx_msg_0:
        LDRB     R5,[R4, #+0]
        MOVS     R2,R6
        ADDS     R2,R2,#+96
        STR      R2,[SP, #+0]
        MOVS     R2,#+4
        LSRS     R7,R5,#+3
        BEQ      ??process_rx_msg_2
        CMP      R7,#+1
        BEQ      ??process_rx_msg_3
        CMP      R7,#+2
        BEQ      ??process_rx_msg_4
        CMP      R7,#+3
        BEQ      ??process_rx_msg_5
        CMP      R7,#+7
        BEQ      ??process_rx_msg_6
        B        ??process_rx_msg_7
//  418   {
//  419     case MSG_RX_RQST:
//  420       {
//  421         clear_all_radio_events();
??process_rx_msg_2:
        MOVS     R3,#+0
        STR      R3,[R6, #+80]
//  422         mRetries_timmer = MAX_RX_RETRIES;
        STRB     R3,[R6, #+0]
//  423 
//  424         _set_sftclk_offset(maMessageTO[current_msg]);
        LDR      R0,[R0, #+60]
        STR      R0,[R6, #+76]
//  425         command_xcvr_rx();
        LDRB     R3,[R4, #+8]
        LSLS     R3,R3,#+16
        LDR      R5,??DataTable14_4  ;; 0x8000408c
        STR      R3,[R5, #+0]
        LDR      R3,[SP, #+0]
        LDR      R5,??DataTable15  ;; 0x8000400c
        STR      R3,[R5, #+120]
        LDR      R3,[R4, #+4]
        STR      R3,[R5, #+116]
        LDR      R3,[R5, #+60]
        ADDS     R0,R3,R0
        STR      R0,[R5, #+72]
        STR      R2,[R5, #+52]
        LDR      R0,??DataTable15_1  ;; 0xa04
        STR      R0,[R5, #+0]
//  426 
//  427         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_PASSED_TO_DEVICE;
        LDRB     R0,[R4, #+0]
        ANDS     R1,R1,R0
        MOVS     R0,#+8
        B.N      ??process_rx_msg_1
//  428       }
//  429       break;
//  430     case MSG_RX_PASSED_TO_DEVICE:
//  431       {
//  432         if(is_action_started_evnt()){
??process_rx_msg_3:
        MOVS     R0,#+33
        ANDS     R0,R0,R3
        BEQ      ??process_rx_msg_5
//  433           clear_action_started_evnt();
        MOVS     R0,#+1
        BICS     R3,R3,R0
        STR      R3,[R6, #+80]
//  434           (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_ACTION_STARTED;
        LDRB     R0,[R4, #+0]
        ANDS     R1,R1,R0
        MOVS     R0,#+16
??process_rx_msg_1:
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+0]
        B        ??process_rx_msg_5
//  435         }
//  436         else{
//  437           /* Do nothing */
//  438         }
//  439       }
//  440       break;
//  441     case MSG_RX_ACTION_STARTED:
//  442       {
//  443         if(is_rx_action_completed_evnt()){
??process_rx_msg_4:
        LSLS     R5,R3,#+26
        LSRS     R5,R5,#+31
        BEQ      ??process_rx_msg_5
//  444           clear_rx_action_completed_evnt();
        MOVS     R5,#+32
        BICS     R3,R3,R5
        STR      R3,[R6, #+80]
//  445           if(is_rx_ac_success_evnt()) {
        LSLS     R5,R3,#+25
        LSRS     R5,R5,#+31
        BEQ      ??process_rx_msg_8
//  446             clear_rx_ac_success_evnt();
        MOVS     R2,#+64
        BICS     R3,R3,R2
        STR      R3,[R6, #+80]
//  447             (maMessage_Queu[current_msg])->u8BufSize = get_rx_packet_sz();
        LDR      R2,[R4, #+4]
        LDRB     R2,[R2, #+0]
        SUBS     R2,R2,#+4
        STRB     R2,[R4, #+8]
//  448             (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  449                                                        MSG_RX_ACTION_COMPLETE_SUCCESS;
        LDR      R0,[R0, #+44]
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        MOVS     R2,#+40
        B.N      ??process_rx_msg_9
//  450             release_current_message();
//  451           }
//  452 
//  453           else {
//  454             if(is_timeout_evnt()){
??process_rx_msg_8:
        LSLS     R7,R3,#+29
        LSRS     R5,R7,#+31
        MOV      R12,R5
        LSLS     R5,R3,#+17
        LSRS     R7,R5,#+31
        MOV      R5,R12
        ORRS     R7,R7,R5
        MOV      R12,R7
        LSLS     R7,R3,#+16
        LSRS     R5,R7,#+31
        MOV      R7,R12
        ORRS     R5,R5,R7
        BEQ      ??process_rx_msg_10
//  455                 clear_timeout_evnt();
        LDR      R0,??DataTable16  ;; 0xffff3ffb
        ANDS     R0,R0,R3
        STR      R0,[R6, #+80]
//  456                 (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_TIMEOUT_FAIL;
        LDRB     R0,[R4, #+0]
        ANDS     R1,R1,R0
        MOVS     R0,#+32
        B        ??process_rx_msg_11
//  457                 release_current_message();
//  458             }
//  459             else {
//  460               if(gNull_c != mRetries_timmer){
??process_rx_msg_10:
        LDRB     R3,[R6, #+0]
        CMP      R3,#+0
        BEQ      ??process_rx_msg_12
//  461                 _t_dec(mRetries_timmer);
        SUBS     R3,R3,#+1
        STRB     R3,[R6, #+0]
//  462                 clear_all_radio_events();
        STR      R5,[R6, #+80]
//  463                 (maMessage_Queu[current_msg])->u8BufSize = (0x00);
        STRB     R5,[R4, #+8]
//  464                 command_xcvr_rx();
        LDR      R4,[R0, #+44]
        LDRB     R5,[R4, #+8]
        LSLS     R5,R5,#+16
        LDR      R7,??DataTable14_4  ;; 0x8000408c
        STR      R5,[R7, #+0]
        LDR      R5,??DataTable15  ;; 0x8000400c
        LDR      R7,[SP, #+0]
        STR      R7,[R5, #+120]
        LDR      R7,[R4, #+4]
        STR      R7,[R5, #+116]
        LDR      R7,[R5, #+60]
        LDR      R6,[R6, #+76]
        ADDS     R6,R7,R6
        STR      R6,[R5, #+72]
        STR      R2,[R5, #+52]
        LDR      R2,??DataTable15_1  ;; 0xa04
        STR      R2,[R5, #+0]
//  465                 (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  466                                                               MSG_RX_PASSED_TO_DEVICE;
        LDRB     R2,[R4, #+0]
        ANDS     R2,R2,R1
        MOVS     R5,#+8
        ORRS     R5,R5,R2
        STRB     R5,[R4, #+0]
//  467               }
//  468 //              else {
//  469               if(gNull_c == mRetries_timmer){
        LSLS     R3,R3,#+24
        BNE      ??process_rx_msg_5
//  470 
//  471                 (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  472                                                           MSG_RX_ACTION_COMPLETE_FAIL;
??process_rx_msg_12:
        LDR      R0,[R0, #+44]
        LDRB     R2,[R0, #+0]
        ANDS     R1,R1,R2
        MOVS     R2,#+48
??process_rx_msg_9:
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
//  473 
//  474                 release_current_message();
        B        ??process_rx_msg_7
//  475 
//  476               }
//  477             }
//  478           }
//  479 
//  480         }
//  481         else {
//  482 
//  483         }
//  484       }
//  485       break;
//  486     case MSG_RX_SYNC_FOUND:
//  487       {
//  488         /* Not used at this time */
//  489       }
//  490       break;
//  491     case MSG_RX_RQST_ABORT:
//  492       {
//  493         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_RX_ABORTED;
??process_rx_msg_6:
        ANDS     R1,R1,R5
        MOVS     R0,#+64
??process_rx_msg_11:
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+0]
//  494         release_current_message();
//  495       }
//  496       break;
//  497     case MSG_RX_ABORTED:
//  498     case MSG_RX_TIMEOUT_FAIL:
//  499     case MSG_RX_ACTION_COMPLETE_SUCCESS:
//  500     case MSG_RX_ACTION_COMPLETE_FAIL:
//  501     default:
//  502       {
//  503         release_current_message();
??process_rx_msg_7:
        BL       release_current_message
//  504       }
//  505       break;
//  506   }
//  507 
//  508   return gSuccess_c;
??process_rx_msg_5:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  509 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R0,#+0
??Subroutine0_0:
        POP      {R1,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DATA32
        DC32     mRetries_timmer
//  510 
//  511 
//  512 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  513  uint32_t command_xcvr_ed (uint8_t chann)
//  514   { 
command_xcvr_ed:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
//  515           uint32_t tmpChannel;
//  516           tmpChannel = GetCurrentChannel(gaRFSynVCODivI_c, gaRFSynVCODivF_c);
        ADR.N    R4,gaRFSynVCODivI_c
        LDR      R5,??DataTable16_1
        MOVS     R1,R5
        MOVS     R0,R4
        BL       GetCurrentChannel
        MOVS     R7,R0
//  517           _set_channel(chann);
        MOVS     R0,R6
        LSLS     R1,R0,#+2
        LDR      R2,[R5, R1]
        LDRB     R1,[R4, R0]
        BL       SetChannel
//  518           maca_control = (control_prm | control_asap | control_seq_ed );
        LDR      R0,??DataTable16_2  ;; 0xa07
        LDR      R1,??DataTable15  ;; 0x8000400c
        STR      R0,[R1, #+0]
//  519           return tmpChannel;
        MOVS     R0,R7
        B.N      ??Subroutine0_0
//  520   }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DATA32
        DC32     0xffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DATA32
        DC32     0x140208

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DATA32
        DC32     0xffebfdf7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DATA32
        DC32     0xa03

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DATA32
        DC32     0x8000408c
//  521 
//  522 
//  523 
//  524 /************************************************************************************
//  525 * process_ed_msg
//  526 *
//  527 * This function process any Energy Detect pending msg.
//  528 *
//  529 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  530 static FuncReturn_t process_ed_msg (void){
process_ed_msg:
        PUSH     {R4-R6,LR}
//  531   static uint32_t prev_chann;
//  532   msg_ed_state_t state;
//  533   state = (msg_ed_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
//  534   switch(state)
        LDR      R4,??DataTable17
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+2
        ADDS     R5,R4,R0
        LDR      R1,[R5, #+44]
        LDRB     R2,[R1, #+0]
        MOVS     R0,#+0
        LSRS     R3,R2,#+3
        BEQ      ??process_ed_msg_0
        CMP      R3,#+1
        BEQ      ??process_ed_msg_1
        CMP      R3,#+4
        BEQ      ??process_ed_msg_2
        B        ??process_ed_msg_3
//  535   {
//  536     case MSG_ED_RQST:
//  537       {
//  538         clear_all_radio_events();
??process_ed_msg_0:
        STR      R0,[R4, #+80]
//  539         mRetries_timmer = MAX_ED_RETRIES;
        STRB     R0,[R4, #+0]
//  540 
//  541         /* Use u8BufSize to store the desired channel */
//  542         if((uintn8_t)MAX_SMAC_CHANNELS > ((maMessage_Queu[current_msg])->u8BufSize)){
        LDRB     R0,[R1, #+8]
        CMP      R0,#+16
        BGE      ??process_ed_msg_4
//  543           prev_chann = command_xcvr_ed((maMessage_Queu[current_msg])->u8BufSize);
        BL       command_xcvr_ed
        STR      R0,[R4, #+88]
//  544           (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_ED_PASSED_TO_DEVICE;
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        LDRB     R1,[R4, #+1]
        LSLS     R1,R1,#+2
        LDR      R0,[R0, R1]
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+29
        LSRS     R1,R1,#+29
        MOVS     R2,#+8
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
        B        ??process_ed_msg_5
//  545         }
//  546         else{
//  547           (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  548                                                           MSG_ED_ACTION_COMPLETE_FAIL;
??process_ed_msg_4:
        LDRB     R0,[R1, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R2,#+24
        B        ??process_ed_msg_6
//  549           release_current_message();
//  550         }
//  551       }
//  552       break;
//  553     case MSG_ED_PASSED_TO_DEVICE:
//  554       {
//  555         if(is_action_completed_evnt()){
??process_ed_msg_1:
        LDR      R2,[R4, #+80]
        LSLS     R3,R2,#+26
        LSRS     R3,R3,#+31
        BEQ      ??process_ed_msg_5
//  556           clear_action_completed_evnt();
        MOVS     R3,#+32
        BICS     R2,R2,R3
        STR      R2,[R4, #+80]
//  557           if(is_ac_success_evnt()) {
        MOVS     R3,#+16
        LSLS     R6,R2,#+25
        LSRS     R6,R6,#+31
        BEQ      ??process_ed_msg_7
//  558             clear_ac_success_evnt();
        MOVS     R0,#+64
        BICS     R2,R2,R0
        STR      R2,[R4, #+80]
//  559             (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  560                                                        MSG_ED_ACTION_COMPLETE_SUCCESS;          
        LDRB     R0,[R1, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        ORRS     R3,R3,R0
        STRB     R3,[R1, #+0]
//  561             *((maMessage_Queu[current_msg])->pu8Buffer->u8Data) = calculate_ed_value(_get_ed_value());
        LDR      R0,??DataTable18  ;; 0x80009488
        LDR      R0,[R0, #+0]
        BL       calculate_ed_value
        LDR      R1,[R5, #+44]
        LDR      R1,[R1, #+4]
        STRB     R0,[R1, #+2]
//  562             _set_channel(prev_chann);
        LDR      R0,??DataTable16_1
        LDR      R1,[R4, #+88]
        LSLS     R1,R1,#+2
        LDR      R2,[R0, R1]
        ADR.N    R0,gaRFSynVCODivI_c
        LDR      R1,[R4, #+88]
        LDRB     R1,[R0, R1]
        LDR      R0,[R4, #+88]
        B.N      ??process_ed_msg_8
//  563             release_current_message();
//  564           }
//  565           else {
//  566             if(gNull_c != mRetries_timmer){
??process_ed_msg_7:
        LDRB     R6,[R4, #+0]
        CMP      R6,#+0
        BEQ      ??process_ed_msg_9
//  567               _t_dec(mRetries_timmer);
        SUBS     R2,R6,#+1
        STRB     R2,[R4, #+0]
//  568               clear_all_radio_events();
        STR      R0,[R4, #+80]
//  569               (void)command_xcvr_ed((maMessage_Queu[current_msg])->u8BufSize);
        LDRB     R0,[R1, #+8]
        BL       command_xcvr_ed
        B        ??process_ed_msg_5
//  570             }
//  571             else {              
//  572               if (is_channel_busy_evnt())
??process_ed_msg_9:
        LDRB     R0,[R1, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        LSLS     R6,R2,#+23
        LSRS     R6,R6,#+31
        BEQ      ??process_ed_msg_10
//  573               {
//  574                 (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  575                                                        MSG_ED_ACTION_COMPLETE_SUCCESS; 
        ORRS     R3,R3,R0
        STRB     R3,[R1, #+0]
//  576                 *((maMessage_Queu[current_msg])->pu8Buffer->u8Data) = calculate_ed_value(_get_ed_value()); 
        LDR      R0,??DataTable18  ;; 0x80009488
        LDR      R0,[R0, #+0]
        BL       calculate_ed_value
        LDR      R1,[R5, #+44]
        LDR      R1,[R1, #+4]
        STRB     R0,[R1, #+2]
        B        ??process_ed_msg_11
//  577               }
//  578               else
//  579               { 
//  580               (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  581                                                           MSG_ED_ACTION_COMPLETE_FAIL;
??process_ed_msg_10:
        MOVS     R2,#+24
        ORRS     R2,R2,R0
        STRB     R2,[R1, #+0]
//  582               }
//  583               _set_channel(prev_chann);
??process_ed_msg_11:
        LDR      R0,[R4, #+88]
        LDR      R1,??DataTable16_1
        LSLS     R2,R0,#+2
        LDR      R2,[R1, R2]
        ADR.N    R1,gaRFSynVCODivI_c
        LDRB     R1,[R1, R0]
??process_ed_msg_8:
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       SetChannel
//  584               release_current_message();         
        B        ??process_ed_msg_3
//  585             }
//  586           }
//  587         }
//  588         else {
//  589 
//  590         }
//  591       }
//  592       break;
//  593     case MSG_ED_RQST_ABORT:
//  594       {
//  595         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_ED_ABORTED;
??process_ed_msg_2:
        LSLS     R0,R2,#+29
        LSRS     R0,R0,#+29
        MOVS     R2,#+40
??process_ed_msg_6:
        ORRS     R2,R2,R0
        STRB     R2,[R1, #+0]
//  596         release_current_message();
//  597       }
//  598       break;
//  599     case MSG_ED_ABORTED:
//  600     case MSG_ED_ACTION_COMPLETE_SUCCESS:
//  601     case MSG_ED_ACTION_COMPLETE_FAIL:
//  602     default:
//  603       {
//  604         release_current_message();
??process_ed_msg_3:
        BL       release_current_message
//  605       }
//  606       break;
//  607   }
//  608 
//  609   if(is_action_completed_fail())
??process_ed_msg_5:
        LDR      R0,[R4, #+80]
        LDR      R1,??DataTable18_1  ;; 0x140208
        ANDS     R1,R1,R0
        BEQ      ??process_ed_msg_12
//  610   {
//  611     clear_complete_fail_evnt();
        LDR      R1,??DataTable18_2  ;; 0xffebfdf7
        ANDS     R1,R1,R0
        STR      R1,[R4, #+80]
//  612     (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_ED_ACTION_COMPLETE_FAIL; 
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        LDRB     R1,[R4, #+1]
        LSLS     R1,R1,#+2
        LDR      R0,[R0, R1]
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+29
        LSRS     R1,R1,#+29
        MOVS     R2,#+24
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
//  613     release_current_message();
        BL       release_current_message
//  614   }
//  615   return gSuccess_c;
??process_ed_msg_12:
        MOVS     R0,#+0
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  616 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DATA32
        DC32     0x8000400c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DATA32
        DC32     0xa04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
gaRFSynVCODivI_c:
        DATA8
        DC8 47, 47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48, 48, 48, 48, 48
//  617 
//  618 /************************************************************************************
//  619 * process_to_msg
//  620 *
//  621 * This function process any Timeout pending msg.
//  622 *
//  623 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  624 static FuncReturn_t process_to_msg (void){
process_to_msg:
        PUSH     {R3-R7,LR}
//  625   msg_to_state_t state;
//  626   state = (msg_to_state_t)((maMessage_Queu[current_msg])->u8Status.msg_state);
//  627   switch(state)
        LDR      R4,??DataTable17
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+2
        ADDS     R0,R4,R0
        LDR      R0,[R0, #+44]
        LDRB     R6,[R0, #+0]
        LDR      R1,??DataTable18_3  ;; 0x8000400c
        LDR      R2,??DataTable18_4  ;; 0xa02
        MOVS     R5,#+7
        MOVS     R3,#+0
        LSRS     R7,R6,#+3
        BEQ      ??process_to_msg_0
        CMP      R7,#+1
        BEQ      ??process_to_msg_1
        CMP      R7,#+4
        BEQ      ??process_to_msg_2
        B        ??process_to_msg_3
//  628   {
//  629     case MSG_TO_RQST:
//  630       {
//  631         clear_all_radio_events();
??process_to_msg_0:
        STR      R3,[R4, #+80]
//  632         mRetries_timmer = MAX_TO_RETRIES;
        STRB     R3,[R4, #+0]
//  633 
//  634         command_xcvr_to();
        LDR      R3,[R1, #+60]
        LDR      R6,[R0, #+4]
        LDRB     R6,[R6, #+2]
        ADDS     R3,R3,R6
        STR      R3,[R1, #+68]
        LDR      R3,[R1, #+60]
        LDR      R6,[R0, #+4]
        LDRB     R6,[R6, #+2]
        ADDS     R3,R3,R6
        STR      R3,[R1, #+72]
        STR      R2,[R1, #+0]
//  635         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TO_PASSED_TO_DEVICE;
        LDRB     R1,[R0, #+0]
        ANDS     R1,R1,R5
        MOVS     R2,#+8
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
//  636       }
//  637       break;
        B        ??process_to_msg_4
//  638     case MSG_TO_PASSED_TO_DEVICE:
//  639       {
//  640         if(is_action_completed_evnt()){
??process_to_msg_1:
        LDR      R6,[R4, #+80]
        LSLS     R7,R6,#+26
        LSRS     R7,R7,#+31
        BEQ      ??process_to_msg_4
//  641           clear_action_completed_evnt();
        MOVS     R7,#+32
        BICS     R6,R6,R7
        STR      R6,[R4, #+80]
//  642           if(( is_ac_success_evnt()) || 
//  643              ( is_ac_timeout_evnt()) ||
//  644              ( is_timeout_evnt())) {
        MOVS     R6,#+80
        LDRB     R6,[R4, R6]
        MOVS     R7,#+192
        ANDS     R7,R7,R6
        BNE      ??process_to_msg_5
        LDR      R6,[R4, #+80]
        LSLS     R6,R6,#+29
        LSRS     R7,R6,#+31
        MOV      R12,R7
        LDR      R6,[R4, #+80]
        LSLS     R7,R6,#+17
        LSRS     R6,R7,#+31
        MOV      R7,R12
        ORRS     R6,R6,R7
        MOV      R12,R6
        LDR      R6,[R4, #+80]
        LSLS     R6,R6,#+16
        LSRS     R7,R6,#+31
        MOV      R6,R12
        ORRS     R7,R7,R6
        BEQ      ??process_to_msg_6
//  645             clear_ac_success_evnt();
//  646             clear_ac_timeout_evnt();
//  647             clear_timeout_evnt();
??process_to_msg_5:
        LDR      R1,[R4, #+80]
        LDR      R2,??DataTable18_5  ;; 0xffff3f3b
        ANDS     R2,R2,R1
        STR      R2,[R4, #+80]
//  648             (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  649                                                        MSG_TO_ACTION_COMPLETE_SUCCESS;
        LDRB     R1,[R0, #+0]
        ANDS     R1,R1,R5
        MOVS     R2,#+16
        B.N      ??process_to_msg_7
//  650             release_current_message();
//  651           }
//  652           else {
//  653             if(gNull_c != mRetries_timmer){
??process_to_msg_6:
        LDRB     R6,[R4, #+0]
        CMP      R6,#+0
        BEQ      ??process_to_msg_8
//  654               _t_dec(mRetries_timmer);
        SUBS     R6,R6,#+1
        STRB     R6,[R4, #+0]
//  655               clear_all_radio_events();
        STR      R3,[R4, #+80]
//  656               command_xcvr_to();
        LDR      R3,[R1, #+60]
        LDR      R6,[R0, #+4]
        LDRB     R6,[R6, #+2]
        ADDS     R3,R3,R6
        STR      R3,[R1, #+68]
        LDR      R3,[R1, #+60]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+2]
        ADDS     R0,R3,R0
        STR      R0,[R1, #+72]
        STR      R2,[R1, #+0]
        B        ??process_to_msg_4
//  657             }
//  658             else {
//  659               (maMessage_Queu[current_msg])->u8Status.msg_state = \ 
//  660                                                           MSG_TO_ACTION_COMPLETE_FAIL;
??process_to_msg_8:
        LDRB     R1,[R0, #+0]
        ANDS     R1,R1,R5
        MOVS     R2,#+24
??process_to_msg_7:
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+0]
//  661               release_current_message();
        B        ??process_to_msg_3
//  662             }
//  663           }
//  664         }
//  665         else {
//  666 
//  667         }
//  668       }
//  669       break;
//  670     case MSG_TO_RQST_ABORT:
//  671       {
//  672         (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TO_ABORTED;
??process_to_msg_2:
        ANDS     R6,R6,R5
        MOVS     R1,#+40
        ORRS     R1,R1,R6
        STRB     R1,[R0, #+0]
//  673         release_current_message();
//  674       }
//  675       break;
//  676     case MSG_TO_ABORTED:
//  677     case MSG_TO_ACTION_COMPLETE_SUCCESS:
//  678     case MSG_TO_ACTION_COMPLETE_FAIL:
//  679     default:
//  680       {
//  681         release_current_message();
??process_to_msg_3:
        BL       release_current_message
//  682       }
//  683       break;
//  684   }
//  685 
//  686   if(is_action_completed_fail())
??process_to_msg_4:
        LDR      R0,[R4, #+80]
        LDR      R1,??DataTable18_1  ;; 0x140208
        ANDS     R1,R1,R0
        BEQ      ??process_to_msg_9
//  687   {
//  688     clear_complete_fail_evnt();
        LDR      R1,??DataTable18_2  ;; 0xffebfdf7
        ANDS     R1,R1,R0
        STR      R1,[R4, #+80]
//  689     (maMessage_Queu[current_msg])->u8Status.msg_state = MSG_TO_ACTION_COMPLETE_FAIL; 
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        LDRB     R1,[R4, #+1]
        LSLS     R1,R1,#+2
        LDR      R0,[R0, R1]
        LDRB     R1,[R0, #+0]
        ANDS     R5,R5,R1
        MOVS     R1,#+24
        ORRS     R1,R1,R5
        STRB     R1,[R0, #+0]
//  690     release_current_message();
        BL       release_current_message
//  691   }
//  692 
//  693 
//  694   return gSuccess_c;
??process_to_msg_9:
        B.N      ?Subroutine0
//  695 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DATA32
        DC32     0xffff3ffb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DATA32
        DC32     gaRFSynVCODivF_c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DATA32
        DC32     0xa07
//  696 
//  697 /************************************************************************************
//  698 * calculate_ed_value function
//  699 *
//  700 * This function is called to calculate the Energy Dectect value.
//  701 *
//  702 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  703 uint8_t calculate_ed_value(uint32_t x_agc_cca_ed_out)
//  704 {
calculate_ed_value:
        MOVS     R1,R0
//  705   uint32_t u32EdVal;
//  706 
//  707   u32EdVal = x_agc_cca_ed_out & 0x000000FF;
        MOVS     R0,#+255
        ANDS     R1,R1,R0
//  708   
//  709   if(u32EdVal<0x0F)
        CMP      R1,#+15
        BCS      ??calculate_ed_value_0
//  710   {
//  711     u32EdVal = 0x00;
        MOVS     R0,#+0
        B        ??calculate_ed_value_1
//  712   }
//  713   else if(u32EdVal>0x64)
??calculate_ed_value_0:
        CMP      R1,#+101
        BCS      ??calculate_ed_value_1
//  714   {
//  715     u32EdVal = 0xFF;
//  716   }
//  717   else
//  718   {
//  719     u32EdVal = ((u32EdVal<<1)+u32EdVal)-0x2D;
        LSLS     R0,R1,#+1
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+45
//  720   }
//  721 
//  722   return (uint8_t)(u32EdVal);
??calculate_ed_value_1:
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BX       LR               ;; return
//  723 }
//  724 
//  725 /************************************************************************************
//  726 * process_scan_req function
//  727 *
//  728 * This function is called to procees Channels Scan Requests.
//  729 *
//  730 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  731 void process_scan_req(void)
//  732 {
process_scan_req:
        PUSH     {R4-R6,LR}
//  733   channel_num_t prevChann;
//  734   static uint8_t u8BestVal = 255;
//  735   static channel_num_t bestChann = CHANNEL11;
//  736   static channel_num_t EdCh2Evaluate = CHANNEL11;
//  737   static bool_t isSecondPass = FALSE;
//  738 
//  739   if(MSG_ED_ACTION_COMPLETE_SUCCESS == Scan_msg.u8Status.msg_state)
        LDR      R5,??DataTable17
        LDRB     R0,[R5, #+8]
        LSRS     R0,R0,#+3
        LDRB     R1,[R5, #+6]
        CMP      R0,#+2
        BNE      ??process_scan_req_0
//  740   {
//  741     u8ScanValPerChann[EdCh2Evaluate] = Scan_msg.pu8Buffer->u8Data[0];
        LDR      R0,[R5, #+12]
        LDRB     R0,[R0, #+2]
        ADDS     R2,R5,R1
        STRB     R0,[R2, #+24]
//  742     if( (0 != (u8ScanValPerChann[EdCh2Evaluate])) ||(TRUE == isSecondPass))
        CMP      R0,#+0
        BNE      ??process_scan_req_1
        LDRB     R2,[R5, #+7]
        CMP      R2,#+1
        BNE      ??process_scan_req_2
//  743     {
//  744       if(u8ScanValPerChann[EdCh2Evaluate] < u8BestVal)
??process_scan_req_1:
        LDRB     R2,[R5, #+4]
        CMP      R0,R2
        BCS      ??process_scan_req_3
//  745        {
//  746         u8BestVal = u8ScanValPerChann[EdCh2Evaluate];
        STRB     R0,[R5, #+4]
//  747         bestChann = EdCh2Evaluate;
        STRB     R1,[R5, #+5]
//  748        }      
//  749       prevChann = EdCh2Evaluate;
??process_scan_req_3:
        MOVS     R4,R1
//  750       EdCh2Evaluate = get_next_chann_to_scan(EdCh2Evaluate);
        MOVS     R0,R1
        BL       get_next_chann_to_scan
        STRB     R0,[R5, #+6]
//  751       isSecondPass = FALSE;
        MOVS     R6,#+0
        STRB     R6,[R5, #+7]
//  752       if(prevChann > EdCh2Evaluate)
        CMP      R0,R4
        BCS      ??process_scan_req_4
//  753       {
//  754         bScanReqFlag = FALSE;
        STRB     R6,[R5, #+3]
//  755         vScanReqCallBack((uint8_t)(bestChann));
        LDRB     R0,[R5, #+5]
        LDR      R1,[R5, #+84]
        BL       ??__iar_via_R1_0
//  756         u8BestVal = 255;
        MOVS     R0,#+255
        STRB     R0,[R5, #+4]
//  757         bestChann = CHANNEL11;
        STRB     R6,[R5, #+5]
        B        ??process_scan_req_4
//  758       }
//  759     }
//  760     else
//  761     {
//  762       isSecondPass = TRUE;
??process_scan_req_2:
        MOVS     R0,#+1
        STRB     R0,[R5, #+7]
//  763     }
//  764     if(FALSE == is_a_handled_message(&Scan_msg))
??process_scan_req_4:
        MOVS     R0,R5
        ADDS     R0,R0,#+8
        BL       is_a_handled_message
        CMP      R0,#+0
        BNE      ??process_scan_req_5
//  765     {
//  766       MLMEEnergyDetect(&Scan_msg, EdCh2Evaluate);
        LDRB     R1,[R5, #+6]
        B        ??process_scan_req_6
//  767     }
//  768   }
//  769   else if( (MSG_ED_ABORTED == Scan_msg.u8Status.msg_state) || 
//  770            (MSG_ED_ACTION_COMPLETE_FAIL == Scan_msg.u8Status.msg_state) )
??process_scan_req_0:
        CMP      R0,#+5
        BEQ      ??process_scan_req_6
        CMP      R0,#+3
        BNE      ??process_scan_req_5
//  771   {
//  772     MLMEEnergyDetect(&Scan_msg, EdCh2Evaluate);
??process_scan_req_6:
        MOVS     R0,R5
        ADDS     R0,R0,#+8
        BL       MLMEEnergyDetect
//  773   }
//  774 }
??process_scan_req_5:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DATA32
        DC32     mRetries_timmer

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
mRetries_timmer:
        DATA8
        DC8 0
        DC8 0
        DC8 0
bScanReqFlag:
        DC8 0
        DC8 255
        DC8 0
        DC8 0
        DC8 0
Scan_msg:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
u8ScanValPerChann:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
u16ChannToScan:
        DATA16
        DC8 0, 0
        DATA8
        DC8 0, 0
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DATA32
        DC32 510
gRadioEvntFlags:
        DC8 0, 0, 0, 0
vScanReqCallBack:
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
dataScan:
        DATA8
        DC8 0
        DC8 0, 0, 0
ackBox:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DATA32
        DC32 7680
//  775 
//  776 
//  777 /************************************************************************************
//  778 * get_next_chann_to_scan function
//  779 *
//  780 * This function answer which is the next m.
//  781 *
//  782 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  783 channel_num_t get_next_chann_to_scan(channel_num_t currentCh)
//  784 {
get_next_chann_to_scan:
        PUSH     {R4}
//  785   channel_num_t nextChann;
//  786   uint8_t timeOut;
//  787   nextChann = currentCh;
//  788 
//  789   timeOut = 0;
        MOVS     R1,#+16
        LDR      R2,??DataTable18_6
//  790   while(TOTAL_CHANN > timeOut)
//  791   {
//  792     if(CHANNEL26 > nextChann)
??get_next_chann_to_scan_0:
        LSLS     R3,R0,#+24
        LSRS     R3,R3,#+24
        CMP      R3,#+15
        BGE      ??get_next_chann_to_scan_1
//  793     {
//  794       nextChann++;
        ADDS     R0,R0,#+1
        B        ??get_next_chann_to_scan_2
//  795     }
//  796     else
//  797     {
//  798       nextChann = CHANNEL11;
??get_next_chann_to_scan_1:
        MOVS     R0,#+0
//  799     }
//  800     if(u16ChannToScan & (0x01<<nextChann))
??get_next_chann_to_scan_2:
        LDRH     R3,[R2, #+40]
        MOVS     R4,#+1
        LSLS     R4,R4,R0
        TST      R3,R4
        BNE      ??get_next_chann_to_scan_3
//  801       break;
//  802     timeOut++;
        SUBS     R1,R1,#+1
//  803   }
        BNE      ??get_next_chann_to_scan_0
//  804   return nextChann;
??get_next_chann_to_scan_3:
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        POP      {R4}
        BX       LR               ;; return
//  805 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DATA32
        DC32     0x80009488

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DATA32
        DC32     0x140208

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DATA32
        DC32     0xffebfdf7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DATA32
        DC32     0x8000400c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DATA32
        DC32     0xa02

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DATA32
        DC32     0xffff3f3b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DATA32
        DC32     mRetries_timmer

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        THUMB
??__iar_via_R0_0:
        BX       R0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        THUMB
??__iar_via_R1_0:
        BX       R1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  806 
//  807 /************************************************************************************
//  808 *************************************************************************************
//  809 * Private Debug stuff
//  810 *************************************************************************************
//  811 ************************************************************************************/
//  812 
//  813 
// 
//   140 bytes in section .data
//    64 bytes in section .rodata
// 1 846 bytes in section .text
// 
// 1 842 bytes of CODE  memory (+ 4 bytes shared)
//    64 bytes of CONST memory
//   140 bytes of DATA  memory
//
//Errors: none
//Warnings: none
