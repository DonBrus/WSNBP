///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        01/Feb/2019  13:05:20
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWBB6A.tmp
//        ("D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c" -D NDEBUG -D F24MHZ
//        -D SECURITY_ENABLED -D MC13226Included_d=0 --preprocess=cs
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity Test\Release\List" -lC
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity Test\Release\List" -lB
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity Test\Release\List"
//        --diag_suppress Pe940,Pe951,Pe911 -o
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity Test\Release\Obj"
//        --endian=little --cpu=ARM7TDMI-S --fpu=None --dlib_config
//        "C:\HDDprograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Interface\" -I
//        "D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity Test\PLM\Interface\"
//        --cpu_mode thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity
//        Test\Release\List\connectivity_test_rx.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AsciitoHex
        EXTERN DelayMs
        EXTERN DelayUs
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinFunction
        EXTERN ITC_EnableInterrupt
        EXTERN ITC_Init
        EXTERN ITC_SetPriority
        EXTERN IntAssignHandler
        EXTERN IntDisableFIQ
        EXTERN IntDisableIRQ
        EXTERN IntRestoreFIQ
        EXTERN IntRestoreIRQ
        EXTERN KbGpioInit
        EXTERN LCD_DrawIcon
        EXTERN LCD_SetFont
        EXTERN LCD_WriteCharacter
        EXTERN LCD_WritePixel
        EXTERN LCD_WriteStringValue
        EXTERN LCD_WriteString_NormalFont
        EXTERN LED_Init
        EXTERN LED_SetHex
        EXTERN LED_ToggleLed
        EXTERN LED_TurnOffAllLeds
        EXTERN MACA_Interrupt
        EXTERN MCPSDataRequest
        EXTERN MLMELinkQuality
        EXTERN MLMEPAOutputAdjust
        EXTERN MLMERXEnableRequest
        EXTERN MLMERadioInit
        EXTERN MLMESetChannelRequest
        EXTERN MLMETestMode
        EXTERN PlatformPortInit
        EXTERN ResetMaca
        EXTERN TmrEnable
        EXTERN TmrInit
        EXTERN TmrIsr
        EXTERN TmrSetCompStatusControl
        EXTERN TmrSetConfig
        EXTERN TmrSetMode
        EXTERN TmrSetStatusControl
        EXTERN Uart_Init
        EXTERN Uart_Poll
        EXTERN Uart_Print
        EXTERN Uart_PrintByteDec
        EXTERN Uart_PrintHex
        EXTERN Uart_PrintShortDec
        EXTERN Uart_getchar
        EXTERN __aeabi_idiv
        EXTERN __aeabi_idivmod
        EXTERN __aeabi_memcpy4
        EXTERN gRadioEvntFlags
        EXTERN mem_cmp
        EXTERN process_radio_msg

        PUBLIC ACK_msg
        PUBLIC ClearDisplay
        PUBLIC CurrentOption
        PUBLIC DisplayFreescaleLogo
        PUBLIC DisplayTestMode
        PUBLIC GpioTmrInit
        PUBLIC LEDs_Flash
        PUBLIC LEDs_LQI_indication
        PUBLIC LoadPRBS9
        PUBLIC Main
        PUBLIC ManualModeOption
        PUBLIC PrintChannel
        PUBLIC PrintTestMode
        PUBLIC RX_msg
        PUBLIC TMR_Init
        PUBLIC TX_msg
        PUBLIC adjust_LQI
        PUBLIC bulk_cap_menu
        PUBLIC c_test_num
        PUBLIC channel_adjust
        PUBLIC channel_menu
        PUBLIC clock_setting_menu
        PUBLIC coarse_tune_adjust
        PUBLIC configure_clock_settings
        PUBLIC connectivity_app_init
        PUBLIC cont_transmission_test_adjust
        PUBLIC fine_tune_adjust
        PUBLIC gbDataIndicationFlag
        PUBLIC gu32PerRxEvents
        PUBLIC gu8SCIData
        PUBLIC gu8TestAlreadyStarted
        PUBLIC gu8TestModeEvents
        PUBLIC gu8ValidAckPacket
        PUBLIC gu8ValidRangePacket
        PUBLIC init_flag
        PUBLIC ku8AckString
        PUBLIC ku8DoneStr
        PUBLIC ku8ExpectedString
        PUBLIC mUARTRxBuffer
        PUBLIC main_menu
        PUBLIC maxLQI
        PUBLIC minLQI
        PUBLIC packet_error_rate_rx_test
        PUBLIC packet_error_rate_tx_test
        PUBLIC power_adjust
        PUBLIC process_test_mode_app
        PUBLIC pulse_prbs9_tx
        PUBLIC range_rx_test
        PUBLIC range_tx_test
        PUBLIC select_test_mode_menu
        PUBLIC test_mode_rx_adjust
        PUBLIC test_mode_rx_cb
        PUBLIC test_mode_rx_menu
        PUBLIC test_mode_tx_adjust
        PUBLIC test_mode_tx_menu
        PUBLIC test_transmission_menu
        PUBLIC tx_rx_select
        PUBLIC u16TenPower
        PUBLIC u8BulkCapState
        PUBLIC u8CurrentCoarseTune
        PUBLIC u8CurrentFineTune
        PUBLIC u8CurrentMode
        PUBLIC u8LQIIcon1_c
        PUBLIC u8LQIIcon2_c
        PUBLIC u8LQIIcon3_c
        PUBLIC u8LQIIcon4_c
        PUBLIC u8LedPowerState
        PUBLIC u8RangeExpectedString
        PUBLIC u8RxIcon1_c
        PUBLIC u8RxIcon2_c
        PUBLIC u8TestModeChannel
        PUBLIC u8TestModePower
        PUBLIC waiting_loops


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "\015 ______________________________________\012"
        DATA16
        DC8 0, 0
        DC8 "\015|                                      |\012"
        DATA8
        DC8 0
        DC8 "\015|    Connectivity Test Interface    |\012"
        DC8 "\015|______________________________________|\012\012"
        DC8 "\015      4 - ADJUST CLOCK SETTINGS\012\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_5:
        DC8 "\015\012     ___________________________________ \012"
        DC8 0, 0, 0
        DC8 "\015    |                                   |\012"
        DC8 "\015    |      Channel Adjustment Menu      |\012"
        DC8 "\015    |___________________________________|\012\012"
        DC8 0, 0, 0
        DC8 "\015\012    Please select an option:  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_10:
        DC8 "\015\012     __________________________\012"
        DATA8
        DC8 0
        DC8 "\015    |                          |\012"
        DC8 0
        DC8 "\015    |   Reception Tests Menu   |\012"
        DC8 0
        DC8 "\015    |__________________________|\012\012"
        DC8 "\015      P - PACKET ERROR RATE RECEIVER\012"
        DC8 0
        DC8 "\015\012\012    Please select an option:  "
        DATA16
        DC8 0, 0
        DC8 "\015\012     _____________________________\012"
        DC8 0, 0
        DC8 "\015    |                             |\012"
        DC8 0, 0
        DC8 "\015    |   Transmission Tests Menu   |\012"
        DC8 0, 0
        DC8 "\015    |_____________________________|\012\012"
        DATA8
        DC8 0
        DC8 "\015      T - CONTINUOUS TRANSMISSION\012"
        DC8 "\015      P - PACKET ERROR RATE TRANSMITTER\012"
        DATA16
        DC8 0, 0
        DC8 "\015      r - RANGE TEST TRANSMITTER\012"
        DATA8
        DC8 0
        DC8 "\015\012     ______________________________________\012"
        DC8 0
        DC8 "\015    |                                      |\012"
        DC8 0
        DC8 "\015    |  Continuous Transmission Tests Menu  |\012"
        DC8 0
        DC8 "\015    |______________________________________|\012\012"
        DC8 "\015    Current Transmission Test: "
        DC8 0, 0, 0
        DC8 0DH, 20H, 20H, 20H, 20H, 20H, 20H, 53H
        DC8 20H, 2DH, 20H, 50H, 55H, 4CH, 53H, 45H
        DC8 20H, 50H, 53H, 45H, 55H, 44H, 4FH, 20H
        DC8 52H, 41H, 4EH, 44H, 4FH, 4DH, 20H, 42H
        DC8 49H, 4EH, 41H, 52H, 59H, 20H, 53H, 45H
        DC8 51H, 55H, 45H, 4EH, 43H, 45H, 20H, 54H
        DC8 52H, 41H, 4EH, 53H, 4DH, 49H, 53H, 53H
        DC8 49H, 4FH, 4EH, 0AH, 0
        DC8 0, 0, 0
        DC8 "\015      M - MODULATED TRANSMISSION\012"
        DC8 0
        DC8 "\015      U - UNMODULATED TRANSMISSION\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_31:
        DC8 "\015\012   Current Bulk Capacitor State:"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_32:
        DC8 "\015\012     ___________________________\012"
        DC8 "\015    |                           |\012"
        DC8 "\015    |   Power Adjustment Menu   |\012"
        DC8 "\015    |___________________________|\012\012"
        DC8 0, 0, 0
        DC8 0DH, 0AH, 50H, 6CH, 65H, 61H, 73H, 65H
        DC8 20H, 65H, 6EH, 74H, 65H, 72H, 20H, 74H
        DC8 68H, 65H, 20H, 6EH, 65H, 77H, 20H, 50H
        DC8 6FH, 77H, 65H, 72H, 2CH, 20H, 30H, 78H
        DC8 30H, 30H, 20H, 66H, 6FH, 72H, 20H, 6DH
        DC8 69H, 6EH, 69H, 6DH, 75H, 6DH, 20H, 61H
        DC8 6EH, 64H, 20H, 74H, 6FH, 20H, 30H, 78H
        DC8 31H, 31H, 20H, 66H, 6FH, 72H, 20H, 6DH
        DC8 61H, 78H, 69H, 6DH, 75H, 6DH, 3AH, 20H
        DC8 0
        DC8 0, 0, 0
        DC8 0DH, 0AH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 4FH, 6EH, 20H, 6EH, 6FH, 72H
        DC8 6DH, 61H, 6CH, 20H, 6DH, 6FH, 64H, 65H
        DC8 20H, 74H, 68H, 65H, 20H, 76H, 61H, 6CH
        DC8 75H, 65H, 20H, 6DH, 75H, 73H, 74H, 20H
        DC8 62H, 65H, 20H, 62H, 65H, 74H, 77H, 65H
        DC8 65H, 6EH, 20H, 30H, 78H, 30H, 30H, 20H
        DC8 74H, 6FH, 20H, 30H, 78H, 31H, 31H, 0
        DC8 0DH, 0AH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 57H, 68H, 65H, 6EH, 20H, 50H
        DC8 41H, 20H, 4CH, 6FH, 63H, 6BH, 20H, 6DH
        DC8 6FH, 64H, 65H, 20H, 69H, 73H, 20H, 65H
        DC8 6EH, 61H, 62H, 6CH, 65H, 20H, 76H, 61H
        DC8 6CH, 69H, 64H, 20H, 76H, 61H, 6CH, 75H
        DC8 65H, 73H, 20H, 61H, 72H, 65H, 3AH, 20H
        DC8 30H, 78H, 30H, 30H, 20H, 74H, 6FH, 20H
        DC8 30H, 78H, 30H, 37H, 20H, 61H, 6EH, 64H
        DC8 20H, 30H, 78H, 30H, 43H, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_39:
        DC8 "\015\012Press Q to exit from Continuous Reception Mode"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_40:
        DC8 "\015\012Press Q to exit from Transmission PRBS9 Mode"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_41:
        DC8 "\015\012    ****************************"
        DATA8
        DC8 0
        DC8 "\015\012    ** Packet Error Rate Test **"
        DC8 0
        DC8 "\015\012Press Q to exit from Packet Error Rate Test"
        DATA16
        DC8 0, 0
        DC8 "\015\012Press Enter. Packets to transmit: "
        DC8 0, 0, 0
        DC8 "\015\012\012  Number of packets in decimal: "
        DC8 "\015\012  Value out of range, please try again."
        DC8 0, 0
        DC8 "\015\012  Invalid characters, please use only numbers."
        DC8 0, 0, 0
        DC8 "\015\012\012The RX radio is now listening..."
        DC8 "\015\012    **       Range Test       **"
        DATA8
        DC8 0
        DC8 "\015\012Press Q to exit from Range Test"
        DATA16
        DC8 0, 0
        DC8 "\015\012Start the test by pressing any key on TX radio"
        DC8 0, 0, 0
        DC8 "\015\012Press any key to start the test....."
        DATA8
        DC8 0
        DC8 "\015\012\012The transceiver is now transmitting..."
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_54:
        DC8 0DH, 0AH, 50H, 6CH, 65H, 61H, 73H, 65H
        DC8 20H, 65H, 6EH, 74H, 65H, 72H, 20H, 74H
        DC8 68H, 65H, 20H, 6EH, 65H, 77H, 20H, 43H
        DC8 6FH, 61H, 72H, 73H, 65H, 20H, 54H, 75H
        DC8 6EH, 65H, 20H, 76H, 61H, 6CH, 75H, 65H
        DC8 20H, 62H, 65H, 74H, 77H, 65H, 65H, 6EH
        DC8 20H, 30H, 78H, 30H, 30H, 20H, 74H, 6FH
        DC8 20H, 30H, 78H, 30H, 46H, 20H, 69H, 6EH
        DC8 20H, 68H, 65H, 78H, 61H, 64H, 65H, 63H
        DC8 69H, 6DH, 61H, 6CH, 3AH, 20H, 20H, 0
        DC8 0DH, 0AH, 20H, 20H, 20H, 20H, 49H, 6EH
        DC8 63H, 6FH, 72H, 72H, 65H, 63H, 74H, 20H
        DC8 76H, 61H, 6CH, 75H, 65H, 21H, 21H, 21H
        DC8 20H, 20H, 54H, 68H, 65H, 20H, 76H, 61H
        DC8 6CH, 75H, 65H, 20H, 6DH, 75H, 73H, 74H
        DC8 20H, 62H, 65H, 20H, 62H, 65H, 74H, 77H
        DC8 65H, 65H, 6EH, 20H, 30H, 78H, 30H, 30H
        DC8 20H, 74H, 6FH, 20H, 30H, 78H, 30H, 46H
        DC8 0AH, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_56:
        DC8 0DH, 0AH, 50H, 6CH, 65H, 61H, 73H, 65H
        DC8 20H, 65H, 6EH, 74H, 65H, 72H, 20H, 74H
        DC8 68H, 65H, 20H, 6EH, 65H, 77H, 20H, 46H
        DC8 69H, 6EH, 65H, 20H, 54H, 75H, 6EH, 65H
        DC8 20H, 76H, 61H, 6CH, 75H, 65H, 20H, 62H
        DC8 65H, 74H, 77H, 65H, 65H, 6EH, 20H, 30H
        DC8 78H, 30H, 30H, 20H, 74H, 6FH, 20H, 30H
        DC8 78H, 31H, 46H, 20H, 69H, 6EH, 20H, 68H
        DC8 65H, 78H, 61H, 64H, 65H, 63H, 69H, 6DH
        DC8 61H, 6CH, 3AH, 20H, 20H, 0
        DATA16
        DC8 0, 0
        DC8 0DH, 0AH, 20H, 20H, 20H, 20H, 49H, 6EH
        DC8 63H, 6FH, 72H, 72H, 65H, 63H, 74H, 20H
        DC8 76H, 61H, 6CH, 75H, 65H, 21H, 21H, 21H
        DC8 20H, 20H, 54H, 68H, 65H, 20H, 76H, 61H
        DC8 6CH, 75H, 65H, 20H, 6DH, 75H, 73H, 74H
        DC8 20H, 62H, 65H, 20H, 62H, 65H, 74H, 77H
        DC8 65H, 65H, 6EH, 20H, 30H, 78H, 30H, 30H
        DC8 20H, 74H, 6FH, 20H, 30H, 78H, 31H, 46H
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_58:
        DC8 "CONTINUOUS PULSE PRBS9 TRANSMISSION\012"
        DC8 0, 0, 0
        DC8 "CONTINUOUS MODULATED TRANSMISSION\012"
        DATA8
        DC8 0
        DC8 "CONTINUOUS UNMODULATED TRANSMISSION\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_61:
        DC8 "\015  ###  *  #         F R E E S C A L E\012"
        DC8 "\015     ***            S E M I C O N D U C T O R\012"
        DC8 "\015  #           Press any key to continue...\012\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_64:
        DATA8
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_65:
        DC8 "\015\012N:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_66:
        DC8 " L:"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_68:
        DC8 " CRC=1 Data="
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_69:
        DC8 "\015\012\012Good:\t"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_70:
        DC8 "/"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_71:
        DC8 "\015\012\012Halt\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_72:
        DC8 "\015\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_73:
        DC8 "Received Packet:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_74:
        DC8 "0x"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_75:
        DC8 " "

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_76:
        DC8 "\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_77:
        DC8 "    LQI: -"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_79:
        DATA8
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_82:
        DC8 "\015      3 - SELECT TEST MODE\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_84:
        DC8 "\015\012\012 Please select an option:  "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_85:
        DC8 "\015    Current Channel: "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_86:
        DC8 "\015      0 - CHANNEL 11"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_87:
        DC8 "      8 - CHANNEL 19\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_88:
        DC8 "\015      1 - CHANNEL 12"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_89:
        DC8 "      9 - CHANNEL 20\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_91:
        DC8 "      A - CHANNEL 21\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_92:
        DC8 "\015      3 - CHANNEL 14"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_93:
        DC8 "      B - CHANNEL 22\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_95:
        DC8 "      C - CHANNEL 23\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_96:
        DC8 "\015      5 - CHANNEL 16"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_97:
        DC8 "      D - CHANNEL 24\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_99:
        DC8 "      E - CHANNEL 25\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_100:
        DC8 "\015      7 - CHANNEL 18"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_101:
        DC8 "      F - CHANNEL 26\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_108:
        DC8 "\015      R - RECEIVER MODE \012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_109:
        DC8 "\015      T - TRANSMITTER MODE \012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_111:
        DC8 "\015\012    |                     |"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_112:
        DC8 "\015\012    | Clock Settings Menu |"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_113:
        DC8 "\015\012    |_____________________|\012\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_115:
        DC8 "\015    2 - Adjust COARSE TUNE\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_116:
        DC8 "\015    3 - Adjust FINE TUNE \012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_117:
        DC8 "\015    p - Previous Menu\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_120:
        DC8 "  Disable\012\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_122:
        DC8 "\015   D - Disable Capacitor\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_123:
        DC8 "\015   p - Previous Menu\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_124:
        DC8 "\015\012Please select an option:  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_126:
        DC8 "\015    Current Power: "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_128:
        DC8 "\015\012Press any key to start....."
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_129:
        DC8 "\015\012\012Coarse Tune Adjustment\012\012\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_130:
        DC8 "\015  Current Coarse Tune Value: "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_131:
        DC8 "\015\012\012Fine Tune Adjustment\012\012\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_132:
        DC8 "\015  Current Fine Tune Value: "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_139:
        DC8 "\012\015\012\015\012\015      #\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_140:
        DC8 "\015     ###\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_141:
        DC8 "\015    ###  *\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_142:
        DC8 "\015     #  ***\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_143:
        DC8 "\015       ***  #\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_144:
        DC8 "\015        *  ###\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_145:
        DC8 "\015          ###\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_146:
        DC8 "\015        *  #\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_147:
        DC8 "\015       ***\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_148:
        DC8 "\015      ***  #\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_149:
        DC8 "\015    #  *  ###\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_150:
        DC8 "\015   ###   ###\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_151:
        DC8 "\015   #  ***\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_154:
        DC8 "\015 ###\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_155:
        DATA8
        DC8 102, 114, 101, 101, 115, 99, 97, 108, 101, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_156:
        DC8 "   CONNECTIVITY TEST  "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_157:
        DC8 " Option: Channel"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_158:
        DC8 "  SW1 Change option"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_159:
        DC8 "  SW2 Channel Up"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_160:
        DC8 "  SW3 Channel Down"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_161:
        DC8 "CHANNEL:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_162:
        DC8 " Option: Power"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_163:
        DC8 "  SW2 Power Up"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_164:
        DC8 "  SW3 Power Down"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_165:
        DC8 "POWER LEVEL:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_166:
        DC8 " Option: Test"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_167:
        DC8 "  SW2 Test Up"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_168:
        DC8 "  SW3 Test Down"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_169:
        DC8 "Idle Mode"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_170:
        DC8 "PER Test running"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_171:
        DC8 "SW4 for PER TX"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_172:
        DC8 "Range Test running"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_173:
        DC8 "SW4 for Range TX"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_177:
        DC8 "                     "
        DATA16
        DC8 0, 0
