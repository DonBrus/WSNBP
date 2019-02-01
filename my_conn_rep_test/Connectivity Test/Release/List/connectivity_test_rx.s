///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.2.178/W32 for ARM        01/Feb/2019  11:50:21
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c
//    Command line =  
//        -f C:\Users\Fabio\AppData\Local\Temp\EW47C3.tmp
//        ("C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c" -D NDEBUG -D F24MHZ
//        -D SECURITY_ENABLED -D MC13226Included_d=0 --preprocess=cs
//        "C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Release\List" -lC
//        "C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Release\List" -lB
//        "C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Release\List" --diag_suppress Pe940,Pe951,Pe911 -o
//        "C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Release\Obj" --endian=little --cpu=ARM7TDMI-S --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        "C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\SMAC\Drivers\Interface\" -I
//        "C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\PLM\Interface\" --cpu_mode thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
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
        PUBLIC ku8DoneStrReceiver
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
// C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity Test\Application\Source\connectivity_test_rx.c
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

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  373 const uint8_t ku8DoneStrReceiver[] = {'D', 'O', 'N', 'R' };
ku8DoneStrReceiver:
        DATA8
        DC8 68, 79, 78, 82
//  374 
//  375 
//  376 four_digit_bcd_t c_test_num = {0xF,0xF,0xF,1};
//  377 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  378 const uint8_t u8RangeExpectedString[]= {'S','i','m','p','l','e',' ','M','A','C'};
u8RangeExpectedString:
        DATA8
        DC8 83, 105, 109, 112, 108, 101, 32, 77, 65, 67, 0, 0
//  379 const uint8_t ku8AckString[] = {'A','C','K'};

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  380 const uint16_t u16TenPower[] = {1,10,100,1000,10000};
u16TenPower:
        DATA16
        DC16 1, 10, 100, 1000, 10000
        DC8 0, 0
//  381 
//  382 uint8_t u8LQIIcon4_c[]={0,0,0,0,48,176,176,176,176,176,176,176,176,176,176,176,176,
//  383                         176,48,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,
//  384                         109,109,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,
//  385                         6,0,0,0,0,0,0,0,0,0};																					
//  386 																					
//  387 uint8_t u8LQIIcon3_c[]={0,0,0,0,0,128,128,128,128,128,128,128,128,128,128,128,128,128,
//  388                         0,0,0,0,0,0,0,0,0,0,0,1,13,109,109,109,109,109,109,109,109,109,
//  389                         13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,
//  390                         0,0,0,0};																					
//  391 																					
//  392 uint8_t u8LQIIcon2_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,
//  393                         108,108,108,108,108,108,108,108,108,12,0,0,0,0,0,0,0,0,0,0,0,0,
//  394                         0,0,0,6,10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
//  395 																					
//  396 uint8_t u8LQIIcon1_c[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
//  397                         96,96,96,96,96,96,96,96,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
//  398                         10,10,254,10,10,6,0,0,0,0,0,0,0,0,0};																					
//  399 																		
//  400 uint8_t u8RxIcon1_c[]={0,0,62,65,0,62,65,0,62,65,0,252,252,0,65,62,0,65,62,0,65,62,
//  401                       0,0,0,0,0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,
//  402                       0,0,0,0,0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};	
//  403 
//  404 uint8_t u8RxIcon2_c[]={0,0,0,0,0,0,0,0,62,65,0,252,252,0,65,62,0,0,0,0,0,0,0,0,0,0,
//  405                        0,0,0,0,0,0,0,0,254,171,87,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
//  406                        0,0,0,0,224,255,250,253,255,224,0,0,0,0,0,0,0,0,0};																					
//  407 																		
//  408 
//  409 /************************************************************************************
//  410 *************************************************************************************
//  411 * Public functions
//  412 *************************************************************************************
//  413 ************************************************************************************/
//  414 extern void ResetMaca(void);
//  415 
//  416 /************************************************************************************
//  417 *************************************************************************************
//  418 * Variables declaration
//  419 *************************************************************************************
//  420 ************************************************************************************/
//  421 Test_Mode_t u8CurrentMode;
//  422 channel_num_t u8TestModeChannel;
//  423 uint8_t u8TestModePower;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  424 uint8_t u8LedPowerState;
u8LedPowerState:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
c_test_num:
        DATA8
        DC8 255, 31, 0, 0
//  425 message_t TX_msg;
//  426 message_t RX_msg;
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
//  427 message_t ACK_msg;
//  428 uint8_t mUARTRxBuffer[SZ_OF_UART_RX];
//  429 ConfigOption_t CurrentOption, ManualModeOption;
CurrentOption:
        DC8 0
//  430 uint8_t u8CurrentCoarseTune;
u8CurrentCoarseTune:
        DC8 0
//  431 uint8_t u8CurrentFineTune;
u8CurrentFineTune:
        DC8 0
//  432 uint8_t u8BulkCapState;
u8BulkCapState:
        DC8 0
//  433 uint16_t waiting_loops;
//  434 bool_t gbDataIndicationFlag;
gbDataIndicationFlag:
        DC8 0
//  435 uint8_t init_flag;
//  436 uint8_t gu8TestModeEvents;
gu8TestModeEvents:
        DC8 0
//  437 uint32_t gu32PerRxEvents;
//  438 uint8_t gu8ValidRangePacket;
gu8ValidRangePacket:
        DC8 0
//  439 uint8_t gu8ValidAckPacket;
gu8ValidAckPacket:
        DC8 0
//  440 uint8_t gu8TestAlreadyStarted;
gu8TestAlreadyStarted:
        DC8 0
mUARTRxBuffer:
        DATA64
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
gu32PerRxEvents:
        DATA32
        DC8 0, 0, 0, 0
//  441 uint8_t gu8SCIData[10];  
//  442 
//  443 uint8_t maxLQI=0,minLQI=255;
//  444 
//  445 /************************************************************************************
//  446 * main function
//  447 *
//  448 * Executes the main function.
//  449 *
//  450 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  451 void Main(void)
//  452 {
Main:
        PUSH     {R7,LR}
        SUB      SP,SP,#+152
