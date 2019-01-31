///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  16:32:17
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWCD15.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c" -D NDEBUG -D F24MHZ
//        -D SECURITY_ENABLED -D MC13226Included_d=0 --preprocess=cs
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
?_70:
        DC8 "\015      2 - CHANNEL 13"
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
?_74:
        DC8 "\015      4 - CHANNEL 15"
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
?_78:
        DC8 "\015      6 - CHANNEL 17"
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
?_104:
        DC8 "\015\012Please select an option:  "
        DC8 0, 0, 0

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
?_141:
        DC8 "SW4 for Range TX"
        DC8 0, 0, 0
// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Application\Source\connectivity_test_rx.c
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
//  212     u8CurrentMode = SMAC_TEST_MODE_IDLE; \ 
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
        PUSH     {R4,LR}
//  481   set_initial_option_values();
        MOVS     R0,#+0
        LDR      R4,??DataTable105_1
        STRH     R0,[R4, #+20]
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
//  548   DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
//  549 #endif
//  550   
//  551  (void)MLMEPAOutputAdjust(u8TestModePower);
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
//  552   MLMETestMode(u8CurrentMode); 
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
//  553   MLMESetChannelRequest(u8TestModeChannel);
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
//  554 
//  555 #if (gLCDSupported_d == FALSE || INTERFACE_TYPE == SERIAL)
//  556     TMR_Init(); 
//  557 #endif
//  558     
//  559 }
        BL       ??Subroutine4_0
//  560 
//  561 /************************************************************************************
//  562 * test_mode_rx_cb
//  563 *
//  564 * This function is the callback for the reception message, every time that a message 
//  565 * is received the function is executed and it turns on a flag to indicate that one
//  566 * message was received.
//  567 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  568 void test_mode_rx_cb (void)
//  569 {
//  570   if(TRUE == gRadioEvntFlags.Bits.data_indication_flag)
test_mode_rx_cb:
        LDR      R0,??DataTable105_11
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LSRS     R3,R1,#+4
        ANDS     R3,R3,R2
        BEQ      ??test_mode_rx_cb_0
//  571   {
//  572     gRadioEvntFlags.Bits.data_indication_flag = FALSE;
        MOVS     R3,#+16
        BICS     R1,R1,R3
        STR      R1,[R0, #+0]
//  573     gbDataIndicationFlag = TRUE;
        LDR      R0,??DataTable106
        STRB     R2,[R0, #+27]
//  574   }
//  575   else
//  576   {
//  577     /* Do nothing */
//  578   }
//  579 }
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
//  580 
//  581 /************************************************************************************
//  582 * process_incoming_msg
//  583 *
//  584 * This function process the received messages.
//  585 *
//  586 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  587 static void process_incoming_msg(void)
//  588 {
process_incoming_msg:
        PUSH     {R1-R7,LR}
//  589   
//  590 #if INTERFACE_TYPE == SERIAL        
//  591   uint8_t i;
//  592   four_digit_bcd_t tmp = {0,0,0,0,0,0};
//  593 #endif
//  594 #if INTERFACE_TYPE == MANUAL 
//  595   link_quality_value_t u8LQIAdjusted;
//  596 #endif  
//  597   uint8_t u8MsgLen;
//  598   uint8_t * ptrRcvMsg;
//  599   uint8_t u8Lqi;
//  600 
//  601   
//  602   uint16_t u16SeqNum;
//  603   static uint16_t u16MsgCounter = 0;
//  604   static uint16_t u16TotalMsg = 10;
//  605   
//  606 #if (INTERFACE_TYPE == MANUAL) && (gLCDSupported_d)     
//  607   static uint8_t u8State = 0;
//  608 #endif
//  609   
//  610 #if OTAP_ENABLED == TRUE  
//  611   OTAP_data_indication_execute();
//  612   if(!gbOtapExecute)
//  613 #endif
//  614     
//  615   {
//  616     if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
        LDR      R4,??DataTable106_1
        LDR      R5,??DataTable106
        LDRB     R0,[R5, #+20]
        CMP      R0,#+2
        BNE      ??process_incoming_msg_0
//  617     {
//  618       u8MsgLen = sizeof(ku8ExpectedString);
        MOVS     R6,#+16
//  619       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[5]);
//  620       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8ExpectedString, u8MsgLen))
        MOVS     R2,#+16
        LDR      R1,??DataTable107
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+7
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_1
//  621       {
//  622   #if INTERFACE_TYPE == SERIAL        
//  623         uint8_t u8Lqi;
//  624   #endif
//  625         u16SeqNum = (RX_msg.pu8Buffer->u8Data[3] << 8);
//  626         u16SeqNum |= RX_msg.pu8Buffer->u8Data[4];
//  627         if(u16SeqNum < u16TotalMsg)
        LDR      R0,[R5, #+8]
        LDRB     R1,[R0, #+5]
        LSLS     R1,R1,#+8
        LDRB     R2,[R0, #+6]
        ORRS     R1,R1,R2
        LDRH     R2,[R4, #+22]
        CMP      R1,R2
        BCS      ??process_incoming_msg_2
//  628         {
//  629           u16TotalMsg = (RX_msg.pu8Buffer->u8Data[1] << 8);
//  630           u16TotalMsg |= RX_msg.pu8Buffer->u8Data[2];    
        LDRB     R1,[R0, #+3]
        LSLS     R1,R1,#+8
        LDRB     R0,[R0, #+4]
        ORRS     R1,R1,R0
        STRH     R1,[R4, #+22]
//  631         }
//  632         
//  633         u16MsgCounter++;
??process_incoming_msg_2:
        LDRH     R0,[R4, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+20]
//  634         
//  635   #if INTERFACE_TYPE == SERIAL        
//  636         Uart_Print("\r\nN:");
//  637         tmp = convert_2_bcd(u16SeqNum);
//  638         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  639         Uart_Print(" L:");
//  640         tmp = convert_2_bcd(u8MsgLen);
//  641         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  642         Uart_Print(" LQI=-");
//  643         (void)MLMELinkQuality(&u8Lqi);
//  644         u8Lqi = (u8Lqi / 3);
//  645         if(100 >= u8Lqi)
//  646         {  
//  647           u8Lqi = 100 - u8Lqi;
//  648         }
//  649         else
//  650         {
//  651           u8Lqi = u8Lqi - 100;
//  652         }
//  653         tmp = convert_2_bcd(u8Lqi);
//  654         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  655         Uart_Print(" CRC=1 Data=");
//  656       
//  657         for(i=5; i<21; i++)
//  658         {
//  659           Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  660           ((RX_msg.pu8Buffer)->u8Data[i]) = 0;
//  661         }
//  662    #endif 
//  663        
//  664         
//  665 //  #if INTERFACE_TYPE == MANUAL        
//  666         LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  667 //  #endif      
//  668       }
//  669       
//  670       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  671       if( (TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8DoneStr, 4)) &&
//  672         (0 != u16MsgCounter))
??process_incoming_msg_1:
        MOVS     R2,#+4
        LDR      R1,??DataTable109
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
??process_incoming_msg_0:
        BEQ      .+4
        B        ??process_incoming_msg_3
        LDRH     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      .+4
        B        ??process_incoming_msg_3
//  673       {
//  674 
//  675   #if INTERFACE_TYPE == SERIAL 
//  676         tmp = convert_2_bcd(u16MsgCounter);
//  677         Uart_Print("\r\n\nGood:	");
//  678         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  679         Uart_Print("/");
//  680 
//  681         tmp = convert_2_bcd(u16TotalMsg);
//  682         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  683         Uart_Print("\r\n\nHalt\n");
//  684   #endif 
//  685 
//  686   #if INTERFACE_TYPE == MANUAL
//  687         u16MsgCounter--;
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+20]
//  688         c_test_num = convert_2_bcd(u16MsgCounter);
        MOV      R1,SP
        STRH     R0,[R1, #+6]
        LDR      R0,??DataTable110
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        LDR      R0,??DataTable110_1  ;; 0x2710
        CMP      R7,R0
        BGE      ??process_incoming_msg_4
        MOVS     R1,R7
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        CMP      R7,R0
        BLT      ??process_incoming_msg_5
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
??process_incoming_msg_5:
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        CMP      R7,#+100
        BLT      ??process_incoming_msg_6
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
??process_incoming_msg_6:
        MOVS     R7,#+15
        LDRH     R0,[R0, #+6]
        CMP      R0,#+10
        BLT      ??process_incoming_msg_7
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
??process_incoming_msg_7:
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        MOVS     R2,#+240
        ANDS     R2,R2,R0
        ANDS     R7,R7,R1
        ORRS     R7,R7,R2
        MOV      R0,SP
        STRB     R7,[R0, #+8]
??process_incoming_msg_4:
        LDR      R0,[SP, #+8]
        STR      R0,[R5, #+0]
//  689         
//  690 #if (gLCDSupported_d)      
//  691 
//  692         LCD_WriteString_NormalFont(4,"                     ");
        LDR      R1,??DataTable110_2
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
//  693         LCD_WriteStringValue("             /",(u16TotalMsg),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDRH     R1,[R4, #+22]
        LDR      R0,??DataTable110_3
        BL       LCD_WriteStringValue
//  694 
//  695         if(100 > u16MsgCounter)
        LDRH     R1,[R4, #+20]
        CMP      R1,#+100
        BGE      ??process_incoming_msg_8
//  696         {
//  697           LCD_WriteStringValue("    Good:  ",(u16MsgCounter),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable110_4
        B        ??process_incoming_msg_9
//  698         }
//  699         else if(1000 > u16MsgCounter)
??process_incoming_msg_8:
        MOVS     R2,#+250
        LSLS     R2,R2,#+2        ;; #+1000
        CMP      R1,R2
        BGE      ??process_incoming_msg_10
//  700         {
//  701           LCD_WriteStringValue("    Good: ",(u16MsgCounter),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable110_5
        B        ??process_incoming_msg_9
//  702         }
//  703         else
//  704         {
//  705           LCD_WriteStringValue("    Good:",(u16MsgCounter),4,gLCD_DecFormat_c);
??process_incoming_msg_10:
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable110_6
??process_incoming_msg_9:
        BL       LCD_WriteStringValue
//  706         }  
//  707         LCD_WriteStringValue("Max LQI:",(maxLQI),3,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+3
        LDRB     R1,[R4, #+16]
        LDR      R0,??DataTable110_7
        BL       LCD_WriteStringValue
//  708         LCD_WriteStringValue("Min LQI:",(minLQI),3,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+3
        LDRB     R1,[R4, #+17]
        LDR      R0,??DataTable110_8
        BL       LCD_WriteStringValue
//  709           maxLQI=0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
//  710           minLQI=255;
        MOVS     R0,#+255
        STRB     R0,[R4, #+17]
//  711           
//  712         LCD_WriteString_NormalFont(7," SW4 Start Listening ");
        LDR      R1,??DataTable110_9
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
//  713   #endif         
//  714 
//  715   #endif      
//  716         u16MsgCounter = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+20]
//  717         gu32PerRxEvents |= PER_DONE_MSG_EVNT;
        LDR      R0,[R5, #+44]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        STR      R1,[R5, #+44]
//  718       }
//  719     }
//  720   
//  721     if(SMAC_CONTINUOUS_RX == u8CurrentMode)
??process_incoming_msg_3:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+1
        BNE      ??process_incoming_msg_11
//  722     { 
//  723       u8MsgLen = RX_msg.u8BufSize;
        LDRB     R6,[R5, #+12]
//  724   #if INTERFACE_TYPE == SERIAL
//  725       LED_ToggleLed(LED1);
//  726       Uart_Print("\r\n");
//  727       Uart_Print("Received Packet:");
//  728       for(i=1; i < u8MsgLen ; i++)
//  729       {
//  730         Uart_Print("0x");
//  731         Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  732         (RX_msg.pu8Buffer)->u8Data[i] = 0;
//  733         Uart_Print(" ");
//  734       }
//  735       Uart_Print("\n");
//  736   #endif 
//  737 
//  738 #if INTERFACE_TYPE == MANUAL && gLCDSupported_d
//  739       if(2 > u8State)
        LDRB     R0,[R4, #+18]
        ADDS     R1,R0,#+1
        CMP      R0,#+1
        BGT      ??process_incoming_msg_12
//  740       {
//  741         u8State++;
        STRB     R1,[R4, #+18]
//  742         LCD_DrawIcon(50,4,u8RxIcon1_c);
        MOVS     R0,#+156
        B.N      ??process_incoming_msg_13
//  743       }
//  744       else if(4 > u8State)
??process_incoming_msg_12:
        CMP      R0,#+4
        BGE      ??process_incoming_msg_14
//  745       {
//  746         u8State++;     
        STRB     R1,[R4, #+18]
//  747         LCD_DrawIcon(50,4,u8RxIcon2_c);
        MOVS     R0,#+192
??process_incoming_msg_13:
        LSLS     R0,R0,#+1        ;; #+384
        ADDS     R2,R4,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       LCD_DrawIcon
        B        ??process_incoming_msg_15
//  748       }
//  749       else
//  750       {
//  751         u8State = 0;
??process_incoming_msg_14:
        MOVS     R0,#+0
        STRB     R0,[R4, #+18]
//  752       }
//  753 #endif
//  754         LED_ToggleLed(LED1); 
??process_incoming_msg_15:
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  755     }  
//  756     
//  757     if( SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??process_incoming_msg_11:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_16
//  758     {
//  759       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  760       u8MsgLen = sizeof(u8RangeExpectedString);
        MOVS     R6,#+10
//  761   
//  762   #if SMAC_FEATURE_SECURITY ==  TRUE
//  763       {
//  764         (void)DecipherMsgU8(&(RX_msg.pu8Buffer->u8Data[1]), 
//  765                             (RX_msg.u8BufSize));
//  766       }
//  767   #endif
//  768   
//  769       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
        MOVS     R2,#+10
        LDR      R1,??DataTable110_10
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_16
//  770       {  
//  771         u8Lqi = 0;
        MOVS     R7,#+0
        MOV      R1,SP
        STRB     R7,[R1, #+4]
//  772         gu8ValidRangePacket = TRUE;
        STRB     R0,[R5, #+29]
//  773         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+4
        BL       MLMELinkQuality
//  774         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  775         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGT      ??process_incoming_msg_17
//  776         {  
//  777           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_18
//  778         }
//  779         else
//  780         {
//  781           u8Lqi = u8Lqi - 100;
??process_incoming_msg_17:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+100
??process_incoming_msg_18:
        STRB     R0,[R1, #+4]
//  782         }
//  783    
//  784   #if INTERFACE_TYPE == MANUAL      
//  785         u8LQIAdjusted = adjust_LQI(u8Lqi);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        BL       adjust_LQI
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  786   #endif      
//  787 #if (gLCDSupported_d)
//  788         LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        MOV      R0,SP
        LDRB     R1,[R0, #+4]
        LDR      R0,??DataTable110_11
        BL       LCD_WriteStringValue
//  789           if(u8Lqi <= LQI_LIM4)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+41
        BGE      ??process_incoming_msg_19
//  790         {
//  791           LCD_DrawIcon(80,3,u8LQIIcon4_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+24
        B        ??process_incoming_msg_20
//  792         }
//  793         else if(u8Lqi <= LQI_LIM3)
??process_incoming_msg_19:
        CMP      R0,#+61
        BGE      ??process_incoming_msg_21
//  794         {
//  795           LCD_DrawIcon(80,3,u8LQIIcon3_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+96
        B        ??process_incoming_msg_20
//  796         }
//  797         else if (u8Lqi <= LQI_LIM2)
??process_incoming_msg_21:
        CMP      R0,#+81
        BGE      ??process_incoming_msg_22
//  798         {
//  799           LCD_DrawIcon(80,3,u8LQIIcon2_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+168
        B        ??process_incoming_msg_20
//  800         }
//  801         else
//  802         {
//  803           LCD_DrawIcon(80,3,u8LQIIcon1_c);
??process_incoming_msg_22:
        MOVS     R2,R4
        ADDS     R2,R2,#+240
??process_incoming_msg_20:
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       LCD_DrawIcon
//  804         }
//  805      
//  806 #endif
//  807         ACK_msg.pu8Buffer->u8Data[0] = 'A';
        MOVS     R0,#+65
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+2]
//  808         ACK_msg.pu8Buffer->u8Data[1] = 'C';
        MOVS     R0,#+67
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+3]
//  809         ACK_msg.pu8Buffer->u8Data[2] = 'K';
        MOVS     R0,#+75
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+4]
//  810   
//  811   #if INTERFACE_TYPE == SERIAL
//  812         ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
//  813   #endif      
//  814   
//  815   #if INTERFACE_TYPE == MANUAL
//  816         ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
//  817   #endif      
//  818   
//  819         
//  820   #if SMAC_FEATURE_SECURITY ==  TRUE
//  821         uint8_t fill_counter;
//  822         for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
//  823         {
//  824           ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
//  825         }
//  826   
//  827         if(AES_DEFAULT_MODE != AES_CTR_MODE)
//  828         {
//  829           ACK_msg.u8BufSize = 2*BLOCK_SIZE;
//  830         }
//  831         else
//  832         {
//  833           ACK_msg.u8BufSize = BLOCK_SIZE;
//  834         }
//  835   
//  836         (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
//  837   #else
//  838           ACK_msg.pu8Buffer->u8Data[4] = '\0';
        LDR      R0,[R4, #+4]
        STRB     R7,[R0, #+6]
//  839           ACK_msg.u8BufSize = 5;
        MOVS     R0,#+5
        STRB     R0,[R4, #+8]
//  840   #endif  
//  841         
//  842               
//  843   #if INTERFACE_TYPE == SERIAL
//  844         Uart_Print("\r\n"); 
//  845         Uart_Print(" LQI=-");
//  846         tmp = convert_2_bcd(u8Lqi);
//  847         Uart_PrintHex((uint8_t *)(&tmp),1,0); 
//  848   #else
//  849     DelayMs(2);      
        MOVS     R0,#+2
        BL       DelayMs
//  850   #endif  
//  851   
//  852       
//  853        LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  854   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  855         LEDs_LQI_indication( u8LQIAdjusted); 
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        BL       LEDs_LQI_indication
//  856   #endif 
//  857       }
//  858     } 
//  859    
//  860 if(SMAC_TEST_MODE_RANGE_TX == u8CurrentMode)
??process_incoming_msg_16:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_23
//  861     u8MsgLen = 3;
        MOVS     R6,#+3
//  862     ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
//  863     {
//  864       
//  865   #if SMAC_FEATURE_SECURITY ==  TRUE
//  866     (void)DecipherMsgU8 (&(RX_msg.pu8Buffer->u8Data[0]),(RX_msg.u8BufSize));    
//  867   #endif
//  868     
//  869       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
??process_incoming_msg_23:
        LSLS     R2,R6,#+24
        LSRS     R2,R2,#+24
        ADR.N    R1,ku8AckString
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_24
//  870       {
//  871   #if (gLEDSupported_d  || INTERFACE_TYPE == SERIAL)   
//  872         uint8_t u8Lqi;
//  873         u8Lqi = RX_msg.pu8Buffer->u8Data[4];
        LDR      R0,[R5, #+8]
        LDRB     R6,[R0, #+6]
//  874   #endif
//  875         
//  876         
//  877   #if INTERFACE_TYPE == SERIAL
//  878 
//  879         Uart_Print("\r\n");   
//  880         Uart_Print(" LQI=-");
//  881         tmp = convert_2_bcd(u8Lqi);
//  882         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  883   #endif 
//  884         
//  885   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  886        Led1Toggle(); 
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  887        LEDs_LQI_indication((link_quality_value_t)u8Lqi); 
        MOVS     R0,R6
        BL       LEDs_LQI_indication
//  888        if(minLQI>u8Lqi) minLQI=u8Lqi;
        MOVS     R0,R6
        LDRB     R1,[R4, #+17]
        CMP      R0,R1
        BLS      ??process_incoming_msg_25
        MOVS     R0,R1
??process_incoming_msg_25:
        STRB     R0,[R4, #+17]
//  889        if(maxLQI<u8Lqi) maxLQI=u8Lqi;
        LDRB     R0,[R4, #+16]
        CMP      R6,R0
        BCS      ??process_incoming_msg_26
        MOVS     R6,R0
??process_incoming_msg_26:
        STRB     R6,[R4, #+16]
//  890   #endif      
//  891         gu8ValidAckPacket = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+30]
//  892       }
//  893     }     
//  894        
//  895   }
//  896 }
??process_incoming_msg_24:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_1:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ku8AckString:
        DATA8
        DC8 65, 67, 75, 0
//  897 
//  898 #if INTERFACE_TYPE == MANUAL 
//  899 
//  900 /************************************************************************************
//  901 * select_config_option_isr
//  902 *
//  903 * This function is the callback function for the KBI4 interruption, it enables only 
//  904 * a flag to indicate that the KBI interruption occurred and the current option
//  905 * to configure must increase.
//  906 *
//  907 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  908   void select_config_option_isr(void)
//  909   {
select_config_option_isr:
        PUSH     {R7,LR}
//  910     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  911     gu8TestModeEvents |= CHANGE_OPTION_CONFIG_EVENT;
        LDR      R0,??DataTable110_12
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
//  912   }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable107:
        DATA32
        DC32     ku8ExpectedString
//  913 
//  914 /************************************************************************************
//  915 * increase_config_option_isr
//  916 *
//  917 * This function turns on a flag to indicate that the KBI5 interruption occurred, 
//  918 * which is used to increase the current option value.
//  919 *
//  920 ***********************************************************************************/
//  921 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  922  void increase_config_option_isr(void)
//  923   {
increase_config_option_isr:
        PUSH     {R7,LR}
//  924     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  925     gu8TestModeEvents |= TEST_MODE_INCREASE_EVENT;
        LDR      R0,??DataTable110_12
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+1
        B.N      ?Subroutine2
//  926     gu8TestAlreadyStarted = FALSE;
//  927   }
//  928 
//  929 /************************************************************************************
//  930 * decrease_config_option_isr
//  931 *
//  932 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  933 * which is used to decrease the current option value.
//  934 *
//  935 ***********************************************************************************/
//  936 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  937   void decrease_config_option_isr(void)
//  938   {
decrease_config_option_isr:
        PUSH     {R7,LR}
//  939     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  940     gu8TestModeEvents |= TEST_MODE_DECREASE_EVENT;
        LDR      R0,??DataTable110_12
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+2
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  941     gu8TestAlreadyStarted = FALSE;    
//  942   }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
        MOVS     R1,#+0
        STRB     R1,[R0, #+31]
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable109:
        DATA32
        DC32     ku8DoneStr
//  943 
//  944 /************************************************************************************
//  945 * decrease_config_option_isr
//  946 *
//  947 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  948 * which is used to decrease the current option value.
//  949 *
//  950 ***********************************************************************************/
//  951 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  952 void start_test_isr(void)
//  953 {
start_test_isr:
        PUSH     {R7,LR}
//  954   DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  955   gu8TestModeEvents |= TEST_START_EVENT;
        LDR      R0,??DataTable110_12
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+8
        B.N      ?Subroutine2
//  956   gu8TestAlreadyStarted = FALSE;
//  957 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110:
        DATA32
        DC32     ?_58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_1:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_2:
        DATA32
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_3:
        DATA32
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_4:
        DATA32
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_5:
        DATA32
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_6:
        DATA32
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_7:
        DATA32
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_8:
        DATA32
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_9:
        DATA32
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_10:
        DATA32
        DC32     u8RangeExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_11:
        DATA32
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable110_12:
        DATA32
        DC32     c_test_num
//  958 
//  959 #endif
//  960 
//  961 /************************************************************************************
//  962 * process_test_mode_app
//  963 *
//  964 * This function process the test mode application, execute the serial or the manual
//  965 * interface code according with the selected interface type in the app_config.h file.
//  966 *
//  967 ************************************************************************************/
//  968 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  969 void process_test_mode_app(void){
process_test_mode_app:
        PUSH     {R3-R7,LR}
//  970   
//  971 #if INTERFACE_TYPE == MANUAL
//  972   FuncReturn_t tmpChange;
//  973   uint8_t u8SafeTimeOut;
//  974 #endif
//  975 
//  976   if (CHANGE_OPTION_CONFIG_EVENT & gu8TestModeEvents)
        LDR      R4,??process_test_mode_app_1
        LDRB     R0,[R4, #+28]
        MOVS     R5,#+0
        LSLS     R1,R0,#+29
        BPL      ??process_test_mode_app_2
//  977   {
//  978    clear_event(gu8TestModeEvents,CHANGE_OPTION_CONFIG_EVENT);
        MOVS     R1,#+251
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
//  979    
//  980 #if (gLCDSupported_d)
//  981    if(gRxTestMode_c <= CurrentOption)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BLT      ??process_test_mode_app_3
//  982     {
//  983       CurrentOption = gChannel_c;
        MOVS     R0,#+0
        B        ??process_test_mode_app_4
//  984     }
//  985     else
//  986     {
//  987       CurrentOption++;
??process_test_mode_app_3:
        ADDS     R0,R0,#+1
??process_test_mode_app_4:
        STRB     R0,[R4, #+23]
//  988     }
//  989 #else
//  990     if(MAX_OPTION_CONFIG <= CurrentOption)
//  991     {
//  992       CurrentOption = gChannel_c;
//  993     }
//  994     else
//  995     {
//  996       CurrentOption++;
//  997     }
//  998 #endif
//  999    
// 1000 #if (gLCDSupported_d)   
// 1001    DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1002 #endif
// 1003   }
// 1004 
// 1005   #if INTERFACE_TYPE == SERIAL
// 1006   
// 1007     switch(main_menu())
// 1008     {
// 1009 
// 1010        case ChannelAdjustment:
// 1011           channel_adjust();
// 1012           break;
// 1013         case PowerAdjustment:
// 1014           power_adjust();
// 1015           break;
// 1016         case TestAdjustment:
// 1017           tx_rx_select();
// 1018           break;
// 1019         case ClockAdjustment:  
// 1020           configure_clock_settings();
// 1021           break;
// 1022         case PreviousMenu:
// 1023           break;
// 1024         default:
// 1025           Uart_Print("  Invalid Option!!!\n");
// 1026           break;
// 1027       }
// 1028   #else 
// 1029       
// 1030   #if INTERFACE_TYPE == MANUAL
// 1031       LED_SetHex(CurrentOption);
??process_test_mode_app_2:
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
// 1032       switch(CurrentOption)
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
// 1033       {
// 1034         case gChannel_c:
// 1035           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_6:
        TST      R0,R1
        BEQ      ??process_test_mode_app_7
// 1036           {
// 1037             MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1038             DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1039             tmpChange = gFail_c;
// 1040             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1041             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LDRB     R0,[R4, #+28]
        LSLS     R1,R0,#+31
        BPL      ??process_test_mode_app_8
// 1042             {
// 1043               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        MOVS     R1,#+254
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1044               do{
// 1045                 if(MAX_CHAN_NUM <= u8TestModeChannel)
??process_test_mode_app_9:
        LDRB     R0,[R4, #+21]
        CMP      R0,#+15
        BLT      ??process_test_mode_app_10
// 1046                 {
// 1047                   u8TestModeChannel = CHANNEL11;
        MOVS     R0,#+0
        B        ??process_test_mode_app_11
// 1048                 }
// 1049                 else
// 1050                 {
// 1051                   u8TestModeChannel ++;
??process_test_mode_app_10:
        ADDS     R0,R0,#+1
??process_test_mode_app_11:
        STRB     R0,[R4, #+21]
// 1052                 }
// 1053                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1054                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1055               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_12
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLT      ??process_test_mode_app_9
// 1056              
// 1057             }
// 1058             else
// 1059             {
// 1060               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1061               do{
// 1062                 if(CHANNEL11 == u8TestModeChannel)
// 1063                 {
// 1064                   u8TestModeChannel = (channel_num_t)MAX_CHAN_NUM;
// 1065                 }
// 1066                 else
// 1067                 {
// 1068                   u8TestModeChannel --;
// 1069                 }
// 1070                 u8SafeTimeOut++;
// 1071                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1072               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
// 1073             }
// 1074 
// 1075             MLMETestMode(u8CurrentMode);
??process_test_mode_app_12:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1076 #if (gLCDSupported_d)           
// 1077             LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable111
        BL       LCD_WriteStringValue
// 1078 #endif
// 1079             LEDs_Flash(u8TestModeChannel, FLASH_DELAY);
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
// 1080  
// 1081           }
// 1082 
// 1083           break;
// 1084        
// 1085         case  gPower_c:
// 1086           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_17:
        TST      R0,R1
??process_test_mode_app_7:
        BNE      .+4
        B        ??process_test_mode_app_5
// 1087           {
// 1088             tmpChange = gFail_c;
// 1089             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1090             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_18
// 1091             {
// 1092               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1093               do{
// 1094                 if(MAX_POWER <= u8TestModePower)
??process_test_mode_app_19:
        LDRB     R0,[R4, #+22]
        CMP      R0,#+16
        BLE      ??process_test_mode_app_20
// 1095                 {
// 1096                   u8TestModePower = MIN_POWER;
        MOVS     R0,#+0
        B        ??process_test_mode_app_21
// 1097                 }
// 1098                 else
// 1099                 { 
// 1100                   u8TestModePower++;
??process_test_mode_app_20:
        ADDS     R0,R0,#+1
??process_test_mode_app_21:
        STRB     R0,[R4, #+22]
// 1101                 }
// 1102                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1103                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1104               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_22
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??process_test_mode_app_19
// 1105             }
// 1106             else
// 1107             {
// 1108               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1109   
// 1110               do{
// 1111                 if(MIN_POWER == u8TestModePower)
// 1112                 {
// 1113                   u8TestModePower = MAX_POWER;
// 1114                 }
// 1115                 else 
// 1116                 {
// 1117                   u8TestModePower--;
// 1118                 }
// 1119                 u8SafeTimeOut++;
// 1120                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1121               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
// 1122             }
// 1123 
// 1124 #if (gLCDSupported_d)          
// 1125             LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
??process_test_mode_app_22:
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable112
        BL       LCD_WriteStringValue
// 1126 #endif            
// 1127             LEDs_Flash(u8TestModePower, FLASH_DELAY);
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
// 1128           }
// 1129           break;
// 1130           
// 1131         case gRxTestMode_c:
// 1132           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_26:
        LDRB     R1,[R4, #+20]
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_27
// 1133           {
// 1134             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);           
        STRB     R7,[R4, #+28]
// 1135             if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
        CMP      R1,#+5
        BNE      ??process_test_mode_app_28
// 1136             {
// 1137               u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R5,[R4, #+20]
        B        ??process_test_mode_app_29
// 1138             }            
// 1139             else
// 1140             {
// 1141               u8CurrentMode ++;
??process_test_mode_app_28:
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+20]
        B        ??process_test_mode_app_29
// 1142             }
// 1143             MLMETestMode(u8CurrentMode);
// 1144 #if (gLCDSupported_d)            
// 1145             DisplayTestMode(CurrentOption);
// 1146 #endif            
// 1147             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
// 1148           }
// 1149           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_27:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_30
// 1150           {
// 1151             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);           
        STRB     R3,[R4, #+28]
// 1152             if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
        CMP      R1,#+0
        BNE      ??process_test_mode_app_31
// 1153             {
// 1154              u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
        MOVS     R0,#+5
        B        ??process_test_mode_app_32
// 1155             }
// 1156             else
// 1157             {            
// 1158               u8CurrentMode --;
??process_test_mode_app_31:
        SUBS     R0,R1,#+1
??process_test_mode_app_32:
        STRB     R0,[R4, #+20]
// 1159             }
// 1160             MLMETestMode(u8CurrentMode);
??process_test_mode_app_29:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1161 #if (gLCDSupported_d)            
// 1162             DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1163 #endif            
// 1164             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
        MOVS     R1,#+200
        LDRB     R0,[R4, #+20]
        BL       LEDs_Flash
// 1165           }
// 1166           
// 1167           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??process_test_mode_app_30:
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 1168           LED_SetHex(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
        B        ??process_test_mode_app_33
// 1169          
// 1170           while((SMAC_TEST_MODE_PER_RX == u8CurrentMode)  && 
// 1171                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1172                 (gRxTestMode_c == CurrentOption))
??process_test_mode_app_34:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_35
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_36
// 1173           {
// 1174             if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)            
// 1175             {  
// 1176               packet_error_rate_rx_test();
        BL       packet_error_rate_rx_test
// 1177             }
// 1178           }  
??process_test_mode_app_33:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BEQ      ??process_test_mode_app_34
// 1179           
// 1180           while( (SMAC_TEST_MODE_RANGE_RX == u8CurrentMode) && 
// 1181                  (NO_TEST_MODE_EVENT == gu8TestModeEvents)  &&
// 1182                  (gRxTestMode_c == CurrentOption) )
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
// 1183           {
// 1184             range_rx_test();
        BL       range_rx_test
        B        ??process_test_mode_app_37
// 1185           }           
// 1186           while( (SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode) && 
// 1187                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1188                 (gRxTestMode_c == CurrentOption) )
??process_test_mode_app_41:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_42
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_42
// 1189           {
// 1190             pulse_prbs9_tx();
        BL       pulse_prbs9_tx
// 1191           }
??process_test_mode_app_38:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BEQ      ??process_test_mode_app_41
// 1192 
// 1193           while( (SMAC_TEST_MODE_PER_TX == u8CurrentMode) &&  
// 1194                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1195                 )
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
// 1196           {
// 1197             packet_error_rate_tx_test();
??process_test_mode_app_36:
        BL       packet_error_rate_tx_test
        B        ??process_test_mode_app_43
// 1198           }  
// 1199           
// 1200           while( (SMAC_TEST_MODE_RANGE_TX == u8CurrentMode) &&  
// 1201                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1202                 )
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
// 1203           {
// 1204             range_tx_test();
??process_test_mode_app_40:
        BL       range_tx_test
        B        ??process_test_mode_app_44
// 1205           }           
// 1206           
// 1207           break;
// 1208           
// 1209         case gBulkCap_c:
// 1210           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_45:
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_46
// 1211           {
// 1212             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1213             enable_bulk_cap(); 
        LDR      R0,??DataTable114  ;; 0x80003040
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        LDR      R0,??DataTable114  ;; 0x80003040
        STR      R1,[R0, #+0]
// 1214             u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        STRB     R0,[R4, #+26]
// 1215             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1216           }
// 1217           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_46:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1218           {
// 1219             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1220             disable_bulk_cap(); 
        LDR      R0,??DataTable114  ;; 0x80003040
        LDR      R1,[R0, #+0]
        LDR      R2,??DataTable113  ;; 0xfdffffff
        ANDS     R2,R2,R1
        STR      R2,[R0, #+0]
// 1221             u8BulkCapState = gDisable_c;
        STRB     R5,[R4, #+26]
// 1222             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        MOVS     R1,#+200
        MOVS     R0,#+0
        B        ??process_test_mode_app_13
        DATA
??process_test_mode_app_1:
        DATA32
        DC32     c_test_num
        THUMB
// 1223           }
// 1224           break; 
// 1225             
// 1226         case gCoarseTune_c:
// 1227           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_48:
        MOVS     R1,#+240
        LSLS     R1,R1,#+17       ;; #+31457280
        LDR      R2,??DataTable113_1  ;; 0xfe1fffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_49
// 1228           {
// 1229             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1230             if(MAX_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+15
        BEQ      ??process_test_mode_app_50
// 1231             {
// 1232               u8CurrentCoarseTune = MIN_COARSE_TUNE;
// 1233             }
// 1234             else
// 1235             {
// 1236               u8CurrentCoarseTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_50:
        STRB     R5,[R4, #+24]
// 1237             }
// 1238             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+21
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable114  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1239             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1240           }
// 1241           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_49:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1242           {
// 1243             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1244             if(MIN_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_51
// 1245             {
// 1246               u8CurrentCoarseTune = MAX_COARSE_TUNE;
        MOVS     R0,#+15
        B        ??process_test_mode_app_52
// 1247             }
// 1248             else
// 1249             {
// 1250               u8CurrentCoarseTune--;
??process_test_mode_app_51:
        SUBS     R0,R0,#+1
??process_test_mode_app_52:
        STRB     R0,[R4, #+24]
// 1251             }
// 1252             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R4,[R3, #+0]
        ANDS     R2,R2,R4
        LSLS     R4,R0,#+21
        ANDS     R1,R1,R4
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1253             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1254           }
// 1255           break; 
// 1256           
// 1257         case gFineTune_c:
// 1258           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_53:
        MOVS     R1,#+248
        LSLS     R1,R1,#+13       ;; #+2031616
        LDR      R2,??DataTable114_1  ;; 0xffe0ffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_54
// 1259           {
// 1260             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1261             if(MAX_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+31
        BEQ      ??process_test_mode_app_55
// 1262             {
// 1263               u8CurrentFineTune = MIN_FINE_TUNE;
// 1264             }
// 1265             else
// 1266             {
// 1267               u8CurrentFineTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_55:
        STRB     R5,[R4, #+25]
// 1268             }
// 1269             set_xtal_fine_tune(u8CurrentFineTune);
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+16
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable114  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1270             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
        B        ??process_test_mode_app_56
// 1271             if(0x0F < u8CurrentFineTune)
// 1272             {
// 1273               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1274             }
// 1275           }
// 1276           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_54:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1277           {
// 1278             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1279             if(MIN_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_57
// 1280             {
// 1281               u8CurrentCoarseTune = MAX_FINE_TUNE;
        MOVS     R0,#+31
        STRB     R0,[R4, #+24]
        B        ??process_test_mode_app_58
// 1282             }
// 1283             else
// 1284             {
// 1285               u8CurrentFineTune--;
??process_test_mode_app_57:
        SUBS     R0,R0,#+1
        STRB     R0,[R4, #+25]
// 1286             }
// 1287             set_xtal_fine_tune(u8CurrentFineTune);
??process_test_mode_app_58:
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable114  ;; 0x80003040
        LDR      R5,[R3, #+0]
        ANDS     R2,R2,R5
        LSLS     R5,R0,#+16
        ANDS     R1,R1,R5
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1288             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_56:
        MOVS     R1,#+200
        BL       LEDs_Flash
// 1289             if(0x0F < u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+15
        BLE      ??process_test_mode_app_5
// 1290             {
// 1291               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_47:
        MOVS     R1,#+200
??process_test_mode_app_13:
        BL       LEDs_Flash
// 1292             }
// 1293           }
// 1294           break;  
// 1295           
// 1296         default:
// 1297           break;
// 1298       }
// 1299   #endif
// 1300 #endif
// 1301 
// 1302 }
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
// 1303 
// 1304 /************************************************************************************
// 1305 * adjust_LQI
// 1306 *
// 1307 * The purpose of this function is to adjust the link quality indicator value obtained
// 1308 * from the MLMELinkQuality primitive to only four possible values.
// 1309 *
// 1310 ************************************************************************************/
// 1311 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1312 link_quality_value_t adjust_LQI(uint8_t u8LQI)
// 1313 {
// 1314   link_quality_value_t LQIAdjusted;
// 1315   
// 1316   if(LQI_LIM1 < u8LQI)
adjust_LQI:
        CMP      R0,#+89
        BLT      ??adjust_LQI_0
// 1317   {
// 1318      LQIAdjusted = gFarRange_c;
        MOVS     R0,#+0
        BX       LR
// 1319   }  
// 1320   else
// 1321   {
// 1322     if(LQI_LIM2 < u8LQI)
??adjust_LQI_0:
        CMP      R0,#+81
        BLT      ??adjust_LQI_1
// 1323     {
// 1324        LQIAdjusted = gMediumRange_c;
        MOVS     R0,#+1
        BX       LR
// 1325     }
// 1326     else
// 1327     {
// 1328        if(LQI_LIM3 <= u8LQI)
??adjust_LQI_1:
        CMP      R0,#+60
        BLT      ??adjust_LQI_2
// 1329        {
// 1330          LQIAdjusted = gNearRange_c;
        MOVS     R0,#+2
        BX       LR
// 1331        }
// 1332        else
// 1333        {
// 1334          LQIAdjusted = gVeryNearRange_c;
??adjust_LQI_2:
        MOVS     R0,#+3
// 1335        }
// 1336      }
// 1337   }
// 1338   return LQIAdjusted;
        BX       LR               ;; return
// 1339 }
// 1340 
// 1341 
// 1342 /************************************************************************************
// 1343 * convert_2_bcd function
// 1344 *
// 1345 * This function converts the received data as parameter to bcd format
// 1346 *
// 1347 ************************************************************************************/
// 1348 static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
// 1349 {
// 1350   four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
// 1351   uint16_t tmp;
// 1352   if(10000 > u16Value)
// 1353   {
// 1354     tmp = u16Value;
// 1355     if(1000 <= u16Value)
// 1356     {
// 1357       tmp = u16Value/1000;
// 1358       u16RtrnVal.u8Thousands = tmp;
// 1359       tmp = u16Value%1000;
// 1360       u16Value = tmp;
// 1361     }
// 1362     if(100 <= u16Value)
// 1363     {
// 1364       tmp = u16Value/100;
// 1365       u16RtrnVal.u8Houndreds = tmp;
// 1366       tmp = u16Value%100;
// 1367       u16Value = tmp;
// 1368     }
// 1369     if(10 <= u16Value)
// 1370     {
// 1371       tmp = u16Value/10;
// 1372       u16RtrnVal.u8Tens = tmp;
// 1373       tmp = u16Value%10;
// 1374       u16Value = tmp;
// 1375     }
// 1376     u16RtrnVal.u8Units = tmp;
// 1377   }
// 1378   return u16RtrnVal;
// 1379 }
// 1380 
// 1381 
// 1382 
// 1383 /************************************************************************************
// 1384 * LEDs_Flash
// 1385 *
// 1386 * This function flash the binary number of the received parameter through LEDs.
// 1387 *
// 1388 ************************************************************************************/
// 1389 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1390 void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
// 1391 {
LEDs_Flash:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1392   LED_TurnOffAllLeds();  
        BL       LED_TurnOffAllLeds
// 1393   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1394   LED_SetHex(u8leds_state);
        MOVS     R0,R5
        BL       LED_SetHex
// 1395   DelayMs(msec);  
        MOVS     R0,R4
        BL       DelayMs
// 1396   LED_TurnOffAllLeds(); 
        BL       LED_TurnOffAllLeds
// 1397   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1398 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1399 
// 1400 /************************************************************************************
// 1401 * LoadPRBS9
// 1402 *
// 1403 * The purpose of this function is to load the pseudo random binary sequence order 9 
// 1404 * in a transmission message. The polynomial to transmit is the following:
// 1405 *
// 1406 *
// 1407 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1408 void LoadPRBS9(void)
// 1409 {
LoadPRBS9:
        PUSH     {R4-R7}
// 1410   uint8_t u8c1;                           /* Byte counter */
// 1411   uint8_t u8c2;                           /* Bit counter */
// 1412   uint16_t u16t1;                         /* LFSR */
// 1413   uint16_t u16t2;                         /* LFSR output */
// 1414   uint16_t u16t3;                         /* LFSR feedback tap */
// 1415   uint8_t u8t4;                           /* Assembled transmit byte */
// 1416   
// 1417   u16t1 = 0x01FF;                       /* Initialize the LFSR */
        LDR      R6,??DataTable115  ;; 0x1ff
// 1418   for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
        MOVS     R0,#+0
        MOVS     R1,#+0
// 1419   {
// 1420     u8t4 = 0x00;                        /* Initialize the byte */
??LoadPRBS9_0:
        MOVS     R4,#+0
// 1421     for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
        MOVS     R5,#+0
// 1422     {
// 1423       u16t2 = (u16t1 & 0x0001);       /* LFSR output */
??LoadPRBS9_1:
        MOVS     R2,#+1
        MOVS     R3,R6
        ANDS     R3,R3,R2
// 1424       if (u16t2 == 0x0001)
        BEQ      ??LoadPRBS9_2
// 1425       {
// 1426         u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
        MOVS     R7,R4
        MOVS     R4,#+128
        ORRS     R4,R4,R7
// 1427       }
// 1428       if (u8c2 != 7)
??LoadPRBS9_2:
        LSLS     R7,R5,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+7
        BEQ      ??LoadPRBS9_3
// 1429       {
// 1430         u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
        LSLS     R4,R4,#+24
        LSRS     R4,R4,#+25
// 1431       }
// 1432       
// 1433       u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
??LoadPRBS9_3:
        LSLS     R7,R6,#+24
        LSRS     R7,R7,#+28
        ANDS     R2,R2,R7
// 1434       u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
        LSLS     R7,R6,#+15
        LSRS     R7,R7,#+16
// 1435       if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
        CMP      R3,R2
        BNE      ??LoadPRBS9_4
// 1436       {
// 1437         u16t1 = u16t1 & 0xFEFF;
        LDR      R6,??DataTable115_1  ;; 0xfeff
        ANDS     R6,R6,R7
        B        ??LoadPRBS9_5
// 1438       }
// 1439       else
// 1440       {
// 1441         u16t1 = u16t1 | 0x0100;
??LoadPRBS9_4:
        MOVS     R6,#+128
        LSLS     R6,R6,#+1        ;; #+256
        ORRS     R6,R6,R7
// 1442       }
// 1443       }
??LoadPRBS9_5:
        ADDS     R5,R5,#+1
        LSLS     R2,R5,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+8
        BLT      ??LoadPRBS9_1
// 1444       TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
        LDR      R2,??DataTable116
        LDR      R2,[R2, #+4]
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+24
        ADDS     R2,R2,R3
        STRB     R4,[R2, #+2]
// 1445     } 
        ADDS     R1,R1,#+1
        LSLS     R2,R1,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+64
        BLT      ??LoadPRBS9_0
// 1446   TX_msg.pu8Buffer->u8Data[64] = '\0';
        LDR      R1,??DataTable116
        LDR      R2,[R1, #+4]
        MOVS     R3,#+66
        STRB     R0,[R2, R3]
// 1447   TX_msg.u8BufSize = 65;
        MOVS     R0,#+65
        STRB     R0,[R1, #+8]
// 1448 }
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable112:
        DATA32
        DC32     ?_57
// 1449 
// 1450 /************************************************************************************
// 1451 * main_menu
// 1452 *
// 1453 * This function displays the main menu for the serial interface and waits until the 
// 1454 * user select an option.
// 1455 *
// 1456 ************************************************************************************/
// 1457 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1458 char main_menu(){
main_menu:
        PUSH     {R4,LR}
// 1459   Uart_Print("\r ______________________________________\n");
        LDR      R4,??DataTable116_1
        MOVS     R0,R4
        BL       Uart_Print
// 1460   Uart_Print("\r|                                      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        BL       Uart_Print
// 1461   Uart_Print("\r|    Connectivity Test Interface    |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+88
        BL       Uart_Print
// 1462   Uart_Print("\r|______________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+128
        BL       Uart_Print
// 1463   Uart_Print("\r      1 - CHANGE CHANNEL\n");
        Nop      
        ADR.N    R0,?_59
        BL       Uart_Print
// 1464   Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
        Nop      
        ADR.N    R0,?_60
        BL       Uart_Print
// 1465   Uart_Print("\r      3 - SELECT TEST MODE\n");
        Nop      
        ADR.N    R0,?_61
        BL       Uart_Print
// 1466   Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+172
        BL       Uart_Print
// 1467   Uart_Print("\r      Note: Case sensitive.");
        Nop      
        ADR.N    R0,?_62
        BL       Uart_Print
// 1468   Uart_Print("\r\n\n Please select an option:  ");
        LDR      R0,??DataTable117
        B.N      ?Subroutine1
// 1469   return Uart_getchar(mUARTRxBuffer);
// 1470 }

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
// 1471 
// 1472 /************************************************************************************
// 1473 * channel_menu
// 1474 *
// 1475 * This function displays the possible channels when the channel option is selected 
// 1476 * and waits for a user selection.
// 1477 *
// 1478 ************************************************************************************/
// 1479 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1480 char channel_menu(void){
channel_menu:
        PUSH     {R3-R5,LR}
// 1481   Uart_Print("\r\n     ___________________________________ \n");
        LDR      R4,??DataTable117_1
        MOVS     R0,R4
        BL       Uart_Print
// 1482   Uart_Print("\r    |                                   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+48
        BL       Uart_Print
// 1483   Uart_Print("\r    |      Channel Adjustment Menu      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+92
        BL       Uart_Print
// 1484   Uart_Print("\r    |___________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+136
        BL       Uart_Print
// 1485   Uart_Print("\r    Current Channel: ");
        Nop      
        ADR.N    R0,?_64
        BL       Uart_Print
// 1486   PrintChannel(u8TestModeChannel);
        LDR      R5,??DataTable117_2
        LDRB     R0,[R5, #+21]
        BL       PrintChannel
// 1487   Uart_Print("\n");
        ADR      R0,??DataTable117_3  ;; "\n"
        BL       Uart_Print
// 1488   Uart_Print("\r      0 - CHANNEL 11");
        ADR.N    R0,?_66
        BL       Uart_Print
// 1489   Uart_Print("      8 - CHANNEL 19\n");
        LDR      R0,??DataTable117_4
        BL       Uart_Print
// 1490   Uart_Print("\r      1 - CHANNEL 12");
        LDR      R0,??DataTable117_5
        BL       Uart_Print
// 1491   Uart_Print("      9 - CHANNEL 20\n");
        Nop      
        ADR.N    R0,?_69
        BL       Uart_Print
// 1492   Uart_Print("\r      2 - CHANNEL 13");
        LDR      R0,??DataTable117_6
        BL       Uart_Print
// 1493   Uart_Print("      A - CHANNEL 21\n");
        LDR      R0,??DataTable117_7
        BL       Uart_Print
// 1494   Uart_Print("\r      3 - CHANNEL 14");
        LDR      R0,??DataTable117_8
        BL       Uart_Print
// 1495   Uart_Print("      B - CHANNEL 22\n");
        ADR.N    R0,?_73
        BL       Uart_Print
// 1496   Uart_Print("\r      4 - CHANNEL 15");
        LDR      R0,??DataTable117_9
        BL       Uart_Print
// 1497   Uart_Print("      C - CHANNEL 23\n");
        LDR      R0,??DataTable117_10
        BL       Uart_Print
// 1498   Uart_Print("\r      5 - CHANNEL 16");
        LDR      R0,??DataTable118
        BL       Uart_Print
// 1499   Uart_Print("      D - CHANNEL 24\n");
        ADR.N    R0,?_77
        BL       Uart_Print
// 1500   Uart_Print("\r      6 - CHANNEL 17");
        LDR      R0,??DataTable118_1
        BL       Uart_Print
// 1501   Uart_Print("      E - CHANNEL 25\n");  
        LDR      R0,??DataTable118_2
        BL       Uart_Print
// 1502   Uart_Print("\r      7 - CHANNEL 18");
        LDR      R0,??DataTable119
        BL       Uart_Print
// 1503   if(gPowerLevelLock_c == FALSE)
// 1504   {
// 1505     Uart_Print("      F - CHANNEL 26\n");      
        ADR.N    R0,?_81
        B.N      ??Subroutine0_0
// 1506   }
// 1507   else
// 1508   {
// 1509     Uart_Print("\n");
// 1510   }
// 1511   Uart_Print("\r      p - Previous Menu\n");      
// 1512   Uart_Print("\r\n    Please select an option:  ");
// 1513   return Uart_getchar(mUARTRxBuffer);
// 1514 }

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
?_69:
        DC8 "      9 - CHANNEL 20\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_73:
        DC8 "      B - CHANNEL 22\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_77:
        DC8 "      D - CHANNEL 24\012"
        DATA16
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_81:
        DC8 "      F - CHANNEL 26\012"
        DATA16
        DC8 0, 0
// 1515 
// 1516 
// 1517 /************************************************************************************
// 1518 * test_mode_rx_menu
// 1519 *
// 1520 * This function displays the test mode options when the SELECT TEST MODE is 
// 1521 * selected.
// 1522 *
// 1523 ************************************************************************************/
// 1524 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1525 char test_mode_rx_menu(void){
test_mode_rx_menu:
        PUSH     {R3-R5,LR}
// 1526   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,R4
        BL       Uart_Print
// 1527   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1528   Uart_Print("\r    |   Reception Tests Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1529   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1530   Uart_Print("\r    Current Test Mode: ");
        LDR      R0,??DataTable119_2
        BL       Uart_Print
// 1531   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable117_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1532   Uart_Print("\r\n      I - IDLE\n");
        LDR      R0,??DataTable119_3
        BL       Uart_Print
// 1533   Uart_Print("\r      R - RECEPTION\n");
        Nop      
        ADR.N    R0,?_85
        BL       Uart_Print
// 1534   Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+144
        BL       Uart_Print
// 1535   Uart_Print("\r      r - RANGE TEST RECEIVER\n");
        Nop      
        ADR.N    R0,?_86
        B.N      ??Subroutine0_0
// 1536   Uart_Print("\r      p - Previous Menu\n");      
// 1537   Uart_Print("\r\n\n    Please select an option:  ");
// 1538   return Uart_getchar(mUARTRxBuffer);
// 1539 }

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
// 1540 
// 1541 /************************************************************************************
// 1542 * test_mode_tx_menu
// 1543 *
// 1544 * This function displays the test mode options when the SELECT TEST MODE is 
// 1545 * selected.
// 1546 *
// 1547 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1548 char test_mode_tx_menu(void){
test_mode_tx_menu:
        PUSH     {R3-R5,LR}
// 1549   Uart_Print("\r\n     _____________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,R4
        ADDS     R0,R0,#+220
        BL       Uart_Print
// 1550   Uart_Print("\r    |                             |\n");
        MOVS     R0,#+130
        LSLS     R0,R0,#+1        ;; #+260
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1551   Uart_Print("\r    |   Transmission Tests Menu   |\n");
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1552   Uart_Print("\r    |_____________________________|\n\n");  
        MOVS     R0,#+170
        LSLS     R0,R0,#+1        ;; #+340
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1553   Uart_Print("\r    Current Test Mode: ");
        Nop      
        ADR.N    R0,?_83
        BL       Uart_Print
// 1554   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable117_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1555   Uart_Print("\r\n      I - IDLE\n");
        Nop      
        ADR.N    R0,?_84
        BL       Uart_Print
// 1556   Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
        MOVS     R0,#+190
        LSLS     R0,R0,#+1        ;; #+380
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1557   Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
        MOVS     R0,#+208
        LSLS     R0,R0,#+1        ;; #+416
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1558   Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
        MOVS     R0,#+230
        LSLS     R0,R0,#+1        ;; #+460
        B.N      ?Subroutine0
// 1559   Uart_Print("\r      p - Previous Menu\n");      
// 1560   Uart_Print("\r\n\n    Please select an option:  ");
// 1561   return Uart_getchar(mUARTRxBuffer);
// 1562 }

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
// 1563 
// 1564 
// 1565 /************************************************************************************
// 1566 * select_test_mode_menu
// 1567 *
// 1568 * This function displays the option to select between TX and RX mode
// 1569 *
// 1570 ************************************************************************************/
// 1571 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1572 char select_test_mode_menu(void){
select_test_mode_menu:
        PUSH     {R4,LR}
// 1573   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,R4
        BL       Uart_Print
// 1574   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1575   Uart_Print("\r    |   TX / RX Menu   |\n");
        Nop      
        ADR.N    R0,?_87
        BL       Uart_Print
// 1576   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1577   Uart_Print("\r      R - RECEIVER MODE \n");
        Nop      
        ADR.N    R0,?_88
        BL       Uart_Print
// 1578   Uart_Print("\r      T - TRANSMITTER MODE \n");
        Nop      
        ADR.N    R0,?_89
        BL       Uart_Print
// 1579   Uart_Print("\r      p - Previous Menu\n");      
        LDR      R0,??DataTable120
        BL       Uart_Print
// 1580   Uart_Print("\r\n\n    Please select an option:  ");
        MOVS     R0,R4
        ADDS     R0,R0,#+184
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1581   return Uart_getchar(mUARTRxBuffer);
// 1582 }

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
        DC32     ?_70

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
        DC32     ?_74

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_10:
        DATA32
        DC32     ?_75

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
// 1583 
// 1584 /************************************************************************************
// 1585 * test_transmission_menu
// 1586 *
// 1587 * This function displays the transmissions options when the transmission option 
// 1588 * is selected in the main menu.
// 1589 *
// 1590 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1591 char test_transmission_menu(void)
// 1592 {
test_transmission_menu:
        PUSH     {R3-R5,LR}
// 1593   Uart_Print("\r\n     ______________________________________\n");
        LDR      R4,??DataTable119_1
        MOVS     R0,#+248
        LSLS     R0,R0,#+1        ;; #+496
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1594   Uart_Print("\r    |                                      |\n");
        MOVS     R0,#+136
        LSLS     R0,R0,#+2        ;; #+544
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1595   Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
        MOVS     R0,#+148
        LSLS     R0,R0,#+2        ;; #+592
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1596   Uart_Print("\r    |______________________________________|\n\n");  
        MOVS     R0,#+160
        LSLS     R0,R0,#+2        ;; #+640
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1597   Uart_Print("\r    Current Transmission Test: ");
        MOVS     R0,#+172
        LSLS     R0,R0,#+2        ;; #+688
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1598   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable122
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1599   Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
        MOVS     R0,#+181
        LSLS     R0,R0,#+2        ;; #+724
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1600   Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
        MOVS     R0,#+197
        LSLS     R0,R0,#+2        ;; #+788
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1601   Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
        MOVS     R0,#+206
        LSLS     R0,R0,#+2        ;; #+824
        Nop      
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1602   Uart_Print("\r      p - Previous Menu\n");      
// 1603   Uart_Print("\r\n\n    Please select an option:  ");
// 1604   return Uart_getchar(mUARTRxBuffer);
// 1605 }

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
        DC32     ?_76

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_1:
        DATA32
        DC32     ?_78

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_2:
        DATA32
        DC32     ?_79

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_82:
        DC8 "\015      p - Previous Menu\012"
        DATA16
        DC8 0, 0
// 1606 
// 1607 
// 1608 /************************************************************************************
// 1609 * clock_settings_menu
// 1610 *
// 1611 * This function displays a menu with the clock settings options and waits for a 
// 1612 * user selection.
// 1613 *
// 1614 ************************************************************************************/
// 1615 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1616 char clock_setting_menu(void)
// 1617 {
clock_setting_menu:
        PUSH     {R7,LR}
// 1618   Uart_Print("\r\n     _____________________");
        Nop      
        ADR.N    R0,?_90
        BL       Uart_Print
// 1619   Uart_Print("\r\n    |                     |");
        Nop      
        ADR.N    R0,?_91
        BL       Uart_Print
// 1620   Uart_Print("\r\n    | Clock Settings Menu |");
        Nop      
        ADR.N    R0,?_92
        BL       Uart_Print
// 1621   Uart_Print("\r\n    |_____________________|\n\n");  
        LDR      R0,??DataTable122_1
        BL       Uart_Print
// 1622   Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
        LDR      R0,??DataTable122_2
        BL       Uart_Print
// 1623   Uart_Print("\r    2 - Adjust COARSE TUNE\n");
        LDR      R0,??DataTable122_3
        BL       Uart_Print
// 1624   Uart_Print("\r    3 - Adjust FINE TUNE \n");
        ADR.N    R0,?_96
        BL       Uart_Print
// 1625   Uart_Print("\r    p - Previous Menu\n");
        LDR      R0,??DataTable122_4
        BL       Uart_Print
// 1626   Uart_Print("\r\n    Please select an option:  ");
        LDR      R0,??DataTable122_5
        BL       Uart_Print
// 1627   return Uart_getchar(mUARTRxBuffer);
        LDR      R0,??DataTable121
        BL       Uart_getchar
        POP      {R1,R3}
        BX       R3               ;; return
// 1628 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119:
        DATA32
        DC32     ?_80

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
// 1629 
// 1630 /************************************************************************************
// 1631 * bulk_cap_menu
// 1632 *
// 1633 * The bulk_cap_menu shows the two possible bulk capacitor states and waits until
// 1634 * the user selects an option.
// 1635 *
// 1636 ************************************************************************************/
// 1637 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1638 char bulk_cap_menu(void)
// 1639 {
bulk_cap_menu:
        PUSH     {R4,LR}
// 1640   Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
        Nop      
        ADR.N    R0,?_98
        BL       Uart_Print
// 1641   Uart_Print("\r\n   Current Bulk Capacitor State:");
        LDR      R0,??DataTable123
        BL       Uart_Print
// 1642   if(gEnable_c == u8BulkCapState){
        LDR      R4,??DataTable122
        LDRB     R0,[R4, #+26]
        CMP      R0,#+1
        BNE      ??bulk_cap_menu_0
// 1643     Uart_Print("  Enable\n\n");
        ADR.N    R0,?_99
        B        ??bulk_cap_menu_1
// 1644   }
// 1645   else{
// 1646     Uart_Print("  Disable\n\n");    
??bulk_cap_menu_0:
        ADR.N    R0,?_100
??bulk_cap_menu_1:
        BL       Uart_Print
// 1647   }
// 1648   Uart_Print("\r   E - Enable Capacitor.\n");
        Nop      
        ADR.N    R0,?_101
        BL       Uart_Print
// 1649   Uart_Print("\r   D - Disable Capacitor\n");
        Nop      
        ADR.N    R0,?_102
        BL       Uart_Print
// 1650   Uart_Print("\r   p - Previous Menu\n");
        Nop      
        ADR.N    R0,?_103
        BL       Uart_Print
// 1651   Uart_Print("\r\nPlease select an option:  ");
        LDR      R0,??DataTable125
        BL       Uart_Print
// 1652   return Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        B.N      ??Subroutine3_0
// 1653 }

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
?_103:
        DC8 "\015   p - Previous Menu\012"
        DATA8
        DC8 0
// 1654 
// 1655 /************************************************************************************
// 1656 * channel_adjust
// 1657 *
// 1658 * This function updates the channel with the value selected by the user.
// 1659 *
// 1660 ************************************************************************************/
// 1661 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1662 void channel_adjust(void){
channel_adjust:
        PUSH     {R3-R7,LR}
// 1663   char option, hexOption;
// 1664   CurrentOption = gChannel_c;
        LDR      R4,??DataTable122
        MOVS     R0,#+0
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable126
// 1665   do{
// 1666     option = channel_menu();
??channel_adjust_0:
        BL       channel_menu
        MOVS     R5,R0
// 1667     hexOption = AsciitoHex(option);
        BL       AsciitoHex
        MOVS     R6,R0
// 1668     
// 1669     if(PreviousMenu != hexOption)
        CMP      R0,#+112
        BEQ      ??channel_adjust_1
// 1670     {
// 1671       MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1672       DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1673       if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
        MOVS     R0,R6
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BNE      ??channel_adjust_2
// 1674       {  
// 1675         u8TestModeChannel = (channel_num_t)hexOption;
        STRB     R6,[R4, #+21]
        B        ??channel_adjust_3
// 1676       }
// 1677       else
// 1678       {
// 1679         Uart_Print("  Invalid Option!!!");  
??channel_adjust_2:
        MOVS     R0,R7
        BL       Uart_Print
// 1680       }
// 1681       MLMETestMode(u8CurrentMode);
??channel_adjust_3:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1682       
// 1683     }
// 1684   }while(option != PreviousMenu);
??channel_adjust_1:
        CMP      R5,#+112
        BNE      ??channel_adjust_0
// 1685 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121:
        DATA32
        DC32     c_test_num+0x20
// 1686 
// 1687 /************************************************************************************
// 1688 * power_adjust
// 1689 *
// 1690 * This function change the power value to the power selected by the user in the
// 1691 * serial interface
// 1692 *
// 1693 ************************************************************************************/
// 1694 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1695 void power_adjust(void){
power_adjust:
        PUSH     {R4-R6,LR}
// 1696   uint8_t u8TempPower;
// 1697   CurrentOption = gPower_c;
        LDR      R5,??DataTable122
        MOVS     R0,#+1
        STRB     R0,[R5, #+23]
// 1698   Uart_Print("\r\n     ___________________________\n");
        LDR      R4,??DataTable127
        MOVS     R0,R4
        BL       Uart_Print
// 1699   Uart_Print("\r    |                           |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1700   Uart_Print("\r    |   Power Adjustment Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1701   Uart_Print("\r    |___________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1702   Uart_Print("\r    Current Power: ");
        ADR.N    R0,?_106
        BL       Uart_Print
// 1703   Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R5
        ADDS     R0,R0,#+22
        BL       Uart_PrintHex
// 1704 
// 1705   if(gPowerLevelLock_c)
// 1706   {
// 1707     Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
// 1708   }
// 1709   else
// 1710   {
// 1711     Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
        MOVS     R0,R4
        ADDS     R0,R0,#+148
        BL       Uart_Print
// 1712   } 
// 1713   
// 1714   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1715   
// 1716   u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 1717     
// 1718   u8TempPower = (u8TempPower << 4);
// 1719   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1720   u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
        LSLS     R6,R6,#+4
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        ORRS     R0,R0,R6
        MOVS     R6,R0
// 1721   
// 1722   
// 1723   if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BNE      ??power_adjust_0
// 1724   {
// 1725     u8TestModePower = u8TempPower;
        STRB     R6,[R5, #+22]
// 1726     Uart_Print("\n");
        ADR      R0,??DataTable127_1  ;; "\n"
        B        ??power_adjust_1
// 1727   }
// 1728   else
// 1729   {
// 1730     Uart_Print("\r\n    Incorrect value!!!");  
??power_adjust_0:
        ADR.N    R0,?_107
        BL       Uart_Print
// 1731     Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
        MOVS     R0,R4
        ADDS     R0,R0,#+224
        BL       Uart_Print
// 1732     Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
        MOVS     R0,#+144
        LSLS     R0,R0,#+1        ;; #+288
        ADDS     R0,R4,R0
??power_adjust_1:
        BL       Uart_Print
// 1733   }
// 1734 }
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
// 1735 
// 1736 /************************************************************************************
// 1737 * test_mode_rx_adjust
// 1738 *
// 1739 * In this function the current test mode is adjusted to the new value selected by the 
// 1740 * user in the serial interface.
// 1741 *
// 1742 ************************************************************************************/
// 1743 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1744 void test_mode_rx_adjust(void)
// 1745 {
test_mode_rx_adjust:
        PUSH     {R3-R7,LR}
// 1746   char option;
// 1747   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable127_2
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable127_3
        MOVS     R5,#+0
// 1748   do{
// 1749     option = test_mode_rx_menu();
??test_mode_rx_adjust_0:
        BL       test_mode_rx_menu
        MOVS     R6,R0
// 1750     switch(option)
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
// 1751     {
// 1752       case IdleTest:
// 1753         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_rx_adjust_1:
        STRB     R5,[R4, #+20]
// 1754         MLMETestMode(u8CurrentMode);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1755         break;
        B        ??test_mode_rx_adjust_4
// 1756       case ReceptionTest:
// 1757         Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
??test_mode_rx_adjust_3:
        MOVS     R0,R7
        BL       Uart_Print
// 1758         Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable127_4
        BL       Uart_Print
// 1759         Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1760         u8CurrentMode = SMAC_CONTINUOUS_RX;
        MOVS     R0,#+1
        STRB     R0,[R4, #+20]
// 1761         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1762         MLMERXEnableRequest(&RX_msg, 0x0000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1763         do
// 1764         {
// 1765             (void)process_radio_msg();
??test_mode_rx_adjust_7:
        BL       process_radio_msg
// 1766             if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??test_mode_rx_adjust_8
// 1767             {
// 1768               gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+27]
// 1769               process_incoming_msg();
        BL       process_incoming_msg
// 1770             }
// 1771           
// 1772 #if OTAP_ENABLED == TRUE
// 1773           if(gbOtapExecute)
// 1774           {
// 1775             OTAP_execute();        
// 1776           }
// 1777           else
// 1778 #endif
// 1779           {          
// 1780             if(is_rx_msg_final_state(RX_msg))
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
// 1781             {
// 1782               RX_msg.u8BufSize = RX_SIZE;
??test_mode_rx_adjust_9:
        MOVS     R0,#+70
        STRB     R0,[R4, #+12]
// 1783               MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1784             }
// 1785           }
// 1786           Uart_Poll(mUARTRxBuffer);
??test_mode_rx_adjust_10:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 1787           }
// 1788         while (mUARTRxBuffer[0] != Exit);   
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??test_mode_rx_adjust_7
        B        ??test_mode_rx_adjust_4
// 1789         break;
// 1790         
// 1791       case PacketErrorRateTest:
// 1792         packet_error_rate_rx_test();
??test_mode_rx_adjust_2:
        BL       packet_error_rate_rx_test
// 1793         break;
        B        ??test_mode_rx_adjust_4
// 1794       case RangeTest:
// 1795         range_rx_test();
??test_mode_rx_adjust_5:
        BL       range_rx_test
// 1796         break;
        B        ??test_mode_rx_adjust_4
// 1797       case PreviousMenu:
// 1798         break; 
// 1799         
// 1800       default:
// 1801         Uart_Print("  Invalid Option!!!");
??test_mode_rx_adjust_6:
        LDR      R0,??DataTable126
        BL       Uart_Print
// 1802         break;
// 1803     }
// 1804   }while(option != PreviousMenu);
??test_mode_rx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_rx_adjust_0
// 1805 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123:
        DATA32
        DC32     ?_31
// 1806 
// 1807 /************************************************************************************
// 1808 * test_mode_tx_adjust
// 1809 *
// 1810 * In this function the current test mode is adjusted to the new value selected by the 
// 1811 * user in the serial interface.
// 1812 *
// 1813 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1814 void test_mode_tx_adjust(void){
test_mode_tx_adjust:
        PUSH     {R4-R6,LR}
// 1815   char option;
// 1816   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable127_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable126
// 1817   do{
// 1818     option = test_mode_tx_menu();
??test_mode_tx_adjust_0:
        BL       test_mode_tx_menu
        MOVS     R6,R0
// 1819     switch(option)
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
// 1820     {
// 1821       case IdleTest:
// 1822         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_tx_adjust_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
// 1823         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1824         break;
        B        ??test_mode_tx_adjust_4
// 1825       case TransmissionTest:  
// 1826         cont_transmission_test_adjust();
??test_mode_tx_adjust_3:
        BL       cont_transmission_test_adjust
// 1827         break;
        B        ??test_mode_tx_adjust_4
// 1828       case PacketErrorRateTest:
// 1829         packet_error_rate_tx_test();
??test_mode_tx_adjust_2:
        BL       packet_error_rate_tx_test
// 1830         break;
        B        ??test_mode_tx_adjust_4
// 1831       case RangeTest:
// 1832         range_tx_test();
??test_mode_tx_adjust_5:
        BL       range_tx_test
// 1833         break;
        B        ??test_mode_tx_adjust_4
// 1834       case PreviousMenu:
// 1835         break;      
// 1836       default:
// 1837         Uart_Print("  Invalid Option!!!");
??test_mode_tx_adjust_6:
        MOVS     R0,R5
        BL       Uart_Print
// 1838         break;
// 1839     }
// 1840   }while(option != PreviousMenu);
??test_mode_tx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_tx_adjust_0
// 1841 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1842 
// 1843 
// 1844 /************************************************************************************
// 1845 * tx_rx_select
// 1846 *
// 1847 * This function select between transmitter and receiver mode
// 1848 *
// 1849 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1850 void tx_rx_select(void)
// 1851 {
tx_rx_select:
        PUSH     {R3-R5,LR}
        LDR      R4,??DataTable126
// 1852   char option;
// 1853   do
// 1854   {
// 1855     option = select_test_mode_menu();
??tx_rx_select_0:
        BL       select_test_mode_menu
        MOVS     R5,R0
// 1856     switch(option)
        CMP      R0,#+82
        BEQ      ??tx_rx_select_1
        CMP      R0,#+84
        BNE      ??tx_rx_select_2
// 1857     {
// 1858       case TransmissionTest:
// 1859         test_mode_tx_adjust();   
        BL       test_mode_tx_adjust
// 1860         break;
        B        ??tx_rx_select_3
// 1861         
// 1862       case ReceptionTest:
// 1863         test_mode_rx_adjust();     
??tx_rx_select_1:
        BL       test_mode_rx_adjust
// 1864         break;          
        B        ??tx_rx_select_3
// 1865         
// 1866       default:
// 1867         Uart_Print("  Invalid Option!!!");
??tx_rx_select_2:
        MOVS     R0,R4
        BL       Uart_Print
// 1868         break;
// 1869     }
// 1870   }while(option != PreviousMenu);
??tx_rx_select_3:
        CMP      R5,#+112
        BNE      ??tx_rx_select_0
// 1871 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable125:
        DATA32
        DC32     ?_104
// 1872 
// 1873 
// 1874 
// 1875 /************************************************************************************
// 1876 * cont_transmission_test_adjust
// 1877 *
// 1878 * This function execute a specific transmission mode: modulated, unmodulated or 
// 1879 * the pseudo random binary sequence.
// 1880 *
// 1881 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1882 void cont_transmission_test_adjust(void)
// 1883 {
cont_transmission_test_adjust:
        PUSH     {R4-R6,LR}
// 1884   char option;
// 1885   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable127_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable126
// 1886   
// 1887   do
// 1888   {
// 1889     option = test_transmission_menu();
??cont_transmission_test_adjust_0:
        BL       test_transmission_menu
        MOVS     R6,R0
// 1890     switch(option)
        CMP      R0,#+77
        BEQ      ??cont_transmission_test_adjust_1
        CMP      R0,#+83
        BEQ      ??cont_transmission_test_adjust_2
        CMP      R0,#+85
        BEQ      ??cont_transmission_test_adjust_3
        CMP      R0,#+112
        BEQ      ??cont_transmission_test_adjust_4
        B        ??cont_transmission_test_adjust_5
// 1891     {
// 1892       case PRBS9TxTest:
// 1893         pulse_prbs9_tx();
??cont_transmission_test_adjust_2:
        BL       pulse_prbs9_tx
// 1894         break;
        B        ??cont_transmission_test_adjust_4
// 1895       case ModulatedTxTest:
// 1896         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
??cont_transmission_test_adjust_1:
        MOVS     R0,#+4
        B.N      ??cont_transmission_test_adjust_6
// 1897         MLMETestMode(u8CurrentMode);        
// 1898         break;        
// 1899       case UnmodulatedTxTest:
// 1900         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
??cont_transmission_test_adjust_3:
        MOVS     R0,#+5
??cont_transmission_test_adjust_6:
        STRB     R0,[R4, #+20]
// 1901         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1902         break;  
        B        ??cont_transmission_test_adjust_4
// 1903     case PreviousMenu:
// 1904         break;      
// 1905       default:
// 1906         Uart_Print("  Invalid Option!!!");
??cont_transmission_test_adjust_5:
        MOVS     R0,R5
        BL       Uart_Print
// 1907         break;
// 1908     }
// 1909   }while(option != PreviousMenu);
??cont_transmission_test_adjust_4:
        CMP      R6,#+112
        BNE      ??cont_transmission_test_adjust_0
// 1910 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable126:
        DATA32
        DC32     ?_105
// 1911 
// 1912 
// 1913 /************************************************************************************
// 1914 * pulse_prbs9_tx
// 1915 *
// 1916 * This function performs the transmission process for the pseudo random binary 
// 1917 * sequence.
// 1918 *
// 1919 ***********************************************************************************/
// 1920 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1921 void pulse_prbs9_tx(void)
// 1922 {
pulse_prbs9_tx:
        PUSH     {R3-R7,LR}
// 1923   static prbs9_tx_states_t u8AppState;
// 1924   static uint16_t u16DutyCicleCounter;
// 1925   
// 1926 #if INTERFACE_TYPE == MANUAL 
// 1927   if(FALSE == gu8TestAlreadyStarted)
        MOVS     R4,#+0
        LDR      R5,??DataTable128
        LDR      R7,??DataTable127_2
        LDRB     R0,[R7, #+31]
        CMP      R0,#+0
        BNE      ??pulse_prbs9_tx_0
// 1928   {
// 1929        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R5, #+0]
// 1930       u8AppState = INIT_PRBS9_TX_ST;
        STRB     R4,[R5, #+16]
// 1931   }  
// 1932 #endif  
// 1933 
// 1934 
// 1935 #if INTERFACE_TYPE == SERIAL
// 1936   u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX;
// 1937   TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
// 1938   u8AppState =  INIT_PRBS9_TX_ST;
// 1939   MLMETestMode(u8CurrentMode);
// 1940   Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
// 1941   Uart_Print("\r\nPress any key to start.....");
// 1942   Uart_getchar(mUARTRxBuffer);
// 1943   do  
// 1944   {
// 1945 #endif        
// 1946         
// 1947     (void)process_radio_msg();
??pulse_prbs9_tx_0:
        BL       process_radio_msg
// 1948     switch(u8AppState)
        MOVS     R6,#+1
        LDRB     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ      ??pulse_prbs9_tx_1
        CMP      R0,#+1
        BEQ      ??pulse_prbs9_tx_2
        B        ??pulse_prbs9_tx_3
// 1949     {
// 1950       case INIT_PRBS9_TX_ST:
// 1951       {
// 1952         LoadPRBS9();
??pulse_prbs9_tx_1:
        BL       LoadPRBS9
// 1953         u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1954         u8AppState = TRANSMIT_PRBS9_TX_ST;
        STRB     R6,[R5, #+16]
// 1955       }
// 1956       break;
        B        ??pulse_prbs9_tx_3
// 1957       
// 1958       case TRANSMIT_PRBS9_TX_ST:
// 1959       {
// 1960         if(is_tx_msg_final_state(TX_msg))
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
// 1961         {
// 1962           u16DutyCicleCounter++;
??pulse_prbs9_tx_4:
        LDRH     R0,[R5, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+20]
// 1963           if(u16DutyCicleCounter == DUTY_CICLE_TIME)
        LDR      R1,??DataTable129  ;; 0x79e
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??pulse_prbs9_tx_3
// 1964           {
// 1965             u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1966             MCPSDataRequest(&TX_msg);
        MOVS     R0,R5
        BL       MCPSDataRequest
// 1967           }
// 1968         }
// 1969       }
// 1970       
// 1971       default:
// 1972       break;
// 1973     }
// 1974          
// 1975 #if INTERFACE_TYPE == SERIAL    
// 1976     Uart_Poll(mUARTRxBuffer);
// 1977   }while (mUARTRxBuffer[0] != Exit); 
// 1978   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 1979   MLMETestMode(u8CurrentMode);
// 1980 #endif
// 1981 
// 1982 #if INTERFACE_TYPE == MANUAL      
// 1983   gu8TestAlreadyStarted = TRUE;
??pulse_prbs9_tx_3:
        STRB     R6,[R7, #+31]
// 1984 #endif
// 1985 }
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
// 1986 
// 1987 /************************************************************************************
// 1988 * packet_error_rate_tx_test
// 1989 *
// 1990 * This function performs the packet error rate transmission process.
// 1991 *
// 1992 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1993 void packet_error_rate_tx_test(void)
// 1994 {
packet_error_rate_tx_test:
        PUSH     {R3-R7,LR}
// 1995   static per_tx_states_t u8AppState;
// 1996   static uint16_t u16MsgCount;
// 1997   static uint16_t u16DoneCount;
// 1998   uint32_t u32NumTransmissions;
// 1999 
// 2000 #if   INTERFACE_TYPE == SERIAL
// 2001   uint8_t u8InvalidCharFlag = FALSE;
// 2002 #endif
// 2003   
// 2004 #if   INTERFACE_TYPE == SERIAL
// 2005   uint8_t u8Count;
// 2006   uint8_t u8TempNumTx[5];
// 2007 #endif
// 2008   
// 2009   u32NumTransmissions = NUM_TRANSMISSIONS;
// 2010 
// 2011 #if INTERFACE_TYPE == SERIAL
// 2012   u8AppState = IDLE_PER_TX_ST;   
// 2013   u8CurrentMode = SMAC_TEST_MODE_PER_TX;
// 2014   do{
// 2015 #endif
// 2016 
// 2017 #if INTERFACE_TYPE == MANUAL 
// 2018   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable128
        LDR      R5,??DataTable129_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??packet_error_rate_tx_test_0
// 2019   {
// 2020     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDRB     R0,[R5, #+28]
        MOVS     R1,#+247
        ANDS     R1,R1,R0
        STRB     R1,[R5, #+28]
// 2021     TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+0]
// 2022     LEDs_TX_INIT(250);  
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
// 2023     u8AppState = INIT_PER_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+17]
// 2024     gu8TestAlreadyStarted = TRUE;
        STRB     R0,[R5, #+31]
// 2025 #if (gLCDSupported_d) 
// 2026     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable129_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2027     LCD_WriteString_NormalFont(4,"PER Transmitting..");
        LDR      R1,??DataTable129_3
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2028 #endif    
// 2029   }
// 2030 #endif
// 2031     
// 2032     (void)process_radio_msg();
??packet_error_rate_tx_test_0:
        BL       process_radio_msg
// 2033     if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_1
// 2034     {
// 2035       gbDataIndicationFlag = FALSE;
        STRB     R6,[R5, #+27]
// 2036       process_incoming_msg();
        BL       process_incoming_msg
// 2037     }
// 2038     
// 2039 #if INTERFACE_TYPE == MANUAL    
// 2040     if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_tx_test_1:
        LDRB     R0,[R5, #+31]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_2
// 2041     {
// 2042 #endif      
// 2043     switch(u8AppState){
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
// 2044       case IDLE_PER_TX_ST:
// 2045       {
// 2046 #if INTERFACE_TYPE == SERIAL          
// 2047         Uart_Print("\r\n    ****************************");
// 2048         Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2049         Uart_Print("\r\n    ****************************");
// 2050         Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2051         Uart_Print("\r\nPress Enter. Packets to transmit: ");
// 2052         Uart_PrintShortDec((uint16_t)NUM_TRANSMISSIONS);
// 2053         do
// 2054         {
// 2055          uint8_t i;
// 2056          uint8_t u8Shift;
// 2057           Uart_Print("\r\n\n  Number of packets in decimal: ");
// 2058           u8Count = 0;
// 2059           u8InvalidCharFlag = FALSE;
// 2060 
// 2061           u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2062                     
// 2063           while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= Exit))
// 2064           { 
// 2065             if((0x3A < u8TempNumTx[u8Count]))
// 2066             {
// 2067               u8InvalidCharFlag = TRUE;
// 2068             }
// 2069             else if(0x30 > u8TempNumTx[u8Count])
// 2070             {
// 2071               u8InvalidCharFlag = TRUE;
// 2072             }
// 2073 
// 2074             u8Count ++;
// 2075             u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2076           }
// 2077           if(u8TempNumTx[u8Count] == 0x0D)
// 2078           { 
// 2079             if(0 != u8Count)
// 2080             {
// 2081               u8Count--;
// 2082             }
// 2083             else
// 2084             {
// 2085               u8InvalidCharFlag = TRUE;
// 2086             }   
// 2087             Uart_getchar(mUARTRxBuffer);
// 2088            }
// 2089           
// 2090           if(Exit == u8TempNumTx[u8Count])
// 2091           {
// 2092             return;
// 2093           }
// 2094 
// 2095           u32NumTransmissions = 0;
// 2096           u8Shift = u8Count;
// 2097           /*To validate 0-9, a-f and A-F values*/
// 2098 
// 2099           for(i = 0; i <= u8Count; i++)
// 2100           {
// 2101             u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
// 2102             u8Shift--;
// 2103           }
// 2104           
// 2105           if(MAX_NUM_TRANSMISSION < u32NumTransmissions)
// 2106           {
// 2107             Uart_Print("\r\n  Value out of range, please try again.");
// 2108           }
// 2109           
// 2110           if(u8InvalidCharFlag == TRUE)
// 2111           {
// 2112             Uart_Print("\r\n  Invalid characters, please use only numbers.");
// 2113           }
// 2114         }
// 2115         while((MAX_NUM_TRANSMISSION < u32NumTransmissions) || (TRUE == u8InvalidCharFlag));
// 2116         
// 2117 #endif         
// 2118          u8AppState = INIT_PER_TX_ST;
??packet_error_rate_tx_test_3:
        MOVS     R0,#+1
        B.N      ??packet_error_rate_tx_test_8
// 2119       }
// 2120       break;
// 2121       case INIT_PER_TX_ST:
// 2122       {
// 2123         uint8_t i;
// 2124         uint8_t u8Count = 4;
// 2125         TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
??packet_error_rate_tx_test_5:
        LSLS     R2,R2,#+29
        LSRS     R2,R2,#+29
        MOVS     R3,#+32
        ORRS     R3,R3,R2
        STRB     R3,[R4, #+0]
// 2126         TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+2]
// 2127         TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        MOVS     R1,#+231
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+3]
// 2128         for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        MOVS     R3,#+0
        LDR      R2,??DataTable129_4
// 2129         {
// 2130           TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
??packet_error_rate_tx_test_9:
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R2, R1]
        LDR      R5,[R4, #+4]
        LSLS     R7,R0,#+24
        LSRS     R7,R7,#+24
        ADDS     R5,R5,R7
        STRB     R1,[R5, #+2]
// 2131           u8Count ++;
        ADDS     R0,R0,#+1
// 2132         }
        ADDS     R3,R3,#+1
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+16
        BCC      ??packet_error_rate_tx_test_9
// 2133 
// 2134         u16MsgCount = 0;
        STRH     R6,[R4, #+22]
// 2135         u16DoneCount = 0;
        STRH     R6,[R4, #+24]
// 2136         u8AppState = TRANSMITING_PER_TX_ST;
        MOVS     R0,#+2
        B.N      ??packet_error_rate_tx_test_8
// 2137       }
// 2138       break;
// 2139       case TRANSMITING_PER_TX_ST:
// 2140       {
// 2141         if(is_tx_msg_final_state(TX_msg))
??packet_error_rate_tx_test_4:
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
// 2142         {
// 2143           if(u32NumTransmissions > u16MsgCount)
??packet_error_rate_tx_test_10:
        LDRH     R0,[R4, #+22]
        LDR      R3,??DataTable130  ;; 0x3e7
        CMP      R0,R3
        BCS      ??packet_error_rate_tx_test_11
// 2144           {
// 2145             TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
        LSRS     R1,R0,#+8
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+4]
// 2146             TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
// 2147             TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
        MOVS     R0,#+20
        STRB     R0,[R4, #+8]
// 2148 #if INTERFACE_TYPE == SERIAL          
// 2149             DelayMs(14);
// 2150 #else
// 2151             DelayMs(5);
        MOVS     R0,#+5
        BL       DelayMs
// 2152 #endif            
// 2153 
// 2154             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2155             u16MsgCount++;
        LDRH     R0,[R4, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+22]
        B        ??packet_error_rate_tx_test_2
// 2156           }
// 2157           else
// 2158           {
// 2159             uint8_t i;
// 2160             for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
??packet_error_rate_tx_test_11:
        ADR.N    R0,ku8DoneStr
// 2161             {
// 2162               TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
??packet_error_rate_tx_test_12:
        LDRB     R2,[R0, R6]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R6
        STRB     R2,[R3, #+2]
// 2163             }
        ADDS     R6,R6,#+1
        CMP      R6,#+4
        BCC      ??packet_error_rate_tx_test_12
// 2164             u8AppState = DONE_PER_TX_ST;
        STRB     R1,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2165           }
// 2166         }   
// 2167       }  
// 2168       break;
// 2169       
// 2170       case DONE_PER_TX_ST:
// 2171       {
// 2172         if(NUM_DONE_TX >= u16DoneCount)
??packet_error_rate_tx_test_7:
        LDRH     R1,[R4, #+24]
        CMP      R1,#+16
        BGE      ??packet_error_rate_tx_test_8
// 2173         {
// 2174           if(is_tx_msg_final_state(TX_msg))
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_13
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
        B        ??packet_error_rate_tx_test_14
// 2175           {
// 2176             if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
// 2177               u16DoneCount++;
??packet_error_rate_tx_test_13:
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+24]
// 2178             TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
??packet_error_rate_tx_test_14:
        STRB     R0,[R4, #+8]
// 2179             DelayMs(14);
        MOVS     R0,#+14
        BL       DelayMs
// 2180             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
        B        ??packet_error_rate_tx_test_2
// 2181           }
// 2182         }
// 2183         else
// 2184         {
// 2185           u8AppState = FINISH_PER_TX_ST;
??packet_error_rate_tx_test_8:
        STRB     R0,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2186         }
// 2187       }
// 2188       break;
// 2189       
// 2190       case FINISH_PER_TX_ST:
// 2191         u8AppState = IDLE_PER_TX_ST;
??packet_error_rate_tx_test_6:
        STRB     R6,[R4, #+17]
// 2192 #if INTERFACE_TYPE == MANUAL                
// 2193         gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R5, #+31]
// 2194 #endif        
// 2195  
// 2196         break;
// 2197       
// 2198       default:
// 2199       {
// 2200       }
// 2201       break;
// 2202     }
// 2203 
// 2204 #if INTERFACE_TYPE == MANUAL        
// 2205   }
// 2206 #endif
// 2207   
// 2208 #if INTERFACE_TYPE == SERIAL    
// 2209     Uart_Poll(mUARTRxBuffer);
// 2210   }while (mUARTRxBuffer[0] != Exit); 
// 2211   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2212   MLMETestMode(u8CurrentMode);
// 2213 #endif
// 2214 
// 2215   
// 2216 }
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
// 2217 
// 2218 /************************************************************************************
// 2219 * packet_error_rate_rx_test
// 2220 *
// 2221 * This function performs the packet error rate reception process.
// 2222 *
// 2223 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2224 void packet_error_rate_rx_test(void)
// 2225 {
packet_error_rate_rx_test:
        PUSH     {R3-R7,LR}
// 2226   static per_rx_states_t u8AppState;
// 2227 
// 2228 #if INTERFACE_TYPE == MANUAL 
// 2229   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable129_1
        LDRB     R0,[R4, #+31]
        MOVS     R7,#+1
        LDR      R5,??DataTable130_1
        CMP      R0,#+0
        BNE      ??packet_error_rate_rx_test_0
// 2230   {  
// 2231     RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 2232     LEDs_RX_INIT(250);  
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
// 2233 
// 2234 
// 2235 #if (gLCDSupported_d) 
// 2236     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable129_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2237     LCD_WriteString_NormalFont(4," PER Listening..");
        LDR      R1,??DataTable130_2
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2238 #endif
// 2239     u8AppState = INIT_PER_RX_ST;
        STRB     R7,[R5, #+0]
// 2240     gu8TestAlreadyStarted = TRUE;
        STRB     R7,[R4, #+31]
        B        ??packet_error_rate_rx_test_1
// 2241   }
// 2242 #endif
// 2243   
// 2244 
// 2245 #if INTERFACE_TYPE == SERIAL
// 2246   u8CurrentMode = SMAC_TEST_MODE_PER_RX;
// 2247   RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
// 2248   Uart_Print("\r\n    ****************************");
// 2249   Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2250   Uart_Print("\r\n    ****************************");
// 2251   Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2252   Uart_Print("\r\nPress any key to start.....");
// 2253   Uart_getchar(mUARTRxBuffer);
// 2254   u8AppState = INIT_PER_RX_ST;
// 2255   do{
// 2256 #endif    
// 2257     
// 2258 #if INTERFACE_TYPE == MANUAL    
// 2259 
// 2260 
// 2261   if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_rx_test_0:
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_2
// 2262   {
// 2263 #endif      
// 2264       (void)process_radio_msg();
??packet_error_rate_rx_test_1:
        BL       process_radio_msg
// 2265       if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_3
// 2266       {
// 2267         gbDataIndicationFlag = FALSE;
        STRB     R6,[R4, #+27]
// 2268         process_incoming_msg();
        BL       process_incoming_msg
// 2269       }
// 2270     
// 2271 #if OTAP_ENABLED == TRUE
// 2272     if(gbOtapExecute)
// 2273     {
// 2274       OTAP_execute();        
// 2275     }
// 2276     else
// 2277 #endif
// 2278     {          
// 2279   
// 2280       switch(u8AppState){
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
// 2281         case IDLE_PER_RX_ST:
// 2282         {
// 2283           // Do nothing when idle
// 2284         }
// 2285         break;
// 2286         case INIT_PER_RX_ST:
// 2287         {
// 2288 #if INTERFACE_TYPE == SERIAL        
// 2289           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2290 #endif       
// 2291           u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_4:
        STRB     R1,[R5, #+0]
// 2292           
// 2293           
// 2294         }
// 2295         break;
        B        ??packet_error_rate_rx_test_2
// 2296         case WAITING_PER_RX_ST:
// 2297         {
// 2298           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_6:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_9
// 2299           {
// 2300             u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_8:
        STRB     R1,[R5, #+0]
// 2301           }
// 2302           if(gu32PerRxEvents & PER_DONE_MSG_EVNT)
??packet_error_rate_rx_test_9:
        MOVS     R0,#+44
        LDRB     R0,[R4, R0]
        LSLS     R0,R0,#+28
        BPL      ??packet_error_rate_rx_test_2
// 2303           {
// 2304             gu32PerRxEvents = PER_NO_EVENT;
        STR      R6,[R4, #+44]
// 2305             u8AppState = FINISH_PER_RX_ST;
        MOVS     R0,#+4
        B.N      ??packet_error_rate_rx_test_10
// 2306           }
// 2307         }
// 2308         break;
// 2309         case LISTEN_PER_RX_ST:
// 2310         {
// 2311           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_5:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_2
// 2312           {
// 2313             RX_msg.u8BufSize = PER_RX_SIZE;
??packet_error_rate_rx_test_11:
        MOVS     R0,#+24
        STRB     R0,[R4, #+12]
// 2314             MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 2315             u8AppState = WAITING_PER_RX_ST;
        MOVS     R0,#+2
??packet_error_rate_rx_test_10:
        STRB     R0,[R5, #+0]
        B        ??packet_error_rate_rx_test_2
// 2316           }
// 2317         }
// 2318         break;
// 2319         case FINISH_PER_RX_ST:
// 2320         {
// 2321           u8AppState = INIT_PER_RX_ST;
??packet_error_rate_rx_test_7:
        STRB     R7,[R5, #+0]
// 2322 #if INTERFACE_TYPE == MANUAL 
// 2323           LED_SetHex((uint8_t)(c_test_num.u8Thousands));
        LDRB     R0,[R4, #+1]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2324           DelayMs(gTotalPacketsDelay_d);
        MOVS     R5,#+200
        LSLS     R5,R5,#+1        ;; #+400
        MOVS     R0,R5
        BL       DelayMs
// 2325           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2326           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2327           LED_SetHex((uint8_t)(c_test_num.u8Houndreds));
        MOVS     R7,#+15
        LDRB     R0,[R4, #+1]
        ANDS     R0,R0,R7
        BL       LED_SetHex
// 2328           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2329           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2330           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2331           LED_SetHex((uint8_t)(c_test_num.u8Tens));
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2332           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2333           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2334           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2335           LED_SetHex((uint8_t)(c_test_num.u8Units));
        LDRB     R0,[R4, #+0]
        ANDS     R7,R7,R0
        MOVS     R0,R7
        BL       LED_SetHex
// 2336           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2337           gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R4, #+31]
// 2338 #endif        
// 2339         }
// 2340         break;
// 2341         default:
// 2342         {
// 2343         }
// 2344         break;
// 2345       }
// 2346     }  
// 2347 #if INTERFACE_TYPE == MANUAL        
// 2348   }
// 2349 #endif
// 2350   
// 2351 #if INTERFACE_TYPE == SERIAL    
// 2352     Uart_Poll(mUARTRxBuffer);
// 2353   }while (mUARTRxBuffer[0] != Exit);  
// 2354   
// 2355   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2356   MLMETestMode(u8CurrentMode);
// 2357 #endif
// 2358   
// 2359 }
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
// 2360 
// 2361 /************************************************************************************
// 2362 * range_rx_test
// 2363 *
// 2364 * This function performs the range reception process.
// 2365 *
// 2366 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2367 void range_rx_test(void)
// 2368 {
range_rx_test:
        PUSH     {R3-R7,LR}
// 2369   volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
// 2370   volatile uint8_t u8retries;
// 2371 #if INTERFACE_TYPE == MANUAL 
// 2372   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable131
        LDR      R5,??DataTable131_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??range_rx_test_0
// 2373   {
// 2374      u8AppState = INIT_RANGE_RX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+19]
// 2375      LEDs_RX_INIT(250);
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
// 2376 #if (gLCDSupported_d) 
// 2377     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable131_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2378     LCD_WriteString_NormalFont(4,"Range Listening..");
        LDR      R1,??DataTable132
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2379 #endif        
// 2380   }  
// 2381 #endif  
// 2382 
// 2383 #if INTERFACE_TYPE == SERIAL
// 2384   u8CurrentMode = SMAC_TEST_MODE_RANGE_RX;
// 2385   
// 2386   Uart_Print("\r\n    ****************************");
// 2387   Uart_Print("\r\n    **       Range Test       **");
// 2388   Uart_Print("\r\n    ****************************");
// 2389    
// 2390   Uart_Print("\r\nPress Q to exit from Range Test");
// 2391   Uart_Print("\r\nPress any key to start.....");
// 2392   Uart_getchar(mUARTRxBuffer);
// 2393   u8AppState = INIT_RANGE_RX_ST;
// 2394   do{
// 2395 #endif
// 2396 
// 2397       (void)process_radio_msg();
??range_rx_test_0:
        BL       process_radio_msg
// 2398       if(TRUE == gbDataIndicationFlag)
        MOVS     R7,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??range_rx_test_1
// 2399       {
// 2400         gbDataIndicationFlag = FALSE;
        STRB     R7,[R5, #+27]
// 2401         process_incoming_msg();
        BL       process_incoming_msg
// 2402       }
// 2403       else{
// 2404       }
// 2405 
// 2406 #if OTAP_ENABLED == TRUE
// 2407     if(gbOtapExecute)
// 2408     {
// 2409       OTAP_execute();        
// 2410     }
// 2411     else
// 2412 #endif
// 2413     {          
// 2414       switch(u8AppState){
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
// 2415         case IDLE_RANGE_RX_ST:
// 2416         {
// 2417           // Do nothing when idle
// 2418         }
// 2419         break;
// 2420         
// 2421         case INIT_RANGE_RX_ST:
// 2422         {
// 2423           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_rx_test_2:
        MOVS     R2,#+7
        LDRB     R3,[R5, #+4]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        STRB     R6,[R5, #+4]
// 2424           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
        ANDS     R2,R2,R0
        MOVS     R0,#+32
        ORRS     R0,R0,R2
        STRB     R0,[R4, #+0]
// 2425   #if INTERFACE_TYPE == SERIAL        
// 2426           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2427           Uart_Print("\r\nStart the test by pressing any key on TX radio");
// 2428   #endif       
// 2429           u8AppState = LISTEN_RANGE_RX_ST;
        STRB     R1,[R4, #+19]
// 2430         }
// 2431         break;
        B        ??range_rx_test_3
// 2432         
// 2433         case LISTEN_RANGE_RX_ST:
// 2434         {
// 2435           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_4:
        CMP      R2,#+5
        BEQ      ??range_rx_test_7
        CMP      R2,#+6
        BEQ      ??range_rx_test_7
        CMP      R2,#+8
        BEQ      ??range_rx_test_7
        CMP      R2,#+4
        BNE      ??range_rx_test_3
// 2436           {
// 2437             RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_rx_test_7:
        MOVS     R0,#+12
        STRB     R0,[R5, #+12]
// 2438             MLMERXEnableRequest(&RX_msg, 0x00000200);
        LSLS     R1,R6,#+8
        ADDS     R0,R5,#+4
        BL       MLMERXEnableRequest
// 2439             u8AppState = WAITING_RANGE_RX_ST;
        B        ??range_rx_test_8
// 2440           }
// 2441         }
// 2442         break;
// 2443   
// 2444        case WAITING_RANGE_RX_ST:
// 2445         {
// 2446           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_5:
        CMP      R2,#+5
        BEQ      ??range_rx_test_9
        CMP      R2,#+6
        BEQ      ??range_rx_test_9
        CMP      R2,#+8
        BEQ      ??range_rx_test_9
        CMP      R2,#+4
        BNE      ??range_rx_test_10
// 2447           {
// 2448             u8AppState = LISTEN_RANGE_RX_ST;
??range_rx_test_9:
        STRB     R1,[R4, #+19]
// 2449           }
// 2450           if(TRUE == gu8ValidRangePacket)
??range_rx_test_10:
        LDRB     R0,[R5, #+29]
        CMP      R0,#+1
        BNE      ??range_rx_test_3
// 2451           {
// 2452             gu8ValidRangePacket = FALSE;
        STRB     R7,[R5, #+29]
// 2453             u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
        MOVS     R0,#+4
        STRB     R0,[R4, #+19]
// 2454             u8retries = 5;
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        B        ??range_rx_test_3
// 2455           }
// 2456         }
// 2457         break;
// 2458    
// 2459         
// 2460         case TRANSMIT_ACK_RANGE_RX_ST:
// 2461         {
// 2462 
// 2463           if(is_tx_msg_final_state(ACK_msg))
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
// 2464           { 
// 2465             MCPSDataRequest(&ACK_msg); 
??range_rx_test_11:
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2466             u8retries --;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
// 2467           }
// 2468           if(0 == u8retries)
??range_rx_test_12:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??range_rx_test_3
// 2469           {
// 2470             u8AppState = WAITING_RANGE_RX_ST;
??range_rx_test_8:
        STRB     R6,[R4, #+19]
// 2471           }
// 2472         }
// 2473         break;
// 2474         
// 2475         case FINISH_RANGE_RX_ST:
// 2476         {
// 2477           /*Do nothing*/
// 2478         }
// 2479         break;
// 2480         default:
// 2481         {
// 2482         }
// 2483         break;
// 2484       }
// 2485    }
// 2486 #if INTERFACE_TYPE == SERIAL       
// 2487     Uart_Poll(mUARTRxBuffer);
// 2488   }while (mUARTRxBuffer[0] != Exit);  
// 2489   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2490   MLMETestMode(u8CurrentMode);
// 2491 #endif  
// 2492 #if INTERFACE_TYPE == MANUAL      
// 2493   gu8TestAlreadyStarted = TRUE;
??range_rx_test_3:
        MOVS     R0,#+1
        STRB     R0,[R5, #+31]
// 2494 #endif
// 2495 }
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
// 2496 
// 2497 /************************************************************************************
// 2498 * range_tx_test
// 2499 *
// 2500 * This function performs the range transmission process.
// 2501 *
// 2502 ***********************************************************************************/
// 2503 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2504 void range_tx_test(void)
// 2505 {
range_tx_test:
        PUSH     {R3-R7,LR}
// 2506   static range_tx_states_t u8AppState; 
// 2507   static uint16_t u8CountNoPacket = 0;
// 2508    
// 2509 #if INTERFACE_TYPE == MANUAL 
// 2510   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable133
        LDR      R0,??DataTable131_1
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE      ??range_tx_test_1
// 2511   {
// 2512     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDR      R0,??DataTable131_1
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+247
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+28]
// 2513     u8AppState = INIT_RANGE_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+18]
// 2514     LEDs_TX_INIT(250);  
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
// 2515 #if (gLCDSupported_d) 
// 2516     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable131_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2517     LCD_WriteString_NormalFont(4,"Range Transmitting..");
        LDR      R1,??DataTable133_1
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2518 #endif        
// 2519   }  
// 2520 #endif  
// 2521 
// 2522 #if INTERFACE_TYPE == SERIAL    
// 2523 
// 2524   u8AppState = INIT_RANGE_TX_ST;
// 2525   
// 2526   u8CurrentMode = SMAC_TEST_MODE_RANGE_TX;
// 2527   Uart_Print("\r\n    ****************************");
// 2528   Uart_Print("\r\n    **       Range Test       **");
// 2529   Uart_Print("\r\n    ****************************");
// 2530    
// 2531   Uart_Print("\r\nPress Q to exit from Range Test");
// 2532   Uart_Print("\r\nPress any key to start the test.....");
// 2533   Uart_getchar(mUARTRxBuffer);
// 2534   do{
// 2535 #endif
// 2536     (void)process_radio_msg();
??range_tx_test_1:
        BL       process_radio_msg
// 2537     if(TRUE == gbDataIndicationFlag)
        MOVS     R5,#+0
        LDR      R0,??DataTable131_1
        LDRB     R0,[R0, #+27]
        CMP      R0,#+1
        BNE      ??range_tx_test_2
// 2538     {
// 2539       gbDataIndicationFlag = FALSE;
        LDR      R1,??DataTable131_1
        STRB     R5,[R1, #+27]
// 2540       process_incoming_msg();
        BL       process_incoming_msg
// 2541       u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
        B        ??range_tx_test_3
// 2542     }
// 2543     else{
// 2544       u8CountNoPacket++;
??range_tx_test_2:
        LDRH     R0,[R4, #+26]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+26]
// 2545       if(MAX_NO_PACKET_ALLOW == u8CountNoPacket)
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??range_tx_test_3
// 2546       {
// 2547           u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
// 2548           TurnOffLeds();
        BL       LED_TurnOffAllLeds
// 2549       }
// 2550     }
// 2551     
// 2552 #if OTAP_ENABLED == TRUE
// 2553  if(gbOtapExecute)
// 2554  {
// 2555     OTAP_execute();        
// 2556  }
// 2557  else
// 2558 #endif
// 2559   {
// 2560     
// 2561     switch(u8AppState)
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
// 2562     {
// 2563       case IDLE_RANGE_TX_ST:
// 2564       {
// 2565         // Do nothing when idle
// 2566   		u8AppState = INIT_RANGE_TX_ST;
??range_tx_test_5:
        MOVS     R0,#+1
        B        ??range_tx_test_6
// 2567       }
// 2568       break;
// 2569       case INIT_RANGE_TX_ST:
// 2570       {
// 2571         uint8_t i;
// 2572           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_tx_test_7:
        MOVS     R2,#+7
        MOV      R3,SP
        LDRB     R3,[R3, #+0]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        LDR      R3,??DataTable131_1
        STRB     R6,[R3, #+4]
// 2573           TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        MOVS     R3,#+32
        ANDS     R1,R1,R2
        ORRS     R1,R1,R3
        STRB     R1,[R4, #+0]
// 2574           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R1,??DataTable131
        LDRB     R6,[R1, #+0]
        ANDS     R2,R2,R6
        ORRS     R3,R3,R2
        STRB     R3,[R1, #+0]
// 2575           for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
        LDR      R1,??DataTable134
// 2576           {
// 2577             TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
??range_tx_test_8:
        LDRB     R2,[R1, R5]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R5
        STRB     R2,[R3, #+2]
// 2578           }
        ADDS     R5,R5,#+1
        CMP      R5,#+10
        BCC      ??range_tx_test_8
// 2579 #if SMAC_FEATURE_SECURITY ==  TRUE
// 2580         {
// 2581           uint8_t fill_counter;
// 2582           for(fill_counter=sizeof(u8RangeExpectedString); fill_counter<16; fill_counter++)
// 2583           {
// 2584              TX_msg.pu8Buffer->u8Data[fill_counter] = '\0';
// 2585           }
// 2586           TX_msg.u8BufSize = 16;
// 2587           (void)CipherMsgU8(&(TX_msg.pu8Buffer->u8Data[0]), (TX_msg.u8BufSize));
// 2588         }
// 2589 #else
// 2590         TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));
        MOVS     R1,#+10
        STRB     R1,[R4, #+8]
// 2591 #endif
// 2592 
// 2593 
// 2594 #if INTERFACE_TYPE == SERIAL              
// 2595           Uart_Print("\r\n\nThe transceiver is now transmitting...");
// 2596 #endif          
// 2597           u8AppState = TRANSMITING_RANGE_TX_ST;
        B        ??range_tx_test_6
// 2598       }
// 2599       break;
// 2600       
// 2601       case TRANSMITING_RANGE_TX_ST:
// 2602       {
// 2603         if(is_tx_msg_final_state(TX_msg))
??range_tx_test_9:
        CMP      R3,#+4
        BEQ      ??range_tx_test_10
        CMP      R3,#+5
        BEQ      ??range_tx_test_10
        CMP      R3,#+7
        BEQ      ??range_tx_test_10
        CMP      R3,#+3
        BNE      ??range_tx_test_11
// 2604         {
// 2605           
// 2606           DelayMs(5);
??range_tx_test_10:
        MOVS     R0,#+5
        BL       DelayMs
// 2607           MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2608         }
// 2609         u8AppState = LISTEN_RANGE_TX_ST;
??range_tx_test_11:
        MOVS     R0,#+4
        B        ??range_tx_test_6
// 2610       }  
// 2611       break;
// 2612       
// 2613       case LISTEN_RANGE_TX_ST:
// 2614       {
// 2615         if(is_rx_msg_final_state(RX_msg))
??range_tx_test_12:
        CMP      R2,#+5
        BEQ      ??range_tx_test_13
        CMP      R2,#+6
        BEQ      ??range_tx_test_13
        CMP      R2,#+8
        BEQ      ??range_tx_test_13
        CMP      R2,#+4
        BNE      ??range_tx_test_14
// 2616         {
// 2617           RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_tx_test_13:
        MOVS     R0,#+12
        LDR      R1,??DataTable131_1
        STRB     R0,[R1, #+12]
// 2618           MLMERXEnableRequest(&RX_msg, 0x00000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        LDR      R0,??DataTable135
        BL       MLMERXEnableRequest
// 2619         }
// 2620         u8AppState = WAITING_RANGE_TX_ST;
// 2621       }
// 2622       break;
// 2623       
// 2624       case WAITING_RANGE_TX_ST:
// 2625       {
// 2626         if(is_tx_msg_final_state(TX_msg))
// 2627         {
// 2628           u8AppState = TRANSMITING_RANGE_TX_ST;
// 2629         }
// 2630         if(is_rx_msg_final_state(RX_msg))
// 2631         {
// 2632           u8AppState = LISTEN_RANGE_TX_ST;
// 2633         }
// 2634         if(TRUE == gu8ValidAckPacket)
// 2635         {
// 2636           gu8ValidAckPacket = FALSE;
// 2637           u8AppState = RANGE_INDICATION_TX_ST;
// 2638         }
// 2639       }
// 2640       break;
// 2641       
// 2642       case RANGE_INDICATION_TX_ST:
// 2643       {
// 2644         u8AppState = WAITING_RANGE_TX_ST;
??range_tx_test_14:
        MOVS     R0,#+3
??range_tx_test_6:
        STRB     R0,[R4, #+18]
// 2645       }
// 2646       break;
// 2647       
// 2648       default:
// 2649       {
// 2650       }
// 2651       break;
// 2652     }
// 2653   }
// 2654 #if INTERFACE_TYPE == SERIAL                  
// 2655     Uart_Poll(mUARTRxBuffer);
// 2656   }while (mUARTRxBuffer[0] != Exit);  
// 2657   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2658   MLMETestMode(u8CurrentMode);
// 2659 #endif
// 2660 
// 2661 #if INTERFACE_TYPE == MANUAL      
// 2662   gu8TestAlreadyStarted = TRUE;
??range_tx_test_4:
        MOVS     R0,#+1
        LDR      R1,??DataTable131_1
        STRB     R0,[R1, #+31]
// 2663 #endif
// 2664 }
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
// 2665 
// 2666 
// 2667 /************************************************************************************
// 2668 * configure_clock_setting
// 2669 *
// 2670 * This function adjust the clock setting selected by the user in the serial interface.
// 2671 *
// 2672 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2673 void configure_clock_settings(void)
// 2674 {
configure_clock_settings:
        PUSH     {R3-R7,LR}
        LDR      R7,??DataTable136
        LDR      R4,??DataTable136_1  ;; 0x80003040
// 2675   char option_menu, option;
// 2676    do{
// 2677       option_menu = clock_setting_menu();
??configure_clock_settings_0:
        BL       clock_setting_menu
        MOVS     R5,R0
// 2678       switch(option_menu)
        CMP      R0,#+49
        BEQ      ??configure_clock_settings_1
        CMP      R0,#+50
        BEQ      ??configure_clock_settings_2
        CMP      R0,#+51
        BEQ      ??configure_clock_settings_3
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_4
        B        ??configure_clock_settings_5
// 2679       {
// 2680         case BulkCapacitor:
// 2681          do
// 2682           {
// 2683             option = bulk_cap_menu();
??configure_clock_settings_1:
        BL       bulk_cap_menu
        MOVS     R6,R0
// 2684             switch(option)
        CMP      R0,#+68
        BEQ      ??configure_clock_settings_6
        CMP      R0,#+69
        BEQ      ??configure_clock_settings_7
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_8
        B        ??configure_clock_settings_9
// 2685             {
// 2686               case EnableBulkCapacitor:
// 2687                 enable_bulk_cap(); 
??configure_clock_settings_7:
        LDR      R0,[R4, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2688                 u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        B.N      ??configure_clock_settings_10
// 2689                 break;
// 2690               case DisableBulkCapacitor:
// 2691                 disable_bulk_cap(); 
??configure_clock_settings_6:
        LDR      R0,[R4, #+0]
        LDR      R1,??DataTable137  ;; 0xfdffffff
        ANDS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2692                 u8BulkCapState = gDisable_c;
        MOVS     R0,#+0
??configure_clock_settings_10:
        STRB     R0,[R7, #+26]
// 2693                 break;
        B        ??configure_clock_settings_8
// 2694               case PreviousMenu:
// 2695                 break;
// 2696               default:
// 2697                 Uart_Print("  Invalid Option!!!");
??configure_clock_settings_9:
        Nop      
        ADR.N    R0,?_105
        BL       Uart_Print
// 2698                 break;              
// 2699             }
// 2700           }while(option != PreviousMenu);
??configure_clock_settings_8:
        CMP      R6,#+112
        BNE      ??configure_clock_settings_1
        B        ??configure_clock_settings_4
// 2701           break;
// 2702           
// 2703         case CoarseTune:
// 2704           coarse_tune_adjust();
??configure_clock_settings_2:
        BL       coarse_tune_adjust
// 2705           break;
        B        ??configure_clock_settings_4
// 2706           
// 2707         case FineTune:
// 2708           fine_tune_adjust();
??configure_clock_settings_3:
        BL       fine_tune_adjust
// 2709           break;
        B        ??configure_clock_settings_4
// 2710           
// 2711         case PreviousMenu:
// 2712           break;
// 2713           
// 2714         default:
// 2715           Uart_Print("  Invalid Option!!!\n");
??configure_clock_settings_5:
        ADR.N    R0,?_114
        BL       Uart_Print
// 2716           break;
// 2717      }
// 2718   }while(option_menu != PreviousMenu); 
??configure_clock_settings_4:
        CMP      R5,#+112
        BNE      ??configure_clock_settings_0
// 2719 }
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
// 2720 
// 2721 /************************************************************************************
// 2722 * coarse_tune_adjust
// 2723 *
// 2724 * This function ajusts the current coarse tune value to the new typed by the user 
// 2725 * in the serial interface.
// 2726 *
// 2727 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2728 void coarse_tune_adjust(void)
// 2729 {
coarse_tune_adjust:
        PUSH     {R4-R6,LR}
// 2730   uint8_t u8TempCoarse;
// 2731   Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_115
        BL       Uart_Print
// 2732   Uart_Print("\r  Current Coarse Tune Value: ");
        LDR      R0,??DataTable137_1
        BL       Uart_Print
// 2733   Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+24
        BL       Uart_PrintHex
// 2734   Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
        LDR      R5,??DataTable137_2
        MOVS     R0,R5
        BL       Uart_Print
// 2735   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2736   u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2737   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2738 
// 2739   if(u8TempCoarse > 0X00)
        CMP      R6,#+0
        BEQ      ??coarse_tune_adjust_0
// 2740   {
// 2741     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??coarse_tune_adjust_1
// 2742   }
// 2743   else
// 2744   {
// 2745     u8CurrentCoarseTune = (u8TempCoarse << 4);
??coarse_tune_adjust_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+24]
// 2746     u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+24]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+24]
// 2747     set_xtal_coarse_tune(u8CurrentCoarseTune); 
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
// 2748   }
// 2749 }
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
// 2750 
// 2751 /************************************************************************************
// 2752 * fine_tune_adjust
// 2753 *
// 2754 * This function ajusts the current fine tune value to the new typed by the user
// 2755 * through the serial interface.
// 2756 *
// 2757 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2758 void fine_tune_adjust()
// 2759 {
fine_tune_adjust:
        PUSH     {R4-R6,LR}
// 2760   uint8_t u8TempFine;
// 2761   Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_117
        BL       Uart_Print
// 2762   Uart_Print("\r  Current Fine Tune Value: ");
        LDR      R0,??DataTable137_4
        BL       Uart_Print
// 2763   Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+25
        BL       Uart_PrintHex
// 2764   Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
        LDR      R5,??DataTable137_5
        MOVS     R0,R5
        BL       Uart_Print
// 2765   u8TempFine = Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2766   u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2767   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2768   if(u8TempFine > 0X01)
        CMP      R6,#+2
        BLT      ??fine_tune_adjust_0
// 2769   {
// 2770     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??fine_tune_adjust_1
// 2771   }
// 2772   else
// 2773   {
// 2774     u8CurrentFineTune = (u8TempFine << 4);
??fine_tune_adjust_0:
        LSLS     R0,R6,#+4
        STRB     R0,[R4, #+25]
// 2775     u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+25]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+25]
// 2776     set_xtal_fine_tune(u8CurrentFineTune); 
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
// 2777   }
// 2778 
// 2779 }
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
// 2780 /************************************************************************************
// 2781 * PrintTestMode
// 2782 *
// 2783 * This function prints the Test Mode name received as parameter.
// 2784 *
// 2785 *********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2786 void PrintTestMode(Test_Mode_t TestModeValue)
// 2787 {
PrintTestMode:
        MOVS     R1,R0
        LDR      R0,??DataTable137_7
        CMP      R1,#+6
        BLS      ??PrintTestMode_1
        BX       LR
??PrintTestMode_1:
        PUSH     {R7,LR}
// 2788   switch(TestModeValue)
        ADR      R2,??PrintTestMode_0
        LDRB     R2,[R2, R1]
        ADD      PC,PC,R2
        Nop      
        DATA
??PrintTestMode_0:
        DC8      0x8,0x1E,0x18,0x1C
        DC8      0x10,0x14,0xC,0x0
        THUMB
// 2789   {
// 2790     case SMAC_TEST_MODE_IDLE:
// 2791       Uart_Print("IDLE MODE\n");
??PrintTestMode_2:
        ADR.N    R0,?_119
        B        ??PrintTestMode_3
// 2792       break;
// 2793 	  
// 2794     case SMAC_TEST_MODE_CONTINUOUS_RX:
// 2795       Uart_Print("CONTINUOUS RECEPTION\n");
??PrintTestMode_4:
        ADR.N    R0,?_120
        B        ??PrintTestMode_3
// 2796       break;
// 2797 	  
// 2798     case SMAC_TEST_MODE_PULSE_PRBS9_TX:
// 2799       Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
// 2800       break;
// 2801 	  
// 2802     case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
// 2803       Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
??PrintTestMode_5:
        ADDS     R0,R0,#+40
        B        ??PrintTestMode_3
// 2804       break;       
// 2805 	  
// 2806     case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
// 2807       Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
??PrintTestMode_6:
        ADDS     R0,R0,#+76
        B        ??PrintTestMode_3
// 2808       break;      
// 2809 	  
// 2810     case SMAC_TEST_MODE_PER_TX:
// 2811       Uart_Print("PACKET ERROR RATE TEST\n");
??PrintTestMode_7:
        ADR.N    R0,?_121
        B        ??PrintTestMode_3
// 2812       break;
// 2813 	  
// 2814     case SMAC_TEST_MODE_RANGE_TX:
// 2815       Uart_Print("RANGE TEST\n");
??PrintTestMode_8:
        ADR.N    R0,?_122
??PrintTestMode_3:
        BL       Uart_Print
// 2816       break;
// 2817 	  
// 2818     default:
// 2819       break;
// 2820   }
// 2821 }
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
// 2822 
// 2823 /************************************************************************************
// 2824 * PrintChannel
// 2825 *
// 2826 * This function prints the Channel number received as parameter.
// 2827 *
// 2828 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2829 void PrintChannel(channel_num_t u8ChannelValue)
// 2830 {
PrintChannel:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2831   if( TOTAL_CHANN > u8ChannelValue ){
        CMP      R0,#+16
        BGE      ??PrintChannel_0
// 2832     u8ChannelValue += 11;
// 2833     Uart_Print("CHANNEL ");
        ADR.N    R0,?_123
        BL       Uart_Print
// 2834     Uart_PrintByteDec(u8ChannelValue);
        ADDS     R4,R4,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       Uart_PrintByteDec
// 2835     Uart_Print("\n");
        ADR      R0,??DataTable138  ;; "\n"
        BL       Uart_Print
// 2836   }
// 2837 }
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
// 2838 
// 2839 /************************************************************************************
// 2840 * LEDs_LQI_indicator
// 2841 *
// 2842 * This function show the four possible LQI adjusted values using three LEDs.
// 2843 *
// 2844 ************************************************************************************/
// 2845 #if (gLEDSupported_d)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2846 void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
// 2847 {
LEDs_LQI_indication:
        PUSH     {R3-R5,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
// 2848   uint8_t LEDs_state[4][4]={gFarRange_c,LED_OFF,LED_OFF,LED_OFF,
// 2849                             gMediumRange_c,LED_ON,LED_OFF,LED_OFF,
// 2850                             gNearRange_c,LED_ON,LED_ON,LED_OFF,
// 2851                             gVeryNearRange_c,LED_ON,LED_ON,LED_ON
// 2852                            };
        MOV      R0,SP
        ADR.N    R1,?_124
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
// 2853   Gpio_SetPinData(LED2_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
        LSLS     R4,R4,#+2
        MOV      R5,SP
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+24
        BL       Gpio_SetPinData
// 2854   Gpio_SetPinData(LED3_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+2]
        MOVS     R0,#+25
        BL       Gpio_SetPinData
// 2855   Gpio_SetPinData(LED4_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+44
        BL       Gpio_SetPinData
// 2856 }
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
// 2857 #endif
// 2858 
// 2859 /************************************************************************************
// 2860 * TMR_Init
// 2861 *
// 2862 * This function configurates the timer to generate a output frequency at 2 MHz.
// 2863 * 
// 2864 **********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2865 void TMR_Init(void)
// 2866 {              
TMR_Init:
        PUSH     {R1-R5,LR}
// 2867   TmrConfig_t pConfig;
// 2868   TmrStatusCtrl_t pStatusCtrl;
// 2869   TmrComparatorStatusCtrl_t pCompStatusCtrl;
// 2870   
// 2871   TmrInit();
        BL       TmrInit
// 2872   GpioTmrInit();
        BL       GpioTmrInit
// 2873   TmrEnable(gTmr1_c);
        MOVS     R0,#+1
        BL       TmrEnable
// 2874  
// 2875   SetLoadVal(gTmr1_c, 0x00);
        LDR      R0,??DataTable138_1  ;; 0x80007020
        MOVS     R4,#+0
        STRH     R4,[R0, #+6]
// 2876   SetCntrVal(gTmr1_c, 0x00);
        STRH     R4,[R0, #+10]
// 2877   SetCompLoad1Val(gTmr1_c, 0x05);         
        MOVS     R5,#+5
        STRH     R5,[R0, #+16]
// 2878   SetCompLoad2Val(gTmr1_c, 0x05);        
        STRH     R5,[R0, #+18]
// 2879  
// 2880   SetComp1Val(gTmr1_c, 0x05);  
        STRH     R5,[R0, #+0]
// 2881   SetComp2Val(gTmr1_c, 0x05);              
        STRH     R5,[R0, #+2]
// 2882      
// 2883   TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       TmrSetMode
// 2884 
// 2885   pConfig.tmrOutputMode = gTmrToggleOF_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 2886   pConfig.tmrCoInit = FALSE;
        STRB     R4,[R0, #+1]
// 2887   pConfig.tmrCntDir = FALSE;
        STRB     R4,[R0, #+2]
// 2888   pConfig.tmrCntLen = TRUE;
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
// 2889   pConfig.tmrCntOnce = FALSE;
        STRH     R4,[R0, #+4]
// 2890   pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
// 2891   pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
// 2892   TmrSetConfig(gTmr1_c, &pConfig);  
        ADD      R1,SP,#+4
        MOVS     R0,#+1
        BL       TmrSetConfig
// 2893 
// 2894   pCompStatusCtrl.uintValue =0x06;
        MOVS     R0,#+6
        MOV      R1,SP
        STRH     R0,[R1, #+0]
// 2895   TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
        MOVS     R0,#+1
        BL       TmrSetCompStatusControl
// 2896  
// 2897   pStatusCtrl.uintValue = 0x05;
        MOV      R0,SP
        STRH     R5,[R0, #+2]
// 2898   TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
        ADD      R1,SP,#+0
        ADDS     R1,R1,#+2
        MOVS     R0,#+1
        BL       TmrSetStatusControl
// 2899 }
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
// 2900 
// 2901 /************************************************************************************
// 2902 * GpioTmrInit
// 2903 *
// 2904 * This function initializate the Timer´s gpios.
// 2905 *
// 2906 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2907 void GpioTmrInit(void)
// 2908 {
GpioTmrInit:
        PUSH     {R7,LR}
// 2909   Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
// 2910   Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
// 2911   Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinFunction
// 2912   Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
// 2913 }
        POP      {R0,R3}
        BX       R3               ;; return
// 2914 
// 2915 /************************************************************************************
// 2916 * display_config function
// 2917 *
// 2918 * This function prints an ASCII Freescale's logo.
// 2919 ************************************************************************************/
// 2920 #if INTERFACE_TYPE == SERIAL
// 2921 static void print_freescale_logo(void)
// 2922 {
// 2923   Uart_Print("\n\r\n\r\n\r      #\n");
// 2924   Uart_Print("\r     ###\n");
// 2925   Uart_Print("\r    ###  *\n");
// 2926   Uart_Print("\r     #  ***\n");
// 2927   Uart_Print("\r       ***  #\n");
// 2928   Uart_Print("\r        *  ###\n");
// 2929   Uart_Print("\r          ###\n");
// 2930   Uart_Print("\r        *  #\n");
// 2931   Uart_Print("\r       ***\n");
// 2932   Uart_Print("\r      ***  #\n");
// 2933   Uart_Print("\r    #  *  ###\n");
// 2934   Uart_Print("\r   ###   ###\n");
// 2935   Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
// 2936   Uart_Print("\r   #  ***\n");
// 2937   Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
// 2938   Uart_Print("\r   #  *\n");
// 2939   Uart_Print("\r  ###               2 0 1 1\n");
// 2940   Uart_Print("\r ###\n");
// 2941   Uart_Print("\r  #           Press any key to continue...\n\n");
// 2942 }
// 2943 #endif
// 2944 
// 2945 /*******************************************************************************
// 2946 * DisplayFreescaleLogo
// 2947 *
// 2948 * This function displays the Freescale Logo in the LCD.
// 2949 *******************************************************************************/
// 2950 #if (gLCDSupported_d)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2951 void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
// 2952 {
DisplayFreescaleLogo:
        PUSH     {R1-R7,LR}
// 2953   uint8_t u8Count;
// 2954   uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
        MOV      R2,SP
        LDR      R3,??DataTable139
        LDM      R3!,{R4-R6}
        STM      R2!,{R4-R6}
// 2955   uint8_t i;
// 2956   
// 2957   for(i=0; i < 8; i++)
        MOVS     R6,#+0
        MOVS     R5,R0
        MOVS     R4,R1
// 2958   {  
// 2959     LCD_WritePixel(xStartCoord, yStartCoord, 1);
??DisplayFreescaleLogo_0:
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2960     LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
        ADDS     R7,R4,#+1
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2961     LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2962     LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2963     LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
        ADDS     R7,R4,#+2
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2964     LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2965     LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2966     LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2967     LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2968     LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
        ADDS     R7,R4,#+3
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2969     LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2970     LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2971     LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2972     LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2973     LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+4
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2974     LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2975     LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2976     LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2977     LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2978     LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2979     LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2980     LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2981     LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  
        ADDS     R4,R4,#+6
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2982 
// 2983     
// 2984    if(i == 2 || i == 4 || i == 6)
        CMP      R6,#+2
        BEQ      ??DisplayFreescaleLogo_1
        CMP      R6,#+4
        BEQ      ??DisplayFreescaleLogo_2
        CMP      R6,#+6
        BNE      ??DisplayFreescaleLogo_3
// 2985    {
// 2986      if(i == 4)
// 2987      {
// 2988        yStartCoord += 3;
// 2989        xStartCoord -= 9;
// 2990      }
// 2991      else
// 2992      {
// 2993        yStartCoord += 6;
// 2994        xStartCoord -= 6;
??DisplayFreescaleLogo_1:
        SUBS     R5,R5,#+6
        B        ??DisplayFreescaleLogo_4
// 2995      }
??DisplayFreescaleLogo_2:
        MOVS     R4,R7
        SUBS     R5,R5,#+9
        B        ??DisplayFreescaleLogo_4
// 2996    }
// 2997    else
// 2998    {
// 2999     yStartCoord += 3;
??DisplayFreescaleLogo_3:
        MOVS     R4,R7
// 3000     xStartCoord += 4;
        ADDS     R5,R5,#+4
// 3001 
// 3002    }
// 3003   }
??DisplayFreescaleLogo_4:
        ADDS     R6,R6,#+1
        CMP      R6,#+8
        BGE      .+4
        B        ??DisplayFreescaleLogo_0
// 3004  (void)LCD_SetFont(gLCD_VerdanaFont_c);
        MOVS     R0,#+1
        BL       LCD_SetFont
// 3005   yStartCoord -= 20;
        SUBS     R4,R4,#+20
// 3006   xStartCoord += 15;
        ADDS     R5,R5,#+15
// 3007   
// 3008   for(u8Count = 0; u8Count < 9; u8Count++)
        MOVS     R6,R4
        MOVS     R4,#+0
// 3009   {
// 3010     LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
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
// 3011     xStartCoord += 6;
        ADDS     R5,R5,#+6
// 3012   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLE      ??DisplayFreescaleLogo_5
// 3013 
// 3014  (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
// 3015   yStartCoord -= 20;
// 3016   xStartCoord += 15;
// 3017 }
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
// 3018 #endif
// 3019 
// 3020 
// 3021 #if (gLCDSupported_d)
// 3022   

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3023 void DisplayTestMode(ConfigOption_t u8ConfigOption)
// 3024 {
DisplayTestMode:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
// 3025   uint8_t line = 0;
// 3026   uint8_t i;
// 3027   ClearDisplay();
        BL       ClearDisplay
// 3028   LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");
        LDR      R1,??DataTable139_1
        MOVS     R0,#+0
        BL       LCD_WriteString_NormalFont
// 3029 
// 3030   for(i = 0; i< 130 ; i++)
        MOVS     R4,#+0
// 3031   {
// 3032     LCD_WritePixel(i,10,1);  
??DisplayTestMode_0:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3033     LCD_WritePixel(i,11,1);  
        MOVS     R2,#+1
        MOVS     R1,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3034   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+130
        BLT      ??DisplayTestMode_0
// 3035   line++;
// 3036   
// 3037 
// 3038   switch(u8ConfigOption)
        LDR      R6,??DataTable139_2
        LDR      R4,??DataTable139_3
        CMP      R5,#+0
        BEQ      ??DisplayTestMode_1
        CMP      R5,#+2
        BEQ      ??DisplayTestMode_2
        BCC      ??DisplayTestMode_3
        B        ??DisplayTestMode_4
// 3039   {
// 3040     case gChannel_c:
// 3041       line++;
// 3042       LCD_WriteString_NormalFont(line," Option: Channel");
??DisplayTestMode_1:
        LDR      R1,??DataTable139_4
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3043       line++;
// 3044       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3045       line++;
// 3046       LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
        LDR      R1,??DataTable139_5
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3047       line++;
// 3048       LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
        LDR      R1,??DataTable139_6
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3049       LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable139_7
        B.N      ??DisplayTestMode_5
// 3050     break;
// 3051     
// 3052     case gPower_c:
// 3053       line++;
// 3054       LCD_WriteString_NormalFont(line," Option: Power");
??DisplayTestMode_3:
        LDR      R1,??DataTable139_8
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3055       line++;
// 3056       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3057       line++;
// 3058       LCD_WriteString_NormalFont(line,"  SW2 Power Up");
        LDR      R1,??DataTable139_9
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3059       line++;
// 3060       LCD_WriteString_NormalFont(line,"  SW3 Power Down");
        LDR      R1,??DataTable139_10
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3061       LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable139_11
??DisplayTestMode_5:
        BL       LCD_WriteStringValue
// 3062     break;
        B        ??DisplayTestMode_4
// 3063     
// 3064     case gRxTestMode_c:
// 3065       line++;
// 3066       
// 3067       if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
??DisplayTestMode_2:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      ??DisplayTestMode_6
// 3068       {
// 3069         LCD_WriteString_NormalFont(line," Option: Test");
        LDR      R1,??DataTable139_12
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3070         line++;
// 3071         LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3072         line++;
// 3073         LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        LDR      R1,??DataTable139_13
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3074         line++;
// 3075         LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        LDR      R1,??DataTable139_14
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3076         line++;
        MOVS     R5,#+6
// 3077         LCD_WriteString_NormalFont(7,"Idle Mode");
        LDR      R1,??DataTable139_15
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 3078       }
// 3079     /* RX options */  
// 3080       /*
// 3081       if(SMAC_CONTINUOUS_RX == u8CurrentMode)
// 3082       {
// 3083         LCD_WriteString_NormalFont(line," Continuous Reception");
// 3084       } 
// 3085       */
// 3086       if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
??DisplayTestMode_6:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BNE      ??DisplayTestMode_7
// 3087       {
// 3088         LCD_WriteString_NormalFont(line,"PER Test running");
        ADR.N    R1,?_138
        MOVS     R0,R5
        BL       LCD_WriteString_NormalFont
// 3089         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3090         LCD_WriteString_NormalFont(line,"SW4 for PER TX");
        Nop      
        ADR.N    R1,?_139
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3091       }  
// 3092 
// 3093       if(SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??DisplayTestMode_7:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+3
        BNE      ??DisplayTestMode_8
// 3094       {
// 3095         LCD_WriteString_NormalFont(line,"Range Test running");
        ADR.N    R1,?_140
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3096         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3097         LCD_WriteString_NormalFont(line,"SW4 for Range TX");
        LDR      R1,??DataTable139_16
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3098       }  
// 3099       
// 3100     /* TX options */  
// 3101       if(SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode)
??DisplayTestMode_8:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BNE      ??DisplayTestMode_9
// 3102       {
// 3103         LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
        ADR.N    R1,?_142
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3104       }            
// 3105       if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
??DisplayTestMode_9:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+4
        BNE      ??DisplayTestMode_10
// 3106       {
// 3107         LCD_WriteString_NormalFont(line," Cont TX Mod ");
        ADR.N    R1,?_143
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3108       }              
// 3109       if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
??DisplayTestMode_10:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+5
        BNE      ??DisplayTestMode_4
// 3110       {
// 3111         LCD_WriteString_NormalFont(line," Cont TX No Mod ");
        ADR.N    R1,?_144
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3112       }        
// 3113       
// 3114     break;
// 3115   
// 3116     default:
// 3117     break;
// 3118   }
// 3119 }
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
        DC32     ?_141

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_138:
        DC8 "PER Test running"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_139:
        DC8 "SW4 for PER TX"
        DATA8
        DC8 0

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
// 3120 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3121 void ClearDisplay(void)
// 3122 {
ClearDisplay:
        PUSH     {R3-R5,LR}
// 3123   uint8_t u8Line;
// 3124   for(u8Line = 0; u8Line < 9; u8Line++)
        MOVS     R5,#+0
        ADR.N    R4,?_47
// 3125   {
// 3126     LCD_WriteString_NormalFont(u8Line,"                     ");
??ClearDisplay_0:
        MOVS     R1,R4
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3127   }
        ADDS     R5,R5,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+9
        BLT      ??ClearDisplay_0
// 3128 }
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
// 3129 
// 3130 #endif
// 3131 
// 3132 /************************************************************************************
// 3133 *************************************************************************************
// 3134 * Private Debug stuff
// 3135 *************************************************************************************
// 3136 ************************************************************************************/
// 3137 
// 3138 
// 
//    46 bytes in section .bss
//   504 bytes in section .data
// 3 230 bytes in section .rodata
// 8 004 bytes in section .text
// 
// 8 004 bytes of CODE  memory
// 3 230 bytes of CONST memory
//   550 bytes of DATA  memory
//
//Errors: none
//Warnings: none
