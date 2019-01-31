///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  14:41:04
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Source\WirelessLinkMngmt.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWFD47.tmp
//        (D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Source\WirelessLinkMngmt.c
//        -D NDEBUG -D F24MHZ -D SECURITY_ENABLED -D MC13226Included_d=0
//        --preprocess=cs
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List -lC
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List -lB
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List
//        --diag_suppress Pe940,Pe951,Pe911 -o
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\Obj
//        --endian=little --cpu=ARM7TDMI-S --fpu=None --dlib_config
//        "C:\HDDPrograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Drivers\Interface\
//        -I D:\Users\Brus\Documents\repeater_test\Repeater\PLM\Interface\
//        --cpu_mode thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\repeater_test\Repeater\Release\List\WirelessLinkMngmt.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GetCurrentChannel
        EXTERN PhyPlmeGetLQI
        EXTERN SetChannel
        EXTERN SetPower
        EXTERN abort_message
        EXTERN bScanReqFlag
        EXTERN gaRFSynVCODivF_c
        EXTERN gaRFSynVCODivI_c
        EXTERN handle_new_message
        EXTERN u16ChannToScan
        EXTERN vScanReqCallBack

        PUBLIC MCPSDataRequest
        PUBLIC MLMEEnergyDetect
        PUBLIC MLMEGetChannelRequest
        PUBLIC MLMELinkQuality
        PUBLIC MLMEPAOutputAdjust
        PUBLIC MLMERXDisableRequest
        PUBLIC MLMERXEnableRequest
        PUBLIC MLMEScanRequest
        PUBLIC MLMESetChannelRequest

// D:\Users\Brus\Documents\repeater_test\Repeater\SMAC\Source\WirelessLinkMngmt.c
//    1 /************************************************************************************
//    2 * Wireless Link Management implementation
//    3 *
//    4 * (c) Copyright 2007, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 ************************************************************************************/
//   11 
//   12 #include "../Interface/WirelessLinkMngmt.h"
//   13 #include "../Interface/RadioManagement.h"
//   14 #include "RadioMngmntWrapper.h"
//   15 #include "../Drivers/Interface/ghdr/rcv_spi_regs.h"
//   16 #include "../Drivers/LibInterface/rif_inc.h"
//   17 #include "../Drivers/LibInterface/Synthesizer_inc.h"
//   18 #include "../../PLM/Interface/RF_Config.h"
//   19 
//   20 
//   21 /************************************************************************************
//   22 *************************************************************************************
//   23 * Private macros
//   24 *************************************************************************************
//   25 ************************************************************************************/
//   26 
//   27 /************************************************************************************
//   28 *************************************************************************************
//   29 * Private prototypes
//   30 *************************************************************************************
//   31 ************************************************************************************/
//   32 
//   33 /************************************************************************************
//   34 *************************************************************************************
//   35 * Private type definitions
//   36 *************************************************************************************
//   37 ************************************************************************************/
//   38 
//   39 /************************************************************************************
//   40 *************************************************************************************
//   41 * Private memory declarations
//   42 *************************************************************************************
//   43 ************************************************************************************/
//   44 
//   45 /************************************************************************************
//   46 *************************************************************************************
//   47 * Public functions
//   48 *************************************************************************************
//   49 ************************************************************************************/
//   50 
//   51 /************************************************************************************
//   52 * MCPSDataRequest
//   53 *
//   54 * This data primitive is used to send a SMAC packet.
//   55 *
//   56 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 FuncReturn_t MCPSDataRequest (message_t *msg)
//   58 {
MCPSDataRequest:
        PUSH     {R7,LR}