//  453   
//  454   uint8_t dataTX[TX_SIZE];
//  455   uint8_t dataRX[RX_SIZE];
//  456   uint8_t dataACK[ACK_SIZE];
//  457 
//  458   MSG_INIT(TX_msg, &dataTX, NULL);
        LDR      R0,??DataTable106
        ADD      R1,SP,#+80
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  459   MSG_INIT(RX_msg, &dataRX, test_mode_rx_cb);
        LDR      R0,??DataTable106_1
        ADD      R2,SP,#+8
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable106_2
        STR      R2,[R0, #+16]
//  460   MSG_INIT(ACK_msg, &dataACK, NULL);
        LDR      R0,??DataTable106_3
        MOV      R2,SP
        STR      R2,[R0, #+4]
        STR      R1,[R0, #+12]
//  461 
//  462   connectivity_app_init();
        BL       connectivity_app_init
//  463     
//  464   for(;;)
//  465   {
//  466     process_test_mode_app();
??Main_0:
        BL       process_test_mode_app
        B        ??Main_0
//  467   }
//  468 }
//  469 
//  470 /************************************************************************************
//  471 *************************************************************************************
//  472 * Private functions
//  473 *************************************************************************************
//  474 ************************************************************************************/
//  475 /************************************************************************************
//  476 * connectivity_app_init
//  477 *
//  478 * This function initializate the application settings.
//  479 *
//  480 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 void connectivity_app_init(void)
//  482 {
connectivity_app_init:
        PUSH     {R3-R5,LR}
//  483   set_initial_option_values();
        LDR      R4,??DataTable106_1
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
//  484  
//  485   ITC_Init();
        BL       ITC_Init
//  486   IntAssignHandler(gMacaInt_c, (IntHandlerFunc_t)MACA_Interrupt);
        LDR      R1,??DataTable106_4
        MOVS     R0,#+7
        BL       IntAssignHandler
//  487   ITC_SetPriority(gMacaInt_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       ITC_SetPriority
//  488   ITC_EnableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_EnableInterrupt
//  489   
//  490 #if INTERFACE_TYPE == MANUAL  
//  491   IntAssignHandler(gCrmInt_c, (IntHandlerFunc_t)CRM_Isr);
        LDR      R1,??DataTable106_5
        MOVS     R0,#+3
        BL       IntAssignHandler
//  492   ITC_SetPriority(gCrmInt_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       ITC_SetPriority
//  493   ITC_EnableInterrupt(gCrmInt_c);
        MOVS     R0,#+3
        BL       ITC_EnableInterrupt
//  494 #endif
//  495   
//  496   IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr);
        LDR      R1,??DataTable106_6
        MOVS     R0,#+5
        BL       IntAssignHandler
//  497   ITC_SetPriority(gTmrInt_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       ITC_SetPriority
//  498   ITC_EnableInterrupt(gTmrInt_c);
        MOVS     R0,#+5
        BL       ITC_EnableInterrupt
//  499   
//  500 #if INTERFACE_TYPE == MANUAL
//  501   CRM_RegisterISR(gCrmKB4WuEvent_c,select_config_option_isr);
        LDR      R1,??DataTable106_7
        MOVS     R0,#+2
        BL       CRM_RegisterISR
//  502   CRM_RegisterISR(gCrmKB5WuEvent_c,increase_config_option_isr);
        LDR      R1,??DataTable106_8
        MOVS     R0,#+3
        BL       CRM_RegisterISR
//  503   CRM_RegisterISR(gCrmKB6WuEvent_c,decrease_config_option_isr);
        LDR      R1,??DataTable106_9
        MOVS     R0,#+4
        BL       CRM_RegisterISR
//  504   CRM_RegisterISR(gCrmKB7WuEvent_c,start_test_isr);
        LDR      R1,??DataTable106_10
        MOVS     R0,#+5
        BL       CRM_RegisterISR
//  505 #endif  
//  506   
//  507   IntDisableIRQ();
        BL       IntDisableIRQ
//  508   IntDisableFIQ();
        BL       IntDisableFIQ
//  509 
//  510   ResetMaca();
        BL       ResetMaca
//  511   MLMERadioInit();
        BL       MLMERadioInit
//  512   PlatformPortInit();
        BL       PlatformPortInit
//  513   MLMESetChannelRequest(u8TestModeChannel);
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
//  514   
//  515   IntEnableIRQ();
        MOVS     R0,#+0
        BL       IntRestoreIRQ
//  516   IntEnableFIQ();
        MOVS     R0,#+0
        BL       IntRestoreFIQ
//  517  
//  518   Uart_Init(mUARTRxBuffer, SZ_OF_UART_RX);
        MOVS     R1,#+10
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Init
//  519   LED_Init();
        BL       LED_Init
//  520   KbGpioInit();
        BL       KbGpioInit
//  521 
//  522 #if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
//  523   LCD_Init();
        BL       LCD_Init
//  524 #endif
//  525 
//  526  
//  527 #if OTAP_ENABLED == TRUE 
//  528   OTAP_Init(&RX_msg);
//  529   gbOtapExecute = OTAP_ENABLED;
//  530 #endif
//  531   
//  532 #if INTERFACE_TYPE == SERIAL 
//  533   print_freescale_logo();
//  534   Uart_getchar(mUARTRxBuffer);
//  535 #endif
//  536 
//  537  #if INTERFACE_TYPE == MANUAL 
//  538 /********************* KBI Interruptions Initialization ***********************/
//  539   MLMESetWakeupSource(gExtWuKBI4En_c | gExtWuKBI5En_c | gExtWuKBI6En_c | gExtWuKBI7En_c, 0x00, 0x0F);
        MOVS     R2,#+15
        MOVS     R1,#+0
        MOVS     R0,#+240
        BL       MLMESetWakeupSource
//  540 /******************************************************************************/
//  541 #endif
//  542 LoadPRBS9();
        BL       LoadPRBS9
//  543 
//  544 #if (gLCDSupported_d && INTERFACE_TYPE == MANUAL)
//  545   LCD_SetBacklight(gEnabled_c);
        MOVS     R0,#+1
        BL       LCD_SetBacklight
//  546   LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  547   DisplayFreescaleLogo(0x15,0x10);
        MOVS     R1,#+16
        MOVS     R0,#+21
        BL       DisplayFreescaleLogo
//  548   DelayMs(1000);
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        BL       DelayMs
//  549   ClearDisplay();
        BL       ClearDisplay
//  550   CurrentOption=gRxTestMode_c;
        STRB     R5,[R4, #+23]
//  551   DisplayTestMode(CurrentOption);
        MOVS     R0,#+2
        BL       DisplayTestMode
//  552 #endif
//  553   
//  554  (void)MLMEPAOutputAdjust(u8TestModePower);
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
//  555   MLMETestMode(u8CurrentMode); 
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
//  556   MLMESetChannelRequest(u8TestModeChannel);
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
//  557 
//  558 #if (gLCDSupported_d == FALSE || INTERFACE_TYPE == SERIAL)
//  559     TMR_Init(); 
//  560 #endif
//  561     
//  562 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  563 
//  564 /************************************************************************************
//  565 * test_mode_rx_cb
//  566 *
//  567 * This function is the callback for the reception message, every time that a message 
//  568 * is received the function is executed and it turns on a flag to indicate that one
//  569 * message was received.
//  570 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  571 void test_mode_rx_cb (void)
//  572 {
//  573   if(TRUE == gRadioEvntFlags.Bits.data_indication_flag)
test_mode_rx_cb:
        LDR      R0,??DataTable106_11
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LSRS     R3,R1,#+4
        ANDS     R3,R3,R2
        BEQ      ??test_mode_rx_cb_0
//  574   {
//  575     gRadioEvntFlags.Bits.data_indication_flag = FALSE;
        MOVS     R3,#+16
        BICS     R1,R1,R3
        STR      R1,[R0, #+0]
//  576     gbDataIndicationFlag = TRUE;
        LDR      R0,??DataTable106_1
        STRB     R2,[R0, #+27]
//  577   }
//  578   else
//  579   {
//  580     /* Do nothing */
//  581   }
//  582 }
??test_mode_rx_cb_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_2:
        DATA32
        DC32     test_mode_rx_cb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_3:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_4:
        DATA32
        DC32     MACA_Interrupt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_5:
        DATA32
        DC32     CRM_Isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_6:
        DATA32
        DC32     TmrIsr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_7:
        DATA32
        DC32     select_config_option_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_8:
        DATA32
        DC32     increase_config_option_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_9:
        DATA32
        DC32     decrease_config_option_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_10:
        DATA32
        DC32     start_test_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable106_11:
        DATA32
        DC32     gRadioEvntFlags
//  583 
//  584 /************************************************************************************
//  585 * process_incoming_msg
//  586 *
//  587 * This function process the received messages.
//  588 *
//  589 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  590 static void process_incoming_msg(void)
//  591 {
process_incoming_msg:
        PUSH     {R1-R7,LR}
//  592   
//  593 #if INTERFACE_TYPE == SERIAL        
//  594   uint8_t i;
//  595   four_digit_bcd_t tmp = {0,0,0,0,0,0};
//  596 #endif
//  597 #if INTERFACE_TYPE == MANUAL 
//  598   link_quality_value_t u8LQIAdjusted;
//  599 #endif  
//  600   uint8_t u8MsgLen;
//  601   uint8_t * ptrRcvMsg;
//  602   uint8_t u8Lqi;
//  603 
//  604   
//  605   uint16_t u16SeqNum;
//  606   static uint16_t u16MsgCounter = 0;
//  607   static uint16_t u16TotalMsg = 10;
//  608   
//  609 #if (INTERFACE_TYPE == MANUAL) && (gLCDSupported_d)     
//  610   static uint8_t u8State = 0;
//  611 #endif
//  612   
//  613 #if OTAP_ENABLED == TRUE  
//  614   OTAP_data_indication_execute();
//  615   if(!gbOtapExecute)
//  616 #endif
//  617     
//  618   {
//  619     if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
        LDR      R4,??DataTable108
        LDR      R5,??DataTable108_1
        LDRB     R0,[R5, #+20]
        CMP      R0,#+2
        BNE      ??process_incoming_msg_0
//  620     {
//  621       u8MsgLen = sizeof(ku8ExpectedString);
        MOVS     R6,#+16
//  622       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[5]);
//  623       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8ExpectedString, u8MsgLen))
        MOVS     R2,#+16
        LDR      R1,??DataTable108_2
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+7
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_1
//  624       {
//  625   #if INTERFACE_TYPE == SERIAL        
//  626         uint8_t u8Lqi;
//  627   #endif
//  628         u16SeqNum = (RX_msg.pu8Buffer->u8Data[3] << 8);
//  629         u16SeqNum |= RX_msg.pu8Buffer->u8Data[4];
//  630         if(u16SeqNum < u16TotalMsg)
        LDR      R0,[R5, #+8]
        LDRB     R1,[R0, #+6]
        LDRB     R2,[R0, #+5]
        LSLS     R2,R2,#+8
        ORRS     R2,R2,R1
        LDRH     R3,[R4, #+22]
        CMP      R2,R3
        BCS      ??process_incoming_msg_2
//  631         {
//  632           u16TotalMsg = (RX_msg.pu8Buffer->u8Data[1] << 8);
//  633           u16TotalMsg |= RX_msg.pu8Buffer->u8Data[2];    
        LDRB     R2,[R0, #+3]
        LSLS     R2,R2,#+8
        LDRB     R0,[R0, #+4]
        ORRS     R2,R2,R0
        STRH     R2,[R4, #+22]
//  634         }
//  635 		if(RX_msg.pu8Buffer->u8Data[4] != 'R')
??process_incoming_msg_2:
        CMP      R1,#+82
        BEQ      .+4
        B        ??process_incoming_msg_3
//  636 			return;
//  637         
//  638         u16MsgCounter++;
        LDRH     R0,[R4, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+20]
//  639         
//  640   #if INTERFACE_TYPE == SERIAL        
//  641         Uart_Print("\r\nN:");
//  642         tmp = convert_2_bcd(u16SeqNum);
//  643         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  644         Uart_Print(" L:");
//  645         tmp = convert_2_bcd(u8MsgLen);
//  646         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  647         Uart_Print(" LQI=-");
//  648         (void)MLMELinkQuality(&u8Lqi);
//  649         u8Lqi = (u8Lqi / 3);
//  650         if(100 >= u8Lqi)
//  651         {  
//  652           u8Lqi = 100 - u8Lqi;
//  653         }
//  654         else
//  655         {
//  656           u8Lqi = u8Lqi - 100;
//  657         }
//  658         tmp = convert_2_bcd(u8Lqi);
//  659         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  660         Uart_Print(" CRC=1 Data=");
//  661       
//  662         for(i=5; i<21; i++)
//  663         {
//  664           Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  665           ((RX_msg.pu8Buffer)->u8Data[i]) = 0;
//  666         }
//  667         
//  668    #endif 
//  669        
//  670       #if INTERFACE_TYPE == MANUAL
//  671         
//  672         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+4
        BL       MLMELinkQuality
//  673         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  674         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGT      ??process_incoming_msg_4
//  675         {  
//  676           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_5
//  677         }
//  678         else
//  679         {
//  680           u8Lqi = u8Lqi - 100;
??process_incoming_msg_4:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+100
??process_incoming_msg_5:
        STRB     R0,[R1, #+4]
//  681         }
//  682         
//  683         if(u8Lqi<minLQI) minLQI=u8Lqi;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LDRB     R1,[R4, #+17]
        CMP      R0,R1
        BLS      ??process_incoming_msg_6
        MOVS     R0,R1
??process_incoming_msg_6:
        STRB     R0,[R4, #+17]
//  684        if(u8Lqi>maxLQI) maxLQI=u8Lqi;
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LDRB     R1,[R4, #+16]
        CMP      R0,R1
        BCS      ??process_incoming_msg_7
        MOVS     R0,R1
??process_incoming_msg_7:
        STRB     R0,[R4, #+16]
//  685         
//  686 #endif
//  687         
//  688                
//  689         
//  690         
//  691 //  #if INTERFACE_TYPE == MANUAL        
//  692         LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  693 //  #endif      
//  694       }
//  695       
//  696       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  697       if( (TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8DoneStrReceiver, 4)) &&
//  698         (0 != u16MsgCounter))
??process_incoming_msg_1:
        MOVS     R2,#+4
        LDR      R1,??DataTable110
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
??process_incoming_msg_0:
        BEQ      .+4
        B        ??process_incoming_msg_8
        LDRH     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      .+4
        B        ??process_incoming_msg_8
//  699       {
//  700 
//  701   #if INTERFACE_TYPE == SERIAL 
//  702         tmp = convert_2_bcd(u16MsgCounter);
//  703         Uart_Print("\r\n\nGood:	");
//  704         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  705         Uart_Print("/");
//  706 
//  707         tmp = convert_2_bcd(u16TotalMsg);
//  708         Uart_PrintHex((uint8_t *)(&tmp),3,0);
//  709         Uart_Print("\r\n\nHalt\n");
//  710   #endif 
//  711 
//  712   #if INTERFACE_TYPE == MANUAL
//  713         u16MsgCounter--;
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+20]
//  714         c_test_num = convert_2_bcd(u16MsgCounter);
        MOV      R1,SP
        STRH     R0,[R1, #+6]
        LDR      R0,??DataTable111
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        LDR      R0,??DataTable111_1  ;; 0x2710
        CMP      R7,R0
        BGE      ??process_incoming_msg_9
        MOVS     R1,R7
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        CMP      R7,R0
        BLT      ??process_incoming_msg_10
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
??process_incoming_msg_10:
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        CMP      R7,#+100
        BLT      ??process_incoming_msg_11
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
??process_incoming_msg_11:
        MOVS     R7,#+15
        LDRH     R0,[R0, #+6]
        CMP      R0,#+10
        BLT      ??process_incoming_msg_12
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
??process_incoming_msg_12:
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        MOVS     R2,#+240
        ANDS     R2,R2,R0
        ANDS     R7,R7,R1
        ORRS     R7,R7,R2
        MOV      R0,SP
        STRB     R7,[R0, #+8]
??process_incoming_msg_9:
        LDR      R0,[SP, #+8]
        STR      R0,[R5, #+0]
//  715         
//  716 #if (gLCDSupported_d)      
//  717 
//  718         LCD_WriteString_NormalFont(4,"                     ");
        LDR      R1,??DataTable111_2
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
//  719         LCD_WriteStringValue("             /",(u16TotalMsg),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDRH     R1,[R4, #+22]
        LDR      R0,??DataTable111_3
        BL       LCD_WriteStringValue
//  720 
//  721         if(100 > u16MsgCounter)
        LDRH     R1,[R4, #+20]
        CMP      R1,#+100
        BGE      ??process_incoming_msg_13
//  722         {
//  723           LCD_WriteStringValue("    Good:  ",(u16MsgCounter),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable111_4
        B        ??process_incoming_msg_14
//  724         }
//  725         else if(1000 > u16MsgCounter)
??process_incoming_msg_13:
        MOVS     R2,#+250
        LSLS     R2,R2,#+2        ;; #+1000
        CMP      R1,R2
        BGE      ??process_incoming_msg_15
//  726         {
//  727           LCD_WriteStringValue("    Good: ",(u16MsgCounter),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable111_5
        B        ??process_incoming_msg_14
//  728         }
//  729         else
//  730         {
//  731           LCD_WriteStringValue("    Good:",(u16MsgCounter),4,gLCD_DecFormat_c);
??process_incoming_msg_15:
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable111_6
??process_incoming_msg_14:
        BL       LCD_WriteStringValue
//  732         }  
//  733         LCD_WriteStringValue("Max LQI:",(maxLQI),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        LDRB     R1,[R4, #+16]
        LDR      R0,??DataTable111_7
        BL       LCD_WriteStringValue
//  734         LCD_WriteStringValue("Min LQI:",(minLQI),6,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+6
        LDRB     R1,[R4, #+17]
        LDR      R0,??DataTable111_8
        BL       LCD_WriteStringValue
//  735         MCPSDataRequest(&ACK_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
//  736          DelayMs(1500);
        LDR      R0,??DataTable111_9  ;; 0x5dc
        BL       DelayMs
//  737           maxLQI=0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
//  738           minLQI=255;
        MOVS     R0,#+255
        STRB     R0,[R4, #+17]
//  739          
//  740           
//  741         LCD_WriteString_NormalFont(7," SW4 Start Listening ");
        LDR      R1,??DataTable111_10
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
//  742   #endif         
//  743 
//  744   #endif      
//  745         u16MsgCounter = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+20]
//  746         gu32PerRxEvents |= PER_DONE_MSG_EVNT;
        LDR      R0,[R5, #+44]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        STR      R1,[R5, #+44]
//  747       }
//  748     }
//  749   
//  750     if(SMAC_CONTINUOUS_RX == u8CurrentMode)
??process_incoming_msg_8:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+1
        BNE      ??process_incoming_msg_16
//  751     { 
//  752       u8MsgLen = RX_msg.u8BufSize;
        LDRB     R6,[R5, #+12]
//  753   #if INTERFACE_TYPE == SERIAL
//  754       LED_ToggleLed(LED1);
//  755       Uart_Print("\r\n");
//  756       Uart_Print("Received Packet:");
//  757       for(i=1; i < u8MsgLen ; i++)
//  758       {
//  759         Uart_Print("0x");
//  760         Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  761         (RX_msg.pu8Buffer)->u8Data[i] = 0;
//  762         Uart_Print(" ");
//  763       }
//  764       Uart_Print("\n");
//  765   #endif 
//  766 
//  767 #if INTERFACE_TYPE == MANUAL && gLCDSupported_d
//  768       if(2 > u8State)
        LDRB     R0,[R4, #+18]
        ADDS     R1,R0,#+1
        CMP      R0,#+1
        BGT      ??process_incoming_msg_17
//  769       {
//  770         u8State++;
        STRB     R1,[R4, #+18]
//  771         LCD_DrawIcon(50,4,u8RxIcon1_c);
        MOVS     R0,#+156
        B.N      ??process_incoming_msg_18
//  772       }
//  773       else if(4 > u8State)
??process_incoming_msg_17:
        CMP      R0,#+4
        BGE      ??process_incoming_msg_19
//  774       {
//  775         u8State++;     
        STRB     R1,[R4, #+18]
//  776         LCD_DrawIcon(50,4,u8RxIcon2_c);
        MOVS     R0,#+192
??process_incoming_msg_18:
        LSLS     R0,R0,#+1        ;; #+384
        ADDS     R2,R4,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       LCD_DrawIcon
        B        ??process_incoming_msg_20
//  777       }
//  778       else
//  779       {
//  780         u8State = 0;
??process_incoming_msg_19:
        MOVS     R0,#+0
        STRB     R0,[R4, #+18]
//  781       }
//  782 #endif
//  783         LED_ToggleLed(LED1); 
??process_incoming_msg_20:
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  784     }  
//  785     
//  786     if( SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??process_incoming_msg_16:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_21
//  787     {
//  788       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  789       u8MsgLen = sizeof(u8RangeExpectedString);
        MOVS     R6,#+10
//  790   
//  791   #if SMAC_FEATURE_SECURITY ==  TRUE
//  792       {
//  793         (void)DecipherMsgU8(&(RX_msg.pu8Buffer->u8Data[1]), 
//  794                             (RX_msg.u8BufSize));
//  795       }
//  796   #endif
//  797   
//  798       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
        MOVS     R2,#+10
        LDR      R1,??DataTable111_11
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_21
//  799       {  
//  800         u8Lqi = 0;
        MOVS     R7,#+0
        MOV      R1,SP
        STRB     R7,[R1, #+4]
//  801         gu8ValidRangePacket = TRUE;
        STRB     R0,[R5, #+29]
//  802         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+4
        BL       MLMELinkQuality
//  803         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  804         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGT      ??process_incoming_msg_22
//  805         {  
//  806           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_23
//  807         }
//  808         else
//  809         {
//  810           u8Lqi = u8Lqi - 100;
??process_incoming_msg_22:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+100
??process_incoming_msg_23:
        STRB     R0,[R1, #+4]
//  811         }
//  812    
//  813   #if INTERFACE_TYPE == MANUAL      
//  814         u8LQIAdjusted = adjust_LQI(u8Lqi);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        BL       adjust_LQI
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  815   #endif      
//  816 #if (gLCDSupported_d)
//  817         LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        MOV      R0,SP
        LDRB     R1,[R0, #+4]
        LDR      R0,??DataTable111_12
        BL       LCD_WriteStringValue
//  818           if(u8Lqi <= LQI_LIM4)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+41
        BGE      ??process_incoming_msg_24
//  819         {
//  820           LCD_DrawIcon(80,3,u8LQIIcon4_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+24
        B        ??process_incoming_msg_25
//  821         }
//  822         else if(u8Lqi <= LQI_LIM3)
??process_incoming_msg_24:
        CMP      R0,#+61
        BGE      ??process_incoming_msg_26
//  823         {
//  824           LCD_DrawIcon(80,3,u8LQIIcon3_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+96
        B        ??process_incoming_msg_25
//  825         }
//  826         else if (u8Lqi <= LQI_LIM2)
??process_incoming_msg_26:
        CMP      R0,#+81
        BGE      ??process_incoming_msg_27
//  827         {
//  828           LCD_DrawIcon(80,3,u8LQIIcon2_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+168
        B        ??process_incoming_msg_25
//  829         }
//  830         else
//  831         {
//  832           LCD_DrawIcon(80,3,u8LQIIcon1_c);
??process_incoming_msg_27:
        MOVS     R2,R4
        ADDS     R2,R2,#+240
??process_incoming_msg_25:
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       LCD_DrawIcon
//  833         }
//  834      
//  835 #endif
//  836         ACK_msg.pu8Buffer->u8Data[0] = 'A';
        MOVS     R0,#+65
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+2]
//  837         ACK_msg.pu8Buffer->u8Data[1] = 'C';
        MOVS     R0,#+67
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+3]
//  838         ACK_msg.pu8Buffer->u8Data[2] = 'K';
        MOVS     R0,#+75
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+4]
//  839   
//  840   #if INTERFACE_TYPE == SERIAL
//  841         ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
//  842   #endif      
//  843   
//  844   #if INTERFACE_TYPE == MANUAL
//  845         ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
//  846   #endif      
//  847   
//  848         
//  849   #if SMAC_FEATURE_SECURITY ==  TRUE
//  850         uint8_t fill_counter;
//  851         for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
//  852         {
//  853           ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
//  854         }
//  855   
//  856         if(AES_DEFAULT_MODE != AES_CTR_MODE)
//  857         {
//  858           ACK_msg.u8BufSize = 2*BLOCK_SIZE;
//  859         }
//  860         else
//  861         {
//  862           ACK_msg.u8BufSize = BLOCK_SIZE;
//  863         }
//  864   
//  865         (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
//  866   #else
//  867           ACK_msg.pu8Buffer->u8Data[4] = '\0';
        LDR      R0,[R4, #+4]
        STRB     R7,[R0, #+6]
//  868           ACK_msg.u8BufSize = 5;
        MOVS     R0,#+5
        STRB     R0,[R4, #+8]
//  869   #endif  
//  870         
//  871               
//  872   #if INTERFACE_TYPE == SERIAL
//  873         Uart_Print("\r\n"); 
//  874         Uart_Print(" LQI=-");
//  875         tmp = convert_2_bcd(u8Lqi);
//  876         Uart_PrintHex((uint8_t *)(&tmp),1,0); 
//  877   #else
//  878     DelayMs(2);      
        MOVS     R0,#+2
        BL       DelayMs
//  879   #endif  
//  880   
//  881       
//  882        LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  883   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  884         LEDs_LQI_indication( u8LQIAdjusted); 
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        BL       LEDs_LQI_indication
//  885   #endif 
//  886       }
//  887     } 
//  888    
//  889 if(SMAC_TEST_MODE_RANGE_TX == u8CurrentMode)
??process_incoming_msg_21:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_28
//  890     u8MsgLen = 3;
        MOVS     R6,#+3
//  891     ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
//  892     {
//  893       
//  894   #if SMAC_FEATURE_SECURITY ==  TRUE
//  895     (void)DecipherMsgU8 (&(RX_msg.pu8Buffer->u8Data[0]),(RX_msg.u8BufSize));    
//  896   #endif
//  897     
//  898       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
??process_incoming_msg_28:
        LSLS     R2,R6,#+24
        LSRS     R2,R2,#+24
        ADR.N    R1,ku8AckString
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_3
//  899       {
//  900   #if (gLEDSupported_d  || INTERFACE_TYPE == SERIAL)   
//  901         uint8_t u8Lqi;
//  902         u8Lqi = RX_msg.pu8Buffer->u8Data[4];
        LDR      R0,[R5, #+8]
        LDRB     R4,[R0, #+6]
//  903   #endif
//  904         
//  905         
//  906   #if INTERFACE_TYPE == SERIAL
//  907 
//  908         Uart_Print("\r\n");   
//  909         Uart_Print(" LQI=-");
//  910         tmp = convert_2_bcd(u8Lqi);
//  911         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  912   #endif 
//  913         
//  914   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  915        Led1Toggle(); 
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  916        LEDs_LQI_indication((link_quality_value_t)u8Lqi); 
        MOVS     R0,R4
        BL       LEDs_LQI_indication
//  917 
//  918   #endif      
//  919         gu8ValidAckPacket = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+30]
//  920       }
//  921     }     
//  922        
//  923   }
//  924 }
??process_incoming_msg_3:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ku8AckString:
        DATA8
        DC8 65, 67, 75, 0
//  925 
//  926 #if INTERFACE_TYPE == MANUAL 
//  927 
//  928 /************************************************************************************
//  929 * select_config_option_isr
//  930 *
//  931 * This function is the callback function for the KBI4 interruption, it enables only 
//  932 * a flag to indicate that the KBI interruption occurred and the current option
//  933 * to configure must increase.
//  934 *
//  935 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  936   void select_config_option_isr(void)
//  937   {
select_config_option_isr:
        PUSH     {R7,LR}
//  938     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  939     gu8TestModeEvents |= CHANGE_OPTION_CONFIG_EVENT;
        LDR      R0,??DataTable111_13
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
//  940   }
        POP      {R0,R3}
        BX       R3               ;; return

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
//  941 
//  942 /************************************************************************************
//  943 * increase_config_option_isr
//  944 *
//  945 * This function turns on a flag to indicate that the KBI5 interruption occurred, 
//  946 * which is used to increase the current option value.
//  947 *
//  948 ***********************************************************************************/
//  949 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  950  void increase_config_option_isr(void)
//  951   {
increase_config_option_isr:
        PUSH     {R7,LR}
//  952     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  953     gu8TestModeEvents |= TEST_MODE_INCREASE_EVENT;
        LDR      R0,??DataTable111_13
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+1
        B.N      ?Subroutine2
//  954     gu8TestAlreadyStarted = FALSE;
//  955   }
//  956 
//  957 /************************************************************************************
//  958 * decrease_config_option_isr
//  959 *
//  960 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  961 * which is used to decrease the current option value.
//  962 *
//  963 ***********************************************************************************/
//  964 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  965   void decrease_config_option_isr(void)
//  966   {
decrease_config_option_isr:
        PUSH     {R7,LR}
//  967     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  968     gu8TestModeEvents |= TEST_MODE_DECREASE_EVENT;
        LDR      R0,??DataTable111_13
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+2
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  969     gu8TestAlreadyStarted = FALSE;    
//  970   }

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
??DataTable110:
        DATA32
        DC32     ku8DoneStrReceiver
//  971 
//  972 /************************************************************************************
//  973 * decrease_config_option_isr
//  974 *
//  975 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  976 * which is used to decrease the current option value.
//  977 *
//  978 ***********************************************************************************/
//  979 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  980 void start_test_isr(void)
//  981 {
start_test_isr:
        PUSH     {R7,LR}
//  982   DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  983   gu8TestModeEvents |= TEST_START_EVENT;
        LDR      R0,??DataTable111_13
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+8
        B.N      ?Subroutine2
//  984   gu8TestAlreadyStarted = FALSE;
//  985 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111:
        DATA32
        DC32     ?_58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_1:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_2:
        DATA32
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_3:
        DATA32
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_4:
        DATA32
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_5:
        DATA32
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_6:
        DATA32
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_7:
        DATA32
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_8:
        DATA32
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_9:
        DATA32
        DC32     0x5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_10:
        DATA32
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_11:
        DATA32
        DC32     u8RangeExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_12:
        DATA32
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_13:
        DATA32
        DC32     c_test_num
//  986 
//  987 #endif
//  988 
//  989 /************************************************************************************
//  990 * process_test_mode_app
//  991 *
//  992 * This function process the test mode application, execute the serial or the manual
//  993 * interface code according with the selected interface type in the app_config.h file.
//  994 *
//  995 ************************************************************************************/
//  996 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  997 void process_test_mode_app(void){
process_test_mode_app:
        PUSH     {R3-R7,LR}
//  998   
//  999 #if INTERFACE_TYPE == MANUAL
// 1000   FuncReturn_t tmpChange;
// 1001   uint8_t u8SafeTimeOut;
// 1002 #endif
// 1003 
// 1004   if (CHANGE_OPTION_CONFIG_EVENT & gu8TestModeEvents)
        LDR      R4,??process_test_mode_app_1
        LDRB     R0,[R4, #+28]
        MOVS     R5,#+0
        LSLS     R1,R0,#+29
        BPL      ??process_test_mode_app_2
// 1005   {
// 1006    clear_event(gu8TestModeEvents,CHANGE_OPTION_CONFIG_EVENT);
        MOVS     R1,#+251
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1007    
// 1008 #if (gLCDSupported_d)
// 1009    if(gRxTestMode_c <= CurrentOption)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BLT      ??process_test_mode_app_3
// 1010     {
// 1011       CurrentOption = gChannel_c;
        MOVS     R0,#+0
        B        ??process_test_mode_app_4
// 1012     }
// 1013     else
// 1014     {
// 1015       CurrentOption++;
??process_test_mode_app_3:
        ADDS     R0,R0,#+1
??process_test_mode_app_4:
        STRB     R0,[R4, #+23]
// 1016     }
// 1017 #else
// 1018     if(MAX_OPTION_CONFIG <= CurrentOption)
// 1019     {
// 1020       CurrentOption = gChannel_c;
// 1021     }
// 1022     else
// 1023     {
// 1024       CurrentOption++;
// 1025     }
// 1026 #endif
// 1027    
// 1028 #if (gLCDSupported_d)   
// 1029    DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1030 #endif
// 1031   }
// 1032 
// 1033   #if INTERFACE_TYPE == SERIAL
// 1034   
// 1035     switch(main_menu())
// 1036     {
// 1037 
// 1038        case ChannelAdjustment:
// 1039           channel_adjust();
// 1040           break;
// 1041         case PowerAdjustment:
// 1042           power_adjust();
// 1043           break;
// 1044         case TestAdjustment:
// 1045           tx_rx_select();
// 1046           break;
// 1047         case ClockAdjustment:  
// 1048           configure_clock_settings();
// 1049           break;
// 1050         case PreviousMenu:
// 1051           break;
// 1052         default:
// 1053           Uart_Print("  Invalid Option!!!\n");
// 1054           break;
// 1055       }
// 1056   #else 
// 1057       
// 1058   #if INTERFACE_TYPE == MANUAL
// 1059       LED_SetHex(CurrentOption);
??process_test_mode_app_2:
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
// 1060       switch(CurrentOption)
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
// 1061       {
// 1062         case gChannel_c:
// 1063           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_6:
        TST      R0,R1
        BEQ      ??process_test_mode_app_7
// 1064           {
// 1065             MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1066             DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1067             tmpChange = gFail_c;
// 1068             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1069             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LDRB     R0,[R4, #+28]
        LSLS     R1,R0,#+31
        BPL      ??process_test_mode_app_8
// 1070             {
// 1071               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        MOVS     R1,#+254
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1072               do{
// 1073                 if(MAX_CHAN_NUM <= u8TestModeChannel)
??process_test_mode_app_9:
        LDRB     R0,[R4, #+21]
        CMP      R0,#+15
        BLT      ??process_test_mode_app_10
// 1074                 {
// 1075                   u8TestModeChannel = CHANNEL11;
        MOVS     R0,#+0
        B        ??process_test_mode_app_11
// 1076                 }
// 1077                 else
// 1078                 {
// 1079                   u8TestModeChannel ++;
??process_test_mode_app_10:
        ADDS     R0,R0,#+1
??process_test_mode_app_11:
        STRB     R0,[R4, #+21]
// 1080                 }
// 1081                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1082                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1083               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_12
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLT      ??process_test_mode_app_9
// 1084              
// 1085             }
// 1086             else
// 1087             {
// 1088               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1089               do{
// 1090                 if(CHANNEL11 == u8TestModeChannel)
// 1091                 {
// 1092                   u8TestModeChannel = (channel_num_t)MAX_CHAN_NUM;
// 1093                 }
// 1094                 else
// 1095                 {
// 1096                   u8TestModeChannel --;
// 1097                 }
// 1098                 u8SafeTimeOut++;
// 1099                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1100               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
// 1101             }
// 1102 
// 1103             MLMETestMode(u8CurrentMode);
??process_test_mode_app_12:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1104 #if (gLCDSupported_d)           
// 1105             LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable112
        BL       LCD_WriteStringValue
// 1106 #endif
// 1107             LEDs_Flash(u8TestModeChannel, FLASH_DELAY);
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
// 1108  
// 1109           }
// 1110 
// 1111           break;
// 1112        
// 1113         case  gPower_c:
// 1114           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_17:
        TST      R0,R1
??process_test_mode_app_7:
        BNE      .+4
        B        ??process_test_mode_app_5
// 1115           {
// 1116             tmpChange = gFail_c;
// 1117             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1118             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_18
// 1119             {
// 1120               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1121               do{
// 1122                 if(MAX_POWER <= u8TestModePower)
??process_test_mode_app_19:
        LDRB     R0,[R4, #+22]
        CMP      R0,#+16
        BLE      ??process_test_mode_app_20
// 1123                 {
// 1124                   u8TestModePower = MIN_POWER;
        MOVS     R0,#+0
        B        ??process_test_mode_app_21
// 1125                 }
// 1126                 else
// 1127                 { 
// 1128                   u8TestModePower++;
??process_test_mode_app_20:
        ADDS     R0,R0,#+1
??process_test_mode_app_21:
        STRB     R0,[R4, #+22]
// 1129                 }
// 1130                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1131                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1132               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_22
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??process_test_mode_app_19
// 1133             }
// 1134             else
// 1135             {
// 1136               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1137   
// 1138               do{
// 1139                 if(MIN_POWER == u8TestModePower)
// 1140                 {
// 1141                   u8TestModePower = MAX_POWER;
// 1142                 }
// 1143                 else 
// 1144                 {
// 1145                   u8TestModePower--;
// 1146                 }
// 1147                 u8SafeTimeOut++;
// 1148                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1149               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
// 1150             }
// 1151 
// 1152 #if (gLCDSupported_d)          
// 1153             LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
??process_test_mode_app_22:
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable113
        BL       LCD_WriteStringValue
// 1154 #endif            
// 1155             LEDs_Flash(u8TestModePower, FLASH_DELAY);
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
// 1156           }
// 1157           break;
// 1158           
// 1159         case gRxTestMode_c:
// 1160           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_26:
        LDRB     R1,[R4, #+20]
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_27
// 1161           {
// 1162             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);           
        STRB     R7,[R4, #+28]
// 1163             if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
        CMP      R1,#+5
        BNE      ??process_test_mode_app_28
// 1164             {
// 1165               u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R5,[R4, #+20]
        B        ??process_test_mode_app_29
// 1166             }            
// 1167             else
// 1168             {
// 1169               u8CurrentMode ++;
??process_test_mode_app_28:
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+20]
        B        ??process_test_mode_app_29
// 1170             }
// 1171             MLMETestMode(u8CurrentMode);
// 1172 #if (gLCDSupported_d)            
// 1173             DisplayTestMode(CurrentOption);
// 1174 #endif            
// 1175             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
// 1176           }
// 1177           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_27:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_30
// 1178           {
// 1179             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);           
        STRB     R3,[R4, #+28]
// 1180             if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
        CMP      R1,#+0
        BNE      ??process_test_mode_app_31
// 1181             {
// 1182              u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
        MOVS     R0,#+5
        B        ??process_test_mode_app_32
// 1183             }
// 1184             else
// 1185             {            
// 1186               u8CurrentMode --;
??process_test_mode_app_31:
        SUBS     R0,R1,#+1
??process_test_mode_app_32:
        STRB     R0,[R4, #+20]
// 1187             }
// 1188             MLMETestMode(u8CurrentMode);
??process_test_mode_app_29:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1189 #if (gLCDSupported_d)            
// 1190             DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1191 #endif            
// 1192             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
        MOVS     R1,#+200
        LDRB     R0,[R4, #+20]
        BL       LEDs_Flash
// 1193           }
// 1194           
// 1195           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??process_test_mode_app_30:
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 1196           LED_SetHex(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
        B        ??process_test_mode_app_33
// 1197          
// 1198           while((SMAC_TEST_MODE_PER_RX == u8CurrentMode)  && 
// 1199                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1200                 (gRxTestMode_c == CurrentOption))
??process_test_mode_app_34:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_35
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_36
// 1201           {
// 1202             if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)            
// 1203             {  
// 1204               packet_error_rate_rx_test();
        BL       packet_error_rate_rx_test
// 1205             }
// 1206           }  
??process_test_mode_app_33:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BEQ      ??process_test_mode_app_34
// 1207           
// 1208           while( (SMAC_TEST_MODE_RANGE_RX == u8CurrentMode) && 
// 1209                  (NO_TEST_MODE_EVENT == gu8TestModeEvents)  &&
// 1210                  (gRxTestMode_c == CurrentOption) )
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
// 1211           {
// 1212             range_rx_test();
        BL       range_rx_test
        B        ??process_test_mode_app_37
// 1213           }           
// 1214           while( (SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode) && 
// 1215                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1216                 (gRxTestMode_c == CurrentOption) )
??process_test_mode_app_41:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_42
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_42
// 1217           {
// 1218             pulse_prbs9_tx();
        BL       pulse_prbs9_tx
// 1219           }
??process_test_mode_app_38:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BEQ      ??process_test_mode_app_41
// 1220 
// 1221           while( (SMAC_TEST_MODE_PER_TX == u8CurrentMode) &&  
// 1222                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1223                 )
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
// 1224           {
// 1225             packet_error_rate_tx_test();
??process_test_mode_app_36:
        BL       packet_error_rate_tx_test
        B        ??process_test_mode_app_43
// 1226           }  
// 1227           
// 1228           while( (SMAC_TEST_MODE_RANGE_TX == u8CurrentMode) &&  
// 1229                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1230                 )
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
// 1231           {
// 1232             range_tx_test();
??process_test_mode_app_40:
        BL       range_tx_test
        B        ??process_test_mode_app_44
// 1233           }           
// 1234           
// 1235           break;
// 1236           
// 1237         case gBulkCap_c:
// 1238           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_45:
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_46
// 1239           {
// 1240             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1241             enable_bulk_cap(); 
        LDR      R0,??DataTable115  ;; 0x80003040
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        LDR      R0,??DataTable115  ;; 0x80003040
        STR      R1,[R0, #+0]
// 1242             u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        STRB     R0,[R4, #+26]
// 1243             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1244           }
// 1245           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_46:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1246           {
// 1247             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1248             disable_bulk_cap(); 
        LDR      R0,??DataTable115  ;; 0x80003040
        LDR      R1,[R0, #+0]
        LDR      R2,??DataTable114  ;; 0xfdffffff
        ANDS     R2,R2,R1
        STR      R2,[R0, #+0]
// 1249             u8BulkCapState = gDisable_c;
        STRB     R5,[R4, #+26]
// 1250             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        MOVS     R1,#+200
        MOVS     R0,#+0
        B        ??process_test_mode_app_13
        DATA
??process_test_mode_app_1:
        DATA32
        DC32     c_test_num
        THUMB
// 1251           }
// 1252           break; 
// 1253             
// 1254         case gCoarseTune_c:
// 1255           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_48:
        MOVS     R1,#+240
        LSLS     R1,R1,#+17       ;; #+31457280
        LDR      R2,??DataTable114_1  ;; 0xfe1fffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_49
// 1256           {
// 1257             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1258             if(MAX_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+15
        BEQ      ??process_test_mode_app_50
// 1259             {
// 1260               u8CurrentCoarseTune = MIN_COARSE_TUNE;
// 1261             }
// 1262             else
// 1263             {
// 1264               u8CurrentCoarseTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_50:
        STRB     R5,[R4, #+24]
// 1265             }
// 1266             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+21
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable115  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1267             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1268           }
// 1269           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_49:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1270           {
// 1271             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1272             if(MIN_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_51
// 1273             {
// 1274               u8CurrentCoarseTune = MAX_COARSE_TUNE;
        MOVS     R0,#+15
        B        ??process_test_mode_app_52
// 1275             }
// 1276             else
// 1277             {
// 1278               u8CurrentCoarseTune--;
??process_test_mode_app_51:
        SUBS     R0,R0,#+1
??process_test_mode_app_52:
        STRB     R0,[R4, #+24]
// 1279             }
// 1280             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R4,[R3, #+0]
        ANDS     R2,R2,R4
        LSLS     R4,R0,#+21
        ANDS     R1,R1,R4
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1281             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1282           }
// 1283           break; 
// 1284           
// 1285         case gFineTune_c:
// 1286           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_53:
        MOVS     R1,#+248
        LSLS     R1,R1,#+13       ;; #+2031616
        LDR      R2,??DataTable115_1  ;; 0xffe0ffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_54
// 1287           {
// 1288             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1289             if(MAX_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+31
        BEQ      ??process_test_mode_app_55
// 1290             {
// 1291               u8CurrentFineTune = MIN_FINE_TUNE;
// 1292             }
// 1293             else
// 1294             {
// 1295               u8CurrentFineTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_55:
        STRB     R5,[R4, #+25]
// 1296             }
// 1297             set_xtal_fine_tune(u8CurrentFineTune);
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+16
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable115  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1298             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
        B        ??process_test_mode_app_56
// 1299             if(0x0F < u8CurrentFineTune)
// 1300             {
// 1301               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1302             }
// 1303           }
// 1304           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_54:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1305           {
// 1306             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1307             if(MIN_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_57
// 1308             {
// 1309               u8CurrentCoarseTune = MAX_FINE_TUNE;
        MOVS     R0,#+31
        STRB     R0,[R4, #+24]
        B        ??process_test_mode_app_58
// 1310             }
// 1311             else
// 1312             {
// 1313               u8CurrentFineTune--;
??process_test_mode_app_57:
        SUBS     R0,R0,#+1
        STRB     R0,[R4, #+25]
// 1314             }
// 1315             set_xtal_fine_tune(u8CurrentFineTune);
??process_test_mode_app_58:
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R5,[R3, #+0]
        ANDS     R2,R2,R5
        LSLS     R5,R0,#+16
        ANDS     R1,R1,R5
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1316             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_56:
        MOVS     R1,#+200
        BL       LEDs_Flash
// 1317             if(0x0F < u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+15
        BLE      ??process_test_mode_app_5
// 1318             {
// 1319               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_47:
        MOVS     R1,#+200
??process_test_mode_app_13:
        BL       LEDs_Flash
// 1320             }
// 1321           }
// 1322           break;  
// 1323           
// 1324         default:
// 1325           break;
// 1326       }
// 1327   #endif
// 1328 #endif
// 1329 
// 1330 }
??process_test_mode_app_5:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable112:
        DATA32
        DC32     ?_56
// 1331 
// 1332 /************************************************************************************
// 1333 * adjust_LQI
// 1334 *
// 1335 * The purpose of this function is to adjust the link quality indicator value obtained
// 1336 * from the MLMELinkQuality primitive to only four possible values.
// 1337 *
// 1338 ************************************************************************************/
// 1339 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1340 link_quality_value_t adjust_LQI(uint8_t u8LQI)
// 1341 {
// 1342   link_quality_value_t LQIAdjusted;
// 1343   
// 1344   if(LQI_LIM1 < u8LQI)
adjust_LQI:
        CMP      R0,#+89
        BLT      ??adjust_LQI_0
// 1345   {
// 1346      LQIAdjusted = gFarRange_c;
        MOVS     R0,#+0
        BX       LR
// 1347   }  
// 1348   else
// 1349   {
// 1350     if(LQI_LIM2 < u8LQI)
??adjust_LQI_0:
        CMP      R0,#+81
        BLT      ??adjust_LQI_1
// 1351     {
// 1352        LQIAdjusted = gMediumRange_c;
        MOVS     R0,#+1
        BX       LR
// 1353     }
// 1354     else
// 1355     {
// 1356        if(LQI_LIM3 <= u8LQI)
??adjust_LQI_1:
        CMP      R0,#+60
        BLT      ??adjust_LQI_2
// 1357        {
// 1358          LQIAdjusted = gNearRange_c;
        MOVS     R0,#+2
        BX       LR
// 1359        }
// 1360        else
// 1361        {
// 1362          LQIAdjusted = gVeryNearRange_c;
??adjust_LQI_2:
        MOVS     R0,#+3
// 1363        }
// 1364      }
// 1365   }
// 1366   return LQIAdjusted;
        BX       LR               ;; return
// 1367 }
// 1368 
// 1369 
// 1370 /************************************************************************************
// 1371 * convert_2_bcd function
// 1372 *
// 1373 * This function converts the received data as parameter to bcd format
// 1374 *
// 1375 ************************************************************************************/
// 1376 static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
// 1377 {
// 1378   four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
// 1379   uint16_t tmp;
// 1380   if(10000 > u16Value)
// 1381   {
// 1382     tmp = u16Value;
// 1383     if(1000 <= u16Value)
// 1384     {
// 1385       tmp = u16Value/1000;
// 1386       u16RtrnVal.u8Thousands = tmp;
// 1387       tmp = u16Value%1000;
// 1388       u16Value = tmp;
// 1389     }
// 1390     if(100 <= u16Value)
// 1391     {
// 1392       tmp = u16Value/100;
// 1393       u16RtrnVal.u8Houndreds = tmp;
// 1394       tmp = u16Value%100;
// 1395       u16Value = tmp;
// 1396     }
// 1397     if(10 <= u16Value)
// 1398     {
// 1399       tmp = u16Value/10;
// 1400       u16RtrnVal.u8Tens = tmp;
// 1401       tmp = u16Value%10;
// 1402       u16Value = tmp;
// 1403     }
// 1404     u16RtrnVal.u8Units = tmp;
// 1405   }
// 1406   return u16RtrnVal;
// 1407 }
// 1408 
// 1409 
// 1410 
// 1411 /************************************************************************************
// 1412 * LEDs_Flash
// 1413 *
// 1414 * This function flash the binary number of the received parameter through LEDs.
// 1415 *
// 1416 ************************************************************************************/
// 1417 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1418 void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
// 1419 {
LEDs_Flash:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1420   LED_TurnOffAllLeds();  
        BL       LED_TurnOffAllLeds
// 1421   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1422   LED_SetHex(u8leds_state);
        MOVS     R0,R5
        BL       LED_SetHex
// 1423   DelayMs(msec);  
        MOVS     R0,R4
        BL       DelayMs
// 1424   LED_TurnOffAllLeds(); 
        BL       LED_TurnOffAllLeds
// 1425   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1426 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1427 
// 1428 /************************************************************************************
// 1429 * LoadPRBS9
// 1430 *
// 1431 * The purpose of this function is to load the pseudo random binary sequence order 9 
// 1432 * in a transmission message. The polynomial to transmit is the following:
// 1433 *
// 1434 *
// 1435 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1436 void LoadPRBS9(void)
// 1437 {
LoadPRBS9:
        PUSH     {R4-R7}
// 1438   uint8_t u8c1;                           /* Byte counter */
// 1439   uint8_t u8c2;                           /* Bit counter */
// 1440   uint16_t u16t1;                         /* LFSR */
// 1441   uint16_t u16t2;                         /* LFSR output */
// 1442   uint16_t u16t3;                         /* LFSR feedback tap */
// 1443   uint8_t u8t4;                           /* Assembled transmit byte */
// 1444   
// 1445   u16t1 = 0x01FF;                       /* Initialize the LFSR */
        LDR      R6,??DataTable116  ;; 0x1ff
// 1446   for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
        MOVS     R0,#+0
        MOVS     R1,#+0
// 1447   {
// 1448     u8t4 = 0x00;                        /* Initialize the byte */
??LoadPRBS9_0:
        MOVS     R4,#+0
// 1449     for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
        MOVS     R5,#+0
// 1450     {
// 1451       u16t2 = (u16t1 & 0x0001);       /* LFSR output */
??LoadPRBS9_1:
        MOVS     R2,#+1
        MOVS     R3,R6
        ANDS     R3,R3,R2
// 1452       if (u16t2 == 0x0001)
        BEQ      ??LoadPRBS9_2
// 1453       {
// 1454         u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
        MOVS     R7,R4
        MOVS     R4,#+128
        ORRS     R4,R4,R7
// 1455       }
// 1456       if (u8c2 != 7)
??LoadPRBS9_2:
        LSLS     R7,R5,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+7
        BEQ      ??LoadPRBS9_3
// 1457       {
// 1458         u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
        LSLS     R4,R4,#+24
        LSRS     R4,R4,#+25
// 1459       }
// 1460       
// 1461       u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
??LoadPRBS9_3:
        LSLS     R7,R6,#+24
        LSRS     R7,R7,#+28
        ANDS     R2,R2,R7
// 1462       u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
        LSLS     R7,R6,#+15
        LSRS     R7,R7,#+16
// 1463       if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
        CMP      R3,R2
        BNE      ??LoadPRBS9_4
// 1464       {
// 1465         u16t1 = u16t1 & 0xFEFF;
        LDR      R6,??DataTable116_1  ;; 0xfeff
        ANDS     R6,R6,R7
        B        ??LoadPRBS9_5
// 1466       }
// 1467       else
// 1468       {
// 1469         u16t1 = u16t1 | 0x0100;
??LoadPRBS9_4:
        MOVS     R6,#+128
        LSLS     R6,R6,#+1        ;; #+256
        ORRS     R6,R6,R7
// 1470       }
// 1471       }
??LoadPRBS9_5:
        ADDS     R5,R5,#+1
        LSLS     R2,R5,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+8
        BLT      ??LoadPRBS9_1
// 1472       TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
        LDR      R2,??DataTable117
        LDR      R2,[R2, #+4]
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+24
        ADDS     R2,R2,R3
        STRB     R4,[R2, #+2]
// 1473     } 
        ADDS     R1,R1,#+1
        LSLS     R2,R1,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+64
        BLT      ??LoadPRBS9_0
// 1474   TX_msg.pu8Buffer->u8Data[64] = '\0';
        LDR      R1,??DataTable117
        LDR      R2,[R1, #+4]
        MOVS     R3,#+66
        STRB     R0,[R2, R3]
// 1475   TX_msg.u8BufSize = 65;
        MOVS     R0,#+65
        STRB     R0,[R1, #+8]
// 1476 }
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable113:
        DATA32
        DC32     ?_57
// 1477 
// 1478 /************************************************************************************
// 1479 * main_menu
// 1480 *
// 1481 * This function displays the main menu for the serial interface and waits until the 
// 1482 * user select an option.
// 1483 *
// 1484 ************************************************************************************/
// 1485 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1486 char main_menu(){
main_menu:
        PUSH     {R4,LR}
// 1487   Uart_Print("\r ______________________________________\n");
        LDR      R4,??DataTable117_1
        MOVS     R0,R4
        BL       Uart_Print
// 1488   Uart_Print("\r|                                      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        BL       Uart_Print
// 1489   Uart_Print("\r|    Connectivity Test Interface    |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+88
        BL       Uart_Print
// 1490   Uart_Print("\r|______________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+128
        BL       Uart_Print
// 1491   Uart_Print("\r      1 - CHANGE CHANNEL\n");
        Nop      
        ADR.N    R0,?_59
        BL       Uart_Print
// 1492   Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
        Nop      
        ADR.N    R0,?_60
        BL       Uart_Print
// 1493   Uart_Print("\r      3 - SELECT TEST MODE\n");
        Nop      
        ADR.N    R0,?_61
        BL       Uart_Print
// 1494   Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+172
        BL       Uart_Print
// 1495   Uart_Print("\r      Note: Case sensitive.");
        Nop      
        ADR.N    R0,?_62
        BL       Uart_Print
// 1496   Uart_Print("\r\n\n Please select an option:  ");
        LDR      R0,??DataTable118
        B.N      ?Subroutine1
// 1497   return Uart_getchar(mUARTRxBuffer);
// 1498 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable114:
        DATA32
        DC32     0xfdffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable114_1:
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
// 1499 
// 1500 /************************************************************************************
// 1501 * channel_menu
// 1502 *
// 1503 * This function displays the possible channels when the channel option is selected 
// 1504 * and waits for a user selection.
// 1505 *
// 1506 ************************************************************************************/
// 1507 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1508 char channel_menu(void){
channel_menu:
        PUSH     {R3-R5,LR}
// 1509   Uart_Print("\r\n     ___________________________________ \n");
        LDR      R4,??DataTable118_1
        MOVS     R0,R4
        BL       Uart_Print
// 1510   Uart_Print("\r    |                                   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+48
        BL       Uart_Print
// 1511   Uart_Print("\r    |      Channel Adjustment Menu      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+92
        BL       Uart_Print
// 1512   Uart_Print("\r    |___________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+136
        BL       Uart_Print
// 1513   Uart_Print("\r    Current Channel: ");
        Nop      
        ADR.N    R0,?_64
        BL       Uart_Print
// 1514   PrintChannel(u8TestModeChannel);
        LDR      R5,??DataTable118_2
        LDRB     R0,[R5, #+21]
        BL       PrintChannel
// 1515   Uart_Print("\n");
        LDR      R0,??DataTable118_3
        BL       Uart_Print
// 1516   Uart_Print("\r      0 - CHANNEL 11");
        ADR.N    R0,?_66
        BL       Uart_Print
// 1517   Uart_Print("      8 - CHANNEL 19\n");
        LDR      R0,??DataTable118_4
        BL       Uart_Print
// 1518   Uart_Print("\r      1 - CHANNEL 12");
        LDR      R0,??DataTable118_5
        BL       Uart_Print
// 1519   Uart_Print("      9 - CHANNEL 20\n");
        LDR      R0,??DataTable118_6
        BL       Uart_Print
// 1520   Uart_Print("\r      2 - CHANNEL 13");
        ADR.N    R0,?_70
        BL       Uart_Print
// 1521   Uart_Print("      A - CHANNEL 21\n");
        LDR      R0,??DataTable118_7
        BL       Uart_Print
// 1522   Uart_Print("\r      3 - CHANNEL 14");
        LDR      R0,??DataTable118_8
        BL       Uart_Print
// 1523   Uart_Print("      B - CHANNEL 22\n");
        LDR      R0,??DataTable118_9
        BL       Uart_Print
// 1524   Uart_Print("\r      4 - CHANNEL 15");
        ADR.N    R0,?_74
        BL       Uart_Print
// 1525   Uart_Print("      C - CHANNEL 23\n");
        LDR      R0,??DataTable119
        BL       Uart_Print
// 1526   Uart_Print("\r      5 - CHANNEL 16");
        LDR      R0,??DataTable119_1
        BL       Uart_Print
// 1527   Uart_Print("      D - CHANNEL 24\n");
        LDR      R0,??DataTable119_2
        BL       Uart_Print
// 1528   Uart_Print("\r      6 - CHANNEL 17");
        ADR.N    R0,?_78
        BL       Uart_Print
// 1529   Uart_Print("      E - CHANNEL 25\n");  
        LDR      R0,??DataTable119_3
        BL       Uart_Print
// 1530   Uart_Print("\r      7 - CHANNEL 18");
        LDR      R0,??DataTable119_4
        BL       Uart_Print
// 1531   if(gPowerLevelLock_c == FALSE)
// 1532   {
// 1533     Uart_Print("      F - CHANNEL 26\n");      
        LDR      R0,??DataTable120
        B.N      ??Subroutine0_0
// 1534   }
// 1535   else
// 1536   {
// 1537     Uart_Print("\n");
// 1538   }
// 1539   Uart_Print("\r      p - Previous Menu\n");      
// 1540   Uart_Print("\r\n    Please select an option:  ");
// 1541   return Uart_getchar(mUARTRxBuffer);
// 1542 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115:
        DATA32
        DC32     0x80003040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable115_1:
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
// 1543 
// 1544 
// 1545 /************************************************************************************
// 1546 * test_mode_rx_menu
// 1547 *
// 1548 * This function displays the test mode options when the SELECT TEST MODE is 
// 1549 * selected.
// 1550 *
// 1551 ************************************************************************************/
// 1552 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1553 char test_mode_rx_menu(void){
test_mode_rx_menu:
        PUSH     {R3-R5,LR}
// 1554   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,R4
        BL       Uart_Print
// 1555   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1556   Uart_Print("\r    |   Reception Tests Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1557   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1558   Uart_Print("\r    Current Test Mode: ");
        LDR      R0,??DataTable120_2
        BL       Uart_Print
// 1559   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable118_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1560   Uart_Print("\r\n      I - IDLE\n");
        LDR      R0,??DataTable120_3
        BL       Uart_Print
// 1561   Uart_Print("\r      R - RECEPTION\n");
        Nop      
        ADR.N    R0,?_85
        BL       Uart_Print
// 1562   Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+144
        BL       Uart_Print
// 1563   Uart_Print("\r      r - RANGE TEST RECEIVER\n");
        Nop      
        ADR.N    R0,?_86
        B.N      ??Subroutine0_0
// 1564   Uart_Print("\r      p - Previous Menu\n");      
// 1565   Uart_Print("\r\n\n    Please select an option:  ");
// 1566   return Uart_getchar(mUARTRxBuffer);
// 1567 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116:
        DATA32
        DC32     0x1ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable116_1:
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
// 1568 
// 1569 /************************************************************************************
// 1570 * test_mode_tx_menu
// 1571 *
// 1572 * This function displays the test mode options when the SELECT TEST MODE is 
// 1573 * selected.
// 1574 *
// 1575 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1576 char test_mode_tx_menu(void){
test_mode_tx_menu:
        PUSH     {R3-R5,LR}
// 1577   Uart_Print("\r\n     _____________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,R4
        ADDS     R0,R0,#+220
        BL       Uart_Print
// 1578   Uart_Print("\r    |                             |\n");
        MOVS     R0,#+130
        LSLS     R0,R0,#+1        ;; #+260
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1579   Uart_Print("\r    |   Transmission Tests Menu   |\n");
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1580   Uart_Print("\r    |_____________________________|\n\n");  
        MOVS     R0,#+170
        LSLS     R0,R0,#+1        ;; #+340
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1581   Uart_Print("\r    Current Test Mode: ");
        Nop      
        ADR.N    R0,?_83
        BL       Uart_Print
// 1582   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable118_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1583   Uart_Print("\r\n      I - IDLE\n");
        Nop      
        ADR.N    R0,?_84
        BL       Uart_Print
// 1584   Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
        MOVS     R0,#+190
        LSLS     R0,R0,#+1        ;; #+380
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1585   Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
        MOVS     R0,#+208
        LSLS     R0,R0,#+1        ;; #+416
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1586   Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
        MOVS     R0,#+230
        LSLS     R0,R0,#+1        ;; #+460
        B.N      ?Subroutine0
// 1587   Uart_Print("\r      p - Previous Menu\n");      
// 1588   Uart_Print("\r\n\n    Please select an option:  ");
// 1589   return Uart_getchar(mUARTRxBuffer);
// 1590 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable117_1:
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
// 1591 
// 1592 
// 1593 /************************************************************************************
// 1594 * select_test_mode_menu
// 1595 *
// 1596 * This function displays the option to select between TX and RX mode
// 1597 *
// 1598 ************************************************************************************/
// 1599 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1600 char select_test_mode_menu(void){
select_test_mode_menu:
        PUSH     {R4,LR}
// 1601   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,R4
        BL       Uart_Print
// 1602   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1603   Uart_Print("\r    |   TX / RX Menu   |\n");
        Nop      
        ADR.N    R0,?_87
        BL       Uart_Print
// 1604   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1605   Uart_Print("\r      R - RECEIVER MODE \n");
        Nop      
        ADR.N    R0,?_88
        BL       Uart_Print
// 1606   Uart_Print("\r      T - TRANSMITTER MODE \n");
        Nop      
        ADR.N    R0,?_89
        BL       Uart_Print
// 1607   Uart_Print("\r      p - Previous Menu\n");      
        LDR      R0,??DataTable121
        BL       Uart_Print
// 1608   Uart_Print("\r\n\n    Please select an option:  ");
        MOVS     R0,R4
        ADDS     R0,R0,#+184
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1609   return Uart_getchar(mUARTRxBuffer);
// 1610 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        BL       Uart_Print
        LDR      R0,??DataTable122
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
??DataTable118:
        DATA32
        DC32     ?_63

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_1:
        DATA32
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_2:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_3:
        DATA32
        DC32     ?_65

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_4:
        DATA32
        DC32     ?_67

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_5:
        DATA32
        DC32     ?_68

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_6:
        DATA32
        DC32     ?_69

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_7:
        DATA32
        DC32     ?_71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_8:
        DATA32
        DC32     ?_72

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable118_9:
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
// 1611 
// 1612 /************************************************************************************
// 1613 * test_transmission_menu
// 1614 *
// 1615 * This function displays the transmissions options when the transmission option 
// 1616 * is selected in the main menu.
// 1617 *
// 1618 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1619 char test_transmission_menu(void)
// 1620 {
test_transmission_menu:
        PUSH     {R3-R5,LR}
// 1621   Uart_Print("\r\n     ______________________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,#+248
        LSLS     R0,R0,#+1        ;; #+496
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1622   Uart_Print("\r    |                                      |\n");
        MOVS     R0,#+136
        LSLS     R0,R0,#+2        ;; #+544
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1623   Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
        MOVS     R0,#+148
        LSLS     R0,R0,#+2        ;; #+592
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1624   Uart_Print("\r    |______________________________________|\n\n");  
        MOVS     R0,#+160
        LSLS     R0,R0,#+2        ;; #+640
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1625   Uart_Print("\r    Current Transmission Test: ");
        MOVS     R0,#+172
        LSLS     R0,R0,#+2        ;; #+688
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1626   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable123
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1627   Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
        MOVS     R0,#+181
        LSLS     R0,R0,#+2        ;; #+724
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1628   Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
        MOVS     R0,#+197
        LSLS     R0,R0,#+2        ;; #+788
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1629   Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
        MOVS     R0,#+206
        LSLS     R0,R0,#+2        ;; #+824
        Nop      
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1630   Uart_Print("\r      p - Previous Menu\n");      
// 1631   Uart_Print("\r\n\n    Please select an option:  ");
// 1632   return Uart_getchar(mUARTRxBuffer);
// 1633 }

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
??DataTable119:
        DATA32
        DC32     ?_75

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_1:
        DATA32
        DC32     ?_76

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_2:
        DATA32
        DC32     ?_77

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_3:
        DATA32
        DC32     ?_79

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable119_4:
        DATA32
        DC32     ?_80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_82:
        DC8 "\015      p - Previous Menu\012"
        DATA16
        DC8 0, 0
// 1634 
// 1635 
// 1636 /************************************************************************************
// 1637 * clock_settings_menu
// 1638 *
// 1639 * This function displays a menu with the clock settings options and waits for a 
// 1640 * user selection.
// 1641 *
// 1642 ************************************************************************************/
// 1643 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1644 char clock_setting_menu(void)
// 1645 {
clock_setting_menu:
        PUSH     {R7,LR}
// 1646   Uart_Print("\r\n     _____________________");
        Nop      
        ADR.N    R0,?_90
        BL       Uart_Print
// 1647   Uart_Print("\r\n    |                     |");
        Nop      
        ADR.N    R0,?_91
        BL       Uart_Print
// 1648   Uart_Print("\r\n    | Clock Settings Menu |");
        Nop      
        ADR.N    R0,?_92
        BL       Uart_Print
// 1649   Uart_Print("\r\n    |_____________________|\n\n");  
        LDR      R0,??DataTable123_1
        BL       Uart_Print
// 1650   Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
        LDR      R0,??DataTable123_2
        BL       Uart_Print
// 1651   Uart_Print("\r    2 - Adjust COARSE TUNE\n");
        LDR      R0,??DataTable123_3
        BL       Uart_Print
// 1652   Uart_Print("\r    3 - Adjust FINE TUNE \n");
        ADR.N    R0,?_96
        BL       Uart_Print
// 1653   Uart_Print("\r    p - Previous Menu\n");
        LDR      R0,??DataTable123_4
        BL       Uart_Print
// 1654   Uart_Print("\r\n    Please select an option:  ");
        LDR      R0,??DataTable123_5
        BL       Uart_Print
// 1655   return Uart_getchar(mUARTRxBuffer);
        LDR      R0,??DataTable122
        BL       Uart_getchar
        POP      {R1,R3}
        BX       R3               ;; return
// 1656 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable120:
        DATA32
        DC32     ?_81

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable120_1:
        DATA32
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable120_2:
        DATA32
        DC32     ?_83

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable120_3:
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
// 1657 
// 1658 /************************************************************************************
// 1659 * bulk_cap_menu
// 1660 *
// 1661 * The bulk_cap_menu shows the two possible bulk capacitor states and waits until
// 1662 * the user selects an option.
// 1663 *
// 1664 ************************************************************************************/
// 1665 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1666 char bulk_cap_menu(void)
// 1667 {
bulk_cap_menu:
        PUSH     {R4,LR}
// 1668   Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
        Nop      
        ADR.N    R0,?_98
        BL       Uart_Print
// 1669   Uart_Print("\r\n   Current Bulk Capacitor State:");
        LDR      R0,??DataTable124
        BL       Uart_Print
// 1670   if(gEnable_c == u8BulkCapState){
        LDR      R4,??DataTable123
        LDRB     R0,[R4, #+26]
        CMP      R0,#+1
        BNE      ??bulk_cap_menu_0
// 1671     Uart_Print("  Enable\n\n");
        ADR.N    R0,?_99
        B        ??bulk_cap_menu_1
// 1672   }
// 1673   else{
// 1674     Uart_Print("  Disable\n\n");    
??bulk_cap_menu_0:
        ADR.N    R0,?_100
??bulk_cap_menu_1:
        BL       Uart_Print
// 1675   }
// 1676   Uart_Print("\r   E - Enable Capacitor.\n");
        Nop      
        ADR.N    R0,?_101
        BL       Uart_Print
// 1677   Uart_Print("\r   D - Disable Capacitor\n");
        Nop      
        ADR.N    R0,?_102
        BL       Uart_Print
// 1678   Uart_Print("\r   p - Previous Menu\n");
        LDR      R0,??DataTable126
        BL       Uart_Print
// 1679   Uart_Print("\r\nPlease select an option:  ");
        ADR.N    R0,?_104
        BL       Uart_Print
// 1680   return Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        B.N      ??Subroutine3_0
// 1681 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable121:
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
// 1682 
// 1683 /************************************************************************************
// 1684 * channel_adjust
// 1685 *
// 1686 * This function updates the channel with the value selected by the user.
// 1687 *
// 1688 ************************************************************************************/
// 1689 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1690 void channel_adjust(void){
channel_adjust:
        PUSH     {R3-R7,LR}
// 1691   char option, hexOption;
// 1692   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable123
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable127
// 1693   do{
// 1694     option = channel_menu();
??channel_adjust_0:
        BL       channel_menu
        MOVS     R5,R0
// 1695     hexOption = AsciitoHex(option);
        BL       AsciitoHex
        MOVS     R6,R0
// 1696     
// 1697     if(PreviousMenu != hexOption)
        CMP      R0,#+112
        BEQ      ??channel_adjust_1
// 1698     {
// 1699       MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1700       DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1701       if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
        MOVS     R0,R6
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BNE      ??channel_adjust_2
// 1702       {  
// 1703         u8TestModeChannel = (channel_num_t)hexOption;
        STRB     R6,[R4, #+21]
        B        ??channel_adjust_3
// 1704       }
// 1705       else
// 1706       {
// 1707         Uart_Print("  Invalid Option!!!");  
??channel_adjust_2:
        MOVS     R0,R7
        BL       Uart_Print
// 1708       }
// 1709       MLMETestMode(u8CurrentMode);
??channel_adjust_3:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1710       
// 1711     }
// 1712   }while(option != PreviousMenu);
??channel_adjust_1:
        CMP      R5,#+112
        BNE      ??channel_adjust_0
// 1713 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122:
        DATA32
        DC32     c_test_num+0x20
// 1714 
// 1715 /************************************************************************************
// 1716 * power_adjust
// 1717 *
// 1718 * This function change the power value to the power selected by the user in the
// 1719 * serial interface
// 1720 *
// 1721 ************************************************************************************/
// 1722 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1723 void power_adjust(void){
power_adjust:
        PUSH     {R4-R6,LR}
// 1724   uint8_t u8TempPower;
// 1725   CurrentOption = gPower_c;
        LDR      R5,??DataTable123
        MOVS     R0,#+1
        STRB     R0,[R5, #+23]
// 1726   Uart_Print("\r\n     ___________________________\n");
        LDR      R4,??DataTable128
        MOVS     R0,R4
        BL       Uart_Print
// 1727   Uart_Print("\r    |                           |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1728   Uart_Print("\r    |   Power Adjustment Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1729   Uart_Print("\r    |___________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1730   Uart_Print("\r    Current Power: ");
        ADR.N    R0,?_106
        BL       Uart_Print
// 1731   Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R5
        ADDS     R0,R0,#+22
        BL       Uart_PrintHex
// 1732 
// 1733   if(gPowerLevelLock_c)
// 1734   {
// 1735     Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
// 1736   }
// 1737   else
// 1738   {
// 1739     Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
        MOVS     R0,R4
        ADDS     R0,R0,#+148
        BL       Uart_Print
// 1740   } 
// 1741   
// 1742   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1743   
// 1744   u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 1745     
// 1746   u8TempPower = (u8TempPower << 4);
// 1747   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1748   u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
        LSLS     R6,R6,#+4
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        ORRS     R0,R0,R6
        MOVS     R6,R0
// 1749   
// 1750   
// 1751   if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BNE      ??power_adjust_0
// 1752   {
// 1753     u8TestModePower = u8TempPower;
        STRB     R6,[R5, #+22]
// 1754     Uart_Print("\n");
        LDR      R0,??DataTable128_1
        B        ??power_adjust_1
// 1755   }
// 1756   else
// 1757   {
// 1758     Uart_Print("\r\n    Incorrect value!!!");  
??power_adjust_0:
        ADR.N    R0,?_107
        BL       Uart_Print
// 1759     Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
        MOVS     R0,R4
        ADDS     R0,R0,#+224
        BL       Uart_Print
// 1760     Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
        MOVS     R0,#+144
        LSLS     R0,R0,#+1        ;; #+288
        ADDS     R0,R4,R0
??power_adjust_1:
        BL       Uart_Print
// 1761   }
// 1762 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_1:
        DATA32
        DC32     ?_93

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_2:
        DATA32
        DC32     ?_94

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_3:
        DATA32
        DC32     ?_95

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_4:
        DATA32
        DC32     ?_97

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable123_5:
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
// 1763 
// 1764 /************************************************************************************
// 1765 * test_mode_rx_adjust
// 1766 *
// 1767 * In this function the current test mode is adjusted to the new value selected by the 
// 1768 * user in the serial interface.
// 1769 *
// 1770 ************************************************************************************/
// 1771 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1772 void test_mode_rx_adjust(void)
// 1773 {
test_mode_rx_adjust:
        PUSH     {R3-R7,LR}
// 1774   char option;
// 1775   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable128_2
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable128_3
        MOVS     R5,#+0
// 1776   do{
// 1777     option = test_mode_rx_menu();
??test_mode_rx_adjust_0:
        BL       test_mode_rx_menu
        MOVS     R6,R0
// 1778     switch(option)
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
// 1779     {
// 1780       case IdleTest:
// 1781         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_rx_adjust_1:
        STRB     R5,[R4, #+20]
// 1782         MLMETestMode(u8CurrentMode);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1783         break;
        B        ??test_mode_rx_adjust_4
// 1784       case ReceptionTest:
// 1785         Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
??test_mode_rx_adjust_3:
        MOVS     R0,R7
        BL       Uart_Print
// 1786         Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable128_4
        BL       Uart_Print
// 1787         Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1788         u8CurrentMode = SMAC_CONTINUOUS_RX;
        MOVS     R0,#+1
        STRB     R0,[R4, #+20]
// 1789         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1790         MLMERXEnableRequest(&RX_msg, 0x0000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1791         do
// 1792         {
// 1793             (void)process_radio_msg();
??test_mode_rx_adjust_7:
        BL       process_radio_msg
// 1794             if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??test_mode_rx_adjust_8
// 1795             {
// 1796               gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+27]
// 1797               process_incoming_msg();
        BL       process_incoming_msg
// 1798             }
// 1799           
// 1800 #if OTAP_ENABLED == TRUE
// 1801           if(gbOtapExecute)
// 1802           {
// 1803             OTAP_execute();        
// 1804           }
// 1805           else
// 1806 #endif
// 1807           {          
// 1808             if(is_rx_msg_final_state(RX_msg))
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
// 1809             {
// 1810               RX_msg.u8BufSize = RX_SIZE;
??test_mode_rx_adjust_9:
        MOVS     R0,#+70
        STRB     R0,[R4, #+12]
// 1811               MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1812             }
// 1813           }
// 1814           Uart_Poll(mUARTRxBuffer);
??test_mode_rx_adjust_10:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 1815           }
// 1816         while (mUARTRxBuffer[0] != Exit);   
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??test_mode_rx_adjust_7
        B        ??test_mode_rx_adjust_4
// 1817         break;
// 1818         
// 1819       case PacketErrorRateTest:
// 1820         packet_error_rate_rx_test();
??test_mode_rx_adjust_2:
        BL       packet_error_rate_rx_test
// 1821         break;
        B        ??test_mode_rx_adjust_4
// 1822       case RangeTest:
// 1823         range_rx_test();
??test_mode_rx_adjust_5:
        BL       range_rx_test
// 1824         break;
        B        ??test_mode_rx_adjust_4
// 1825       case PreviousMenu:
// 1826         break; 
// 1827         
// 1828       default:
// 1829         Uart_Print("  Invalid Option!!!");
??test_mode_rx_adjust_6:
        LDR      R0,??DataTable127
        BL       Uart_Print
// 1830         break;
// 1831     }
// 1832   }while(option != PreviousMenu);
??test_mode_rx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_rx_adjust_0
// 1833 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124:
        DATA32
        DC32     ?_31
// 1834 
// 1835 /************************************************************************************
// 1836 * test_mode_tx_adjust
// 1837 *
// 1838 * In this function the current test mode is adjusted to the new value selected by the 
// 1839 * user in the serial interface.
// 1840 *
// 1841 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1842 void test_mode_tx_adjust(void){
test_mode_tx_adjust:
        PUSH     {R4-R6,LR}
// 1843   char option;
// 1844   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable128_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable127
// 1845   do{
// 1846     option = test_mode_tx_menu();
??test_mode_tx_adjust_0:
        BL       test_mode_tx_menu
        MOVS     R6,R0
// 1847     switch(option)
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
// 1848     {
// 1849       case IdleTest:
// 1850         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_tx_adjust_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
// 1851         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1852         break;
        B        ??test_mode_tx_adjust_4
// 1853       case TransmissionTest:  
// 1854         cont_transmission_test_adjust();
??test_mode_tx_adjust_3:
        BL       cont_transmission_test_adjust
// 1855         break;
        B        ??test_mode_tx_adjust_4
// 1856       case PacketErrorRateTest:
// 1857         packet_error_rate_tx_test();
??test_mode_tx_adjust_2:
        BL       packet_error_rate_tx_test
// 1858         break;
        B        ??test_mode_tx_adjust_4
// 1859       case RangeTest:
// 1860         range_tx_test();
??test_mode_tx_adjust_5:
        BL       range_tx_test
// 1861         break;
        B        ??test_mode_tx_adjust_4
// 1862       case PreviousMenu:
// 1863         break;      
// 1864       default:
// 1865         Uart_Print("  Invalid Option!!!");
??test_mode_tx_adjust_6:
        MOVS     R0,R5
        BL       Uart_Print
// 1866         break;
// 1867     }
// 1868   }while(option != PreviousMenu);
??test_mode_tx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_tx_adjust_0
// 1869 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1870 
// 1871 
// 1872 /************************************************************************************
// 1873 * tx_rx_select
// 1874 *
// 1875 * This function select between transmitter and receiver mode
// 1876 *
// 1877 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1878 void tx_rx_select(void)
// 1879 {
tx_rx_select:
        PUSH     {R3-R5,LR}
        LDR      R4,??DataTable127
// 1880   char option;
// 1881   do
// 1882   {
// 1883     option = select_test_mode_menu();
??tx_rx_select_0:
        BL       select_test_mode_menu
        MOVS     R5,R0
// 1884     switch(option)
        CMP      R0,#+82
        BEQ      ??tx_rx_select_1
        CMP      R0,#+84
        BNE      ??tx_rx_select_2
// 1885     {
// 1886       case TransmissionTest:
// 1887         test_mode_tx_adjust();   
        BL       test_mode_tx_adjust
// 1888         break;
        B        ??tx_rx_select_3
// 1889         
// 1890       case ReceptionTest:
// 1891         test_mode_rx_adjust();     
??tx_rx_select_1:
        BL       test_mode_rx_adjust
// 1892         break;          
        B        ??tx_rx_select_3
// 1893         
// 1894       default:
// 1895         Uart_Print("  Invalid Option!!!");
??tx_rx_select_2:
        MOVS     R0,R4
        BL       Uart_Print
// 1896         break;
// 1897     }
// 1898   }while(option != PreviousMenu);
??tx_rx_select_3:
        CMP      R5,#+112
        BNE      ??tx_rx_select_0
// 1899 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable126:
        DATA32
        DC32     ?_103
// 1900 
// 1901 
// 1902 
// 1903 /************************************************************************************
// 1904 * cont_transmission_test_adjust
// 1905 *
// 1906 * This function execute a specific transmission mode: modulated, unmodulated or 
// 1907 * the pseudo random binary sequence.
// 1908 *
// 1909 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1910 void cont_transmission_test_adjust(void)
// 1911 {
cont_transmission_test_adjust:
        PUSH     {R4-R6,LR}
// 1912   char option;
// 1913   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable128_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable127
// 1914   
// 1915   do
// 1916   {
// 1917     option = test_transmission_menu();
??cont_transmission_test_adjust_0:
        BL       test_transmission_menu
        MOVS     R6,R0
// 1918     switch(option)
        CMP      R0,#+77
        BEQ      ??cont_transmission_test_adjust_1
        CMP      R0,#+83
        BEQ      ??cont_transmission_test_adjust_2
        CMP      R0,#+85
        BEQ      ??cont_transmission_test_adjust_3
        CMP      R0,#+112
        BEQ      ??cont_transmission_test_adjust_4
        B        ??cont_transmission_test_adjust_5
// 1919     {
// 1920       case PRBS9TxTest:
// 1921         pulse_prbs9_tx();
??cont_transmission_test_adjust_2:
        BL       pulse_prbs9_tx
// 1922         break;
        B        ??cont_transmission_test_adjust_4
// 1923       case ModulatedTxTest:
// 1924         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
??cont_transmission_test_adjust_1:
        MOVS     R0,#+4
        B.N      ??cont_transmission_test_adjust_6
// 1925         MLMETestMode(u8CurrentMode);        
// 1926         break;        
// 1927       case UnmodulatedTxTest:
// 1928         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
??cont_transmission_test_adjust_3:
        MOVS     R0,#+5
??cont_transmission_test_adjust_6:
        STRB     R0,[R4, #+20]
// 1929         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1930         break;  
        B        ??cont_transmission_test_adjust_4
// 1931     case PreviousMenu:
// 1932         break;      
// 1933       default:
// 1934         Uart_Print("  Invalid Option!!!");
??cont_transmission_test_adjust_5:
        MOVS     R0,R5
        BL       Uart_Print
// 1935         break;
// 1936     }
// 1937   }while(option != PreviousMenu);
??cont_transmission_test_adjust_4:
        CMP      R6,#+112
        BNE      ??cont_transmission_test_adjust_0
// 1938 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127:
        DATA32
        DC32     ?_105
// 1939 
// 1940 
// 1941 /************************************************************************************
// 1942 * pulse_prbs9_tx
// 1943 *
// 1944 * This function performs the transmission process for the pseudo random binary 
// 1945 * sequence.
// 1946 *
// 1947 ***********************************************************************************/
// 1948 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1949 void pulse_prbs9_tx(void)
// 1950 {
pulse_prbs9_tx:
        PUSH     {R3-R7,LR}
// 1951   static prbs9_tx_states_t u8AppState;
// 1952   static uint16_t u16DutyCicleCounter;
// 1953   
// 1954 #if INTERFACE_TYPE == MANUAL 
// 1955   if(FALSE == gu8TestAlreadyStarted)
        MOVS     R4,#+0
        LDR      R5,??DataTable129
        LDR      R7,??DataTable128_2
        LDRB     R0,[R7, #+31]
        CMP      R0,#+0
        BNE      ??pulse_prbs9_tx_0
// 1956   {
// 1957        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R5, #+0]
// 1958       u8AppState = INIT_PRBS9_TX_ST;
        STRB     R4,[R5, #+16]
// 1959   }  
// 1960 #endif  
// 1961 
// 1962 
// 1963 #if INTERFACE_TYPE == SERIAL
// 1964   u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX;
// 1965   TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
// 1966   u8AppState =  INIT_PRBS9_TX_ST;
// 1967   MLMETestMode(u8CurrentMode);
// 1968   Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
// 1969   Uart_Print("\r\nPress any key to start.....");
// 1970   Uart_getchar(mUARTRxBuffer);
// 1971   do  
// 1972   {
// 1973 #endif        
// 1974         
// 1975     (void)process_radio_msg();
??pulse_prbs9_tx_0:
        BL       process_radio_msg
// 1976     switch(u8AppState)
        MOVS     R6,#+1
        LDRB     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ      ??pulse_prbs9_tx_1
        CMP      R0,#+1
        BEQ      ??pulse_prbs9_tx_2
        B        ??pulse_prbs9_tx_3
// 1977     {
// 1978       case INIT_PRBS9_TX_ST:
// 1979       {
// 1980         LoadPRBS9();
??pulse_prbs9_tx_1:
        BL       LoadPRBS9
// 1981         u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1982         u8AppState = TRANSMIT_PRBS9_TX_ST;
        STRB     R6,[R5, #+16]
// 1983       }
// 1984       break;
        B        ??pulse_prbs9_tx_3
// 1985       
// 1986       case TRANSMIT_PRBS9_TX_ST:
// 1987       {
// 1988         if(is_tx_msg_final_state(TX_msg))
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
// 1989         {
// 1990           u16DutyCicleCounter++;
??pulse_prbs9_tx_4:
        LDRH     R0,[R5, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+20]
// 1991           if(u16DutyCicleCounter == DUTY_CICLE_TIME)
        LDR      R1,??DataTable130  ;; 0x79e
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??pulse_prbs9_tx_3
// 1992           {
// 1993             u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1994             MCPSDataRequest(&TX_msg);
        MOVS     R0,R5
        BL       MCPSDataRequest
// 1995           }
// 1996         }
// 1997       }
// 1998       
// 1999       default:
// 2000       break;
// 2001     }
// 2002          
// 2003 #if INTERFACE_TYPE == SERIAL    
// 2004     Uart_Poll(mUARTRxBuffer);
// 2005   }while (mUARTRxBuffer[0] != Exit); 
// 2006   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2007   MLMETestMode(u8CurrentMode);
// 2008 #endif
// 2009 
// 2010 #if INTERFACE_TYPE == MANUAL      
// 2011   gu8TestAlreadyStarted = TRUE;
??pulse_prbs9_tx_3:
        STRB     R6,[R7, #+31]
// 2012 #endif
// 2013 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128:
        DATA32
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128_1:
        DATA32
        DC32     ?_65

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128_2:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128_3:
        DATA32
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable128_4:
        DATA32
        DC32     ?_108
// 2014 
// 2015 /************************************************************************************
// 2016 * packet_error_rate_tx_test
// 2017 *
// 2018 * This function performs the packet error rate transmission process.
// 2019 *
// 2020 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2021 void packet_error_rate_tx_test(void)
// 2022 {
packet_error_rate_tx_test:
        PUSH     {R3-R7,LR}
// 2023   static per_tx_states_t u8AppState;
// 2024   static uint16_t u16MsgCount;
// 2025   static uint16_t u16DoneCount;
// 2026   uint32_t u32NumTransmissions;
// 2027 
// 2028 #if   INTERFACE_TYPE == SERIAL
// 2029   uint8_t u8InvalidCharFlag = FALSE;
// 2030 #endif
// 2031   
// 2032 #if   INTERFACE_TYPE == SERIAL
// 2033   uint8_t u8Count;
// 2034   uint8_t u8TempNumTx[5];
// 2035 #endif
// 2036   
// 2037   u32NumTransmissions = NUM_TRANSMISSIONS;
// 2038 
// 2039 #if INTERFACE_TYPE == SERIAL
// 2040   u8AppState = IDLE_PER_TX_ST;   
// 2041   u8CurrentMode = SMAC_TEST_MODE_PER_TX;
// 2042   do{
// 2043 #endif
// 2044 
// 2045 #if INTERFACE_TYPE == MANUAL 
// 2046   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable129
        LDR      R5,??DataTable130_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??packet_error_rate_tx_test_0
// 2047   {
// 2048     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDRB     R0,[R5, #+28]
        MOVS     R1,#+247
        ANDS     R1,R1,R0
        STRB     R1,[R5, #+28]
// 2049     TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+0]
// 2050     LEDs_TX_INIT(250);  
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
// 2051     u8AppState = INIT_PER_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+17]
// 2052     gu8TestAlreadyStarted = TRUE;
        STRB     R0,[R5, #+31]
// 2053 #if (gLCDSupported_d) 
// 2054     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable130_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2055     LCD_WriteString_NormalFont(4,"PER Transmitting..");
        LDR      R1,??DataTable130_3
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2056 #endif    
// 2057   }
// 2058 #endif
// 2059     
// 2060     (void)process_radio_msg();
??packet_error_rate_tx_test_0:
        BL       process_radio_msg
// 2061     if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_1
// 2062     {
// 2063       gbDataIndicationFlag = FALSE;
        STRB     R6,[R5, #+27]
// 2064       process_incoming_msg();
        BL       process_incoming_msg
// 2065     }
// 2066     
// 2067 #if INTERFACE_TYPE == MANUAL    
// 2068     if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_tx_test_1:
        LDRB     R0,[R5, #+31]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_2
// 2069     {
// 2070 #endif      
// 2071     switch(u8AppState){
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
// 2072       case IDLE_PER_TX_ST:
// 2073       {
// 2074 #if INTERFACE_TYPE == SERIAL          
// 2075         Uart_Print("\r\n    ****************************");
// 2076         Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2077         Uart_Print("\r\n    ****************************");
// 2078         Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2079         Uart_Print("\r\nPress Enter. Packets to transmit: ");
// 2080         Uart_PrintShortDec((uint16_t)NUM_TRANSMISSIONS);
// 2081         do
// 2082         {
// 2083          uint8_t i;
// 2084          uint8_t u8Shift;
// 2085           Uart_Print("\r\n\n  Number of packets in decimal: ");
// 2086           u8Count = 0;
// 2087           u8InvalidCharFlag = FALSE;
// 2088 
// 2089           u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2090                     
// 2091           while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= Exit))
// 2092           { 
// 2093             if((0x3A < u8TempNumTx[u8Count]))
// 2094             {
// 2095               u8InvalidCharFlag = TRUE;
// 2096             }
// 2097             else if(0x30 > u8TempNumTx[u8Count])
// 2098             {
// 2099               u8InvalidCharFlag = TRUE;
// 2100             }
// 2101 
// 2102             u8Count ++;
// 2103             u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2104           }
// 2105           if(u8TempNumTx[u8Count] == 0x0D)
// 2106           { 
// 2107             if(0 != u8Count)
// 2108             {
// 2109               u8Count--;
// 2110             }
// 2111             else
// 2112             {
// 2113               u8InvalidCharFlag = TRUE;
// 2114             }   
// 2115             Uart_getchar(mUARTRxBuffer);
// 2116            }
// 2117           
// 2118           if(Exit == u8TempNumTx[u8Count])
// 2119           {
// 2120             return;
// 2121           }
// 2122 
// 2123           u32NumTransmissions = 0;
// 2124           u8Shift = u8Count;
// 2125           /*To validate 0-9, a-f and A-F values*/
// 2126 
// 2127           for(i = 0; i <= u8Count; i++)
// 2128           {
// 2129             u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
// 2130             u8Shift--;
// 2131           }
// 2132           
// 2133           if(MAX_NUM_TRANSMISSION < u32NumTransmissions)
// 2134           {
// 2135             Uart_Print("\r\n  Value out of range, please try again.");
// 2136           }
// 2137           
// 2138           if(u8InvalidCharFlag == TRUE)
// 2139           {
// 2140             Uart_Print("\r\n  Invalid characters, please use only numbers.");
// 2141           }
// 2142         }
// 2143         while((MAX_NUM_TRANSMISSION < u32NumTransmissions) || (TRUE == u8InvalidCharFlag));
// 2144         
// 2145 #endif         
// 2146          u8AppState = INIT_PER_TX_ST;
??packet_error_rate_tx_test_3:
        MOVS     R0,#+1
        B.N      ??packet_error_rate_tx_test_8
// 2147       }
// 2148       break;
// 2149       case INIT_PER_TX_ST:
// 2150       {
// 2151         uint8_t i;
// 2152         uint8_t u8Count = 4;
// 2153         TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
??packet_error_rate_tx_test_5:
        LSLS     R2,R2,#+29
        LSRS     R2,R2,#+29
        MOVS     R3,#+32
        ORRS     R3,R3,R2
        STRB     R3,[R4, #+0]
// 2154         TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+2]
// 2155         TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        MOVS     R1,#+231
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+3]
// 2156         for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        MOVS     R3,#+0
        LDR      R2,??DataTable130_4
// 2157         {
// 2158           TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
??packet_error_rate_tx_test_9:
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R2, R1]
        LDR      R5,[R4, #+4]
        LSLS     R7,R0,#+24
        LSRS     R7,R7,#+24
        ADDS     R5,R5,R7
        STRB     R1,[R5, #+2]
// 2159           u8Count ++;
        ADDS     R0,R0,#+1
// 2160         }
        ADDS     R3,R3,#+1
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+16
        BCC      ??packet_error_rate_tx_test_9
// 2161 
// 2162         u16MsgCount = 0;
        STRH     R6,[R4, #+22]
// 2163         u16DoneCount = 0;
        STRH     R6,[R4, #+24]
// 2164         u8AppState = TRANSMITING_PER_TX_ST;
        MOVS     R0,#+2
        B.N      ??packet_error_rate_tx_test_8
// 2165       }
// 2166       break;
// 2167       case TRANSMITING_PER_TX_ST:
// 2168       {
// 2169         if(is_tx_msg_final_state(TX_msg))
??packet_error_rate_tx_test_4:
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
// 2170         {
// 2171           if(u32NumTransmissions > u16MsgCount)
??packet_error_rate_tx_test_10:
        LDRH     R0,[R4, #+22]
        LDR      R3,??DataTable131  ;; 0x3e7
        CMP      R0,R3
        BCS      ??packet_error_rate_tx_test_11
// 2172           {
// 2173             TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
        LSRS     R1,R0,#+8
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+4]
// 2174             TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
// 2175             TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
        MOVS     R0,#+20
        STRB     R0,[R4, #+8]
// 2176 #if INTERFACE_TYPE == SERIAL          
// 2177             DelayMs(14);
// 2178 #else
// 2179             DelayMs(5);
        MOVS     R0,#+5
        BL       DelayMs
// 2180 #endif            
// 2181 
// 2182             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2183             u16MsgCount++;
        LDRH     R0,[R4, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+22]
        B        ??packet_error_rate_tx_test_2
// 2184           }
// 2185           else
// 2186           {
// 2187             uint8_t i;
// 2188             for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
??packet_error_rate_tx_test_11:
        ADR.N    R0,ku8DoneStr
// 2189             {
// 2190               TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
??packet_error_rate_tx_test_12:
        LDRB     R2,[R0, R6]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R6
        STRB     R2,[R3, #+2]
// 2191             }
        ADDS     R6,R6,#+1
        CMP      R6,#+4
        BCC      ??packet_error_rate_tx_test_12
// 2192             u8AppState = DONE_PER_TX_ST;
        STRB     R1,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2193           }
// 2194         }   
// 2195       }  
// 2196       break;
// 2197       
// 2198       case DONE_PER_TX_ST:
// 2199       {
// 2200         if(NUM_DONE_TX >= u16DoneCount)
??packet_error_rate_tx_test_7:
        LDRH     R1,[R4, #+24]
        CMP      R1,#+16
        BGE      ??packet_error_rate_tx_test_8
// 2201         {
// 2202           if(is_tx_msg_final_state(TX_msg))
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_13
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
        B        ??packet_error_rate_tx_test_14
// 2203           {
// 2204             if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
// 2205               u16DoneCount++;
??packet_error_rate_tx_test_13:
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+24]
// 2206             TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
??packet_error_rate_tx_test_14:
        STRB     R0,[R4, #+8]
// 2207             DelayMs(14);
        MOVS     R0,#+14
        BL       DelayMs
// 2208             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
        B        ??packet_error_rate_tx_test_2
// 2209           }
// 2210         }
// 2211         else
// 2212         {
// 2213           u8AppState = FINISH_PER_TX_ST;
??packet_error_rate_tx_test_8:
        STRB     R0,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2214         }
// 2215       }
// 2216       break;
// 2217       
// 2218       case FINISH_PER_TX_ST:
// 2219         u8AppState = IDLE_PER_TX_ST;
??packet_error_rate_tx_test_6:
        STRB     R6,[R4, #+17]
// 2220 #if INTERFACE_TYPE == MANUAL                
// 2221         gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R5, #+31]
// 2222 #endif        
// 2223  
// 2224         break;
// 2225       
// 2226       default:
// 2227       {
// 2228       }
// 2229       break;
// 2230     }
// 2231 
// 2232 #if INTERFACE_TYPE == MANUAL        
// 2233   }
// 2234 #endif
// 2235   
// 2236 #if INTERFACE_TYPE == SERIAL    
// 2237     Uart_Poll(mUARTRxBuffer);
// 2238   }while (mUARTRxBuffer[0] != Exit); 
// 2239   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2240   MLMETestMode(u8CurrentMode);
// 2241 #endif
// 2242 
// 2243   
// 2244 }
??packet_error_rate_tx_test_2:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable129:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ku8DoneStr:
        DATA8
        DC8 68, 79, 78, 69
// 2245 
// 2246 /************************************************************************************
// 2247 * packet_error_rate_rx_test
// 2248 *
// 2249 * This function performs the packet error rate reception process.
// 2250 *
// 2251 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2252 void packet_error_rate_rx_test(void)
// 2253 {
packet_error_rate_rx_test:
        PUSH     {R3-R7,LR}
// 2254   static per_rx_states_t u8AppState;
// 2255 
// 2256 #if INTERFACE_TYPE == MANUAL 
// 2257   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable130_1
        LDRB     R0,[R4, #+31]
        MOVS     R7,#+1
        LDR      R5,??DataTable131_1
        CMP      R0,#+0
        BNE      ??packet_error_rate_rx_test_0
// 2258   {  
// 2259     RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 2260     LEDs_RX_INIT(250);  
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
// 2261 
// 2262 
// 2263 #if (gLCDSupported_d) 
// 2264     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable130_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2265     LCD_WriteString_NormalFont(4," PER Listening..");
        LDR      R1,??DataTable131_2
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2266 #endif
// 2267     u8AppState = INIT_PER_RX_ST;
        STRB     R7,[R5, #+0]
// 2268     gu8TestAlreadyStarted = TRUE;
        STRB     R7,[R4, #+31]
        B        ??packet_error_rate_rx_test_1
// 2269   }
// 2270 #endif
// 2271   
// 2272 
// 2273 #if INTERFACE_TYPE == SERIAL
// 2274   u8CurrentMode = SMAC_TEST_MODE_PER_RX;
// 2275   RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
// 2276   Uart_Print("\r\n    ****************************");
// 2277   Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2278   Uart_Print("\r\n    ****************************");
// 2279   Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2280   Uart_Print("\r\nPress any key to start.....");
// 2281   Uart_getchar(mUARTRxBuffer);
// 2282   u8AppState = INIT_PER_RX_ST;
// 2283   do{
// 2284 #endif    
// 2285     
// 2286 #if INTERFACE_TYPE == MANUAL    
// 2287 
// 2288 
// 2289   if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_rx_test_0:
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_2
// 2290   {
// 2291 #endif      
// 2292       (void)process_radio_msg();
??packet_error_rate_rx_test_1:
        BL       process_radio_msg
// 2293       if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_3
// 2294       {
// 2295         gbDataIndicationFlag = FALSE;
        STRB     R6,[R4, #+27]
// 2296         process_incoming_msg();
        BL       process_incoming_msg
// 2297       }
// 2298     
// 2299 #if OTAP_ENABLED == TRUE
// 2300     if(gbOtapExecute)
// 2301     {
// 2302       OTAP_execute();        
// 2303     }
// 2304     else
// 2305 #endif
// 2306     {          
// 2307   
// 2308       switch(u8AppState){
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
// 2309         case IDLE_PER_RX_ST:
// 2310         {
// 2311           // Do nothing when idle
// 2312         }
// 2313         break;
// 2314         case INIT_PER_RX_ST:
// 2315         {
// 2316 #if INTERFACE_TYPE == SERIAL        
// 2317           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2318 #endif       
// 2319           u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_4:
        STRB     R1,[R5, #+0]
// 2320           
// 2321           
// 2322         }
// 2323         break;
        B        ??packet_error_rate_rx_test_2
// 2324         case WAITING_PER_RX_ST:
// 2325         {
// 2326           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_6:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_9
// 2327           {
// 2328             u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_8:
        STRB     R1,[R5, #+0]
// 2329           }
// 2330           if(gu32PerRxEvents & PER_DONE_MSG_EVNT)
??packet_error_rate_rx_test_9:
        MOVS     R0,#+44
        LDRB     R0,[R4, R0]
        LSLS     R0,R0,#+28
        BPL      ??packet_error_rate_rx_test_2
// 2331           {
// 2332             gu32PerRxEvents = PER_NO_EVENT;
        STR      R6,[R4, #+44]
// 2333             u8AppState = FINISH_PER_RX_ST;
        MOVS     R0,#+4
        B.N      ??packet_error_rate_rx_test_10
// 2334           }
// 2335         }
// 2336         break;
// 2337         case LISTEN_PER_RX_ST:
// 2338         {
// 2339           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_5:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_2
// 2340           {
// 2341             RX_msg.u8BufSize = PER_RX_SIZE;
??packet_error_rate_rx_test_11:
        MOVS     R0,#+24
        STRB     R0,[R4, #+12]
// 2342             MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 2343             u8AppState = WAITING_PER_RX_ST;
        MOVS     R0,#+2
??packet_error_rate_rx_test_10:
        STRB     R0,[R5, #+0]
        B        ??packet_error_rate_rx_test_2
// 2344           }
// 2345         }
// 2346         break;
// 2347         case FINISH_PER_RX_ST:
// 2348         {
// 2349           u8AppState = INIT_PER_RX_ST;
??packet_error_rate_rx_test_7:
        STRB     R7,[R5, #+0]
// 2350 #if INTERFACE_TYPE == MANUAL 
// 2351           LED_SetHex((uint8_t)(c_test_num.u8Thousands));
        LDRB     R0,[R4, #+1]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2352           DelayMs(gTotalPacketsDelay_d);
        MOVS     R5,#+200
        LSLS     R5,R5,#+1        ;; #+400
        MOVS     R0,R5
        BL       DelayMs
// 2353           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2354           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2355           LED_SetHex((uint8_t)(c_test_num.u8Houndreds));
        MOVS     R7,#+15
        LDRB     R0,[R4, #+1]
        ANDS     R0,R0,R7
        BL       LED_SetHex
// 2356           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2357           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2358           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2359           LED_SetHex((uint8_t)(c_test_num.u8Tens));
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2360           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2361           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2362           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2363           LED_SetHex((uint8_t)(c_test_num.u8Units));
        LDRB     R0,[R4, #+0]
        ANDS     R7,R7,R0
        MOVS     R0,R7
        BL       LED_SetHex
// 2364           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2365           gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R4, #+31]
// 2366 #endif        
// 2367         }
// 2368         break;
// 2369         default:
// 2370         {
// 2371         }
// 2372         break;
// 2373       }
// 2374     }  
// 2375 #if INTERFACE_TYPE == MANUAL        
// 2376   }
// 2377 #endif
// 2378   
// 2379 #if INTERFACE_TYPE == SERIAL    
// 2380     Uart_Poll(mUARTRxBuffer);
// 2381   }while (mUARTRxBuffer[0] != Exit);  
// 2382   
// 2383   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2384   MLMETestMode(u8CurrentMode);
// 2385 #endif
// 2386   
// 2387 }
??packet_error_rate_rx_test_2:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130:
        DATA32
        DC32     0x79e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_2:
        DATA32
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_3:
        DATA32
        DC32     ?_109

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable130_4:
        DATA32
        DC32     ku8ExpectedString
// 2388 
// 2389 /************************************************************************************
// 2390 * range_rx_test
// 2391 *
// 2392 * This function performs the range reception process.
// 2393 *
// 2394 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2395 void range_rx_test(void)
// 2396 {
range_rx_test:
        PUSH     {R3-R7,LR}
// 2397   volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
// 2398   volatile uint8_t u8retries;
// 2399 #if INTERFACE_TYPE == MANUAL 
// 2400   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable132
        LDR      R5,??DataTable132_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??range_rx_test_0
// 2401   {
// 2402      u8AppState = INIT_RANGE_RX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+19]
// 2403      LEDs_RX_INIT(250);
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
// 2404 #if (gLCDSupported_d) 
// 2405     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable132_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2406     LCD_WriteString_NormalFont(4,"Range Listening..");
        LDR      R1,??DataTable133
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2407 #endif        
// 2408   }  
// 2409 #endif  
// 2410 
// 2411 #if INTERFACE_TYPE == SERIAL
// 2412   u8CurrentMode = SMAC_TEST_MODE_RANGE_RX;
// 2413   
// 2414   Uart_Print("\r\n    ****************************");
// 2415   Uart_Print("\r\n    **       Range Test       **");
// 2416   Uart_Print("\r\n    ****************************");
// 2417    
// 2418   Uart_Print("\r\nPress Q to exit from Range Test");
// 2419   Uart_Print("\r\nPress any key to start.....");
// 2420   Uart_getchar(mUARTRxBuffer);
// 2421   u8AppState = INIT_RANGE_RX_ST;
// 2422   do{
// 2423 #endif
// 2424 
// 2425       (void)process_radio_msg();
??range_rx_test_0:
        BL       process_radio_msg
// 2426       if(TRUE == gbDataIndicationFlag)
        MOVS     R7,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??range_rx_test_1
// 2427       {
// 2428         gbDataIndicationFlag = FALSE;
        STRB     R7,[R5, #+27]
// 2429         process_incoming_msg();
        BL       process_incoming_msg
// 2430       }
// 2431       else{
// 2432       }
// 2433 
// 2434 #if OTAP_ENABLED == TRUE
// 2435     if(gbOtapExecute)
// 2436     {
// 2437       OTAP_execute();        
// 2438     }
// 2439     else
// 2440 #endif
// 2441     {          
// 2442       switch(u8AppState){
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
// 2443         case IDLE_RANGE_RX_ST:
// 2444         {
// 2445           // Do nothing when idle
// 2446         }
// 2447         break;
// 2448         
// 2449         case INIT_RANGE_RX_ST:
// 2450         {
// 2451           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_rx_test_2:
        MOVS     R2,#+7
        LDRB     R3,[R5, #+4]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        STRB     R6,[R5, #+4]
// 2452           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
        ANDS     R2,R2,R0
        MOVS     R0,#+32
        ORRS     R0,R0,R2
        STRB     R0,[R4, #+0]
// 2453   #if INTERFACE_TYPE == SERIAL        
// 2454           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2455           Uart_Print("\r\nStart the test by pressing any key on TX radio");
// 2456   #endif       
// 2457           u8AppState = LISTEN_RANGE_RX_ST;
        STRB     R1,[R4, #+19]
// 2458         }
// 2459         break;
        B        ??range_rx_test_3
// 2460         
// 2461         case LISTEN_RANGE_RX_ST:
// 2462         {
// 2463           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_4:
        CMP      R2,#+5
        BEQ      ??range_rx_test_7
        CMP      R2,#+6
        BEQ      ??range_rx_test_7
        CMP      R2,#+8
        BEQ      ??range_rx_test_7
        CMP      R2,#+4
        BNE      ??range_rx_test_3
// 2464           {
// 2465             RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_rx_test_7:
        MOVS     R0,#+12
        STRB     R0,[R5, #+12]
// 2466             MLMERXEnableRequest(&RX_msg, 0x00000200);
        LSLS     R1,R6,#+8
        ADDS     R0,R5,#+4
        BL       MLMERXEnableRequest
// 2467             u8AppState = WAITING_RANGE_RX_ST;
        B        ??range_rx_test_8
// 2468           }
// 2469         }
// 2470         break;
// 2471   
// 2472        case WAITING_RANGE_RX_ST:
// 2473         {
// 2474           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_5:
        CMP      R2,#+5
        BEQ      ??range_rx_test_9
        CMP      R2,#+6
        BEQ      ??range_rx_test_9
        CMP      R2,#+8
        BEQ      ??range_rx_test_9
        CMP      R2,#+4
        BNE      ??range_rx_test_10
// 2475           {
// 2476             u8AppState = LISTEN_RANGE_RX_ST;
??range_rx_test_9:
        STRB     R1,[R4, #+19]
// 2477           }
// 2478           if(TRUE == gu8ValidRangePacket)
??range_rx_test_10:
        LDRB     R0,[R5, #+29]
        CMP      R0,#+1
        BNE      ??range_rx_test_3
// 2479           {
// 2480             gu8ValidRangePacket = FALSE;
        STRB     R7,[R5, #+29]
// 2481             u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
        MOVS     R0,#+4
        STRB     R0,[R4, #+19]
// 2482             u8retries = 5;
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        B        ??range_rx_test_3
// 2483           }
// 2484         }
// 2485         break;
// 2486    
// 2487         
// 2488         case TRANSMIT_ACK_RANGE_RX_ST:
// 2489         {
// 2490 
// 2491           if(is_tx_msg_final_state(ACK_msg))
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
// 2492           { 
// 2493             MCPSDataRequest(&ACK_msg); 
??range_rx_test_11:
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2494             u8retries --;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
// 2495           }
// 2496           if(0 == u8retries)
??range_rx_test_12:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??range_rx_test_3
// 2497           {
// 2498             u8AppState = WAITING_RANGE_RX_ST;
??range_rx_test_8:
        STRB     R6,[R4, #+19]
// 2499           }
// 2500         }
// 2501         break;
// 2502         
// 2503         case FINISH_RANGE_RX_ST:
// 2504         {
// 2505           /*Do nothing*/
// 2506         }
// 2507         break;
// 2508         default:
// 2509         {
// 2510         }
// 2511         break;
// 2512       }
// 2513    }
// 2514 #if INTERFACE_TYPE == SERIAL       
// 2515     Uart_Poll(mUARTRxBuffer);
// 2516   }while (mUARTRxBuffer[0] != Exit);  
// 2517   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2518   MLMETestMode(u8CurrentMode);
// 2519 #endif  
// 2520 #if INTERFACE_TYPE == MANUAL      
// 2521   gu8TestAlreadyStarted = TRUE;
??range_rx_test_3:
        MOVS     R0,#+1
        STRB     R0,[R5, #+31]
// 2522 #endif
// 2523 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131:
        DATA32
        DC32     0x3e7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_1:
        DATA32
        DC32     `packet_error_rate_rx_test::u8AppState`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable131_2:
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
// 2524 
// 2525 /************************************************************************************
// 2526 * range_tx_test
// 2527 *
// 2528 * This function performs the range transmission process.
// 2529 *
// 2530 ***********************************************************************************/
// 2531 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2532 void range_tx_test(void)
// 2533 {
range_tx_test:
        PUSH     {R3-R7,LR}
// 2534   static range_tx_states_t u8AppState; 
// 2535   static uint16_t u8CountNoPacket = 0;
// 2536    
// 2537 #if INTERFACE_TYPE == MANUAL 
// 2538   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable134
        LDR      R0,??DataTable132_1
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE      ??range_tx_test_1
// 2539   {
// 2540     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDR      R0,??DataTable132_1
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+247
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+28]
// 2541     u8AppState = INIT_RANGE_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+18]
// 2542     LEDs_TX_INIT(250);  
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
// 2543 #if (gLCDSupported_d) 
// 2544     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable132_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2545     LCD_WriteString_NormalFont(4,"Range Transmitting..");
        LDR      R1,??DataTable134_1
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2546 #endif        
// 2547   }  
// 2548 #endif  
// 2549 
// 2550 #if INTERFACE_TYPE == SERIAL    
// 2551 
// 2552   u8AppState = INIT_RANGE_TX_ST;
// 2553   
// 2554   u8CurrentMode = SMAC_TEST_MODE_RANGE_TX;
// 2555   Uart_Print("\r\n    ****************************");
// 2556   Uart_Print("\r\n    **       Range Test       **");
// 2557   Uart_Print("\r\n    ****************************");
// 2558    
// 2559   Uart_Print("\r\nPress Q to exit from Range Test");
// 2560   Uart_Print("\r\nPress any key to start the test.....");
// 2561   Uart_getchar(mUARTRxBuffer);
// 2562   do{
// 2563 #endif
// 2564     (void)process_radio_msg();
??range_tx_test_1:
        BL       process_radio_msg
// 2565     if(TRUE == gbDataIndicationFlag)
        MOVS     R5,#+0
        LDR      R0,??DataTable132_1
        LDRB     R0,[R0, #+27]
        CMP      R0,#+1
        BNE      ??range_tx_test_2
// 2566     {
// 2567       gbDataIndicationFlag = FALSE;
        LDR      R1,??DataTable132_1
        STRB     R5,[R1, #+27]
// 2568       process_incoming_msg();
        BL       process_incoming_msg
// 2569       u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
        B        ??range_tx_test_3
// 2570     }
// 2571     else{
// 2572       u8CountNoPacket++;
??range_tx_test_2:
        LDRH     R0,[R4, #+26]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+26]
// 2573       if(MAX_NO_PACKET_ALLOW == u8CountNoPacket)
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??range_tx_test_3
// 2574       {
// 2575           u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
// 2576           TurnOffLeds();
        BL       LED_TurnOffAllLeds
// 2577       }
// 2578     }
// 2579     
// 2580 #if OTAP_ENABLED == TRUE
// 2581  if(gbOtapExecute)
// 2582  {
// 2583     OTAP_execute();        
// 2584  }
// 2585  else
// 2586 #endif
// 2587   {
// 2588     
// 2589     switch(u8AppState)
??range_tx_test_3:
        LDR      R0,??DataTable132_1
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
// 2590     {
// 2591       case IDLE_RANGE_TX_ST:
// 2592       {
// 2593         // Do nothing when idle
// 2594   		u8AppState = INIT_RANGE_TX_ST;
??range_tx_test_5:
        MOVS     R0,#+1
        B        ??range_tx_test_6
// 2595       }
// 2596       break;
// 2597       case INIT_RANGE_TX_ST:
// 2598       {
// 2599         uint8_t i;
// 2600           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_tx_test_7:
        MOVS     R2,#+7
        MOV      R3,SP
        LDRB     R3,[R3, #+0]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        LDR      R3,??DataTable132_1
        STRB     R6,[R3, #+4]
// 2601           TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        MOVS     R3,#+32
        ANDS     R1,R1,R2
        ORRS     R1,R1,R3
        STRB     R1,[R4, #+0]
// 2602           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R1,??DataTable132
        LDRB     R6,[R1, #+0]
        ANDS     R2,R2,R6
        ORRS     R3,R3,R2
        STRB     R3,[R1, #+0]
// 2603           for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
        LDR      R1,??DataTable135
// 2604           {
// 2605             TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
??range_tx_test_8:
        LDRB     R2,[R1, R5]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R5
        STRB     R2,[R3, #+2]
// 2606           }
        ADDS     R5,R5,#+1
        CMP      R5,#+10
        BCC      ??range_tx_test_8
// 2607 #if SMAC_FEATURE_SECURITY ==  TRUE
// 2608         {
// 2609           uint8_t fill_counter;
// 2610           for(fill_counter=sizeof(u8RangeExpectedString); fill_counter<16; fill_counter++)
// 2611           {
// 2612              TX_msg.pu8Buffer->u8Data[fill_counter] = '\0';
// 2613           }
// 2614           TX_msg.u8BufSize = 16;
// 2615           (void)CipherMsgU8(&(TX_msg.pu8Buffer->u8Data[0]), (TX_msg.u8BufSize));
// 2616         }
// 2617 #else
// 2618         TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));
        MOVS     R1,#+10
        STRB     R1,[R4, #+8]
// 2619 #endif
// 2620 
// 2621 
// 2622 #if INTERFACE_TYPE == SERIAL              
// 2623           Uart_Print("\r\n\nThe transceiver is now transmitting...");
// 2624 #endif          
// 2625           u8AppState = TRANSMITING_RANGE_TX_ST;
        B        ??range_tx_test_6
// 2626       }
// 2627       break;
// 2628       
// 2629       case TRANSMITING_RANGE_TX_ST:
// 2630       {
// 2631         if(is_tx_msg_final_state(TX_msg))
??range_tx_test_9:
        CMP      R3,#+4
        BEQ      ??range_tx_test_10
        CMP      R3,#+5
        BEQ      ??range_tx_test_10
        CMP      R3,#+7
        BEQ      ??range_tx_test_10
        CMP      R3,#+3
        BNE      ??range_tx_test_11
// 2632         {
// 2633           
// 2634           DelayMs(5);
??range_tx_test_10:
        MOVS     R0,#+5
        BL       DelayMs
// 2635           MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2636         }
// 2637         u8AppState = LISTEN_RANGE_TX_ST;
??range_tx_test_11:
        MOVS     R0,#+4
        B        ??range_tx_test_6
// 2638       }  
// 2639       break;
// 2640       
// 2641       case LISTEN_RANGE_TX_ST:
// 2642       {
// 2643         if(is_rx_msg_final_state(RX_msg))
??range_tx_test_12:
        CMP      R2,#+5
        BEQ      ??range_tx_test_13
        CMP      R2,#+6
        BEQ      ??range_tx_test_13
        CMP      R2,#+8
        BEQ      ??range_tx_test_13
        CMP      R2,#+4
        BNE      ??range_tx_test_14
// 2644         {
// 2645           RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_tx_test_13:
        MOVS     R0,#+12
        LDR      R1,??DataTable132_1
        STRB     R0,[R1, #+12]
// 2646           MLMERXEnableRequest(&RX_msg, 0x00000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        LDR      R0,??DataTable136
        BL       MLMERXEnableRequest
// 2647         }
// 2648         u8AppState = WAITING_RANGE_TX_ST;
// 2649       }
// 2650       break;
// 2651       
// 2652       case WAITING_RANGE_TX_ST:
// 2653       {
// 2654         if(is_tx_msg_final_state(TX_msg))
// 2655         {
// 2656           u8AppState = TRANSMITING_RANGE_TX_ST;
// 2657         }
// 2658         if(is_rx_msg_final_state(RX_msg))
// 2659         {
// 2660           u8AppState = LISTEN_RANGE_TX_ST;
// 2661         }
// 2662         if(TRUE == gu8ValidAckPacket)
// 2663         {
// 2664           gu8ValidAckPacket = FALSE;
// 2665           u8AppState = RANGE_INDICATION_TX_ST;
// 2666         }
// 2667       }
// 2668       break;
// 2669       
// 2670       case RANGE_INDICATION_TX_ST:
// 2671       {
// 2672         u8AppState = WAITING_RANGE_TX_ST;
??range_tx_test_14:
        MOVS     R0,#+3
??range_tx_test_6:
        STRB     R0,[R4, #+18]
// 2673       }
// 2674       break;
// 2675       
// 2676       default:
// 2677       {
// 2678       }
// 2679       break;
// 2680     }
// 2681   }
// 2682 #if INTERFACE_TYPE == SERIAL                  
// 2683     Uart_Poll(mUARTRxBuffer);
// 2684   }while (mUARTRxBuffer[0] != Exit);  
// 2685   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2686   MLMETestMode(u8CurrentMode);
// 2687 #endif
// 2688 
// 2689 #if INTERFACE_TYPE == MANUAL      
// 2690   gu8TestAlreadyStarted = TRUE;
??range_tx_test_4:
        MOVS     R0,#+1
        LDR      R1,??DataTable132_1
        STRB     R0,[R1, #+31]
// 2691 #endif
// 2692 }
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
        LDR      R0,??DataTable132_1
        LDRB     R0,[R0, #+30]
        CMP      R0,#+1
        BNE      ??range_tx_test_4
        LDR      R0,??DataTable132_1
        STRB     R5,[R0, #+30]
        MOVS     R0,#+5
        B        ??range_tx_test_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132:
        DATA32
        DC32     ACK_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable132_2:
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
// 2693 
// 2694 
// 2695 /************************************************************************************
// 2696 * configure_clock_setting
// 2697 *
// 2698 * This function adjust the clock setting selected by the user in the serial interface.
// 2699 *
// 2700 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2701 void configure_clock_settings(void)
// 2702 {
configure_clock_settings:
        PUSH     {R3-R7,LR}
        LDR      R7,??DataTable136_1
        LDR      R4,??DataTable136_2  ;; 0x80003040
// 2703   char option_menu, option;
// 2704    do{
// 2705       option_menu = clock_setting_menu();
??configure_clock_settings_0:
        BL       clock_setting_menu
        MOVS     R5,R0
// 2706       switch(option_menu)
        CMP      R0,#+49
        BEQ      ??configure_clock_settings_1
        CMP      R0,#+50
        BEQ      ??configure_clock_settings_2
        CMP      R0,#+51
        BEQ      ??configure_clock_settings_3
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_4
        B        ??configure_clock_settings_5
// 2707       {
// 2708         case BulkCapacitor:
// 2709          do
// 2710           {
// 2711             option = bulk_cap_menu();
??configure_clock_settings_1:
        BL       bulk_cap_menu
        MOVS     R6,R0
// 2712             switch(option)
        CMP      R0,#+68
        BEQ      ??configure_clock_settings_6
        CMP      R0,#+69
        BEQ      ??configure_clock_settings_7
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_8
        B        ??configure_clock_settings_9
// 2713             {
// 2714               case EnableBulkCapacitor:
// 2715                 enable_bulk_cap(); 
??configure_clock_settings_7:
        LDR      R0,[R4, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2716                 u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        B.N      ??configure_clock_settings_10
// 2717                 break;
// 2718               case DisableBulkCapacitor:
// 2719                 disable_bulk_cap(); 
??configure_clock_settings_6:
        LDR      R0,[R4, #+0]
        LDR      R1,??DataTable137  ;; 0xfdffffff
        ANDS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2720                 u8BulkCapState = gDisable_c;
        MOVS     R0,#+0
??configure_clock_settings_10:
        STRB     R0,[R7, #+26]
// 2721                 break;
        B        ??configure_clock_settings_8
// 2722               case PreviousMenu:
// 2723                 break;
// 2724               default:
// 2725                 Uart_Print("  Invalid Option!!!");
??configure_clock_settings_9:
        Nop      
        ADR.N    R0,?_105
        BL       Uart_Print
// 2726                 break;              
// 2727             }
// 2728           }while(option != PreviousMenu);
??configure_clock_settings_8:
        CMP      R6,#+112
        BNE      ??configure_clock_settings_1
        B        ??configure_clock_settings_4
// 2729           break;
// 2730           
// 2731         case CoarseTune:
// 2732           coarse_tune_adjust();
??configure_clock_settings_2:
        BL       coarse_tune_adjust
// 2733           break;
        B        ??configure_clock_settings_4
// 2734           
// 2735         case FineTune:
// 2736           fine_tune_adjust();
??configure_clock_settings_3:
        BL       fine_tune_adjust
// 2737           break;
        B        ??configure_clock_settings_4
// 2738           
// 2739         case PreviousMenu:
// 2740           break;
// 2741           
// 2742         default:
// 2743           Uart_Print("  Invalid Option!!!\n");
??configure_clock_settings_5:
        ADR.N    R0,?_114
        BL       Uart_Print
// 2744           break;
// 2745      }
// 2746   }while(option_menu != PreviousMenu); 
??configure_clock_settings_4:
        CMP      R5,#+112
        BNE      ??configure_clock_settings_0
// 2747 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable133:
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
// 2748 
// 2749 /************************************************************************************
// 2750 * coarse_tune_adjust
// 2751 *
// 2752 * This function ajusts the current coarse tune value to the new typed by the user 
// 2753 * in the serial interface.
// 2754 *
// 2755 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2756 void coarse_tune_adjust(void)
// 2757 {
coarse_tune_adjust:
        PUSH     {R4-R6,LR}
// 2758   uint8_t u8TempCoarse;
// 2759   Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_115
        BL       Uart_Print
// 2760   Uart_Print("\r  Current Coarse Tune Value: ");
        LDR      R0,??DataTable137_1
        BL       Uart_Print
// 2761   Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136_1
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+24
        BL       Uart_PrintHex
// 2762   Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
        LDR      R5,??DataTable137_2
        MOVS     R0,R5
        BL       Uart_Print
// 2763   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2764   u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2765   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2766 
// 2767   if(u8TempCoarse > 0X00)
        CMP      R6,#+0
        BEQ      ??coarse_tune_adjust_0
// 2768   {
// 2769     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??coarse_tune_adjust_1
// 2770   }
// 2771   else
// 2772   {
// 2773     u8CurrentCoarseTune = (u8TempCoarse << 4);
??coarse_tune_adjust_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+24]
// 2774     u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+24]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+24]
// 2775     set_xtal_coarse_tune(u8CurrentCoarseTune); 
        LDR      R1,??DataTable136_2  ;; 0x80003040
        LDR      R2,[R1, #+0]
        LDR      R3,??DataTable137_3  ;; 0xfe1fffff
        ANDS     R3,R3,R2
        LSLS     R0,R0,#+21
        MOVS     R2,#+240
        LSLS     R2,R2,#+17       ;; #+31457280
        ANDS     R2,R2,R0
        ORRS     R2,R2,R3
        STR      R2,[R1, #+0]
// 2776   }
// 2777 }
??coarse_tune_adjust_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134:
        DATA32
        DC32     TX_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_1:
        DATA32
        DC32     ?_113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_115:
        DC8 "\015\012\012Coarse Tune Adjustment\012\012\012"
        DC8 0, 0, 0
// 2778 
// 2779 /************************************************************************************
// 2780 * fine_tune_adjust
// 2781 *
// 2782 * This function ajusts the current fine tune value to the new typed by the user
// 2783 * through the serial interface.
// 2784 *
// 2785 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2786 void fine_tune_adjust()
// 2787 {
fine_tune_adjust:
        PUSH     {R4-R6,LR}
// 2788   uint8_t u8TempFine;
// 2789   Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_117
        BL       Uart_Print
// 2790   Uart_Print("\r  Current Fine Tune Value: ");
        LDR      R0,??DataTable137_4
        BL       Uart_Print
// 2791   Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136_1
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+25
        BL       Uart_PrintHex
// 2792   Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
        LDR      R5,??DataTable137_5
        MOVS     R0,R5
        BL       Uart_Print
// 2793   u8TempFine = Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2794   u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2795   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2796   if(u8TempFine > 0X01)
        CMP      R6,#+2
        BLT      ??fine_tune_adjust_0
// 2797   {
// 2798     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??fine_tune_adjust_1
// 2799   }
// 2800   else
// 2801   {
// 2802     u8CurrentFineTune = (u8TempFine << 4);
??fine_tune_adjust_0:
        LSLS     R0,R6,#+4
        STRB     R0,[R4, #+25]
// 2803     u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+25]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+25]
// 2804     set_xtal_fine_tune(u8CurrentFineTune); 
        LDR      R1,??DataTable136_2  ;; 0x80003040
        LDR      R2,[R1, #+0]
        LDR      R3,??DataTable137_6  ;; 0xffe0ffff
        ANDS     R3,R3,R2
        LSLS     R0,R0,#+16
        MOVS     R2,#+248
        LSLS     R2,R2,#+13       ;; #+2031616
        ANDS     R2,R2,R0
        ORRS     R2,R2,R3
        STR      R2,[R1, #+0]
// 2805   }
// 2806 
// 2807 }
??fine_tune_adjust_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135:
        DATA32
        DC32     u8RangeExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_117:
        DC8 "\015\012\012Fine Tune Adjustment\012\012\012"
        DATA8
        DC8 0
// 2808 /************************************************************************************
// 2809 * PrintTestMode
// 2810 *
// 2811 * This function prints the Test Mode name received as parameter.
// 2812 *
// 2813 *********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2814 void PrintTestMode(Test_Mode_t TestModeValue)
// 2815 {
PrintTestMode:
        MOVS     R1,R0
        LDR      R0,??DataTable137_7
        CMP      R1,#+6
        BLS      ??PrintTestMode_1
        BX       LR
??PrintTestMode_1:
        PUSH     {R7,LR}
// 2816   switch(TestModeValue)
        ADR      R2,??PrintTestMode_0
        LDRB     R2,[R2, R1]
        ADD      PC,PC,R2
        Nop      
        DATA
??PrintTestMode_0:
        DC8      0x8,0x1E,0x18,0x1C
        DC8      0x10,0x14,0xC,0x0
        THUMB
// 2817   {
// 2818     case SMAC_TEST_MODE_IDLE:
// 2819       Uart_Print("IDLE MODE\n");
??PrintTestMode_2:
        ADR.N    R0,?_119
        B        ??PrintTestMode_3
// 2820       break;
// 2821 	  
// 2822     case SMAC_TEST_MODE_CONTINUOUS_RX:
// 2823       Uart_Print("CONTINUOUS RECEPTION\n");
??PrintTestMode_4:
        ADR.N    R0,?_120
        B        ??PrintTestMode_3
// 2824       break;
// 2825 	  
// 2826     case SMAC_TEST_MODE_PULSE_PRBS9_TX:
// 2827       Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
// 2828       break;
// 2829 	  
// 2830     case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
// 2831       Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
??PrintTestMode_5:
        ADDS     R0,R0,#+40
        B        ??PrintTestMode_3
// 2832       break;       
// 2833 	  
// 2834     case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
// 2835       Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
??PrintTestMode_6:
        ADDS     R0,R0,#+76
        B        ??PrintTestMode_3
// 2836       break;      
// 2837 	  
// 2838     case SMAC_TEST_MODE_PER_TX:
// 2839       Uart_Print("PACKET ERROR RATE TEST\n");
??PrintTestMode_7:
        ADR.N    R0,?_121
        B        ??PrintTestMode_3
// 2840       break;
// 2841 	  
// 2842     case SMAC_TEST_MODE_RANGE_TX:
// 2843       Uart_Print("RANGE TEST\n");
??PrintTestMode_8:
        ADR.N    R0,?_122
??PrintTestMode_3:
        BL       Uart_Print
// 2844       break;
// 2845 	  
// 2846     default:
// 2847       break;
// 2848   }
// 2849 }
??PrintTestMode_9:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136:
        DATA32
        DC32     c_test_num+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_1:
        DATA32
        DC32     c_test_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable136_2:
        DATA32
        DC32     0x80003040

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
// 2850 
// 2851 /************************************************************************************
// 2852 * PrintChannel
// 2853 *
// 2854 * This function prints the Channel number received as parameter.
// 2855 *
// 2856 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2857 void PrintChannel(channel_num_t u8ChannelValue)
// 2858 {
PrintChannel:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2859   if( TOTAL_CHANN > u8ChannelValue ){
        CMP      R0,#+16
        BGE      ??PrintChannel_0
// 2860     u8ChannelValue += 11;
// 2861     Uart_Print("CHANNEL ");
        ADR.N    R0,?_123
        BL       Uart_Print
// 2862     Uart_PrintByteDec(u8ChannelValue);
        ADDS     R4,R4,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       Uart_PrintByteDec
// 2863     Uart_Print("\n");
        ADR.N    R0,?_65
        BL       Uart_Print
// 2864   }
// 2865 }
??PrintChannel_0:
        BL       ??Subroutine4_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_123:
        DC8 "CHANNEL "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_65:
        DC8 "\012"
// 2866 
// 2867 /************************************************************************************
// 2868 * LEDs_LQI_indicator
// 2869 *
// 2870 * This function show the four possible LQI adjusted values using three LEDs.
// 2871 *
// 2872 ************************************************************************************/
// 2873 #if (gLEDSupported_d)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2874 void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
// 2875 {
LEDs_LQI_indication:
        PUSH     {R3-R5,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
// 2876   uint8_t LEDs_state[4][4]={gFarRange_c,LED_OFF,LED_OFF,LED_OFF,
// 2877                             gMediumRange_c,LED_ON,LED_OFF,LED_OFF,
// 2878                             gNearRange_c,LED_ON,LED_ON,LED_OFF,
// 2879                             gVeryNearRange_c,LED_ON,LED_ON,LED_ON
// 2880                            };
        MOV      R0,SP
        ADR.N    R1,?_124
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
// 2881   Gpio_SetPinData(LED2_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
        LSLS     R4,R4,#+2
        MOV      R5,SP
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+24
        BL       Gpio_SetPinData
// 2882   Gpio_SetPinData(LED3_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+2]
        MOVS     R0,#+25
        BL       Gpio_SetPinData
// 2883   Gpio_SetPinData(LED4_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+44
        BL       Gpio_SetPinData
// 2884 }
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
// 2885 #endif
// 2886 
// 2887 /************************************************************************************
// 2888 * TMR_Init
// 2889 *
// 2890 * This function configurates the timer to generate a output frequency at 2 MHz.
// 2891 * 
// 2892 **********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2893 void TMR_Init(void)
// 2894 {              
TMR_Init:
        PUSH     {R1-R5,LR}
// 2895   TmrConfig_t pConfig;
// 2896   TmrStatusCtrl_t pStatusCtrl;
// 2897   TmrComparatorStatusCtrl_t pCompStatusCtrl;
// 2898   
// 2899   TmrInit();
        BL       TmrInit
// 2900   GpioTmrInit();
        BL       GpioTmrInit
// 2901   TmrEnable(gTmr1_c);
        MOVS     R0,#+1
        BL       TmrEnable
// 2902  
// 2903   SetLoadVal(gTmr1_c, 0x00);
        LDR      R0,??DataTable138  ;; 0x80007020
        MOVS     R4,#+0
        STRH     R4,[R0, #+6]
// 2904   SetCntrVal(gTmr1_c, 0x00);
        STRH     R4,[R0, #+10]
// 2905   SetCompLoad1Val(gTmr1_c, 0x05);         
        MOVS     R5,#+5
        STRH     R5,[R0, #+16]
// 2906   SetCompLoad2Val(gTmr1_c, 0x05);        
        STRH     R5,[R0, #+18]
// 2907  
// 2908   SetComp1Val(gTmr1_c, 0x05);  
        STRH     R5,[R0, #+0]
// 2909   SetComp2Val(gTmr1_c, 0x05);              
        STRH     R5,[R0, #+2]
// 2910      
// 2911   TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       TmrSetMode
// 2912 
// 2913   pConfig.tmrOutputMode = gTmrToggleOF_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 2914   pConfig.tmrCoInit = FALSE;
        STRB     R4,[R0, #+1]
// 2915   pConfig.tmrCntDir = FALSE;
        STRB     R4,[R0, #+2]
// 2916   pConfig.tmrCntLen = TRUE;
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
// 2917   pConfig.tmrCntOnce = FALSE;
        STRH     R4,[R0, #+4]
// 2918   pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
// 2919   pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
// 2920   TmrSetConfig(gTmr1_c, &pConfig);  
        ADD      R1,SP,#+4
        MOVS     R0,#+1
        BL       TmrSetConfig
// 2921 
// 2922   pCompStatusCtrl.uintValue =0x06;
        MOVS     R0,#+6
        MOV      R1,SP
        STRH     R0,[R1, #+0]
// 2923   TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
        MOVS     R0,#+1
        BL       TmrSetCompStatusControl
// 2924  
// 2925   pStatusCtrl.uintValue = 0x05;
        MOV      R0,SP
        STRH     R5,[R0, #+2]
// 2926   TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
        ADD      R1,SP,#+0
        ADDS     R1,R1,#+2
        MOVS     R0,#+1
        BL       TmrSetStatusControl
// 2927 }
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
// 2928 
// 2929 /************************************************************************************
// 2930 * GpioTmrInit
// 2931 *
// 2932 * This function initializate the Timer´s gpios.
// 2933 *
// 2934 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2935 void GpioTmrInit(void)
// 2936 {
GpioTmrInit:
        PUSH     {R7,LR}
// 2937   Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
// 2938   Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
// 2939   Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinFunction
// 2940   Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
// 2941 }
        POP      {R0,R3}
        BX       R3               ;; return
// 2942 
// 2943 /************************************************************************************
// 2944 * display_config function
// 2945 *
// 2946 * This function prints an ASCII Freescale's logo.
// 2947 ************************************************************************************/
// 2948 #if INTERFACE_TYPE == SERIAL
// 2949 static void print_freescale_logo(void)
// 2950 {
// 2951   Uart_Print("\n\r\n\r\n\r      #\n");
// 2952   Uart_Print("\r     ###\n");
// 2953   Uart_Print("\r    ###  *\n");
// 2954   Uart_Print("\r     #  ***\n");
// 2955   Uart_Print("\r       ***  #\n");
// 2956   Uart_Print("\r        *  ###\n");
// 2957   Uart_Print("\r          ###\n");
// 2958   Uart_Print("\r        *  #\n");
// 2959   Uart_Print("\r       ***\n");
// 2960   Uart_Print("\r      ***  #\n");
// 2961   Uart_Print("\r    #  *  ###\n");
// 2962   Uart_Print("\r   ###   ###\n");
// 2963   Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
// 2964   Uart_Print("\r   #  ***\n");
// 2965   Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
// 2966   Uart_Print("\r   #  *\n");
// 2967   Uart_Print("\r  ###               2 0 1 1\n");
// 2968   Uart_Print("\r ###\n");
// 2969   Uart_Print("\r  #           Press any key to continue...\n\n");
// 2970 }
// 2971 #endif
// 2972 
// 2973 /*******************************************************************************
// 2974 * DisplayFreescaleLogo
// 2975 *
// 2976 * This function displays the Freescale Logo in the LCD.
// 2977 *******************************************************************************/
// 2978 #if (gLCDSupported_d)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2979 void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
// 2980 {
DisplayFreescaleLogo:
        PUSH     {R1-R7,LR}
// 2981   uint8_t u8Count;
// 2982   uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
        MOV      R2,SP
        LDR      R3,??DataTable139
        LDM      R3!,{R4-R6}
        STM      R2!,{R4-R6}
// 2983   uint8_t i;
// 2984   
// 2985   for(i=0; i < 8; i++)
        MOVS     R6,#+0
        MOVS     R5,R0
        MOVS     R4,R1
// 2986   {  
// 2987     LCD_WritePixel(xStartCoord, yStartCoord, 1);
??DisplayFreescaleLogo_0:
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2988     LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
        ADDS     R7,R4,#+1
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2989     LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2990     LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2991     LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
        ADDS     R7,R4,#+2
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2992     LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2993     LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2994     LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2995     LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2996     LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
        ADDS     R7,R4,#+3
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2997     LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2998     LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2999     LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3000     LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3001     LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+4
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3002     LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3003     LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3004     LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3005     LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3006     LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3007     LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3008     LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3009     LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  
        ADDS     R4,R4,#+6
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3010 
// 3011     
// 3012    if(i == 2 || i == 4 || i == 6)
        CMP      R6,#+2
        BEQ      ??DisplayFreescaleLogo_1
        CMP      R6,#+4
        BEQ      ??DisplayFreescaleLogo_2
        CMP      R6,#+6
        BNE      ??DisplayFreescaleLogo_3
// 3013    {
// 3014      if(i == 4)
// 3015      {
// 3016        yStartCoord += 3;
// 3017        xStartCoord -= 9;
// 3018      }
// 3019      else
// 3020      {
// 3021        yStartCoord += 6;
// 3022        xStartCoord -= 6;
??DisplayFreescaleLogo_1:
        SUBS     R5,R5,#+6
        B        ??DisplayFreescaleLogo_4
// 3023      }
??DisplayFreescaleLogo_2:
        MOVS     R4,R7
        SUBS     R5,R5,#+9
        B        ??DisplayFreescaleLogo_4
// 3024    }
// 3025    else
// 3026    {
// 3027     yStartCoord += 3;
??DisplayFreescaleLogo_3:
        MOVS     R4,R7
// 3028     xStartCoord += 4;
        ADDS     R5,R5,#+4
// 3029 
// 3030    }
// 3031   }
??DisplayFreescaleLogo_4:
        ADDS     R6,R6,#+1
        CMP      R6,#+8
        BGE      .+4
        B        ??DisplayFreescaleLogo_0
// 3032  (void)LCD_SetFont(gLCD_VerdanaFont_c);
        MOVS     R0,#+1
        BL       LCD_SetFont
// 3033   yStartCoord -= 20;
        SUBS     R4,R4,#+20
// 3034   xStartCoord += 15;
        ADDS     R5,R5,#+15
// 3035   
// 3036   for(u8Count = 0; u8Count < 9; u8Count++)
        MOVS     R6,R4
        MOVS     R4,#+0
// 3037   {
// 3038     LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
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
// 3039     xStartCoord += 6;
        ADDS     R5,R5,#+6
// 3040   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLE      ??DisplayFreescaleLogo_5
// 3041 
// 3042  (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
// 3043   yStartCoord -= 20;
// 3044   xStartCoord += 15;
// 3045 }
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138:
        DATA32
        DC32     0x80007020
// 3046 #endif
// 3047 
// 3048 
// 3049 #if (gLCDSupported_d)
// 3050   

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3051 void DisplayTestMode(ConfigOption_t u8ConfigOption)
// 3052 {
DisplayTestMode:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
// 3053   uint8_t line = 0;
// 3054   uint8_t i;
// 3055   ClearDisplay();
        BL       ClearDisplay
// 3056   LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");
        LDR      R1,??DataTable139_1
        MOVS     R0,#+0
        BL       LCD_WriteString_NormalFont
// 3057 
// 3058   for(i = 0; i< 130 ; i++)
        MOVS     R4,#+0
// 3059   {
// 3060     LCD_WritePixel(i,10,1);  
??DisplayTestMode_0:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3061     LCD_WritePixel(i,11,1);  
        MOVS     R2,#+1
        MOVS     R1,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3062   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+130
        BLT      ??DisplayTestMode_0
// 3063   line++;
// 3064   
// 3065 
// 3066   switch(u8ConfigOption)
        LDR      R6,??DataTable139_2
        LDR      R4,??DataTable139_3
        CMP      R5,#+0
        BEQ      ??DisplayTestMode_1
        CMP      R5,#+2
        BEQ      ??DisplayTestMode_2
        BCC      ??DisplayTestMode_3
        B        ??DisplayTestMode_4
// 3067   {
// 3068     case gChannel_c:
// 3069       line++;
// 3070       LCD_WriteString_NormalFont(line," Option: Channel");
??DisplayTestMode_1:
        LDR      R1,??DataTable139_4
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3071       line++;
// 3072       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3073       line++;
// 3074       LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
        LDR      R1,??DataTable139_5
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3075       line++;
// 3076       LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
        LDR      R1,??DataTable139_6
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3077       LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable139_7
        B.N      ??DisplayTestMode_5
// 3078     break;
// 3079     
// 3080     case gPower_c:
// 3081       line++;
// 3082       LCD_WriteString_NormalFont(line," Option: Power");
??DisplayTestMode_3:
        LDR      R1,??DataTable139_8
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3083       line++;
// 3084       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3085       line++;
// 3086       LCD_WriteString_NormalFont(line,"  SW2 Power Up");
        LDR      R1,??DataTable139_9
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3087       line++;
// 3088       LCD_WriteString_NormalFont(line,"  SW3 Power Down");
        LDR      R1,??DataTable139_10
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3089       LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable139_11
??DisplayTestMode_5:
        BL       LCD_WriteStringValue
// 3090     break;
        B        ??DisplayTestMode_4
// 3091     
// 3092     case gRxTestMode_c:
// 3093       line++;
// 3094       
// 3095       if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
??DisplayTestMode_2:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      ??DisplayTestMode_6
// 3096       {
// 3097         LCD_WriteString_NormalFont(line," Option: Test");
        LDR      R1,??DataTable139_12
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3098         line++;
// 3099         LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3100         line++;
// 3101         LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        LDR      R1,??DataTable139_13
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3102         line++;
// 3103         LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        LDR      R1,??DataTable139_14
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3104         line++;
        MOVS     R5,#+6
// 3105         LCD_WriteString_NormalFont(7,"Idle Mode");
        LDR      R1,??DataTable139_15
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 3106       }
// 3107     /* RX options */  
// 3108       /*
// 3109       if(SMAC_CONTINUOUS_RX == u8CurrentMode)
// 3110       {
// 3111         LCD_WriteString_NormalFont(line," Continuous Reception");
// 3112       } 
// 3113       */
// 3114       if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
??DisplayTestMode_6:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BNE      ??DisplayTestMode_7
// 3115       {
// 3116         LCD_WriteString_NormalFont(line,"PER Test running");
        ADR.N    R1,?_138
        MOVS     R0,R5
        BL       LCD_WriteString_NormalFont
// 3117         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3118         LCD_WriteString_NormalFont(line,"SW4 for PER TX");
        LDR      R1,??DataTable139_16
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3119       }  
// 3120 
// 3121       if(SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??DisplayTestMode_7:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+3
        BNE      ??DisplayTestMode_8
// 3122       {
// 3123         LCD_WriteString_NormalFont(line,"Range Test running");
        Nop      
        ADR.N    R1,?_140
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3124         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3125         LCD_WriteString_NormalFont(line,"SW4 for Range TX");
        ADR.N    R1,?_141
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3126       }  
// 3127       
// 3128     /* TX options */  
// 3129       if(SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode)
??DisplayTestMode_8:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BNE      ??DisplayTestMode_9
// 3130       {
// 3131         LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
        ADR.N    R1,?_142
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3132       }            
// 3133       if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
??DisplayTestMode_9:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+4
        BNE      ??DisplayTestMode_10
// 3134       {
// 3135         LCD_WriteString_NormalFont(line," Cont TX Mod ");
        ADR.N    R1,?_143
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3136       }              
// 3137       if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
??DisplayTestMode_10:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+5
        BNE      ??DisplayTestMode_4
// 3138       {
// 3139         LCD_WriteString_NormalFont(line," Cont TX No Mod ");
        ADR.N    R1,?_144
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3140       }        
// 3141       
// 3142     break;
// 3143   
// 3144     default:
// 3145     break;
// 3146   }
// 3147 }
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
// 3148 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3149 void ClearDisplay(void)
// 3150 {
ClearDisplay:
        PUSH     {R3-R5,LR}
// 3151   uint8_t u8Line;
// 3152   for(u8Line = 0; u8Line < 9; u8Line++)
        MOVS     R5,#+0
        ADR.N    R4,?_47
// 3153   {
// 3154     LCD_WriteString_NormalFont(u8Line,"                     ");
??ClearDisplay_0:
        MOVS     R1,R4
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3155   }
        ADDS     R5,R5,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+9
        BLT      ??ClearDisplay_0
// 3156 }
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
// 3157 
// 3158 #endif
// 3159 
// 3160 /************************************************************************************
// 3161 *************************************************************************************
// 3162 * Private Debug stuff
// 3163 *************************************************************************************
// 3164 ************************************************************************************/
// 3165 
// 3166 
// 
//    46 bytes in section .bss
//   504 bytes in section .data
// 3 244 bytes in section .rodata
// 8 072 bytes in section .text
// 
// 8 072 bytes of CODE  memory
// 3 244 bytes of CONST memory
//   550 bytes of DATA  memory
//
//Errors: none
//Warnings: none