// D:\Users\Brus\Documents\Uni\Wireless Sensors Networks M\Project\WSNBP\my_conn_test\Connectivity Test\Application\Source\connectivity_test_rx.c
//    1 /************************************************************************************
//    2 * Connectivity Test Main 
//    3 *
//    4 * (c) Copyright 2011, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected: 22/08/2011
//   11 * Last Tested:
//   12 ************************************************************************************/
//   13 
//   14 #include "../Configure/app_config.h"
//   15 #include "../../PLM/LibInterface/Crm.h"
//   16 #include "../../PLM/LibInterface/Interrupt.h"
//   17 #include "../../PLM/LibInterface/Timer.h"
//   18 #include "../../PLM/Interface/PlatformInit.h"
//   19 #include "../../PLM/Interface/RF_Config.h"
//   20 #include "../../SMAC/Interface/GlobalDefs.h"
//   21 #include "../../SMAC/Interface/TransceiverConfigMngmnt.h"
//   22 #include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
//   23 #include "../../SMAC/Interface/WirelessLinkMngmt.h"
//   24 #include "../../SMAC/Interface/SecurityMngmnt.h"
//   25 #include "../../SMAC/Interface/TransceiverPowerMngmnt.h"
//   26 #include "../../SMAC/Configure/options_config.h"
//   27 #include "../../SMAC/Configure/security_config.h"
//   28 #include "../../SMAC/Drivers/Interface/MacaInterrupt.h"
//   29 #include "../../SMAC/Drivers/Interface/ghdr/maca.h"
//   30 #include "../../SMAC/Drivers/Interface/Delay.h"
//   31 #include "../../SMAC/Drivers/Configure/board_config.h"
//   32 #include "../Utilities/UartUtil.h"
//   33 #include "../Utilities/Leds.h"
//   34 #include "../Utilities/Keyboard.h"
//   35 #include "../Utilities/Display.h"
//   36 #include "../Utilities/Sound.h"
//   37 #include "../Otap/Otap.h"
//   38 
//   39 /************************************************************************************
//   40 *************************************************************************************
//   41 * Private type definitions
//   42 *************************************************************************************
//   43 ************************************************************************************/
//   44 typedef enum
//   45 {
//   46   gChannel_c= 0,
//   47   gPower_c,
//   48   gRxTestMode_c,
//   49   gTxTestMode_c,
//   50   gBulkCap_c,
//   51   gCoarseTune_c,
//   52   gFineTune_c,
//   53   MAX_OPTION
//   54 } ConfigOption_t;
//   55 
//   56 typedef enum link_quality_value_tag{
//   57   gFarRange_c = 0,
//   58   gMediumRange_c,
//   59   gNearRange_c,
//   60   gVeryNearRange_c
//   61 }link_quality_value_t;
//   62 
//   63 typedef struct four_digit_bcd_tag{
//   64   uint8_t u8Units:4;
//   65   uint8_t u8Tens:4;
//   66   uint8_t u8Houndreds:4;
//   67   uint8_t u8Thousands:4;
//   68   uint8_t u8TensThousands:4;
//   69   uint8_t u8HoundredsThousands:4;
//   70 }four_digit_bcd_t;
//   71 
//   72 typedef enum per_rx_states_tag{
//   73   IDLE_PER_RX_ST = 0,
//   74   INIT_PER_RX_ST,
//   75   WAITING_PER_RX_ST,
//   76   LISTEN_PER_RX_ST,
//   77   FINISH_PER_RX_ST  
//   78 }per_rx_states_t;
//   79 
//   80 typedef enum range_rx_states_tag{
//   81   IDLE_RANGE_RX_ST = 0,
//   82   INIT_RANGE_RX_ST,
//   83   WAITING_RANGE_RX_ST,
//   84   LISTEN_RANGE_RX_ST,
//   85   TRANSMIT_ACK_RANGE_RX_ST,
//   86   FINISH_RANGE_RX_ST  
//   87 }range_rx_states_t;
//   88 
//   89 typedef enum per_tx_states_tag{
//   90   IDLE_PER_TX_ST = 0,
//   91   INIT_PER_TX_ST,
//   92   TRANSMITING_PER_TX_ST,
//   93   DONE_PER_TX_ST,
//   94   FINISH_PER_TX_ST  
//   95 }per_tx_states_t;
//   96 
//   97 typedef enum range_tx_states_tag{
//   98   IDLE_RANGE_TX_ST = 0,
//   99   INIT_RANGE_TX_ST,
//  100   TRANSMITING_RANGE_TX_ST,
//  101   WAITING_RANGE_TX_ST,
//  102   LISTEN_RANGE_TX_ST,
//  103   RANGE_INDICATION_TX_ST
//  104 }range_tx_states_t;
//  105 
//  106 
//  107 typedef enum prbs9_tx_states_tag{
//  108   INIT_PRBS9_TX_ST = 0,
//  109   TRANSMIT_PRBS9_TX_ST
//  110 }prbs9_tx_states_t;
//  111 
//  112 
//  113 /************************************************************************************
//  114 *************************************************************************************
//  115 * Private macros
//  116 *************************************************************************************
//  117 ************************************************************************************/
//  118 #define TX_BUF_LEN               68
//  119 #define RX_BUF_LEN               68
//  120 #define RANGE_RX_BUF_LEN         10
//  121 #define RANGE_RX_BUF_LEN_SEC     33
//  122 #define PER_RX_BUF_LEN           22
//  123 #define ACK_BUF_LEN              6
//  124 #define ACK_BUF_LEN_CTR_SEC      17
//  125 #define ACK_BUF_LEN_NO_CTR_SEC   33  
//  126 
//  127 #if OTAP_ENABLED == TRUE  
//  128   #define RX_SIZE             OTAP_RX_SIZE 
//  129   #define PER_RX_SIZE         OTAP_RX_SIZE
//  130   #define RANGE_RX_SIZE       OTAP_RX_SIZE
//  131 #else
//  132   #define RX_SIZE             (smac_pdu_size(RX_BUF_LEN))
//  133   #define PER_RX_SIZE         (smac_pdu_size(PER_RX_BUF_LEN))
//  134   #define RANGE_RX_SIZE       (smac_pdu_size(RANGE_RX_BUF_LEN))
//  135 #endif
//  136 
//  137 #define TX_SIZE               (smac_pdu_size(TX_BUF_LEN))
//  138 
//  139 #if SMAC_FEATURE_SECURITY ==  TRUE
//  140 
//  141   ctr_value_t Ctr_Value = { CTR_0_INIT_VALUE, CTR_1_INIT_VALUE, \ 
//  142                             CTR_2_INIT_VALUE, CTR_3_INIT_VALUE, };
//  143   cipher_key_t CTR_Key = { KEY_0_INIT_VALUE, KEY_1_INIT_VALUE, \ 
//  144                            KEY_2_INIT_VALUE, KEY_3_INIT_VALUE, };
//  145   
//  146   #if AES_DEFAULT_VALUE != AES_CTR_MODE
//  147     #define ACK_SIZE (smac_pdu_size(ACK_BUF_LEN_NO_CTR_SEC))
//  148     #define RANGE_RX_SIZE (smac_pdu_size(RANGE_RX_BUF_LEN_SEC))
//  149   #else 
//  150     #define ACK_SIZE (smac_pdu_size(ACK_BUF_LEN_CTR_SEC)) 
//  151   #endif
//  152   
//  153 #else
//  154   #define ACK_SIZE              (smac_pdu_size(ACK_BUF_LEN))
//  155 #endif  
//  156   
//  157 #if CLK_FREQ == F24MHZ
//  158  #define DELAY_SIZE                   0x1770
//  159 #else
//  160  #define DELAY_SIZE                   0x2EE0
//  161 #endif
//  162 #define LFSR_SIZE                      64
//  163 #define FLASH_DELAY                    200
//  164 #define gTotalPacketsDelay_d           400
//  165 #define MAX_COARSE_TUNE                0x0F
//  166 #define MIN_COARSE_TUNE                0x00
//  167 #define MAX_FINE_TUNE                  0x1F
//  168 #define MIN_FINE_TUNE                  0x00
//  169 #define NO_TEST_MODE_EVENT             0x00
//  170 #define TEST_MODE_INCREASE_EVENT       0x01
//  171 #define TEST_MODE_DECREASE_EVENT       0x02
//  172 #define CHANGE_OPTION_CONFIG_EVENT     0x04
//  173 #define TEST_START_EVENT               0x08  
//  174 #define MAX_POWER_LED_VALUE            0x0F
//  175 #define NOM_POWER_LED_VALUE            0x05
//  176 #define MIN_POWER_LED_VALUE            0x01
//  177 #define MAX_RX_PACKETS                 0x28
//  178 
//  179 #define ChannelAdjustment              '1' 
//  180 #define PowerAdjustment                '2' 
//  181 #define TestAdjustment                 '3' 
//  182 #define ClockAdjustment                '4' 
//  183 #define PreviousMenu                   'p'
//  184 #define MaximumPower                   'M'
//  185 #define NominalPower                   'n'
//  186 #define MinimumPower                   'm'
//  187 #define TransmissionTest               'T' 
//  188 #define RangeTest                      'r'
//  189 #define IdleTest                       'I'
//  190 #define PRBS9TxTest                    'S'
//  191 #define ReceptionTest                  'R'
//  192 #define PacketErrorRateTest            'P'
//  193 #define ModulatedTxTest                'M'
//  194 #define UnmodulatedTxTest              'U'
//  195 #define Exit                           'Q'
//  196 #define BulkCapacitor                  '1'
//  197 #define CoarseTune                     '2'
//  198 #define FineTune                       '3'
//  199 #define EnableBulkCapacitor            'E'
//  200 #define DisableBulkCapacitor           'D'
//  201   
//  202 #define SMAC_CONTINUOUS_RX             SMAC_TEST_MODE_PULSE_PRBS9_TX
//  203 #define SMAC_TEST_MODE_PER_RX          SMAC_TEST_MODE_PER_TX_RX 
//  204 #define SMAC_TEST_MODE_RANGE_RX        SMAC_TEST_MODE_RANGE_TX_RX 
//  205   
//  206 #define SMAC_TEST_MODE_PULSE_PRBS9_TX  SMAC_TEST_MODE_PULSE_PRBS9_TX_RX
//  207 #define SMAC_TEST_MODE_PER_TX          SMAC_TEST_MODE_PER_TX_RX 
//  208 #define SMAC_TEST_MODE_RANGE_TX        SMAC_TEST_MODE_RANGE_TX_RX 
//  209 
//  210 
//  211 #define set_initial_option_values() \ 
//  212     u8CurrentMode = SMAC_TEST_MODE_PER_RX; \ 
//  213     u8TestModeChannel = CHANNEL_NUMBER; \ 
//  214     u8TestModePower = gDefaultPowerLevel_c; \ 
//  215     u8BulkCapState = (0x10 & DEFAULT_COARSE_TRIM) >> 4; \ 
//  216     u8CurrentFineTune = DEFAULT_FINE_TRIM; \ 
//  217     u8CurrentCoarseTune = (0x0F & DEFAULT_COARSE_TRIM); \ 
//  218     gbDataIndicationFlag = FALSE;\ 
//  219     gu8TestModeEvents = NO_TEST_MODE_EVENT;\ 
//  220     gu8ValidRangePacket = FALSE;\ 
//  221 	gu8ValidAckPacket = FALSE;\ 
//  222     gu8TestAlreadyStarted = FALSE
//  223   
//  224 
//  225 #define   LEDs_RX_INIT(x) \ 
//  226   do { \ 
//  227     DelayMs(x); \ 
//  228     TurnOffLeds(); \ 
//  229     DelayMs(x); \ 
//  230     TurnOnLeds(); \ 
//  231     DelayMs(x); \ 
//  232     TurnOffLeds(); \ 
//  233     DelayMs(x); \ 
//  234     TurnOnLeds(); \ 
//  235     DelayMs(x); \ 
//  236     TurnOffLeds(); \ 
//  237   }while(0);
//  238   
//  239   
//  240 #define clear_event(x,y) (x &= (~y))
//  241 
//  242 
//  243 #define is_rx_msg_final_state(x) \ 
//  244   ( (MSG_RX_ACTION_COMPLETE_SUCCESS == x.u8Status.msg_state) || \ 
//  245     (MSG_RX_ACTION_COMPLETE_FAIL == x.u8Status.msg_state)    || \ 
//  246     (MSG_RX_ABORTED == x.u8Status.msg_state)                 || \ 
//  247     (MSG_RX_TIMEOUT_FAIL == x.u8Status.msg_state) )
//  248 
//  249 #define is_tx_msg_final_state(x) \ 
//  250   ( (MSG_TX_ACTION_COMPLETE_SUCCESS == x.u8Status.msg_state) || \ 
//  251     (MSG_TX_ACTION_COMPLETE_FAIL == x.u8Status.msg_state)    || \ 
//  252     (MSG_TX_ABORTED == x.u8Status.msg_state)                 || \ 
//  253     (MSG_TX_ACTION_COMPLETE_CHANN_BUSY == x.u8Status.msg_state) )
//  254 
//  255 #define   LEDs_TX_INIT(x) \ 
//  256   do { \ 
//  257     LED_SetHex(0x08);\ 
//  258     DelayMs(x);\ 
//  259     LED_SetHex(0x04);\ 
//  260     DelayMs(x);\ 
//  261     LED_SetHex(0x02);\ 
//  262     DelayMs(x);\ 
//  263     LED_SetHex(0x01);\ 
//  264     DelayMs(x);\ 
//  265     TurnOffLeds();\ 
//  266   }while(0)
//  267 
//  268 #define set_xtal_coarse_tune(x)    (CRM_XTAL_CNTL.cTune = x)
//  269 #define set_xtal_fine_tune(x)     (CRM_XTAL_CNTL.fTune = x)
//  270 #define enable_bulk_cap()         (CRM_XTAL_CNTL.bulktune = 1)
//  271 #define disable_bulk_cap()        (CRM_XTAL_CNTL.bulktune = 0)
//  272   
//  273   
//  274 #define LQI_at_minus_88dBm   88
//  275 #define LQI_at_minus_80dBm   80
//  276 #define LQI_at_minus_60dBm   60 
//  277 #define LQI_at_minus_40dBm   40
//  278 
//  279 
//  280 #define LQI_LIM1 LQI_at_minus_88dBm
//  281 #define LQI_LIM2 LQI_at_minus_80dBm
//  282 #define LQI_LIM3 LQI_at_minus_60dBm
//  283 #define LQI_LIM4 LQI_at_minus_40dBm
//  284   
//  285 #define MAX_OPTION_CONFIG  (MAX_OPTION - 1)
//  286 
//  287 #define PER_NO_EVENT        (0x00000000)
//  288 #define PER_START_EVNT      (0x00000001)
//  289 #define PER_INC_CHANN_EVNT  (0x00000001<<1)
//  290 #define PER_GOOD_MSG_EVNT   (0x00000001<<2)
//  291 #define PER_DONE_MSG_EVNT   (0x00000001<<3)
//  292   
//  293 #define MAX_NUM_TRANSMISSION  (50000)
//  294 #define NUM_DONE_TX           (15)  
//  295 #define MAX_NO_PACKET_ALLOW 0x1000 
//  296   
//  297 #define LED_OFF             gGpioPinStateLow_c
//  298 #define LED_ON              gGpioPinStateHigh_c
//  299 #define BOUNCE_TIME         120   
//  300 #define DUTY_CICLE_TIME     1950  
//  301   
//  302 #define BLOCK_SIZE          16
//  303 #define gEnabled_c          0x01  
//  304 
//  305 #define SZ_OF_UART_RX     (10)
//  306 /************************************************************************************
//  307 *************************************************************************************
//  308 * Private prototypes
//  309 *************************************************************************************
//  310 ************************************************************************************/
//  311 void connectivity_app_init(void);
//  312 void connectivity_tx_app_init(void);
//  313 void test_mode_rx_cb(void);
//  314 void process_incoming_msg(void);
//  315 void select_config_option_isr(void);
//  316 void increase_config_option_isr(void);
//  317 void decrease_config_option_isr(void);
//  318 void start_test_isr(void);
//  319 void process_test_mode_app(void);
//  320 link_quality_value_t adjust_LQI(uint8_t u8LQI);
//  321 #if (gLEDSupported_d)
//  322 void LEDs_LQI_indication(link_quality_value_t u8LinkQuality);
//  323 #endif
//  324 void LEDs_Flash(uint8_t u8leds_state, uint32_t msec);
//  325 void LoadPRBS9(void);
//  326 char main_menu(void);
//  327 char channel_menu(void);
//  328 char select_test_mode_menu(void);
//  329 char test_mode_tx_menu(void);
//  330 char test_mode_rx_menu(void);
//  331 void tx_rx_select(void);
//  332 char clock_setting_menu(void);
//  333 char bulk_cap_menu(void);
//  334 void channel_adjust(void);
//  335 void power_adjust(void);
//  336 void test_mode_rx_adjust(void);
//  337 void test_mode_tx_adjust(void);
//  338 void configure_clock_settings(void);
//  339 void coarse_tune_adjust(void);
//  340 void fine_tune_adjust(void);
//  341 void PrintTestMode(Test_Mode_t TestModeValue);
//  342 void PrintChannel(channel_num_t u8ChannelValue);
//  343 void packet_error_rate_rx_test(void);
//  344 four_digit_bcd_t convert_2_bcd(uint16_t u16Value);
//  345 void range_rx_test(void);
//  346 void GpioTmrInit(void);
//  347 void TMR_Init(void);
//  348 void GpioTmrInit(void);
//  349 char test_transmission_menu(void);
//  350 void cont_transmission_test_adjust(void);
//  351 void packet_error_rate_tx_test(void);
//  352 void range_tx_test(void);
//  353 void pulse_prbs9_tx(void);
//  354 #if INTERFACE_TYPE == SERIAL 
//  355 static four_digit_bcd_t convert_2_bcd(uint16_t u16Value);
//  356 static void print_freescale_logo(void);
//  357 #endif  
//  358 
//  359 #if (gLCDSupported_d)
//  360 void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord);
//  361 void DisplayTestMode(ConfigOption_t u8ConfiOption);
//  362 void ClearDisplay(void);
//  363 #endif
//  364 /************************************************************************************
//  365 *************************************************************************************
//  366 * Private memory declarations
//  367 *************************************************************************************
//  368 ************************************************************************************/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  369 const uint8_t ku8ExpectedString[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
ku8ExpectedString:
        DATA8
        DC8 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
//  370                                       0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F };
//  371 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  372 const uint8_t ku8DoneStr[] = { 'D', 'O', 'N', 'E' };
ku8DoneStr:
        DATA8
        DC8 68, 79, 78, 69
//  373 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  374 four_digit_bcd_t c_test_num = {0xF,0xF,0xF,1};
c_test_num:
        DATA8
        DC8 255, 31, 0, 0
//  375 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  376 const uint8_t u8RangeExpectedString[]= {'S','i','m','p','l','e',' ','M','A','C'};
u8RangeExpectedString:
        DATA8
        DC8 83, 105, 109, 112, 108, 101, 32, 77, 65, 67, 0, 0
//  377 const uint8_t ku8AckString[] = {'A','C','K'};

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  378 const uint16_t u16TenPower[] = {1,10,100,1000,10000};
u16TenPower:
        DATA16
        DC16 1, 10, 100, 1000, 10000
        DC8 0, 0
//  379 
//  380 uint8_t u8LQIIcon4_c[]={0,0,0,0,48,176,176,176,176,176,176,176,176,176,176,176,176,
//  381                         176,48,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,
//  382                         109,109,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,
//  383                         6,0,0,0,0,0,0,0,0,0};																					
//  384 																					
//  385 uint8_t u8LQIIcon3_c[]={0,0,0,0,0,128,128,128,128,128,128,128,128,128,128,128,128,128,
//  386                         0,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,109,109,
//  387                         13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,
//  388                         0,0,0,0};																					
//  389 																					
//  390 uint8_t u8LQIIcon2_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,
//  391                         108,108,108,108,108,108,108,108,108,12,0,0,0,0,0,0,0,0,0,0,0,0,
//  392                         0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
//  393 																					
//  394 uint8_t u8LQIIcon1_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
//  395                         96,96,96,96,96,96,96,96,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
//  396                         10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
//  397 																		
//  398 uint8_t u8RxIcon1_c[]={0,0,62,65,0,62,65,0,62,65,0,252,252,0,65,62,0,65,62,0,65,62,
//  399                       0,0,0,0,0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,
//  400                       0,0,0,0,0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};	
//  401 
//  402 uint8_t u8RxIcon2_c[]={0,0,0,0,0,0,0,0,62,65,0,252,252,0,65,62,0,0,0,0,0,0,0,0,0,0,
//  403                        0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
//  404                        0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};																					
//  405 																		
//  406 
//  407 /************************************************************************************
//  408 *************************************************************************************
//  409 * Public functions
//  410 *************************************************************************************
//  411 ************************************************************************************/
//  412 extern void ResetMaca(void);
//  413 
//  414 /************************************************************************************
//  415 *************************************************************************************
//  416 * Variables declaration
//  417 *************************************************************************************
//  418 ************************************************************************************/
//  419 Test_Mode_t u8CurrentMode;
//  420 channel_num_t u8TestModeChannel;
//  421 uint8_t u8TestModePower;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  422 uint8_t u8LedPowerState;
u8LedPowerState:
        DS8 1
//  423 message_t TX_msg;
//  424 message_t RX_msg;
//  425 message_t ACK_msg;
//  426 uint8_t mUARTRxBuffer[SZ_OF_UART_RX];
//  427 ConfigOption_t CurrentOption, ManualModeOption;
//  428 uint8_t u8CurrentCoarseTune;
//  429 uint8_t u8CurrentFineTune;
//  430 uint8_t u8BulkCapState;
//  431 uint16_t waiting_loops;
//  432 bool_t gbDataIndicationFlag;
//  433 uint8_t init_flag;
//  434 uint8_t gu8TestModeEvents;
//  435 uint32_t gu32PerRxEvents;
//  436 uint8_t gu8ValidRangePacket;
//  437 uint8_t gu8ValidAckPacket;
//  438 uint8_t gu8TestAlreadyStarted;
//  439 uint8_t gu8SCIData[10];  
//  440 
//  441 uint8_t maxLQI=0,minLQI=255;
//  442 
//  443 /************************************************************************************
//  444 * main function
//  445 *
//  446 * Executes the main function.
//  447 *
//  448 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  449 void Main(void)
//  450 {
Main:
        PUSH     {R7,LR}
        SUB      SP,SP,#+152