//   59   set_pmsg_as_transmission(msg);
        LDRB     R1,[R0, #+0]
        MOVS     R2,#+248
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+0]
//   60   set_pmsg_state(msg, MSG_TX_RQST);
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   61   insert_codebytes_to_pmsg(msg);
        MOVS     R1,#+126
        LDR      R2,[R0, #+4]
        STRB     R1,[R2, #+0]
        MOVS     R1,#+255
        LDR      R2,[R0, #+4]
        STRB     R1,[R2, #+1]
//   62   return handle_new_message(msg, gNull_c);
        MOVS     R1,#+0
        B.N      ?Subroutine0
//   63 }
//   64 
//   65 /************************************************************************************
//   66 * MLMESetChannelRequest
//   67 *
//   68 * This primitive is used to set the frequency where the MC1322X will operate.
//   69 *
//   70 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 FuncReturn_t MLMESetChannelRequest (channel_num_t u8channel)
//   72 {
MLMESetChannelRequest:
        PUSH     {R7,LR}
//   73   if(MAX_CHAN_NUM < u8channel){
        CMP      R0,#+16
        BLT      ??MLMESetChannelRequest_0
//   74     return gFailOutOfRange_c;   
        MOVS     R0,#+1
        B        ??MLMESetChannelRequest_1
//   75   }
//   76   else {
//   77     if(gSuccess_c != _set_channel(u8channel))
??MLMESetChannelRequest_0:
        LDR      R2,??DataTable3
        LSLS     R3,R0,#+2
        LDR      R2,[R2, R3]
        LDR      R3,??DataTable3_1
        LDRB     R1,[R3, R0]
        BL       SetChannel
        CMP      R0,#+0
        BEQ      ??MLMESetChannelRequest_1
//   78       return gFailNoValidCondition_c;
        MOVS     R0,#+3
//   79   }
//   80   return gSuccess_c;
??MLMESetChannelRequest_1:
        POP      {R1,R3}
        BX       R3               ;; return
//   81 }
//   82 
//   83 /************************************************************************************
//   84 * MLMEGetChannelRequest
//   85 *
//   86 * This primitive returns the channel number where the MC1322X is operating.
//   87 *
//   88 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 uint8_t MLMEGetChannelRequest (void)
//   90 {
MLMEGetChannelRequest:
        PUSH     {R7,LR}
//   91   return GetCurrentChannel(gaRFSynVCODivI_c, gaRFSynVCODivF_c);
        LDR      R1,??DataTable3
        LDR      R0,??DataTable3_1
        BL       GetCurrentChannel
        POP      {R1,R3}
        BX       R3               ;; return
//   92 }
//   93 
//   94 /************************************************************************************
//   95 * MLMERXEnableRequest
//   96 *
//   97 * This function enables the MC1322X for a packet reception with or without a 
//   98 * timeout using the 250 KHz clock.
//   99 *
//  100 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 FuncReturn_t MLMERXEnableRequest (message_t *msg, uint32_t timeout)
//  102 {
MLMERXEnableRequest:
        PUSH     {R7,LR}
//  103   set_pmsg_as_reception(msg);
        LDRB     R2,[R0, #+0]
        MOVS     R3,#+248
        ANDS     R3,R3,R2
        MOVS     R2,#+1
        ORRS     R2,R2,R3
        STRB     R2,[R0, #+0]
//  104   return handle_new_message(msg, timeout);
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  105 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        BL       handle_new_message
        POP      {R1,R3}
        BX       R3               ;; return
//  106 
//  107 /************************************************************************************
//  108 * MLMERXDisableRequest
//  109 *
//  110 * This function enables the MC1322X for a packet reception with or without a 
//  111 * timeout using the 250 KHz clock.
//  112 *
//  113 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 FuncReturn_t MLMERXDisableRequest (message_t *msg)
//  115 {
MLMERXDisableRequest:
        PUSH     {R7,LR}
//  116   if(RX != get_pmsg_type(msg)){
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+29
        LSRS     R1,R1,#+29
        CMP      R1,#+1
        BEQ      ??MLMERXDisableRequest_0
//  117     return gFailNoValidCondition_c;
        MOVS     R0,#+3
        B        ??MLMERXDisableRequest_1
//  118   }
//  119   else{
//  120     return abort_message(msg);
??MLMERXDisableRequest_0:
        BL       abort_message
??MLMERXDisableRequest_1:
        POP      {R1,R3}
        BX       R3               ;; return
//  121   }
//  122 }
//  123 
//  124 /************************************************************************************
//  125 * MLMEEnergyDetect 
//  126 *
//  127 * This function enables the MC1322X for a packet reception with or without a 
//  128 * timeout using the 250 KHz clock.
//  129 *
//  130 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 FuncReturn_t MLMEEnergyDetect  (message_t *msg, channel_num_t u8channel)
//  132 {
MLMEEnergyDetect:
        PUSH     {R7,LR}
//  133   
//  134   if( NULL == msg->pu8Buffer){
        LDR      R2,[R0, #+4]
        CMP      R2,#+0
        BNE      ??MLMEEnergyDetect_0
//  135     return gFailOutOfRange_c;
        MOVS     R0,#+1
        B        ??MLMEEnergyDetect_1
//  136   }
//  137   else{
//  138      set_pmsg_as_enrgy_detect(msg);
??MLMEEnergyDetect_0:
        LDRB     R2,[R0, #+0]
        MOVS     R3,#+248
        ANDS     R3,R3,R2
        MOVS     R2,#+2
        ORRS     R2,R2,R3
        STRB     R2,[R0, #+0]
//  139      set_pmsg_ed_chann(msg, u8channel);
        STRB     R1,[R0, #+8]
//  140      return handle_new_message(msg,gNull_c);
        MOVS     R1,#+0
        BL       handle_new_message
??MLMEEnergyDetect_1:
        POP      {R1,R3}
        BX       R3               ;; return
//  141   }
//  142    
//  143 }
//  144 
//  145 /************************************************************************************
//  146 * MLMELinkQuality 
//  147 *
//  148 * This function computes the LQI value of the last received message, according to 
//  149 * the following formula:
//  150 *
//  151 *    DAGC_RSSI =   Cal_factor_dB 
//  152 *                - (LNA_min_gain_dB + lna_state*(LNA_max_gain_dB-LNA_min_gain_dB)) 
//  153 *                + (IFA_max_gain_dB - 3*ifa_state) 
//  154 *                + rx_dagc_gain_state  
//  155 *
//  156 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  157 FuncReturn_t MLMELinkQuality (uint8_t * u8ReturnValue)
//  158 {
MLMELinkQuality:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  159   *u8ReturnValue = PhyPlmeGetLQI();
        BL       PhyPlmeGetLQI
        STRB     R0,[R4, #+0]
//  160   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  161 }
//  162 
//  163 
//  164 
//  165 /************************************************************************************
//  166 * MLMEPAOutputAdjust    
//  167 *
//  168 * This function adjusts the output power of the transmitter using the Power 
//  169 * Amplifier included in the MC1322X.  
//  170 *
//  171 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 FuncReturn_t MLMEPAOutputAdjust (uint8_t u8Power )
//  173 {
MLMEPAOutputAdjust:
        PUSH     {R7,LR}
//  174   
//  175   if (MAX_POWER < u8Power){
        CMP      R0,#+18
        BLT      ??MLMEPAOutputAdjust_0
//  176     return gFailOutOfRange_c;
        MOVS     R0,#+1
        B        ??MLMEPAOutputAdjust_1
//  177   }
//  178   else{
//  179     if(gSuccess_c != SetPower(u8Power))
??MLMEPAOutputAdjust_0:
        BL       SetPower
        CMP      R0,#+0
        BEQ      ??MLMEPAOutputAdjust_1
//  180       return gFailNoValidCondition_c;
        MOVS     R0,#+3
//  181   }
//  182   return gSuccess_c;      
??MLMEPAOutputAdjust_1:
        POP      {R1,R3}
        BX       R3               ;; return
//  183   
//  184 }
//  185 
//  186 /************************************************************************************
//  187 * MLMEScanRequest    
//  188 *
//  189 * The MLMEScanRequest function configures an energy detect sequence in all channels
//  190 * received as parameters.
//  191 *
//  192 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  193 FuncReturn_t MLMEScanRequest (uint16_t u16Channels, vScanCallback_t cbFn)
//  194 {
//  195   bScanReqFlag = TRUE;
MLMEScanRequest:
        MOVS     R2,#+1
        LDR      R3,??DataTable3_2
        STRB     R2,[R3, #+0]
//  196   u16ChannToScan = u16Channels;
        LDR      R2,??DataTable3_3
        STRH     R0,[R2, #+0]
//  197   vScanReqCallBack = cbFn;
        LDR      R0,??DataTable3_4
        STR      R1,[R0, #+0]
//  198   return gSuccess_c;
        MOVS     R0,#+0
        BX       LR               ;; return
//  199 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA32
        DC32     gaRFSynVCODivF_c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA32
        DC32     gaRFSynVCODivI_c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA32
        DC32     bScanReqFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DATA32
        DC32     u16ChannToScan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DATA32
        DC32     vScanReqCallBack

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  200 /************************************************************************************
//  201 *************************************************************************************
//  202 * Private functions
//  203 *************************************************************************************
//  204 ************************************************************************************/
//  205 
//  206 /************************************************************************************
//  207 *************************************************************************************
//  208 * Private Debug stuff
//  209 *************************************************************************************
//  210 ************************************************************************************/
//  211 
// 
// 240 bytes in section .text
// 
// 240 bytes of CODE memory
//
//Errors: none
//Warnings: none
