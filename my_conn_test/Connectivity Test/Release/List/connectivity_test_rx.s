///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  17:08:24
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\Uni\Wireless Sensors Networks
//        M\Project\WSNBP\my_conn_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDC26.tmp
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
//        "C:\HDDPrograms\IAR Systems\Embedded Workbench
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
        EXTERN CRM_Isr
        EXTERN CRM_RegisterISR
        EXTERN DelayMs
        EXTERN DelayUs
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinFunction
        EXTERN Gpio_TogglePin
        EXTERN ITC_EnableInterrupt
        EXTERN ITC_Init
        EXTERN ITC_SetPriority
        EXTERN IntAssignHandler
        EXTERN IntDisableFIQ
        EXTERN IntDisableIRQ
        EXTERN IntRestoreFIQ
        EXTERN IntRestoreIRQ
        EXTERN KbGpioInit
        EXTERN LCD_ClearDisplay
        EXTERN LCD_DrawIcon
        EXTERN LCD_Init
        EXTERN LCD_SetBacklight
        EXTERN LCD_SetFont
        EXTERN LCD_WriteCharacter
        EXTERN LCD_WritePixel
        EXTERN LCD_WriteStringValue
        EXTERN LCD_WriteString_NormalFont
        EXTERN LED_Init
        EXTERN LED_SetHex
        EXTERN LED_ToggleLed
        EXTERN LED_TurnOffAllLeds
        EXTERN LED_TurnOnAllLeds
        EXTERN MACA_Interrupt
        EXTERN MCPSDataRequest
        EXTERN MLMELinkQuality
        EXTERN MLMEPAOutputAdjust
        EXTERN MLMERXEnableRequest
        EXTERN MLMERadioInit
        EXTERN MLMESetChannelRequest
        EXTERN MLMESetWakeupSource
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
        PUBLIC decrease_config_option_isr
        PUBLIC fine_tune_adjust
        PUBLIC gbDataIndicationFlag
        PUBLIC gu32PerRxEvents
        PUBLIC gu8SCIData
        PUBLIC gu8TestAlreadyStarted
        PUBLIC gu8TestModeEvents
        PUBLIC gu8ValidAckPacket
        PUBLIC gu8ValidRangePacket
        PUBLIC increase_config_option_isr
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
        PUBLIC select_config_option_isr
        PUBLIC select_test_mode_menu
        PUBLIC start_test_isr
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
?_42:
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
?_44:
        DC8 "CONTINUOUS PULSE PRBS9 TRANSMISSION\012"
        DC8 0, 0, 0
        DC8 "CONTINUOUS MODULATED TRANSMISSION\012"
        DATA8
        DC8 0
        DC8 "CONTINUOUS UNMODULATED TRANSMISSION\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_48:
        DC8 "             /"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_49:
        DC8 "    Good:  "

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_50:
        DC8 "    Good: "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_51:
        DC8 "    Good:"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_52:
        DC8 "Max LQI:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_53:
        DC8 "Min LQI:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_54:
        DC8 " SW4 Start Listening "
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_55:
        DC8 "    LQI: -"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_56:
        DC8 "CHANNEL:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_57:
        DC8 "POWER LEVEL:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_58:
        DATA8
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_63:
        DC8 "\015\012\012 Please select an option:  "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_65:
        DC8 "\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_67:
        DC8 "      8 - CHANNEL 19\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_68:
        DC8 "\015      1 - CHANNEL 12"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_69:
        DC8 "      9 - CHANNEL 20\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_71:
        DC8 "      A - CHANNEL 21\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_72:
        DC8 "\015      3 - CHANNEL 14"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_73:
        DC8 "      B - CHANNEL 22\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_75:
        DC8 "      C - CHANNEL 23\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_76:
        DC8 "\015      5 - CHANNEL 16"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_77:
        DC8 "      D - CHANNEL 24\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_79:
        DC8 "      E - CHANNEL 25\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_80:
        DC8 "\015      7 - CHANNEL 18"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_81:
        DC8 "      F - CHANNEL 26\012"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_93:
        DC8 "\015\012    |_____________________|\012\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_94:
        DC8 "\015    1 - Set Bulk 4 pF CAP.\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_95:
        DC8 "\015    2 - Adjust COARSE TUNE\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_97:
        DC8 "\015    p - Previous Menu\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_103:
        DC8 "\015   p - Previous Menu\012"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_108:
        DC8 "\015\012Press any key to start....."
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_109:
        DC8 "PER Transmitting.."
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_110:
        DC8 " PER Listening.."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_111:
        DC8 "    "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_112:
        DC8 "Range Listening.."
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_113:
        DC8 "Range Transmitting.."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_116:
        DC8 "\015  Current Coarse Tune Value: "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_118:
        DC8 "\015  Current Fine Tune Value: "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_125:
        DATA8
        DC8 102, 114, 101, 101, 115, 99, 97, 108, 101, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_126:
        DC8 "   CONNECTIVITY TEST  "
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_127:
        DC8 " Option: Channel"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_128:
        DC8 "  SW1 Change option"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_129:
        DC8 "  SW2 Channel Up"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_130:
        DC8 "  SW3 Channel Down"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_131:
        DC8 " Option: Power"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_132:
        DC8 "  SW2 Power Up"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_133:
        DC8 "  SW3 Power Down"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_134:
        DC8 " Option: Test"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_135:
        DC8 "  SW2 Test Up"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_136:
        DC8 "  SW3 Test Down"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_137:
        DC8 "Idle Mode"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_139:
        DC8 "SW4 for PER TX"
        DATA8
        DC8 0
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
//  372 const uint8_t ku8DoneStr[] = { 'D', 'O', 'N', 'E' };
//  373 
//  374 four_digit_bcd_t c_test_num = {0xF,0xF,0xF,1};
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

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
c_test_num:
        DATA8
        DC8 255, 31, 0, 0
//  423 message_t TX_msg;
//  424 message_t RX_msg;
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
//  425 message_t ACK_msg;
//  426 uint8_t mUARTRxBuffer[SZ_OF_UART_RX];
//  427 ConfigOption_t CurrentOption, ManualModeOption;
CurrentOption:
        DC8 0
//  428 uint8_t u8CurrentCoarseTune;
u8CurrentCoarseTune:
        DC8 0
//  429 uint8_t u8CurrentFineTune;
u8CurrentFineTune:
        DC8 0
//  430 uint8_t u8BulkCapState;
u8BulkCapState:
        DC8 0
//  431 uint16_t waiting_loops;
//  432 bool_t gbDataIndicationFlag;
gbDataIndicationFlag:
        DC8 0
//  433 uint8_t init_flag;
//  434 uint8_t gu8TestModeEvents;
gu8TestModeEvents:
        DC8 0
//  435 uint32_t gu32PerRxEvents;
//  436 uint8_t gu8ValidRangePacket;
gu8ValidRangePacket:
        DC8 0
//  437 uint8_t gu8ValidAckPacket;
gu8ValidAckPacket:
        DC8 0
//  438 uint8_t gu8TestAlreadyStarted;
gu8TestAlreadyStarted:
        DC8 0