//  451   
//  452   uint8_t dataTX[TX_SIZE];
//  453   uint8_t dataRX[RX_SIZE];
//  454   uint8_t dataACK[ACK_SIZE];
//  455 
//  456   MSG_INIT(TX_msg, &dataTX, NULL);
        LDR      R0,??DataTable121
        ADD      R1,SP,#+80
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  457   MSG_INIT(RX_msg, &dataRX, test_mode_rx_cb);
        LDR      R0,??DataTable121_1
        ADD      R2,SP,#+8
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable121_2
        STR      R2,[R0, #+12]
//  458   MSG_INIT(ACK_msg, &dataACK, NULL);
        LDR      R0,??DataTable121_3
        MOV      R2,SP
        STR      R2,[R0, #+4]
        STR      R1,[R0, #+12]
//  459 
//  460   connectivity_app_init();
        BL       connectivity_app_init
//  461     
//  462   for(;;)
//  463   {
//  464     process_test_mode_app();
??Main_0:
        BL       process_test_mode_app
        B        ??Main_0
//  465   }
//  466 }
//  467 
//  468 /************************************************************************************
//  469 *************************************************************************************
//  470 * Private functions
//  471 *************************************************************************************
//  472 ************************************************************************************/
//  473 /************************************************************************************
//  474 * connectivity_app_init
//  475 *
//  476 * This function initializate the application settings.
//  477 *
//  478 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  479 void connectivity_app_init(void)
//  480 {
connectivity_app_init:
        PUSH     {R3-R5,LR}
//  481   set_initial_option_values();
        LDR      R4,??DataTable121_1
        MOVS     R0,#+2
        STRB     R0,[R4, #+16]
        MOVS     R0,#+0
        STRB     R0,[R4, #+17]
        MOVS     R1,#+15
        STRB     R1,[R4, #+18]
        STRB     R0,[R4, #+22]
        STRB     R1,[R4, #+21]
        MOVS     R1,#+8
        STRB     R1,[R4, #+20]
        STRB     R0,[R4, #+23]
        STR      R0,[R4, #+24]
//  482  
//  483   ITC_Init();
        BL       ITC_Init
//  484   IntAssignHandler(gMacaInt_c, (IntHandlerFunc_t)MACA_Interrupt);
        LDR      R1,??DataTable121_4
        MOVS     R0,#+7
        BL       IntAssignHandler
//  485   ITC_SetPriority(gMacaInt_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       ITC_SetPriority
//  486   ITC_EnableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_EnableInterrupt
//  487   
//  488 #if INTERFACE_TYPE == MANUAL  
//  489   IntAssignHandler(gCrmInt_c, (IntHandlerFunc_t)CRM_Isr);
//  490   ITC_SetPriority(gCrmInt_c, gItcNormalPriority_c);
//  491   ITC_EnableInterrupt(gCrmInt_c);
//  492 #endif
//  493   
//  494   IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr);
        LDR      R1,??DataTable121_5
        MOVS     R0,#+5
        BL       IntAssignHandler
//  495   ITC_SetPriority(gTmrInt_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       ITC_SetPriority
//  496   ITC_EnableInterrupt(gTmrInt_c);
        MOVS     R0,#+5
        BL       ITC_EnableInterrupt
//  497   
//  498 #if INTERFACE_TYPE == MANUAL
//  499   CRM_RegisterISR(gCrmKB4WuEvent_c,select_config_option_isr);
//  500   CRM_RegisterISR(gCrmKB5WuEvent_c,increase_config_option_isr);
//  501   CRM_RegisterISR(gCrmKB6WuEvent_c,decrease_config_option_isr);
//  502   CRM_RegisterISR(gCrmKB7WuEvent_c,start_test_isr);
//  503 #endif  
//  504   
//  505   IntDisableIRQ();
        BL       IntDisableIRQ
//  506   IntDisableFIQ();
        BL       IntDisableFIQ
//  507 
//  508   ResetMaca();
        BL       ResetMaca
//  509   MLMERadioInit();
        BL       MLMERadioInit
//  510   PlatformPortInit();
        BL       PlatformPortInit
//  511   MLMESetChannelRequest(u8TestModeChannel);
        LDRB     R0,[R4, #+17]
        BL       MLMESetChannelRequest
//  512   
//  513   IntEnableIRQ();
        MOVS     R0,#+0
        BL       IntRestoreIRQ
//  514   IntEnableFIQ();
        MOVS     R0,#+0
        BL       IntRestoreFIQ
//  515  
//  516   Uart_Init(mUARTRxBuffer, SZ_OF_UART_RX);
        MOVS     R1,#+10
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Init
//  517   LED_Init();
        BL       LED_Init
//  518   KbGpioInit();
        BL       KbGpioInit
//  519 
//  520 #if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
//  521   LCD_Init();
//  522 #endif
//  523 
//  524  
//  525 #if OTAP_ENABLED == TRUE 
//  526   OTAP_Init(&RX_msg);
//  527   gbOtapExecute = OTAP_ENABLED;
//  528 #endif
//  529   
//  530 #if INTERFACE_TYPE == SERIAL 
//  531   print_freescale_logo();
        LDR      R0,??DataTable121_6
        BL       Uart_Print
        LDR      R0,??DataTable121_7
        BL       Uart_Print
        LDR      R0,??DataTable121_8
        BL       Uart_Print
        LDR      R0,??DataTable121_9
        BL       Uart_Print
        LDR      R0,??DataTable121_10
        BL       Uart_Print
        LDR      R0,??DataTable121_11
        BL       Uart_Print
        LDR      R0,??DataTable121_12
        BL       Uart_Print
        LDR      R0,??DataTable121_13
        BL       Uart_Print
        LDR      R0,??DataTable121_14
        BL       Uart_Print
        LDR      R0,??DataTable121_15
        BL       Uart_Print
        LDR      R0,??DataTable121_16
        BL       Uart_Print
        LDR      R0,??DataTable121_17
        BL       Uart_Print
        LDR      R5,??DataTable121_18
        MOVS     R0,R5
        BL       Uart_Print
        LDR      R0,??DataTable121_19
        BL       Uart_Print
        MOVS     R0,R5
        ADDS     R0,R0,#+40
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_152
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_153
        BL       Uart_Print
        LDR      R0,??DataTable121_20
        BL       Uart_Print
        MOVS     R0,R5
        ADDS     R0,R0,#+88
        BL       Uart_Print
//  532   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
//  533 #endif
//  534 
//  535  #if INTERFACE_TYPE == MANUAL 
//  536 /********************* KBI Interruptions Initialization ***********************/
//  537   MLMESetWakeupSource(gExtWuKBI4En_c | gExtWuKBI5En_c | gExtWuKBI6En_c | gExtWuKBI7En_c, 0x00, 0x0F);
//  538 /******************************************************************************/
//  539 #endif
//  540 LoadPRBS9();
        BL       LoadPRBS9
//  541 
//  542 #if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
//  543   LCD_SetBacklight(gEnabled_c);
//  544   LCD_ClearDisplay();
//  545   DisplayFreescaleLogo(0x15,0x10);
//  546   DelayMs(1000);
//  547   ClearDisplay();
//  548   CurrentOption=gRxTestMode_c;
//  549   DisplayTestMode(CurrentOption);
//  550 #endif
//  551   
//  552  (void)MLMEPAOutputAdjust(u8TestModePower);
        LDRB     R0,[R4, #+18]
        BL       MLMEPAOutputAdjust
//  553   MLMETestMode(u8CurrentMode); 
        LDRB     R0,[R4, #+16]
        BL       MLMETestMode
//  554   MLMESetChannelRequest(u8TestModeChannel);
        LDRB     R0,[R4, #+17]
        BL       MLMESetChannelRequest
//  555 
//  556 #if (gLCDSupported_d == FALSE || INTERFACE_TYPE == SERIAL)
//  557     TMR_Init(); 
        BL       TMR_Init
//  558 #endif
//  559     
//  560 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_152:
        DC8 "\015   #  *\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_153:
        DC8 "\015  ###               2 0 1 1\012"
        DATA16
        DC8 0, 0
//  561 
//  562 /************************************************************************************
//  563 * test_mode_rx_cb
//  564 *
//  565 * This function is the callback for the reception message, every time that a message 
//  566 * is received the function is executed and it turns on a flag to indicate that one
//  567 * message was received.
//  568 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  569 void test_mode_rx_cb (void)
//  570 {
//  571   if(TRUE == gRadioEvntFlags.Bits.data_indication_flag)
test_mode_rx_cb:
        LDR      R0,??DataTable121_21
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LSRS     R3,R1,#+4
        ANDS     R3,R3,R2
        BEQ      ??test_mode_rx_cb_0
//  572   {
//  573     gRadioEvntFlags.Bits.data_indication_flag = FALSE;
        MOVS     R3,#+16
        BICS     R1,R1,R3
        STR      R1,[R0, #+0]
//  574     gbDataIndicationFlag = TRUE;
        LDR      R0,??DataTable122
        STRB     R2,[R0, #+23]
//  575   }
//  576   else
//  577   {
//  578     /* Do nothing */
//  579   }
//  580 }
??test_mode_rx_cb_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_1:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_2:
        DATA32
        DC32     test_mode_rx_cb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_3:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_4:
        DATA32
        DC32     MACA_Interrupt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_5:
        DATA32
        DC32     TmrIsr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_6:
        DATA32
        DC32     ?_139

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_7:
        DATA32
        DC32     ?_140

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_8:
        DATA32
        DC32     ?_141

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_9:
        DATA32
        DC32     ?_142

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_10:
        DATA32
        DC32     ?_143

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_11:
        DATA32
        DC32     ?_144

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_12:
        DATA32
        DC32     ?_145

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_13:
        DATA32
        DC32     ?_146

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_14:
        DATA32
        DC32     ?_147

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_15:
        DATA32
        DC32     ?_148

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_16:
        DATA32
        DC32     ?_149

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_17:
        DATA32
        DC32     ?_150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_18:
        DATA32
        DC32     ?_61

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_19:
        DATA32
        DC32     ?_151

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_20:
        DATA32
        DC32     ?_154

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121_21:
        DATA32
        DC32     gRadioEvntFlags
//  581 
//  582 /************************************************************************************
//  583 * process_incoming_msg
//  584 *
//  585 * This function process the received messages.
//  586 *
//  587 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  588 static void process_incoming_msg(void)
//  589 {
process_incoming_msg:
        PUSH     {R1-R7,LR}
//  590   
//  591 #if INTERFACE_TYPE == SERIAL        
//  592   uint8_t i;
//  593   four_digit_bcd_t tmp = {0,0,0,0,0,0};
        LDR      R0,??DataTable122_1
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+4]
//  594 #endif
//  595 #if INTERFACE_TYPE == MANUAL 
//  596   link_quality_value_t u8LQIAdjusted;
//  597 #endif  
//  598   uint8_t u8MsgLen;
//  599   uint8_t * ptrRcvMsg;
//  600   uint8_t u8Lqi;
//  601 
//  602   
//  603   uint16_t u16SeqNum;
//  604   static uint16_t u16MsgCounter = 0;
//  605   static uint16_t u16TotalMsg = 10;
//  606   
//  607 #if (INTERFACE_TYPE == MANUAL) && (gLCDSupported_d)     
//  608   static uint8_t u8State = 0;
//  609 #endif
//  610   
//  611 #if OTAP_ENABLED == TRUE  
//  612   OTAP_data_indication_execute();
//  613   if(!gbOtapExecute)
//  614 #endif
//  615     
//  616   {
//  617     if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
        LDR      R6,??DataTable122_2
        LDR      R5,??DataTable122
        LDRB     R0,[R5, #+16]
        CMP      R0,#+2
        BEQ      .+4
        B        ??process_incoming_msg_0
//  618     {
//  619       u8MsgLen = sizeof(ku8ExpectedString);
        MOVS     R7,#+16
//  620       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[5]);
//  621       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8ExpectedString, u8MsgLen))
        MOVS     R2,#+16
        LDR      R1,??DataTable122_3
        LDR      R0,[R5, #+4]
        ADDS     R0,R0,#+7
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_1
//  622       {
//  623   #if INTERFACE_TYPE == SERIAL        
//  624         uint8_t u8Lqi;
//  625   #endif
//  626         u16SeqNum = (RX_msg.pu8Buffer->u8Data[3] << 8);
//  627         u16SeqNum |= RX_msg.pu8Buffer->u8Data[4];
        LDR      R0,[R5, #+4]
        LDRB     R1,[R0, #+5]
        LSLS     R4,R1,#+8
        LDRB     R1,[R0, #+6]
        ORRS     R4,R4,R1
//  628         if(u16SeqNum < u16TotalMsg)
        LDRH     R2,[R5, #+46]
        CMP      R4,R2
        BCS      ??process_incoming_msg_2
//  629         {
//  630           u16TotalMsg = (RX_msg.pu8Buffer->u8Data[1] << 8);
//  631           u16TotalMsg |= RX_msg.pu8Buffer->u8Data[2];    
        LDRB     R1,[R0, #+3]
        LSLS     R1,R1,#+8
        LDRB     R0,[R0, #+4]
        ORRS     R1,R1,R0
        STRH     R1,[R5, #+46]
//  632         }
//  633         
//  634                 
//  635         ACK_msg.pu8Buffer->u8Data[0] = 'A';
??process_incoming_msg_2:
        MOVS     R0,#+65
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+2]
//  636         ACK_msg.pu8Buffer->u8Data[1] = 'C';
        MOVS     R0,#+67
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+3]
//  637         ACK_msg.pu8Buffer->u8Data[2] = 'K';
        MOVS     R0,#+75
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+4]
//  638   
//  639   #if INTERFACE_TYPE == SERIAL
//  640         ACK_msg.pu8Buffer->u8Data[3] = 0; //lqi 
        MOVS     R0,#+0
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+5]
//  641   #endif      
//  642   
//  643   #if INTERFACE_TYPE == MANUAL
//  644         ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
//  645   #endif      
//  646   
//  647         
//  648   #if SMAC_FEATURE_SECURITY ==  TRUE
//  649         uint8_t fill_counter;
//  650         for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
//  651         {
//  652           ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
//  653         }
//  654   
//  655         if(AES_DEFAULT_MODE != AES_CTR_MODE)
//  656         {
//  657           ACK_msg.u8BufSize = 2*BLOCK_SIZE;
//  658         }
//  659         else
//  660         {
//  661           ACK_msg.u8BufSize = BLOCK_SIZE;
//  662         }
//  663   
//  664         (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
//  665   #else
//  666           ACK_msg.pu8Buffer->u8Data[4] = '\0';
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+6]
//  667           ACK_msg.u8BufSize = 5;
        MOVS     R0,#+5
        STRB     R0,[R6, #+8]
//  668   #endif  
//  669           
//  670           
//  671         MCPSDataRequest(&ACK_msg); 
        MOVS     R0,R6
        BL       MCPSDataRequest
//  672         
//  673         
//  674         
//  675         u16MsgCounter++;
        LDRH     R0,[R5, #+44]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+44]
//  676         
//  677   #if INTERFACE_TYPE == SERIAL        
//  678         Uart_Print("\r\nN:");
        LDR      R0,??DataTable122_4
        BL       Uart_Print
//  679         tmp = convert_2_bcd(u16SeqNum);
        MOVS     R0,R4
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  680         Uart_PrintHex((uint8_t *)(&tmp),3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  681         Uart_Print(" L:");
        ADR      R0,??DataTable123  ;; " L:"
        BL       Uart_Print
//  682         tmp = convert_2_bcd(u8MsgLen);
        MOVS     R0,#+16
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  683         Uart_PrintHex((uint8_t *)(&tmp),1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  684         Uart_Print(" LQI=-");
        LDR      R0,??DataTable123_1
        BL       Uart_Print
//  685         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+0
        ADDS     R0,R0,#+1
        BL       MLMELinkQuality
//  686         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+1]
//  687         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+1]
        CMP      R0,#+101
        BGE      ??process_incoming_msg_3
//  688         {  
//  689           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_4
//  690         }
//  691         else
//  692         {
//  693           u8Lqi = u8Lqi - 100;
??process_incoming_msg_3:
        MOV      R0,SP
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+100
??process_incoming_msg_4:
        STRB     R0,[R1, #+1]
//  694         }
//  695         tmp = convert_2_bcd(u8Lqi);
        MOV      R0,SP
        LDRB     R0,[R0, #+1]
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  696         Uart_PrintHex((uint8_t *)(&tmp),1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  697         Uart_Print(" CRC=1 Data=");
        LDR      R0,??DataTable123_2
        BL       Uart_Print
//  698       
//  699         for(i=5; i<21; i++)
        MOVS     R4,#+5
//  700         {
//  701           Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
??process_incoming_msg_5:
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR      R0,[R5, #+4]
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+2
        BL       Uart_PrintHex
//  702           ((RX_msg.pu8Buffer)->u8Data[i]) = 0;
        MOVS     R0,#+0
        LDR      R1,[R5, #+4]
        ADDS     R1,R1,R4
        STRB     R0,[R1, #+2]
//  703         }
        ADDS     R4,R4,#+1
        CMP      R4,#+21
        BLT      ??process_incoming_msg_5
//  704         
//  705    #endif 
//  706        
//  707       #if INTERFACE_TYPE == MANUAL
//  708         
//  709         (void)MLMELinkQuality(&u8Lqi);
//  710         u8Lqi = (u8Lqi / 3);
//  711         if(100 >= u8Lqi)
//  712         {  
//  713           u8Lqi = 100 - u8Lqi;
//  714         }
//  715         else
//  716         {
//  717           u8Lqi = u8Lqi - 100;
//  718         }
//  719         
//  720         if(u8Lqi<minLQI) minLQI=u8Lqi;
//  721        if(u8Lqi>maxLQI) maxLQI=u8Lqi;
//  722         
//  723 #endif
//  724         
//  725                
//  726         
//  727         
//  728 //  #if INTERFACE_TYPE == MANUAL        
//  729         LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  730 //  #endif      
//  731       }
//  732       
//  733       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  734       if( (TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8DoneStr, 4)) &&
//  735         (0 != u16MsgCounter))
??process_incoming_msg_1:
        MOVS     R2,#+4
        LDR      R1,??DataTable123_3
        LDR      R0,[R5, #+4]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_0
        LDRH     R0,[R5, #+44]
        CMP      R0,#+0
        BEQ      ??process_incoming_msg_0
//  736       {
//  737 
//  738   #if INTERFACE_TYPE == SERIAL 
//  739         tmp = convert_2_bcd(u16MsgCounter);
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  740         Uart_Print("\r\n\nGood:	");
        LDR      R0,??DataTable123_4
        BL       Uart_Print
//  741         Uart_PrintHex((uint8_t *)(&tmp),3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  742         Uart_Print("/");
        ADR      R0,??DataTable123_5  ;; "/"
        BL       Uart_Print
//  743 
//  744         tmp = convert_2_bcd(u16TotalMsg);
        LDRH     R0,[R5, #+46]
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  745         Uart_PrintHex((uint8_t *)(&tmp),3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  746         Uart_Print("\r\n\nHalt\n");
        LDR      R0,??DataTable124
        BL       Uart_Print
//  747   #endif 
//  748 
//  749   #if INTERFACE_TYPE == MANUAL
//  750         u16MsgCounter--;
//  751         c_test_num = convert_2_bcd(u16MsgCounter);
//  752         
//  753 #if (gLCDSupported_d)      
//  754 
//  755         LCD_WriteString_NormalFont(4,"                     ");
//  756         LCD_WriteStringValue("             /",(u16TotalMsg),4,gLCD_DecFormat_c);
//  757 
//  758         if(100 > u16MsgCounter)
//  759         {
//  760           LCD_WriteStringValue("    Good:  ",(u16MsgCounter),4,gLCD_DecFormat_c);
//  761         }
//  762         else if(1000 > u16MsgCounter)
//  763         {
//  764           LCD_WriteStringValue("    Good: ",(u16MsgCounter),4,gLCD_DecFormat_c);
//  765         }
//  766         else
//  767         {
//  768           LCD_WriteStringValue("    Good:",(u16MsgCounter),4,gLCD_DecFormat_c);
//  769         }  
//  770         LCD_WriteStringValue("Max LQI:",(maxLQI),5,gLCD_DecFormat_c);
//  771         LCD_WriteStringValue("Min LQI:",(minLQI),6,gLCD_DecFormat_c);
//  772          DelayMs(1500);
//  773           maxLQI=0;
//  774           minLQI=255;
//  775          
//  776           
//  777         LCD_WriteString_NormalFont(7," SW4 Start Listening ");
//  778   #endif         
//  779 
//  780   #endif      
//  781         u16MsgCounter = 0;
        MOVS     R0,#+0
        STRH     R0,[R5, #+44]
//  782         gu32PerRxEvents |= PER_DONE_MSG_EVNT;
        LDR      R0,[R5, #+56]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        STR      R1,[R5, #+56]
//  783       }
//  784     }
//  785   
//  786     if(SMAC_CONTINUOUS_RX == u8CurrentMode)
??process_incoming_msg_0:
        LDRB     R0,[R5, #+16]
        CMP      R0,#+1
        BNE      ??process_incoming_msg_6
//  787     { 
//  788       u8MsgLen = RX_msg.u8BufSize;
        LDRB     R7,[R5, #+8]
//  789   #if INTERFACE_TYPE == SERIAL
//  790       LED_ToggleLed(LED1);
        BL       LED_ToggleLed
//  791       Uart_Print("\r\n");
        ADR      R0,??DataTable124_1  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       Uart_Print
//  792       Uart_Print("Received Packet:");
        LDR      R0,??DataTable124_2
        BL       Uart_Print
//  793       for(i=1; i < u8MsgLen ; i++)
        MOVS     R4,#+1
        ADR      R0,??DataTable124_3  ;; 0x30, 0x78, 0x00, 0x00
        STR      R0,[SP, #+8]
        B        ??process_incoming_msg_7
//  794       {
//  795         Uart_Print("0x");
??process_incoming_msg_8:
        LDR      R0,[SP, #+8]
        BL       Uart_Print
//  796         Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR      R0,[R5, #+4]
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+2
        BL       Uart_PrintHex
//  797         (RX_msg.pu8Buffer)->u8Data[i] = 0;
        MOVS     R0,#+0
        LDR      R1,[R5, #+4]
        ADDS     R1,R1,R4
        STRB     R0,[R1, #+2]
//  798         Uart_Print(" ");
        ADR      R0,??DataTable124_4  ;; " "
        BL       Uart_Print
//  799       }
        ADDS     R4,R4,#+1
??process_incoming_msg_7:
        CMP      R4,R7
        BLT      ??process_incoming_msg_8
//  800       Uart_Print("\n");
        ADR      R0,??DataTable124_5  ;; "\n"
        BL       Uart_Print
//  801   #endif 
//  802 
//  803 #if INTERFACE_TYPE == MANUAL && gLCDSupported_d
//  804       if(2 > u8State)
//  805       {
//  806         u8State++;
//  807         LCD_DrawIcon(50,4,u8RxIcon1_c);
//  808       }
//  809       else if(4 > u8State)
//  810       {
//  811         u8State++;     
//  812         LCD_DrawIcon(50,4,u8RxIcon2_c);
//  813       }
//  814       else
//  815       {
//  816         u8State = 0;
//  817       }
//  818 #endif
//  819         LED_ToggleLed(LED1); 
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  820     }  
//  821     
//  822     if( SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??process_incoming_msg_6:
        LDRB     R0,[R5, #+16]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_9
//  823     {
//  824       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  825       u8MsgLen = sizeof(u8RangeExpectedString);
        MOVS     R7,#+10
//  826   
//  827   #if SMAC_FEATURE_SECURITY ==  TRUE
//  828       {
//  829         (void)DecipherMsgU8(&(RX_msg.pu8Buffer->u8Data[1]), 
//  830                             (RX_msg.u8BufSize));
//  831       }
//  832   #endif
//  833   
//  834       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
        MOVS     R2,#+10
        LDR      R1,??DataTable124_6
        LDR      R0,[R5, #+4]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_9
//  835       {  
//  836         u8Lqi = 0;
        MOVS     R4,#+0
        MOV      R1,SP
        STRB     R4,[R1, #+0]
//  837         gu8ValidRangePacket = TRUE;
        STRB     R0,[R5, #+25]
//  838         (void)MLMELinkQuality(&u8Lqi);
        MOV      R0,SP
        BL       MLMELinkQuality
//  839         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  840         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+101
        BGE      ??process_incoming_msg_10
//  841         {  
//  842           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_11
//  843         }
//  844         else
//  845         {
//  846           u8Lqi = u8Lqi - 100;
??process_incoming_msg_10:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+100
??process_incoming_msg_11:
        STRB     R0,[R1, #+0]
//  847         }
//  848    
//  849   #if INTERFACE_TYPE == MANUAL      
//  850         u8LQIAdjusted = adjust_LQI(u8Lqi);
//  851   #endif      
//  852 #if (gLCDSupported_d)
//  853         LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        MOV      R0,SP
        LDRB     R1,[R0, #+0]
        LDR      R0,??DataTable125
        BL       LCD_WriteStringValue
//  854           if(u8Lqi <= LQI_LIM4)
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+41
        BGE      ??process_incoming_msg_12
//  855         {
//  856           LCD_DrawIcon(80,3,u8LQIIcon4_c);
        MOVS     R2,R5
        ADDS     R2,R2,#+60
        B        ??process_incoming_msg_13
//  857         }
//  858         else if(u8Lqi <= LQI_LIM3)
??process_incoming_msg_12:
        CMP      R0,#+60
        BGT      ??process_incoming_msg_14
//  859         {
//  860           LCD_DrawIcon(80,3,u8LQIIcon3_c);
        MOVS     R2,R5
        ADDS     R2,R2,#+132
        B        ??process_incoming_msg_13
//  861         }
//  862         else if (u8Lqi <= LQI_LIM2)
??process_incoming_msg_14:
        CMP      R0,#+81
        BGE      ??process_incoming_msg_15
//  863         {
//  864           LCD_DrawIcon(80,3,u8LQIIcon2_c);
        MOVS     R2,R5
        ADDS     R2,R2,#+204
        B        ??process_incoming_msg_13
//  865         }
//  866         else
//  867         {
//  868           LCD_DrawIcon(80,3,u8LQIIcon1_c);
??process_incoming_msg_15:
        MOVS     R0,#+138
        LSLS     R0,R0,#+1        ;; #+276
        ADDS     R2,R5,R0
??process_incoming_msg_13:
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       LCD_DrawIcon
//  869         }
//  870      
//  871 #endif
//  872         ACK_msg.pu8Buffer->u8Data[0] = 'A';
        MOVS     R0,#+65
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+2]
//  873         ACK_msg.pu8Buffer->u8Data[1] = 'C';
        MOVS     R0,#+67
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+3]
//  874         ACK_msg.pu8Buffer->u8Data[2] = 'K';
        MOVS     R0,#+75
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+4]
//  875   
//  876   #if INTERFACE_TYPE == SERIAL
//  877         ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+5]
//  878   #endif      
//  879   
//  880   #if INTERFACE_TYPE == MANUAL
//  881         ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
//  882   #endif      
//  883   
//  884         
//  885   #if SMAC_FEATURE_SECURITY ==  TRUE
//  886         uint8_t fill_counter;
//  887         for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
//  888         {
//  889           ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
//  890         }
//  891   
//  892         if(AES_DEFAULT_MODE != AES_CTR_MODE)
//  893         {
//  894           ACK_msg.u8BufSize = 2*BLOCK_SIZE;
//  895         }
//  896         else
//  897         {
//  898           ACK_msg.u8BufSize = BLOCK_SIZE;
//  899         }
//  900   
//  901         (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
//  902   #else
//  903           ACK_msg.pu8Buffer->u8Data[4] = '\0';
        LDR      R0,[R6, #+4]
        STRB     R4,[R0, #+6]
//  904           ACK_msg.u8BufSize = 5;
        MOVS     R0,#+5
        STRB     R0,[R6, #+8]
//  905   #endif  
//  906         
//  907               
//  908   #if INTERFACE_TYPE == SERIAL
//  909         Uart_Print("\r\n"); 
        ADR      R0,??DataTable124_1  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       Uart_Print
//  910         Uart_Print(" LQI=-");
        LDR      R0,??DataTable123_1
        BL       Uart_Print
//  911         tmp = convert_2_bcd(u8Lqi);
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  912         Uart_PrintHex((uint8_t *)(&tmp),1,0); 
        MOVS     R2,#+0
        MOVS     R1,#+1
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  913   #else
//  914     DelayMs(2);      
//  915   #endif  
//  916   
//  917       
//  918        LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  919   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  920         LEDs_LQI_indication( u8LQIAdjusted); 
//  921   #endif 
//  922       }
//  923     } 
//  924    
//  925 if(SMAC_TEST_MODE_RANGE_TX == u8CurrentMode)
??process_incoming_msg_9:
        LDRB     R0,[R5, #+16]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_16
//  926     u8MsgLen = 3;
        MOVS     R7,#+3
//  927     ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
//  928     {
//  929       
//  930   #if SMAC_FEATURE_SECURITY ==  TRUE
//  931     (void)DecipherMsgU8 (&(RX_msg.pu8Buffer->u8Data[0]),(RX_msg.u8BufSize));    
//  932   #endif
//  933     
//  934       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
??process_incoming_msg_16:
        LSLS     R2,R7,#+24
        LSRS     R2,R2,#+24
        Nop      
        ADR.N    R1,ku8AckString
        LDR      R0,[R5, #+4]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_17
//  935       {
//  936   #if (gLEDSupported_d  || INTERFACE_TYPE == SERIAL)   
//  937         uint8_t u8Lqi;
//  938         u8Lqi = RX_msg.pu8Buffer->u8Data[4];
        LDR      R0,[R5, #+4]
        LDRB     R4,[R0, #+6]
//  939   #endif
//  940         
//  941         
//  942   #if INTERFACE_TYPE == SERIAL
//  943 
//  944         Uart_Print("\r\n");   
        ADR      R0,??DataTable124_1  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       Uart_Print
//  945         Uart_Print(" LQI=-");
        ADR.N    R0,?_67
        BL       Uart_Print
//  946         tmp = convert_2_bcd(u8Lqi);
        MOVS     R0,R4
        BL       convert_2_bcd
        STR      R0,[SP, #+4]
//  947         Uart_PrintHex((uint8_t *)(&tmp),1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        ADD      R0,SP,#+4
        BL       Uart_PrintHex
//  948   #endif 
//  949         
//  950   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  951        Led1Toggle(); 
//  952        LEDs_LQI_indication((link_quality_value_t)u8Lqi); 
//  953 
//  954   #endif      
//  955         gu8ValidAckPacket = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+26]
//  956       }
//  957     }     
//  958        
//  959   }
//  960 }
??process_incoming_msg_17:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_1:
        DATA32
        DC32     ?_64

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_2:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_3:
        DATA32
        DC32     ku8ExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_4:
        DATA32
        DC32     ?_65

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ku8AckString:
        DATA8
        DC8 65, 67, 75, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_67:
        DC8 " LQI=-"
        DATA8
        DC8 0
//  961 
//  962 #if INTERFACE_TYPE == MANUAL 
//  963 
//  964 /************************************************************************************
//  965 * select_config_option_isr
//  966 *
//  967 * This function is the callback function for the KBI4 interruption, it enables only 
//  968 * a flag to indicate that the KBI interruption occurred and the current option
//  969 * to configure must increase.
//  970 *
//  971 ************************************************************************************/
//  972   void select_config_option_isr(void)
//  973   {
//  974     DelayMs(BOUNCE_TIME);
//  975     gu8TestModeEvents |= CHANGE_OPTION_CONFIG_EVENT;
//  976   }
//  977 
//  978 /************************************************************************************
//  979 * increase_config_option_isr
//  980 *
//  981 * This function turns on a flag to indicate that the KBI5 interruption occurred, 
//  982 * which is used to increase the current option value.
//  983 *
//  984 ***********************************************************************************/
//  985 
//  986  void increase_config_option_isr(void)
//  987   {
//  988     DelayMs(BOUNCE_TIME);
//  989     gu8TestModeEvents |= TEST_MODE_INCREASE_EVENT;
//  990     gu8TestAlreadyStarted = FALSE;
//  991   }
//  992 
//  993 /************************************************************************************
//  994 * decrease_config_option_isr
//  995 *
//  996 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  997 * which is used to decrease the current option value.
//  998 *
//  999 ***********************************************************************************/
// 1000 
// 1001   void decrease_config_option_isr(void)
// 1002   {
// 1003     DelayMs(BOUNCE_TIME);
// 1004     gu8TestModeEvents |= TEST_MODE_DECREASE_EVENT;
// 1005     gu8TestAlreadyStarted = FALSE;    
// 1006   }
// 1007 
// 1008 /************************************************************************************
// 1009 * decrease_config_option_isr
// 1010 *
// 1011 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
// 1012 * which is used to decrease the current option value.
// 1013 *
// 1014 ***********************************************************************************/
// 1015 
// 1016 void start_test_isr(void)
// 1017 {
// 1018   DelayMs(BOUNCE_TIME);
// 1019   gu8TestModeEvents |= TEST_START_EVENT;
// 1020   gu8TestAlreadyStarted = FALSE;
// 1021 }
// 1022 
// 1023 #endif
// 1024 
// 1025 /************************************************************************************
// 1026 * process_test_mode_app
// 1027 *
// 1028 * This function process the test mode application, execute the serial or the manual
// 1029 * interface code according with the selected interface type in the app_config.h file.
// 1030 *
// 1031 ************************************************************************************/
// 1032 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1033 void process_test_mode_app(void){
process_test_mode_app:
        PUSH     {R7,LR}
// 1034   
// 1035 #if INTERFACE_TYPE == MANUAL
// 1036   FuncReturn_t tmpChange;
// 1037   uint8_t u8SafeTimeOut;
// 1038 #endif
// 1039 
// 1040   if (CHANGE_OPTION_CONFIG_EVENT & gu8TestModeEvents)
        LDR      R0,??DataTable126
        LDRB     R1,[R0, #+24]
        LSLS     R2,R1,#+29
        BPL      ??process_test_mode_app_0
// 1041   {
// 1042    clear_event(gu8TestModeEvents,CHANGE_OPTION_CONFIG_EVENT);
        MOVS     R2,#+251
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+24]
// 1043    
// 1044 #if (gLCDSupported_d)
// 1045    if(gRxTestMode_c <= CurrentOption)
        LDRB     R1,[R0, #+19]
        CMP      R1,#+2
        BLT      ??process_test_mode_app_1
// 1046     {
// 1047       CurrentOption = gChannel_c;
        MOVS     R1,#+0
        B        ??process_test_mode_app_2
// 1048     }
// 1049     else
// 1050     {
// 1051       CurrentOption++;
??process_test_mode_app_1:
        ADDS     R1,R1,#+1
??process_test_mode_app_2:
        STRB     R1,[R0, #+19]
// 1052     }
// 1053 #else
// 1054     if(MAX_OPTION_CONFIG <= CurrentOption)
// 1055     {
// 1056       CurrentOption = gChannel_c;
// 1057     }
// 1058     else
// 1059     {
// 1060       CurrentOption++;
// 1061     }
// 1062 #endif
// 1063    
// 1064 #if (gLCDSupported_d)   
// 1065    DisplayTestMode(CurrentOption);
        LDRB     R0,[R0, #+19]
        BL       DisplayTestMode
// 1066 #endif
// 1067   }
// 1068 
// 1069   #if INTERFACE_TYPE == SERIAL
// 1070   
// 1071     switch(main_menu())
??process_test_mode_app_0:
        BL       main_menu
        CMP      R0,#+49
        BEQ      ??process_test_mode_app_3
        CMP      R0,#+50
        BEQ      ??process_test_mode_app_4
        CMP      R0,#+51
        BEQ      ??process_test_mode_app_5
        CMP      R0,#+52
        BEQ      ??process_test_mode_app_6
        CMP      R0,#+112
        BEQ      ??process_test_mode_app_7
        B        ??process_test_mode_app_8
// 1072     {
// 1073 
// 1074        case ChannelAdjustment:
// 1075           channel_adjust();
??process_test_mode_app_3:
        BL       channel_adjust
// 1076           break;
        B        ??process_test_mode_app_7
// 1077         case PowerAdjustment:
// 1078           power_adjust();
??process_test_mode_app_4:
        BL       power_adjust
// 1079           break;
        B        ??process_test_mode_app_7
// 1080         case TestAdjustment:
// 1081           tx_rx_select();
??process_test_mode_app_5:
        BL       tx_rx_select
// 1082           break;
        B        ??process_test_mode_app_7
// 1083         case ClockAdjustment:  
// 1084           configure_clock_settings();
??process_test_mode_app_6:
        BL       configure_clock_settings
// 1085           break;
        B        ??process_test_mode_app_7
// 1086         case PreviousMenu:
// 1087           break;
// 1088         default:
// 1089           Uart_Print("  Invalid Option!!!\n");
??process_test_mode_app_8:
        LDR      R0,??DataTable127
        BL       Uart_Print
// 1090           break;
// 1091       }
// 1092   #else 
// 1093       
// 1094   #if INTERFACE_TYPE == MANUAL
// 1095       LED_SetHex(CurrentOption);
// 1096       switch(CurrentOption)
// 1097       {
// 1098         case gChannel_c:
// 1099           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
// 1100           {
// 1101             MLMETestMode(SMAC_TEST_MODE_IDLE);
// 1102             DelayUs(10);
// 1103             tmpChange = gFail_c;
// 1104             u8SafeTimeOut = 0xff;
// 1105             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
// 1106             {
// 1107               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
// 1108               do{
// 1109                 if(MAX_CHAN_NUM <= u8TestModeChannel)
// 1110                 {
// 1111                   u8TestModeChannel = CHANNEL11;
// 1112                 }
// 1113                 else
// 1114                 {
// 1115                   u8TestModeChannel ++;
// 1116                 }
// 1117                 u8SafeTimeOut++;
// 1118                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1119               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
// 1120              
// 1121             }
// 1122             else
// 1123             {
// 1124               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1125               do{
// 1126                 if(CHANNEL11 == u8TestModeChannel)
// 1127                 {
// 1128                   u8TestModeChannel = (channel_num_t)MAX_CHAN_NUM;
// 1129                 }
// 1130                 else
// 1131                 {
// 1132                   u8TestModeChannel --;
// 1133                 }
// 1134                 u8SafeTimeOut++;
// 1135                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1136               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
// 1137             }
// 1138 
// 1139             MLMETestMode(u8CurrentMode);
// 1140 #if (gLCDSupported_d)           
// 1141             LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
// 1142 #endif
// 1143             LEDs_Flash(u8TestModeChannel, FLASH_DELAY);
// 1144  
// 1145           }
// 1146 
// 1147           break;
// 1148        
// 1149         case  gPower_c:
// 1150           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
// 1151           {
// 1152             tmpChange = gFail_c;
// 1153             u8SafeTimeOut = 0xff;
// 1154             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
// 1155             {
// 1156               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
// 1157               do{
// 1158                 if(MAX_POWER <= u8TestModePower)
// 1159                 {
// 1160                   u8TestModePower = MIN_POWER;
// 1161                 }
// 1162                 else
// 1163                 { 
// 1164                   u8TestModePower++;
// 1165                 }
// 1166                 u8SafeTimeOut++;
// 1167                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1168               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
// 1169             }
// 1170             else
// 1171             {
// 1172               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1173   
// 1174               do{
// 1175                 if(MIN_POWER == u8TestModePower)
// 1176                 {
// 1177                   u8TestModePower = MAX_POWER;
// 1178                 }
// 1179                 else 
// 1180                 {
// 1181                   u8TestModePower--;
// 1182                 }
// 1183                 u8SafeTimeOut++;
// 1184                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1185               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
// 1186             }
// 1187 
// 1188 #if (gLCDSupported_d)          
// 1189             LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
// 1190 #endif            
// 1191             LEDs_Flash(u8TestModePower, FLASH_DELAY);
// 1192           }
// 1193           break;
// 1194           
// 1195         case gRxTestMode_c:
// 1196           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
// 1197           {
// 1198             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);           
// 1199             if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
// 1200             {
// 1201               u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 1202             }            
// 1203             else
// 1204             {
// 1205               u8CurrentMode ++;
// 1206             }
// 1207             MLMETestMode(u8CurrentMode);
// 1208 #if (gLCDSupported_d)            
// 1209             DisplayTestMode(CurrentOption);
// 1210 #endif            
// 1211             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
// 1212           }
// 1213           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
// 1214           {
// 1215             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);           
// 1216             if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
// 1217             {
// 1218              u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
// 1219             }
// 1220             else
// 1221             {            
// 1222               u8CurrentMode --;
// 1223             }
// 1224             MLMETestMode(u8CurrentMode);
// 1225 #if (gLCDSupported_d)            
// 1226             DisplayTestMode(CurrentOption);
// 1227 #endif            
// 1228             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
// 1229           }
// 1230           
// 1231           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
// 1232           LED_SetHex(CurrentOption);
// 1233          
// 1234           while((SMAC_TEST_MODE_PER_RX == u8CurrentMode)  && 
// 1235                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1236                 (gRxTestMode_c == CurrentOption))
// 1237           {
// 1238             if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)            
// 1239             {  
// 1240               packet_error_rate_rx_test();
// 1241             }
// 1242           }  
// 1243           
// 1244           while( (SMAC_TEST_MODE_RANGE_RX == u8CurrentMode) && 
// 1245                  (NO_TEST_MODE_EVENT == gu8TestModeEvents)  &&
// 1246                  (gRxTestMode_c == CurrentOption) )
// 1247           {
// 1248             range_rx_test();
// 1249           }           
// 1250           while( (SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode) && 
// 1251                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1252                 (gRxTestMode_c == CurrentOption) )
// 1253           {
// 1254             pulse_prbs9_tx();
// 1255           }
// 1256 
// 1257           while( (SMAC_TEST_MODE_PER_TX == u8CurrentMode) &&  
// 1258                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1259                 )
// 1260           {
// 1261             packet_error_rate_tx_test();
// 1262           }  
// 1263           
// 1264           while( (SMAC_TEST_MODE_RANGE_TX == u8CurrentMode) &&  
// 1265                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1266                 )
// 1267           {
// 1268             range_tx_test();
// 1269           }           
// 1270           
// 1271           break;
// 1272           
// 1273         case gBulkCap_c:
// 1274           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
// 1275           {
// 1276             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
// 1277             enable_bulk_cap(); 
// 1278             u8BulkCapState = gEnable_c;
// 1279             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
// 1280           }
// 1281           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
// 1282           {
// 1283             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1284             disable_bulk_cap(); 
// 1285             u8BulkCapState = gDisable_c;
// 1286             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
// 1287           }
// 1288           break; 
// 1289             
// 1290         case gCoarseTune_c:
// 1291           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
// 1292           {
// 1293             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
// 1294             if(MAX_COARSE_TUNE == u8CurrentCoarseTune)
// 1295             {
// 1296               u8CurrentCoarseTune = MIN_COARSE_TUNE;
// 1297             }
// 1298             else
// 1299             {
// 1300               u8CurrentCoarseTune++;
// 1301             }
// 1302             set_xtal_coarse_tune(u8CurrentCoarseTune);
// 1303             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
// 1304           }
// 1305           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
// 1306           {
// 1307             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1308             if(MIN_COARSE_TUNE == u8CurrentCoarseTune)
// 1309             {
// 1310               u8CurrentCoarseTune = MAX_COARSE_TUNE;
// 1311             }
// 1312             else
// 1313             {
// 1314               u8CurrentCoarseTune--;
// 1315             }
// 1316             set_xtal_coarse_tune(u8CurrentCoarseTune);
// 1317             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
// 1318           }
// 1319           break; 
// 1320           
// 1321         case gFineTune_c:
// 1322           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
// 1323           {
// 1324             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
// 1325             if(MAX_FINE_TUNE == u8CurrentFineTune)
// 1326             {
// 1327               u8CurrentFineTune = MIN_FINE_TUNE;
// 1328             }
// 1329             else
// 1330             {
// 1331               u8CurrentFineTune++;
// 1332             }
// 1333             set_xtal_fine_tune(u8CurrentFineTune);
// 1334             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1335             if(0x0F < u8CurrentFineTune)
// 1336             {
// 1337               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1338             }
// 1339           }
// 1340           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
// 1341           {
// 1342             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1343             if(MIN_FINE_TUNE == u8CurrentFineTune)
// 1344             {
// 1345               u8CurrentCoarseTune = MAX_FINE_TUNE;
// 1346             }
// 1347             else
// 1348             {
// 1349               u8CurrentFineTune--;
// 1350             }
// 1351             set_xtal_fine_tune(u8CurrentFineTune);
// 1352             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1353             if(0x0F < u8CurrentFineTune)
// 1354             {
// 1355               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1356             }
// 1357           }
// 1358           break;  
// 1359           
// 1360         default:
// 1361           break;
// 1362       }
// 1363   #endif
// 1364 #endif
// 1365 
// 1366 }
??process_test_mode_app_7:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123:
        DATA8
        DC8      " L:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_1:
        DATA32
        DC32     ?_67

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_2:
        DATA32
        DC32     ?_68

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_3:
        DATA32
        DC32     ku8DoneStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_4:
        DATA32
        DC32     ?_69

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_5:
        DATA8
        DC8      "/",0x0,0x0
// 1367 
// 1368 /************************************************************************************
// 1369 * adjust_LQI
// 1370 *
// 1371 * The purpose of this function is to adjust the link quality indicator value obtained
// 1372 * from the MLMELinkQuality primitive to only four possible values.
// 1373 *
// 1374 ************************************************************************************/
// 1375 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1376 link_quality_value_t adjust_LQI(uint8_t u8LQI)
// 1377 {
// 1378   link_quality_value_t LQIAdjusted;
// 1379   
// 1380   if(LQI_LIM1 < u8LQI)
adjust_LQI:
        CMP      R0,#+89
        BLT      ??adjust_LQI_0
// 1381   {
// 1382      LQIAdjusted = gFarRange_c;
        MOVS     R0,#+0
        BX       LR
// 1383   }  
// 1384   else
// 1385   {
// 1386     if(LQI_LIM2 < u8LQI)
??adjust_LQI_0:
        CMP      R0,#+81
        BLT      ??adjust_LQI_1
// 1387     {
// 1388        LQIAdjusted = gMediumRange_c;
        MOVS     R0,#+1
        BX       LR
// 1389     }
// 1390     else
// 1391     {
// 1392        if(LQI_LIM3 <= u8LQI)
??adjust_LQI_1:
        CMP      R0,#+60
        BLT      ??adjust_LQI_2
// 1393        {
// 1394          LQIAdjusted = gNearRange_c;
        MOVS     R0,#+2
        BX       LR
// 1395        }
// 1396        else
// 1397        {
// 1398          LQIAdjusted = gVeryNearRange_c;
??adjust_LQI_2:
        MOVS     R0,#+3
// 1399        }
// 1400      }
// 1401   }
// 1402   return LQIAdjusted;
        BX       LR               ;; return
// 1403 }
// 1404 
// 1405 
// 1406 /************************************************************************************
// 1407 * convert_2_bcd function
// 1408 *
// 1409 * This function converts the received data as parameter to bcd format
// 1410 *
// 1411 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1412 static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
// 1413 {
convert_2_bcd:
        PUSH     {R2-R7,LR}
// 1414   four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
        LDR      R1,??DataTable127_1
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+4]
// 1415   uint16_t tmp;
// 1416   if(10000 > u16Value)
        LSLS     R5,R0,#+16
        LSRS     R5,R5,#+16
        LDR      R1,??DataTable128  ;; 0x2710
        CMP      R5,R1
        BGE      ??convert_2_bcd_0
// 1417   {
// 1418     tmp = u16Value;
        MOVS     R1,R0
// 1419     if(1000 <= u16Value)
        MOVS     R4,#+15
        MOVS     R6,#+250
        LSLS     R6,R6,#+2        ;; #+1000
        CMP      R5,R6
        BLT      ??convert_2_bcd_1
// 1420     {
// 1421       tmp = u16Value/1000;
// 1422       u16RtrnVal.u8Thousands = tmp;
        ADD      R0,SP,#+4
        LDRB     R7,[R0, #+1]
        ANDS     R7,R7,R4
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_idiv
        LSLS     R0,R0,#+4
        ORRS     R0,R0,R7
        ADD      R1,SP,#+4
        STRB     R0,[R1, #+1]
// 1423       tmp = u16Value%1000;
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_idivmod
// 1424       u16Value = tmp;
        MOVS     R0,R1
// 1425     }
// 1426     if(100 <= u16Value)
??convert_2_bcd_1:
        LSLS     R6,R0,#+16
        LSRS     R6,R6,#+16
        MOVS     R5,#+240
        CMP      R6,#+100
        BLT      ??convert_2_bcd_2
// 1427     {
// 1428       tmp = u16Value/100;
// 1429       u16RtrnVal.u8Houndreds = tmp;
        ADD      R0,SP,#+4
        LDRB     R1,[R0, #+1]
        ANDS     R1,R1,R5
        STR      R1,[SP, #+0]
        MOVS     R0,R6
        MOVS     R1,#+100
        BL       __aeabi_idiv
        ANDS     R0,R0,R4
        LDR      R1,[SP, #+0]
        ORRS     R0,R0,R1
        ADD      R1,SP,#+4
        STRB     R0,[R1, #+1]
// 1430       tmp = u16Value%100;
        MOVS     R0,R6
        MOVS     R1,#+100
        BL       __aeabi_idivmod
// 1431       u16Value = tmp;
        MOVS     R0,R1
// 1432     }
// 1433     if(10 <= u16Value)
??convert_2_bcd_2:
        LSLS     R6,R0,#+16
        LSRS     R6,R6,#+16
        CMP      R6,#+10
        BLT      ??convert_2_bcd_3
// 1434     {
// 1435       tmp = u16Value/10;
// 1436       u16RtrnVal.u8Tens = tmp;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,R4
        STR      R0,[SP, #+0]
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idiv
        LSLS     R1,R0,#+4
        LDR      R0,[SP, #+0]
        ORRS     R1,R1,R0
        MOV      R0,SP
        STRB     R1,[R0, #+4]
// 1437       tmp = u16Value%10;
        MOVS     R0,R6
        MOVS     R1,#+10
        BL       __aeabi_idivmod
// 1438       u16Value = tmp;
// 1439     }
// 1440     u16RtrnVal.u8Units = tmp;
??convert_2_bcd_3:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        ANDS     R5,R5,R0
        ANDS     R4,R4,R1
        ORRS     R4,R4,R5
        MOV      R0,SP
        STRB     R4,[R0, #+4]
// 1441   }
// 1442   return u16RtrnVal;
??convert_2_bcd_0:
        LDR      R0,[SP, #+4]
        POP      {R1,R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1443 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124:
        DATA32
        DC32     ?_71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124_1:
        DATA8
        DC8      0x0D, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124_2:
        DATA32
        DC32     ?_73

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124_3:
        DATA8
        DC8      0x30, 0x78, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124_4:
        DATA8
        DC8      " ",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124_5:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124_6:
        DATA32
        DC32     u8RangeExpectedString
// 1444 
// 1445 
// 1446 
// 1447 /************************************************************************************
// 1448 * LEDs_Flash
// 1449 *
// 1450 * This function flash the binary number of the received parameter through LEDs.
// 1451 *
// 1452 ************************************************************************************/
// 1453 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1454 void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
// 1455 {
LEDs_Flash:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1456   LED_TurnOffAllLeds();  
        BL       LED_TurnOffAllLeds
// 1457   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1458   LED_SetHex(u8leds_state);
        MOVS     R0,R5
        BL       LED_SetHex
// 1459   DelayMs(msec);  
        MOVS     R0,R4
        BL       DelayMs
// 1460   LED_TurnOffAllLeds(); 
        BL       LED_TurnOffAllLeds
// 1461   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1462 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1463 
// 1464 /************************************************************************************
// 1465 * LoadPRBS9
// 1466 *
// 1467 * The purpose of this function is to load the pseudo random binary sequence order 9 
// 1468 * in a transmission message. The polynomial to transmit is the following:
// 1469 *
// 1470 *
// 1471 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1472 void LoadPRBS9(void)
// 1473 {
LoadPRBS9:
        PUSH     {R4-R7}
// 1474   uint8_t u8c1;                           /* Byte counter */
// 1475   uint8_t u8c2;                           /* Bit counter */
// 1476   uint16_t u16t1;                         /* LFSR */
// 1477   uint16_t u16t2;                         /* LFSR output */
// 1478   uint16_t u16t3;                         /* LFSR feedback tap */
// 1479   uint8_t u8t4;                           /* Assembled transmit byte */
// 1480   
// 1481   u16t1 = 0x01FF;                       /* Initialize the LFSR */
        LDR      R6,??DataTable128_1  ;; 0x1ff
// 1482   for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
        MOVS     R0,#+0
        MOVS     R1,#+0
// 1483   {
// 1484     u8t4 = 0x00;                        /* Initialize the byte */
??LoadPRBS9_0:
        MOVS     R4,#+0
// 1485     for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
        MOVS     R5,#+0
// 1486     {
// 1487       u16t2 = (u16t1 & 0x0001);       /* LFSR output */
??LoadPRBS9_1:
        MOVS     R2,#+1
        MOVS     R3,R6
        ANDS     R3,R3,R2
// 1488       if (u16t2 == 0x0001)
        BEQ      ??LoadPRBS9_2
// 1489       {
// 1490         u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
        MOVS     R7,R4
        MOVS     R4,#+128
        ORRS     R4,R4,R7
// 1491       }
// 1492       if (u8c2 != 7)
??LoadPRBS9_2:
        LSLS     R7,R5,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+7
        BEQ      ??LoadPRBS9_3
// 1493       {
// 1494         u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
        LSLS     R4,R4,#+24
        LSRS     R4,R4,#+25
// 1495       }
// 1496       
// 1497       u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
??LoadPRBS9_3:
        LSLS     R7,R6,#+24
        LSRS     R7,R7,#+28
        ANDS     R2,R2,R7
// 1498       u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
        LSLS     R7,R6,#+15
        LSRS     R7,R7,#+16
// 1499       if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
        CMP      R3,R2
        BNE      ??LoadPRBS9_4
// 1500       {
// 1501         u16t1 = u16t1 & 0xFEFF;
        LDR      R6,??DataTable129  ;; 0xfeff
        ANDS     R6,R6,R7
        B        ??LoadPRBS9_5
// 1502       }
// 1503       else
// 1504       {
// 1505         u16t1 = u16t1 | 0x0100;
??LoadPRBS9_4:
        MOVS     R6,#+128
        LSLS     R6,R6,#+1        ;; #+256
        ORRS     R6,R6,R7
// 1506       }
// 1507       }
??LoadPRBS9_5:
        ADDS     R5,R5,#+1
        LSLS     R2,R5,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+8
        BLT      ??LoadPRBS9_1
// 1508       TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
        LDR      R2,??DataTable130
        LDR      R2,[R2, #+4]
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+24
        ADDS     R2,R2,R3
        STRB     R4,[R2, #+2]
// 1509     } 
        ADDS     R1,R1,#+1
        LSLS     R2,R1,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+64
        BLT      ??LoadPRBS9_0
// 1510   TX_msg.pu8Buffer->u8Data[64] = '\0';
        LDR      R1,??DataTable130
        LDR      R2,[R1, #+4]
        MOVS     R3,#+66
        STRB     R0,[R2, R3]
// 1511   TX_msg.u8BufSize = 65;
        MOVS     R0,#+65
        STRB     R0,[R1, #+8]
// 1512 }
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable125:
        DATA32
        DC32     ?_77
// 1513 
// 1514 /************************************************************************************
// 1515 * main_menu
// 1516 *
// 1517 * This function displays the main menu for the serial interface and waits until the 
// 1518 * user select an option.
// 1519 *
// 1520 ************************************************************************************/
// 1521 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1522 char main_menu(){
main_menu:
        PUSH     {R4,LR}
// 1523   Uart_Print("\r ______________________________________\n");
        LDR      R4,??DataTable129_1
        MOVS     R0,R4
        BL       Uart_Print
// 1524   Uart_Print("\r|                                      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        BL       Uart_Print
// 1525   Uart_Print("\r|    Connectivity Test Interface    |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+88
        BL       Uart_Print
// 1526   Uart_Print("\r|______________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+128
        BL       Uart_Print
// 1527   Uart_Print("\r      1 - CHANGE CHANNEL\n");
        Nop      
        ADR.N    R0,?_80
        BL       Uart_Print
// 1528   Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
        Nop      
        ADR.N    R0,?_81
        BL       Uart_Print
// 1529   Uart_Print("\r      3 - SELECT TEST MODE\n");
        LDR      R0,??DataTable129_2
        BL       Uart_Print
// 1530   Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+172
        BL       Uart_Print
// 1531   Uart_Print("\r      Note: Case sensitive.");
        ADR.N    R0,?_83
        BL       Uart_Print
// 1532   Uart_Print("\r\n\n Please select an option:  ");
        LDR      R0,??DataTable130_1
        B.N      ?Subroutine1
// 1533   return Uart_getchar(mUARTRxBuffer);
// 1534 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable126:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_80:
        DC8 "\015      1 - CHANGE CHANNEL\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_81:
        DC8 "\015      2 - ADJUST OUTPUT POWER\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_83:
        DC8 "\015      Note: Case sensitive."
        DC8 0, 0, 0
// 1535 
// 1536 /************************************************************************************
// 1537 * channel_menu
// 1538 *
// 1539 * This function displays the possible channels when the channel option is selected 
// 1540 * and waits for a user selection.
// 1541 *
// 1542 ************************************************************************************/
// 1543 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1544 char channel_menu(void){
channel_menu:
        PUSH     {R3-R5,LR}
// 1545   Uart_Print("\r\n     ___________________________________ \n");
        LDR      R4,??DataTable130_2
        MOVS     R0,R4
        BL       Uart_Print
// 1546   Uart_Print("\r    |                                   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+48
        BL       Uart_Print
// 1547   Uart_Print("\r    |      Channel Adjustment Menu      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+92
        BL       Uart_Print
// 1548   Uart_Print("\r    |___________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+136
        BL       Uart_Print
// 1549   Uart_Print("\r    Current Channel: ");
        LDR      R0,??DataTable130_3
        BL       Uart_Print
// 1550   PrintChannel(u8TestModeChannel);
        LDR      R5,??DataTable130_4
        LDRB     R0,[R5, #+17]
        BL       PrintChannel
// 1551   Uart_Print("\n");
        ADR      R0,??DataTable130_5  ;; "\n"
        BL       Uart_Print
// 1552   Uart_Print("\r      0 - CHANNEL 11");
        LDR      R0,??DataTable130_6
        BL       Uart_Print
// 1553   Uart_Print("      8 - CHANNEL 19\n");
        LDR      R0,??DataTable131
        BL       Uart_Print
// 1554   Uart_Print("\r      1 - CHANNEL 12");
        LDR      R0,??DataTable131_1
        BL       Uart_Print
// 1555   Uart_Print("      9 - CHANNEL 20\n");
        LDR      R0,??DataTable131_2
        BL       Uart_Print
// 1556   Uart_Print("\r      2 - CHANNEL 13");
        Nop      
        ADR.N    R0,?_90
        BL       Uart_Print
// 1557   Uart_Print("      A - CHANNEL 21\n");
        LDR      R0,??DataTable131_3
        BL       Uart_Print
// 1558   Uart_Print("\r      3 - CHANNEL 14");
        LDR      R0,??DataTable131_4
        BL       Uart_Print
// 1559   Uart_Print("      B - CHANNEL 22\n");
        LDR      R0,??DataTable131_5
        BL       Uart_Print
// 1560   Uart_Print("\r      4 - CHANNEL 15");
        ADR.N    R0,?_94
        BL       Uart_Print
// 1561   Uart_Print("      C - CHANNEL 23\n");
        LDR      R0,??DataTable131_6
        BL       Uart_Print
// 1562   Uart_Print("\r      5 - CHANNEL 16");
        LDR      R0,??DataTable131_7
        BL       Uart_Print
// 1563   Uart_Print("      D - CHANNEL 24\n");
        LDR      R0,??DataTable131_8
        BL       Uart_Print
// 1564   Uart_Print("\r      6 - CHANNEL 17");
        ADR.N    R0,?_98
        BL       Uart_Print
// 1565   Uart_Print("      E - CHANNEL 25\n");  
        LDR      R0,??DataTable131_9
        BL       Uart_Print
// 1566   Uart_Print("\r      7 - CHANNEL 18");
        LDR      R0,??DataTable131_10
        BL       Uart_Print
// 1567   if(gPowerLevelLock_c == FALSE)
// 1568   {
// 1569     Uart_Print("      F - CHANNEL 26\n");      
        LDR      R0,??DataTable132
        B.N      ??Subroutine0_0
// 1570   }
// 1571   else
// 1572   {
// 1573     Uart_Print("\n");
// 1574   }
// 1575   Uart_Print("\r      p - Previous Menu\n");      
// 1576   Uart_Print("\r\n    Please select an option:  ");
// 1577   return Uart_getchar(mUARTRxBuffer);
// 1578 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127:
        DATA32
        DC32     ?_78

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127_1:
        DATA32
        DC32     ?_79

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_90:
        DC8 "\015      2 - CHANNEL 13"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_94:
        DC8 "\015      4 - CHANNEL 15"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_98:
        DC8 "\015      6 - CHANNEL 17"
        DATA16
        DC8 0, 0
// 1579 
// 1580 
// 1581 /************************************************************************************
// 1582 * test_mode_rx_menu
// 1583 *
// 1584 * This function displays the test mode options when the SELECT TEST MODE is 
// 1585 * selected.
// 1586 *
// 1587 ************************************************************************************/
// 1588 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1589 char test_mode_rx_menu(void){
test_mode_rx_menu:
        PUSH     {R3-R5,LR}
// 1590   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable132_1
        MOVS     R0,R4
        BL       Uart_Print
// 1591   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1592   Uart_Print("\r    |   Reception Tests Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1593   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1594   Uart_Print("\r    Current Test Mode: ");
        LDR      R0,??DataTable132_2
        BL       Uart_Print
// 1595   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable130_4
        LDRB     R0,[R5, #+16]
        BL       PrintTestMode
// 1596   Uart_Print("\r\n      I - IDLE\n");
        LDR      R0,??DataTable133
        BL       Uart_Print
// 1597   Uart_Print("\r      R - RECEPTION\n");
        Nop      
        ADR.N    R0,?_105
        BL       Uart_Print
// 1598   Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+144
        BL       Uart_Print
// 1599   Uart_Print("\r      r - RANGE TEST RECEIVER\n");
        Nop      
        ADR.N    R0,?_106
        B.N      ??Subroutine0_0
// 1600   Uart_Print("\r      p - Previous Menu\n");      
// 1601   Uart_Print("\r\n\n    Please select an option:  ");
// 1602   return Uart_getchar(mUARTRxBuffer);
// 1603 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128_1:
        DATA32
        DC32     0x1ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_105:
        DC8 "\015      R - RECEPTION\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_106:
        DC8 "\015      r - RANGE TEST RECEIVER\012"
// 1604 
// 1605 /************************************************************************************
// 1606 * test_mode_tx_menu
// 1607 *
// 1608 * This function displays the test mode options when the SELECT TEST MODE is 
// 1609 * selected.
// 1610 *
// 1611 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1612 char test_mode_tx_menu(void){
test_mode_tx_menu:
        PUSH     {R3-R5,LR}
// 1613   Uart_Print("\r\n     _____________________________\n");
        LDR      R4,??DataTable132_1
        MOVS     R0,R4
        ADDS     R0,R0,#+220
        BL       Uart_Print
// 1614   Uart_Print("\r    |                             |\n");
        MOVS     R0,#+130
        LSLS     R0,R0,#+1        ;; #+260
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1615   Uart_Print("\r    |   Transmission Tests Menu   |\n");
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1616   Uart_Print("\r    |_____________________________|\n\n");  
        MOVS     R0,#+170
        LSLS     R0,R0,#+1        ;; #+340
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1617   Uart_Print("\r    Current Test Mode: ");
        Nop      
        ADR.N    R0,?_103
        BL       Uart_Print
// 1618   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable130_4
        LDRB     R0,[R5, #+16]
        BL       PrintTestMode
// 1619   Uart_Print("\r\n      I - IDLE\n");
        Nop      
        ADR.N    R0,?_104
        BL       Uart_Print
// 1620   Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
        MOVS     R0,#+190
        LSLS     R0,R0,#+1        ;; #+380
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1621   Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
        MOVS     R0,#+208
        LSLS     R0,R0,#+1        ;; #+416
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1622   Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
        MOVS     R0,#+230
        LSLS     R0,R0,#+1        ;; #+460
        B.N      ?Subroutine0
// 1623   Uart_Print("\r      p - Previous Menu\n");      
// 1624   Uart_Print("\r\n\n    Please select an option:  ");
// 1625   return Uart_getchar(mUARTRxBuffer);
// 1626 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129:
        DATA32
        DC32     0xfeff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129_1:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129_2:
        DATA32
        DC32     ?_82

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_103:
        DC8 "\015    Current Test Mode: "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_104:
        DC8 "\015\012      I - IDLE\012"
        DATA16
        DC8 0, 0
// 1627 
// 1628 
// 1629 /************************************************************************************
// 1630 * select_test_mode_menu
// 1631 *
// 1632 * This function displays the option to select between TX and RX mode
// 1633 *
// 1634 ************************************************************************************/
// 1635 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1636 char select_test_mode_menu(void){
select_test_mode_menu:
        PUSH     {R4,LR}
// 1637   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable132_1
        MOVS     R0,R4
        BL       Uart_Print
// 1638   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1639   Uart_Print("\r    |   TX / RX Menu   |\n");
        Nop      
        ADR.N    R0,?_107
        BL       Uart_Print
// 1640   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1641   Uart_Print("\r      R - RECEIVER MODE \n");
        LDR      R0,??DataTable134
        BL       Uart_Print
// 1642   Uart_Print("\r      T - TRANSMITTER MODE \n");
        LDR      R0,??DataTable134_1
        BL       Uart_Print
// 1643   Uart_Print("\r      p - Previous Menu\n");      
        LDR      R0,??DataTable134_2
        BL       Uart_Print
// 1644   Uart_Print("\r\n\n    Please select an option:  ");
        MOVS     R0,R4
        ADDS     R0,R0,#+184
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1645   return Uart_getchar(mUARTRxBuffer);
// 1646 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        BL       Uart_Print
        LDR      R0,??DataTable134_3
        REQUIRE ??Subroutine3_0
        ;; // Fall through to label ??Subroutine3_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
??Subroutine3_0:
        BL       Uart_getchar
        REQUIRE ??Subroutine4_0
        ;; // Fall through to label ??Subroutine4_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
??Subroutine4_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_1:
        DATA32
        DC32     ?_84

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_2:
        DATA32
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_3:
        DATA32
        DC32     ?_85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_4:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_5:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_6:
        DATA32
        DC32     ?_86

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_107:
        DC8 "\015    |   TX / RX Menu   |\012"
        DATA8
        DC8 0
// 1647 
// 1648 /************************************************************************************
// 1649 * test_transmission_menu
// 1650 *
// 1651 * This function displays the transmissions options when the transmission option 
// 1652 * is selected in the main menu.
// 1653 *
// 1654 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1655 char test_transmission_menu(void)
// 1656 {
test_transmission_menu:
        PUSH     {R3-R5,LR}
// 1657   Uart_Print("\r\n     ______________________________________\n");
        LDR      R4,??DataTable132_1
        MOVS     R0,#+248
        LSLS     R0,R0,#+1        ;; #+496
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1658   Uart_Print("\r    |                                      |\n");
        MOVS     R0,#+136
        LSLS     R0,R0,#+2        ;; #+544
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1659   Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
        MOVS     R0,#+148
        LSLS     R0,R0,#+2        ;; #+592
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1660   Uart_Print("\r    |______________________________________|\n\n");  
        MOVS     R0,#+160
        LSLS     R0,R0,#+2        ;; #+640
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1661   Uart_Print("\r    Current Transmission Test: ");
        MOVS     R0,#+172
        LSLS     R0,R0,#+2        ;; #+688
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1662   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable135
        LDRB     R0,[R5, #+16]
        BL       PrintTestMode
// 1663   Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
        MOVS     R0,#+181
        LSLS     R0,R0,#+2        ;; #+724
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1664   Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
        MOVS     R0,#+197
        LSLS     R0,R0,#+2        ;; #+788
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1665   Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
        MOVS     R0,#+206
        LSLS     R0,R0,#+2        ;; #+824
        Nop      
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1666   Uart_Print("\r      p - Previous Menu\n");      
// 1667   Uart_Print("\r\n\n    Please select an option:  ");
// 1668   return Uart_getchar(mUARTRxBuffer);
// 1669 }

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
?Subroutine0:
        ADDS     R0,R4,R0
??Subroutine0_0:
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_102
        BL       Uart_Print
        MOVS     R0,R4
        ADDS     R0,R0,#+184
        BL       Uart_Print
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
        POP      {R1,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131:
        DATA32
        DC32     ?_87

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_1:
        DATA32
        DC32     ?_88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_2:
        DATA32
        DC32     ?_89

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_3:
        DATA32
        DC32     ?_91

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_4:
        DATA32
        DC32     ?_92

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_5:
        DATA32
        DC32     ?_93

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_6:
        DATA32
        DC32     ?_95

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_7:
        DATA32
        DC32     ?_96

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_8:
        DATA32
        DC32     ?_97

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_9:
        DATA32
        DC32     ?_99

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_10:
        DATA32
        DC32     ?_100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_102:
        DC8 "\015      p - Previous Menu\012"
        DATA16
        DC8 0, 0
// 1670 
// 1671 
// 1672 /************************************************************************************
// 1673 * clock_settings_menu
// 1674 *
// 1675 * This function displays a menu with the clock settings options and waits for a 
// 1676 * user selection.
// 1677 *
// 1678 ************************************************************************************/
// 1679 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1680 char clock_setting_menu(void)
// 1681 {
clock_setting_menu:
        PUSH     {R7,LR}
// 1682   Uart_Print("\r\n     _____________________");
        Nop      
        ADR.N    R0,?_110
        BL       Uart_Print
// 1683   Uart_Print("\r\n    |                     |");
        LDR      R0,??DataTable135_1
        BL       Uart_Print
// 1684   Uart_Print("\r\n    | Clock Settings Menu |");
        LDR      R0,??DataTable135_2
        BL       Uart_Print
// 1685   Uart_Print("\r\n    |_____________________|\n\n");  
        LDR      R0,??DataTable135_3
        BL       Uart_Print
// 1686   Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
        ADR.N    R0,?_114
        BL       Uart_Print
// 1687   Uart_Print("\r    2 - Adjust COARSE TUNE\n");
        LDR      R0,??DataTable136
        BL       Uart_Print
// 1688   Uart_Print("\r    3 - Adjust FINE TUNE \n");
        LDR      R0,??DataTable136_1
        BL       Uart_Print
// 1689   Uart_Print("\r    p - Previous Menu\n");
        LDR      R0,??DataTable136_2
        BL       Uart_Print
// 1690   Uart_Print("\r\n    Please select an option:  ");
        LDR      R0,??DataTable136_3
        BL       Uart_Print
// 1691   return Uart_getchar(mUARTRxBuffer);
        LDR      R0,??DataTable134_3
        BL       Uart_getchar
        POP      {R1,R3}
        BX       R3               ;; return
// 1692 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132:
        DATA32
        DC32     ?_101

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132_1:
        DATA32
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132_2:
        DATA32
        DC32     ?_103

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_110:
        DC8 "\015\012     _____________________"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_114:
        DC8 "\015    1 - Set Bulk 4 pF CAP.\012"
        DC8 0, 0, 0
// 1693 
// 1694 /************************************************************************************
// 1695 * bulk_cap_menu
// 1696 *
// 1697 * The bulk_cap_menu shows the two possible bulk capacitor states and waits until
// 1698 * the user selects an option.
// 1699 *
// 1700 ************************************************************************************/
// 1701 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1702 char bulk_cap_menu(void)
// 1703 {
bulk_cap_menu:
        PUSH     {R4,LR}
// 1704   Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
        Nop      
        ADR.N    R0,?_118
        BL       Uart_Print
// 1705   Uart_Print("\r\n   Current Bulk Capacitor State:");
        LDR      R0,??DataTable137
        BL       Uart_Print
// 1706   if(gEnable_c == u8BulkCapState){
        LDR      R4,??DataTable135
        LDRB     R0,[R4, #+22]
        CMP      R0,#+1
        BNE      ??bulk_cap_menu_0
// 1707     Uart_Print("  Enable\n\n");
        ADR.N    R0,?_119
        B        ??bulk_cap_menu_1
// 1708   }
// 1709   else{
// 1710     Uart_Print("  Disable\n\n");    
??bulk_cap_menu_0:
        LDR      R0,??DataTable138
??bulk_cap_menu_1:
        BL       Uart_Print
// 1711   }
// 1712   Uart_Print("\r   E - Enable Capacitor.\n");
        Nop      
        ADR.N    R0,?_121
        BL       Uart_Print
// 1713   Uart_Print("\r   D - Disable Capacitor\n");
        LDR      R0,??DataTable138_1
        BL       Uart_Print
// 1714   Uart_Print("\r   p - Previous Menu\n");
        LDR      R0,??DataTable138_2
        BL       Uart_Print
// 1715   Uart_Print("\r\nPlease select an option:  ");
        LDR      R0,??DataTable138_3
        BL       Uart_Print
// 1716   return Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        B.N      ??Subroutine3_0
// 1717 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable133:
        DATA32
        DC32     ?_104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_118:
        DC8 "\015\012\012Bulk 4 Capacitor Menu\012\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_119:
        DC8 "  Enable\012\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_121:
        DC8 "\015   E - Enable Capacitor.\012"
        DATA8
        DC8 0
// 1718 
// 1719 /************************************************************************************
// 1720 * channel_adjust
// 1721 *
// 1722 * This function updates the channel with the value selected by the user.
// 1723 *
// 1724 ************************************************************************************/
// 1725 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1726 void channel_adjust(void){
channel_adjust:
        PUSH     {R3-R7,LR}
// 1727   char option, hexOption;
// 1728   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable135
        MOVS     R0,#+2
        STRB     R0,[R4, #+19]
        LDR      R7,??DataTable139
// 1729   do{
// 1730     option = channel_menu();
??channel_adjust_0:
        BL       channel_menu
        MOVS     R5,R0
// 1731     hexOption = AsciitoHex(option);
        BL       AsciitoHex
        MOVS     R6,R0
// 1732     
// 1733     if(PreviousMenu != hexOption)
        CMP      R0,#+112
        BEQ      ??channel_adjust_1
// 1734     {
// 1735       MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1736       DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1737       if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
        MOVS     R0,R6
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BNE      ??channel_adjust_2
// 1738       {  
// 1739         u8TestModeChannel = (channel_num_t)hexOption;
        STRB     R6,[R4, #+17]
        B        ??channel_adjust_3
// 1740       }
// 1741       else
// 1742       {
// 1743         Uart_Print("  Invalid Option!!!");  
??channel_adjust_2:
        MOVS     R0,R7
        BL       Uart_Print
// 1744       }
// 1745       MLMETestMode(u8CurrentMode);
??channel_adjust_3:
        LDRB     R0,[R4, #+16]
        BL       MLMETestMode
// 1746       
// 1747     }
// 1748   }while(option != PreviousMenu);
??channel_adjust_1:
        CMP      R5,#+112
        BNE      ??channel_adjust_0
// 1749 }
        B.N      ??Subroutine5_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134:
        DATA32
        DC32     ?_108

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_1:
        DATA32
        DC32     ?_109

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_2:
        DATA32
        DC32     ?_102

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_3:
        DATA32
        DC32     RX_msg+0x20
// 1750 
// 1751 /************************************************************************************
// 1752 * power_adjust
// 1753 *
// 1754 * This function change the power value to the power selected by the user in the
// 1755 * serial interface
// 1756 *
// 1757 ************************************************************************************/
// 1758 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1759 void power_adjust(void){
power_adjust:
        PUSH     {R4-R6,LR}
// 1760   uint8_t u8TempPower;
// 1761   CurrentOption = gPower_c;
        LDR      R5,??DataTable135
        MOVS     R0,#+1
        STRB     R0,[R5, #+19]
// 1762   Uart_Print("\r\n     ___________________________\n");
        LDR      R4,??DataTable139_1
        MOVS     R0,R4
        BL       Uart_Print
// 1763   Uart_Print("\r    |                           |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1764   Uart_Print("\r    |   Power Adjustment Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1765   Uart_Print("\r    |___________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1766   Uart_Print("\r    Current Power: ");
        LDR      R0,??DataTable139_2
        BL       Uart_Print
// 1767   Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R5
        ADDS     R0,R0,#+18
        BL       Uart_PrintHex
// 1768 
// 1769   if(gPowerLevelLock_c)
// 1770   {
// 1771     Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
// 1772   }
// 1773   else
// 1774   {
// 1775     Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
        MOVS     R0,R4
        ADDS     R0,R0,#+148
        BL       Uart_Print
// 1776   } 
// 1777   
// 1778   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1779   
// 1780   u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 1781     
// 1782   u8TempPower = (u8TempPower << 4);
// 1783   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1784   u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
        LSLS     R6,R6,#+4
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        ORRS     R0,R0,R6
        MOVS     R6,R0
// 1785   
// 1786   
// 1787   if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BNE      ??power_adjust_0
// 1788   {
// 1789     u8TestModePower = u8TempPower;
        STRB     R6,[R5, #+18]
// 1790     Uart_Print("\n");
        ADR      R0,??DataTable140  ;; "\n"
        B        ??power_adjust_1
// 1791   }
// 1792   else
// 1793   {
// 1794     Uart_Print("\r\n    Incorrect value!!!");  
??power_adjust_0:
        ADR.N    R0,?_127
        BL       Uart_Print
// 1795     Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
        MOVS     R0,R4
        ADDS     R0,R0,#+224
        BL       Uart_Print
// 1796     Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
        MOVS     R0,#+144
        LSLS     R0,R0,#+1        ;; #+288
        ADDS     R0,R4,R0
??power_adjust_1:
        BL       Uart_Print
// 1797   }
// 1798 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135_1:
        DATA32
        DC32     ?_111

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135_2:
        DATA32
        DC32     ?_112

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135_3:
        DATA32
        DC32     ?_113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_127:
        DC8 "\015\012    Incorrect value!!!"
        DC8 0, 0, 0
// 1799 
// 1800 /************************************************************************************
// 1801 * test_mode_rx_adjust
// 1802 *
// 1803 * In this function the current test mode is adjusted to the new value selected by the 
// 1804 * user in the serial interface.
// 1805 *
// 1806 ************************************************************************************/
// 1807 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1808 void test_mode_rx_adjust(void)
// 1809 {
test_mode_rx_adjust:
        PUSH     {R3-R7,LR}
// 1810   char option;
// 1811   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable140_1
        MOVS     R0,#+2
        STRB     R0,[R4, #+19]
        LDR      R7,??DataTable140_2
        MOVS     R5,#+0
// 1812   do{
// 1813     option = test_mode_rx_menu();
??test_mode_rx_adjust_0:
        BL       test_mode_rx_menu
        MOVS     R6,R0
// 1814     switch(option)
        CMP      R0,#+73
        BEQ      ??test_mode_rx_adjust_1
        CMP      R0,#+80
        BEQ      ??test_mode_rx_adjust_2
        CMP      R0,#+82
        BEQ      ??test_mode_rx_adjust_3
        CMP      R0,#+112
        BEQ      ??test_mode_rx_adjust_4
        CMP      R0,#+114
        BEQ      ??test_mode_rx_adjust_5
        B        ??test_mode_rx_adjust_6
// 1815     {
// 1816       case IdleTest:
// 1817         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_rx_adjust_1:
        STRB     R5,[R4, #+16]
// 1818         MLMETestMode(u8CurrentMode);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1819         break;
        B        ??test_mode_rx_adjust_4
// 1820       case ReceptionTest:
// 1821         Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
??test_mode_rx_adjust_3:
        MOVS     R0,R7
        BL       Uart_Print
// 1822         Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable140_3
        BL       Uart_Print
// 1823         Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1824         u8CurrentMode = SMAC_CONTINUOUS_RX;
        MOVS     R0,#+1
        STRB     R0,[R4, #+16]
// 1825         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1826         MLMERXEnableRequest(&RX_msg, 0x0000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        MOVS     R0,R4
        BL       MLMERXEnableRequest
// 1827         do
// 1828         {
// 1829             (void)process_radio_msg();
??test_mode_rx_adjust_7:
        BL       process_radio_msg
// 1830             if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+1
        BNE      ??test_mode_rx_adjust_8
// 1831             {
// 1832               gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+23]
// 1833               process_incoming_msg();
        BL       process_incoming_msg
// 1834             }
// 1835           
// 1836 #if OTAP_ENABLED == TRUE
// 1837           if(gbOtapExecute)
// 1838           {
// 1839             OTAP_execute();        
// 1840           }
// 1841           else
// 1842 #endif
// 1843           {          
// 1844             if(is_rx_msg_final_state(RX_msg))
??test_mode_rx_adjust_8:
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+3
        CMP      R0,#+5
        BEQ      ??test_mode_rx_adjust_9
        CMP      R0,#+6
        BEQ      ??test_mode_rx_adjust_9
        CMP      R0,#+8
        BEQ      ??test_mode_rx_adjust_9
        CMP      R0,#+4
        BNE      ??test_mode_rx_adjust_10
// 1845             {
// 1846               RX_msg.u8BufSize = RX_SIZE;
??test_mode_rx_adjust_9:
        MOVS     R0,#+70
        STRB     R0,[R4, #+8]
// 1847               MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       MLMERXEnableRequest
// 1848             }
// 1849           }
// 1850           Uart_Poll(mUARTRxBuffer);
??test_mode_rx_adjust_10:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 1851           }
// 1852         while (mUARTRxBuffer[0] != Exit);   
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??test_mode_rx_adjust_7
        B        ??test_mode_rx_adjust_4
// 1853         break;
// 1854         
// 1855       case PacketErrorRateTest:
// 1856         packet_error_rate_rx_test();
??test_mode_rx_adjust_2:
        BL       packet_error_rate_rx_test
// 1857         break;
        B        ??test_mode_rx_adjust_4
// 1858       case RangeTest:
// 1859         range_rx_test();
??test_mode_rx_adjust_5:
        BL       range_rx_test
// 1860         break;
        B        ??test_mode_rx_adjust_4
// 1861       case PreviousMenu:
// 1862         break; 
// 1863         
// 1864       default:
// 1865         Uart_Print("  Invalid Option!!!");
??test_mode_rx_adjust_6:
        LDR      R0,??DataTable139
        BL       Uart_Print
// 1866         break;
// 1867     }
// 1868   }while(option != PreviousMenu);
??test_mode_rx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_rx_adjust_0
// 1869 }
        B.N      ??Subroutine5_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136:
        DATA32
        DC32     ?_115

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_1:
        DATA32
        DC32     ?_116

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_2:
        DATA32
        DC32     ?_117

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_3:
        DATA32
        DC32     ?_5+0xB8
// 1870 
// 1871 /************************************************************************************
// 1872 * test_mode_tx_adjust
// 1873 *
// 1874 * In this function the current test mode is adjusted to the new value selected by the 
// 1875 * user in the serial interface.
// 1876 *
// 1877 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1878 void test_mode_tx_adjust(void){
test_mode_tx_adjust:
        PUSH     {R4-R6,LR}
// 1879   char option;
// 1880   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable140_1
        MOVS     R0,#+3
        STRB     R0,[R4, #+19]
        LDR      R5,??DataTable139
// 1881   do{
// 1882     option = test_mode_tx_menu();
??test_mode_tx_adjust_0:
        BL       test_mode_tx_menu
        MOVS     R6,R0
// 1883     switch(option)
        CMP      R0,#+73
        BEQ      ??test_mode_tx_adjust_1
        CMP      R0,#+80
        BEQ      ??test_mode_tx_adjust_2
        CMP      R0,#+84
        BEQ      ??test_mode_tx_adjust_3
        CMP      R0,#+112
        BEQ      ??test_mode_tx_adjust_4
        CMP      R0,#+114
        BEQ      ??test_mode_tx_adjust_5
        B        ??test_mode_tx_adjust_6
// 1884     {
// 1885       case IdleTest:
// 1886         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_tx_adjust_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
// 1887         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1888         break;
        B        ??test_mode_tx_adjust_4
// 1889       case TransmissionTest:  
// 1890         cont_transmission_test_adjust();
??test_mode_tx_adjust_3:
        BL       cont_transmission_test_adjust
// 1891         break;
        B        ??test_mode_tx_adjust_4
// 1892       case PacketErrorRateTest:
// 1893         packet_error_rate_tx_test();
??test_mode_tx_adjust_2:
        BL       packet_error_rate_tx_test
// 1894         break;
        B        ??test_mode_tx_adjust_4
// 1895       case RangeTest:
// 1896         range_tx_test();
??test_mode_tx_adjust_5:
        BL       range_tx_test
// 1897         break;
        B        ??test_mode_tx_adjust_4
// 1898       case PreviousMenu:
// 1899         break;      
// 1900       default:
// 1901         Uart_Print("  Invalid Option!!!");
??test_mode_tx_adjust_6:
        MOVS     R0,R5
        BL       Uart_Print
// 1902         break;
// 1903     }
// 1904   }while(option != PreviousMenu);
??test_mode_tx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_tx_adjust_0
// 1905 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137:
        DATA32
        DC32     ?_31
// 1906 
// 1907 
// 1908 /************************************************************************************
// 1909 * tx_rx_select
// 1910 *
// 1911 * This function select between transmitter and receiver mode
// 1912 *
// 1913 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1914 void tx_rx_select(void)
// 1915 {
tx_rx_select:
        PUSH     {R3-R5,LR}
        LDR      R4,??DataTable139
// 1916   char option;
// 1917   do
// 1918   {
// 1919     option = select_test_mode_menu();
??tx_rx_select_0:
        BL       select_test_mode_menu
        MOVS     R5,R0
// 1920     switch(option)
        CMP      R0,#+82
        BEQ      ??tx_rx_select_1
        CMP      R0,#+84
        BNE      ??tx_rx_select_2
// 1921     {
// 1922       case TransmissionTest:
// 1923         test_mode_tx_adjust();   
        BL       test_mode_tx_adjust
// 1924         break;
        B        ??tx_rx_select_3
// 1925         
// 1926       case ReceptionTest:
// 1927         test_mode_rx_adjust();     
??tx_rx_select_1:
        BL       test_mode_rx_adjust
// 1928         break;          
        B        ??tx_rx_select_3
// 1929         
// 1930       default:
// 1931         Uart_Print("  Invalid Option!!!");
??tx_rx_select_2:
        MOVS     R0,R4
        BL       Uart_Print
// 1932         break;
// 1933     }
// 1934   }while(option != PreviousMenu);
??tx_rx_select_3:
        CMP      R5,#+112
        BNE      ??tx_rx_select_0
// 1935 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138:
        DATA32
        DC32     ?_120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138_1:
        DATA32
        DC32     ?_122

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138_2:
        DATA32
        DC32     ?_123

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138_3:
        DATA32
        DC32     ?_124
// 1936 
// 1937 
// 1938 
// 1939 /************************************************************************************
// 1940 * cont_transmission_test_adjust
// 1941 *
// 1942 * This function execute a specific transmission mode: modulated, unmodulated or 
// 1943 * the pseudo random binary sequence.
// 1944 *
// 1945 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1946 void cont_transmission_test_adjust(void)
// 1947 {
cont_transmission_test_adjust:
        PUSH     {R4-R6,LR}
// 1948   char option;
// 1949   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable140_1
        MOVS     R0,#+3
        STRB     R0,[R4, #+19]
        LDR      R5,??DataTable139
// 1950   
// 1951   do
// 1952   {
// 1953     option = test_transmission_menu();
??cont_transmission_test_adjust_0:
        BL       test_transmission_menu
        MOVS     R6,R0
// 1954     switch(option)
        CMP      R0,#+77
        BEQ      ??cont_transmission_test_adjust_1
        CMP      R0,#+83
        BEQ      ??cont_transmission_test_adjust_2
        CMP      R0,#+85
        BEQ      ??cont_transmission_test_adjust_3
        CMP      R0,#+112
        BEQ      ??cont_transmission_test_adjust_4
        B        ??cont_transmission_test_adjust_5
// 1955     {
// 1956       case PRBS9TxTest:
// 1957         pulse_prbs9_tx();
??cont_transmission_test_adjust_2:
        BL       pulse_prbs9_tx
// 1958         break;
        B        ??cont_transmission_test_adjust_4
// 1959       case ModulatedTxTest:
// 1960         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
??cont_transmission_test_adjust_1:
        MOVS     R0,#+4
        B.N      ??cont_transmission_test_adjust_6
// 1961         MLMETestMode(u8CurrentMode);        
// 1962         break;        
// 1963       case UnmodulatedTxTest:
// 1964         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
??cont_transmission_test_adjust_3:
        MOVS     R0,#+5
??cont_transmission_test_adjust_6:
        STRB     R0,[R4, #+16]
// 1965         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1966         break;  
        B        ??cont_transmission_test_adjust_4
// 1967     case PreviousMenu:
// 1968         break;      
// 1969       default:
// 1970         Uart_Print("  Invalid Option!!!");
??cont_transmission_test_adjust_5:
        MOVS     R0,R5
        BL       Uart_Print
// 1971         break;
// 1972     }
// 1973   }while(option != PreviousMenu);
??cont_transmission_test_adjust_4:
        CMP      R6,#+112
        BNE      ??cont_transmission_test_adjust_0
// 1974 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139:
        DATA32
        DC32     ?_125

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_1:
        DATA32
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_2:
        DATA32
        DC32     ?_126
// 1975 
// 1976 
// 1977 /************************************************************************************
// 1978 * pulse_prbs9_tx
// 1979 *
// 1980 * This function performs the transmission process for the pseudo random binary 
// 1981 * sequence.
// 1982 *
// 1983 ***********************************************************************************/
// 1984 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1985 void pulse_prbs9_tx(void)
// 1986 {
pulse_prbs9_tx:
        PUSH     {R3-R7,LR}
// 1987   static prbs9_tx_states_t u8AppState;
// 1988   static uint16_t u16DutyCicleCounter;
// 1989   
// 1990 #if INTERFACE_TYPE == MANUAL 
// 1991   if(FALSE == gu8TestAlreadyStarted)
// 1992   {
// 1993        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
// 1994       u8AppState = INIT_PRBS9_TX_ST;
// 1995   }  
// 1996 #endif  
// 1997 
// 1998 
// 1999 #if INTERFACE_TYPE == SERIAL
// 2000   u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX;
        MOVS     R7,#+1
        LDR      R4,??DataTable140_1
        STRB     R7,[R4, #+16]
// 2001   TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R5,??DataTable140_4
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R5, #+0]
// 2002   u8AppState =  INIT_PRBS9_TX_ST;
        MOVS     R6,#+0
        STRB     R6,[R5, #+16]
// 2003   MLMETestMode(u8CurrentMode);
        MOVS     R0,#+1
        BL       MLMETestMode
// 2004   Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
        LDR      R0,??DataTable140_5
        BL       Uart_Print
// 2005   Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable140_3
        BL       Uart_Print
// 2006   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2007   do  
// 2008   {
// 2009 #endif        
// 2010         
// 2011     (void)process_radio_msg();
??pulse_prbs9_tx_0:
        BL       process_radio_msg
// 2012     switch(u8AppState)
        LDRB     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ      ??pulse_prbs9_tx_1
        CMP      R0,#+1
        BEQ      ??pulse_prbs9_tx_2
        B        ??pulse_prbs9_tx_3
// 2013     {
// 2014       case INIT_PRBS9_TX_ST:
// 2015       {
// 2016         LoadPRBS9();
??pulse_prbs9_tx_1:
        BL       LoadPRBS9
// 2017         u16DutyCicleCounter = 0;
        STRH     R6,[R5, #+18]
// 2018         u8AppState = TRANSMIT_PRBS9_TX_ST;
        STRB     R7,[R5, #+16]
// 2019       }
// 2020       break;
        B        ??pulse_prbs9_tx_3
// 2021       
// 2022       case TRANSMIT_PRBS9_TX_ST:
// 2023       {
// 2024         if(is_tx_msg_final_state(TX_msg))
??pulse_prbs9_tx_2:
        LDRB     R0,[R5, #+0]
        LSRS     R0,R0,#+3
        CMP      R0,#+4
        BEQ      ??pulse_prbs9_tx_4
        CMP      R0,#+5
        BEQ      ??pulse_prbs9_tx_4
        CMP      R0,#+7
        BEQ      ??pulse_prbs9_tx_4
        CMP      R0,#+3
        BNE      ??pulse_prbs9_tx_3
// 2025         {
// 2026           u16DutyCicleCounter++;
??pulse_prbs9_tx_4:
        LDRH     R0,[R5, #+18]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+18]
// 2027           if(u16DutyCicleCounter == DUTY_CICLE_TIME)
        LDR      R1,??DataTable141  ;; 0x79e
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??pulse_prbs9_tx_3
// 2028           {
// 2029             u16DutyCicleCounter = 0;
        STRH     R6,[R5, #+18]
// 2030             MCPSDataRequest(&TX_msg);
        MOVS     R0,R5
        BL       MCPSDataRequest
// 2031           }
// 2032         }
// 2033       }
// 2034       
// 2035       default:
// 2036       break;
// 2037     }
// 2038          
// 2039 #if INTERFACE_TYPE == SERIAL    
// 2040     Uart_Poll(mUARTRxBuffer);
??pulse_prbs9_tx_3:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 2041   }while (mUARTRxBuffer[0] != Exit); 
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??pulse_prbs9_tx_0
// 2042   u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R6,[R4, #+16]
// 2043   MLMETestMode(u8CurrentMode);
        B.N      ?Subroutine2
// 2044 #endif
// 2045 
// 2046 #if INTERFACE_TYPE == MANUAL      
// 2047   gu8TestAlreadyStarted = TRUE;
// 2048 #endif
// 2049 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140_1:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140_2:
        DATA32
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140_3:
        DATA32
        DC32     ?_128

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140_4:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable140_5:
        DATA32
        DC32     ?_40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
TX_msg:
        DS8 16
        DS8 1
        DS8 1
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ACK_msg:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
ManualModeOption:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
waiting_loops:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
init_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
gu8SCIData:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
maxLQI:
        DS8 1
// 2050 
// 2051 /************************************************************************************
// 2052 * packet_error_rate_tx_test
// 2053 *
// 2054 * This function performs the packet error rate transmission process.
// 2055 *
// 2056 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2057 void packet_error_rate_tx_test(void)
// 2058 {
packet_error_rate_tx_test:
        PUSH     {R3-R7,LR}
        SUB      SP,SP,#+32
// 2059   static per_tx_states_t u8AppState;
// 2060   static uint16_t u16MsgCount;
// 2061   static uint16_t u16DoneCount;
// 2062   uint32_t u32NumTransmissions;
// 2063 
// 2064 #if   INTERFACE_TYPE == SERIAL
// 2065   uint8_t u8InvalidCharFlag = FALSE;
// 2066 #endif
// 2067   
// 2068 #if   INTERFACE_TYPE == SERIAL
// 2069   uint8_t u8Count;
// 2070   uint8_t u8TempNumTx[5];
// 2071 #endif
// 2072   
// 2073   u32NumTransmissions = NUM_TRANSMISSIONS;
        LDR      R0,??DataTable141_1  ;; 0x3e7
        STR      R0,[SP, #+4]
// 2074 
// 2075 #if INTERFACE_TYPE == SERIAL
// 2076   u8AppState = IDLE_PER_TX_ST;   
        LDR      R7,??DataTable141_2
        MOVS     R0,#+0
        STRB     R0,[R7, #+28]
// 2077   u8CurrentMode = SMAC_TEST_MODE_PER_TX;
        MOVS     R0,#+2
        STRB     R0,[R7, #+16]
        LDR      R0,??DataTable141_3
        STR      R0,[SP, #+28]
        LDR      R0,??DataTable141_4
        STR      R0,[SP, #+24]
        LDR      R0,??DataTable141_5
        STR      R0,[SP, #+20]
// 2078   do{
// 2079 #endif
// 2080 
// 2081 #if INTERFACE_TYPE == MANUAL 
// 2082   if(FALSE == gu8TestAlreadyStarted)
// 2083   {
// 2084     clear_event(gu8TestModeEvents, TEST_START_EVENT);
// 2085     TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
// 2086     LEDs_TX_INIT(250);  
// 2087     u8AppState = INIT_PER_TX_ST;
// 2088     gu8TestAlreadyStarted = TRUE;
// 2089 #if (gLCDSupported_d) 
// 2090     LCD_WriteString_NormalFont(7,"                     ");
// 2091     LCD_WriteString_NormalFont(4,"PER Transmitting..");
// 2092 #endif    
// 2093   }
// 2094 #endif
// 2095     
// 2096     (void)process_radio_msg();
??packet_error_rate_tx_test_0:
        BL       process_radio_msg
// 2097     if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R7, #+23]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_1
// 2098     {
// 2099       gbDataIndicationFlag = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R7, #+23]
// 2100       process_incoming_msg();
        BL       process_incoming_msg
// 2101     }
// 2102     
// 2103 #if INTERFACE_TYPE == MANUAL    
// 2104     if (TRUE == gu8TestAlreadyStarted)
// 2105     {
// 2106 #endif      
// 2107     switch(u8AppState){
??packet_error_rate_tx_test_1:
        LDR      R0,??DataTable141_6
        LDRB     R0,[R0, #+0]
        LSRS     R2,R0,#+3
        MOVS     R1,#+4
        LDRB     R3,[R7, #+28]
        CMP      R3,#+0
        BEQ      ??packet_error_rate_tx_test_2
        CMP      R3,#+2
        BNE      .+4
        B        ??packet_error_rate_tx_test_3
        BCC      ??packet_error_rate_tx_test_4
        CMP      R3,#+4
        BNE      .+4
        B        ??packet_error_rate_tx_test_5
        BCS      .+4
        B        ??packet_error_rate_tx_test_6
        B        ??packet_error_rate_tx_test_7
// 2108       case IDLE_PER_TX_ST:
// 2109       {
// 2110 #if INTERFACE_TYPE == SERIAL          
// 2111         Uart_Print("\r\n    ****************************");
??packet_error_rate_tx_test_2:
        LDR      R0,??DataTable141_7
        BL       Uart_Print
// 2112         Uart_Print("\r\n    ** Packet Error Rate Test **");
        LDR      R0,??DataTable141_8
        BL       Uart_Print
// 2113         Uart_Print("\r\n    ****************************");
        LDR      R0,??DataTable141_7
        BL       Uart_Print
// 2114         Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
        LDR      R0,??DataTable142
        BL       Uart_Print
// 2115         Uart_Print("\r\nPress Enter. Packets to transmit: ");
        LDR      R0,??DataTable142_1
        BL       Uart_Print
// 2116         Uart_PrintShortDec((uint16_t)NUM_TRANSMISSIONS);
        LDR      R0,??DataTable141_1  ;; 0x3e7
        BL       Uart_PrintShortDec
        B        ??packet_error_rate_tx_test_8
// 2117         do
// 2118         {
// 2119          uint8_t i;
// 2120          uint8_t u8Shift;
// 2121           Uart_Print("\r\n\n  Number of packets in decimal: ");
// 2122           u8Count = 0;
// 2123           u8InvalidCharFlag = FALSE;
// 2124 
// 2125           u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2126                     
// 2127           while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= Exit))
// 2128           { 
// 2129             if((0x3A < u8TempNumTx[u8Count]))
// 2130             {
// 2131               u8InvalidCharFlag = TRUE;
// 2132             }
// 2133             else if(0x30 > u8TempNumTx[u8Count])
// 2134             {
// 2135               u8InvalidCharFlag = TRUE;
// 2136             }
// 2137 
// 2138             u8Count ++;
// 2139             u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2140           }
// 2141           if(u8TempNumTx[u8Count] == 0x0D)
// 2142           { 
// 2143             if(0 != u8Count)
// 2144             {
// 2145               u8Count--;
// 2146             }
// 2147             else
// 2148             {
// 2149               u8InvalidCharFlag = TRUE;
// 2150             }   
// 2151             Uart_getchar(mUARTRxBuffer);
// 2152            }
// 2153           
// 2154           if(Exit == u8TempNumTx[u8Count])
// 2155           {
// 2156             return;
// 2157           }
// 2158 
// 2159           u32NumTransmissions = 0;
// 2160           u8Shift = u8Count;
// 2161           /*To validate 0-9, a-f and A-F values*/
// 2162 
// 2163           for(i = 0; i <= u8Count; i++)
// 2164           {
// 2165             u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
// 2166             u8Shift--;
// 2167           }
// 2168           
// 2169           if(MAX_NUM_TRANSMISSION < u32NumTransmissions)
// 2170           {
// 2171             Uart_Print("\r\n  Value out of range, please try again.");
// 2172           }
// 2173           
// 2174           if(u8InvalidCharFlag == TRUE)
// 2175           {
// 2176             Uart_Print("\r\n  Invalid characters, please use only numbers.");
??packet_error_rate_tx_test_9:
        LDR      R0,??DataTable142_2
        BL       Uart_Print
// 2177           }
??packet_error_rate_tx_test_8:
        LDR      R0,??DataTable142_3
        BL       Uart_Print
        MOVS     R5,#+0
        MOVS     R4,#+0
        ADD      R6,SP,#+8
        MOVS     R0,R7
        ADDS     R0,R0,#+32
        BL       Uart_getchar
        STRB     R0,[R6, #+0]
??packet_error_rate_tx_test_10:
        LDRB     R0,[R6, R5]
        MOVS     R1,#+1
        STR      R1,[SP, #+16]
        CMP      R0,#+13
        BNE      .+4
        B        ??packet_error_rate_tx_test_11
        CMP      R5,#+4
        BLE      .+4
        B        ??packet_error_rate_tx_test_12
        CMP      R0,#+81
        BEQ      ??packet_error_rate_tx_test_13
        CMP      R0,#+59
        BGE      ??packet_error_rate_tx_test_14
        CMP      R0,#+48
        BGE      ??packet_error_rate_tx_test_15
??packet_error_rate_tx_test_14:
        MOVS     R4,#+1
??packet_error_rate_tx_test_15:
        ADDS     R5,R5,#+1
        LSLS     R5,R5,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,R7
        ADDS     R0,R0,#+32
        BL       Uart_getchar
        STRB     R0,[R6, R5]
        B        ??packet_error_rate_tx_test_10
??packet_error_rate_tx_test_16:
        MOVS     R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
??packet_error_rate_tx_test_17:
        MOVS     R0,R7
        ADDS     R0,R0,#+32
        BL       Uart_getchar
??packet_error_rate_tx_test_18:
        ADD      R0,SP,#+8
        LDRB     R0,[R0, R5]
        CMP      R0,#+81
??packet_error_rate_tx_test_13:
        BNE      .+4
        B        ??packet_error_rate_tx_test_19
        MOVS     R4,#+0
        MOVS     R6,#+0
        STR      R5,[SP, #+4]
        B        ??packet_error_rate_tx_test_20
??packet_error_rate_tx_test_21:
        ADD      R1,SP,#+8
        LDRB     R0,[R1, R0]
        BL       AsciitoHex
        LDR      R1,[SP, #+28]
        LSLS     R2,R5,#+24
        LSRS     R2,R2,#+23
        LDRH     R1,[R1, R2]
        MULS     R0,R1,R0
        ADDS     R4,R4,R0
        SUBS     R5,R5,#+1
        ADDS     R6,R6,#+1
??packet_error_rate_tx_test_20:
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        LDR      R1,[SP, #+4]
        CMP      R1,R0
        BGE      ??packet_error_rate_tx_test_21
        STR      R4,[SP, #+4]
        LDR      R4,??DataTable142_4  ;; 0xc351
        LDR      R0,[SP, #+4]
        CMP      R0,R4
        BCC      ??packet_error_rate_tx_test_22
        LDR      R0,??DataTable142_5
        BL       Uart_Print
??packet_error_rate_tx_test_22:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??packet_error_rate_tx_test_9
// 2178         }
// 2179         while((MAX_NUM_TRANSMISSION < u32NumTransmissions) || (TRUE == u8InvalidCharFlag));
        LDR      R0,[SP, #+4]
        CMP      R0,R4
        BCS      ??packet_error_rate_tx_test_8
// 2180         
// 2181 #endif         
// 2182          u8AppState = INIT_PER_TX_ST;
        LDR      R0,[SP, #+16]
        B        ??packet_error_rate_tx_test_23
// 2183       }
// 2184       break;
// 2185       case INIT_PER_TX_ST:
// 2186       {
// 2187         uint8_t i;
// 2188         uint8_t u8Count = 4;
// 2189         TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
??packet_error_rate_tx_test_4:
        LDR      R2,??DataTable141_6
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R3,#+32
        ORRS     R3,R3,R0
        STRB     R3,[R2, #+0]
// 2190         TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+8
        LDR      R3,[R2, #+4]
        STRB     R0,[R3, #+2]
// 2191         TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        LDR      R0,[SP, #+4]
        LDR      R3,[R2, #+4]
        STRB     R0,[R3, #+3]
// 2192         for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        MOVS     R3,#+0
        MOVS     R4,#+0
// 2193         {
// 2194           TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
??packet_error_rate_tx_test_24:
        LDR      R0,[SP, #+24]
        LSLS     R5,R4,#+24
        LSRS     R5,R5,#+24
        LDRB     R0,[R0, R5]
        LDR      R5,[R2, #+4]
        LSLS     R6,R1,#+24
        LSRS     R6,R6,#+24
        ADDS     R5,R5,R6
        STRB     R0,[R5, #+2]
// 2195           u8Count ++;
        ADDS     R1,R1,#+1
// 2196         }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+16
        BCC      ??packet_error_rate_tx_test_24
// 2197 
// 2198         u16MsgCount = 0;
        STR      R3,[R7, #+48]
// 2199         u16DoneCount = 0;
// 2200         u8AppState = TRANSMITING_PER_TX_ST;
        MOVS     R0,#+2
        B        ??packet_error_rate_tx_test_23
// 2201       }
// 2202       break;
// 2203       case TRANSMITING_PER_TX_ST:
// 2204       {
// 2205         if(is_tx_msg_final_state(TX_msg))
??packet_error_rate_tx_test_3:
        LDR      R4,??DataTable141_6
        CMP      R2,#+4
        BEQ      ??packet_error_rate_tx_test_25
        CMP      R2,#+5
        BEQ      ??packet_error_rate_tx_test_25
        CMP      R2,#+7
        BEQ      ??packet_error_rate_tx_test_25
        CMP      R2,#+3
        BNE      ??packet_error_rate_tx_test_7
// 2206         {
// 2207           if(u32NumTransmissions > u16MsgCount)
??packet_error_rate_tx_test_25:
        LDRH     R0,[R7, #+48]
        LDR      R2,[SP, #+4]
        CMP      R0,R2
        BCS      ??packet_error_rate_tx_test_26
// 2208           {
// 2209             TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
        LSRS     R1,R0,#+8
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+4]
// 2210             TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
// 2211             TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
        MOVS     R0,#+20
        STRB     R0,[R4, #+8]
// 2212 #if INTERFACE_TYPE == SERIAL          
// 2213             DelayMs(14);
        MOVS     R0,#+14
        BL       DelayMs
// 2214 #else
// 2215             DelayMs(5);
// 2216 #endif            
// 2217 
// 2218             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2219             u16MsgCount++;
        LDRH     R0,[R7, #+48]
        ADDS     R0,R0,#+1
        STRH     R0,[R7, #+48]
        B        ??packet_error_rate_tx_test_7
// 2220           }
// 2221           else
// 2222           {
// 2223             uint8_t i;
// 2224             for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
??packet_error_rate_tx_test_26:
        MOVS     R0,#+0
// 2225             {
// 2226               TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
??packet_error_rate_tx_test_27:
        LDR      R1,[SP, #+20]
        LDRB     R1,[R1, R0]
        LDR      R2,[R4, #+4]
        ADDS     R2,R2,R0
        STRB     R1,[R2, #+2]
// 2227             }
        ADDS     R0,R0,#+1
        CMP      R0,#+4
        BCC      ??packet_error_rate_tx_test_27
// 2228             u8AppState = DONE_PER_TX_ST;
        MOVS     R0,#+3
        B        ??packet_error_rate_tx_test_23
// 2229           }
// 2230         }   
// 2231       }  
// 2232       break;
// 2233       
// 2234       case DONE_PER_TX_ST:
// 2235       {
// 2236         if(NUM_DONE_TX >= u16DoneCount)
??packet_error_rate_tx_test_6:
        LDRH     R0,[R7, #+50]
        CMP      R0,#+16
        BGE      ??packet_error_rate_tx_test_28
// 2237         {
// 2238           if(is_tx_msg_final_state(TX_msg))
        CMP      R2,#+4
        BEQ      ??packet_error_rate_tx_test_29
        CMP      R2,#+5
        BEQ      ??packet_error_rate_tx_test_30
        CMP      R2,#+7
        BEQ      ??packet_error_rate_tx_test_30
        CMP      R2,#+3
        BNE      ??packet_error_rate_tx_test_7
        B        ??packet_error_rate_tx_test_30
// 2239           {
// 2240             if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
// 2241               u16DoneCount++;
??packet_error_rate_tx_test_29:
        ADDS     R0,R0,#+1
        STRH     R0,[R7, #+50]
// 2242             TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
??packet_error_rate_tx_test_30:
        LDR      R4,??DataTable141_6
        STRB     R1,[R4, #+8]
// 2243             DelayMs(14);
        MOVS     R0,#+14
        BL       DelayMs
// 2244             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
        B        ??packet_error_rate_tx_test_7
// 2245           }
// 2246         }
// 2247         else
// 2248         {
// 2249           u8AppState = FINISH_PER_TX_ST;
??packet_error_rate_tx_test_28:
        STRB     R1,[R7, #+28]
        B        ??packet_error_rate_tx_test_7
// 2250         }
// 2251       }
// 2252       break;
// 2253       
// 2254       case FINISH_PER_TX_ST:
// 2255         u8AppState = IDLE_PER_TX_ST;
??packet_error_rate_tx_test_5:
        MOVS     R0,#+0
??packet_error_rate_tx_test_23:
        STRB     R0,[R7, #+28]
// 2256 #if INTERFACE_TYPE == MANUAL                
// 2257         gu8TestAlreadyStarted = FALSE;
// 2258 #endif        
// 2259  
// 2260         break;
// 2261       
// 2262       default:
// 2263       {
// 2264       }
// 2265       break;
// 2266     }
// 2267 
// 2268 #if INTERFACE_TYPE == MANUAL        
// 2269   }
// 2270 #endif
// 2271   
// 2272 #if INTERFACE_TYPE == SERIAL    
// 2273     Uart_Poll(mUARTRxBuffer);
??packet_error_rate_tx_test_7:
        MOVS     R0,R7
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 2274   }while (mUARTRxBuffer[0] != Exit); 
        MOVS     R0,#+32
        LDRB     R0,[R7, R0]
        CMP      R0,#+81
        BEQ      .+4
        B        ??packet_error_rate_tx_test_0
// 2275   u8CurrentMode = SMAC_TEST_MODE_IDLE;
        MOVS     R0,#+0
        STRB     R0,[R7, #+16]
// 2276   MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 2277 #endif
// 2278 
// 2279   
// 2280 }
??packet_error_rate_tx_test_19:
        ADD      SP,SP,#+36
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return
??packet_error_rate_tx_test_11:
        MOV      R0,SP
        STRB     R4,[R0, #+0]
        CMP      R5,#+0
        BNE      .+4
        B        ??packet_error_rate_tx_test_16
        SUBS     R5,R5,#+1
        LSLS     R5,R5,#+24
        LSRS     R5,R5,#+24
        B        ??packet_error_rate_tx_test_17
??packet_error_rate_tx_test_12:
        MOV      R0,SP
        STRB     R4,[R0, #+0]
        B        ??packet_error_rate_tx_test_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141:
        DATA32
        DC32     0x79e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_1:
        DATA32
        DC32     0x3e7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_2:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_3:
        DATA32
        DC32     u16TenPower

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_4:
        DATA32
        DC32     ku8ExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_5:
        DATA32
        DC32     ku8DoneStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_6:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_7:
        DATA32
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141_8:
        DATA32
        DC32     ?_41+0x24
// 2281 
// 2282 /************************************************************************************
// 2283 * packet_error_rate_rx_test
// 2284 *
// 2285 * This function performs the packet error rate reception process.
// 2286 *
// 2287 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2288 void packet_error_rate_rx_test(void)
// 2289 {
packet_error_rate_rx_test:
        PUSH     {R3-R7,LR}
// 2290   static per_rx_states_t u8AppState;
// 2291 
// 2292 #if INTERFACE_TYPE == MANUAL 
// 2293   if(FALSE == gu8TestAlreadyStarted)
// 2294   {  
// 2295     RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
// 2296     LEDs_RX_INIT(250);  
// 2297 
// 2298 
// 2299 #if (gLCDSupported_d) 
// 2300     LCD_WriteString_NormalFont(7,"                     ");
// 2301     LCD_WriteString_NormalFont(4," PER Listening..");
// 2302 #endif
// 2303     u8AppState = INIT_PER_RX_ST;
// 2304     gu8TestAlreadyStarted = TRUE;
// 2305   }
// 2306 #endif
// 2307   
// 2308 
// 2309 #if INTERFACE_TYPE == SERIAL
// 2310   u8CurrentMode = SMAC_TEST_MODE_PER_RX;
        LDR      R4,??DataTable143
        MOVS     R0,#+2
        STRB     R0,[R4, #+16]
// 2311   RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+0]
// 2312   Uart_Print("\r\n    ****************************");
        LDR      R7,??DataTable143_1
        MOVS     R0,R7
        BL       Uart_Print
// 2313   Uart_Print("\r\n    ** Packet Error Rate Test **");
        MOVS     R0,R7
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 2314   Uart_Print("\r\n    ****************************");
        MOVS     R0,R7
        BL       Uart_Print
// 2315   Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
        MOVS     R0,R7
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 2316   Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable143_2
        BL       Uart_Print
// 2317   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2318   u8AppState = INIT_PER_RX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+29]
        MOVS     R5,#+0
        MOVS     R6,#+3
// 2319   do{
// 2320 #endif    
// 2321     
// 2322 #if INTERFACE_TYPE == MANUAL    
// 2323 
// 2324 
// 2325   if (TRUE == gu8TestAlreadyStarted)
// 2326   {
// 2327 #endif      
// 2328       (void)process_radio_msg();
??packet_error_rate_rx_test_0:
        BL       process_radio_msg
// 2329       if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_1
// 2330       {
// 2331         gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+23]
// 2332         process_incoming_msg();
        BL       process_incoming_msg
// 2333       }
// 2334     
// 2335 #if OTAP_ENABLED == TRUE
// 2336     if(gbOtapExecute)
// 2337     {
// 2338       OTAP_execute();        
// 2339     }
// 2340     else
// 2341 #endif
// 2342     {          
// 2343   
// 2344       switch(u8AppState){
??packet_error_rate_rx_test_1:
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+3
        LDRB     R1,[R4, #+29]
        CMP      R1,#+1
        BEQ      ??packet_error_rate_rx_test_2
        BCC      ??packet_error_rate_rx_test_3
        CMP      R1,#+3
        BEQ      ??packet_error_rate_rx_test_4
        BCC      ??packet_error_rate_rx_test_5
        CMP      R1,#+4
        BEQ      ??packet_error_rate_rx_test_6
        B        ??packet_error_rate_rx_test_3
// 2345         case IDLE_PER_RX_ST:
// 2346         {
// 2347           // Do nothing when idle
// 2348         }
// 2349         break;
// 2350         case INIT_PER_RX_ST:
// 2351         {
// 2352 #if INTERFACE_TYPE == SERIAL        
// 2353           Uart_Print("\r\n\nThe RX radio is now listening...");
??packet_error_rate_rx_test_2:
        MOVS     R0,#+146
        LSLS     R0,R0,#+1        ;; #+292
        ADDS     R0,R7,R0
        BL       Uart_Print
// 2354 #endif       
// 2355           u8AppState = LISTEN_PER_RX_ST;
        STRB     R6,[R4, #+29]
// 2356           
// 2357           
// 2358         }
// 2359         break;
        B        ??packet_error_rate_rx_test_3
// 2360         case WAITING_PER_RX_ST:
// 2361         {
// 2362           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_5:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_7
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_7
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_7
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_8
// 2363           {
// 2364             u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_7:
        STRB     R6,[R4, #+29]
// 2365           }
// 2366           if(gu32PerRxEvents & PER_DONE_MSG_EVNT)
??packet_error_rate_rx_test_8:
        MOVS     R0,#+56
        LDRB     R0,[R4, R0]
        LSLS     R0,R0,#+28
        BPL      ??packet_error_rate_rx_test_3
// 2367           {
// 2368             gu32PerRxEvents = PER_NO_EVENT;
        STR      R5,[R4, #+56]
// 2369             u8AppState = FINISH_PER_RX_ST;
        MOVS     R0,#+4
        B        ??packet_error_rate_rx_test_9
// 2370           }
// 2371         }
// 2372         break;
// 2373         case LISTEN_PER_RX_ST:
// 2374         {
// 2375           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_4:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_10
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_10
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_10
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_3
// 2376           {
// 2377             RX_msg.u8BufSize = PER_RX_SIZE;
??packet_error_rate_rx_test_10:
        MOVS     R0,#+24
        STRB     R0,[R4, #+8]
// 2378             MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       MLMERXEnableRequest
// 2379             u8AppState = WAITING_PER_RX_ST;
        MOVS     R0,#+2
        B        ??packet_error_rate_rx_test_9
// 2380           }
// 2381         }
// 2382         break;
// 2383         case FINISH_PER_RX_ST:
// 2384         {
// 2385           u8AppState = INIT_PER_RX_ST;
??packet_error_rate_rx_test_6:
        MOVS     R0,#+1
??packet_error_rate_rx_test_9:
        STRB     R0,[R4, #+29]
// 2386 #if INTERFACE_TYPE == MANUAL 
// 2387           LED_SetHex((uint8_t)(c_test_num.u8Thousands));
// 2388           DelayMs(gTotalPacketsDelay_d);
// 2389           LED_TurnOffAllLeds();
// 2390           DelayMs(gTotalPacketsDelay_d);
// 2391           LED_SetHex((uint8_t)(c_test_num.u8Houndreds));
// 2392           DelayMs(gTotalPacketsDelay_d);
// 2393           LED_TurnOffAllLeds();
// 2394           DelayMs(gTotalPacketsDelay_d);
// 2395           LED_SetHex((uint8_t)(c_test_num.u8Tens));
// 2396           DelayMs(gTotalPacketsDelay_d);
// 2397           LED_TurnOffAllLeds();
// 2398           DelayMs(gTotalPacketsDelay_d);
// 2399           LED_SetHex((uint8_t)(c_test_num.u8Units));
// 2400           DelayMs(gTotalPacketsDelay_d);
// 2401           gu8TestAlreadyStarted = FALSE;
// 2402 #endif        
// 2403         }
// 2404         break;
// 2405         default:
// 2406         {
// 2407         }
// 2408         break;
// 2409       }
// 2410     }  
// 2411 #if INTERFACE_TYPE == MANUAL        
// 2412   }
// 2413 #endif
// 2414   
// 2415 #if INTERFACE_TYPE == SERIAL    
// 2416     Uart_Poll(mUARTRxBuffer);
??packet_error_rate_rx_test_3:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 2417   }while (mUARTRxBuffer[0] != Exit);  
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??packet_error_rate_rx_test_0
// 2418   
// 2419   u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R5,[R4, #+16]
// 2420   MLMETestMode(u8CurrentMode);
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
// 2421 #endif
// 2422   
// 2423 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOVS     R0,#+0
??Subroutine2_0:
        BL       MLMETestMode
        REQUIRE ??Subroutine5_0
        ;; // Fall through to label ??Subroutine5_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
??Subroutine5_0:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142:
        DATA32
        DC32     ?_41+0x48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142_1:
        DATA32
        DC32     ?_41+0x78

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142_2:
        DATA32
        DC32     ?_41+0xF0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142_3:
        DATA32
        DC32     ?_41+0xA0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142_4:
        DATA32
        DC32     0xc351

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142_5:
        DATA32
        DC32     ?_41+0xC4
// 2424 
// 2425 /************************************************************************************
// 2426 * range_rx_test
// 2427 *
// 2428 * This function performs the range reception process.
// 2429 *
// 2430 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2431 void range_rx_test(void)
// 2432 {
range_rx_test:
        PUSH     {R2-R6,LR}
// 2433   volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
// 2434   volatile uint8_t u8retries;
// 2435 #if INTERFACE_TYPE == MANUAL 
// 2436   if(FALSE == gu8TestAlreadyStarted)
// 2437   {
// 2438      u8AppState = INIT_RANGE_RX_ST;
// 2439      LEDs_RX_INIT(250);
// 2440 #if (gLCDSupported_d) 
// 2441     LCD_WriteString_NormalFont(7,"    ");
// 2442     LCD_WriteString_NormalFont(4,"Range Listening..");
// 2443 #endif        
// 2444   }  
// 2445 #endif  
// 2446 
// 2447 #if INTERFACE_TYPE == SERIAL
// 2448   u8CurrentMode = SMAC_TEST_MODE_RANGE_RX;
        LDR      R4,??DataTable143
        MOVS     R0,#+3
        STRB     R0,[R4, #+16]
// 2449   
// 2450   Uart_Print("\r\n    ****************************");
        LDR      R6,??DataTable143_1
        MOVS     R0,R6
        BL       Uart_Print
// 2451   Uart_Print("\r\n    **       Range Test       **");
        MOVS     R0,#+164
        LSLS     R0,R0,#+1        ;; #+328
        ADDS     R0,R6,R0
        BL       Uart_Print
// 2452   Uart_Print("\r\n    ****************************");
        MOVS     R0,R6
        BL       Uart_Print
// 2453    
// 2454   Uart_Print("\r\nPress Q to exit from Range Test");
        MOVS     R0,#+182
        LSLS     R0,R0,#+1        ;; #+364
        ADDS     R0,R6,R0
        BL       Uart_Print
// 2455   Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable143_2
        BL       Uart_Print
// 2456   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2457   u8AppState = INIT_RANGE_RX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+30]
        LDR      R0,??DataTable144
        STR      R0,[SP, #+4]
        MOVS     R5,#+0
// 2458   do{
// 2459 #endif
// 2460 
// 2461       (void)process_radio_msg();
??range_rx_test_0:
        BL       process_radio_msg
// 2462       if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+1
        BNE      ??range_rx_test_1
// 2463       {
// 2464         gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+23]
// 2465         process_incoming_msg();
        BL       process_incoming_msg
// 2466       }
// 2467       else{
// 2468       }
// 2469 
// 2470 #if OTAP_ENABLED == TRUE
// 2471     if(gbOtapExecute)
// 2472     {
// 2473       OTAP_execute();        
// 2474     }
// 2475     else
// 2476 #endif
// 2477     {          
// 2478       switch(u8AppState){
??range_rx_test_1:
        LDRB     R1,[R4, #+0]
        LSRS     R2,R1,#+3
        LDR      R0,[SP, #+4]
        LDRB     R0,[R0, #+0]
        LDRB     R3,[R4, #+30]
        CMP      R3,#+1
        BEQ      ??range_rx_test_2
        BCC      ??range_rx_test_3
        CMP      R3,#+3
        BEQ      ??range_rx_test_4
        BCC      ??range_rx_test_5
        CMP      R3,#+4
        BEQ      ??range_rx_test_6
        B        ??range_rx_test_3
// 2479         case IDLE_RANGE_RX_ST:
// 2480         {
// 2481           // Do nothing when idle
// 2482         }
// 2483         break;
// 2484         
// 2485         case INIT_RANGE_RX_ST:
// 2486         {
// 2487           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_rx_test_2:
        LSLS     R1,R1,#+29
        LSRS     R1,R1,#+29
        MOVS     R2,#+40
        ORRS     R2,R2,R1
        STRB     R2,[R4, #+0]
// 2488           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,[SP, #+4]
        STRB     R1,[R0, #+0]
// 2489   #if INTERFACE_TYPE == SERIAL        
// 2490           Uart_Print("\r\n\nThe RX radio is now listening...");
        MOVS     R0,#+146
        LSLS     R0,R0,#+1        ;; #+292
        ADDS     R0,R6,R0
        BL       Uart_Print
// 2491           Uart_Print("\r\nStart the test by pressing any key on TX radio");
        MOVS     R0,#+200
        LSLS     R0,R0,#+1        ;; #+400
        ADDS     R0,R6,R0
        BL       Uart_Print
// 2492   #endif       
// 2493           u8AppState = LISTEN_RANGE_RX_ST;
        MOVS     R0,#+3
        B        ??range_rx_test_7
// 2494         }
// 2495         break;
// 2496         
// 2497         case LISTEN_RANGE_RX_ST:
// 2498         {
// 2499           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_4:
        CMP      R2,#+5
        BEQ      ??range_rx_test_8
        CMP      R2,#+6
        BEQ      ??range_rx_test_8
        CMP      R2,#+8
        BEQ      ??range_rx_test_8
        CMP      R2,#+4
        BNE      ??range_rx_test_3
// 2500           {
// 2501             RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_rx_test_8:
        MOVS     R0,#+12
        STRB     R0,[R4, #+8]
// 2502             MLMERXEnableRequest(&RX_msg, 0x00000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        MOVS     R0,R4
        BL       MLMERXEnableRequest
// 2503             u8AppState = WAITING_RANGE_RX_ST;
        B        ??range_rx_test_9
// 2504           }
// 2505         }
// 2506         break;
// 2507   
// 2508        case WAITING_RANGE_RX_ST:
// 2509         {
// 2510           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_5:
        CMP      R2,#+5
        BEQ      ??range_rx_test_10
        CMP      R2,#+6
        BEQ      ??range_rx_test_10
        CMP      R2,#+8
        BEQ      ??range_rx_test_10
        CMP      R2,#+4
        BNE      ??range_rx_test_11
// 2511           {
// 2512             u8AppState = LISTEN_RANGE_RX_ST;
??range_rx_test_10:
        MOVS     R0,#+3
        STRB     R0,[R4, #+30]
// 2513           }
// 2514           if(TRUE == gu8ValidRangePacket)
??range_rx_test_11:
        LDRB     R0,[R4, #+25]
        CMP      R0,#+1
        BNE      ??range_rx_test_3
// 2515           {
// 2516             gu8ValidRangePacket = FALSE;
        STRB     R5,[R4, #+25]
// 2517             u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
        MOVS     R0,#+4
        STRB     R0,[R4, #+30]
// 2518             u8retries = 5;
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        B        ??range_rx_test_3
// 2519           }
// 2520         }
// 2521         break;
// 2522    
// 2523         
// 2524         case TRANSMIT_ACK_RANGE_RX_ST:
// 2525         {
// 2526 
// 2527           if(is_tx_msg_final_state(ACK_msg))
??range_rx_test_6:
        LSRS     R0,R0,#+3
        CMP      R0,#+4
        BEQ      ??range_rx_test_12
        CMP      R0,#+5
        BEQ      ??range_rx_test_12
        CMP      R0,#+7
        BEQ      ??range_rx_test_12
        CMP      R0,#+3
        BNE      ??range_rx_test_13
// 2528           { 
// 2529             MCPSDataRequest(&ACK_msg); 
??range_rx_test_12:
        LDR      R0,[SP, #+4]
        BL       MCPSDataRequest
// 2530             u8retries --;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
// 2531           }
// 2532           if(0 == u8retries)
??range_rx_test_13:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??range_rx_test_3
// 2533           {
// 2534             u8AppState = WAITING_RANGE_RX_ST;
??range_rx_test_9:
        MOVS     R0,#+2
??range_rx_test_7:
        STRB     R0,[R4, #+30]
// 2535           }
// 2536         }
// 2537         break;
// 2538         
// 2539         case FINISH_RANGE_RX_ST:
// 2540         {
// 2541           /*Do nothing*/
// 2542         }
// 2543         break;
// 2544         default:
// 2545         {
// 2546         }
// 2547         break;
// 2548       }
// 2549    }
// 2550 #if INTERFACE_TYPE == SERIAL       
// 2551     Uart_Poll(mUARTRxBuffer);
??range_rx_test_3:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 2552   }while (mUARTRxBuffer[0] != Exit);  
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??range_rx_test_0
// 2553   u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R5,[R4, #+16]
// 2554   MLMETestMode(u8CurrentMode);
        MOVS     R0,#+0
        BL       MLMETestMode
// 2555 #endif  
// 2556 #if INTERFACE_TYPE == MANUAL      
// 2557   gu8TestAlreadyStarted = TRUE;
// 2558 #endif
// 2559 }
        POP      {R0,R1,R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_1:
        DATA32
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_2:
        DATA32
        DC32     ?_128
// 2560 
// 2561 /************************************************************************************
// 2562 * range_tx_test
// 2563 *
// 2564 * This function performs the range transmission process.
// 2565 *
// 2566 ***********************************************************************************/
// 2567 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2568 void range_tx_test(void)
// 2569 {
range_tx_test:
        PUSH     {R3-R7,LR}
// 2570   static range_tx_states_t u8AppState; 
// 2571   static uint16_t u8CountNoPacket = 0;
// 2572    
// 2573 #if INTERFACE_TYPE == MANUAL 
// 2574   if(FALSE == gu8TestAlreadyStarted)
// 2575   {
// 2576     clear_event(gu8TestModeEvents, TEST_START_EVENT);
// 2577     u8AppState = INIT_RANGE_TX_ST;
// 2578     LEDs_TX_INIT(250);  
// 2579 #if (gLCDSupported_d) 
// 2580     LCD_WriteString_NormalFont(7,"    ");
// 2581     LCD_WriteString_NormalFont(4,"Range Transmitting..");
// 2582 #endif        
// 2583   }  
// 2584 #endif  
// 2585 
// 2586 #if INTERFACE_TYPE == SERIAL    
// 2587 
// 2588   u8AppState = INIT_RANGE_TX_ST;
        LDR      R4,??DataTable146
        MOVS     R0,#+1
        STRB     R0,[R4, #+31]
// 2589   
// 2590   u8CurrentMode = SMAC_TEST_MODE_RANGE_TX;
        MOVS     R0,#+3
        STRB     R0,[R4, #+16]
// 2591   Uart_Print("\r\n    ****************************");
        LDR      R0,??DataTable146_1
        BL       Uart_Print
// 2592   Uart_Print("\r\n    **       Range Test       **");
        LDR      R0,??DataTable146_2
        BL       Uart_Print
// 2593   Uart_Print("\r\n    ****************************");
        LDR      R0,??DataTable146_1
        BL       Uart_Print
// 2594    
// 2595   Uart_Print("\r\nPress Q to exit from Range Test");
        LDR      R0,??DataTable146_3
        BL       Uart_Print
// 2596   Uart_Print("\r\nPress any key to start the test.....");
        LDR      R0,??DataTable146_4
        BL       Uart_Print
// 2597   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
        LDR      R0,??DataTable146_5
        STR      R0,[SP, #+0]
        MOVS     R5,#+4
// 2598   do{
// 2599 #endif
// 2600     (void)process_radio_msg();
??range_tx_test_1:
        BL       process_radio_msg
// 2601     if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+1
        BNE      ??range_tx_test_2
// 2602     {
// 2603       gbDataIndicationFlag = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+23]
// 2604       process_incoming_msg();
        BL       process_incoming_msg
// 2605       u8CountNoPacket = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+52]
        B        ??range_tx_test_3
// 2606     }
// 2607     else{
// 2608       u8CountNoPacket++;
??range_tx_test_2:
        LDRH     R0,[R4, #+52]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+52]
// 2609       if(MAX_NO_PACKET_ALLOW == u8CountNoPacket)
        LSLS     R1,R5,#+10
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??range_tx_test_3
// 2610       {
// 2611           u8CountNoPacket = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+52]
// 2612           TurnOffLeds();
        BL       LED_TurnOffAllLeds
// 2613       }
// 2614     }
// 2615     
// 2616 #if OTAP_ENABLED == TRUE
// 2617  if(gbOtapExecute)
// 2618  {
// 2619     OTAP_execute();        
// 2620  }
// 2621  else
// 2622 #endif
// 2623   {
// 2624     
// 2625     switch(u8AppState)
??range_tx_test_3:
        LDRB     R0,[R4, #+0]
        LSRS     R1,R0,#+3
        LDR      R0,??DataTable148
        LDRB     R0,[R0, #+0]
        LSRS     R2,R0,#+3
        MOVS     R6,#+2
        LDRB     R3,[R4, #+31]
        CMP      R3,#+5
        BHI      ??range_tx_test_4
        ADR      R7,??range_tx_test_0
        LDRB     R7,[R7, R3]
        ADD      PC,PC,R7
        DATA
??range_tx_test_0:
        DC8      0x4,0x8,0x50,0xA8
        DC8      0x72,0x8E
        THUMB
// 2626     {
// 2627       case IDLE_RANGE_TX_ST:
// 2628       {
// 2629         // Do nothing when idle
// 2630   		u8AppState = INIT_RANGE_TX_ST;
??range_tx_test_5:
        MOVS     R0,#+1
        B        ??range_tx_test_6
// 2631       }
// 2632       break;
// 2633       case INIT_RANGE_TX_ST:
// 2634       {
// 2635         uint8_t i;
// 2636           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_tx_test_7:
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+29
        LSRS     R1,R1,#+29
        MOVS     R2,#+40
        ORRS     R2,R2,R1
        STRB     R2,[R4, #+0]
// 2637           TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R1,??DataTable148
        MOVS     R2,#+32
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R3,#+32
        ORRS     R3,R3,R0
        STRB     R3,[R1, #+0]
// 2638           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R0,??DataTable144
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        ORRS     R2,R2,R0
        LDR      R0,??DataTable144
        STRB     R2,[R0, #+0]
// 2639           for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
        MOVS     R0,#+0
// 2640           {
// 2641             TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
??range_tx_test_8:
        LDR      R2,[SP, #+0]
        LDRB     R2,[R2, R0]
        LDR      R3,[R1, #+4]
        ADDS     R3,R3,R0
        STRB     R2,[R3, #+2]
// 2642           }
        ADDS     R0,R0,#+1
        CMP      R0,#+10
        BCC      ??range_tx_test_8
// 2643 #if SMAC_FEATURE_SECURITY ==  TRUE
// 2644         {
// 2645           uint8_t fill_counter;
// 2646           for(fill_counter=sizeof(u8RangeExpectedString); fill_counter<16; fill_counter++)
// 2647           {
// 2648              TX_msg.pu8Buffer->u8Data[fill_counter] = '\0';
// 2649           }
// 2650           TX_msg.u8BufSize = 16;
// 2651           (void)CipherMsgU8(&(TX_msg.pu8Buffer->u8Data[0]), (TX_msg.u8BufSize));
// 2652         }
// 2653 #else
// 2654         TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));
        MOVS     R0,#+10
        STRB     R0,[R1, #+8]
// 2655 #endif
// 2656 
// 2657 
// 2658 #if INTERFACE_TYPE == SERIAL              
// 2659           Uart_Print("\r\n\nThe transceiver is now transmitting...");
        LDR      R0,??DataTable148_1
        BL       Uart_Print
// 2660 #endif          
// 2661           u8AppState = TRANSMITING_RANGE_TX_ST;
        STRB     R6,[R4, #+31]
// 2662       }
// 2663       break;
        B        ??range_tx_test_4
// 2664       
// 2665       case TRANSMITING_RANGE_TX_ST:
// 2666       {
// 2667         if(is_tx_msg_final_state(TX_msg))
??range_tx_test_9:
        LDR      R6,??DataTable148
        CMP      R2,#+4
        BEQ      ??range_tx_test_10
        CMP      R2,#+5
        BEQ      ??range_tx_test_10
        CMP      R2,#+7
        BEQ      ??range_tx_test_10
        CMP      R2,#+3
        BNE      ??range_tx_test_11
// 2668         {
// 2669           
// 2670           DelayMs(5);
??range_tx_test_10:
        MOVS     R0,#+5
        BL       DelayMs
// 2671           MCPSDataRequest(&TX_msg);
        MOVS     R0,R6
        BL       MCPSDataRequest
// 2672         }
// 2673         u8AppState = LISTEN_RANGE_TX_ST;
??range_tx_test_11:
        STRB     R5,[R4, #+31]
// 2674       }  
// 2675       break;
        B        ??range_tx_test_4
// 2676       
// 2677       case LISTEN_RANGE_TX_ST:
// 2678       {
// 2679         if(is_rx_msg_final_state(RX_msg))
??range_tx_test_12:
        CMP      R1,#+5
        BEQ      ??range_tx_test_13
        CMP      R1,#+6
        BEQ      ??range_tx_test_13
        CMP      R1,#+8
        BEQ      ??range_tx_test_13
        CMP      R1,#+4
        BNE      ??range_tx_test_14
// 2680         {
// 2681           RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_tx_test_13:
        MOVS     R0,#+12
        STRB     R0,[R4, #+8]
// 2682           MLMERXEnableRequest(&RX_msg, 0x00000200);
        LSLS     R1,R5,#+7
        MOVS     R0,R4
        BL       MLMERXEnableRequest
// 2683         }
// 2684         u8AppState = WAITING_RANGE_TX_ST;
// 2685       }
// 2686       break;
// 2687       
// 2688       case WAITING_RANGE_TX_ST:
// 2689       {
// 2690         if(is_tx_msg_final_state(TX_msg))
// 2691         {
// 2692           u8AppState = TRANSMITING_RANGE_TX_ST;
// 2693         }
// 2694         if(is_rx_msg_final_state(RX_msg))
// 2695         {
// 2696           u8AppState = LISTEN_RANGE_TX_ST;
// 2697         }
// 2698         if(TRUE == gu8ValidAckPacket)
// 2699         {
// 2700           gu8ValidAckPacket = FALSE;
// 2701           u8AppState = RANGE_INDICATION_TX_ST;
// 2702         }
// 2703       }
// 2704       break;
// 2705       
// 2706       case RANGE_INDICATION_TX_ST:
// 2707       {
// 2708         u8AppState = WAITING_RANGE_TX_ST;
??range_tx_test_14:
        MOVS     R0,#+3
??range_tx_test_6:
        STRB     R0,[R4, #+31]
// 2709       }
// 2710       break;
// 2711       
// 2712       default:
// 2713       {
// 2714       }
// 2715       break;
// 2716     }
// 2717   }
// 2718 #if INTERFACE_TYPE == SERIAL                  
// 2719     Uart_Poll(mUARTRxBuffer);
??range_tx_test_4:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 2720   }while (mUARTRxBuffer[0] != Exit);  
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??range_tx_test_1
// 2721   u8CurrentMode = SMAC_TEST_MODE_IDLE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
// 2722   MLMETestMode(u8CurrentMode);
        B.N      ??Subroutine2_0
??range_tx_test_15:
        CMP      R2,#+4
        BEQ      ??range_tx_test_16
        CMP      R2,#+5
        BEQ      ??range_tx_test_16
        CMP      R2,#+7
        BEQ      ??range_tx_test_16
        CMP      R2,#+3
        BNE      ??range_tx_test_17
??range_tx_test_16:
        STRB     R6,[R4, #+31]
??range_tx_test_17:
        CMP      R1,#+5
        BEQ      ??range_tx_test_18
        CMP      R1,#+6
        BEQ      ??range_tx_test_18
        CMP      R1,#+8
        BEQ      ??range_tx_test_18
        CMP      R1,#+4
        BNE      ??range_tx_test_19
??range_tx_test_18:
        STRB     R5,[R4, #+31]
??range_tx_test_19:
        LDRB     R0,[R4, #+26]
        CMP      R0,#+1
        BNE      ??range_tx_test_4
        MOVS     R0,#+0
        STRB     R0,[R4, #+26]
        MOVS     R0,#+5
        B        ??range_tx_test_6
// 2723 #endif
// 2724 
// 2725 #if INTERFACE_TYPE == MANUAL      
// 2726   gu8TestAlreadyStarted = TRUE;
// 2727 #endif
// 2728 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable144:
        DATA32
        DC32     ACK_msg

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
RX_msg:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
u8CurrentMode:
        DATA8
        DC8 0
u8TestModeChannel:
        DC8 0
u8TestModePower:
        DC8 0
CurrentOption:
        DC8 0
u8CurrentCoarseTune:
        DC8 0
u8CurrentFineTune:
        DC8 0
u8BulkCapState:
        DC8 0
gbDataIndicationFlag:
        DC8 0
gu8TestModeEvents:
        DC8 0
gu8ValidRangePacket:
        DC8 0
gu8ValidAckPacket:
        DC8 0
gu8TestAlreadyStarted:
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
mUARTRxBuffer:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DATA16
        DC16 0
        DC16 10
        DC8 0, 0
        DC8 0, 0
        DC16 0
        DATA8
        DC8 0, 0
gu32PerRxEvents:
        DATA32
        DC8 0, 0, 0, 0
u8LQIIcon4_c:
        DATA8
        DC8 0, 0, 0, 0, 48, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176
        DC8 176, 176, 176, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 13, 109, 109
        DC8 109, 109, 109, 109, 109, 109, 109, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 6, 10, 10, 254, 10, 10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0
u8LQIIcon3_c:
        DC8 0, 0, 0, 0, 0, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128
        DC8 128, 128, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 13, 109, 109
        DC8 109, 109, 109, 109, 109, 109, 109, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 6, 10, 10, 254, 10, 10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0
u8LQIIcon2_c:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 12, 108, 108, 108, 108, 108, 108, 108, 108
        DC8 108, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 10, 10
        DC8 254, 10, 10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0
u8LQIIcon1_c:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 96, 96, 96, 96, 96, 96, 96, 96, 96, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 10, 10, 254, 10, 10, 6, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
u8RxIcon1_c:
        DATA8
        DC8 0, 0, 62, 65, 0, 62, 65, 0, 62, 65, 0, 252, 252, 0, 65, 62, 0, 65
        DC8 62, 0, 65, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 171, 87
        DC8 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224
        DC8 255, 250, 253, 255, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
u8RxIcon2_c:
        DATA8
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 62, 65, 0, 252, 252, 0, 65, 62, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 171, 87, 254, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, 255, 250
        DC8 253, 255, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
minLQI:
        DATA8
        DC8 255
// 2729 
// 2730 
// 2731 /************************************************************************************
// 2732 * configure_clock_setting
// 2733 *
// 2734 * This function adjust the clock setting selected by the user in the serial interface.
// 2735 *
// 2736 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2737 void configure_clock_settings(void)
// 2738 {
configure_clock_settings:
        PUSH     {R3-R7,LR}
        LDR      R7,??DataTable146
        LDR      R4,??DataTable149  ;; 0x80003040
// 2739   char option_menu, option;
// 2740    do{
// 2741       option_menu = clock_setting_menu();
??configure_clock_settings_0:
        BL       clock_setting_menu
        MOVS     R5,R0
// 2742       switch(option_menu)
        CMP      R0,#+49
        BEQ      ??configure_clock_settings_1
        CMP      R0,#+50
        BEQ      ??configure_clock_settings_2
        CMP      R0,#+51
        BEQ      ??configure_clock_settings_3
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_4
        B        ??configure_clock_settings_5
// 2743       {
// 2744         case BulkCapacitor:
// 2745          do
// 2746           {
// 2747             option = bulk_cap_menu();
??configure_clock_settings_1:
        BL       bulk_cap_menu
        MOVS     R6,R0
// 2748             switch(option)
        CMP      R0,#+68
        BEQ      ??configure_clock_settings_6
        CMP      R0,#+69
        BEQ      ??configure_clock_settings_7
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_8
        B        ??configure_clock_settings_9
// 2749             {
// 2750               case EnableBulkCapacitor:
// 2751                 enable_bulk_cap(); 
??configure_clock_settings_7:
        LDR      R0,[R4, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2752                 u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        B.N      ??configure_clock_settings_10
// 2753                 break;
// 2754               case DisableBulkCapacitor:
// 2755                 disable_bulk_cap(); 
??configure_clock_settings_6:
        LDR      R0,[R4, #+0]
        LDR      R1,??DataTable150  ;; 0xfdffffff
        ANDS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2756                 u8BulkCapState = gDisable_c;
        MOVS     R0,#+0
??configure_clock_settings_10:
        STRB     R0,[R7, #+22]
// 2757                 break;
        B        ??configure_clock_settings_8
// 2758               case PreviousMenu:
// 2759                 break;
// 2760               default:
// 2761                 Uart_Print("  Invalid Option!!!");
??configure_clock_settings_9:
        Nop      
        ADR.N    R0,?_125
        BL       Uart_Print
// 2762                 break;              
// 2763             }
// 2764           }while(option != PreviousMenu);
??configure_clock_settings_8:
        CMP      R6,#+112
        BNE      ??configure_clock_settings_1
        B        ??configure_clock_settings_4
// 2765           break;
// 2766           
// 2767         case CoarseTune:
// 2768           coarse_tune_adjust();
??configure_clock_settings_2:
        BL       coarse_tune_adjust
// 2769           break;
        B        ??configure_clock_settings_4
// 2770           
// 2771         case FineTune:
// 2772           fine_tune_adjust();
??configure_clock_settings_3:
        BL       fine_tune_adjust
// 2773           break;
        B        ??configure_clock_settings_4
// 2774           
// 2775         case PreviousMenu:
// 2776           break;
// 2777           
// 2778         default:
// 2779           Uart_Print("  Invalid Option!!!\n");
??configure_clock_settings_5:
        ADR.N    R0,?_78
        BL       Uart_Print
// 2780           break;
// 2781      }
// 2782   }while(option_menu != PreviousMenu); 
??configure_clock_settings_4:
        CMP      R5,#+112
        BNE      ??configure_clock_settings_0
// 2783 }
        B.N      ??Subroutine5_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_125:
        DC8 "  Invalid Option!!!"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_78:
        DC8 "  Invalid Option!!!\012"
        DC8 0, 0, 0
// 2784 
// 2785 /************************************************************************************
// 2786 * coarse_tune_adjust
// 2787 *
// 2788 * This function ajusts the current coarse tune value to the new typed by the user 
// 2789 * in the serial interface.
// 2790 *
// 2791 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2792 void coarse_tune_adjust(void)
// 2793 {
coarse_tune_adjust:
        PUSH     {R4-R6,LR}
// 2794   uint8_t u8TempCoarse;
// 2795   Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
        LDR      R0,??DataTable150_1
        BL       Uart_Print
// 2796   Uart_Print("\r  Current Coarse Tune Value: ");
        LDR      R0,??DataTable150_2
        BL       Uart_Print
// 2797   Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable146
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+20
        BL       Uart_PrintHex
// 2798   Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
        LDR      R5,??DataTable150_3
        MOVS     R0,R5
        BL       Uart_Print
// 2799   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2800   u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2801   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2802 
// 2803   if(u8TempCoarse > 0X00)
        CMP      R6,#+0
        BEQ      ??coarse_tune_adjust_0
// 2804   {
// 2805     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??coarse_tune_adjust_1
// 2806   }
// 2807   else
// 2808   {
// 2809     u8CurrentCoarseTune = (u8TempCoarse << 4);
??coarse_tune_adjust_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
// 2810     u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+20]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+20]
// 2811     set_xtal_coarse_tune(u8CurrentCoarseTune); 
        LDR      R1,??DataTable149  ;; 0x80003040
        LDR      R2,[R1, #+0]
        LDR      R3,??DataTable150_4  ;; 0xfe1fffff
        ANDS     R3,R3,R2
        LSLS     R0,R0,#+21
        MOVS     R2,#+240
        LSLS     R2,R2,#+17       ;; #+31457280
        ANDS     R2,R2,R0
        ORRS     R2,R2,R3
        STR      R2,[R1, #+0]
// 2812   }
// 2813 }
??coarse_tune_adjust_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146_1:
        DATA32
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146_2:
        DATA32
        DC32     ?_41+0x148

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146_3:
        DATA32
        DC32     ?_41+0x16C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146_4:
        DATA32
        DC32     ?_41+0x1C4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146_5:
        DATA32
        DC32     u8RangeExpectedString
// 2814 
// 2815 /************************************************************************************
// 2816 * fine_tune_adjust
// 2817 *
// 2818 * This function ajusts the current fine tune value to the new typed by the user
// 2819 * through the serial interface.
// 2820 *
// 2821 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2822 void fine_tune_adjust()
// 2823 {
fine_tune_adjust:
        PUSH     {R4-R6,LR}
// 2824   uint8_t u8TempFine;
// 2825   Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
        LDR      R0,??DataTable150_5
        BL       Uart_Print
// 2826   Uart_Print("\r  Current Fine Tune Value: ");
        LDR      R0,??DataTable150_6
        BL       Uart_Print
// 2827   Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable150_7
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+21
        BL       Uart_PrintHex
// 2828   Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
        LDR      R5,??DataTable150_8
        MOVS     R0,R5
        BL       Uart_Print
// 2829   u8TempFine = Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2830   u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2831   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2832   if(u8TempFine > 0X01)
        CMP      R6,#+2
        BLT      ??fine_tune_adjust_0
// 2833   {
// 2834     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??fine_tune_adjust_1
// 2835   }
// 2836   else
// 2837   {
// 2838     u8CurrentFineTune = (u8TempFine << 4);
??fine_tune_adjust_0:
        LSLS     R0,R6,#+4
        STRB     R0,[R4, #+21]
// 2839     u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+21]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+21]
// 2840     set_xtal_fine_tune(u8CurrentFineTune); 
        LDR      R1,??DataTable149  ;; 0x80003040
        LDR      R2,[R1, #+0]
        LDR      R3,??DataTable150_9  ;; 0xffe0ffff
        ANDS     R3,R3,R2
        LSLS     R0,R0,#+16
        MOVS     R2,#+248
        LSLS     R2,R2,#+13       ;; #+2031616
        ANDS     R2,R2,R0
        ORRS     R2,R2,R3
        STR      R2,[R1, #+0]
// 2841   }
// 2842 
// 2843 }
??fine_tune_adjust_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 2844 /************************************************************************************
// 2845 * PrintTestMode
// 2846 *
// 2847 * This function prints the Test Mode name received as parameter.
// 2848 *
// 2849 *********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2850 void PrintTestMode(Test_Mode_t TestModeValue)
// 2851 {
PrintTestMode:
        MOVS     R1,R0
        LDR      R0,??DataTable150_10
        CMP      R1,#+6
        BLS      ??PrintTestMode_1
        BX       LR
??PrintTestMode_1:
        PUSH     {R7,LR}
// 2852   switch(TestModeValue)
        ADR      R2,??PrintTestMode_0
        LDRB     R2,[R2, R1]
        ADD      PC,PC,R2
        Nop      
        DATA
??PrintTestMode_0:
        DC8      0x8,0x1E,0x18,0x1C
        DC8      0x10,0x14,0xC,0x0
        THUMB
// 2853   {
// 2854     case SMAC_TEST_MODE_IDLE:
// 2855       Uart_Print("IDLE MODE\n");
??PrintTestMode_2:
        ADR.N    R0,?_133
        B        ??PrintTestMode_3
// 2856       break;
// 2857 	  
// 2858     case SMAC_TEST_MODE_CONTINUOUS_RX:
// 2859       Uart_Print("CONTINUOUS RECEPTION\n");
??PrintTestMode_4:
        ADR.N    R0,?_134
        B        ??PrintTestMode_3
// 2860       break;
// 2861 	  
// 2862     case SMAC_TEST_MODE_PULSE_PRBS9_TX:
// 2863       Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
// 2864       break;
// 2865 	  
// 2866     case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
// 2867       Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
??PrintTestMode_5:
        ADDS     R0,R0,#+40
        B        ??PrintTestMode_3
// 2868       break;       
// 2869 	  
// 2870     case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
// 2871       Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
??PrintTestMode_6:
        ADDS     R0,R0,#+76
        B        ??PrintTestMode_3
// 2872       break;      
// 2873 	  
// 2874     case SMAC_TEST_MODE_PER_TX:
// 2875       Uart_Print("PACKET ERROR RATE TEST\n");
??PrintTestMode_7:
        ADR.N    R0,?_135
        B        ??PrintTestMode_3
// 2876       break;
// 2877 	  
// 2878     case SMAC_TEST_MODE_RANGE_TX:
// 2879       Uart_Print("RANGE TEST\n");
??PrintTestMode_8:
        ADR.N    R0,?_136
??PrintTestMode_3:
        BL       Uart_Print
// 2880       break;
// 2881 	  
// 2882     default:
// 2883       break;
// 2884   }
// 2885 }
??PrintTestMode_9:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable148:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable148_1:
        DATA32
        DC32     ?_41+0x1EC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_133:
        DC8 "IDLE MODE\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_134:
        DC8 "CONTINUOUS RECEPTION\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_135:
        DC8 "PACKET ERROR RATE TEST\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_136:
        DC8 "RANGE TEST\012"
// 2886 
// 2887 /************************************************************************************
// 2888 * PrintChannel
// 2889 *
// 2890 * This function prints the Channel number received as parameter.
// 2891 *
// 2892 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2893 void PrintChannel(channel_num_t u8ChannelValue)
// 2894 {
PrintChannel:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2895   if( TOTAL_CHANN > u8ChannelValue ){
        CMP      R0,#+16
        BGE      ??PrintChannel_0
// 2896     u8ChannelValue += 11;
// 2897     Uart_Print("CHANNEL ");
        ADR.N    R0,?_137
        BL       Uart_Print
// 2898     Uart_PrintByteDec(u8ChannelValue);
        ADDS     R4,R4,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       Uart_PrintByteDec
// 2899     Uart_Print("\n");
        ADR      R0,??DataTable151  ;; "\n"
        BL       Uart_Print
// 2900   }
// 2901 }
??PrintChannel_0:
        BL       ??Subroutine4_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable149:
        DATA32
        DC32     0x80003040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_137:
        DC8 "CHANNEL "
        DC8 0, 0, 0
// 2902 
// 2903 /************************************************************************************
// 2904 * LEDs_LQI_indicator
// 2905 *
// 2906 * This function show the four possible LQI adjusted values using three LEDs.
// 2907 *
// 2908 ************************************************************************************/
// 2909 #if (gLEDSupported_d)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2910 void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
// 2911 {
LEDs_LQI_indication:
        PUSH     {R3-R5,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
// 2912   uint8_t LEDs_state[4][4]={gFarRange_c,LED_OFF,LED_OFF,LED_OFF,
// 2913                             gMediumRange_c,LED_ON,LED_OFF,LED_OFF,
// 2914                             gNearRange_c,LED_ON,LED_ON,LED_OFF,
// 2915                             gVeryNearRange_c,LED_ON,LED_ON,LED_ON
// 2916                            };
        MOV      R0,SP
        ADR.N    R1,?_138
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
// 2917   Gpio_SetPinData(LED2_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
        LSLS     R4,R4,#+2
        MOV      R5,SP
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+24
        BL       Gpio_SetPinData
// 2918   Gpio_SetPinData(LED3_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+2]
        MOVS     R0,#+25
        BL       Gpio_SetPinData
// 2919   Gpio_SetPinData(LED4_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+44
        BL       Gpio_SetPinData
// 2920 }
        ADD      SP,SP,#+20
        POP      {R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_138:
        DATA8
        DC8 0, 0, 0, 0, 1, 1, 0, 0, 2, 1, 1, 0, 3, 1, 1, 1
// 2921 #endif
// 2922 
// 2923 /************************************************************************************
// 2924 * TMR_Init
// 2925 *
// 2926 * This function configurates the timer to generate a output frequency at 2 MHz.
// 2927 * 
// 2928 **********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2929 void TMR_Init(void)
// 2930 {              
TMR_Init:
        PUSH     {R1-R5,LR}
// 2931   TmrConfig_t pConfig;
// 2932   TmrStatusCtrl_t pStatusCtrl;
// 2933   TmrComparatorStatusCtrl_t pCompStatusCtrl;
// 2934   
// 2935   TmrInit();
        BL       TmrInit
// 2936   GpioTmrInit();
        BL       GpioTmrInit
// 2937   TmrEnable(gTmr1_c);
        MOVS     R0,#+1
        BL       TmrEnable
// 2938  
// 2939   SetLoadVal(gTmr1_c, 0x00);
        LDR      R0,??DataTable151_1  ;; 0x80007020
        MOVS     R4,#+0
        STRH     R4,[R0, #+6]
// 2940   SetCntrVal(gTmr1_c, 0x00);
        STRH     R4,[R0, #+10]
// 2941   SetCompLoad1Val(gTmr1_c, 0x05);         
        MOVS     R5,#+5
        STRH     R5,[R0, #+16]
// 2942   SetCompLoad2Val(gTmr1_c, 0x05);        
        STRH     R5,[R0, #+18]
// 2943  
// 2944   SetComp1Val(gTmr1_c, 0x05);  
        STRH     R5,[R0, #+0]
// 2945   SetComp2Val(gTmr1_c, 0x05);              
        STRH     R5,[R0, #+2]
// 2946      
// 2947   TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       TmrSetMode
// 2948 
// 2949   pConfig.tmrOutputMode = gTmrToggleOF_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 2950   pConfig.tmrCoInit = FALSE;
        STRB     R4,[R0, #+1]
// 2951   pConfig.tmrCntDir = FALSE;
        STRB     R4,[R0, #+2]
// 2952   pConfig.tmrCntLen = TRUE;
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
// 2953   pConfig.tmrCntOnce = FALSE;
        STRH     R4,[R0, #+4]
// 2954   pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
// 2955   pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
// 2956   TmrSetConfig(gTmr1_c, &pConfig);  
        ADD      R1,SP,#+4
        MOVS     R0,#+1
        BL       TmrSetConfig
// 2957 
// 2958   pCompStatusCtrl.uintValue =0x06;
        MOVS     R0,#+6
        MOV      R1,SP
        STRH     R0,[R1, #+0]
// 2959   TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
        MOVS     R0,#+1
        BL       TmrSetCompStatusControl
// 2960  
// 2961   pStatusCtrl.uintValue = 0x05;
        MOV      R0,SP
        STRH     R5,[R0, #+2]
// 2962   TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
        ADD      R1,SP,#+0
        ADDS     R1,R1,#+2
        MOVS     R0,#+1
        BL       TmrSetStatusControl
// 2963 }
        POP      {R0-R2,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150:
        DATA32
        DC32     0xfdffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_1:
        DATA32
        DC32     ?_129

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_2:
        DATA32
        DC32     ?_130

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_3:
        DATA32
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_4:
        DATA32
        DC32     0xfe1fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_5:
        DATA32
        DC32     ?_131

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_6:
        DATA32
        DC32     ?_132

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_7:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_8:
        DATA32
        DC32     ?_56

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_9:
        DATA32
        DC32     0xffe0ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_10:
        DATA32
        DC32     ?_58
// 2964 
// 2965 /************************************************************************************
// 2966 * GpioTmrInit
// 2967 *
// 2968 * This function initializate the Timer�s gpios.
// 2969 *
// 2970 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2971 void GpioTmrInit(void)
// 2972 {
GpioTmrInit:
        PUSH     {R7,LR}
// 2973   Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
// 2974   Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
// 2975   Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinFunction
// 2976   Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
// 2977 }
        POP      {R0,R3}
        BX       R3               ;; return
// 2978 
// 2979 /************************************************************************************
// 2980 * display_config function
// 2981 *
// 2982 * This function prints an ASCII Freescale's logo.
// 2983 ************************************************************************************/
// 2984 #if INTERFACE_TYPE == SERIAL
// 2985 static void print_freescale_logo(void)
// 2986 {
// 2987   Uart_Print("\n\r\n\r\n\r      #\n");
// 2988   Uart_Print("\r     ###\n");
// 2989   Uart_Print("\r    ###  *\n");
// 2990   Uart_Print("\r     #  ***\n");
// 2991   Uart_Print("\r       ***  #\n");
// 2992   Uart_Print("\r        *  ###\n");
// 2993   Uart_Print("\r          ###\n");
// 2994   Uart_Print("\r        *  #\n");
// 2995   Uart_Print("\r       ***\n");
// 2996   Uart_Print("\r      ***  #\n");
// 2997   Uart_Print("\r    #  *  ###\n");
// 2998   Uart_Print("\r   ###   ###\n");
// 2999   Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
// 3000   Uart_Print("\r   #  ***\n");
// 3001   Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
// 3002   Uart_Print("\r   #  *\n");
// 3003   Uart_Print("\r  ###               2 0 1 1\n");
// 3004   Uart_Print("\r ###\n");
// 3005   Uart_Print("\r  #           Press any key to continue...\n\n");
// 3006 }
// 3007 #endif
// 3008 
// 3009 /*******************************************************************************
// 3010 * DisplayFreescaleLogo
// 3011 *
// 3012 * This function displays the Freescale Logo in the LCD.
// 3013 *******************************************************************************/
// 3014 #if (gLCDSupported_d)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3015 void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
// 3016 {
DisplayFreescaleLogo:
        PUSH     {R1-R7,LR}
// 3017   uint8_t u8Count;
// 3018   uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
        MOV      R2,SP
        LDR      R3,??DataTable152
        LDM      R3!,{R4-R6}
        STM      R2!,{R4-R6}
// 3019   uint8_t i;
// 3020   
// 3021   for(i=0; i < 8; i++)
        MOVS     R6,#+0
        MOVS     R5,R0
        MOVS     R4,R1
// 3022   {  
// 3023     LCD_WritePixel(xStartCoord, yStartCoord, 1);
??DisplayFreescaleLogo_0:
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3024     LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
        ADDS     R7,R4,#+1
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3025     LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3026     LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3027     LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
        ADDS     R7,R4,#+2
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3028     LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3029     LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3030     LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3031     LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3032     LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
        ADDS     R7,R4,#+3
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3033     LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3034     LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3035     LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3036     LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3037     LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+4
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3038     LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3039     LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3040     LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3041     LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3042     LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3043     LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3044     LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3045     LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  
        ADDS     R4,R4,#+6
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3046 
// 3047     
// 3048    if(i == 2 || i == 4 || i == 6)
        CMP      R6,#+2
        BEQ      ??DisplayFreescaleLogo_1
        CMP      R6,#+4
        BEQ      ??DisplayFreescaleLogo_2
        CMP      R6,#+6
        BNE      ??DisplayFreescaleLogo_3
// 3049    {
// 3050      if(i == 4)
// 3051      {
// 3052        yStartCoord += 3;
// 3053        xStartCoord -= 9;
// 3054      }
// 3055      else
// 3056      {
// 3057        yStartCoord += 6;
// 3058        xStartCoord -= 6;
??DisplayFreescaleLogo_1:
        SUBS     R5,R5,#+6
        B        ??DisplayFreescaleLogo_4
// 3059      }
??DisplayFreescaleLogo_2:
        MOVS     R4,R7
        SUBS     R5,R5,#+9
        B        ??DisplayFreescaleLogo_4
// 3060    }
// 3061    else
// 3062    {
// 3063     yStartCoord += 3;
??DisplayFreescaleLogo_3:
        MOVS     R4,R7
// 3064     xStartCoord += 4;
        ADDS     R5,R5,#+4
// 3065 
// 3066    }
// 3067   }
??DisplayFreescaleLogo_4:
        ADDS     R6,R6,#+1
        CMP      R6,#+8
        BGE      .+4
        B        ??DisplayFreescaleLogo_0
// 3068  (void)LCD_SetFont(gLCD_VerdanaFont_c);
        MOVS     R0,#+1
        BL       LCD_SetFont
// 3069   yStartCoord -= 20;
        SUBS     R4,R4,#+20
// 3070   xStartCoord += 15;
        ADDS     R5,R5,#+15
// 3071   
// 3072   for(u8Count = 0; u8Count < 9; u8Count++)
        MOVS     R6,R4
        MOVS     R4,#+0
// 3073   {
// 3074     LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
??DisplayFreescaleLogo_5:
        LSLS     R2,R6,#+24
        LSRS     R2,R2,#+24
        LSLS     R1,R5,#+24
        LSRS     R1,R1,#+24
        MOV      R0,SP
        LSLS     R3,R4,#+24
        LSRS     R3,R3,#+24
        LDRB     R0,[R0, R3]
        BL       LCD_WriteCharacter
// 3075     xStartCoord += 6;
        ADDS     R5,R5,#+6
// 3076   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLE      ??DisplayFreescaleLogo_5
// 3077 
// 3078  (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
// 3079   yStartCoord -= 20;
// 3080   xStartCoord += 15;
// 3081 }
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable151:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable151_1:
        DATA32
        DC32     0x80007020
// 3082 #endif
// 3083 
// 3084 
// 3085 #if (gLCDSupported_d)
// 3086   

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3087 void DisplayTestMode(ConfigOption_t u8ConfigOption)
// 3088 {
DisplayTestMode:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
// 3089   uint8_t line = 0;
// 3090   uint8_t i;
// 3091   ClearDisplay();
        BL       ClearDisplay
// 3092   LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");
        LDR      R1,??DataTable153
        MOVS     R0,#+0
        BL       LCD_WriteString_NormalFont
// 3093 
// 3094   for(i = 0; i< 130 ; i++)
        MOVS     R4,#+0
// 3095   {
// 3096     LCD_WritePixel(i,10,1);  
??DisplayTestMode_0:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3097     LCD_WritePixel(i,11,1);  
        MOVS     R2,#+1
        MOVS     R1,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3098   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+130
        BLT      ??DisplayTestMode_0
// 3099   line++;
// 3100   
// 3101 
// 3102   switch(u8ConfigOption)
        LDR      R6,??DataTable153_1
        LDR      R4,??DataTable153_2
        CMP      R5,#+0
        BEQ      ??DisplayTestMode_1
        CMP      R5,#+2
        BEQ      ??DisplayTestMode_2
        BCC      ??DisplayTestMode_3
        B        ??DisplayTestMode_4
// 3103   {
// 3104     case gChannel_c:
// 3105       line++;
// 3106       LCD_WriteString_NormalFont(line," Option: Channel");
??DisplayTestMode_1:
        LDR      R1,??DataTable153_3
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3107       line++;
// 3108       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3109       line++;
// 3110       LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
        LDR      R1,??DataTable153_4
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3111       line++;
// 3112       LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
        LDR      R1,??DataTable153_5
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3113       LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+17]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable153_6
        B.N      ??DisplayTestMode_5
// 3114     break;
// 3115     
// 3116     case gPower_c:
// 3117       line++;
// 3118       LCD_WriteString_NormalFont(line," Option: Power");
??DisplayTestMode_3:
        LDR      R1,??DataTable153_7
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3119       line++;
// 3120       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3121       line++;
// 3122       LCD_WriteString_NormalFont(line,"  SW2 Power Up");
        LDR      R1,??DataTable153_8
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3123       line++;
// 3124       LCD_WriteString_NormalFont(line,"  SW3 Power Down");
        LDR      R1,??DataTable153_9
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3125       LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+18]
        LDR      R0,??DataTable153_10
??DisplayTestMode_5:
        BL       LCD_WriteStringValue
// 3126     break;
        B        ??DisplayTestMode_4
// 3127     
// 3128     case gRxTestMode_c:
// 3129       line++;
// 3130       
// 3131       if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
??DisplayTestMode_2:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+0
        BNE      ??DisplayTestMode_6
// 3132       {
// 3133         LCD_WriteString_NormalFont(line," Option: Test");
        LDR      R1,??DataTable153_11
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3134         line++;
// 3135         LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3136         line++;
// 3137         LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        LDR      R1,??DataTable153_12
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3138         line++;
// 3139         LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        LDR      R1,??DataTable153_13
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3140         line++;
        MOVS     R5,#+6
// 3141         LCD_WriteString_NormalFont(7,"Idle Mode");
        LDR      R1,??DataTable153_14
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 3142       }
// 3143     /* RX options */  
// 3144       /*
// 3145       if(SMAC_CONTINUOUS_RX == u8CurrentMode)
// 3146       {
// 3147         LCD_WriteString_NormalFont(line," Continuous Reception");
// 3148       } 
// 3149       */
// 3150       if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
??DisplayTestMode_6:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+2
        BNE      ??DisplayTestMode_7
// 3151       {
// 3152         LCD_WriteString_NormalFont(line,"PER Test running");
        LDR      R1,??DataTable153_15
        MOVS     R0,R5
        BL       LCD_WriteString_NormalFont
// 3153         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3154         LCD_WriteString_NormalFont(line,"SW4 for PER TX");
        LDR      R1,??DataTable153_16
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3155       }  
// 3156 
// 3157       if(SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??DisplayTestMode_7:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+3
        BNE      ??DisplayTestMode_8
// 3158       {
// 3159         LCD_WriteString_NormalFont(line,"Range Test running");
        LDR      R1,??DataTable153_17
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3160         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3161         LCD_WriteString_NormalFont(line,"SW4 for Range TX");
        LDR      R1,??DataTable153_18
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3162       }  
// 3163       
// 3164     /* TX options */  
// 3165       if(SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode)
??DisplayTestMode_8:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+1
        BNE      ??DisplayTestMode_9
// 3166       {
// 3167         LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
        Nop      
        ADR.N    R1,?_174
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3168       }            
// 3169       if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
??DisplayTestMode_9:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+4
        BNE      ??DisplayTestMode_10
// 3170       {
// 3171         LCD_WriteString_NormalFont(line," Cont TX Mod ");
        ADR.N    R1,?_175
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3172       }              
// 3173       if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
??DisplayTestMode_10:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+5
        BNE      ??DisplayTestMode_4
// 3174       {
// 3175         LCD_WriteString_NormalFont(line," Cont TX No Mod ");
        ADR.N    R1,?_176
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3176       }        
// 3177       
// 3178     break;
// 3179   
// 3180     default:
// 3181     break;
// 3182   }
// 3183 }
??DisplayTestMode_4:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable152:
        DATA32
        DC32     ?_155

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_174:
        DC8 " PRBS9 Cont. TX "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_175:
        DC8 " Cont TX Mod "
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_176:
        DC8 " Cont TX No Mod "
        DC8 0, 0, 0
// 3184 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3185 void ClearDisplay(void)
// 3186 {
ClearDisplay:
        PUSH     {R3-R5,LR}
// 3187   uint8_t u8Line;
// 3188   for(u8Line = 0; u8Line < 9; u8Line++)
        MOVS     R5,#+0
        LDR      R4,??DataTable153_19
// 3189   {
// 3190     LCD_WriteString_NormalFont(u8Line,"                     ");
??ClearDisplay_0:
        MOVS     R1,R4
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3191   }
        ADDS     R5,R5,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+9
        BLT      ??ClearDisplay_0
// 3192 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153:
        DATA32
        DC32     ?_156

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_1:
        DATA32
        DC32     ?_158

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_2:
        DATA32
        DC32     RX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_3:
        DATA32
        DC32     ?_157

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_4:
        DATA32
        DC32     ?_159

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_5:
        DATA32
        DC32     ?_160

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_6:
        DATA32
        DC32     ?_161

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_7:
        DATA32
        DC32     ?_162

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_8:
        DATA32
        DC32     ?_163

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_9:
        DATA32
        DC32     ?_164

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_10:
        DATA32
        DC32     ?_165

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_11:
        DATA32
        DC32     ?_166

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_12:
        DATA32
        DC32     ?_167

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_13:
        DATA32
        DC32     ?_168

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_14:
        DATA32
        DC32     ?_169

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_15:
        DATA32
        DC32     ?_170

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_16:
        DATA32
        DC32     ?_171

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_17:
        DATA32
        DC32     ?_172

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_18:
        DATA32
        DC32     ?_173

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable153_19:
        DATA32
        DC32     ?_177

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 3193 
// 3194 #endif
// 3195 
// 3196 /************************************************************************************
// 3197 *************************************************************************************
// 3198 * Private Debug stuff
// 3199 *************************************************************************************
// 3200 ************************************************************************************/
// 3201 
// 3202 
// 
//    54 bytes in section .bss
//   497 bytes in section .data
// 4 514 bytes in section .rodata
// 7 302 bytes in section .text
// 
// 7 302 bytes of CODE  memory
// 4 514 bytes of CONST memory
//   551 bytes of DATA  memory
//
//Errors: none
//Warnings: none