mUARTRxBuffer:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
gu32PerRxEvents:
        DATA32
        DC8 0, 0, 0, 0
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
        LDR      R0,??DataTable105
        ADD      R1,SP,#+80
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  457   MSG_INIT(RX_msg, &dataRX, test_mode_rx_cb);
        LDR      R0,??DataTable105_1
        ADD      R2,SP,#+8
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable105_2
        STR      R2,[R0, #+16]
//  458   MSG_INIT(ACK_msg, &dataACK, NULL);
        LDR      R0,??DataTable105_3
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  479 void connectivity_app_init(void)
//  480 {
connectivity_app_init:
        PUSH     {R3-R5,LR}
//  481   set_initial_option_values();
        LDR      R4,??DataTable105_1
        MOVS     R5,#+2
        STRB     R5,[R4, #+20]
        MOVS     R0,#+0
        STRB     R0,[R4, #+21]
        MOVS     R1,#+15
        STRB     R1,[R4, #+22]
        STRB     R0,[R4, #+26]
        STRB     R1,[R4, #+25]
        MOVS     R1,#+8
        STRB     R1,[R4, #+24]
        STRB     R0,[R4, #+27]
        STR      R0,[R4, #+28]
//  482  
//  483   ITC_Init();
        BL       ITC_Init
//  484   IntAssignHandler(gMacaInt_c, (IntHandlerFunc_t)MACA_Interrupt);
        LDR      R1,??DataTable105_4
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
        LDR      R1,??DataTable105_5
        MOVS     R0,#+3
        BL       IntAssignHandler
//  490   ITC_SetPriority(gCrmInt_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       ITC_SetPriority
//  491   ITC_EnableInterrupt(gCrmInt_c);
        MOVS     R0,#+3
        BL       ITC_EnableInterrupt
//  492 #endif
//  493   
//  494   IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr);
        LDR      R1,??DataTable105_6
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
        LDR      R1,??DataTable105_7
        MOVS     R0,#+2
        BL       CRM_RegisterISR
//  500   CRM_RegisterISR(gCrmKB5WuEvent_c,increase_config_option_isr);
        LDR      R1,??DataTable105_8
        MOVS     R0,#+3
        BL       CRM_RegisterISR
//  501   CRM_RegisterISR(gCrmKB6WuEvent_c,decrease_config_option_isr);
        LDR      R1,??DataTable105_9
        MOVS     R0,#+4
        BL       CRM_RegisterISR
//  502   CRM_RegisterISR(gCrmKB7WuEvent_c,start_test_isr);
        LDR      R1,??DataTable105_10
        MOVS     R0,#+5
        BL       CRM_RegisterISR
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
        LDRB     R0,[R4, #+21]
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
        BL       LCD_Init
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
//  532   Uart_getchar(mUARTRxBuffer);
//  533 #endif
//  534 
//  535  #if INTERFACE_TYPE == MANUAL 
//  536 /********************* KBI Interruptions Initialization ***********************/
//  537   MLMESetWakeupSource(gExtWuKBI4En_c | gExtWuKBI5En_c | gExtWuKBI6En_c | gExtWuKBI7En_c, 0x00, 0x0F);
        MOVS     R2,#+15
        MOVS     R1,#+0
        MOVS     R0,#+240
        BL       MLMESetWakeupSource
//  538 /******************************************************************************/
//  539 #endif
//  540 LoadPRBS9();
        BL       LoadPRBS9
//  541 
//  542 #if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
//  543   LCD_SetBacklight(gEnabled_c);
        MOVS     R0,#+1
        BL       LCD_SetBacklight
//  544   LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  545   DisplayFreescaleLogo(0x15,0x10);
        MOVS     R1,#+16
        MOVS     R0,#+21
        BL       DisplayFreescaleLogo
//  546   DelayMs(1000);
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        BL       DelayMs
//  547   ClearDisplay();
        BL       ClearDisplay
//  548   CurrentOption=gRxTestMode_c;
        STRB     R5,[R4, #+23]
//  549   DisplayTestMode(CurrentOption);
        MOVS     R0,#+2
        BL       DisplayTestMode
//  550 #endif
//  551   
//  552  (void)MLMEPAOutputAdjust(u8TestModePower);
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
//  553   MLMETestMode(u8CurrentMode); 
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
//  554   MLMESetChannelRequest(u8TestModeChannel);
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
//  555 
//  556 #if (gLCDSupported_d == FALSE || INTERFACE_TYPE == SERIAL)
//  557     TMR_Init(); 
//  558 #endif
//  559     
//  560 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
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
        LDR      R0,??DataTable105_11
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
        LDR      R0,??DataTable105_1
        STRB     R2,[R0, #+27]
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
??DataTable105:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_2:
        DATA32
        DC32     test_mode_rx_cb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_3:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_4:
        DATA32
        DC32     MACA_Interrupt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_5:
        DATA32
        DC32     CRM_Isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_6:
        DATA32
        DC32     TmrIsr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_7:
        DATA32
        DC32     select_config_option_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_8:
        DATA32
        DC32     increase_config_option_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_9:
        DATA32
        DC32     decrease_config_option_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_10:
        DATA32
        DC32     start_test_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable105_11:
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
        LDR      R4,??DataTable108
        LDR      R5,??DataTable108_1
        LDRB     R0,[R5, #+20]
        CMP      R0,#+2
        BNE      ??process_incoming_msg_0
//  618     {
//  619       u8MsgLen = sizeof(ku8ExpectedString);
        MOVS     R6,#+16
//  620       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[5]);
//  621       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8ExpectedString, u8MsgLen))
        MOVS     R2,#+16
        LDR      R1,??DataTable108_2
        LDR      R0,[R5, #+8]
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
//  628         if(u16SeqNum < u16TotalMsg)
        LDR      R0,[R5, #+8]
        LDRB     R1,[R0, #+5]
        LSLS     R1,R1,#+8
        LDRB     R2,[R0, #+6]
        ORRS     R1,R1,R2
        LDRH     R2,[R4, #+22]
        CMP      R1,R2
        BCS      ??process_incoming_msg_2
//  629         {
//  630           u16TotalMsg = (RX_msg.pu8Buffer->u8Data[1] << 8);
//  631           u16TotalMsg |= RX_msg.pu8Buffer->u8Data[2];    
        LDRB     R1,[R0, #+3]
        LSLS     R1,R1,#+8
        LDRB     R0,[R0, #+4]
        ORRS     R1,R1,R0
        STRH     R1,[R4, #+22]
//  632         }
//  633         
//  634         u16MsgCounter++;
??process_incoming_msg_2:
        LDRH     R0,[R4, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+20]
//  635         
//  636   #if INTERFACE_TYPE == SERIAL        
//  637         Uart_Print("\r\nN:");
//  638         tmp = convert_2_bcd(u16SeqNum);
//  639         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  640         Uart_Print(" L:");
//  641         tmp = convert_2_bcd(u8MsgLen);
//  642         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  643         Uart_Print(" LQI=-");
//  644         (void)MLMELinkQuality(&u8Lqi);
//  645         u8Lqi = (u8Lqi / 3);
//  646         if(100 >= u8Lqi)
//  647         {  
//  648           u8Lqi = 100 - u8Lqi;
//  649         }
//  650         else
//  651         {
//  652           u8Lqi = u8Lqi - 100;
//  653         }
//  654         tmp = convert_2_bcd(u8Lqi);
//  655         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  656         Uart_Print(" CRC=1 Data=");
//  657       
//  658         for(i=5; i<21; i++)
//  659         {
//  660           Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  661           ((RX_msg.pu8Buffer)->u8Data[i]) = 0;
//  662         }
//  663         
//  664    #endif 
//  665        
//  666       #if INTERFACE_TYPE == MANUAL
//  667         
//  668         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+4
        BL       MLMELinkQuality
//  669         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  670         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGT      ??process_incoming_msg_3
//  671         {  
//  672           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_4
//  673         }
//  674         else
//  675         {
//  676           u8Lqi = u8Lqi - 100;
??process_incoming_msg_3:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+100
??process_incoming_msg_4:
        STRB     R0,[R1, #+4]
//  677         }
//  678         
//  679         if(u8Lqi<minLQI) minLQI=u8Lqi;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LDRB     R1,[R4, #+17]
        CMP      R0,R1
        BLS      ??process_incoming_msg_5
        MOVS     R0,R1
??process_incoming_msg_5:
        STRB     R0,[R4, #+17]
//  680        if(u8Lqi>maxLQI) maxLQI=u8Lqi;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LDRB     R1,[R4, #+16]
        CMP      R0,R1
        BCS      ??process_incoming_msg_6
        MOVS     R0,R1
??process_incoming_msg_6:
        STRB     R0,[R4, #+16]
//  681         
//  682 #endif
//  683         
//  684                
//  685         
//  686         
//  687 //  #if INTERFACE_TYPE == MANUAL        
//  688         LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  689 //  #endif      
//  690       }
//  691       
//  692       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  693       if( (TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8DoneStr, 4)) &&
//  694         (0 != u16MsgCounter))
??process_incoming_msg_1:
        MOVS     R2,#+4
        LDR      R1,??DataTable110
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
??process_incoming_msg_0:
        BEQ      .+4
        B        ??process_incoming_msg_7
        LDRH     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      .+4
        B        ??process_incoming_msg_7
//  695       {
//  696 
//  697   #if INTERFACE_TYPE == SERIAL 
//  698         tmp = convert_2_bcd(u16MsgCounter);
//  699         Uart_Print("\r\n\nGood:	");
//  700         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  701         Uart_Print("/");
//  702 
//  703         tmp = convert_2_bcd(u16TotalMsg);
//  704         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  705         Uart_Print("\r\n\nHalt\n");
//  706   #endif 
//  707 
//  708   #if INTERFACE_TYPE == MANUAL
//  709         u16MsgCounter--;
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+20]
//  710         c_test_num = convert_2_bcd(u16MsgCounter);
        MOV      R1,SP
        STRH     R0,[R1, #+6]
        LDR      R0,??DataTable110_1
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        LDR      R0,??DataTable110_2  ;; 0x2710
        CMP      R7,R0
        BGE      ??process_incoming_msg_8
        MOVS     R1,R7
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        CMP      R7,R0
        BLT      ??process_incoming_msg_9
        ADD      R0,SP,#+8
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+28
        LSRS     R0,R0,#+28
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOVS     R1,#+250
        LSLS     R1,R1,#+2        ;; #+1000
        BL       __aeabi_idiv
        LSLS     R1,R0,#+4
        LDR      R0,[SP, #+0]
        ORRS     R1,R1,R0
        ADD      R0,SP,#+8
        STRB     R1,[R0, #+1]
        MOVS     R0,R7
        MOVS     R1,#+250
        LSLS     R1,R1,#+2        ;; #+1000
        BL       __aeabi_idivmod
        MOV      R0,SP
        STRH     R1,[R0, #+6]
??process_incoming_msg_9:
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        CMP      R7,#+100
        BLT      ??process_incoming_msg_10
        ADD      R0,SP,#+8
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+240
        ANDS     R0,R0,R1
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOVS     R1,#+100
        BL       __aeabi_idiv
        LSLS     R1,R0,#+28
        LSRS     R1,R1,#+28
        LDR      R0,[SP, #+0]
        ORRS     R1,R1,R0
        ADD      R0,SP,#+8
        STRB     R1,[R0, #+1]
        MOVS     R0,R7
        MOVS     R1,#+100
        BL       __aeabi_idivmod
        MOV      R0,SP
        STRH     R1,[R0, #+6]
??process_incoming_msg_10:
        MOVS     R7,#+15
        LDRH     R0,[R0, #+6]
        CMP      R0,#+10
        BLT      ??process_incoming_msg_11
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        ANDS     R0,R0,R7
        STR      R0,[SP, #+0]
        MOV      R0,SP
        LDRH     R0,[R0, #+6]
        MOVS     R1,#+10
        BL       __aeabi_idiv
        LSLS     R1,R0,#+4
        LDR      R0,[SP, #+0]
        ORRS     R1,R1,R0
        MOV      R0,SP
        STRB     R1,[R0, #+8]
        LDRH     R0,[R0, #+6]
        MOVS     R1,#+10
        BL       __aeabi_idivmod
??process_incoming_msg_11:
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        MOVS     R2,#+240
        ANDS     R2,R2,R0
        ANDS     R7,R7,R1
        ORRS     R7,R7,R2
        MOV      R0,SP
        STRB     R7,[R0, #+8]
??process_incoming_msg_8:
        LDR      R0,[SP, #+8]
        STR      R0,[R5, #+0]
//  711         
//  712 #if (gLCDSupported_d)      
//  713 
//  714         LCD_WriteString_NormalFont(4,"                     ");
        LDR      R1,??DataTable110_3
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
//  715         LCD_WriteStringValue("             /",(u16TotalMsg),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDRH     R1,[R4, #+22]
        LDR      R0,??DataTable110_4
        BL       LCD_WriteStringValue
//  716 
//  717         if(100 > u16MsgCounter)
        LDRH     R1,[R4, #+20]
        CMP      R1,#+100
        BGE      ??process_incoming_msg_12
//  718         {
//  719           LCD_WriteStringValue("    Good:  ",(u16MsgCounter),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable110_5
        B        ??process_incoming_msg_13
//  720         }
//  721         else if(1000 > u16MsgCounter)
??process_incoming_msg_12:
        MOVS     R2,#+250
        LSLS     R2,R2,#+2        ;; #+1000
        CMP      R1,R2
        BGE      ??process_incoming_msg_14
//  722         {
//  723           LCD_WriteStringValue("    Good: ",(u16MsgCounter),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable110_6
        B        ??process_incoming_msg_13
//  724         }
//  725         else
//  726         {
//  727           LCD_WriteStringValue("    Good:",(u16MsgCounter),4,gLCD_DecFormat_c);
??process_incoming_msg_14:
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable110_7
??process_incoming_msg_13:
        BL       LCD_WriteStringValue
//  728         }  
//  729         LCD_WriteStringValue("Max LQI:",(maxLQI),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        LDRB     R1,[R4, #+16]
        LDR      R0,??DataTable110_8
        BL       LCD_WriteStringValue
//  730         LCD_WriteStringValue("Min LQI:",(minLQI),6,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+6
        LDRB     R1,[R4, #+17]
        LDR      R0,??DataTable110_9
        BL       LCD_WriteStringValue
//  731          DelayMs(1500);
        LDR      R0,??DataTable110_10  ;; 0x5dc
        BL       DelayMs
//  732           maxLQI=0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
//  733           minLQI=255;
        MOVS     R0,#+255
        STRB     R0,[R4, #+17]
//  734          
//  735           
//  736         LCD_WriteString_NormalFont(7," SW4 Start Listening ");
        LDR      R1,??DataTable110_11
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
//  737   #endif         
//  738 
//  739   #endif      
//  740         u16MsgCounter = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+20]
//  741         gu32PerRxEvents |= PER_DONE_MSG_EVNT;
        LDR      R0,[R5, #+44]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        STR      R1,[R5, #+44]
//  742       }
//  743     }
//  744   
//  745     if(SMAC_CONTINUOUS_RX == u8CurrentMode)
??process_incoming_msg_7:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+1
        BNE      ??process_incoming_msg_15
//  746     { 
//  747       u8MsgLen = RX_msg.u8BufSize;
        LDRB     R6,[R5, #+12]
//  748   #if INTERFACE_TYPE == SERIAL
//  749       LED_ToggleLed(LED1);
//  750       Uart_Print("\r\n");
//  751       Uart_Print("Received Packet:");
//  752       for(i=1; i < u8MsgLen ; i++)
//  753       {
//  754         Uart_Print("0x");
//  755         Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  756         (RX_msg.pu8Buffer)->u8Data[i] = 0;
//  757         Uart_Print(" ");
//  758       }
//  759       Uart_Print("\n");
//  760   #endif 
//  761 
//  762 #if INTERFACE_TYPE == MANUAL && gLCDSupported_d
//  763       if(2 > u8State)
        LDRB     R0,[R4, #+18]
        ADDS     R1,R0,#+1
        CMP      R0,#+1
        BGT      ??process_incoming_msg_16
//  764       {
//  765         u8State++;
        STRB     R1,[R4, #+18]
//  766         LCD_DrawIcon(50,4,u8RxIcon1_c);
        MOVS     R0,#+156
        B.N      ??process_incoming_msg_17
//  767       }
//  768       else if(4 > u8State)
??process_incoming_msg_16:
        CMP      R0,#+4
        BGE      ??process_incoming_msg_18
//  769       {
//  770         u8State++;     
        STRB     R1,[R4, #+18]
//  771         LCD_DrawIcon(50,4,u8RxIcon2_c);
        MOVS     R0,#+192
??process_incoming_msg_17:
        LSLS     R0,R0,#+1        ;; #+384
        ADDS     R2,R4,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       LCD_DrawIcon
        B        ??process_incoming_msg_19
//  772       }
//  773       else
//  774       {
//  775         u8State = 0;
??process_incoming_msg_18:
        MOVS     R0,#+0
        STRB     R0,[R4, #+18]
//  776       }
//  777 #endif
//  778         LED_ToggleLed(LED1); 
??process_incoming_msg_19:
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  779     }  
//  780     
//  781     if( SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??process_incoming_msg_15:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_20
//  782     {
//  783       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  784       u8MsgLen = sizeof(u8RangeExpectedString);
        MOVS     R6,#+10
//  785   
//  786   #if SMAC_FEATURE_SECURITY ==  TRUE
//  787       {
//  788         (void)DecipherMsgU8(&(RX_msg.pu8Buffer->u8Data[1]), 
//  789                             (RX_msg.u8BufSize));
//  790       }
//  791   #endif
//  792   
//  793       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
        MOVS     R2,#+10
        LDR      R1,??DataTable110_12
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_20
//  794       {  
//  795         u8Lqi = 0;
        MOVS     R7,#+0
        MOV      R1,SP
        STRB     R7,[R1, #+4]
//  796         gu8ValidRangePacket = TRUE;
        STRB     R0,[R5, #+29]
//  797         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+4
        BL       MLMELinkQuality
//  798         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  799         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGT      ??process_incoming_msg_21
//  800         {  
//  801           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_22
//  802         }
//  803         else
//  804         {
//  805           u8Lqi = u8Lqi - 100;
??process_incoming_msg_21:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+100
??process_incoming_msg_22:
        STRB     R0,[R1, #+4]
//  806         }
//  807    
//  808   #if INTERFACE_TYPE == MANUAL      
//  809         u8LQIAdjusted = adjust_LQI(u8Lqi);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        BL       adjust_LQI
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  810   #endif      
//  811 #if (gLCDSupported_d)
//  812         LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        MOV      R0,SP
        LDRB     R1,[R0, #+4]
        LDR      R0,??DataTable110_13
        BL       LCD_WriteStringValue
//  813           if(u8Lqi <= LQI_LIM4)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+41
        BGE      ??process_incoming_msg_23
//  814         {
//  815           LCD_DrawIcon(80,3,u8LQIIcon4_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+24
        B        ??process_incoming_msg_24
//  816         }
//  817         else if(u8Lqi <= LQI_LIM3)
??process_incoming_msg_23:
        CMP      R0,#+61
        BGE      ??process_incoming_msg_25
//  818         {
//  819           LCD_DrawIcon(80,3,u8LQIIcon3_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+96
        B        ??process_incoming_msg_24
//  820         }
//  821         else if (u8Lqi <= LQI_LIM2)
??process_incoming_msg_25:
        CMP      R0,#+81
        BGE      ??process_incoming_msg_26
//  822         {
//  823           LCD_DrawIcon(80,3,u8LQIIcon2_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+168
        B        ??process_incoming_msg_24
//  824         }
//  825         else
//  826         {
//  827           LCD_DrawIcon(80,3,u8LQIIcon1_c);
??process_incoming_msg_26:
        MOVS     R2,R4
        ADDS     R2,R2,#+240
??process_incoming_msg_24:
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       LCD_DrawIcon
//  828         }
//  829      
//  830 #endif
//  831         ACK_msg.pu8Buffer->u8Data[0] = 'A';
        MOVS     R0,#+65
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+2]
//  832         ACK_msg.pu8Buffer->u8Data[1] = 'C';
        MOVS     R0,#+67
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+3]
//  833         ACK_msg.pu8Buffer->u8Data[2] = 'K';
        MOVS     R0,#+75
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+4]
//  834   
//  835   #if INTERFACE_TYPE == SERIAL
//  836         ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
//  837   #endif      
//  838   
//  839   #if INTERFACE_TYPE == MANUAL
//  840         ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
//  841   #endif      
//  842   
//  843         
//  844   #if SMAC_FEATURE_SECURITY ==  TRUE
//  845         uint8_t fill_counter;
//  846         for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
//  847         {
//  848           ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
//  849         }
//  850   
//  851         if(AES_DEFAULT_MODE != AES_CTR_MODE)
//  852         {
//  853           ACK_msg.u8BufSize = 2*BLOCK_SIZE;
//  854         }
//  855         else
//  856         {
//  857           ACK_msg.u8BufSize = BLOCK_SIZE;
//  858         }
//  859   
//  860         (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
//  861   #else
//  862           ACK_msg.pu8Buffer->u8Data[4] = '\0';
        LDR      R0,[R4, #+4]
        STRB     R7,[R0, #+6]
//  863           ACK_msg.u8BufSize = 5;
        MOVS     R0,#+5
        STRB     R0,[R4, #+8]
//  864   #endif  
//  865         
//  866               
//  867   #if INTERFACE_TYPE == SERIAL
//  868         Uart_Print("\r\n"); 
//  869         Uart_Print(" LQI=-");
//  870         tmp = convert_2_bcd(u8Lqi);
//  871         Uart_PrintHex((uint8_t *)(&tmp),1,0); 
//  872   #else
//  873     DelayMs(2);      
        MOVS     R0,#+2
        BL       DelayMs
//  874   #endif  
//  875   
//  876       
//  877        LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  878   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  879         LEDs_LQI_indication( u8LQIAdjusted); 
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        BL       LEDs_LQI_indication
//  880   #endif 
//  881       }
//  882     } 
//  883    
//  884 if(SMAC_TEST_MODE_RANGE_TX == u8CurrentMode)
??process_incoming_msg_20:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_27
//  885     u8MsgLen = 3;
        MOVS     R6,#+3
//  886     ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
//  887     {
//  888       
//  889   #if SMAC_FEATURE_SECURITY ==  TRUE
//  890     (void)DecipherMsgU8 (&(RX_msg.pu8Buffer->u8Data[0]),(RX_msg.u8BufSize));    
//  891   #endif
//  892     
//  893       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
??process_incoming_msg_27:
        LSLS     R2,R6,#+24
        LSRS     R2,R2,#+24
        ADR.N    R1,ku8AckString
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_28
//  894       {
//  895   #if (gLEDSupported_d  || INTERFACE_TYPE == SERIAL)   
//  896         uint8_t u8Lqi;
//  897         u8Lqi = RX_msg.pu8Buffer->u8Data[4];
        LDR      R0,[R5, #+8]
        LDRB     R4,[R0, #+6]
//  898   #endif
//  899         
//  900         
//  901   #if INTERFACE_TYPE == SERIAL
//  902 
//  903         Uart_Print("\r\n");   
//  904         Uart_Print(" LQI=-");
//  905         tmp = convert_2_bcd(u8Lqi);
//  906         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  907   #endif 
//  908         
//  909   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  910        Led1Toggle(); 
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  911        LEDs_LQI_indication((link_quality_value_t)u8Lqi); 
        MOVS     R0,R4
        BL       LEDs_LQI_indication
//  912 
//  913   #endif      
//  914         gu8ValidAckPacket = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+30]
//  915       }
//  916     }     
//  917        
//  918   }
//  919 }
??process_incoming_msg_28:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ku8AckString:
        DATA8
        DC8 65, 67, 75, 0
//  920 
//  921 #if INTERFACE_TYPE == MANUAL 
//  922 
//  923 /************************************************************************************
//  924 * select_config_option_isr
//  925 *
//  926 * This function is the callback function for the KBI4 interruption, it enables only 
//  927 * a flag to indicate that the KBI interruption occurred and the current option
//  928 * to configure must increase.
//  929 *
//  930 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  931   void select_config_option_isr(void)
//  932   {
select_config_option_isr:
        PUSH     {R7,LR}
//  933     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  934     gu8TestModeEvents |= CHANGE_OPTION_CONFIG_EVENT;
        LDR      R0,??DataTable110_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
//  935   }
        POP      {R0,R3}
        BX       R3               ;; return
//  936 
//  937 /************************************************************************************
//  938 * increase_config_option_isr
//  939 *
//  940 * This function turns on a flag to indicate that the KBI5 interruption occurred, 
//  941 * which is used to increase the current option value.
//  942 *
//  943 ***********************************************************************************/
//  944 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  945  void increase_config_option_isr(void)
//  946   {
increase_config_option_isr:
        PUSH     {R7,LR}
//  947     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  948     gu8TestModeEvents |= TEST_MODE_INCREASE_EVENT;
        LDR      R0,??DataTable110_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+1
        B.N      ?Subroutine2
//  949     gu8TestAlreadyStarted = FALSE;
//  950   }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable108:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable108_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable108_2:
        DATA32
        DC32     ku8ExpectedString
//  951 
//  952 /************************************************************************************
//  953 * decrease_config_option_isr
//  954 *
//  955 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  956 * which is used to decrease the current option value.
//  957 *
//  958 ***********************************************************************************/
//  959 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  960   void decrease_config_option_isr(void)
//  961   {
decrease_config_option_isr:
        PUSH     {R7,LR}
//  962     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  963     gu8TestModeEvents |= TEST_MODE_DECREASE_EVENT;
        LDR      R0,??DataTable110_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+2
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  964     gu8TestAlreadyStarted = FALSE;    
//  965   }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
        MOVS     R1,#+0
        STRB     R1,[R0, #+31]
        POP      {R0,R3}
        BX       R3               ;; return
//  966 
//  967 /************************************************************************************
//  968 * decrease_config_option_isr
//  969 *
//  970 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  971 * which is used to decrease the current option value.
//  972 *
//  973 ***********************************************************************************/
//  974 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  975 void start_test_isr(void)
//  976 {
start_test_isr:
        PUSH     {R7,LR}
//  977   DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  978   gu8TestModeEvents |= TEST_START_EVENT;
        LDR      R0,??DataTable110_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+8
        B.N      ?Subroutine2
//  979   gu8TestAlreadyStarted = FALSE;
//  980 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110:
        DATA32
        DC32     ku8DoneStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_1:
        DATA32
        DC32     ?_58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_2:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_3:
        DATA32
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_4:
        DATA32
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_5:
        DATA32
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_6:
        DATA32
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_7:
        DATA32
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_8:
        DATA32
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_9:
        DATA32
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_10:
        DATA32
        DC32     0x5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_11:
        DATA32
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_12:
        DATA32
        DC32     u8RangeExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_13:
        DATA32
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_14:
        DATA32
        DC32     c_test_num
//  981 
//  982 #endif
//  983 
//  984 /************************************************************************************
//  985 * process_test_mode_app
//  986 *
//  987 * This function process the test mode application, execute the serial or the manual
//  988 * interface code according with the selected interface type in the app_config.h file.
//  989 *
//  990 ************************************************************************************/
//  991 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  992 void process_test_mode_app(void){
process_test_mode_app:
        PUSH     {R3-R7,LR}
//  993   
//  994 #if INTERFACE_TYPE == MANUAL
//  995   FuncReturn_t tmpChange;
//  996   uint8_t u8SafeTimeOut;
//  997 #endif
//  998 
//  999   if (CHANGE_OPTION_CONFIG_EVENT & gu8TestModeEvents)
        LDR      R4,??process_test_mode_app_1
        LDRB     R0,[R4, #+28]
        MOVS     R5,#+0
        LSLS     R1,R0,#+29
        BPL      ??process_test_mode_app_2
// 1000   {
// 1001    clear_event(gu8TestModeEvents,CHANGE_OPTION_CONFIG_EVENT);
        MOVS     R1,#+251
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1002    
// 1003 #if (gLCDSupported_d)
// 1004    if(gRxTestMode_c <= CurrentOption)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BLT      ??process_test_mode_app_3
// 1005     {
// 1006       CurrentOption = gChannel_c;
        MOVS     R0,#+0
        B        ??process_test_mode_app_4
// 1007     }
// 1008     else
// 1009     {
// 1010       CurrentOption++;
??process_test_mode_app_3:
        ADDS     R0,R0,#+1
??process_test_mode_app_4:
        STRB     R0,[R4, #+23]
// 1011     }
// 1012 #else
// 1013     if(MAX_OPTION_CONFIG <= CurrentOption)
// 1014     {
// 1015       CurrentOption = gChannel_c;
// 1016     }
// 1017     else
// 1018     {
// 1019       CurrentOption++;
// 1020     }
// 1021 #endif
// 1022    
// 1023 #if (gLCDSupported_d)   
// 1024    DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1025 #endif
// 1026   }
// 1027 
// 1028   #if INTERFACE_TYPE == SERIAL
// 1029   
// 1030     switch(main_menu())
// 1031     {
// 1032 
// 1033        case ChannelAdjustment:
// 1034           channel_adjust();
// 1035           break;
// 1036         case PowerAdjustment:
// 1037           power_adjust();
// 1038           break;
// 1039         case TestAdjustment:
// 1040           tx_rx_select();
// 1041           break;
// 1042         case ClockAdjustment:  
// 1043           configure_clock_settings();
// 1044           break;
// 1045         case PreviousMenu:
// 1046           break;
// 1047         default:
// 1048           Uart_Print("  Invalid Option!!!\n");
// 1049           break;
// 1050       }
// 1051   #else 
// 1052       
// 1053   #if INTERFACE_TYPE == MANUAL
// 1054       LED_SetHex(CurrentOption);
??process_test_mode_app_2:
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
// 1055       switch(CurrentOption)
        LDRB     R0,[R4, #+28]
        MOVS     R3,#+253
        ANDS     R3,R3,R0
        MOVS     R1,#+2
        ANDS     R1,R1,R0
        MOV      R2,SP
        STRB     R1,[R2, #+0]
        MOVS     R7,#+254
        ANDS     R7,R7,R0
        MOVS     R1,#+3
        LDRB     R2,[R4, #+23]
        CMP      R2,#+6
        BLS      .+4
        B        ??process_test_mode_app_5
        ADR      R6,??process_test_mode_app_0
        LSLS     R2,R2,#+1
        LDRH     R6,[R6, R2]
        ADD      PC,PC,R6
        DATA
??process_test_mode_app_0:
        DC16     0xC,0x94,0xFE,0x2B8
        DC16     0x1C4,0x1FE,0x252
        THUMB
// 1056       {
// 1057         case gChannel_c:
// 1058           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_6:
        TST      R0,R1
        BEQ      ??process_test_mode_app_7
// 1059           {
// 1060             MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1061             DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1062             tmpChange = gFail_c;
// 1063             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1064             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LDRB     R0,[R4, #+28]
        LSLS     R1,R0,#+31
        BPL      ??process_test_mode_app_8
// 1065             {
// 1066               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        MOVS     R1,#+254
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1067               do{
// 1068                 if(MAX_CHAN_NUM <= u8TestModeChannel)
??process_test_mode_app_9:
        LDRB     R0,[R4, #+21]
        CMP      R0,#+15
        BLT      ??process_test_mode_app_10
// 1069                 {
// 1070                   u8TestModeChannel = CHANNEL11;
        MOVS     R0,#+0
        B        ??process_test_mode_app_11
// 1071                 }
// 1072                 else
// 1073                 {
// 1074                   u8TestModeChannel ++;
??process_test_mode_app_10:
        ADDS     R0,R0,#+1
??process_test_mode_app_11:
        STRB     R0,[R4, #+21]
// 1075                 }
// 1076                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1077                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1078               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_12
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLT      ??process_test_mode_app_9
// 1079              
// 1080             }
// 1081             else
// 1082             {
// 1083               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1084               do{
// 1085                 if(CHANNEL11 == u8TestModeChannel)
// 1086                 {
// 1087                   u8TestModeChannel = (channel_num_t)MAX_CHAN_NUM;
// 1088                 }
// 1089                 else
// 1090                 {
// 1091                   u8TestModeChannel --;
// 1092                 }
// 1093                 u8SafeTimeOut++;
// 1094                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1095               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
// 1096             }
// 1097 
// 1098             MLMETestMode(u8CurrentMode);
??process_test_mode_app_12:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1099 #if (gLCDSupported_d)           
// 1100             LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable111
        BL       LCD_WriteStringValue
// 1101 #endif
// 1102             LEDs_Flash(u8TestModeChannel, FLASH_DELAY);
        MOVS     R1,#+200
        LDRB     R0,[R4, #+21]
        B        ??process_test_mode_app_13
??process_test_mode_app_8:
        MOVS     R1,#+253
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
??process_test_mode_app_14:
        LDRB     R0,[R4, #+21]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_15
        MOVS     R0,#+15
        B        ??process_test_mode_app_16
??process_test_mode_app_15:
        SUBS     R0,R0,#+1
??process_test_mode_app_16:
        STRB     R0,[R4, #+21]
        ADDS     R6,R6,#+1
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_12
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLT      ??process_test_mode_app_14
        B        ??process_test_mode_app_12
// 1103  
// 1104           }
// 1105 
// 1106           break;
// 1107        
// 1108         case  gPower_c:
// 1109           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_17:
        TST      R0,R1
??process_test_mode_app_7:
        BNE      .+4
        B        ??process_test_mode_app_5
// 1110           {
// 1111             tmpChange = gFail_c;
// 1112             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1113             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_18
// 1114             {
// 1115               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1116               do{
// 1117                 if(MAX_POWER <= u8TestModePower)
??process_test_mode_app_19:
        LDRB     R0,[R4, #+22]
        CMP      R0,#+16
        BLE      ??process_test_mode_app_20
// 1118                 {
// 1119                   u8TestModePower = MIN_POWER;
        MOVS     R0,#+0
        B        ??process_test_mode_app_21
// 1120                 }
// 1121                 else
// 1122                 { 
// 1123                   u8TestModePower++;
??process_test_mode_app_20:
        ADDS     R0,R0,#+1
??process_test_mode_app_21:
        STRB     R0,[R4, #+22]
// 1124                 }
// 1125                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1126                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1127               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_22
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??process_test_mode_app_19
// 1128             }
// 1129             else
// 1130             {
// 1131               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1132   
// 1133               do{
// 1134                 if(MIN_POWER == u8TestModePower)
// 1135                 {
// 1136                   u8TestModePower = MAX_POWER;
// 1137                 }
// 1138                 else 
// 1139                 {
// 1140                   u8TestModePower--;
// 1141                 }
// 1142                 u8SafeTimeOut++;
// 1143                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1144               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
// 1145             }
// 1146 
// 1147 #if (gLCDSupported_d)          
// 1148             LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
??process_test_mode_app_22:
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable112
        BL       LCD_WriteStringValue
// 1149 #endif            
// 1150             LEDs_Flash(u8TestModePower, FLASH_DELAY);
        MOVS     R1,#+200
        LDRB     R0,[R4, #+22]
        B        ??process_test_mode_app_13
??process_test_mode_app_18:
        STRB     R3,[R4, #+28]
        MOVS     R5,#+255
??process_test_mode_app_23:
        LDRB     R0,[R4, #+22]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_24
        MOVS     R0,#+17
        B        ??process_test_mode_app_25
??process_test_mode_app_24:
        SUBS     R0,R0,#+1
??process_test_mode_app_25:
        STRB     R0,[R4, #+22]
        ADDS     R5,R5,#+1
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_22
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??process_test_mode_app_23
        B        ??process_test_mode_app_22
// 1151           }
// 1152           break;
// 1153           
// 1154         case gRxTestMode_c:
// 1155           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_26:
        LDRB     R1,[R4, #+20]
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_27
// 1156           {
// 1157             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);           
        STRB     R7,[R4, #+28]
// 1158             if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
        CMP      R1,#+5
        BNE      ??process_test_mode_app_28
// 1159             {
// 1160               u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R5,[R4, #+20]
        B        ??process_test_mode_app_29
// 1161             }            
// 1162             else
// 1163             {
// 1164               u8CurrentMode ++;
??process_test_mode_app_28:
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+20]
        B        ??process_test_mode_app_29
// 1165             }
// 1166             MLMETestMode(u8CurrentMode);
// 1167 #if (gLCDSupported_d)            
// 1168             DisplayTestMode(CurrentOption);
// 1169 #endif            
// 1170             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
// 1171           }
// 1172           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_27:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_30
// 1173           {
// 1174             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);           
        STRB     R3,[R4, #+28]
// 1175             if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
        CMP      R1,#+0
        BNE      ??process_test_mode_app_31
// 1176             {
// 1177              u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
        MOVS     R0,#+5
        B        ??process_test_mode_app_32
// 1178             }
// 1179             else
// 1180             {            
// 1181               u8CurrentMode --;
??process_test_mode_app_31:
        SUBS     R0,R1,#+1
??process_test_mode_app_32:
        STRB     R0,[R4, #+20]
// 1182             }
// 1183             MLMETestMode(u8CurrentMode);
??process_test_mode_app_29:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1184 #if (gLCDSupported_d)            
// 1185             DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1186 #endif            
// 1187             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
        MOVS     R1,#+200
        LDRB     R0,[R4, #+20]
        BL       LEDs_Flash
// 1188           }
// 1189           
// 1190           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??process_test_mode_app_30:
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 1191           LED_SetHex(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
        B        ??process_test_mode_app_33
// 1192          
// 1193           while((SMAC_TEST_MODE_PER_RX == u8CurrentMode)  && 
// 1194                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1195                 (gRxTestMode_c == CurrentOption))
??process_test_mode_app_34:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_35
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_36
// 1196           {
// 1197             if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)            
// 1198             {  
// 1199               packet_error_rate_rx_test();
        BL       packet_error_rate_rx_test
// 1200             }
// 1201           }  
??process_test_mode_app_33:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BEQ      ??process_test_mode_app_34
// 1202           
// 1203           while( (SMAC_TEST_MODE_RANGE_RX == u8CurrentMode) && 
// 1204                  (NO_TEST_MODE_EVENT == gu8TestModeEvents)  &&
// 1205                  (gRxTestMode_c == CurrentOption) )
??process_test_mode_app_37:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+3
        BNE      ??process_test_mode_app_38
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_39
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_40
// 1206           {
// 1207             range_rx_test();
        BL       range_rx_test
        B        ??process_test_mode_app_37
// 1208           }           
// 1209           while( (SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode) && 
// 1210                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1211                 (gRxTestMode_c == CurrentOption) )
??process_test_mode_app_41:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_42
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_42
// 1212           {
// 1213             pulse_prbs9_tx();
        BL       pulse_prbs9_tx
// 1214           }
??process_test_mode_app_38:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BEQ      ??process_test_mode_app_41
// 1215 
// 1216           while( (SMAC_TEST_MODE_PER_TX == u8CurrentMode) &&  
// 1217                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1218                 )
??process_test_mode_app_43:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_44
??process_test_mode_app_35:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_36
        CMP      R0,#+8
        BNE      ??process_test_mode_app_42
// 1219           {
// 1220             packet_error_rate_tx_test();
??process_test_mode_app_36:
        BL       packet_error_rate_tx_test
        B        ??process_test_mode_app_43
// 1221           }  
// 1222           
// 1223           while( (SMAC_TEST_MODE_RANGE_TX == u8CurrentMode) &&  
// 1224                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1225                 )
??process_test_mode_app_44:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+3
        BNE      ??process_test_mode_app_42
??process_test_mode_app_39:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_40
        CMP      R0,#+8
??process_test_mode_app_42:
        BEQ      .+4
        B        ??process_test_mode_app_5
// 1226           {
// 1227             range_tx_test();
??process_test_mode_app_40:
        BL       range_tx_test
        B        ??process_test_mode_app_44
// 1228           }           
// 1229           
// 1230           break;
// 1231           
// 1232         case gBulkCap_c:
// 1233           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_45:
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_46
// 1234           {
// 1235             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1236             enable_bulk_cap(); 
        LDR      R0,??DataTable114  ;; 0x80003040
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        LDR      R0,??DataTable114  ;; 0x80003040
        STR      R1,[R0, #+0]
// 1237             u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        STRB     R0,[R4, #+26]
// 1238             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1239           }
// 1240           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_46:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1241           {
// 1242             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1243             disable_bulk_cap(); 
        LDR      R0,??DataTable114  ;; 0x80003040
        LDR      R1,[R0, #+0]
        LDR      R2,??DataTable113  ;; 0xfdffffff
        ANDS     R2,R2,R1
        STR      R2,[R0, #+0]
// 1244             u8BulkCapState = gDisable_c;
        STRB     R5,[R4, #+26]
// 1245             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        MOVS     R1,#+200
        MOVS     R0,#+0
        B        ??process_test_mode_app_13
        DATA
??process_test_mode_app_1:
        DATA32
        DC32     c_test_num
        THUMB
// 1246           }
// 1247           break; 
// 1248             
// 1249         case gCoarseTune_c:
// 1250           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_48:
        MOVS     R1,#+240
        LSLS     R1,R1,#+17       ;; #+31457280
        LDR      R2,??DataTable113_1  ;; 0xfe1fffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_49
// 1251           {
// 1252             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1253             if(MAX_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+15
        BEQ      ??process_test_mode_app_50
// 1254             {
// 1255               u8CurrentCoarseTune = MIN_COARSE_TUNE;
// 1256             }
// 1257             else
// 1258             {
// 1259               u8CurrentCoarseTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_50:
        STRB     R5,[R4, #+24]
// 1260             }
// 1261             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+21
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable114  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1262             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1263           }
// 1264           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_49:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1265           {
// 1266             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1267             if(MIN_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_51
// 1268             {
// 1269               u8CurrentCoarseTune = MAX_COARSE_TUNE;
        MOVS     R0,#+15
        B        ??process_test_mode_app_52
// 1270             }
// 1271             else
// 1272             {
// 1273               u8CurrentCoarseTune--;
??process_test_mode_app_51:
        SUBS     R0,R0,#+1
??process_test_mode_app_52:
        STRB     R0,[R4, #+24]
// 1274             }
// 1275             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R4,[R3, #+0]
        ANDS     R2,R2,R4
        LSLS     R4,R0,#+21
        ANDS     R1,R1,R4
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1276             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1277           }
// 1278           break; 
// 1279           
// 1280         case gFineTune_c:
// 1281           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_53:
        MOVS     R1,#+248
        LSLS     R1,R1,#+13       ;; #+2031616
        LDR      R2,??DataTable114_1  ;; 0xffe0ffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_54
// 1282           {
// 1283             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1284             if(MAX_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+31
        BEQ      ??process_test_mode_app_55
// 1285             {
// 1286               u8CurrentFineTune = MIN_FINE_TUNE;
// 1287             }
// 1288             else
// 1289             {
// 1290               u8CurrentFineTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_55:
        STRB     R5,[R4, #+25]
// 1291             }
// 1292             set_xtal_fine_tune(u8CurrentFineTune);
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+16
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable114  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1293             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
        B        ??process_test_mode_app_56
// 1294             if(0x0F < u8CurrentFineTune)
// 1295             {
// 1296               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1297             }
// 1298           }
// 1299           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_54:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1300           {
// 1301             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1302             if(MIN_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_57
// 1303             {
// 1304               u8CurrentCoarseTune = MAX_FINE_TUNE;
        MOVS     R0,#+31
        STRB     R0,[R4, #+24]
        B        ??process_test_mode_app_58
// 1305             }
// 1306             else
// 1307             {
// 1308               u8CurrentFineTune--;
??process_test_mode_app_57:
        SUBS     R0,R0,#+1
        STRB     R0,[R4, #+25]
// 1309             }
// 1310             set_xtal_fine_tune(u8CurrentFineTune);
??process_test_mode_app_58:
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R5,[R3, #+0]
        ANDS     R2,R2,R5
        LSLS     R5,R0,#+16
        ANDS     R1,R1,R5
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1311             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_56:
        MOVS     R1,#+200
        BL       LEDs_Flash
// 1312             if(0x0F < u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+15
        BLE      ??process_test_mode_app_5
// 1313             {
// 1314               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_47:
        MOVS     R1,#+200
??process_test_mode_app_13:
        BL       LEDs_Flash
// 1315             }
// 1316           }
// 1317           break;  
// 1318           
// 1319         default:
// 1320           break;
// 1321       }
// 1322   #endif
// 1323 #endif
// 1324 
// 1325 }
??process_test_mode_app_5:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111:
        DATA32
        DC32     ?_56
// 1326 
// 1327 /************************************************************************************
// 1328 * adjust_LQI
// 1329 *
// 1330 * The purpose of this function is to adjust the link quality indicator value obtained
// 1331 * from the MLMELinkQuality primitive to only four possible values.
// 1332 *
// 1333 ************************************************************************************/
// 1334 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1335 link_quality_value_t adjust_LQI(uint8_t u8LQI)
// 1336 {
// 1337   link_quality_value_t LQIAdjusted;
// 1338   
// 1339   if(LQI_LIM1 < u8LQI)
adjust_LQI:
        CMP      R0,#+89
        BLT      ??adjust_LQI_0
// 1340   {
// 1341      LQIAdjusted = gFarRange_c;
        MOVS     R0,#+0
        BX       LR
// 1342   }  
// 1343   else
// 1344   {
// 1345     if(LQI_LIM2 < u8LQI)
??adjust_LQI_0:
        CMP      R0,#+81
        BLT      ??adjust_LQI_1
// 1346     {
// 1347        LQIAdjusted = gMediumRange_c;
        MOVS     R0,#+1
        BX       LR
// 1348     }
// 1349     else
// 1350     {
// 1351        if(LQI_LIM3 <= u8LQI)
??adjust_LQI_1:
        CMP      R0,#+60
        BLT      ??adjust_LQI_2
// 1352        {
// 1353          LQIAdjusted = gNearRange_c;
        MOVS     R0,#+2
        BX       LR
// 1354        }
// 1355        else
// 1356        {
// 1357          LQIAdjusted = gVeryNearRange_c;
??adjust_LQI_2:
        MOVS     R0,#+3
// 1358        }
// 1359      }
// 1360   }
// 1361   return LQIAdjusted;
        BX       LR               ;; return
// 1362 }
// 1363 
// 1364 
// 1365 /************************************************************************************
// 1366 * convert_2_bcd function
// 1367 *
// 1368 * This function converts the received data as parameter to bcd format
// 1369 *
// 1370 ************************************************************************************/
// 1371 static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
// 1372 {
// 1373   four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
// 1374   uint16_t tmp;
// 1375   if(10000 > u16Value)
// 1376   {
// 1377     tmp = u16Value;
// 1378     if(1000 <= u16Value)
// 1379     {
// 1380       tmp = u16Value/1000;
// 1381       u16RtrnVal.u8Thousands = tmp;
// 1382       tmp = u16Value%1000;
// 1383       u16Value = tmp;
// 1384     }
// 1385     if(100 <= u16Value)
// 1386     {
// 1387       tmp = u16Value/100;
// 1388       u16RtrnVal.u8Houndreds = tmp;
// 1389       tmp = u16Value%100;
// 1390       u16Value = tmp;
// 1391     }
// 1392     if(10 <= u16Value)
// 1393     {
// 1394       tmp = u16Value/10;
// 1395       u16RtrnVal.u8Tens = tmp;
// 1396       tmp = u16Value%10;
// 1397       u16Value = tmp;
// 1398     }
// 1399     u16RtrnVal.u8Units = tmp;
// 1400   }
// 1401   return u16RtrnVal;
// 1402 }
// 1403 
// 1404 
// 1405 
// 1406 /************************************************************************************
// 1407 * LEDs_Flash
// 1408 *
// 1409 * This function flash the binary number of the received parameter through LEDs.
// 1410 *
// 1411 ************************************************************************************/
// 1412 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1413 void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
// 1414 {
LEDs_Flash:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1415   LED_TurnOffAllLeds();  
        BL       LED_TurnOffAllLeds
// 1416   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1417   LED_SetHex(u8leds_state);
        MOVS     R0,R5
        BL       LED_SetHex
// 1418   DelayMs(msec);  
        MOVS     R0,R4
        BL       DelayMs
// 1419   LED_TurnOffAllLeds(); 
        BL       LED_TurnOffAllLeds
// 1420   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1421 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1422 
// 1423 /************************************************************************************
// 1424 * LoadPRBS9
// 1425 *
// 1426 * The purpose of this function is to load the pseudo random binary sequence order 9 
// 1427 * in a transmission message. The polynomial to transmit is the following:
// 1428 *
// 1429 *
// 1430 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1431 void LoadPRBS9(void)
// 1432 {
LoadPRBS9:
        PUSH     {R4-R7}
// 1433   uint8_t u8c1;                           /* Byte counter */
// 1434   uint8_t u8c2;                           /* Bit counter */
// 1435   uint16_t u16t1;                         /* LFSR */
// 1436   uint16_t u16t2;                         /* LFSR output */
// 1437   uint16_t u16t3;                         /* LFSR feedback tap */
// 1438   uint8_t u8t4;                           /* Assembled transmit byte */
// 1439   
// 1440   u16t1 = 0x01FF;                       /* Initialize the LFSR */
        LDR      R6,??DataTable115  ;; 0x1ff
// 1441   for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
        MOVS     R0,#+0
        MOVS     R1,#+0
// 1442   {
// 1443     u8t4 = 0x00;                        /* Initialize the byte */
??LoadPRBS9_0:
        MOVS     R4,#+0
// 1444     for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
        MOVS     R5,#+0
// 1445     {
// 1446       u16t2 = (u16t1 & 0x0001);       /* LFSR output */
??LoadPRBS9_1:
        MOVS     R2,#+1
        MOVS     R3,R6
        ANDS     R3,R3,R2
// 1447       if (u16t2 == 0x0001)
        BEQ      ??LoadPRBS9_2
// 1448       {
// 1449         u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
        MOVS     R7,R4
        MOVS     R4,#+128
        ORRS     R4,R4,R7
// 1450       }
// 1451       if (u8c2 != 7)
??LoadPRBS9_2:
        LSLS     R7,R5,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+7
        BEQ      ??LoadPRBS9_3
// 1452       {
// 1453         u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
        LSLS     R4,R4,#+24
        LSRS     R4,R4,#+25
// 1454       }
// 1455       
// 1456       u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
??LoadPRBS9_3:
        LSLS     R7,R6,#+24
        LSRS     R7,R7,#+28
        ANDS     R2,R2,R7
// 1457       u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
        LSLS     R7,R6,#+15
        LSRS     R7,R7,#+16
// 1458       if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
        CMP      R3,R2
        BNE      ??LoadPRBS9_4
// 1459       {
// 1460         u16t1 = u16t1 & 0xFEFF;
        LDR      R6,??DataTable115_1  ;; 0xfeff
        ANDS     R6,R6,R7
        B        ??LoadPRBS9_5
// 1461       }
// 1462       else
// 1463       {
// 1464         u16t1 = u16t1 | 0x0100;
??LoadPRBS9_4:
        MOVS     R6,#+128
        LSLS     R6,R6,#+1        ;; #+256
        ORRS     R6,R6,R7
// 1465       }
// 1466       }
??LoadPRBS9_5:
        ADDS     R5,R5,#+1
        LSLS     R2,R5,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+8
        BLT      ??LoadPRBS9_1
// 1467       TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
        LDR      R2,??DataTable116
        LDR      R2,[R2, #+4]
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+24
        ADDS     R2,R2,R3
        STRB     R4,[R2, #+2]
// 1468     } 
        ADDS     R1,R1,#+1
        LSLS     R2,R1,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+64
        BLT      ??LoadPRBS9_0
// 1469   TX_msg.pu8Buffer->u8Data[64] = '\0';
        LDR      R1,??DataTable116
        LDR      R2,[R1, #+4]
        MOVS     R3,#+66
        STRB     R0,[R2, R3]
// 1470   TX_msg.u8BufSize = 65;
        MOVS     R0,#+65
        STRB     R0,[R1, #+8]
// 1471 }
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable112:
        DATA32
        DC32     ?_57
// 1472 
// 1473 /************************************************************************************
// 1474 * main_menu
// 1475 *
// 1476 * This function displays the main menu for the serial interface and waits until the 
// 1477 * user select an option.
// 1478 *
// 1479 ************************************************************************************/
// 1480 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1481 char main_menu(){
main_menu:
        PUSH     {R4,LR}
// 1482   Uart_Print("\r ______________________________________\n");
        LDR      R4,??DataTable116_1
        MOVS     R0,R4
        BL       Uart_Print
// 1483   Uart_Print("\r|                                      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        BL       Uart_Print
// 1484   Uart_Print("\r|    Connectivity Test Interface    |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+88
        BL       Uart_Print
// 1485   Uart_Print("\r|______________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+128
        BL       Uart_Print
// 1486   Uart_Print("\r      1 - CHANGE CHANNEL\n");
        Nop      
        ADR.N    R0,?_59
        BL       Uart_Print
// 1487   Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
        Nop      
        ADR.N    R0,?_60
        BL       Uart_Print
// 1488   Uart_Print("\r      3 - SELECT TEST MODE\n");
        Nop      
        ADR.N    R0,?_61
        BL       Uart_Print
// 1489   Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+172
        BL       Uart_Print
// 1490   Uart_Print("\r      Note: Case sensitive.");
        Nop      
        ADR.N    R0,?_62
        BL       Uart_Print
// 1491   Uart_Print("\r\n\n Please select an option:  ");
        LDR      R0,??DataTable117
        B.N      ?Subroutine1
// 1492   return Uart_getchar(mUARTRxBuffer);
// 1493 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable113:
        DATA32
        DC32     0xfdffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable113_1:
        DATA32
        DC32     0xfe1fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_59:
        DC8 "\015      1 - CHANGE CHANNEL\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_60:
        DC8 "\015      2 - ADJUST OUTPUT POWER\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_61:
        DC8 "\015      3 - SELECT TEST MODE\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_62:
        DC8 "\015      Note: Case sensitive."
        DC8 0, 0, 0
// 1494 
// 1495 /************************************************************************************
// 1496 * channel_menu
// 1497 *
// 1498 * This function displays the possible channels when the channel option is selected 
// 1499 * and waits for a user selection.
// 1500 *
// 1501 ************************************************************************************/
// 1502 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1503 char channel_menu(void){
channel_menu:
        PUSH     {R3-R5,LR}
// 1504   Uart_Print("\r\n     ___________________________________ \n");
        LDR      R4,??DataTable117_1
        MOVS     R0,R4
        BL       Uart_Print
// 1505   Uart_Print("\r    |                                   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+48
        BL       Uart_Print
// 1506   Uart_Print("\r    |      Channel Adjustment Menu      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+92
        BL       Uart_Print
// 1507   Uart_Print("\r    |___________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+136
        BL       Uart_Print
// 1508   Uart_Print("\r    Current Channel: ");
        Nop      
        ADR.N    R0,?_64
        BL       Uart_Print
// 1509   PrintChannel(u8TestModeChannel);
        LDR      R5,??DataTable117_2
        LDRB     R0,[R5, #+21]
        BL       PrintChannel
// 1510   Uart_Print("\n");
        ADR      R0,??DataTable117_3  ;; "\n"
        BL       Uart_Print
// 1511   Uart_Print("\r      0 - CHANNEL 11");
        ADR.N    R0,?_66
        BL       Uart_Print
// 1512   Uart_Print("      8 - CHANNEL 19\n");
        LDR      R0,??DataTable117_4
        BL       Uart_Print
// 1513   Uart_Print("\r      1 - CHANNEL 12");
        LDR      R0,??DataTable117_5
        BL       Uart_Print
// 1514   Uart_Print("      9 - CHANNEL 20\n");
        LDR      R0,??DataTable117_6
        BL       Uart_Print
// 1515   Uart_Print("\r      2 - CHANNEL 13");
        ADR.N    R0,?_70
        BL       Uart_Print
// 1516   Uart_Print("      A - CHANNEL 21\n");
        LDR      R0,??DataTable117_7
        BL       Uart_Print
// 1517   Uart_Print("\r      3 - CHANNEL 14");
        LDR      R0,??DataTable117_8
        BL       Uart_Print
// 1518   Uart_Print("      B - CHANNEL 22\n");
        LDR      R0,??DataTable117_9
        BL       Uart_Print
// 1519   Uart_Print("\r      4 - CHANNEL 15");
        ADR.N    R0,?_74
        BL       Uart_Print
// 1520   Uart_Print("      C - CHANNEL 23\n");
        LDR      R0,??DataTable118
        BL       Uart_Print
// 1521   Uart_Print("\r      5 - CHANNEL 16");
        LDR      R0,??DataTable118_1
        BL       Uart_Print
// 1522   Uart_Print("      D - CHANNEL 24\n");
        LDR      R0,??DataTable118_2
        BL       Uart_Print
// 1523   Uart_Print("\r      6 - CHANNEL 17");
        ADR.N    R0,?_78
        BL       Uart_Print
// 1524   Uart_Print("      E - CHANNEL 25\n");  
        LDR      R0,??DataTable118_3
        BL       Uart_Print
// 1525   Uart_Print("\r      7 - CHANNEL 18");
        LDR      R0,??DataTable118_4
        BL       Uart_Print
// 1526   if(gPowerLevelLock_c == FALSE)
// 1527   {
// 1528     Uart_Print("      F - CHANNEL 26\n");      
        LDR      R0,??DataTable119
        B.N      ??Subroutine0_0
// 1529   }
// 1530   else
// 1531   {
// 1532     Uart_Print("\n");
// 1533   }
// 1534   Uart_Print("\r      p - Previous Menu\n");      
// 1535   Uart_Print("\r\n    Please select an option:  ");
// 1536   return Uart_getchar(mUARTRxBuffer);
// 1537 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable114:
        DATA32
        DC32     0x80003040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable114_1:
        DATA32
        DC32     0xffe0ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_64:
        DC8 "\015    Current Channel: "
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_66:
        DC8 "\015      0 - CHANNEL 11"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_70:
        DC8 "\015      2 - CHANNEL 13"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_74:
        DC8 "\015      4 - CHANNEL 15"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_78:
        DC8 "\015      6 - CHANNEL 17"
        DATA16
        DC8 0, 0
// 1538 
// 1539 
// 1540 /************************************************************************************
// 1541 * test_mode_rx_menu
// 1542 *
// 1543 * This function displays the test mode options when the SELECT TEST MODE is 
// 1544 * selected.
// 1545 *
// 1546 ************************************************************************************/
// 1547 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1548 char test_mode_rx_menu(void){
test_mode_rx_menu:
        PUSH     {R3-R5,LR}
// 1549   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,R4
        BL       Uart_Print
// 1550   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1551   Uart_Print("\r    |   Reception Tests Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1552   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1553   Uart_Print("\r    Current Test Mode: ");
        LDR      R0,??DataTable119_2
        BL       Uart_Print
// 1554   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable117_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1555   Uart_Print("\r\n      I - IDLE\n");
        LDR      R0,??DataTable119_3
        BL       Uart_Print
// 1556   Uart_Print("\r      R - RECEPTION\n");
        Nop      
        ADR.N    R0,?_85
        BL       Uart_Print
// 1557   Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+144
        BL       Uart_Print
// 1558   Uart_Print("\r      r - RANGE TEST RECEIVER\n");
        Nop      
        ADR.N    R0,?_86
        B.N      ??Subroutine0_0
// 1559   Uart_Print("\r      p - Previous Menu\n");      
// 1560   Uart_Print("\r\n\n    Please select an option:  ");
// 1561   return Uart_getchar(mUARTRxBuffer);
// 1562 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115:
        DATA32
        DC32     0x1ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115_1:
        DATA32
        DC32     0xfeff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_85:
        DC8 "\015      R - RECEPTION\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_86:
        DC8 "\015      r - RANGE TEST RECEIVER\012"
// 1563 
// 1564 /************************************************************************************
// 1565 * test_mode_tx_menu
// 1566 *
// 1567 * This function displays the test mode options when the SELECT TEST MODE is 
// 1568 * selected.
// 1569 *
// 1570 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1571 char test_mode_tx_menu(void){
test_mode_tx_menu:
        PUSH     {R3-R5,LR}
// 1572   Uart_Print("\r\n     _____________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,R4
        ADDS     R0,R0,#+220
        BL       Uart_Print
// 1573   Uart_Print("\r    |                             |\n");
        MOVS     R0,#+130
        LSLS     R0,R0,#+1        ;; #+260
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1574   Uart_Print("\r    |   Transmission Tests Menu   |\n");
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1575   Uart_Print("\r    |_____________________________|\n\n");  
        MOVS     R0,#+170
        LSLS     R0,R0,#+1        ;; #+340
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1576   Uart_Print("\r    Current Test Mode: ");
        Nop      
        ADR.N    R0,?_83
        BL       Uart_Print
// 1577   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable117_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1578   Uart_Print("\r\n      I - IDLE\n");
        Nop      
        ADR.N    R0,?_84
        BL       Uart_Print
// 1579   Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
        MOVS     R0,#+190
        LSLS     R0,R0,#+1        ;; #+380
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1580   Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
        MOVS     R0,#+208
        LSLS     R0,R0,#+1        ;; #+416
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1581   Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
        MOVS     R0,#+230
        LSLS     R0,R0,#+1        ;; #+460
        B.N      ?Subroutine0
// 1582   Uart_Print("\r      p - Previous Menu\n");      
// 1583   Uart_Print("\r\n\n    Please select an option:  ");
// 1584   return Uart_getchar(mUARTRxBuffer);
// 1585 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116_1:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_83:
        DC8 "\015    Current Test Mode: "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_84:
        DC8 "\015\012      I - IDLE\012"
        DATA16
        DC8 0, 0
// 1586 
// 1587 
// 1588 /************************************************************************************
// 1589 * select_test_mode_menu
// 1590 *
// 1591 * This function displays the option to select between TX and RX mode
// 1592 *
// 1593 ************************************************************************************/
// 1594 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1595 char select_test_mode_menu(void){
select_test_mode_menu:
        PUSH     {R4,LR}
// 1596   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,R4
        BL       Uart_Print
// 1597   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1598   Uart_Print("\r    |   TX / RX Menu   |\n");
        Nop      
        ADR.N    R0,?_87
        BL       Uart_Print
// 1599   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1600   Uart_Print("\r      R - RECEIVER MODE \n");
        Nop      
        ADR.N    R0,?_88
        BL       Uart_Print
// 1601   Uart_Print("\r      T - TRANSMITTER MODE \n");
        Nop      
        ADR.N    R0,?_89
        BL       Uart_Print
// 1602   Uart_Print("\r      p - Previous Menu\n");      
        LDR      R0,??DataTable120
        BL       Uart_Print
// 1603   Uart_Print("\r\n\n    Please select an option:  ");
        MOVS     R0,R4
        ADDS     R0,R0,#+184
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1604   return Uart_getchar(mUARTRxBuffer);
// 1605 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        BL       Uart_Print
        LDR      R0,??DataTable121
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
??DataTable117:
        DATA32
        DC32     ?_63

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_1:
        DATA32
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_2:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_3:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_4:
        DATA32
        DC32     ?_67

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_5:
        DATA32
        DC32     ?_68

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_6:
        DATA32
        DC32     ?_69

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_7:
        DATA32
        DC32     ?_71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_8:
        DATA32
        DC32     ?_72

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_9:
        DATA32
        DC32     ?_73

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_87:
        DC8 "\015    |   TX / RX Menu   |\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_88:
        DC8 "\015      R - RECEIVER MODE \012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_89:
        DC8 "\015      T - TRANSMITTER MODE \012"
        DATA16
        DC8 0, 0
// 1606 
// 1607 /************************************************************************************
// 1608 * test_transmission_menu
// 1609 *
// 1610 * This function displays the transmissions options when the transmission option 
// 1611 * is selected in the main menu.
// 1612 *
// 1613 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1614 char test_transmission_menu(void)
// 1615 {
test_transmission_menu:
        PUSH     {R3-R5,LR}
// 1616   Uart_Print("\r\n     ______________________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,#+248
        LSLS     R0,R0,#+1        ;; #+496
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1617   Uart_Print("\r    |                                      |\n");
        MOVS     R0,#+136
        LSLS     R0,R0,#+2        ;; #+544
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1618   Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
        MOVS     R0,#+148
        LSLS     R0,R0,#+2        ;; #+592
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1619   Uart_Print("\r    |______________________________________|\n\n");  
        MOVS     R0,#+160
        LSLS     R0,R0,#+2        ;; #+640
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1620   Uart_Print("\r    Current Transmission Test: ");
        MOVS     R0,#+172
        LSLS     R0,R0,#+2        ;; #+688
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1621   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable122
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1622   Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
        MOVS     R0,#+181
        LSLS     R0,R0,#+2        ;; #+724
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1623   Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
        MOVS     R0,#+197
        LSLS     R0,R0,#+2        ;; #+788
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1624   Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
        MOVS     R0,#+206
        LSLS     R0,R0,#+2        ;; #+824
        Nop      
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1625   Uart_Print("\r      p - Previous Menu\n");      
// 1626   Uart_Print("\r\n\n    Please select an option:  ");
// 1627   return Uart_getchar(mUARTRxBuffer);
// 1628 }

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
?Subroutine0:
        ADDS     R0,R4,R0
??Subroutine0_0:
        BL       Uart_Print
        Nop      
        ADR.N    R0,?_82
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
??DataTable118:
        DATA32
        DC32     ?_75

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_1:
        DATA32
        DC32     ?_76

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_2:
        DATA32
        DC32     ?_77

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_3:
        DATA32
        DC32     ?_79

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_4:
        DATA32
        DC32     ?_80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_82:
        DC8 "\015      p - Previous Menu\012"
        DATA16
        DC8 0, 0
// 1629 
// 1630 
// 1631 /************************************************************************************
// 1632 * clock_settings_menu
// 1633 *
// 1634 * This function displays a menu with the clock settings options and waits for a 
// 1635 * user selection.
// 1636 *
// 1637 ************************************************************************************/
// 1638 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1639 char clock_setting_menu(void)
// 1640 {
clock_setting_menu:
        PUSH     {R7,LR}
// 1641   Uart_Print("\r\n     _____________________");
        Nop      
        ADR.N    R0,?_90
        BL       Uart_Print
// 1642   Uart_Print("\r\n    |                     |");
        Nop      
        ADR.N    R0,?_91
        BL       Uart_Print
// 1643   Uart_Print("\r\n    | Clock Settings Menu |");
        Nop      
        ADR.N    R0,?_92
        BL       Uart_Print
// 1644   Uart_Print("\r\n    |_____________________|\n\n");  
        LDR      R0,??DataTable122_1
        BL       Uart_Print
// 1645   Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
        LDR      R0,??DataTable122_2
        BL       Uart_Print
// 1646   Uart_Print("\r    2 - Adjust COARSE TUNE\n");
        LDR      R0,??DataTable122_3
        BL       Uart_Print
// 1647   Uart_Print("\r    3 - Adjust FINE TUNE \n");
        ADR.N    R0,?_96
        BL       Uart_Print
// 1648   Uart_Print("\r    p - Previous Menu\n");
        LDR      R0,??DataTable122_4
        BL       Uart_Print
// 1649   Uart_Print("\r\n    Please select an option:  ");
        LDR      R0,??DataTable122_5
        BL       Uart_Print
// 1650   return Uart_getchar(mUARTRxBuffer);
        LDR      R0,??DataTable121
        BL       Uart_getchar
        POP      {R1,R3}
        BX       R3               ;; return
// 1651 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119:
        DATA32
        DC32     ?_81

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_1:
        DATA32
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_2:
        DATA32
        DC32     ?_83

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_3:
        DATA32
        DC32     ?_84

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_90:
        DC8 "\015\012     _____________________"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_91:
        DC8 "\015\012    |                     |"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_92:
        DC8 "\015\012    | Clock Settings Menu |"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_96:
        DC8 "\015    3 - Adjust FINE TUNE \012"
// 1652 
// 1653 /************************************************************************************
// 1654 * bulk_cap_menu
// 1655 *
// 1656 * The bulk_cap_menu shows the two possible bulk capacitor states and waits until
// 1657 * the user selects an option.
// 1658 *
// 1659 ************************************************************************************/
// 1660 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1661 char bulk_cap_menu(void)
// 1662 {
bulk_cap_menu:
        PUSH     {R4,LR}
// 1663   Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
        Nop      
        ADR.N    R0,?_98
        BL       Uart_Print
// 1664   Uart_Print("\r\n   Current Bulk Capacitor State:");
        LDR      R0,??DataTable123
        BL       Uart_Print
// 1665   if(gEnable_c == u8BulkCapState){
        LDR      R4,??DataTable122
        LDRB     R0,[R4, #+26]
        CMP      R0,#+1
        BNE      ??bulk_cap_menu_0
// 1666     Uart_Print("  Enable\n\n");
        ADR.N    R0,?_99
        B        ??bulk_cap_menu_1
// 1667   }
// 1668   else{
// 1669     Uart_Print("  Disable\n\n");    
??bulk_cap_menu_0:
        ADR.N    R0,?_100
??bulk_cap_menu_1:
        BL       Uart_Print
// 1670   }
// 1671   Uart_Print("\r   E - Enable Capacitor.\n");
        Nop      
        ADR.N    R0,?_101
        BL       Uart_Print
// 1672   Uart_Print("\r   D - Disable Capacitor\n");
        Nop      
        ADR.N    R0,?_102
        BL       Uart_Print
// 1673   Uart_Print("\r   p - Previous Menu\n");
        LDR      R0,??DataTable125
        BL       Uart_Print
// 1674   Uart_Print("\r\nPlease select an option:  ");
        ADR.N    R0,?_104
        BL       Uart_Print
// 1675   return Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        B.N      ??Subroutine3_0
// 1676 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable120:
        DATA32
        DC32     ?_82

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_98:
        DC8 "\015\012\012Bulk 4 Capacitor Menu\012\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_99:
        DC8 "  Enable\012\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_100:
        DC8 "  Disable\012\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_101:
        DC8 "\015   E - Enable Capacitor.\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_102:
        DC8 "\015   D - Disable Capacitor\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_104:
        DC8 "\015\012Please select an option:  "
        DC8 0, 0, 0
// 1677 
// 1678 /************************************************************************************
// 1679 * channel_adjust
// 1680 *
// 1681 * This function updates the channel with the value selected by the user.
// 1682 *
// 1683 ************************************************************************************/
// 1684 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1685 void channel_adjust(void){
channel_adjust:
        PUSH     {R3-R7,LR}
// 1686   char option, hexOption;
// 1687   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable122
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable126
// 1688   do{
// 1689     option = channel_menu();
??channel_adjust_0:
        BL       channel_menu
        MOVS     R5,R0
// 1690     hexOption = AsciitoHex(option);
        BL       AsciitoHex
        MOVS     R6,R0
// 1691     
// 1692     if(PreviousMenu != hexOption)
        CMP      R0,#+112
        BEQ      ??channel_adjust_1
// 1693     {
// 1694       MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1695       DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1696       if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
        MOVS     R0,R6
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BNE      ??channel_adjust_2
// 1697       {  
// 1698         u8TestModeChannel = (channel_num_t)hexOption;
        STRB     R6,[R4, #+21]
        B        ??channel_adjust_3
// 1699       }
// 1700       else
// 1701       {
// 1702         Uart_Print("  Invalid Option!!!");  
??channel_adjust_2:
        MOVS     R0,R7
        BL       Uart_Print
// 1703       }
// 1704       MLMETestMode(u8CurrentMode);
??channel_adjust_3:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1705       
// 1706     }
// 1707   }while(option != PreviousMenu);
??channel_adjust_1:
        CMP      R5,#+112
        BNE      ??channel_adjust_0
// 1708 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121:
        DATA32
        DC32     c_test_num+0x20
// 1709 
// 1710 /************************************************************************************
// 1711 * power_adjust
// 1712 *
// 1713 * This function change the power value to the power selected by the user in the
// 1714 * serial interface
// 1715 *
// 1716 ************************************************************************************/
// 1717 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1718 void power_adjust(void){
power_adjust:
        PUSH     {R4-R6,LR}
// 1719   uint8_t u8TempPower;
// 1720   CurrentOption = gPower_c;
        LDR      R5,??DataTable122
        MOVS     R0,#+1
        STRB     R0,[R5, #+23]
// 1721   Uart_Print("\r\n     ___________________________\n");
        LDR      R4,??DataTable127
        MOVS     R0,R4
        BL       Uart_Print
// 1722   Uart_Print("\r    |                           |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1723   Uart_Print("\r    |   Power Adjustment Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1724   Uart_Print("\r    |___________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1725   Uart_Print("\r    Current Power: ");
        ADR.N    R0,?_106
        BL       Uart_Print
// 1726   Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R5
        ADDS     R0,R0,#+22
        BL       Uart_PrintHex
// 1727 
// 1728   if(gPowerLevelLock_c)
// 1729   {
// 1730     Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
// 1731   }
// 1732   else
// 1733   {
// 1734     Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
        MOVS     R0,R4
        ADDS     R0,R0,#+148
        BL       Uart_Print
// 1735   } 
// 1736   
// 1737   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1738   
// 1739   u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 1740     
// 1741   u8TempPower = (u8TempPower << 4);
// 1742   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1743   u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
        LSLS     R6,R6,#+4
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        ORRS     R0,R0,R6
        MOVS     R6,R0
// 1744   
// 1745   
// 1746   if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BNE      ??power_adjust_0
// 1747   {
// 1748     u8TestModePower = u8TempPower;
        STRB     R6,[R5, #+22]
// 1749     Uart_Print("\n");
        ADR      R0,??DataTable127_1  ;; "\n"
        B        ??power_adjust_1
// 1750   }
// 1751   else
// 1752   {
// 1753     Uart_Print("\r\n    Incorrect value!!!");  
??power_adjust_0:
        ADR.N    R0,?_107
        BL       Uart_Print
// 1754     Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
        MOVS     R0,R4
        ADDS     R0,R0,#+224
        BL       Uart_Print
// 1755     Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
        MOVS     R0,#+144
        LSLS     R0,R0,#+1        ;; #+288
        ADDS     R0,R4,R0
??power_adjust_1:
        BL       Uart_Print
// 1756   }
// 1757 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_1:
        DATA32
        DC32     ?_93

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_2:
        DATA32
        DC32     ?_94

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_3:
        DATA32
        DC32     ?_95

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_4:
        DATA32
        DC32     ?_97

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122_5:
        DATA32
        DC32     ?_5+0xB8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_106:
        DC8 "\015    Current Power: "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_107:
        DC8 "\015\012    Incorrect value!!!"
        DC8 0, 0, 0
// 1758 
// 1759 /************************************************************************************
// 1760 * test_mode_rx_adjust
// 1761 *
// 1762 * In this function the current test mode is adjusted to the new value selected by the 
// 1763 * user in the serial interface.
// 1764 *
// 1765 ************************************************************************************/
// 1766 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1767 void test_mode_rx_adjust(void)
// 1768 {
test_mode_rx_adjust:
        PUSH     {R3-R7,LR}
// 1769   char option;
// 1770   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable127_2
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable127_3
        MOVS     R5,#+0
// 1771   do{
// 1772     option = test_mode_rx_menu();
??test_mode_rx_adjust_0:
        BL       test_mode_rx_menu
        MOVS     R6,R0
// 1773     switch(option)
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
// 1774     {
// 1775       case IdleTest:
// 1776         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_rx_adjust_1:
        STRB     R5,[R4, #+20]
// 1777         MLMETestMode(u8CurrentMode);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1778         break;
        B        ??test_mode_rx_adjust_4
// 1779       case ReceptionTest:
// 1780         Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
??test_mode_rx_adjust_3:
        MOVS     R0,R7
        BL       Uart_Print
// 1781         Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable127_4
        BL       Uart_Print
// 1782         Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1783         u8CurrentMode = SMAC_CONTINUOUS_RX;
        MOVS     R0,#+1
        STRB     R0,[R4, #+20]
// 1784         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1785         MLMERXEnableRequest(&RX_msg, 0x0000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1786         do
// 1787         {
// 1788             (void)process_radio_msg();
??test_mode_rx_adjust_7:
        BL       process_radio_msg
// 1789             if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??test_mode_rx_adjust_8
// 1790             {
// 1791               gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+27]
// 1792               process_incoming_msg();
        BL       process_incoming_msg
// 1793             }
// 1794           
// 1795 #if OTAP_ENABLED == TRUE
// 1796           if(gbOtapExecute)
// 1797           {
// 1798             OTAP_execute();        
// 1799           }
// 1800           else
// 1801 #endif
// 1802           {          
// 1803             if(is_rx_msg_final_state(RX_msg))
??test_mode_rx_adjust_8:
        LDRB     R0,[R4, #+4]
        LSRS     R0,R0,#+3
        CMP      R0,#+5
        BEQ      ??test_mode_rx_adjust_9
        CMP      R0,#+6
        BEQ      ??test_mode_rx_adjust_9
        CMP      R0,#+8
        BEQ      ??test_mode_rx_adjust_9
        CMP      R0,#+4
        BNE      ??test_mode_rx_adjust_10
// 1804             {
// 1805               RX_msg.u8BufSize = RX_SIZE;
??test_mode_rx_adjust_9:
        MOVS     R0,#+70
        STRB     R0,[R4, #+12]
// 1806               MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1807             }
// 1808           }
// 1809           Uart_Poll(mUARTRxBuffer);
??test_mode_rx_adjust_10:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 1810           }
// 1811         while (mUARTRxBuffer[0] != Exit);   
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??test_mode_rx_adjust_7
        B        ??test_mode_rx_adjust_4
// 1812         break;
// 1813         
// 1814       case PacketErrorRateTest:
// 1815         packet_error_rate_rx_test();
??test_mode_rx_adjust_2:
        BL       packet_error_rate_rx_test
// 1816         break;
        B        ??test_mode_rx_adjust_4
// 1817       case RangeTest:
// 1818         range_rx_test();
??test_mode_rx_adjust_5:
        BL       range_rx_test
// 1819         break;
        B        ??test_mode_rx_adjust_4
// 1820       case PreviousMenu:
// 1821         break; 
// 1822         
// 1823       default:
// 1824         Uart_Print("  Invalid Option!!!");
??test_mode_rx_adjust_6:
        LDR      R0,??DataTable126
        BL       Uart_Print
// 1825         break;
// 1826     }
// 1827   }while(option != PreviousMenu);
??test_mode_rx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_rx_adjust_0
// 1828 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123:
        DATA32
        DC32     ?_31
// 1829 
// 1830 /************************************************************************************
// 1831 * test_mode_tx_adjust
// 1832 *
// 1833 * In this function the current test mode is adjusted to the new value selected by the 
// 1834 * user in the serial interface.
// 1835 *
// 1836 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1837 void test_mode_tx_adjust(void){
test_mode_tx_adjust:
        PUSH     {R4-R6,LR}
// 1838   char option;
// 1839   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable127_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable126
// 1840   do{
// 1841     option = test_mode_tx_menu();
??test_mode_tx_adjust_0:
        BL       test_mode_tx_menu
        MOVS     R6,R0
// 1842     switch(option)
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
// 1843     {
// 1844       case IdleTest:
// 1845         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_tx_adjust_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
// 1846         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1847         break;
        B        ??test_mode_tx_adjust_4
// 1848       case TransmissionTest:  
// 1849         cont_transmission_test_adjust();
??test_mode_tx_adjust_3:
        BL       cont_transmission_test_adjust
// 1850         break;
        B        ??test_mode_tx_adjust_4
// 1851       case PacketErrorRateTest:
// 1852         packet_error_rate_tx_test();
??test_mode_tx_adjust_2:
        BL       packet_error_rate_tx_test
// 1853         break;
        B        ??test_mode_tx_adjust_4
// 1854       case RangeTest:
// 1855         range_tx_test();
??test_mode_tx_adjust_5:
        BL       range_tx_test
// 1856         break;
        B        ??test_mode_tx_adjust_4
// 1857       case PreviousMenu:
// 1858         break;      
// 1859       default:
// 1860         Uart_Print("  Invalid Option!!!");
??test_mode_tx_adjust_6:
        MOVS     R0,R5
        BL       Uart_Print
// 1861         break;
// 1862     }
// 1863   }while(option != PreviousMenu);
??test_mode_tx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_tx_adjust_0
// 1864 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1865 
// 1866 
// 1867 /************************************************************************************
// 1868 * tx_rx_select
// 1869 *
// 1870 * This function select between transmitter and receiver mode
// 1871 *
// 1872 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1873 void tx_rx_select(void)
// 1874 {
tx_rx_select:
        PUSH     {R3-R5,LR}
        LDR      R4,??DataTable126
// 1875   char option;
// 1876   do
// 1877   {
// 1878     option = select_test_mode_menu();
??tx_rx_select_0:
        BL       select_test_mode_menu
        MOVS     R5,R0
// 1879     switch(option)
        CMP      R0,#+82
        BEQ      ??tx_rx_select_1
        CMP      R0,#+84
        BNE      ??tx_rx_select_2
// 1880     {
// 1881       case TransmissionTest:
// 1882         test_mode_tx_adjust();   
        BL       test_mode_tx_adjust
// 1883         break;
        B        ??tx_rx_select_3
// 1884         
// 1885       case ReceptionTest:
// 1886         test_mode_rx_adjust();     
??tx_rx_select_1:
        BL       test_mode_rx_adjust
// 1887         break;          
        B        ??tx_rx_select_3
// 1888         
// 1889       default:
// 1890         Uart_Print("  Invalid Option!!!");
??tx_rx_select_2:
        MOVS     R0,R4
        BL       Uart_Print
// 1891         break;
// 1892     }
// 1893   }while(option != PreviousMenu);
??tx_rx_select_3:
        CMP      R5,#+112
        BNE      ??tx_rx_select_0
// 1894 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable125:
        DATA32
        DC32     ?_103
// 1895 
// 1896 
// 1897 
// 1898 /************************************************************************************
// 1899 * cont_transmission_test_adjust
// 1900 *
// 1901 * This function execute a specific transmission mode: modulated, unmodulated or 
// 1902 * the pseudo random binary sequence.
// 1903 *
// 1904 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1905 void cont_transmission_test_adjust(void)
// 1906 {
cont_transmission_test_adjust:
        PUSH     {R4-R6,LR}
// 1907   char option;
// 1908   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable127_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable126
// 1909   
// 1910   do
// 1911   {
// 1912     option = test_transmission_menu();
??cont_transmission_test_adjust_0:
        BL       test_transmission_menu
        MOVS     R6,R0
// 1913     switch(option)
        CMP      R0,#+77
        BEQ      ??cont_transmission_test_adjust_1
        CMP      R0,#+83
        BEQ      ??cont_transmission_test_adjust_2
        CMP      R0,#+85
        BEQ      ??cont_transmission_test_adjust_3
        CMP      R0,#+112
        BEQ      ??cont_transmission_test_adjust_4
        B        ??cont_transmission_test_adjust_5
// 1914     {
// 1915       case PRBS9TxTest:
// 1916         pulse_prbs9_tx();
??cont_transmission_test_adjust_2:
        BL       pulse_prbs9_tx
// 1917         break;
        B        ??cont_transmission_test_adjust_4
// 1918       case ModulatedTxTest:
// 1919         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
??cont_transmission_test_adjust_1:
        MOVS     R0,#+4
        B.N      ??cont_transmission_test_adjust_6
// 1920         MLMETestMode(u8CurrentMode);        
// 1921         break;        
// 1922       case UnmodulatedTxTest:
// 1923         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
??cont_transmission_test_adjust_3:
        MOVS     R0,#+5
??cont_transmission_test_adjust_6:
        STRB     R0,[R4, #+20]
// 1924         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1925         break;  
        B        ??cont_transmission_test_adjust_4
// 1926     case PreviousMenu:
// 1927         break;      
// 1928       default:
// 1929         Uart_Print("  Invalid Option!!!");
??cont_transmission_test_adjust_5:
        MOVS     R0,R5
        BL       Uart_Print
// 1930         break;
// 1931     }
// 1932   }while(option != PreviousMenu);
??cont_transmission_test_adjust_4:
        CMP      R6,#+112
        BNE      ??cont_transmission_test_adjust_0
// 1933 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable126:
        DATA32
        DC32     ?_105
// 1934 
// 1935 
// 1936 /************************************************************************************
// 1937 * pulse_prbs9_tx
// 1938 *
// 1939 * This function performs the transmission process for the pseudo random binary 
// 1940 * sequence.
// 1941 *
// 1942 ***********************************************************************************/
// 1943 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1944 void pulse_prbs9_tx(void)
// 1945 {
pulse_prbs9_tx:
        PUSH     {R3-R7,LR}
// 1946   static prbs9_tx_states_t u8AppState;
// 1947   static uint16_t u16DutyCicleCounter;
// 1948   
// 1949 #if INTERFACE_TYPE == MANUAL 
// 1950   if(FALSE == gu8TestAlreadyStarted)
        MOVS     R4,#+0
        LDR      R5,??DataTable128
        LDR      R7,??DataTable127_2
        LDRB     R0,[R7, #+31]
        CMP      R0,#+0
        BNE      ??pulse_prbs9_tx_0
// 1951   {
// 1952        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R5, #+0]
// 1953       u8AppState = INIT_PRBS9_TX_ST;
        STRB     R4,[R5, #+16]
// 1954   }  
// 1955 #endif  
// 1956 
// 1957 
// 1958 #if INTERFACE_TYPE == SERIAL
// 1959   u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX;
// 1960   TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
// 1961   u8AppState =  INIT_PRBS9_TX_ST;
// 1962   MLMETestMode(u8CurrentMode);
// 1963   Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
// 1964   Uart_Print("\r\nPress any key to start.....");
// 1965   Uart_getchar(mUARTRxBuffer);
// 1966   do  
// 1967   {
// 1968 #endif        
// 1969         
// 1970     (void)process_radio_msg();
??pulse_prbs9_tx_0:
        BL       process_radio_msg
// 1971     switch(u8AppState)
        MOVS     R6,#+1
        LDRB     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ      ??pulse_prbs9_tx_1
        CMP      R0,#+1
        BEQ      ??pulse_prbs9_tx_2
        B        ??pulse_prbs9_tx_3
// 1972     {
// 1973       case INIT_PRBS9_TX_ST:
// 1974       {
// 1975         LoadPRBS9();
??pulse_prbs9_tx_1:
        BL       LoadPRBS9
// 1976         u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1977         u8AppState = TRANSMIT_PRBS9_TX_ST;
        STRB     R6,[R5, #+16]
// 1978       }
// 1979       break;
        B        ??pulse_prbs9_tx_3
// 1980       
// 1981       case TRANSMIT_PRBS9_TX_ST:
// 1982       {
// 1983         if(is_tx_msg_final_state(TX_msg))
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
// 1984         {
// 1985           u16DutyCicleCounter++;
??pulse_prbs9_tx_4:
        LDRH     R0,[R5, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+20]
// 1986           if(u16DutyCicleCounter == DUTY_CICLE_TIME)
        LDR      R1,??DataTable129  ;; 0x79e
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??pulse_prbs9_tx_3
// 1987           {
// 1988             u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1989             MCPSDataRequest(&TX_msg);
        MOVS     R0,R5
        BL       MCPSDataRequest
// 1990           }
// 1991         }
// 1992       }
// 1993       
// 1994       default:
// 1995       break;
// 1996     }
// 1997          
// 1998 #if INTERFACE_TYPE == SERIAL    
// 1999     Uart_Poll(mUARTRxBuffer);
// 2000   }while (mUARTRxBuffer[0] != Exit); 
// 2001   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2002   MLMETestMode(u8CurrentMode);
// 2003 #endif
// 2004 
// 2005 #if INTERFACE_TYPE == MANUAL      
// 2006   gu8TestAlreadyStarted = TRUE;
??pulse_prbs9_tx_3:
        STRB     R6,[R7, #+31]
// 2007 #endif
// 2008 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127:
        DATA32
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127_1:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127_2:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127_3:
        DATA32
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127_4:
        DATA32
        DC32     ?_108
// 2009 
// 2010 /************************************************************************************
// 2011 * packet_error_rate_tx_test
// 2012 *
// 2013 * This function performs the packet error rate transmission process.
// 2014 *
// 2015 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2016 void packet_error_rate_tx_test(void)
// 2017 {
packet_error_rate_tx_test:
        PUSH     {R3-R7,LR}
// 2018   static per_tx_states_t u8AppState;
// 2019   static uint16_t u16MsgCount;
// 2020   static uint16_t u16DoneCount;
// 2021   uint32_t u32NumTransmissions;
// 2022 
// 2023 #if   INTERFACE_TYPE == SERIAL
// 2024   uint8_t u8InvalidCharFlag = FALSE;
// 2025 #endif
// 2026   
// 2027 #if   INTERFACE_TYPE == SERIAL
// 2028   uint8_t u8Count;
// 2029   uint8_t u8TempNumTx[5];
// 2030 #endif
// 2031   
// 2032   u32NumTransmissions = NUM_TRANSMISSIONS;
// 2033 
// 2034 #if INTERFACE_TYPE == SERIAL
// 2035   u8AppState = IDLE_PER_TX_ST;   
// 2036   u8CurrentMode = SMAC_TEST_MODE_PER_TX;
// 2037   do{
// 2038 #endif
// 2039 
// 2040 #if INTERFACE_TYPE == MANUAL 
// 2041   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable128
        LDR      R5,??DataTable129_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??packet_error_rate_tx_test_0
// 2042   {
// 2043     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDRB     R0,[R5, #+28]
        MOVS     R1,#+247
        ANDS     R1,R1,R0
        STRB     R1,[R5, #+28]
// 2044     TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+0]
// 2045     LEDs_TX_INIT(250);  
        MOVS     R0,#+8
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        MOVS     R0,#+4
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        MOVS     R0,#+2
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        MOVS     R0,#+1
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
// 2046     u8AppState = INIT_PER_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+17]
// 2047     gu8TestAlreadyStarted = TRUE;
        STRB     R0,[R5, #+31]
// 2048 #if (gLCDSupported_d) 
// 2049     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable129_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2050     LCD_WriteString_NormalFont(4,"PER Transmitting..");
        LDR      R1,??DataTable129_3
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2051 #endif    
// 2052   }
// 2053 #endif
// 2054     
// 2055     (void)process_radio_msg();
??packet_error_rate_tx_test_0:
        BL       process_radio_msg
// 2056     if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_1
// 2057     {
// 2058       gbDataIndicationFlag = FALSE;
        STRB     R6,[R5, #+27]
// 2059       process_incoming_msg();
        BL       process_incoming_msg
// 2060     }
// 2061     
// 2062 #if INTERFACE_TYPE == MANUAL    
// 2063     if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_tx_test_1:
        LDRB     R0,[R5, #+31]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_2
// 2064     {
// 2065 #endif      
// 2066     switch(u8AppState){
        LDRB     R2,[R4, #+0]
        LSRS     R3,R2,#+3
        MOVS     R1,#+3
        MOVS     R0,#+4
        LDRB     R7,[R4, #+17]
        CMP      R7,#+0
        BEQ      ??packet_error_rate_tx_test_3
        CMP      R7,#+2
        BEQ      ??packet_error_rate_tx_test_4
        BCC      ??packet_error_rate_tx_test_5
        CMP      R7,#+4
        BEQ      ??packet_error_rate_tx_test_6
        BCC      ??packet_error_rate_tx_test_7
        B        ??packet_error_rate_tx_test_2
// 2067       case IDLE_PER_TX_ST:
// 2068       {
// 2069 #if INTERFACE_TYPE == SERIAL          
// 2070         Uart_Print("\r\n    ****************************");
// 2071         Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2072         Uart_Print("\r\n    ****************************");
// 2073         Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2074         Uart_Print("\r\nPress Enter. Packets to transmit: ");
// 2075         Uart_PrintShortDec((uint16_t)NUM_TRANSMISSIONS);
// 2076         do
// 2077         {
// 2078          uint8_t i;
// 2079          uint8_t u8Shift;
// 2080           Uart_Print("\r\n\n  Number of packets in decimal: ");
// 2081           u8Count = 0;
// 2082           u8InvalidCharFlag = FALSE;
// 2083 
// 2084           u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2085                     
// 2086           while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= Exit))
// 2087           { 
// 2088             if((0x3A < u8TempNumTx[u8Count]))
// 2089             {
// 2090               u8InvalidCharFlag = TRUE;
// 2091             }
// 2092             else if(0x30 > u8TempNumTx[u8Count])
// 2093             {
// 2094               u8InvalidCharFlag = TRUE;
// 2095             }
// 2096 
// 2097             u8Count ++;
// 2098             u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2099           }
// 2100           if(u8TempNumTx[u8Count] == 0x0D)
// 2101           { 
// 2102             if(0 != u8Count)
// 2103             {
// 2104               u8Count--;
// 2105             }
// 2106             else
// 2107             {
// 2108               u8InvalidCharFlag = TRUE;
// 2109             }   
// 2110             Uart_getchar(mUARTRxBuffer);
// 2111            }
// 2112           
// 2113           if(Exit == u8TempNumTx[u8Count])
// 2114           {
// 2115             return;
// 2116           }
// 2117 
// 2118           u32NumTransmissions = 0;
// 2119           u8Shift = u8Count;
// 2120           /*To validate 0-9, a-f and A-F values*/
// 2121 
// 2122           for(i = 0; i <= u8Count; i++)
// 2123           {
// 2124             u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
// 2125             u8Shift--;
// 2126           }
// 2127           
// 2128           if(MAX_NUM_TRANSMISSION < u32NumTransmissions)
// 2129           {
// 2130             Uart_Print("\r\n  Value out of range, please try again.");
// 2131           }
// 2132           
// 2133           if(u8InvalidCharFlag == TRUE)
// 2134           {
// 2135             Uart_Print("\r\n  Invalid characters, please use only numbers.");
// 2136           }
// 2137         }
// 2138         while((MAX_NUM_TRANSMISSION < u32NumTransmissions) || (TRUE == u8InvalidCharFlag));
// 2139         
// 2140 #endif         
// 2141          u8AppState = INIT_PER_TX_ST;
??packet_error_rate_tx_test_3:
        MOVS     R0,#+1
        B.N      ??packet_error_rate_tx_test_8
// 2142       }
// 2143       break;
// 2144       case INIT_PER_TX_ST:
// 2145       {
// 2146         uint8_t i;
// 2147         uint8_t u8Count = 4;
// 2148         TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
??packet_error_rate_tx_test_5:
        LSLS     R2,R2,#+29
        LSRS     R2,R2,#+29
        MOVS     R3,#+32
        ORRS     R3,R3,R2
        STRB     R3,[R4, #+0]
// 2149         TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+2]
// 2150         TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        MOVS     R1,#+231
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+3]
// 2151         for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        MOVS     R3,#+0
        LDR      R2,??DataTable129_4
// 2152         {
// 2153           TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
??packet_error_rate_tx_test_9:
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R2, R1]
        LDR      R5,[R4, #+4]
        LSLS     R7,R0,#+24
        LSRS     R7,R7,#+24
        ADDS     R5,R5,R7
        STRB     R1,[R5, #+2]
// 2154           u8Count ++;
        ADDS     R0,R0,#+1
// 2155         }
        ADDS     R3,R3,#+1
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+16
        BCC      ??packet_error_rate_tx_test_9
// 2156 
// 2157         u16MsgCount = 0;
        STRH     R6,[R4, #+22]
// 2158         u16DoneCount = 0;
        STRH     R6,[R4, #+24]
// 2159         u8AppState = TRANSMITING_PER_TX_ST;
        MOVS     R0,#+2
        B.N      ??packet_error_rate_tx_test_8
// 2160       }
// 2161       break;
// 2162       case TRANSMITING_PER_TX_ST:
// 2163       {
// 2164         if(is_tx_msg_final_state(TX_msg))
??packet_error_rate_tx_test_4:
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
// 2165         {
// 2166           if(u32NumTransmissions > u16MsgCount)
??packet_error_rate_tx_test_10:
        LDRH     R0,[R4, #+22]
        LDR      R3,??DataTable130  ;; 0x3e7
        CMP      R0,R3
        BCS      ??packet_error_rate_tx_test_11
// 2167           {
// 2168             TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
        LSRS     R1,R0,#+8
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+4]
// 2169             TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
// 2170             TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
        MOVS     R0,#+20
        STRB     R0,[R4, #+8]
// 2171 #if INTERFACE_TYPE == SERIAL          
// 2172             DelayMs(14);
// 2173 #else
// 2174             DelayMs(5);
        MOVS     R0,#+5
        BL       DelayMs
// 2175 #endif            
// 2176 
// 2177             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2178             u16MsgCount++;
        LDRH     R0,[R4, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+22]
        B        ??packet_error_rate_tx_test_2
// 2179           }
// 2180           else
// 2181           {
// 2182             uint8_t i;
// 2183             for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
??packet_error_rate_tx_test_11:
        ADR.N    R0,ku8DoneStr
// 2184             {
// 2185               TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
??packet_error_rate_tx_test_12:
        LDRB     R2,[R0, R6]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R6
        STRB     R2,[R3, #+2]
// 2186             }
        ADDS     R6,R6,#+1
        CMP      R6,#+4
        BCC      ??packet_error_rate_tx_test_12
// 2187             u8AppState = DONE_PER_TX_ST;
        STRB     R1,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2188           }
// 2189         }   
// 2190       }  
// 2191       break;
// 2192       
// 2193       case DONE_PER_TX_ST:
// 2194       {
// 2195         if(NUM_DONE_TX >= u16DoneCount)
??packet_error_rate_tx_test_7:
        LDRH     R1,[R4, #+24]
        CMP      R1,#+16
        BGE      ??packet_error_rate_tx_test_8
// 2196         {
// 2197           if(is_tx_msg_final_state(TX_msg))
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_13
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
        B        ??packet_error_rate_tx_test_14
// 2198           {
// 2199             if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
// 2200               u16DoneCount++;
??packet_error_rate_tx_test_13:
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+24]
// 2201             TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
??packet_error_rate_tx_test_14:
        STRB     R0,[R4, #+8]
// 2202             DelayMs(14);
        MOVS     R0,#+14
        BL       DelayMs
// 2203             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
        B        ??packet_error_rate_tx_test_2
// 2204           }
// 2205         }
// 2206         else
// 2207         {
// 2208           u8AppState = FINISH_PER_TX_ST;
??packet_error_rate_tx_test_8:
        STRB     R0,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2209         }
// 2210       }
// 2211       break;
// 2212       
// 2213       case FINISH_PER_TX_ST:
// 2214         u8AppState = IDLE_PER_TX_ST;
??packet_error_rate_tx_test_6:
        STRB     R6,[R4, #+17]
// 2215 #if INTERFACE_TYPE == MANUAL                
// 2216         gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R5, #+31]
// 2217 #endif        
// 2218  
// 2219         break;
// 2220       
// 2221       default:
// 2222       {
// 2223       }
// 2224       break;
// 2225     }
// 2226 
// 2227 #if INTERFACE_TYPE == MANUAL        
// 2228   }
// 2229 #endif
// 2230   
// 2231 #if INTERFACE_TYPE == SERIAL    
// 2232     Uart_Poll(mUARTRxBuffer);
// 2233   }while (mUARTRxBuffer[0] != Exit); 
// 2234   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2235   MLMETestMode(u8CurrentMode);
// 2236 #endif
// 2237 
// 2238   
// 2239 }
??packet_error_rate_tx_test_2:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ku8DoneStr:
        DATA8
        DC8 68, 79, 78, 69
// 2240 
// 2241 /************************************************************************************
// 2242 * packet_error_rate_rx_test
// 2243 *
// 2244 * This function performs the packet error rate reception process.
// 2245 *
// 2246 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2247 void packet_error_rate_rx_test(void)
// 2248 {
packet_error_rate_rx_test:
        PUSH     {R3-R7,LR}
// 2249   static per_rx_states_t u8AppState;
// 2250 
// 2251 #if INTERFACE_TYPE == MANUAL 
// 2252   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable129_1
        LDRB     R0,[R4, #+31]
        MOVS     R7,#+1
        LDR      R5,??DataTable130_1
        CMP      R0,#+0
        BNE      ??packet_error_rate_rx_test_0
// 2253   {  
// 2254     RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 2255     LEDs_RX_INIT(250);  
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOnAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOnAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
// 2256 
// 2257 
// 2258 #if (gLCDSupported_d) 
// 2259     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable129_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2260     LCD_WriteString_NormalFont(4," PER Listening..");
        LDR      R1,??DataTable130_2
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2261 #endif
// 2262     u8AppState = INIT_PER_RX_ST;
        STRB     R7,[R5, #+0]
// 2263     gu8TestAlreadyStarted = TRUE;
        STRB     R7,[R4, #+31]
        B        ??packet_error_rate_rx_test_1
// 2264   }
// 2265 #endif
// 2266   
// 2267 
// 2268 #if INTERFACE_TYPE == SERIAL
// 2269   u8CurrentMode = SMAC_TEST_MODE_PER_RX;
// 2270   RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
// 2271   Uart_Print("\r\n    ****************************");
// 2272   Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2273   Uart_Print("\r\n    ****************************");
// 2274   Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2275   Uart_Print("\r\nPress any key to start.....");
// 2276   Uart_getchar(mUARTRxBuffer);
// 2277   u8AppState = INIT_PER_RX_ST;
// 2278   do{
// 2279 #endif    
// 2280     
// 2281 #if INTERFACE_TYPE == MANUAL    
// 2282 
// 2283 
// 2284   if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_rx_test_0:
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_2
// 2285   {
// 2286 #endif      
// 2287       (void)process_radio_msg();
??packet_error_rate_rx_test_1:
        BL       process_radio_msg
// 2288       if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_3
// 2289       {
// 2290         gbDataIndicationFlag = FALSE;
        STRB     R6,[R4, #+27]
// 2291         process_incoming_msg();
        BL       process_incoming_msg
// 2292       }
// 2293     
// 2294 #if OTAP_ENABLED == TRUE
// 2295     if(gbOtapExecute)
// 2296     {
// 2297       OTAP_execute();        
// 2298     }
// 2299     else
// 2300 #endif
// 2301     {          
// 2302   
// 2303       switch(u8AppState){
??packet_error_rate_rx_test_3:
        LDRB     R0,[R4, #+4]
        LSRS     R0,R0,#+3
        MOVS     R1,#+3
        LDRB     R2,[R5, #+0]
        CMP      R2,#+1
        BEQ      ??packet_error_rate_rx_test_4
        BCC      ??packet_error_rate_rx_test_2
        CMP      R2,#+3
        BEQ      ??packet_error_rate_rx_test_5
        BCC      ??packet_error_rate_rx_test_6
        CMP      R2,#+4
        BEQ      ??packet_error_rate_rx_test_7
        B        ??packet_error_rate_rx_test_2
// 2304         case IDLE_PER_RX_ST:
// 2305         {
// 2306           // Do nothing when idle
// 2307         }
// 2308         break;
// 2309         case INIT_PER_RX_ST:
// 2310         {
// 2311 #if INTERFACE_TYPE == SERIAL        
// 2312           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2313 #endif       
// 2314           u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_4:
        STRB     R1,[R5, #+0]
// 2315           
// 2316           
// 2317         }
// 2318         break;
        B        ??packet_error_rate_rx_test_2
// 2319         case WAITING_PER_RX_ST:
// 2320         {
// 2321           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_6:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_9
// 2322           {
// 2323             u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_8:
        STRB     R1,[R5, #+0]
// 2324           }
// 2325           if(gu32PerRxEvents & PER_DONE_MSG_EVNT)
??packet_error_rate_rx_test_9:
        MOVS     R0,#+44
        LDRB     R0,[R4, R0]
        LSLS     R0,R0,#+28
        BPL      ??packet_error_rate_rx_test_2
// 2326           {
// 2327             gu32PerRxEvents = PER_NO_EVENT;
        STR      R6,[R4, #+44]
// 2328             u8AppState = FINISH_PER_RX_ST;
        MOVS     R0,#+4
        B.N      ??packet_error_rate_rx_test_10
// 2329           }
// 2330         }
// 2331         break;
// 2332         case LISTEN_PER_RX_ST:
// 2333         {
// 2334           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_5:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_2
// 2335           {
// 2336             RX_msg.u8BufSize = PER_RX_SIZE;
??packet_error_rate_rx_test_11:
        MOVS     R0,#+24
        STRB     R0,[R4, #+12]
// 2337             MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 2338             u8AppState = WAITING_PER_RX_ST;
        MOVS     R0,#+2
??packet_error_rate_rx_test_10:
        STRB     R0,[R5, #+0]
        B        ??packet_error_rate_rx_test_2
// 2339           }
// 2340         }
// 2341         break;
// 2342         case FINISH_PER_RX_ST:
// 2343         {
// 2344           u8AppState = INIT_PER_RX_ST;
??packet_error_rate_rx_test_7:
        STRB     R7,[R5, #+0]
// 2345 #if INTERFACE_TYPE == MANUAL 
// 2346           LED_SetHex((uint8_t)(c_test_num.u8Thousands));
        LDRB     R0,[R4, #+1]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2347           DelayMs(gTotalPacketsDelay_d);
        MOVS     R5,#+200
        LSLS     R5,R5,#+1        ;; #+400
        MOVS     R0,R5
        BL       DelayMs
// 2348           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2349           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2350           LED_SetHex((uint8_t)(c_test_num.u8Houndreds));
        MOVS     R7,#+15
        LDRB     R0,[R4, #+1]
        ANDS     R0,R0,R7
        BL       LED_SetHex
// 2351           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2352           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2353           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2354           LED_SetHex((uint8_t)(c_test_num.u8Tens));
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2355           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2356           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2357           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2358           LED_SetHex((uint8_t)(c_test_num.u8Units));
        LDRB     R0,[R4, #+0]
        ANDS     R7,R7,R0
        MOVS     R0,R7
        BL       LED_SetHex
// 2359           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2360           gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R4, #+31]
// 2361 #endif        
// 2362         }
// 2363         break;
// 2364         default:
// 2365         {
// 2366         }
// 2367         break;
// 2368       }
// 2369     }  
// 2370 #if INTERFACE_TYPE == MANUAL        
// 2371   }
// 2372 #endif
// 2373   
// 2374 #if INTERFACE_TYPE == SERIAL    
// 2375     Uart_Poll(mUARTRxBuffer);
// 2376   }while (mUARTRxBuffer[0] != Exit);  
// 2377   
// 2378   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2379   MLMETestMode(u8CurrentMode);
// 2380 #endif
// 2381   
// 2382 }
??packet_error_rate_rx_test_2:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129:
        DATA32
        DC32     0x79e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129_2:
        DATA32
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129_3:
        DATA32
        DC32     ?_109

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129_4:
        DATA32
        DC32     ku8ExpectedString
// 2383 
// 2384 /************************************************************************************
// 2385 * range_rx_test
// 2386 *
// 2387 * This function performs the range reception process.
// 2388 *
// 2389 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2390 void range_rx_test(void)
// 2391 {
range_rx_test:
        PUSH     {R3-R7,LR}
// 2392   volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
// 2393   volatile uint8_t u8retries;
// 2394 #if INTERFACE_TYPE == MANUAL 
// 2395   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable131
        LDR      R5,??DataTable131_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??range_rx_test_0
// 2396   {
// 2397      u8AppState = INIT_RANGE_RX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+19]
// 2398      LEDs_RX_INIT(250);
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOnAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOnAllLeds
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
// 2399 #if (gLCDSupported_d) 
// 2400     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable131_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2401     LCD_WriteString_NormalFont(4,"Range Listening..");
        LDR      R1,??DataTable132
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2402 #endif        
// 2403   }  
// 2404 #endif  
// 2405 
// 2406 #if INTERFACE_TYPE == SERIAL
// 2407   u8CurrentMode = SMAC_TEST_MODE_RANGE_RX;
// 2408   
// 2409   Uart_Print("\r\n    ****************************");
// 2410   Uart_Print("\r\n    **       Range Test       **");
// 2411   Uart_Print("\r\n    ****************************");
// 2412    
// 2413   Uart_Print("\r\nPress Q to exit from Range Test");
// 2414   Uart_Print("\r\nPress any key to start.....");
// 2415   Uart_getchar(mUARTRxBuffer);
// 2416   u8AppState = INIT_RANGE_RX_ST;
// 2417   do{
// 2418 #endif
// 2419 
// 2420       (void)process_radio_msg();
??range_rx_test_0:
        BL       process_radio_msg
// 2421       if(TRUE == gbDataIndicationFlag)
        MOVS     R7,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??range_rx_test_1
// 2422       {
// 2423         gbDataIndicationFlag = FALSE;
        STRB     R7,[R5, #+27]
// 2424         process_incoming_msg();
        BL       process_incoming_msg
// 2425       }
// 2426       else{
// 2427       }
// 2428 
// 2429 #if OTAP_ENABLED == TRUE
// 2430     if(gbOtapExecute)
// 2431     {
// 2432       OTAP_execute();        
// 2433     }
// 2434     else
// 2435 #endif
// 2436     {          
// 2437       switch(u8AppState){
??range_rx_test_1:
        LDRB     R0,[R5, #+4]
        LSRS     R2,R0,#+3
        LDRB     R0,[R4, #+0]
        MOVS     R6,#+2
        MOVS     R1,#+3
        LDRB     R3,[R4, #+19]
        CMP      R3,#+1
        BEQ      ??range_rx_test_2
        BCC      ??range_rx_test_3
        CMP      R3,#+3
        BEQ      ??range_rx_test_4
        BCC      ??range_rx_test_5
        CMP      R3,#+4
        BEQ      ??range_rx_test_6
        B        ??range_rx_test_3
// 2438         case IDLE_RANGE_RX_ST:
// 2439         {
// 2440           // Do nothing when idle
// 2441         }
// 2442         break;
// 2443         
// 2444         case INIT_RANGE_RX_ST:
// 2445         {
// 2446           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_rx_test_2:
        MOVS     R2,#+7
        LDRB     R3,[R5, #+4]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        STRB     R6,[R5, #+4]
// 2447           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
        ANDS     R2,R2,R0
        MOVS     R0,#+32
        ORRS     R0,R0,R2
        STRB     R0,[R4, #+0]
// 2448   #if INTERFACE_TYPE == SERIAL        
// 2449           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2450           Uart_Print("\r\nStart the test by pressing any key on TX radio");
// 2451   #endif       
// 2452           u8AppState = LISTEN_RANGE_RX_ST;
        STRB     R1,[R4, #+19]
// 2453         }
// 2454         break;
        B        ??range_rx_test_3
// 2455         
// 2456         case LISTEN_RANGE_RX_ST:
// 2457         {
// 2458           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_4:
        CMP      R2,#+5
        BEQ      ??range_rx_test_7
        CMP      R2,#+6
        BEQ      ??range_rx_test_7
        CMP      R2,#+8
        BEQ      ??range_rx_test_7
        CMP      R2,#+4
        BNE      ??range_rx_test_3
// 2459           {
// 2460             RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_rx_test_7:
        MOVS     R0,#+12
        STRB     R0,[R5, #+12]
// 2461             MLMERXEnableRequest(&RX_msg, 0x00000200);
        LSLS     R1,R6,#+8
        ADDS     R0,R5,#+4
        BL       MLMERXEnableRequest
// 2462             u8AppState = WAITING_RANGE_RX_ST;
        B        ??range_rx_test_8
// 2463           }
// 2464         }
// 2465         break;
// 2466   
// 2467        case WAITING_RANGE_RX_ST:
// 2468         {
// 2469           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_5:
        CMP      R2,#+5
        BEQ      ??range_rx_test_9
        CMP      R2,#+6
        BEQ      ??range_rx_test_9
        CMP      R2,#+8
        BEQ      ??range_rx_test_9
        CMP      R2,#+4
        BNE      ??range_rx_test_10
// 2470           {
// 2471             u8AppState = LISTEN_RANGE_RX_ST;
??range_rx_test_9:
        STRB     R1,[R4, #+19]
// 2472           }
// 2473           if(TRUE == gu8ValidRangePacket)
??range_rx_test_10:
        LDRB     R0,[R5, #+29]
        CMP      R0,#+1
        BNE      ??range_rx_test_3
// 2474           {
// 2475             gu8ValidRangePacket = FALSE;
        STRB     R7,[R5, #+29]
// 2476             u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
        MOVS     R0,#+4
        STRB     R0,[R4, #+19]
// 2477             u8retries = 5;
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        B        ??range_rx_test_3
// 2478           }
// 2479         }
// 2480         break;
// 2481    
// 2482         
// 2483         case TRANSMIT_ACK_RANGE_RX_ST:
// 2484         {
// 2485 
// 2486           if(is_tx_msg_final_state(ACK_msg))
??range_rx_test_6:
        LSRS     R0,R0,#+3
        CMP      R0,#+4
        BEQ      ??range_rx_test_11
        CMP      R0,#+5
        BEQ      ??range_rx_test_11
        CMP      R0,#+7
        BEQ      ??range_rx_test_11
        CMP      R0,#+3
        BNE      ??range_rx_test_12
// 2487           { 
// 2488             MCPSDataRequest(&ACK_msg); 
??range_rx_test_11:
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2489             u8retries --;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
// 2490           }
// 2491           if(0 == u8retries)
??range_rx_test_12:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??range_rx_test_3
// 2492           {
// 2493             u8AppState = WAITING_RANGE_RX_ST;
??range_rx_test_8:
        STRB     R6,[R4, #+19]
// 2494           }
// 2495         }
// 2496         break;
// 2497         
// 2498         case FINISH_RANGE_RX_ST:
// 2499         {
// 2500           /*Do nothing*/
// 2501         }
// 2502         break;
// 2503         default:
// 2504         {
// 2505         }
// 2506         break;
// 2507       }
// 2508    }
// 2509 #if INTERFACE_TYPE == SERIAL       
// 2510     Uart_Poll(mUARTRxBuffer);
// 2511   }while (mUARTRxBuffer[0] != Exit);  
// 2512   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2513   MLMETestMode(u8CurrentMode);
// 2514 #endif  
// 2515 #if INTERFACE_TYPE == MANUAL      
// 2516   gu8TestAlreadyStarted = TRUE;
??range_rx_test_3:
        MOVS     R0,#+1
        STRB     R0,[R5, #+31]
// 2517 #endif
// 2518 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130:
        DATA32
        DC32     0x3e7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_1:
        DATA32
        DC32     `packet_error_rate_rx_test::u8AppState`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_2:
        DATA32
        DC32     ?_110

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
ACK_msg:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
maxLQI:
        DATA8
        DC8 0
minLQI:
        DC8 255
        DC8 0
        DC8 0
        DATA16
        DC16 0
        DC16 10
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
u8RxIcon1_c:
        DC8 0, 0, 62, 65, 0, 62, 65, 0, 62, 65, 0, 252, 252, 0, 65, 62, 0, 65
        DC8 62, 0, 65, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 171, 87
        DC8 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224
        DC8 255, 250, 253, 255, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0
u8RxIcon2_c:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 62, 65, 0, 252, 252, 0, 65, 62, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 171, 87, 254, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, 255, 250
        DC8 253, 255, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0
// 2519 
// 2520 /************************************************************************************
// 2521 * range_tx_test
// 2522 *
// 2523 * This function performs the range transmission process.
// 2524 *
// 2525 ***********************************************************************************/
// 2526 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2527 void range_tx_test(void)
// 2528 {
range_tx_test:
        PUSH     {R3-R7,LR}
// 2529   static range_tx_states_t u8AppState; 
// 2530   static uint16_t u8CountNoPacket = 0;
// 2531    
// 2532 #if INTERFACE_TYPE == MANUAL 
// 2533   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable133
        LDR      R0,??DataTable131_1
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE      ??range_tx_test_1
// 2534   {
// 2535     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDR      R0,??DataTable131_1
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+247
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+28]
// 2536     u8AppState = INIT_RANGE_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+18]
// 2537     LEDs_TX_INIT(250);  
        MOVS     R0,#+8
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        MOVS     R0,#+4
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        MOVS     R0,#+2
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        MOVS     R0,#+1
        BL       LED_SetHex
        MOVS     R0,#+250
        BL       DelayMs
        BL       LED_TurnOffAllLeds
// 2538 #if (gLCDSupported_d) 
// 2539     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable131_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2540     LCD_WriteString_NormalFont(4,"Range Transmitting..");
        LDR      R1,??DataTable133_1
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2541 #endif        
// 2542   }  
// 2543 #endif  
// 2544 
// 2545 #if INTERFACE_TYPE == SERIAL    
// 2546 
// 2547   u8AppState = INIT_RANGE_TX_ST;
// 2548   
// 2549   u8CurrentMode = SMAC_TEST_MODE_RANGE_TX;
// 2550   Uart_Print("\r\n    ****************************");
// 2551   Uart_Print("\r\n    **       Range Test       **");
// 2552   Uart_Print("\r\n    ****************************");
// 2553    
// 2554   Uart_Print("\r\nPress Q to exit from Range Test");
// 2555   Uart_Print("\r\nPress any key to start the test.....");
// 2556   Uart_getchar(mUARTRxBuffer);
// 2557   do{
// 2558 #endif
// 2559     (void)process_radio_msg();
??range_tx_test_1:
        BL       process_radio_msg
// 2560     if(TRUE == gbDataIndicationFlag)
        MOVS     R5,#+0
        LDR      R0,??DataTable131_1
        LDRB     R0,[R0, #+27]
        CMP      R0,#+1
        BNE      ??range_tx_test_2
// 2561     {
// 2562       gbDataIndicationFlag = FALSE;
        LDR      R1,??DataTable131_1
        STRB     R5,[R1, #+27]
// 2563       process_incoming_msg();
        BL       process_incoming_msg
// 2564       u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
        B        ??range_tx_test_3
// 2565     }
// 2566     else{
// 2567       u8CountNoPacket++;
??range_tx_test_2:
        LDRH     R0,[R4, #+26]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+26]
// 2568       if(MAX_NO_PACKET_ALLOW == u8CountNoPacket)
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??range_tx_test_3
// 2569       {
// 2570           u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
// 2571           TurnOffLeds();
        BL       LED_TurnOffAllLeds
// 2572       }
// 2573     }
// 2574     
// 2575 #if OTAP_ENABLED == TRUE
// 2576  if(gbOtapExecute)
// 2577  {
// 2578     OTAP_execute();        
// 2579  }
// 2580  else
// 2581 #endif
// 2582   {
// 2583     
// 2584     switch(u8AppState)
??range_tx_test_3:
        LDR      R0,??DataTable131_1
        LDRB     R0,[R0, #+4]
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSRS     R2,R0,#+3
        LDRB     R1,[R4, #+0]
        LSRS     R3,R1,#+3
        MOVS     R0,#+2
        LDRB     R6,[R4, #+18]
        CMP      R6,#+5
        BHI      ??range_tx_test_4
        ADR      R7,??range_tx_test_0
        LDRB     R7,[R7, R6]
        ADD      PC,PC,R7
        DATA
??range_tx_test_0:
        DC8      0x4,0x8,0x40,0x90
        DC8      0x60,0x80
        THUMB
// 2585     {
// 2586       case IDLE_RANGE_TX_ST:
// 2587       {
// 2588         // Do nothing when idle
// 2589   		u8AppState = INIT_RANGE_TX_ST;
??range_tx_test_5:
        MOVS     R0,#+1
        B        ??range_tx_test_6
// 2590       }
// 2591       break;
// 2592       case INIT_RANGE_TX_ST:
// 2593       {
// 2594         uint8_t i;
// 2595           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_tx_test_7:
        MOVS     R2,#+7
        MOV      R3,SP
        LDRB     R3,[R3, #+0]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        LDR      R3,??DataTable131_1
        STRB     R6,[R3, #+4]
// 2596           TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        MOVS     R3,#+32
        ANDS     R1,R1,R2
        ORRS     R1,R1,R3
        STRB     R1,[R4, #+0]
// 2597           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R1,??DataTable131
        LDRB     R6,[R1, #+0]
        ANDS     R2,R2,R6
        ORRS     R3,R3,R2
        STRB     R3,[R1, #+0]
// 2598           for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
        LDR      R1,??DataTable134
// 2599           {
// 2600             TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
??range_tx_test_8:
        LDRB     R2,[R1, R5]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R5
        STRB     R2,[R3, #+2]
// 2601           }
        ADDS     R5,R5,#+1
        CMP      R5,#+10
        BCC      ??range_tx_test_8
// 2602 #if SMAC_FEATURE_SECURITY ==  TRUE
// 2603         {
// 2604           uint8_t fill_counter;
// 2605           for(fill_counter=sizeof(u8RangeExpectedString); fill_counter<16; fill_counter++)
// 2606           {
// 2607              TX_msg.pu8Buffer->u8Data[fill_counter] = '\0';
// 2608           }
// 2609           TX_msg.u8BufSize = 16;
// 2610           (void)CipherMsgU8(&(TX_msg.pu8Buffer->u8Data[0]), (TX_msg.u8BufSize));
// 2611         }
// 2612 #else
// 2613         TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));
        MOVS     R1,#+10
        STRB     R1,[R4, #+8]
// 2614 #endif
// 2615 
// 2616 
// 2617 #if INTERFACE_TYPE == SERIAL              
// 2618           Uart_Print("\r\n\nThe transceiver is now transmitting...");
// 2619 #endif          
// 2620           u8AppState = TRANSMITING_RANGE_TX_ST;
        B        ??range_tx_test_6
// 2621       }
// 2622       break;
// 2623       
// 2624       case TRANSMITING_RANGE_TX_ST:
// 2625       {
// 2626         if(is_tx_msg_final_state(TX_msg))
??range_tx_test_9:
        CMP      R3,#+4
        BEQ      ??range_tx_test_10
        CMP      R3,#+5
        BEQ      ??range_tx_test_10
        CMP      R3,#+7
        BEQ      ??range_tx_test_10
        CMP      R3,#+3
        BNE      ??range_tx_test_11
// 2627         {
// 2628           
// 2629           DelayMs(5);
??range_tx_test_10:
        MOVS     R0,#+5
        BL       DelayMs
// 2630           MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2631         }
// 2632         u8AppState = LISTEN_RANGE_TX_ST;
??range_tx_test_11:
        MOVS     R0,#+4
        B        ??range_tx_test_6
// 2633       }  
// 2634       break;
// 2635       
// 2636       case LISTEN_RANGE_TX_ST:
// 2637       {
// 2638         if(is_rx_msg_final_state(RX_msg))
??range_tx_test_12:
        CMP      R2,#+5
        BEQ      ??range_tx_test_13
        CMP      R2,#+6
        BEQ      ??range_tx_test_13
        CMP      R2,#+8
        BEQ      ??range_tx_test_13
        CMP      R2,#+4
        BNE      ??range_tx_test_14
// 2639         {
// 2640           RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_tx_test_13:
        MOVS     R0,#+12
        LDR      R1,??DataTable131_1
        STRB     R0,[R1, #+12]
// 2641           MLMERXEnableRequest(&RX_msg, 0x00000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        LDR      R0,??DataTable135
        BL       MLMERXEnableRequest
// 2642         }
// 2643         u8AppState = WAITING_RANGE_TX_ST;
// 2644       }
// 2645       break;
// 2646       
// 2647       case WAITING_RANGE_TX_ST:
// 2648       {
// 2649         if(is_tx_msg_final_state(TX_msg))
// 2650         {
// 2651           u8AppState = TRANSMITING_RANGE_TX_ST;
// 2652         }
// 2653         if(is_rx_msg_final_state(RX_msg))
// 2654         {
// 2655           u8AppState = LISTEN_RANGE_TX_ST;
// 2656         }
// 2657         if(TRUE == gu8ValidAckPacket)
// 2658         {
// 2659           gu8ValidAckPacket = FALSE;
// 2660           u8AppState = RANGE_INDICATION_TX_ST;
// 2661         }
// 2662       }
// 2663       break;
// 2664       
// 2665       case RANGE_INDICATION_TX_ST:
// 2666       {
// 2667         u8AppState = WAITING_RANGE_TX_ST;
??range_tx_test_14:
        MOVS     R0,#+3
??range_tx_test_6:
        STRB     R0,[R4, #+18]
// 2668       }
// 2669       break;
// 2670       
// 2671       default:
// 2672       {
// 2673       }
// 2674       break;
// 2675     }
// 2676   }
// 2677 #if INTERFACE_TYPE == SERIAL                  
// 2678     Uart_Poll(mUARTRxBuffer);
// 2679   }while (mUARTRxBuffer[0] != Exit);  
// 2680   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2681   MLMETestMode(u8CurrentMode);
// 2682 #endif
// 2683 
// 2684 #if INTERFACE_TYPE == MANUAL      
// 2685   gu8TestAlreadyStarted = TRUE;
??range_tx_test_4:
        MOVS     R0,#+1
        LDR      R1,??DataTable131_1
        STRB     R0,[R1, #+31]
// 2686 #endif
// 2687 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
??range_tx_test_15:
        CMP      R3,#+4
        BEQ      ??range_tx_test_16
        CMP      R3,#+5
        BEQ      ??range_tx_test_16
        CMP      R3,#+7
        BEQ      ??range_tx_test_16
        CMP      R3,#+3
        BNE      ??range_tx_test_17
??range_tx_test_16:
        STRB     R0,[R4, #+18]
??range_tx_test_17:
        CMP      R2,#+5
        BEQ      ??range_tx_test_18
        CMP      R2,#+6
        BEQ      ??range_tx_test_18
        CMP      R2,#+8
        BEQ      ??range_tx_test_18
        CMP      R2,#+4
        BNE      ??range_tx_test_19
??range_tx_test_18:
        MOVS     R0,#+4
        STRB     R0,[R4, #+18]
??range_tx_test_19:
        LDR      R0,??DataTable131_1
        LDRB     R0,[R0, #+30]
        CMP      R0,#+1
        BNE      ??range_tx_test_4
        LDR      R0,??DataTable131_1
        STRB     R5,[R0, #+30]
        MOVS     R0,#+5
        B        ??range_tx_test_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_2:
        DATA32
        DC32     ?_111

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
TX_msg:
        DS8 16
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 2
        DS8 2
        DS8 2
        DS8 2

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
`packet_error_rate_rx_test::u8AppState`:
        DS8 1
// 2688 
// 2689 
// 2690 /************************************************************************************
// 2691 * configure_clock_setting
// 2692 *
// 2693 * This function adjust the clock setting selected by the user in the serial interface.
// 2694 *
// 2695 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2696 void configure_clock_settings(void)
// 2697 {
configure_clock_settings:
        PUSH     {R3-R7,LR}
        LDR      R7,??DataTable136
        LDR      R4,??DataTable136_1  ;; 0x80003040
// 2698   char option_menu, option;
// 2699    do{
// 2700       option_menu = clock_setting_menu();
??configure_clock_settings_0:
        BL       clock_setting_menu
        MOVS     R5,R0
// 2701       switch(option_menu)
        CMP      R0,#+49
        BEQ      ??configure_clock_settings_1
        CMP      R0,#+50
        BEQ      ??configure_clock_settings_2
        CMP      R0,#+51
        BEQ      ??configure_clock_settings_3
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_4
        B        ??configure_clock_settings_5
// 2702       {
// 2703         case BulkCapacitor:
// 2704          do
// 2705           {
// 2706             option = bulk_cap_menu();
??configure_clock_settings_1:
        BL       bulk_cap_menu
        MOVS     R6,R0
// 2707             switch(option)
        CMP      R0,#+68
        BEQ      ??configure_clock_settings_6
        CMP      R0,#+69
        BEQ      ??configure_clock_settings_7
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_8
        B        ??configure_clock_settings_9
// 2708             {
// 2709               case EnableBulkCapacitor:
// 2710                 enable_bulk_cap(); 
??configure_clock_settings_7:
        LDR      R0,[R4, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2711                 u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        B.N      ??configure_clock_settings_10
// 2712                 break;
// 2713               case DisableBulkCapacitor:
// 2714                 disable_bulk_cap(); 
??configure_clock_settings_6:
        LDR      R0,[R4, #+0]
        LDR      R1,??DataTable137  ;; 0xfdffffff
        ANDS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2715                 u8BulkCapState = gDisable_c;
        MOVS     R0,#+0
??configure_clock_settings_10:
        STRB     R0,[R7, #+26]
// 2716                 break;
        B        ??configure_clock_settings_8
// 2717               case PreviousMenu:
// 2718                 break;
// 2719               default:
// 2720                 Uart_Print("  Invalid Option!!!");
??configure_clock_settings_9:
        Nop      
        ADR.N    R0,?_105
        BL       Uart_Print
// 2721                 break;              
// 2722             }
// 2723           }while(option != PreviousMenu);
??configure_clock_settings_8:
        CMP      R6,#+112
        BNE      ??configure_clock_settings_1
        B        ??configure_clock_settings_4
// 2724           break;
// 2725           
// 2726         case CoarseTune:
// 2727           coarse_tune_adjust();
??configure_clock_settings_2:
        BL       coarse_tune_adjust
// 2728           break;
        B        ??configure_clock_settings_4
// 2729           
// 2730         case FineTune:
// 2731           fine_tune_adjust();
??configure_clock_settings_3:
        BL       fine_tune_adjust
// 2732           break;
        B        ??configure_clock_settings_4
// 2733           
// 2734         case PreviousMenu:
// 2735           break;
// 2736           
// 2737         default:
// 2738           Uart_Print("  Invalid Option!!!\n");
??configure_clock_settings_5:
        ADR.N    R0,?_114
        BL       Uart_Print
// 2739           break;
// 2740      }
// 2741   }while(option_menu != PreviousMenu); 
??configure_clock_settings_4:
        CMP      R5,#+112
        BNE      ??configure_clock_settings_0
// 2742 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132:
        DATA32
        DC32     ?_112

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_105:
        DC8 "  Invalid Option!!!"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_114:
        DC8 "  Invalid Option!!!\012"
        DC8 0, 0, 0
// 2743 
// 2744 /************************************************************************************
// 2745 * coarse_tune_adjust
// 2746 *
// 2747 * This function ajusts the current coarse tune value to the new typed by the user 
// 2748 * in the serial interface.
// 2749 *
// 2750 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2751 void coarse_tune_adjust(void)
// 2752 {
coarse_tune_adjust:
        PUSH     {R4-R6,LR}
// 2753   uint8_t u8TempCoarse;
// 2754   Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_115
        BL       Uart_Print
// 2755   Uart_Print("\r  Current Coarse Tune Value: ");
        LDR      R0,??DataTable137_1
        BL       Uart_Print
// 2756   Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+24
        BL       Uart_PrintHex
// 2757   Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
        LDR      R5,??DataTable137_2
        MOVS     R0,R5
        BL       Uart_Print
// 2758   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2759   u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2760   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2761 
// 2762   if(u8TempCoarse > 0X00)
        CMP      R6,#+0
        BEQ      ??coarse_tune_adjust_0
// 2763   {
// 2764     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??coarse_tune_adjust_1
// 2765   }
// 2766   else
// 2767   {
// 2768     u8CurrentCoarseTune = (u8TempCoarse << 4);
??coarse_tune_adjust_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+24]
// 2769     u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+24]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+24]
// 2770     set_xtal_coarse_tune(u8CurrentCoarseTune); 
        LDR      R1,??DataTable136_1  ;; 0x80003040
        LDR      R2,[R1, #+0]
        LDR      R3,??DataTable137_3  ;; 0xfe1fffff
        ANDS     R3,R3,R2
        LSLS     R0,R0,#+21
        MOVS     R2,#+240
        LSLS     R2,R2,#+17       ;; #+31457280
        ANDS     R2,R2,R0
        ORRS     R2,R2,R3
        STR      R2,[R1, #+0]
// 2771   }
// 2772 }
??coarse_tune_adjust_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable133:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable133_1:
        DATA32
        DC32     ?_113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_115:
        DC8 "\015\012\012Coarse Tune Adjustment\012\012\012"
        DC8 0, 0, 0
// 2773 
// 2774 /************************************************************************************
// 2775 * fine_tune_adjust
// 2776 *
// 2777 * This function ajusts the current fine tune value to the new typed by the user
// 2778 * through the serial interface.
// 2779 *
// 2780 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2781 void fine_tune_adjust()
// 2782 {
fine_tune_adjust:
        PUSH     {R4-R6,LR}
// 2783   uint8_t u8TempFine;
// 2784   Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_117
        BL       Uart_Print
// 2785   Uart_Print("\r  Current Fine Tune Value: ");
        LDR      R0,??DataTable137_4
        BL       Uart_Print
// 2786   Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+25
        BL       Uart_PrintHex
// 2787   Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
        LDR      R5,??DataTable137_5
        MOVS     R0,R5
        BL       Uart_Print
// 2788   u8TempFine = Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2789   u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2790   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2791   if(u8TempFine > 0X01)
        CMP      R6,#+2
        BLT      ??fine_tune_adjust_0
// 2792   {
// 2793     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??fine_tune_adjust_1
// 2794   }
// 2795   else
// 2796   {
// 2797     u8CurrentFineTune = (u8TempFine << 4);
??fine_tune_adjust_0:
        LSLS     R0,R6,#+4
        STRB     R0,[R4, #+25]
// 2798     u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+25]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+25]
// 2799     set_xtal_fine_tune(u8CurrentFineTune); 
        LDR      R1,??DataTable136_1  ;; 0x80003040
        LDR      R2,[R1, #+0]
        LDR      R3,??DataTable137_6  ;; 0xffe0ffff
        ANDS     R3,R3,R2
        LSLS     R0,R0,#+16
        MOVS     R2,#+248
        LSLS     R2,R2,#+13       ;; #+2031616
        ANDS     R2,R2,R0
        ORRS     R2,R2,R3
        STR      R2,[R1, #+0]
// 2800   }
// 2801 
// 2802 }
??fine_tune_adjust_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134:
        DATA32
        DC32     u8RangeExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_117:
        DC8 "\015\012\012Fine Tune Adjustment\012\012\012"
        DATA8
        DC8 0
// 2803 /************************************************************************************
// 2804 * PrintTestMode
// 2805 *
// 2806 * This function prints the Test Mode name received as parameter.
// 2807 *
// 2808 *********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2809 void PrintTestMode(Test_Mode_t TestModeValue)
// 2810 {
PrintTestMode:
        MOVS     R1,R0
        LDR      R0,??DataTable137_7
        CMP      R1,#+6
        BLS      ??PrintTestMode_1
        BX       LR
??PrintTestMode_1:
        PUSH     {R7,LR}
// 2811   switch(TestModeValue)
        ADR      R2,??PrintTestMode_0
        LDRB     R2,[R2, R1]
        ADD      PC,PC,R2
        Nop      
        DATA
??PrintTestMode_0:
        DC8      0x8,0x1E,0x18,0x1C
        DC8      0x10,0x14,0xC,0x0
        THUMB
// 2812   {
// 2813     case SMAC_TEST_MODE_IDLE:
// 2814       Uart_Print("IDLE MODE\n");
??PrintTestMode_2:
        ADR.N    R0,?_119
        B        ??PrintTestMode_3
// 2815       break;
// 2816 	  
// 2817     case SMAC_TEST_MODE_CONTINUOUS_RX:
// 2818       Uart_Print("CONTINUOUS RECEPTION\n");
??PrintTestMode_4:
        ADR.N    R0,?_120
        B        ??PrintTestMode_3
// 2819       break;
// 2820 	  
// 2821     case SMAC_TEST_MODE_PULSE_PRBS9_TX:
// 2822       Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
// 2823       break;
// 2824 	  
// 2825     case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
// 2826       Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
??PrintTestMode_5:
        ADDS     R0,R0,#+40
        B        ??PrintTestMode_3
// 2827       break;       
// 2828 	  
// 2829     case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
// 2830       Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
??PrintTestMode_6:
        ADDS     R0,R0,#+76
        B        ??PrintTestMode_3
// 2831       break;      
// 2832 	  
// 2833     case SMAC_TEST_MODE_PER_TX:
// 2834       Uart_Print("PACKET ERROR RATE TEST\n");
??PrintTestMode_7:
        ADR.N    R0,?_121
        B        ??PrintTestMode_3
// 2835       break;
// 2836 	  
// 2837     case SMAC_TEST_MODE_RANGE_TX:
// 2838       Uart_Print("RANGE TEST\n");
??PrintTestMode_8:
        ADR.N    R0,?_122
??PrintTestMode_3:
        BL       Uart_Print
// 2839       break;
// 2840 	  
// 2841     default:
// 2842       break;
// 2843   }
// 2844 }
??PrintTestMode_9:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135:
        DATA32
        DC32     c_test_num+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_119:
        DC8 "IDLE MODE\012"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_120:
        DC8 "CONTINUOUS RECEPTION\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_121:
        DC8 "PACKET ERROR RATE TEST\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_122:
        DC8 "RANGE TEST\012"
// 2845 
// 2846 /************************************************************************************
// 2847 * PrintChannel
// 2848 *
// 2849 * This function prints the Channel number received as parameter.
// 2850 *
// 2851 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2852 void PrintChannel(channel_num_t u8ChannelValue)
// 2853 {
PrintChannel:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2854   if( TOTAL_CHANN > u8ChannelValue ){
        CMP      R0,#+16
        BGE      ??PrintChannel_0
// 2855     u8ChannelValue += 11;
// 2856     Uart_Print("CHANNEL ");
        ADR.N    R0,?_123
        BL       Uart_Print
// 2857     Uart_PrintByteDec(u8ChannelValue);
        ADDS     R4,R4,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       Uart_PrintByteDec
// 2858     Uart_Print("\n");
        ADR      R0,??DataTable138  ;; "\n"
        BL       Uart_Print
// 2859   }
// 2860 }
??PrintChannel_0:
        BL       ??Subroutine4_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_1:
        DATA32
        DC32     0x80003040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_123:
        DC8 "CHANNEL "
        DC8 0, 0, 0
// 2861 
// 2862 /************************************************************************************
// 2863 * LEDs_LQI_indicator
// 2864 *
// 2865 * This function show the four possible LQI adjusted values using three LEDs.
// 2866 *
// 2867 ************************************************************************************/
// 2868 #if (gLEDSupported_d)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2869 void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
// 2870 {
LEDs_LQI_indication:
        PUSH     {R3-R5,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
// 2871   uint8_t LEDs_state[4][4]={gFarRange_c,LED_OFF,LED_OFF,LED_OFF,
// 2872                             gMediumRange_c,LED_ON,LED_OFF,LED_OFF,
// 2873                             gNearRange_c,LED_ON,LED_ON,LED_OFF,
// 2874                             gVeryNearRange_c,LED_ON,LED_ON,LED_ON
// 2875                            };
        MOV      R0,SP
        ADR.N    R1,?_124
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
// 2876   Gpio_SetPinData(LED2_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
        LSLS     R4,R4,#+2
        MOV      R5,SP
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+24
        BL       Gpio_SetPinData
// 2877   Gpio_SetPinData(LED3_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+2]
        MOVS     R0,#+25
        BL       Gpio_SetPinData
// 2878   Gpio_SetPinData(LED4_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+44
        BL       Gpio_SetPinData
// 2879 }
        ADD      SP,SP,#+20
        POP      {R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_124:
        DATA8
        DC8 0, 0, 0, 0, 1, 1, 0, 0, 2, 1, 1, 0, 3, 1, 1, 1
// 2880 #endif
// 2881 
// 2882 /************************************************************************************
// 2883 * TMR_Init
// 2884 *
// 2885 * This function configurates the timer to generate a output frequency at 2 MHz.
// 2886 * 
// 2887 **********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2888 void TMR_Init(void)
// 2889 {              
TMR_Init:
        PUSH     {R1-R5,LR}
// 2890   TmrConfig_t pConfig;
// 2891   TmrStatusCtrl_t pStatusCtrl;
// 2892   TmrComparatorStatusCtrl_t pCompStatusCtrl;
// 2893   
// 2894   TmrInit();
        BL       TmrInit
// 2895   GpioTmrInit();
        BL       GpioTmrInit
// 2896   TmrEnable(gTmr1_c);
        MOVS     R0,#+1
        BL       TmrEnable
// 2897  
// 2898   SetLoadVal(gTmr1_c, 0x00);
        LDR      R0,??DataTable138_1  ;; 0x80007020
        MOVS     R4,#+0
        STRH     R4,[R0, #+6]
// 2899   SetCntrVal(gTmr1_c, 0x00);
        STRH     R4,[R0, #+10]
// 2900   SetCompLoad1Val(gTmr1_c, 0x05);         
        MOVS     R5,#+5
        STRH     R5,[R0, #+16]
// 2901   SetCompLoad2Val(gTmr1_c, 0x05);        
        STRH     R5,[R0, #+18]
// 2902  
// 2903   SetComp1Val(gTmr1_c, 0x05);  
        STRH     R5,[R0, #+0]
// 2904   SetComp2Val(gTmr1_c, 0x05);              
        STRH     R5,[R0, #+2]
// 2905      
// 2906   TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       TmrSetMode
// 2907 
// 2908   pConfig.tmrOutputMode = gTmrToggleOF_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 2909   pConfig.tmrCoInit = FALSE;
        STRB     R4,[R0, #+1]
// 2910   pConfig.tmrCntDir = FALSE;
        STRB     R4,[R0, #+2]
// 2911   pConfig.tmrCntLen = TRUE;
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
// 2912   pConfig.tmrCntOnce = FALSE;
        STRH     R4,[R0, #+4]
// 2913   pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
// 2914   pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
// 2915   TmrSetConfig(gTmr1_c, &pConfig);  
        ADD      R1,SP,#+4
        MOVS     R0,#+1
        BL       TmrSetConfig
// 2916 
// 2917   pCompStatusCtrl.uintValue =0x06;
        MOVS     R0,#+6
        MOV      R1,SP
        STRH     R0,[R1, #+0]
// 2918   TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
        MOVS     R0,#+1
        BL       TmrSetCompStatusControl
// 2919  
// 2920   pStatusCtrl.uintValue = 0x05;
        MOV      R0,SP
        STRH     R5,[R0, #+2]
// 2921   TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
        ADD      R1,SP,#+0
        ADDS     R1,R1,#+2
        MOVS     R0,#+1
        BL       TmrSetStatusControl
// 2922 }
        POP      {R0-R2,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137:
        DATA32
        DC32     0xfdffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_1:
        DATA32
        DC32     ?_116

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_2:
        DATA32
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_3:
        DATA32
        DC32     0xfe1fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_4:
        DATA32
        DC32     ?_118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_5:
        DATA32
        DC32     ?_42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_6:
        DATA32
        DC32     0xffe0ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_7:
        DATA32
        DC32     ?_44
// 2923 
// 2924 /************************************************************************************
// 2925 * GpioTmrInit
// 2926 *
// 2927 * This function initializate the Timer´s gpios.
// 2928 *
// 2929 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2930 void GpioTmrInit(void)
// 2931 {
GpioTmrInit:
        PUSH     {R7,LR}
// 2932   Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
// 2933   Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
// 2934   Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinFunction
// 2935   Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
// 2936 }
        POP      {R0,R3}
        BX       R3               ;; return
// 2937 
// 2938 /************************************************************************************
// 2939 * display_config function
// 2940 *
// 2941 * This function prints an ASCII Freescale's logo.
// 2942 ************************************************************************************/
// 2943 #if INTERFACE_TYPE == SERIAL
// 2944 static void print_freescale_logo(void)
// 2945 {
// 2946   Uart_Print("\n\r\n\r\n\r      #\n");
// 2947   Uart_Print("\r     ###\n");
// 2948   Uart_Print("\r    ###  *\n");
// 2949   Uart_Print("\r     #  ***\n");
// 2950   Uart_Print("\r       ***  #\n");
// 2951   Uart_Print("\r        *  ###\n");
// 2952   Uart_Print("\r          ###\n");
// 2953   Uart_Print("\r        *  #\n");
// 2954   Uart_Print("\r       ***\n");
// 2955   Uart_Print("\r      ***  #\n");
// 2956   Uart_Print("\r    #  *  ###\n");
// 2957   Uart_Print("\r   ###   ###\n");
// 2958   Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
// 2959   Uart_Print("\r   #  ***\n");
// 2960   Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
// 2961   Uart_Print("\r   #  *\n");
// 2962   Uart_Print("\r  ###               2 0 1 1\n");
// 2963   Uart_Print("\r ###\n");
// 2964   Uart_Print("\r  #           Press any key to continue...\n\n");
// 2965 }
// 2966 #endif
// 2967 
// 2968 /*******************************************************************************
// 2969 * DisplayFreescaleLogo
// 2970 *
// 2971 * This function displays the Freescale Logo in the LCD.
// 2972 *******************************************************************************/
// 2973 #if (gLCDSupported_d)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2974 void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
// 2975 {
DisplayFreescaleLogo:
        PUSH     {R1-R7,LR}
// 2976   uint8_t u8Count;
// 2977   uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
        MOV      R2,SP
        LDR      R3,??DataTable139
        LDM      R3!,{R4-R6}
        STM      R2!,{R4-R6}
// 2978   uint8_t i;
// 2979   
// 2980   for(i=0; i < 8; i++)
        MOVS     R6,#+0
        MOVS     R5,R0
        MOVS     R4,R1
// 2981   {  
// 2982     LCD_WritePixel(xStartCoord, yStartCoord, 1);
??DisplayFreescaleLogo_0:
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2983     LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
        ADDS     R7,R4,#+1
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2984     LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2985     LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2986     LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
        ADDS     R7,R4,#+2
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2987     LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2988     LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2989     LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2990     LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2991     LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
        ADDS     R7,R4,#+3
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2992     LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2993     LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2994     LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2995     LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2996     LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+4
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2997     LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2998     LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2999     LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3000     LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3001     LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3002     LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3003     LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3004     LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  
        ADDS     R4,R4,#+6
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3005 
// 3006     
// 3007    if(i == 2 || i == 4 || i == 6)
        CMP      R6,#+2
        BEQ      ??DisplayFreescaleLogo_1
        CMP      R6,#+4
        BEQ      ??DisplayFreescaleLogo_2
        CMP      R6,#+6
        BNE      ??DisplayFreescaleLogo_3
// 3008    {
// 3009      if(i == 4)
// 3010      {
// 3011        yStartCoord += 3;
// 3012        xStartCoord -= 9;
// 3013      }
// 3014      else
// 3015      {
// 3016        yStartCoord += 6;
// 3017        xStartCoord -= 6;
??DisplayFreescaleLogo_1:
        SUBS     R5,R5,#+6
        B        ??DisplayFreescaleLogo_4
// 3018      }
??DisplayFreescaleLogo_2:
        MOVS     R4,R7
        SUBS     R5,R5,#+9
        B        ??DisplayFreescaleLogo_4
// 3019    }
// 3020    else
// 3021    {
// 3022     yStartCoord += 3;
??DisplayFreescaleLogo_3:
        MOVS     R4,R7
// 3023     xStartCoord += 4;
        ADDS     R5,R5,#+4
// 3024 
// 3025    }
// 3026   }
??DisplayFreescaleLogo_4:
        ADDS     R6,R6,#+1
        CMP      R6,#+8
        BGE      .+4
        B        ??DisplayFreescaleLogo_0
// 3027  (void)LCD_SetFont(gLCD_VerdanaFont_c);
        MOVS     R0,#+1
        BL       LCD_SetFont
// 3028   yStartCoord -= 20;
        SUBS     R4,R4,#+20
// 3029   xStartCoord += 15;
        ADDS     R5,R5,#+15
// 3030   
// 3031   for(u8Count = 0; u8Count < 9; u8Count++)
        MOVS     R6,R4
        MOVS     R4,#+0
// 3032   {
// 3033     LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
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
// 3034     xStartCoord += 6;
        ADDS     R5,R5,#+6
// 3035   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLE      ??DisplayFreescaleLogo_5
// 3036 
// 3037  (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
// 3038   yStartCoord -= 20;
// 3039   xStartCoord += 15;
// 3040 }
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138:
        DATA8
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138_1:
        DATA32
        DC32     0x80007020
// 3041 #endif
// 3042 
// 3043 
// 3044 #if (gLCDSupported_d)
// 3045   

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3046 void DisplayTestMode(ConfigOption_t u8ConfigOption)
// 3047 {
DisplayTestMode:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
// 3048   uint8_t line = 0;
// 3049   uint8_t i;
// 3050   ClearDisplay();
        BL       ClearDisplay
// 3051   LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");
        LDR      R1,??DataTable139_1
        MOVS     R0,#+0
        BL       LCD_WriteString_NormalFont
// 3052 
// 3053   for(i = 0; i< 130 ; i++)
        MOVS     R4,#+0
// 3054   {
// 3055     LCD_WritePixel(i,10,1);  
??DisplayTestMode_0:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3056     LCD_WritePixel(i,11,1);  
        MOVS     R2,#+1
        MOVS     R1,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3057   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+130
        BLT      ??DisplayTestMode_0
// 3058   line++;
// 3059   
// 3060 
// 3061   switch(u8ConfigOption)
        LDR      R6,??DataTable139_2
        LDR      R4,??DataTable139_3
        CMP      R5,#+0
        BEQ      ??DisplayTestMode_1
        CMP      R5,#+2
        BEQ      ??DisplayTestMode_2
        BCC      ??DisplayTestMode_3
        B        ??DisplayTestMode_4
// 3062   {
// 3063     case gChannel_c:
// 3064       line++;
// 3065       LCD_WriteString_NormalFont(line," Option: Channel");
??DisplayTestMode_1:
        LDR      R1,??DataTable139_4
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3066       line++;
// 3067       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3068       line++;
// 3069       LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
        LDR      R1,??DataTable139_5
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3070       line++;
// 3071       LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
        LDR      R1,??DataTable139_6
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3072       LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable139_7
        B.N      ??DisplayTestMode_5
// 3073     break;
// 3074     
// 3075     case gPower_c:
// 3076       line++;
// 3077       LCD_WriteString_NormalFont(line," Option: Power");
??DisplayTestMode_3:
        LDR      R1,??DataTable139_8
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3078       line++;
// 3079       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3080       line++;
// 3081       LCD_WriteString_NormalFont(line,"  SW2 Power Up");
        LDR      R1,??DataTable139_9
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3082       line++;
// 3083       LCD_WriteString_NormalFont(line,"  SW3 Power Down");
        LDR      R1,??DataTable139_10
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3084       LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable139_11
??DisplayTestMode_5:
        BL       LCD_WriteStringValue
// 3085     break;
        B        ??DisplayTestMode_4
// 3086     
// 3087     case gRxTestMode_c:
// 3088       line++;
// 3089       
// 3090       if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
??DisplayTestMode_2:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      ??DisplayTestMode_6
// 3091       {
// 3092         LCD_WriteString_NormalFont(line," Option: Test");
        LDR      R1,??DataTable139_12
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3093         line++;
// 3094         LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3095         line++;
// 3096         LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        LDR      R1,??DataTable139_13
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3097         line++;
// 3098         LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        LDR      R1,??DataTable139_14
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3099         line++;
        MOVS     R5,#+6
// 3100         LCD_WriteString_NormalFont(7,"Idle Mode");
        LDR      R1,??DataTable139_15
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 3101       }
// 3102     /* RX options */  
// 3103       /*
// 3104       if(SMAC_CONTINUOUS_RX == u8CurrentMode)
// 3105       {
// 3106         LCD_WriteString_NormalFont(line," Continuous Reception");
// 3107       } 
// 3108       */
// 3109       if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
??DisplayTestMode_6:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BNE      ??DisplayTestMode_7
// 3110       {
// 3111         LCD_WriteString_NormalFont(line,"PER Test running");
        ADR.N    R1,?_138
        MOVS     R0,R5
        BL       LCD_WriteString_NormalFont
// 3112         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3113         LCD_WriteString_NormalFont(line,"SW4 for PER TX");
        LDR      R1,??DataTable139_16
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3114       }  
// 3115 
// 3116       if(SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??DisplayTestMode_7:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+3
        BNE      ??DisplayTestMode_8
// 3117       {
// 3118         LCD_WriteString_NormalFont(line,"Range Test running");
        Nop      
        ADR.N    R1,?_140
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3119         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3120         LCD_WriteString_NormalFont(line,"SW4 for Range TX");
        ADR.N    R1,?_141
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3121       }  
// 3122       
// 3123     /* TX options */  
// 3124       if(SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode)
??DisplayTestMode_8:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BNE      ??DisplayTestMode_9
// 3125       {
// 3126         LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
        ADR.N    R1,?_142
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3127       }            
// 3128       if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
??DisplayTestMode_9:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+4
        BNE      ??DisplayTestMode_10
// 3129       {
// 3130         LCD_WriteString_NormalFont(line," Cont TX Mod ");
        ADR.N    R1,?_143
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3131       }              
// 3132       if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
??DisplayTestMode_10:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+5
        BNE      ??DisplayTestMode_4
// 3133       {
// 3134         LCD_WriteString_NormalFont(line," Cont TX No Mod ");
        ADR.N    R1,?_144
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3135       }        
// 3136       
// 3137     break;
// 3138   
// 3139     default:
// 3140     break;
// 3141   }
// 3142 }
??DisplayTestMode_4:
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
        DC32     ?_126

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_2:
        DATA32
        DC32     ?_128

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_3:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_4:
        DATA32
        DC32     ?_127

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_5:
        DATA32
        DC32     ?_129

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_6:
        DATA32
        DC32     ?_130

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_7:
        DATA32
        DC32     ?_56

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_8:
        DATA32
        DC32     ?_131

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_9:
        DATA32
        DC32     ?_132

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_10:
        DATA32
        DC32     ?_133

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_11:
        DATA32
        DC32     ?_57

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_12:
        DATA32
        DC32     ?_134

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_13:
        DATA32
        DC32     ?_135

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_14:
        DATA32
        DC32     ?_136

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_15:
        DATA32
        DC32     ?_137

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_16:
        DATA32
        DC32     ?_139

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_138:
        DC8 "PER Test running"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_140:
        DC8 "Range Test running"
        DATA8
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_141:
        DC8 "SW4 for Range TX"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_142:
        DC8 " PRBS9 Cont. TX "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_143:
        DC8 " Cont TX Mod "
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_144:
        DC8 " Cont TX No Mod "
        DC8 0, 0, 0
// 3143 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3144 void ClearDisplay(void)
// 3145 {
ClearDisplay:
        PUSH     {R3-R5,LR}
// 3146   uint8_t u8Line;
// 3147   for(u8Line = 0; u8Line < 9; u8Line++)
        MOVS     R5,#+0
        ADR.N    R4,?_47
// 3148   {
// 3149     LCD_WriteString_NormalFont(u8Line,"                     ");
??ClearDisplay_0:
        MOVS     R1,R4
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3150   }
        ADDS     R5,R5,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+9
        BLT      ??ClearDisplay_0
// 3151 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_47:
        DC8 "                     "
        DATA16
        DC8 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 3152 
// 3153 #endif
// 3154 
// 3155 /************************************************************************************
// 3156 *************************************************************************************
// 3157 * Private Debug stuff
// 3158 *************************************************************************************
// 3159 ************************************************************************************/
// 3160 
// 3161 
// 
//    46 bytes in section .bss
//   504 bytes in section .data
// 3 242 bytes in section .rodata
// 8 062 bytes in section .text
// 
// 8 062 bytes of CODE  memory
// 3 242 bytes of CONST memory
//   550 bytes of DATA  memory
//
//Errors: none
//Warnings: none
