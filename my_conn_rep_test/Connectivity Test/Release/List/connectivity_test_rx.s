///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.2.178/W32 for ARM        01/Feb/2019  11:17:22
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\Fabio\Desktop\WSNBP\my_conn_rep_test\Connectivity
//        Test\Application\Source\connectivity_test_rx.c
//    Command line =  
//        -f C:\Users\Fabio\AppData\Local\Temp\EW148D.tmp
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
//  373 const uint8_t ku8DoneStrReceiver[] = {'D', 'O', 'N', 'E','R' };
ku8DoneStrReceiver:
        DATA8
        DC8 68, 79, 78, 69, 82, 0, 0, 0
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
        LDR      R1,??DataTable109
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
        LDR      R1,??DataTable111
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
        LDR      R0,??DataTable111_1
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
        MOV      R0,SP
        LDRH     R7,[R0, #+6]
        LDR      R0,??DataTable111_2  ;; 0x2710
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
        LDR      R1,??DataTable111_3
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
//  719         LCD_WriteStringValue("             /",(u16TotalMsg),4,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDRH     R1,[R4, #+22]
        LDR      R0,??DataTable111_4
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
        LDR      R0,??DataTable111_5
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
        LDR      R0,??DataTable111_6
        B        ??process_incoming_msg_14
//  728         }
//  729         else
//  730         {
//  731           LCD_WriteStringValue("    Good:",(u16MsgCounter),4,gLCD_DecFormat_c);
??process_incoming_msg_15:
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR      R0,??DataTable111_7
??process_incoming_msg_14:
        BL       LCD_WriteStringValue
//  732         }  
//  733         LCD_WriteStringValue("Max LQI:",(maxLQI),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        LDRB     R1,[R4, #+16]
        LDR      R0,??DataTable111_8
        BL       LCD_WriteStringValue
//  734         LCD_WriteStringValue("Min LQI:",(minLQI),6,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+6
        LDRB     R1,[R4, #+17]
        LDR      R0,??DataTable111_9
        BL       LCD_WriteStringValue
//  735          DelayMs(1500);
        LDR      R0,??DataTable111_10  ;; 0x5dc
        BL       DelayMs
//  736           maxLQI=0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
//  737           minLQI=255;
        MOVS     R0,#+255
        STRB     R0,[R4, #+17]
//  738          
//  739           
//  740         LCD_WriteString_NormalFont(7," SW4 Start Listening ");
        LDR      R1,??DataTable111_11
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
//  741   #endif         
//  742 
//  743   #endif      
//  744         u16MsgCounter = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+20]
//  745         gu32PerRxEvents |= PER_DONE_MSG_EVNT;
        LDR      R0,[R5, #+44]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        STR      R1,[R5, #+44]
//  746       }
//  747     }
//  748   
//  749     if(SMAC_CONTINUOUS_RX == u8CurrentMode)
??process_incoming_msg_8:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+1
        BNE      ??process_incoming_msg_16
//  750     { 
//  751       u8MsgLen = RX_msg.u8BufSize;
        LDRB     R6,[R5, #+12]
//  752   #if INTERFACE_TYPE == SERIAL
//  753       LED_ToggleLed(LED1);
//  754       Uart_Print("\r\n");
//  755       Uart_Print("Received Packet:");
//  756       for(i=1; i < u8MsgLen ; i++)
//  757       {
//  758         Uart_Print("0x");
//  759         Uart_PrintHex((uint8_t *)&((RX_msg.pu8Buffer)->u8Data[i]), 1, 0);
//  760         (RX_msg.pu8Buffer)->u8Data[i] = 0;
//  761         Uart_Print(" ");
//  762       }
//  763       Uart_Print("\n");
//  764   #endif 
//  765 
//  766 #if INTERFACE_TYPE == MANUAL && gLCDSupported_d
//  767       if(2 > u8State)
        LDRB     R0,[R4, #+18]
        ADDS     R1,R0,#+1
        CMP      R0,#+1
        BGT      ??process_incoming_msg_17
//  768       {
//  769         u8State++;
        STRB     R1,[R4, #+18]
//  770         LCD_DrawIcon(50,4,u8RxIcon1_c);
        MOVS     R0,#+156
        B.N      ??process_incoming_msg_18
//  771       }
//  772       else if(4 > u8State)
??process_incoming_msg_17:
        CMP      R0,#+4
        BGE      ??process_incoming_msg_19
//  773       {
//  774         u8State++;     
        STRB     R1,[R4, #+18]
//  775         LCD_DrawIcon(50,4,u8RxIcon2_c);
        MOVS     R0,#+192
??process_incoming_msg_18:
        LSLS     R0,R0,#+1        ;; #+384
        ADDS     R2,R4,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       LCD_DrawIcon
        B        ??process_incoming_msg_20
//  776       }
//  777       else
//  778       {
//  779         u8State = 0;
??process_incoming_msg_19:
        MOVS     R0,#+0
        STRB     R0,[R4, #+18]
//  780       }
//  781 #endif
//  782         LED_ToggleLed(LED1); 
??process_incoming_msg_20:
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  783     }  
//  784     
//  785     if( SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??process_incoming_msg_16:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_21
//  786     {
//  787       ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);
//  788       u8MsgLen = sizeof(u8RangeExpectedString);
        MOVS     R6,#+10
//  789   
//  790   #if SMAC_FEATURE_SECURITY ==  TRUE
//  791       {
//  792         (void)DecipherMsgU8(&(RX_msg.pu8Buffer->u8Data[1]), 
//  793                             (RX_msg.u8BufSize));
//  794       }
//  795   #endif
//  796   
//  797       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)u8RangeExpectedString, u8MsgLen))
        MOVS     R2,#+10
        LDR      R1,??DataTable111_12
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_21
//  798       {  
//  799         u8Lqi = 0;
        MOVS     R7,#+0
        MOV      R1,SP
        STRB     R7,[R1, #+4]
//  800         gu8ValidRangePacket = TRUE;
        STRB     R0,[R5, #+29]
//  801         (void)MLMELinkQuality(&u8Lqi);
        ADD      R0,SP,#+4
        BL       MLMELinkQuality
//  802         u8Lqi = (u8Lqi / 3);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+3
        BL       __aeabi_idiv
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  803         if(100 >= u8Lqi)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+100
        BGT      ??process_incoming_msg_22
//  804         {  
//  805           u8Lqi = 100 - u8Lqi;
        MOVS     R0,#+100
        LDRB     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        B        ??process_incoming_msg_23
//  806         }
//  807         else
//  808         {
//  809           u8Lqi = u8Lqi - 100;
??process_incoming_msg_22:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+100
??process_incoming_msg_23:
        STRB     R0,[R1, #+4]
//  810         }
//  811    
//  812   #if INTERFACE_TYPE == MANUAL      
//  813         u8LQIAdjusted = adjust_LQI(u8Lqi);
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        BL       adjust_LQI
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  814   #endif      
//  815 #if (gLCDSupported_d)
//  816         LCD_WriteStringValue("    LQI: -",(u8Lqi),5,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+5
        MOV      R0,SP
        LDRB     R1,[R0, #+4]
        LDR      R0,??DataTable111_13
        BL       LCD_WriteStringValue
//  817           if(u8Lqi <= LQI_LIM4)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+41
        BGE      ??process_incoming_msg_24
//  818         {
//  819           LCD_DrawIcon(80,3,u8LQIIcon4_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+24
        B        ??process_incoming_msg_25
//  820         }
//  821         else if(u8Lqi <= LQI_LIM3)
??process_incoming_msg_24:
        CMP      R0,#+61
        BGE      ??process_incoming_msg_26
//  822         {
//  823           LCD_DrawIcon(80,3,u8LQIIcon3_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+96
        B        ??process_incoming_msg_25
//  824         }
//  825         else if (u8Lqi <= LQI_LIM2)
??process_incoming_msg_26:
        CMP      R0,#+81
        BGE      ??process_incoming_msg_27
//  826         {
//  827           LCD_DrawIcon(80,3,u8LQIIcon2_c);
        MOVS     R2,R4
        ADDS     R2,R2,#+168
        B        ??process_incoming_msg_25
//  828         }
//  829         else
//  830         {
//  831           LCD_DrawIcon(80,3,u8LQIIcon1_c);
??process_incoming_msg_27:
        MOVS     R2,R4
        ADDS     R2,R2,#+240
??process_incoming_msg_25:
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       LCD_DrawIcon
//  832         }
//  833      
//  834 #endif
//  835         ACK_msg.pu8Buffer->u8Data[0] = 'A';
        MOVS     R0,#+65
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+2]
//  836         ACK_msg.pu8Buffer->u8Data[1] = 'C';
        MOVS     R0,#+67
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+3]
//  837         ACK_msg.pu8Buffer->u8Data[2] = 'K';
        MOVS     R0,#+75
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+4]
//  838   
//  839   #if INTERFACE_TYPE == SERIAL
//  840         ACK_msg.pu8Buffer->u8Data[3] = u8Lqi; 
//  841   #endif      
//  842   
//  843   #if INTERFACE_TYPE == MANUAL
//  844         ACK_msg.pu8Buffer->u8Data[3] = u8LQIAdjusted;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
//  845   #endif      
//  846   
//  847         
//  848   #if SMAC_FEATURE_SECURITY ==  TRUE
//  849         uint8_t fill_counter;
//  850         for(fill_counter = 6; fill_counter < BLOCK_SIZE; fill_counter++)
//  851         {
//  852           ACK_msg.pu8Buffer->u8Data[fill_counter] = '\0';
//  853         }
//  854   
//  855         if(AES_DEFAULT_MODE != AES_CTR_MODE)
//  856         {
//  857           ACK_msg.u8BufSize = 2*BLOCK_SIZE;
//  858         }
//  859         else
//  860         {
//  861           ACK_msg.u8BufSize = BLOCK_SIZE;
//  862         }
//  863   
//  864         (void)CipherMsgU8 (&(ACK_msg.pu8Buffer->u8Data[0]),(ACK_msg.u8BufSize));
//  865   #else
//  866           ACK_msg.pu8Buffer->u8Data[4] = '\0';
        LDR      R0,[R4, #+4]
        STRB     R7,[R0, #+6]
//  867           ACK_msg.u8BufSize = 5;
        MOVS     R0,#+5
        STRB     R0,[R4, #+8]
//  868   #endif  
//  869         
//  870               
//  871   #if INTERFACE_TYPE == SERIAL
//  872         Uart_Print("\r\n"); 
//  873         Uart_Print(" LQI=-");
//  874         tmp = convert_2_bcd(u8Lqi);
//  875         Uart_PrintHex((uint8_t *)(&tmp),1,0); 
//  876   #else
//  877     DelayMs(2);      
        MOVS     R0,#+2
        BL       DelayMs
//  878   #endif  
//  879   
//  880       
//  881        LED_ToggleLed(LED1);
        MOVS     R0,#+1
        BL       LED_ToggleLed
//  882   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  883         LEDs_LQI_indication( u8LQIAdjusted); 
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        BL       LEDs_LQI_indication
//  884   #endif 
//  885       }
//  886     } 
//  887    
//  888 if(SMAC_TEST_MODE_RANGE_TX == u8CurrentMode)
??process_incoming_msg_21:
        LDRB     R0,[R5, #+20]
        CMP      R0,#+3
        BNE      ??process_incoming_msg_28
//  889     u8MsgLen = 3;
        MOVS     R6,#+3
//  890     ptrRcvMsg = (uint8_t *)&((RX_msg.pu8Buffer)->u8Data[1]);  
//  891     {
//  892       
//  893   #if SMAC_FEATURE_SECURITY ==  TRUE
//  894     (void)DecipherMsgU8 (&(RX_msg.pu8Buffer->u8Data[0]),(RX_msg.u8BufSize));    
//  895   #endif
//  896     
//  897       if(TRUE == mem_cmp(ptrRcvMsg, (uint8_t *)ku8AckString, u8MsgLen))
??process_incoming_msg_28:
        LSLS     R2,R6,#+24
        LSRS     R2,R2,#+24
        Nop      
        ADR.N    R1,ku8AckString
        LDR      R0,[R5, #+8]
        ADDS     R0,R0,#+3
        BL       mem_cmp
        CMP      R0,#+1
        BNE      ??process_incoming_msg_3
//  898       {
//  899   #if (gLEDSupported_d  || INTERFACE_TYPE == SERIAL)   
//  900         uint8_t u8Lqi;
//  901         u8Lqi = RX_msg.pu8Buffer->u8Data[4];
        LDR      R0,[R5, #+8]
        LDRB     R4,[R0, #+6]
//  902   #endif
//  903         
//  904         
//  905   #if INTERFACE_TYPE == SERIAL
//  906 
//  907         Uart_Print("\r\n");   
//  908         Uart_Print(" LQI=-");
//  909         tmp = convert_2_bcd(u8Lqi);
//  910         Uart_PrintHex((uint8_t *)(&tmp),1,0);
//  911   #endif 
//  912         
//  913   #if (INTERFACE_TYPE == MANUAL && gLEDSupported_d)
//  914        Led1Toggle(); 
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  915        LEDs_LQI_indication((link_quality_value_t)u8Lqi); 
        MOVS     R0,R4
        BL       LEDs_LQI_indication
//  916 
//  917   #endif      
//  918         gu8ValidAckPacket = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+30]
//  919       }
//  920     }     
//  921        
//  922   }
//  923 }
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
//  924 
//  925 #if INTERFACE_TYPE == MANUAL 
//  926 
//  927 /************************************************************************************
//  928 * select_config_option_isr
//  929 *
//  930 * This function is the callback function for the KBI4 interruption, it enables only 
//  931 * a flag to indicate that the KBI interruption occurred and the current option
//  932 * to configure must increase.
//  933 *
//  934 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  935   void select_config_option_isr(void)
//  936   {
select_config_option_isr:
        PUSH     {R7,LR}
//  937     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  938     gu8TestModeEvents |= CHANGE_OPTION_CONFIG_EVENT;
        LDR      R0,??DataTable111_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
//  939   }
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
//  940 
//  941 /************************************************************************************
//  942 * increase_config_option_isr
//  943 *
//  944 * This function turns on a flag to indicate that the KBI5 interruption occurred, 
//  945 * which is used to increase the current option value.
//  946 *
//  947 ***********************************************************************************/
//  948 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  949  void increase_config_option_isr(void)
//  950   {
increase_config_option_isr:
        PUSH     {R7,LR}
//  951     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  952     gu8TestModeEvents |= TEST_MODE_INCREASE_EVENT;
        LDR      R0,??DataTable111_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+1
        B.N      ?Subroutine2
//  953     gu8TestAlreadyStarted = FALSE;
//  954   }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable109:
        DATA32
        DC32     ku8ExpectedString
//  955 
//  956 /************************************************************************************
//  957 * decrease_config_option_isr
//  958 *
//  959 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  960 * which is used to decrease the current option value.
//  961 *
//  962 ***********************************************************************************/
//  963 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  964   void decrease_config_option_isr(void)
//  965   {
decrease_config_option_isr:
        PUSH     {R7,LR}
//  966     DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  967     gu8TestModeEvents |= TEST_MODE_DECREASE_EVENT;
        LDR      R0,??DataTable111_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+2
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  968     gu8TestAlreadyStarted = FALSE;    
//  969   }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        ORRS     R2,R2,R1
        STRB     R2,[R0, #+28]
        MOVS     R1,#+0
        STRB     R1,[R0, #+31]
        POP      {R0,R3}
        BX       R3               ;; return
//  970 
//  971 /************************************************************************************
//  972 * decrease_config_option_isr
//  973 *
//  974 * This function turns on a flag to indicate that the KBI6 interruption occurred, 
//  975 * which is used to decrease the current option value.
//  976 *
//  977 ***********************************************************************************/
//  978 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  979 void start_test_isr(void)
//  980 {
start_test_isr:
        PUSH     {R7,LR}
//  981   DelayMs(BOUNCE_TIME);
        MOVS     R0,#+120
        BL       DelayMs
//  982   gu8TestModeEvents |= TEST_START_EVENT;
        LDR      R0,??DataTable111_14
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+8
        B.N      ?Subroutine2
//  983   gu8TestAlreadyStarted = FALSE;
//  984 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111:
        DATA32
        DC32     ku8DoneStrReceiver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_1:
        DATA32
        DC32     ?_58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_2:
        DATA32
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_3:
        DATA32
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_4:
        DATA32
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_5:
        DATA32
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_6:
        DATA32
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_7:
        DATA32
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_8:
        DATA32
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_9:
        DATA32
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_10:
        DATA32
        DC32     0x5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_11:
        DATA32
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_12:
        DATA32
        DC32     u8RangeExpectedString

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_13:
        DATA32
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable111_14:
        DATA32
        DC32     c_test_num
//  985 
//  986 #endif
//  987 
//  988 /************************************************************************************
//  989 * process_test_mode_app
//  990 *
//  991 * This function process the test mode application, execute the serial or the manual
//  992 * interface code according with the selected interface type in the app_config.h file.
//  993 *
//  994 ************************************************************************************/
//  995 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  996 void process_test_mode_app(void){
process_test_mode_app:
        PUSH     {R3-R7,LR}
//  997   
//  998 #if INTERFACE_TYPE == MANUAL
//  999   FuncReturn_t tmpChange;
// 1000   uint8_t u8SafeTimeOut;
// 1001 #endif
// 1002 
// 1003   if (CHANGE_OPTION_CONFIG_EVENT & gu8TestModeEvents)
        LDR      R4,??process_test_mode_app_1
        LDRB     R0,[R4, #+28]
        MOVS     R5,#+0
        LSLS     R1,R0,#+29
        BPL      ??process_test_mode_app_2
// 1004   {
// 1005    clear_event(gu8TestModeEvents,CHANGE_OPTION_CONFIG_EVENT);
        MOVS     R1,#+251
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1006    
// 1007 #if (gLCDSupported_d)
// 1008    if(gRxTestMode_c <= CurrentOption)
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BLT      ??process_test_mode_app_3
// 1009     {
// 1010       CurrentOption = gChannel_c;
        MOVS     R0,#+0
        B        ??process_test_mode_app_4
// 1011     }
// 1012     else
// 1013     {
// 1014       CurrentOption++;
??process_test_mode_app_3:
        ADDS     R0,R0,#+1
??process_test_mode_app_4:
        STRB     R0,[R4, #+23]
// 1015     }
// 1016 #else
// 1017     if(MAX_OPTION_CONFIG <= CurrentOption)
// 1018     {
// 1019       CurrentOption = gChannel_c;
// 1020     }
// 1021     else
// 1022     {
// 1023       CurrentOption++;
// 1024     }
// 1025 #endif
// 1026    
// 1027 #if (gLCDSupported_d)   
// 1028    DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1029 #endif
// 1030   }
// 1031 
// 1032   #if INTERFACE_TYPE == SERIAL
// 1033   
// 1034     switch(main_menu())
// 1035     {
// 1036 
// 1037        case ChannelAdjustment:
// 1038           channel_adjust();
// 1039           break;
// 1040         case PowerAdjustment:
// 1041           power_adjust();
// 1042           break;
// 1043         case TestAdjustment:
// 1044           tx_rx_select();
// 1045           break;
// 1046         case ClockAdjustment:  
// 1047           configure_clock_settings();
// 1048           break;
// 1049         case PreviousMenu:
// 1050           break;
// 1051         default:
// 1052           Uart_Print("  Invalid Option!!!\n");
// 1053           break;
// 1054       }
// 1055   #else 
// 1056       
// 1057   #if INTERFACE_TYPE == MANUAL
// 1058       LED_SetHex(CurrentOption);
??process_test_mode_app_2:
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
// 1059       switch(CurrentOption)
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
// 1060       {
// 1061         case gChannel_c:
// 1062           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_6:
        TST      R0,R1
        BEQ      ??process_test_mode_app_7
// 1063           {
// 1064             MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1065             DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1066             tmpChange = gFail_c;
// 1067             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1068             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LDRB     R0,[R4, #+28]
        LSLS     R1,R0,#+31
        BPL      ??process_test_mode_app_8
// 1069             {
// 1070               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        MOVS     R1,#+254
        ANDS     R1,R1,R0
        STRB     R1,[R4, #+28]
// 1071               do{
// 1072                 if(MAX_CHAN_NUM <= u8TestModeChannel)
??process_test_mode_app_9:
        LDRB     R0,[R4, #+21]
        CMP      R0,#+15
        BLT      ??process_test_mode_app_10
// 1073                 {
// 1074                   u8TestModeChannel = CHANNEL11;
        MOVS     R0,#+0
        B        ??process_test_mode_app_11
// 1075                 }
// 1076                 else
// 1077                 {
// 1078                   u8TestModeChannel ++;
??process_test_mode_app_10:
        ADDS     R0,R0,#+1
??process_test_mode_app_11:
        STRB     R0,[R4, #+21]
// 1079                 }
// 1080                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1081                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1082               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+21]
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_12
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BLT      ??process_test_mode_app_9
// 1083              
// 1084             }
// 1085             else
// 1086             {
// 1087               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1088               do{
// 1089                 if(CHANNEL11 == u8TestModeChannel)
// 1090                 {
// 1091                   u8TestModeChannel = (channel_num_t)MAX_CHAN_NUM;
// 1092                 }
// 1093                 else
// 1094                 {
// 1095                   u8TestModeChannel --;
// 1096                 }
// 1097                 u8SafeTimeOut++;
// 1098                 tmpChange = MLMESetChannelRequest(u8TestModeChannel);
// 1099               }while((gSuccess_c != tmpChange) && (gNumChannNotOnPALock_c >= u8SafeTimeOut));
// 1100             }
// 1101 
// 1102             MLMETestMode(u8CurrentMode);
??process_test_mode_app_12:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1103 #if (gLCDSupported_d)           
// 1104             LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable112
        BL       LCD_WriteStringValue
// 1105 #endif
// 1106             LEDs_Flash(u8TestModeChannel, FLASH_DELAY);
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
// 1107  
// 1108           }
// 1109 
// 1110           break;
// 1111        
// 1112         case  gPower_c:
// 1113           if ((TEST_MODE_INCREASE_EVENT | TEST_MODE_DECREASE_EVENT) & gu8TestModeEvents)
??process_test_mode_app_17:
        TST      R0,R1
??process_test_mode_app_7:
        BNE      .+4
        B        ??process_test_mode_app_5
// 1114           {
// 1115             tmpChange = gFail_c;
// 1116             u8SafeTimeOut = 0xff;
        MOVS     R6,#+255
// 1117             if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_18
// 1118             {
// 1119               clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1120               do{
// 1121                 if(MAX_POWER <= u8TestModePower)
??process_test_mode_app_19:
        LDRB     R0,[R4, #+22]
        CMP      R0,#+16
        BLE      ??process_test_mode_app_20
// 1122                 {
// 1123                   u8TestModePower = MIN_POWER;
        MOVS     R0,#+0
        B        ??process_test_mode_app_21
// 1124                 }
// 1125                 else
// 1126                 { 
// 1127                   u8TestModePower++;
??process_test_mode_app_20:
        ADDS     R0,R0,#+1
??process_test_mode_app_21:
        STRB     R0,[R4, #+22]
// 1128                 }
// 1129                 u8SafeTimeOut++;
        ADDS     R6,R6,#+1
// 1130                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1131               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
        LDRB     R0,[R4, #+22]
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_22
        LSLS     R0,R6,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLT      ??process_test_mode_app_19
// 1132             }
// 1133             else
// 1134             {
// 1135               clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
// 1136   
// 1137               do{
// 1138                 if(MIN_POWER == u8TestModePower)
// 1139                 {
// 1140                   u8TestModePower = MAX_POWER;
// 1141                 }
// 1142                 else 
// 1143                 {
// 1144                   u8TestModePower--;
// 1145                 }
// 1146                 u8SafeTimeOut++;
// 1147                 tmpChange = MLMEPAOutputAdjust(u8TestModePower); 
// 1148               }while((gSuccess_c != tmpChange) && (gNumPowerLvlNotOnPALock_c >= u8SafeTimeOut));
// 1149             }
// 1150 
// 1151 #if (gLCDSupported_d)          
// 1152             LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
??process_test_mode_app_22:
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable113
        BL       LCD_WriteStringValue
// 1153 #endif            
// 1154             LEDs_Flash(u8TestModePower, FLASH_DELAY);
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
// 1155           }
// 1156           break;
// 1157           
// 1158         case gRxTestMode_c:
// 1159           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_26:
        LDRB     R1,[R4, #+20]
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_27
// 1160           {
// 1161             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);           
        STRB     R7,[R4, #+28]
// 1162             if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
        CMP      R1,#+5
        BNE      ??process_test_mode_app_28
// 1163             {
// 1164               u8CurrentMode = SMAC_TEST_MODE_IDLE;
        STRB     R5,[R4, #+20]
        B        ??process_test_mode_app_29
// 1165             }            
// 1166             else
// 1167             {
// 1168               u8CurrentMode ++;
??process_test_mode_app_28:
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+20]
        B        ??process_test_mode_app_29
// 1169             }
// 1170             MLMETestMode(u8CurrentMode);
// 1171 #if (gLCDSupported_d)            
// 1172             DisplayTestMode(CurrentOption);
// 1173 #endif            
// 1174             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
// 1175           }
// 1176           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_27:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_30
// 1177           {
// 1178             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);           
        STRB     R3,[R4, #+28]
// 1179             if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
        CMP      R1,#+0
        BNE      ??process_test_mode_app_31
// 1180             {
// 1181              u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
        MOVS     R0,#+5
        B        ??process_test_mode_app_32
// 1182             }
// 1183             else
// 1184             {            
// 1185               u8CurrentMode --;
??process_test_mode_app_31:
        SUBS     R0,R1,#+1
??process_test_mode_app_32:
        STRB     R0,[R4, #+20]
// 1186             }
// 1187             MLMETestMode(u8CurrentMode);
??process_test_mode_app_29:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1188 #if (gLCDSupported_d)            
// 1189             DisplayTestMode(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       DisplayTestMode
// 1190 #endif            
// 1191             LEDs_Flash(u8CurrentMode, FLASH_DELAY);
        MOVS     R1,#+200
        LDRB     R0,[R4, #+20]
        BL       LEDs_Flash
// 1192           }
// 1193           
// 1194           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??process_test_mode_app_30:
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 1195           LED_SetHex(CurrentOption);
        LDRB     R0,[R4, #+23]
        BL       LED_SetHex
        B        ??process_test_mode_app_33
// 1196          
// 1197           while((SMAC_TEST_MODE_PER_RX == u8CurrentMode)  && 
// 1198                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1199                 (gRxTestMode_c == CurrentOption))
??process_test_mode_app_34:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_35
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_36
// 1200           {
// 1201             if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)            
// 1202             {  
// 1203               packet_error_rate_rx_test();
        BL       packet_error_rate_rx_test
// 1204             }
// 1205           }  
??process_test_mode_app_33:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BEQ      ??process_test_mode_app_34
// 1206           
// 1207           while( (SMAC_TEST_MODE_RANGE_RX == u8CurrentMode) && 
// 1208                  (NO_TEST_MODE_EVENT == gu8TestModeEvents)  &&
// 1209                  (gRxTestMode_c == CurrentOption) )
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
// 1210           {
// 1211             range_rx_test();
        BL       range_rx_test
        B        ??process_test_mode_app_37
// 1212           }           
// 1213           while( (SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode) && 
// 1214                 (NO_TEST_MODE_EVENT == gu8TestModeEvents) &&
// 1215                 (gRxTestMode_c == CurrentOption) )
??process_test_mode_app_41:
        LDRB     R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_42
        LDRB     R0,[R4, #+23]
        CMP      R0,#+2
        BNE      ??process_test_mode_app_42
// 1216           {
// 1217             pulse_prbs9_tx();
        BL       pulse_prbs9_tx
// 1218           }
??process_test_mode_app_38:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BEQ      ??process_test_mode_app_41
// 1219 
// 1220           while( (SMAC_TEST_MODE_PER_TX == u8CurrentMode) &&  
// 1221                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1222                 )
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
// 1223           {
// 1224             packet_error_rate_tx_test();
??process_test_mode_app_36:
        BL       packet_error_rate_tx_test
        B        ??process_test_mode_app_43
// 1225           }  
// 1226           
// 1227           while( (SMAC_TEST_MODE_RANGE_TX == u8CurrentMode) &&  
// 1228                ( NO_TEST_MODE_EVENT == gu8TestModeEvents || TEST_START_EVENT == gu8TestModeEvents )                 
// 1229                 )
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
// 1230           {
// 1231             range_tx_test();
??process_test_mode_app_40:
        BL       range_tx_test
        B        ??process_test_mode_app_44
// 1232           }           
// 1233           
// 1234           break;
// 1235           
// 1236         case gBulkCap_c:
// 1237           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_45:
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_46
// 1238           {
// 1239             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1240             enable_bulk_cap(); 
        LDR      R0,??DataTable115  ;; 0x80003040
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        LDR      R0,??DataTable115  ;; 0x80003040
        STR      R1,[R0, #+0]
// 1241             u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        STRB     R0,[R4, #+26]
// 1242             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1243           }
// 1244           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_46:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1245           {
// 1246             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1247             disable_bulk_cap(); 
        LDR      R0,??DataTable115  ;; 0x80003040
        LDR      R1,[R0, #+0]
        LDR      R2,??DataTable114  ;; 0xfdffffff
        ANDS     R2,R2,R1
        STR      R2,[R0, #+0]
// 1248             u8BulkCapState = gDisable_c;
        STRB     R5,[R4, #+26]
// 1249             LEDs_Flash(u8BulkCapState, FLASH_DELAY);
        MOVS     R1,#+200
        MOVS     R0,#+0
        B        ??process_test_mode_app_13
        DATA
??process_test_mode_app_1:
        DATA32
        DC32     c_test_num
        THUMB
// 1250           }
// 1251           break; 
// 1252             
// 1253         case gCoarseTune_c:
// 1254           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_48:
        MOVS     R1,#+240
        LSLS     R1,R1,#+17       ;; #+31457280
        LDR      R2,??DataTable114_1  ;; 0xfe1fffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_49
// 1255           {
// 1256             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1257             if(MAX_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+15
        BEQ      ??process_test_mode_app_50
// 1258             {
// 1259               u8CurrentCoarseTune = MIN_COARSE_TUNE;
// 1260             }
// 1261             else
// 1262             {
// 1263               u8CurrentCoarseTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_50:
        STRB     R5,[R4, #+24]
// 1264             }
// 1265             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+21
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable115  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1266             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1267           }
// 1268           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_49:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1269           {
// 1270             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1271             if(MIN_COARSE_TUNE == u8CurrentCoarseTune)
        LDRB     R0,[R4, #+24]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_51
// 1272             {
// 1273               u8CurrentCoarseTune = MAX_COARSE_TUNE;
        MOVS     R0,#+15
        B        ??process_test_mode_app_52
// 1274             }
// 1275             else
// 1276             {
// 1277               u8CurrentCoarseTune--;
??process_test_mode_app_51:
        SUBS     R0,R0,#+1
??process_test_mode_app_52:
        STRB     R0,[R4, #+24]
// 1278             }
// 1279             set_xtal_coarse_tune(u8CurrentCoarseTune);
        LDRB     R0,[R4, #+24]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R4,[R3, #+0]
        ANDS     R2,R2,R4
        LSLS     R4,R0,#+21
        ANDS     R1,R1,R4
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1280             LEDs_Flash(u8CurrentCoarseTune, FLASH_DELAY);
        B        ??process_test_mode_app_47
// 1281           }
// 1282           break; 
// 1283           
// 1284         case gFineTune_c:
// 1285           if (TEST_MODE_INCREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_53:
        MOVS     R1,#+248
        LSLS     R1,R1,#+13       ;; #+2031616
        LDR      R2,??DataTable115_1  ;; 0xffe0ffff
        LSLS     R0,R0,#+31
        BPL      ??process_test_mode_app_54
// 1286           {
// 1287             clear_event(gu8TestModeEvents,TEST_MODE_INCREASE_EVENT);
        STRB     R7,[R4, #+28]
// 1288             if(MAX_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+31
        BEQ      ??process_test_mode_app_55
// 1289             {
// 1290               u8CurrentFineTune = MIN_FINE_TUNE;
// 1291             }
// 1292             else
// 1293             {
// 1294               u8CurrentFineTune++;
        ADDS     R5,R0,#+1
??process_test_mode_app_55:
        STRB     R5,[R4, #+25]
// 1295             }
// 1296             set_xtal_fine_tune(u8CurrentFineTune);
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R3,[R3, #+0]
        ANDS     R2,R2,R3
        LSLS     R3,R0,#+16
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        LDR      R2,??DataTable115  ;; 0x80003040
        STR      R1,[R2, #+0]
// 1297             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
        B        ??process_test_mode_app_56
// 1298             if(0x0F < u8CurrentFineTune)
// 1299             {
// 1300               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
// 1301             }
// 1302           }
// 1303           else if(TEST_MODE_DECREASE_EVENT & gu8TestModeEvents)
??process_test_mode_app_54:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??process_test_mode_app_5
// 1304           {
// 1305             clear_event(gu8TestModeEvents,TEST_MODE_DECREASE_EVENT);
        STRB     R3,[R4, #+28]
// 1306             if(MIN_FINE_TUNE == u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+0
        BNE      ??process_test_mode_app_57
// 1307             {
// 1308               u8CurrentCoarseTune = MAX_FINE_TUNE;
        MOVS     R0,#+31
        STRB     R0,[R4, #+24]
        B        ??process_test_mode_app_58
// 1309             }
// 1310             else
// 1311             {
// 1312               u8CurrentFineTune--;
??process_test_mode_app_57:
        SUBS     R0,R0,#+1
        STRB     R0,[R4, #+25]
// 1313             }
// 1314             set_xtal_fine_tune(u8CurrentFineTune);
??process_test_mode_app_58:
        LDRB     R0,[R4, #+25]
        LDR      R3,??DataTable115  ;; 0x80003040
        LDR      R5,[R3, #+0]
        ANDS     R2,R2,R5
        LSLS     R5,R0,#+16
        ANDS     R1,R1,R5
        ORRS     R1,R1,R2
        STR      R1,[R3, #+0]
// 1315             LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_56:
        MOVS     R1,#+200
        BL       LEDs_Flash
// 1316             if(0x0F < u8CurrentFineTune)
        LDRB     R0,[R4, #+25]
        CMP      R0,#+15
        BLE      ??process_test_mode_app_5
// 1317             {
// 1318               LEDs_Flash(u8CurrentFineTune, FLASH_DELAY);
??process_test_mode_app_47:
        MOVS     R1,#+200
??process_test_mode_app_13:
        BL       LEDs_Flash
// 1319             }
// 1320           }
// 1321           break;  
// 1322           
// 1323         default:
// 1324           break;
// 1325       }
// 1326   #endif
// 1327 #endif
// 1328 
// 1329 }
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
// 1330 
// 1331 /************************************************************************************
// 1332 * adjust_LQI
// 1333 *
// 1334 * The purpose of this function is to adjust the link quality indicator value obtained
// 1335 * from the MLMELinkQuality primitive to only four possible values.
// 1336 *
// 1337 ************************************************************************************/
// 1338 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1339 link_quality_value_t adjust_LQI(uint8_t u8LQI)
// 1340 {
// 1341   link_quality_value_t LQIAdjusted;
// 1342   
// 1343   if(LQI_LIM1 < u8LQI)
adjust_LQI:
        CMP      R0,#+89
        BLT      ??adjust_LQI_0
// 1344   {
// 1345      LQIAdjusted = gFarRange_c;
        MOVS     R0,#+0
        BX       LR
// 1346   }  
// 1347   else
// 1348   {
// 1349     if(LQI_LIM2 < u8LQI)
??adjust_LQI_0:
        CMP      R0,#+81
        BLT      ??adjust_LQI_1
// 1350     {
// 1351        LQIAdjusted = gMediumRange_c;
        MOVS     R0,#+1
        BX       LR
// 1352     }
// 1353     else
// 1354     {
// 1355        if(LQI_LIM3 <= u8LQI)
??adjust_LQI_1:
        CMP      R0,#+60
        BLT      ??adjust_LQI_2
// 1356        {
// 1357          LQIAdjusted = gNearRange_c;
        MOVS     R0,#+2
        BX       LR
// 1358        }
// 1359        else
// 1360        {
// 1361          LQIAdjusted = gVeryNearRange_c;
??adjust_LQI_2:
        MOVS     R0,#+3
// 1362        }
// 1363      }
// 1364   }
// 1365   return LQIAdjusted;
        BX       LR               ;; return
// 1366 }
// 1367 
// 1368 
// 1369 /************************************************************************************
// 1370 * convert_2_bcd function
// 1371 *
// 1372 * This function converts the received data as parameter to bcd format
// 1373 *
// 1374 ************************************************************************************/
// 1375 static four_digit_bcd_t convert_2_bcd(uint16_t u16Value)
// 1376 {
// 1377   four_digit_bcd_t u16RtrnVal = {0,0,0,0,0,0};
// 1378   uint16_t tmp;
// 1379   if(10000 > u16Value)
// 1380   {
// 1381     tmp = u16Value;
// 1382     if(1000 <= u16Value)
// 1383     {
// 1384       tmp = u16Value/1000;
// 1385       u16RtrnVal.u8Thousands = tmp;
// 1386       tmp = u16Value%1000;
// 1387       u16Value = tmp;
// 1388     }
// 1389     if(100 <= u16Value)
// 1390     {
// 1391       tmp = u16Value/100;
// 1392       u16RtrnVal.u8Houndreds = tmp;
// 1393       tmp = u16Value%100;
// 1394       u16Value = tmp;
// 1395     }
// 1396     if(10 <= u16Value)
// 1397     {
// 1398       tmp = u16Value/10;
// 1399       u16RtrnVal.u8Tens = tmp;
// 1400       tmp = u16Value%10;
// 1401       u16Value = tmp;
// 1402     }
// 1403     u16RtrnVal.u8Units = tmp;
// 1404   }
// 1405   return u16RtrnVal;
// 1406 }
// 1407 
// 1408 
// 1409 
// 1410 /************************************************************************************
// 1411 * LEDs_Flash
// 1412 *
// 1413 * This function flash the binary number of the received parameter through LEDs.
// 1414 *
// 1415 ************************************************************************************/
// 1416 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1417 void LEDs_Flash(uint8_t u8leds_state, uint32_t msec)
// 1418 {
LEDs_Flash:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1419   LED_TurnOffAllLeds();  
        BL       LED_TurnOffAllLeds
// 1420   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1421   LED_SetHex(u8leds_state);
        MOVS     R0,R5
        BL       LED_SetHex
// 1422   DelayMs(msec);  
        MOVS     R0,R4
        BL       DelayMs
// 1423   LED_TurnOffAllLeds(); 
        BL       LED_TurnOffAllLeds
// 1424   DelayMs(msec);
        MOVS     R0,R4
        BL       DelayMs
// 1425 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1426 
// 1427 /************************************************************************************
// 1428 * LoadPRBS9
// 1429 *
// 1430 * The purpose of this function is to load the pseudo random binary sequence order 9 
// 1431 * in a transmission message. The polynomial to transmit is the following:
// 1432 *
// 1433 *
// 1434 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1435 void LoadPRBS9(void)
// 1436 {
LoadPRBS9:
        PUSH     {R4-R7}
// 1437   uint8_t u8c1;                           /* Byte counter */
// 1438   uint8_t u8c2;                           /* Bit counter */
// 1439   uint16_t u16t1;                         /* LFSR */
// 1440   uint16_t u16t2;                         /* LFSR output */
// 1441   uint16_t u16t3;                         /* LFSR feedback tap */
// 1442   uint8_t u8t4;                           /* Assembled transmit byte */
// 1443   
// 1444   u16t1 = 0x01FF;                       /* Initialize the LFSR */
        LDR      R6,??DataTable116  ;; 0x1ff
// 1445   for (u8c1=0; u8c1<64; u8c1++)         /* Byte counter */
        MOVS     R0,#+0
        MOVS     R1,#+0
// 1446   {
// 1447     u8t4 = 0x00;                        /* Initialize the byte */
??LoadPRBS9_0:
        MOVS     R4,#+0
// 1448     for (u8c2=0; u8c2<8; u8c2++)        /* Bit counter */
        MOVS     R5,#+0
// 1449     {
// 1450       u16t2 = (u16t1 & 0x0001);       /* LFSR output */
??LoadPRBS9_1:
        MOVS     R2,#+1
        MOVS     R3,R6
        ANDS     R3,R3,R2
// 1451       if (u16t2 == 0x0001)
        BEQ      ??LoadPRBS9_2
// 1452       {
// 1453         u8t4 = (uint8_t)(u8t4 | 0x80);         /* Set/Clear byte based on LFSR output */
        MOVS     R7,R4
        MOVS     R4,#+128
        ORRS     R4,R4,R7
// 1454       }
// 1455       if (u8c2 != 7)
??LoadPRBS9_2:
        LSLS     R7,R5,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+7
        BEQ      ??LoadPRBS9_3
// 1456       {
// 1457         u8t4 = (uint8_t)(u8t4 >> 1);           /* LSBit will be first bit out of LFSR */
        LSLS     R4,R4,#+24
        LSRS     R4,R4,#+25
// 1458       }
// 1459       
// 1460       u16t3 = ((u16t1 & 0x0010) >> 4);/* LFSR tap */
??LoadPRBS9_3:
        LSLS     R7,R6,#+24
        LSRS     R7,R7,#+28
        ANDS     R2,R2,R7
// 1461       u16t1 = u16t1 >> 1;             /* Now shift the LFSR */
        LSLS     R7,R6,#+15
        LSRS     R7,R7,#+16
// 1462       if (u16t2 == u16t3)             /* Set/Clr the LFSR MSBit */
        CMP      R3,R2
        BNE      ??LoadPRBS9_4
// 1463       {
// 1464         u16t1 = u16t1 & 0xFEFF;
        LDR      R6,??DataTable116_1  ;; 0xfeff
        ANDS     R6,R6,R7
        B        ??LoadPRBS9_5
// 1465       }
// 1466       else
// 1467       {
// 1468         u16t1 = u16t1 | 0x0100;
??LoadPRBS9_4:
        MOVS     R6,#+128
        LSLS     R6,R6,#+1        ;; #+256
        ORRS     R6,R6,R7
// 1469       }
// 1470       }
??LoadPRBS9_5:
        ADDS     R5,R5,#+1
        LSLS     R2,R5,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+8
        BLT      ??LoadPRBS9_1
// 1471       TX_msg.pu8Buffer->u8Data[u8c1] = u8t4;
        LDR      R2,??DataTable117
        LDR      R2,[R2, #+4]
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+24
        ADDS     R2,R2,R3
        STRB     R4,[R2, #+2]
// 1472     } 
        ADDS     R1,R1,#+1
        LSLS     R2,R1,#+24
        LSRS     R2,R2,#+24
        CMP      R2,#+64
        BLT      ??LoadPRBS9_0
// 1473   TX_msg.pu8Buffer->u8Data[64] = '\0';
        LDR      R1,??DataTable117
        LDR      R2,[R1, #+4]
        MOVS     R3,#+66
        STRB     R0,[R2, R3]
// 1474   TX_msg.u8BufSize = 65;
        MOVS     R0,#+65
        STRB     R0,[R1, #+8]
// 1475 }
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable113:
        DATA32
        DC32     ?_57
// 1476 
// 1477 /************************************************************************************
// 1478 * main_menu
// 1479 *
// 1480 * This function displays the main menu for the serial interface and waits until the 
// 1481 * user select an option.
// 1482 *
// 1483 ************************************************************************************/
// 1484 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1485 char main_menu(){
main_menu:
        PUSH     {R4,LR}
// 1486   Uart_Print("\r ______________________________________\n");
        LDR      R4,??DataTable117_1
        MOVS     R0,R4
        BL       Uart_Print
// 1487   Uart_Print("\r|                                      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+44
        BL       Uart_Print
// 1488   Uart_Print("\r|    Connectivity Test Interface    |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+88
        BL       Uart_Print
// 1489   Uart_Print("\r|______________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+128
        BL       Uart_Print
// 1490   Uart_Print("\r      1 - CHANGE CHANNEL\n");
        Nop      
        ADR.N    R0,?_59
        BL       Uart_Print
// 1491   Uart_Print("\r      2 - ADJUST OUTPUT POWER\n");
        Nop      
        ADR.N    R0,?_60
        BL       Uart_Print
// 1492   Uart_Print("\r      3 - SELECT TEST MODE\n");
        Nop      
        ADR.N    R0,?_61
        BL       Uart_Print
// 1493   Uart_Print("\r      4 - ADJUST CLOCK SETTINGS\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+172
        BL       Uart_Print
// 1494   Uart_Print("\r      Note: Case sensitive.");
        Nop      
        ADR.N    R0,?_62
        BL       Uart_Print
// 1495   Uart_Print("\r\n\n Please select an option:  ");
        LDR      R0,??DataTable118
        B.N      ?Subroutine1
// 1496   return Uart_getchar(mUARTRxBuffer);
// 1497 }

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
// 1498 
// 1499 /************************************************************************************
// 1500 * channel_menu
// 1501 *
// 1502 * This function displays the possible channels when the channel option is selected 
// 1503 * and waits for a user selection.
// 1504 *
// 1505 ************************************************************************************/
// 1506 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1507 char channel_menu(void){
channel_menu:
        PUSH     {R3-R5,LR}
// 1508   Uart_Print("\r\n     ___________________________________ \n");
        LDR      R4,??DataTable118_1
        MOVS     R0,R4
        BL       Uart_Print
// 1509   Uart_Print("\r    |                                   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+48
        BL       Uart_Print
// 1510   Uart_Print("\r    |      Channel Adjustment Menu      |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+92
        BL       Uart_Print
// 1511   Uart_Print("\r    |___________________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+136
        BL       Uart_Print
// 1512   Uart_Print("\r    Current Channel: ");
        Nop      
        ADR.N    R0,?_64
        BL       Uart_Print
// 1513   PrintChannel(u8TestModeChannel);
        LDR      R5,??DataTable118_2
        LDRB     R0,[R5, #+21]
        BL       PrintChannel
// 1514   Uart_Print("\n");
        LDR      R0,??DataTable118_3
        BL       Uart_Print
// 1515   Uart_Print("\r      0 - CHANNEL 11");
        ADR.N    R0,?_66
        BL       Uart_Print
// 1516   Uart_Print("      8 - CHANNEL 19\n");
        LDR      R0,??DataTable118_4
        BL       Uart_Print
// 1517   Uart_Print("\r      1 - CHANNEL 12");
        LDR      R0,??DataTable118_5
        BL       Uart_Print
// 1518   Uart_Print("      9 - CHANNEL 20\n");
        LDR      R0,??DataTable118_6
        BL       Uart_Print
// 1519   Uart_Print("\r      2 - CHANNEL 13");
        ADR.N    R0,?_70
        BL       Uart_Print
// 1520   Uart_Print("      A - CHANNEL 21\n");
        LDR      R0,??DataTable118_7
        BL       Uart_Print
// 1521   Uart_Print("\r      3 - CHANNEL 14");
        LDR      R0,??DataTable118_8
        BL       Uart_Print
// 1522   Uart_Print("      B - CHANNEL 22\n");
        LDR      R0,??DataTable118_9
        BL       Uart_Print
// 1523   Uart_Print("\r      4 - CHANNEL 15");
        ADR.N    R0,?_74
        BL       Uart_Print
// 1524   Uart_Print("      C - CHANNEL 23\n");
        LDR      R0,??DataTable119
        BL       Uart_Print
// 1525   Uart_Print("\r      5 - CHANNEL 16");
        LDR      R0,??DataTable119_1
        BL       Uart_Print
// 1526   Uart_Print("      D - CHANNEL 24\n");
        LDR      R0,??DataTable119_2
        BL       Uart_Print
// 1527   Uart_Print("\r      6 - CHANNEL 17");
        ADR.N    R0,?_78
        BL       Uart_Print
// 1528   Uart_Print("      E - CHANNEL 25\n");  
        LDR      R0,??DataTable119_3
        BL       Uart_Print
// 1529   Uart_Print("\r      7 - CHANNEL 18");
        LDR      R0,??DataTable119_4
        BL       Uart_Print
// 1530   if(gPowerLevelLock_c == FALSE)
// 1531   {
// 1532     Uart_Print("      F - CHANNEL 26\n");      
        LDR      R0,??DataTable120
        B.N      ??Subroutine0_0
// 1533   }
// 1534   else
// 1535   {
// 1536     Uart_Print("\n");
// 1537   }
// 1538   Uart_Print("\r      p - Previous Menu\n");      
// 1539   Uart_Print("\r\n    Please select an option:  ");
// 1540   return Uart_getchar(mUARTRxBuffer);
// 1541 }

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
// 1542 
// 1543 
// 1544 /************************************************************************************
// 1545 * test_mode_rx_menu
// 1546 *
// 1547 * This function displays the test mode options when the SELECT TEST MODE is 
// 1548 * selected.
// 1549 *
// 1550 ************************************************************************************/
// 1551 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1552 char test_mode_rx_menu(void){
test_mode_rx_menu:
        PUSH     {R3-R5,LR}
// 1553   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,R4
        BL       Uart_Print
// 1554   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1555   Uart_Print("\r    |   Reception Tests Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1556   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1557   Uart_Print("\r    Current Test Mode: ");
        LDR      R0,??DataTable120_2
        BL       Uart_Print
// 1558   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable118_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1559   Uart_Print("\r\n      I - IDLE\n");
        LDR      R0,??DataTable120_3
        BL       Uart_Print
// 1560   Uart_Print("\r      R - RECEPTION\n");
        Nop      
        ADR.N    R0,?_85
        BL       Uart_Print
// 1561   Uart_Print("\r      P - PACKET ERROR RATE RECEIVER\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+144
        BL       Uart_Print
// 1562   Uart_Print("\r      r - RANGE TEST RECEIVER\n");
        Nop      
        ADR.N    R0,?_86
        B.N      ??Subroutine0_0
// 1563   Uart_Print("\r      p - Previous Menu\n");      
// 1564   Uart_Print("\r\n\n    Please select an option:  ");
// 1565   return Uart_getchar(mUARTRxBuffer);
// 1566 }

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
// 1567 
// 1568 /************************************************************************************
// 1569 * test_mode_tx_menu
// 1570 *
// 1571 * This function displays the test mode options when the SELECT TEST MODE is 
// 1572 * selected.
// 1573 *
// 1574 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1575 char test_mode_tx_menu(void){
test_mode_tx_menu:
        PUSH     {R3-R5,LR}
// 1576   Uart_Print("\r\n     _____________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,R4
        ADDS     R0,R0,#+220
        BL       Uart_Print
// 1577   Uart_Print("\r    |                             |\n");
        MOVS     R0,#+130
        LSLS     R0,R0,#+1        ;; #+260
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1578   Uart_Print("\r    |   Transmission Tests Menu   |\n");
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1579   Uart_Print("\r    |_____________________________|\n\n");  
        MOVS     R0,#+170
        LSLS     R0,R0,#+1        ;; #+340
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1580   Uart_Print("\r    Current Test Mode: ");
        Nop      
        ADR.N    R0,?_83
        BL       Uart_Print
// 1581   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable118_2
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1582   Uart_Print("\r\n      I - IDLE\n");
        Nop      
        ADR.N    R0,?_84
        BL       Uart_Print
// 1583   Uart_Print("\r      T - CONTINUOUS TRANSMISSION\n");
        MOVS     R0,#+190
        LSLS     R0,R0,#+1        ;; #+380
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1584   Uart_Print("\r      P - PACKET ERROR RATE TRANSMITTER\n");
        MOVS     R0,#+208
        LSLS     R0,R0,#+1        ;; #+416
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1585   Uart_Print("\r      r - RANGE TEST TRANSMITTER\n");
        MOVS     R0,#+230
        LSLS     R0,R0,#+1        ;; #+460
        B.N      ?Subroutine0
// 1586   Uart_Print("\r      p - Previous Menu\n");      
// 1587   Uart_Print("\r\n\n    Please select an option:  ");
// 1588   return Uart_getchar(mUARTRxBuffer);
// 1589 }

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
// 1590 
// 1591 
// 1592 /************************************************************************************
// 1593 * select_test_mode_menu
// 1594 *
// 1595 * This function displays the option to select between TX and RX mode
// 1596 *
// 1597 ************************************************************************************/
// 1598 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1599 char select_test_mode_menu(void){
select_test_mode_menu:
        PUSH     {R4,LR}
// 1600   Uart_Print("\r\n     __________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,R4
        BL       Uart_Print
// 1601   Uart_Print("\r    |                          |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1602   Uart_Print("\r    |   TX / RX Menu   |\n");
        Nop      
        ADR.N    R0,?_87
        BL       Uart_Print
// 1603   Uart_Print("\r    |__________________________|\n\n");  
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1604   Uart_Print("\r      R - RECEIVER MODE \n");
        Nop      
        ADR.N    R0,?_88
        BL       Uart_Print
// 1605   Uart_Print("\r      T - TRANSMITTER MODE \n");
        Nop      
        ADR.N    R0,?_89
        BL       Uart_Print
// 1606   Uart_Print("\r      p - Previous Menu\n");      
        LDR      R0,??DataTable121
        BL       Uart_Print
// 1607   Uart_Print("\r\n\n    Please select an option:  ");
        MOVS     R0,R4
        ADDS     R0,R0,#+184
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1608   return Uart_getchar(mUARTRxBuffer);
// 1609 }

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
// 1610 
// 1611 /************************************************************************************
// 1612 * test_transmission_menu
// 1613 *
// 1614 * This function displays the transmissions options when the transmission option 
// 1615 * is selected in the main menu.
// 1616 *
// 1617 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1618 char test_transmission_menu(void)
// 1619 {
test_transmission_menu:
        PUSH     {R3-R5,LR}
// 1620   Uart_Print("\r\n     ______________________________________\n");
        LDR      R4,??DataTable120_1
        MOVS     R0,#+248
        LSLS     R0,R0,#+1        ;; #+496
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1621   Uart_Print("\r    |                                      |\n");
        MOVS     R0,#+136
        LSLS     R0,R0,#+2        ;; #+544
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1622   Uart_Print("\r    |  Continuous Transmission Tests Menu  |\n");
        MOVS     R0,#+148
        LSLS     R0,R0,#+2        ;; #+592
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1623   Uart_Print("\r    |______________________________________|\n\n");  
        MOVS     R0,#+160
        LSLS     R0,R0,#+2        ;; #+640
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1624   Uart_Print("\r    Current Transmission Test: ");
        MOVS     R0,#+172
        LSLS     R0,R0,#+2        ;; #+688
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1625   PrintTestMode(u8CurrentMode);
        LDR      R5,??DataTable123
        LDRB     R0,[R5, #+20]
        BL       PrintTestMode
// 1626   Uart_Print("\r      S - PULSE PSEUDO RANDOM BINARY SEQUENCE TRANSMISSION\n");
        MOVS     R0,#+181
        LSLS     R0,R0,#+2        ;; #+724
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1627   Uart_Print("\r      M - MODULATED TRANSMISSION\n");  
        MOVS     R0,#+197
        LSLS     R0,R0,#+2        ;; #+788
        ADDS     R0,R4,R0
        BL       Uart_Print
// 1628   Uart_Print("\r      U - UNMODULATED TRANSMISSION\n");
        MOVS     R0,#+206
        LSLS     R0,R0,#+2        ;; #+824
        Nop      
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1629   Uart_Print("\r      p - Previous Menu\n");      
// 1630   Uart_Print("\r\n\n    Please select an option:  ");
// 1631   return Uart_getchar(mUARTRxBuffer);
// 1632 }

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
// 1633 
// 1634 
// 1635 /************************************************************************************
// 1636 * clock_settings_menu
// 1637 *
// 1638 * This function displays a menu with the clock settings options and waits for a 
// 1639 * user selection.
// 1640 *
// 1641 ************************************************************************************/
// 1642 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1643 char clock_setting_menu(void)
// 1644 {
clock_setting_menu:
        PUSH     {R7,LR}
// 1645   Uart_Print("\r\n     _____________________");
        Nop      
        ADR.N    R0,?_90
        BL       Uart_Print
// 1646   Uart_Print("\r\n    |                     |");
        Nop      
        ADR.N    R0,?_91
        BL       Uart_Print
// 1647   Uart_Print("\r\n    | Clock Settings Menu |");
        Nop      
        ADR.N    R0,?_92
        BL       Uart_Print
// 1648   Uart_Print("\r\n    |_____________________|\n\n");  
        LDR      R0,??DataTable123_1
        BL       Uart_Print
// 1649   Uart_Print("\r    1 - Set Bulk 4 pF CAP.\n");
        LDR      R0,??DataTable123_2
        BL       Uart_Print
// 1650   Uart_Print("\r    2 - Adjust COARSE TUNE\n");
        LDR      R0,??DataTable123_3
        BL       Uart_Print
// 1651   Uart_Print("\r    3 - Adjust FINE TUNE \n");
        ADR.N    R0,?_96
        BL       Uart_Print
// 1652   Uart_Print("\r    p - Previous Menu\n");
        LDR      R0,??DataTable123_4
        BL       Uart_Print
// 1653   Uart_Print("\r\n    Please select an option:  ");
        LDR      R0,??DataTable123_5
        BL       Uart_Print
// 1654   return Uart_getchar(mUARTRxBuffer);
        LDR      R0,??DataTable122
        BL       Uart_getchar
        POP      {R1,R3}
        BX       R3               ;; return
// 1655 }

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
// 1656 
// 1657 /************************************************************************************
// 1658 * bulk_cap_menu
// 1659 *
// 1660 * The bulk_cap_menu shows the two possible bulk capacitor states and waits until
// 1661 * the user selects an option.
// 1662 *
// 1663 ************************************************************************************/
// 1664 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1665 char bulk_cap_menu(void)
// 1666 {
bulk_cap_menu:
        PUSH     {R4,LR}
// 1667   Uart_Print("\r\n\nBulk 4 Capacitor Menu\n\n");
        Nop      
        ADR.N    R0,?_98
        BL       Uart_Print
// 1668   Uart_Print("\r\n   Current Bulk Capacitor State:");
        LDR      R0,??DataTable124
        BL       Uart_Print
// 1669   if(gEnable_c == u8BulkCapState){
        LDR      R4,??DataTable123
        LDRB     R0,[R4, #+26]
        CMP      R0,#+1
        BNE      ??bulk_cap_menu_0
// 1670     Uart_Print("  Enable\n\n");
        ADR.N    R0,?_99
        B        ??bulk_cap_menu_1
// 1671   }
// 1672   else{
// 1673     Uart_Print("  Disable\n\n");    
??bulk_cap_menu_0:
        ADR.N    R0,?_100
??bulk_cap_menu_1:
        BL       Uart_Print
// 1674   }
// 1675   Uart_Print("\r   E - Enable Capacitor.\n");
        Nop      
        ADR.N    R0,?_101
        BL       Uart_Print
// 1676   Uart_Print("\r   D - Disable Capacitor\n");
        Nop      
        ADR.N    R0,?_102
        BL       Uart_Print
// 1677   Uart_Print("\r   p - Previous Menu\n");
        LDR      R0,??DataTable126
        BL       Uart_Print
// 1678   Uart_Print("\r\nPlease select an option:  ");
        ADR.N    R0,?_104
        BL       Uart_Print
// 1679   return Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        B.N      ??Subroutine3_0
// 1680 }

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
// 1681 
// 1682 /************************************************************************************
// 1683 * channel_adjust
// 1684 *
// 1685 * This function updates the channel with the value selected by the user.
// 1686 *
// 1687 ************************************************************************************/
// 1688 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1689 void channel_adjust(void){
channel_adjust:
        PUSH     {R3-R7,LR}
// 1690   char option, hexOption;
// 1691   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable123
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable127
// 1692   do{
// 1693     option = channel_menu();
??channel_adjust_0:
        BL       channel_menu
        MOVS     R5,R0
// 1694     hexOption = AsciitoHex(option);
        BL       AsciitoHex
        MOVS     R6,R0
// 1695     
// 1696     if(PreviousMenu != hexOption)
        CMP      R0,#+112
        BEQ      ??channel_adjust_1
// 1697     {
// 1698       MLMETestMode(SMAC_TEST_MODE_IDLE);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1699       DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
// 1700       if (gSuccess_c == MLMESetChannelRequest((channel_num_t)hexOption))
        MOVS     R0,R6
        BL       MLMESetChannelRequest
        CMP      R0,#+0
        BNE      ??channel_adjust_2
// 1701       {  
// 1702         u8TestModeChannel = (channel_num_t)hexOption;
        STRB     R6,[R4, #+21]
        B        ??channel_adjust_3
// 1703       }
// 1704       else
// 1705       {
// 1706         Uart_Print("  Invalid Option!!!");  
??channel_adjust_2:
        MOVS     R0,R7
        BL       Uart_Print
// 1707       }
// 1708       MLMETestMode(u8CurrentMode);
??channel_adjust_3:
        LDRB     R0,[R4, #+20]
        BL       MLMETestMode
// 1709       
// 1710     }
// 1711   }while(option != PreviousMenu);
??channel_adjust_1:
        CMP      R5,#+112
        BNE      ??channel_adjust_0
// 1712 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable122:
        DATA32
        DC32     c_test_num+0x20
// 1713 
// 1714 /************************************************************************************
// 1715 * power_adjust
// 1716 *
// 1717 * This function change the power value to the power selected by the user in the
// 1718 * serial interface
// 1719 *
// 1720 ************************************************************************************/
// 1721 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1722 void power_adjust(void){
power_adjust:
        PUSH     {R4-R6,LR}
// 1723   uint8_t u8TempPower;
// 1724   CurrentOption = gPower_c;
        LDR      R5,??DataTable123
        MOVS     R0,#+1
        STRB     R0,[R5, #+23]
// 1725   Uart_Print("\r\n     ___________________________\n");
        LDR      R4,??DataTable128
        MOVS     R0,R4
        BL       Uart_Print
// 1726   Uart_Print("\r    |                           |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+36
        BL       Uart_Print
// 1727   Uart_Print("\r    |   Power Adjustment Menu   |\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+72
        BL       Uart_Print
// 1728   Uart_Print("\r    |___________________________|\n\n");
        MOVS     R0,R4
        ADDS     R0,R0,#+108
        BL       Uart_Print
// 1729   Uart_Print("\r    Current Power: ");
        ADR.N    R0,?_106
        BL       Uart_Print
// 1730   Uart_PrintHex(&u8TestModePower, 1,gPrtHexNewLine_c);
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R5
        ADDS     R0,R0,#+22
        BL       Uart_PrintHex
// 1731 
// 1732   if(gPowerLevelLock_c)
// 1733   {
// 1734     Uart_Print("\r\nPlease enter the new Power, possible values 0x00 to 0x07 or 0x0C: ");
// 1735   }
// 1736   else
// 1737   {
// 1738     Uart_Print("\r\nPlease enter the new Power, 0x00 for minimum and to 0x11 for maximum: ");
        MOVS     R0,R4
        ADDS     R0,R0,#+148
        BL       Uart_Print
// 1739   } 
// 1740   
// 1741   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1742   
// 1743   u8TempPower = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 1744     
// 1745   u8TempPower = (u8TempPower << 4);
// 1746   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R5
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1747   u8TempPower |= AsciitoHex(mUARTRxBuffer[0]);  
        LSLS     R6,R6,#+4
        MOVS     R0,#+32
        LDRB     R0,[R5, R0]
        BL       AsciitoHex
        ORRS     R0,R0,R6
        MOVS     R6,R0
// 1748   
// 1749   
// 1750   if(gSuccess_c == MLMEPAOutputAdjust(u8TempPower))
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       MLMEPAOutputAdjust
        CMP      R0,#+0
        BNE      ??power_adjust_0
// 1751   {
// 1752     u8TestModePower = u8TempPower;
        STRB     R6,[R5, #+22]
// 1753     Uart_Print("\n");
        LDR      R0,??DataTable128_1
        B        ??power_adjust_1
// 1754   }
// 1755   else
// 1756   {
// 1757     Uart_Print("\r\n    Incorrect value!!!");  
??power_adjust_0:
        ADR.N    R0,?_107
        BL       Uart_Print
// 1758     Uart_Print("\r\n        On normal mode the value must be between 0x00 to 0x11");
        MOVS     R0,R4
        ADDS     R0,R0,#+224
        BL       Uart_Print
// 1759     Uart_Print("\r\n        When PA Lock mode is enable valid values are: 0x00 to 0x07 and 0x0C");
        MOVS     R0,#+144
        LSLS     R0,R0,#+1        ;; #+288
        ADDS     R0,R4,R0
??power_adjust_1:
        BL       Uart_Print
// 1760   }
// 1761 }
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
// 1762 
// 1763 /************************************************************************************
// 1764 * test_mode_rx_adjust
// 1765 *
// 1766 * In this function the current test mode is adjusted to the new value selected by the 
// 1767 * user in the serial interface.
// 1768 *
// 1769 ************************************************************************************/
// 1770 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1771 void test_mode_rx_adjust(void)
// 1772 {
test_mode_rx_adjust:
        PUSH     {R3-R7,LR}
// 1773   char option;
// 1774   CurrentOption = gRxTestMode_c;
        LDR      R4,??DataTable128_2
        MOVS     R0,#+2
        STRB     R0,[R4, #+23]
        LDR      R7,??DataTable128_3
        MOVS     R5,#+0
// 1775   do{
// 1776     option = test_mode_rx_menu();
??test_mode_rx_adjust_0:
        BL       test_mode_rx_menu
        MOVS     R6,R0
// 1777     switch(option)
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
// 1778     {
// 1779       case IdleTest:
// 1780         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_rx_adjust_1:
        STRB     R5,[R4, #+20]
// 1781         MLMETestMode(u8CurrentMode);
        MOVS     R0,#+0
        BL       MLMETestMode
// 1782         break;
        B        ??test_mode_rx_adjust_4
// 1783       case ReceptionTest:
// 1784         Uart_Print("\r\nPress Q to exit from Continuous Reception Mode");
??test_mode_rx_adjust_3:
        MOVS     R0,R7
        BL       Uart_Print
// 1785         Uart_Print("\r\nPress any key to start.....");
        LDR      R0,??DataTable128_4
        BL       Uart_Print
// 1786         Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 1787         u8CurrentMode = SMAC_CONTINUOUS_RX;
        MOVS     R0,#+1
        STRB     R0,[R4, #+20]
// 1788         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1789         MLMERXEnableRequest(&RX_msg, 0x0000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1790         do
// 1791         {
// 1792             (void)process_radio_msg();
??test_mode_rx_adjust_7:
        BL       process_radio_msg
// 1793             if(TRUE == gbDataIndicationFlag)
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??test_mode_rx_adjust_8
// 1794             {
// 1795               gbDataIndicationFlag = FALSE;
        STRB     R5,[R4, #+27]
// 1796               process_incoming_msg();
        BL       process_incoming_msg
// 1797             }
// 1798           
// 1799 #if OTAP_ENABLED == TRUE
// 1800           if(gbOtapExecute)
// 1801           {
// 1802             OTAP_execute();        
// 1803           }
// 1804           else
// 1805 #endif
// 1806           {          
// 1807             if(is_rx_msg_final_state(RX_msg))
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
// 1808             {
// 1809               RX_msg.u8BufSize = RX_SIZE;
??test_mode_rx_adjust_9:
        MOVS     R0,#+70
        STRB     R0,[R4, #+12]
// 1810               MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 1811             }
// 1812           }
// 1813           Uart_Poll(mUARTRxBuffer);
??test_mode_rx_adjust_10:
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_Poll
// 1814           }
// 1815         while (mUARTRxBuffer[0] != Exit);   
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        CMP      R0,#+81
        BNE      ??test_mode_rx_adjust_7
        B        ??test_mode_rx_adjust_4
// 1816         break;
// 1817         
// 1818       case PacketErrorRateTest:
// 1819         packet_error_rate_rx_test();
??test_mode_rx_adjust_2:
        BL       packet_error_rate_rx_test
// 1820         break;
        B        ??test_mode_rx_adjust_4
// 1821       case RangeTest:
// 1822         range_rx_test();
??test_mode_rx_adjust_5:
        BL       range_rx_test
// 1823         break;
        B        ??test_mode_rx_adjust_4
// 1824       case PreviousMenu:
// 1825         break; 
// 1826         
// 1827       default:
// 1828         Uart_Print("  Invalid Option!!!");
??test_mode_rx_adjust_6:
        LDR      R0,??DataTable127
        BL       Uart_Print
// 1829         break;
// 1830     }
// 1831   }while(option != PreviousMenu);
??test_mode_rx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_rx_adjust_0
// 1832 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable124:
        DATA32
        DC32     ?_31
// 1833 
// 1834 /************************************************************************************
// 1835 * test_mode_tx_adjust
// 1836 *
// 1837 * In this function the current test mode is adjusted to the new value selected by the 
// 1838 * user in the serial interface.
// 1839 *
// 1840 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1841 void test_mode_tx_adjust(void){
test_mode_tx_adjust:
        PUSH     {R4-R6,LR}
// 1842   char option;
// 1843   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable128_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable127
// 1844   do{
// 1845     option = test_mode_tx_menu();
??test_mode_tx_adjust_0:
        BL       test_mode_tx_menu
        MOVS     R6,R0
// 1846     switch(option)
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
// 1847     {
// 1848       case IdleTest:
// 1849         u8CurrentMode = SMAC_TEST_MODE_IDLE;
??test_mode_tx_adjust_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
// 1850         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1851         break;
        B        ??test_mode_tx_adjust_4
// 1852       case TransmissionTest:  
// 1853         cont_transmission_test_adjust();
??test_mode_tx_adjust_3:
        BL       cont_transmission_test_adjust
// 1854         break;
        B        ??test_mode_tx_adjust_4
// 1855       case PacketErrorRateTest:
// 1856         packet_error_rate_tx_test();
??test_mode_tx_adjust_2:
        BL       packet_error_rate_tx_test
// 1857         break;
        B        ??test_mode_tx_adjust_4
// 1858       case RangeTest:
// 1859         range_tx_test();
??test_mode_tx_adjust_5:
        BL       range_tx_test
// 1860         break;
        B        ??test_mode_tx_adjust_4
// 1861       case PreviousMenu:
// 1862         break;      
// 1863       default:
// 1864         Uart_Print("  Invalid Option!!!");
??test_mode_tx_adjust_6:
        MOVS     R0,R5
        BL       Uart_Print
// 1865         break;
// 1866     }
// 1867   }while(option != PreviousMenu);
??test_mode_tx_adjust_4:
        CMP      R6,#+112
        BNE      ??test_mode_tx_adjust_0
// 1868 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1869 
// 1870 
// 1871 /************************************************************************************
// 1872 * tx_rx_select
// 1873 *
// 1874 * This function select between transmitter and receiver mode
// 1875 *
// 1876 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1877 void tx_rx_select(void)
// 1878 {
tx_rx_select:
        PUSH     {R3-R5,LR}
        LDR      R4,??DataTable127
// 1879   char option;
// 1880   do
// 1881   {
// 1882     option = select_test_mode_menu();
??tx_rx_select_0:
        BL       select_test_mode_menu
        MOVS     R5,R0
// 1883     switch(option)
        CMP      R0,#+82
        BEQ      ??tx_rx_select_1
        CMP      R0,#+84
        BNE      ??tx_rx_select_2
// 1884     {
// 1885       case TransmissionTest:
// 1886         test_mode_tx_adjust();   
        BL       test_mode_tx_adjust
// 1887         break;
        B        ??tx_rx_select_3
// 1888         
// 1889       case ReceptionTest:
// 1890         test_mode_rx_adjust();     
??tx_rx_select_1:
        BL       test_mode_rx_adjust
// 1891         break;          
        B        ??tx_rx_select_3
// 1892         
// 1893       default:
// 1894         Uart_Print("  Invalid Option!!!");
??tx_rx_select_2:
        MOVS     R0,R4
        BL       Uart_Print
// 1895         break;
// 1896     }
// 1897   }while(option != PreviousMenu);
??tx_rx_select_3:
        CMP      R5,#+112
        BNE      ??tx_rx_select_0
// 1898 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable126:
        DATA32
        DC32     ?_103
// 1899 
// 1900 
// 1901 
// 1902 /************************************************************************************
// 1903 * cont_transmission_test_adjust
// 1904 *
// 1905 * This function execute a specific transmission mode: modulated, unmodulated or 
// 1906 * the pseudo random binary sequence.
// 1907 *
// 1908 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1909 void cont_transmission_test_adjust(void)
// 1910 {
cont_transmission_test_adjust:
        PUSH     {R4-R6,LR}
// 1911   char option;
// 1912   CurrentOption = gTxTestMode_c;
        LDR      R4,??DataTable128_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+23]
        LDR      R5,??DataTable127
// 1913   
// 1914   do
// 1915   {
// 1916     option = test_transmission_menu();
??cont_transmission_test_adjust_0:
        BL       test_transmission_menu
        MOVS     R6,R0
// 1917     switch(option)
        CMP      R0,#+77
        BEQ      ??cont_transmission_test_adjust_1
        CMP      R0,#+83
        BEQ      ??cont_transmission_test_adjust_2
        CMP      R0,#+85
        BEQ      ??cont_transmission_test_adjust_3
        CMP      R0,#+112
        BEQ      ??cont_transmission_test_adjust_4
        B        ??cont_transmission_test_adjust_5
// 1918     {
// 1919       case PRBS9TxTest:
// 1920         pulse_prbs9_tx();
??cont_transmission_test_adjust_2:
        BL       pulse_prbs9_tx
// 1921         break;
        B        ??cont_transmission_test_adjust_4
// 1922       case ModulatedTxTest:
// 1923         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_MOD;
??cont_transmission_test_adjust_1:
        MOVS     R0,#+4
        B.N      ??cont_transmission_test_adjust_6
// 1924         MLMETestMode(u8CurrentMode);        
// 1925         break;        
// 1926       case UnmodulatedTxTest:
// 1927         u8CurrentMode = SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD;
??cont_transmission_test_adjust_3:
        MOVS     R0,#+5
??cont_transmission_test_adjust_6:
        STRB     R0,[R4, #+20]
// 1928         MLMETestMode(u8CurrentMode);
        BL       MLMETestMode
// 1929         break;  
        B        ??cont_transmission_test_adjust_4
// 1930     case PreviousMenu:
// 1931         break;      
// 1932       default:
// 1933         Uart_Print("  Invalid Option!!!");
??cont_transmission_test_adjust_5:
        MOVS     R0,R5
        BL       Uart_Print
// 1934         break;
// 1935     }
// 1936   }while(option != PreviousMenu);
??cont_transmission_test_adjust_4:
        CMP      R6,#+112
        BNE      ??cont_transmission_test_adjust_0
// 1937 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable127:
        DATA32
        DC32     ?_105
// 1938 
// 1939 
// 1940 /************************************************************************************
// 1941 * pulse_prbs9_tx
// 1942 *
// 1943 * This function performs the transmission process for the pseudo random binary 
// 1944 * sequence.
// 1945 *
// 1946 ***********************************************************************************/
// 1947 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1948 void pulse_prbs9_tx(void)
// 1949 {
pulse_prbs9_tx:
        PUSH     {R3-R7,LR}
// 1950   static prbs9_tx_states_t u8AppState;
// 1951   static uint16_t u16DutyCicleCounter;
// 1952   
// 1953 #if INTERFACE_TYPE == MANUAL 
// 1954   if(FALSE == gu8TestAlreadyStarted)
        MOVS     R4,#+0
        LDR      R5,??DataTable129
        LDR      R7,??DataTable128_2
        LDRB     R0,[R7, #+31]
        CMP      R0,#+0
        BNE      ??pulse_prbs9_tx_0
// 1955   {
// 1956        TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R5, #+0]
// 1957       u8AppState = INIT_PRBS9_TX_ST;
        STRB     R4,[R5, #+16]
// 1958   }  
// 1959 #endif  
// 1960 
// 1961 
// 1962 #if INTERFACE_TYPE == SERIAL
// 1963   u8CurrentMode = SMAC_TEST_MODE_PULSE_PRBS9_TX;
// 1964   TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
// 1965   u8AppState =  INIT_PRBS9_TX_ST;
// 1966   MLMETestMode(u8CurrentMode);
// 1967   Uart_Print("\r\nPress Q to exit from Transmission PRBS9 Mode");
// 1968   Uart_Print("\r\nPress any key to start.....");
// 1969   Uart_getchar(mUARTRxBuffer);
// 1970   do  
// 1971   {
// 1972 #endif        
// 1973         
// 1974     (void)process_radio_msg();
??pulse_prbs9_tx_0:
        BL       process_radio_msg
// 1975     switch(u8AppState)
        MOVS     R6,#+1
        LDRB     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ      ??pulse_prbs9_tx_1
        CMP      R0,#+1
        BEQ      ??pulse_prbs9_tx_2
        B        ??pulse_prbs9_tx_3
// 1976     {
// 1977       case INIT_PRBS9_TX_ST:
// 1978       {
// 1979         LoadPRBS9();
??pulse_prbs9_tx_1:
        BL       LoadPRBS9
// 1980         u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1981         u8AppState = TRANSMIT_PRBS9_TX_ST;
        STRB     R6,[R5, #+16]
// 1982       }
// 1983       break;
        B        ??pulse_prbs9_tx_3
// 1984       
// 1985       case TRANSMIT_PRBS9_TX_ST:
// 1986       {
// 1987         if(is_tx_msg_final_state(TX_msg))
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
// 1988         {
// 1989           u16DutyCicleCounter++;
??pulse_prbs9_tx_4:
        LDRH     R0,[R5, #+20]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+20]
// 1990           if(u16DutyCicleCounter == DUTY_CICLE_TIME)
        LDR      R1,??DataTable130  ;; 0x79e
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??pulse_prbs9_tx_3
// 1991           {
// 1992             u16DutyCicleCounter = 0;
        STRH     R4,[R5, #+20]
// 1993             MCPSDataRequest(&TX_msg);
        MOVS     R0,R5
        BL       MCPSDataRequest
// 1994           }
// 1995         }
// 1996       }
// 1997       
// 1998       default:
// 1999       break;
// 2000     }
// 2001          
// 2002 #if INTERFACE_TYPE == SERIAL    
// 2003     Uart_Poll(mUARTRxBuffer);
// 2004   }while (mUARTRxBuffer[0] != Exit); 
// 2005   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2006   MLMETestMode(u8CurrentMode);
// 2007 #endif
// 2008 
// 2009 #if INTERFACE_TYPE == MANUAL      
// 2010   gu8TestAlreadyStarted = TRUE;
??pulse_prbs9_tx_3:
        STRB     R6,[R7, #+31]
// 2011 #endif
// 2012 }
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
// 2013 
// 2014 /************************************************************************************
// 2015 * packet_error_rate_tx_test
// 2016 *
// 2017 * This function performs the packet error rate transmission process.
// 2018 *
// 2019 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2020 void packet_error_rate_tx_test(void)
// 2021 {
packet_error_rate_tx_test:
        PUSH     {R3-R7,LR}
// 2022   static per_tx_states_t u8AppState;
// 2023   static uint16_t u16MsgCount;
// 2024   static uint16_t u16DoneCount;
// 2025   uint32_t u32NumTransmissions;
// 2026 
// 2027 #if   INTERFACE_TYPE == SERIAL
// 2028   uint8_t u8InvalidCharFlag = FALSE;
// 2029 #endif
// 2030   
// 2031 #if   INTERFACE_TYPE == SERIAL
// 2032   uint8_t u8Count;
// 2033   uint8_t u8TempNumTx[5];
// 2034 #endif
// 2035   
// 2036   u32NumTransmissions = NUM_TRANSMISSIONS;
// 2037 
// 2038 #if INTERFACE_TYPE == SERIAL
// 2039   u8AppState = IDLE_PER_TX_ST;   
// 2040   u8CurrentMode = SMAC_TEST_MODE_PER_TX;
// 2041   do{
// 2042 #endif
// 2043 
// 2044 #if INTERFACE_TYPE == MANUAL 
// 2045   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable129
        LDR      R5,??DataTable130_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??packet_error_rate_tx_test_0
// 2046   {
// 2047     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDRB     R0,[R5, #+28]
        MOVS     R1,#+247
        ANDS     R1,R1,R0
        STRB     R1,[R5, #+28]
// 2048     TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+0]
// 2049     LEDs_TX_INIT(250);  
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
// 2050     u8AppState = INIT_PER_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+17]
// 2051     gu8TestAlreadyStarted = TRUE;
        STRB     R0,[R5, #+31]
// 2052 #if (gLCDSupported_d) 
// 2053     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable130_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2054     LCD_WriteString_NormalFont(4,"PER Transmitting..");
        LDR      R1,??DataTable130_3
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2055 #endif    
// 2056   }
// 2057 #endif
// 2058     
// 2059     (void)process_radio_msg();
??packet_error_rate_tx_test_0:
        BL       process_radio_msg
// 2060     if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_1
// 2061     {
// 2062       gbDataIndicationFlag = FALSE;
        STRB     R6,[R5, #+27]
// 2063       process_incoming_msg();
        BL       process_incoming_msg
// 2064     }
// 2065     
// 2066 #if INTERFACE_TYPE == MANUAL    
// 2067     if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_tx_test_1:
        LDRB     R0,[R5, #+31]
        CMP      R0,#+1
        BNE      ??packet_error_rate_tx_test_2
// 2068     {
// 2069 #endif      
// 2070     switch(u8AppState){
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
// 2071       case IDLE_PER_TX_ST:
// 2072       {
// 2073 #if INTERFACE_TYPE == SERIAL          
// 2074         Uart_Print("\r\n    ****************************");
// 2075         Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2076         Uart_Print("\r\n    ****************************");
// 2077         Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2078         Uart_Print("\r\nPress Enter. Packets to transmit: ");
// 2079         Uart_PrintShortDec((uint16_t)NUM_TRANSMISSIONS);
// 2080         do
// 2081         {
// 2082          uint8_t i;
// 2083          uint8_t u8Shift;
// 2084           Uart_Print("\r\n\n  Number of packets in decimal: ");
// 2085           u8Count = 0;
// 2086           u8InvalidCharFlag = FALSE;
// 2087 
// 2088           u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2089                     
// 2090           while((u8TempNumTx[u8Count]!= 0x0D) &&(u8Count < 5) && (u8TempNumTx[u8Count]!= Exit))
// 2091           { 
// 2092             if((0x3A < u8TempNumTx[u8Count]))
// 2093             {
// 2094               u8InvalidCharFlag = TRUE;
// 2095             }
// 2096             else if(0x30 > u8TempNumTx[u8Count])
// 2097             {
// 2098               u8InvalidCharFlag = TRUE;
// 2099             }
// 2100 
// 2101             u8Count ++;
// 2102             u8TempNumTx[u8Count]= Uart_getchar(mUARTRxBuffer);
// 2103           }
// 2104           if(u8TempNumTx[u8Count] == 0x0D)
// 2105           { 
// 2106             if(0 != u8Count)
// 2107             {
// 2108               u8Count--;
// 2109             }
// 2110             else
// 2111             {
// 2112               u8InvalidCharFlag = TRUE;
// 2113             }   
// 2114             Uart_getchar(mUARTRxBuffer);
// 2115            }
// 2116           
// 2117           if(Exit == u8TempNumTx[u8Count])
// 2118           {
// 2119             return;
// 2120           }
// 2121 
// 2122           u32NumTransmissions = 0;
// 2123           u8Shift = u8Count;
// 2124           /*To validate 0-9, a-f and A-F values*/
// 2125 
// 2126           for(i = 0; i <= u8Count; i++)
// 2127           {
// 2128             u32NumTransmissions += (AsciitoHex(u8TempNumTx[i]) * u16TenPower[u8Shift]);
// 2129             u8Shift--;
// 2130           }
// 2131           
// 2132           if(MAX_NUM_TRANSMISSION < u32NumTransmissions)
// 2133           {
// 2134             Uart_Print("\r\n  Value out of range, please try again.");
// 2135           }
// 2136           
// 2137           if(u8InvalidCharFlag == TRUE)
// 2138           {
// 2139             Uart_Print("\r\n  Invalid characters, please use only numbers.");
// 2140           }
// 2141         }
// 2142         while((MAX_NUM_TRANSMISSION < u32NumTransmissions) || (TRUE == u8InvalidCharFlag));
// 2143         
// 2144 #endif         
// 2145          u8AppState = INIT_PER_TX_ST;
??packet_error_rate_tx_test_3:
        MOVS     R0,#+1
        B.N      ??packet_error_rate_tx_test_8
// 2146       }
// 2147       break;
// 2148       case INIT_PER_TX_ST:
// 2149       {
// 2150         uint8_t i;
// 2151         uint8_t u8Count = 4;
// 2152         TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
??packet_error_rate_tx_test_5:
        LSLS     R2,R2,#+29
        LSRS     R2,R2,#+29
        MOVS     R3,#+32
        ORRS     R3,R3,R2
        STRB     R3,[R4, #+0]
// 2153         TX_msg.pu8Buffer->u8Data[0] = (uint8_t)(u32NumTransmissions >> 8);
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+2]
// 2154         TX_msg.pu8Buffer->u8Data[1] = (uint8_t)u32NumTransmissions;
        MOVS     R1,#+231
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+3]
// 2155         for(i=0; i<(sizeof(ku8ExpectedString)/sizeof(uint8_t)); i++)
        MOVS     R3,#+0
        LDR      R2,??DataTable130_4
// 2156         {
// 2157           TX_msg.pu8Buffer->u8Data[u8Count] = ku8ExpectedString[i];
??packet_error_rate_tx_test_9:
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        LDRB     R1,[R2, R1]
        LDR      R5,[R4, #+4]
        LSLS     R7,R0,#+24
        LSRS     R7,R7,#+24
        ADDS     R5,R5,R7
        STRB     R1,[R5, #+2]
// 2158           u8Count ++;
        ADDS     R0,R0,#+1
// 2159         }
        ADDS     R3,R3,#+1
        LSLS     R1,R3,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+16
        BCC      ??packet_error_rate_tx_test_9
// 2160 
// 2161         u16MsgCount = 0;
        STRH     R6,[R4, #+22]
// 2162         u16DoneCount = 0;
        STRH     R6,[R4, #+24]
// 2163         u8AppState = TRANSMITING_PER_TX_ST;
        MOVS     R0,#+2
        B.N      ??packet_error_rate_tx_test_8
// 2164       }
// 2165       break;
// 2166       case TRANSMITING_PER_TX_ST:
// 2167       {
// 2168         if(is_tx_msg_final_state(TX_msg))
??packet_error_rate_tx_test_4:
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_10
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
// 2169         {
// 2170           if(u32NumTransmissions > u16MsgCount)
??packet_error_rate_tx_test_10:
        LDRH     R0,[R4, #+22]
        LDR      R3,??DataTable131  ;; 0x3e7
        CMP      R0,R3
        BCS      ??packet_error_rate_tx_test_11
// 2171           {
// 2172             TX_msg.pu8Buffer->u8Data[2] = (uint8_t)(u16MsgCount >> 8);
        LSRS     R1,R0,#+8
        LDR      R2,[R4, #+4]
        STRB     R1,[R2, #+4]
// 2173             TX_msg.pu8Buffer->u8Data[3] = (uint8_t)u16MsgCount;
        LDR      R1,[R4, #+4]
        STRB     R0,[R1, #+5]
// 2174             TX_msg.u8BufSize = 4 + (sizeof(ku8ExpectedString)/sizeof(uint8_t));
        MOVS     R0,#+20
        STRB     R0,[R4, #+8]
// 2175 #if INTERFACE_TYPE == SERIAL          
// 2176             DelayMs(14);
// 2177 #else
// 2178             DelayMs(5);
        MOVS     R0,#+5
        BL       DelayMs
// 2179 #endif            
// 2180 
// 2181             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2182             u16MsgCount++;
        LDRH     R0,[R4, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+22]
        B        ??packet_error_rate_tx_test_2
// 2183           }
// 2184           else
// 2185           {
// 2186             uint8_t i;
// 2187             for(i=0; i<(sizeof(ku8DoneStr)/sizeof(uint8_t)); i++)
??packet_error_rate_tx_test_11:
        ADR.N    R0,ku8DoneStr
// 2188             {
// 2189               TX_msg.pu8Buffer->u8Data[i] = ku8DoneStr[i];
??packet_error_rate_tx_test_12:
        LDRB     R2,[R0, R6]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R6
        STRB     R2,[R3, #+2]
// 2190             }
        ADDS     R6,R6,#+1
        CMP      R6,#+4
        BCC      ??packet_error_rate_tx_test_12
// 2191             u8AppState = DONE_PER_TX_ST;
        STRB     R1,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2192           }
// 2193         }   
// 2194       }  
// 2195       break;
// 2196       
// 2197       case DONE_PER_TX_ST:
// 2198       {
// 2199         if(NUM_DONE_TX >= u16DoneCount)
??packet_error_rate_tx_test_7:
        LDRH     R1,[R4, #+24]
        CMP      R1,#+16
        BGE      ??packet_error_rate_tx_test_8
// 2200         {
// 2201           if(is_tx_msg_final_state(TX_msg))
        CMP      R3,#+4
        BEQ      ??packet_error_rate_tx_test_13
        CMP      R3,#+5
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+7
        BEQ      ??packet_error_rate_tx_test_14
        CMP      R3,#+3
        BNE      ??packet_error_rate_tx_test_2
        B        ??packet_error_rate_tx_test_14
// 2202           {
// 2203             if(MSG_TX_ACTION_COMPLETE_SUCCESS == TX_msg.u8Status.msg_state)
// 2204               u16DoneCount++;
??packet_error_rate_tx_test_13:
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+24]
// 2205             TX_msg.u8BufSize = (sizeof(ku8DoneStr)/sizeof(uint8_t));
??packet_error_rate_tx_test_14:
        STRB     R0,[R4, #+8]
// 2206             DelayMs(14);
        MOVS     R0,#+14
        BL       DelayMs
// 2207             MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
        B        ??packet_error_rate_tx_test_2
// 2208           }
// 2209         }
// 2210         else
// 2211         {
// 2212           u8AppState = FINISH_PER_TX_ST;
??packet_error_rate_tx_test_8:
        STRB     R0,[R4, #+17]
        B        ??packet_error_rate_tx_test_2
// 2213         }
// 2214       }
// 2215       break;
// 2216       
// 2217       case FINISH_PER_TX_ST:
// 2218         u8AppState = IDLE_PER_TX_ST;
??packet_error_rate_tx_test_6:
        STRB     R6,[R4, #+17]
// 2219 #if INTERFACE_TYPE == MANUAL                
// 2220         gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R5, #+31]
// 2221 #endif        
// 2222  
// 2223         break;
// 2224       
// 2225       default:
// 2226       {
// 2227       }
// 2228       break;
// 2229     }
// 2230 
// 2231 #if INTERFACE_TYPE == MANUAL        
// 2232   }
// 2233 #endif
// 2234   
// 2235 #if INTERFACE_TYPE == SERIAL    
// 2236     Uart_Poll(mUARTRxBuffer);
// 2237   }while (mUARTRxBuffer[0] != Exit); 
// 2238   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2239   MLMETestMode(u8CurrentMode);
// 2240 #endif
// 2241 
// 2242   
// 2243 }
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
// 2244 
// 2245 /************************************************************************************
// 2246 * packet_error_rate_rx_test
// 2247 *
// 2248 * This function performs the packet error rate reception process.
// 2249 *
// 2250 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2251 void packet_error_rate_rx_test(void)
// 2252 {
packet_error_rate_rx_test:
        PUSH     {R3-R7,LR}
// 2253   static per_rx_states_t u8AppState;
// 2254 
// 2255 #if INTERFACE_TYPE == MANUAL 
// 2256   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable130_1
        LDRB     R0,[R4, #+31]
        MOVS     R7,#+1
        LDR      R5,??DataTable131_1
        CMP      R0,#+0
        BNE      ??packet_error_rate_rx_test_0
// 2257   {  
// 2258     RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
        LDRB     R0,[R4, #+4]
        LSLS     R0,R0,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+40
        ORRS     R1,R1,R0
        STRB     R1,[R4, #+4]
// 2259     LEDs_RX_INIT(250);  
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
// 2260 
// 2261 
// 2262 #if (gLCDSupported_d) 
// 2263     LCD_WriteString_NormalFont(7,"                     ");
        LDR      R1,??DataTable130_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2264     LCD_WriteString_NormalFont(4," PER Listening..");
        LDR      R1,??DataTable131_2
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2265 #endif
// 2266     u8AppState = INIT_PER_RX_ST;
        STRB     R7,[R5, #+0]
// 2267     gu8TestAlreadyStarted = TRUE;
        STRB     R7,[R4, #+31]
        B        ??packet_error_rate_rx_test_1
// 2268   }
// 2269 #endif
// 2270   
// 2271 
// 2272 #if INTERFACE_TYPE == SERIAL
// 2273   u8CurrentMode = SMAC_TEST_MODE_PER_RX;
// 2274   RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
// 2275   Uart_Print("\r\n    ****************************");
// 2276   Uart_Print("\r\n    ** Packet Error Rate Test **");
// 2277   Uart_Print("\r\n    ****************************");
// 2278   Uart_Print("\r\nPress Q to exit from Packet Error Rate Test");
// 2279   Uart_Print("\r\nPress any key to start.....");
// 2280   Uart_getchar(mUARTRxBuffer);
// 2281   u8AppState = INIT_PER_RX_ST;
// 2282   do{
// 2283 #endif    
// 2284     
// 2285 #if INTERFACE_TYPE == MANUAL    
// 2286 
// 2287 
// 2288   if (TRUE == gu8TestAlreadyStarted)
??packet_error_rate_rx_test_0:
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_2
// 2289   {
// 2290 #endif      
// 2291       (void)process_radio_msg();
??packet_error_rate_rx_test_1:
        BL       process_radio_msg
// 2292       if(TRUE == gbDataIndicationFlag)
        MOVS     R6,#+0
        LDRB     R0,[R4, #+27]
        CMP      R0,#+1
        BNE      ??packet_error_rate_rx_test_3
// 2293       {
// 2294         gbDataIndicationFlag = FALSE;
        STRB     R6,[R4, #+27]
// 2295         process_incoming_msg();
        BL       process_incoming_msg
// 2296       }
// 2297     
// 2298 #if OTAP_ENABLED == TRUE
// 2299     if(gbOtapExecute)
// 2300     {
// 2301       OTAP_execute();        
// 2302     }
// 2303     else
// 2304 #endif
// 2305     {          
// 2306   
// 2307       switch(u8AppState){
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
// 2308         case IDLE_PER_RX_ST:
// 2309         {
// 2310           // Do nothing when idle
// 2311         }
// 2312         break;
// 2313         case INIT_PER_RX_ST:
// 2314         {
// 2315 #if INTERFACE_TYPE == SERIAL        
// 2316           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2317 #endif       
// 2318           u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_4:
        STRB     R1,[R5, #+0]
// 2319           
// 2320           
// 2321         }
// 2322         break;
        B        ??packet_error_rate_rx_test_2
// 2323         case WAITING_PER_RX_ST:
// 2324         {
// 2325           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_6:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_8
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_9
// 2326           {
// 2327             u8AppState = LISTEN_PER_RX_ST;
??packet_error_rate_rx_test_8:
        STRB     R1,[R5, #+0]
// 2328           }
// 2329           if(gu32PerRxEvents & PER_DONE_MSG_EVNT)
??packet_error_rate_rx_test_9:
        MOVS     R0,#+44
        LDRB     R0,[R4, R0]
        LSLS     R0,R0,#+28
        BPL      ??packet_error_rate_rx_test_2
// 2330           {
// 2331             gu32PerRxEvents = PER_NO_EVENT;
        STR      R6,[R4, #+44]
// 2332             u8AppState = FINISH_PER_RX_ST;
        MOVS     R0,#+4
        B.N      ??packet_error_rate_rx_test_10
// 2333           }
// 2334         }
// 2335         break;
// 2336         case LISTEN_PER_RX_ST:
// 2337         {
// 2338           if(is_rx_msg_final_state(RX_msg))
??packet_error_rate_rx_test_5:
        CMP      R0,#+5
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+6
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+8
        BEQ      ??packet_error_rate_rx_test_11
        CMP      R0,#+4
        BNE      ??packet_error_rate_rx_test_2
// 2339           {
// 2340             RX_msg.u8BufSize = PER_RX_SIZE;
??packet_error_rate_rx_test_11:
        MOVS     R0,#+24
        STRB     R0,[R4, #+12]
// 2341             MLMERXEnableRequest(&RX_msg, 0x00000000);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
        BL       MLMERXEnableRequest
// 2342             u8AppState = WAITING_PER_RX_ST;
        MOVS     R0,#+2
??packet_error_rate_rx_test_10:
        STRB     R0,[R5, #+0]
        B        ??packet_error_rate_rx_test_2
// 2343           }
// 2344         }
// 2345         break;
// 2346         case FINISH_PER_RX_ST:
// 2347         {
// 2348           u8AppState = INIT_PER_RX_ST;
??packet_error_rate_rx_test_7:
        STRB     R7,[R5, #+0]
// 2349 #if INTERFACE_TYPE == MANUAL 
// 2350           LED_SetHex((uint8_t)(c_test_num.u8Thousands));
        LDRB     R0,[R4, #+1]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2351           DelayMs(gTotalPacketsDelay_d);
        MOVS     R5,#+200
        LSLS     R5,R5,#+1        ;; #+400
        MOVS     R0,R5
        BL       DelayMs
// 2352           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2353           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2354           LED_SetHex((uint8_t)(c_test_num.u8Houndreds));
        MOVS     R7,#+15
        LDRB     R0,[R4, #+1]
        ANDS     R0,R0,R7
        BL       LED_SetHex
// 2355           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2356           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2357           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2358           LED_SetHex((uint8_t)(c_test_num.u8Tens));
        LDRB     R0,[R4, #+0]
        LSRS     R0,R0,#+4
        BL       LED_SetHex
// 2359           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2360           LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
// 2361           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2362           LED_SetHex((uint8_t)(c_test_num.u8Units));
        LDRB     R0,[R4, #+0]
        ANDS     R7,R7,R0
        MOVS     R0,R7
        BL       LED_SetHex
// 2363           DelayMs(gTotalPacketsDelay_d);
        MOVS     R0,R5
        BL       DelayMs
// 2364           gu8TestAlreadyStarted = FALSE;
        STRB     R6,[R4, #+31]
// 2365 #endif        
// 2366         }
// 2367         break;
// 2368         default:
// 2369         {
// 2370         }
// 2371         break;
// 2372       }
// 2373     }  
// 2374 #if INTERFACE_TYPE == MANUAL        
// 2375   }
// 2376 #endif
// 2377   
// 2378 #if INTERFACE_TYPE == SERIAL    
// 2379     Uart_Poll(mUARTRxBuffer);
// 2380   }while (mUARTRxBuffer[0] != Exit);  
// 2381   
// 2382   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2383   MLMETestMode(u8CurrentMode);
// 2384 #endif
// 2385   
// 2386 }
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
// 2387 
// 2388 /************************************************************************************
// 2389 * range_rx_test
// 2390 *
// 2391 * This function performs the range reception process.
// 2392 *
// 2393 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2394 void range_rx_test(void)
// 2395 {
range_rx_test:
        PUSH     {R3-R7,LR}
// 2396   volatile static range_rx_states_t u8AppState = IDLE_RANGE_RX_ST;
// 2397   volatile uint8_t u8retries;
// 2398 #if INTERFACE_TYPE == MANUAL 
// 2399   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable132
        LDR      R5,??DataTable132_1
        LDRB     R0,[R5, #+31]
        CMP      R0,#+0
        BNE      ??range_rx_test_0
// 2400   {
// 2401      u8AppState = INIT_RANGE_RX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+19]
// 2402      LEDs_RX_INIT(250);
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
// 2403 #if (gLCDSupported_d) 
// 2404     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable132_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2405     LCD_WriteString_NormalFont(4,"Range Listening..");
        LDR      R1,??DataTable133
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2406 #endif        
// 2407   }  
// 2408 #endif  
// 2409 
// 2410 #if INTERFACE_TYPE == SERIAL
// 2411   u8CurrentMode = SMAC_TEST_MODE_RANGE_RX;
// 2412   
// 2413   Uart_Print("\r\n    ****************************");
// 2414   Uart_Print("\r\n    **       Range Test       **");
// 2415   Uart_Print("\r\n    ****************************");
// 2416    
// 2417   Uart_Print("\r\nPress Q to exit from Range Test");
// 2418   Uart_Print("\r\nPress any key to start.....");
// 2419   Uart_getchar(mUARTRxBuffer);
// 2420   u8AppState = INIT_RANGE_RX_ST;
// 2421   do{
// 2422 #endif
// 2423 
// 2424       (void)process_radio_msg();
??range_rx_test_0:
        BL       process_radio_msg
// 2425       if(TRUE == gbDataIndicationFlag)
        MOVS     R7,#+0
        LDRB     R0,[R5, #+27]
        CMP      R0,#+1
        BNE      ??range_rx_test_1
// 2426       {
// 2427         gbDataIndicationFlag = FALSE;
        STRB     R7,[R5, #+27]
// 2428         process_incoming_msg();
        BL       process_incoming_msg
// 2429       }
// 2430       else{
// 2431       }
// 2432 
// 2433 #if OTAP_ENABLED == TRUE
// 2434     if(gbOtapExecute)
// 2435     {
// 2436       OTAP_execute();        
// 2437     }
// 2438     else
// 2439 #endif
// 2440     {          
// 2441       switch(u8AppState){
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
// 2442         case IDLE_RANGE_RX_ST:
// 2443         {
// 2444           // Do nothing when idle
// 2445         }
// 2446         break;
// 2447         
// 2448         case INIT_RANGE_RX_ST:
// 2449         {
// 2450           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_rx_test_2:
        MOVS     R2,#+7
        LDRB     R3,[R5, #+4]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        STRB     R6,[R5, #+4]
// 2451           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;        
        ANDS     R2,R2,R0
        MOVS     R0,#+32
        ORRS     R0,R0,R2
        STRB     R0,[R4, #+0]
// 2452   #if INTERFACE_TYPE == SERIAL        
// 2453           Uart_Print("\r\n\nThe RX radio is now listening...");
// 2454           Uart_Print("\r\nStart the test by pressing any key on TX radio");
// 2455   #endif       
// 2456           u8AppState = LISTEN_RANGE_RX_ST;
        STRB     R1,[R4, #+19]
// 2457         }
// 2458         break;
        B        ??range_rx_test_3
// 2459         
// 2460         case LISTEN_RANGE_RX_ST:
// 2461         {
// 2462           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_4:
        CMP      R2,#+5
        BEQ      ??range_rx_test_7
        CMP      R2,#+6
        BEQ      ??range_rx_test_7
        CMP      R2,#+8
        BEQ      ??range_rx_test_7
        CMP      R2,#+4
        BNE      ??range_rx_test_3
// 2463           {
// 2464             RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_rx_test_7:
        MOVS     R0,#+12
        STRB     R0,[R5, #+12]
// 2465             MLMERXEnableRequest(&RX_msg, 0x00000200);
        LSLS     R1,R6,#+8
        ADDS     R0,R5,#+4
        BL       MLMERXEnableRequest
// 2466             u8AppState = WAITING_RANGE_RX_ST;
        B        ??range_rx_test_8
// 2467           }
// 2468         }
// 2469         break;
// 2470   
// 2471        case WAITING_RANGE_RX_ST:
// 2472         {
// 2473           if(is_rx_msg_final_state(RX_msg))
??range_rx_test_5:
        CMP      R2,#+5
        BEQ      ??range_rx_test_9
        CMP      R2,#+6
        BEQ      ??range_rx_test_9
        CMP      R2,#+8
        BEQ      ??range_rx_test_9
        CMP      R2,#+4
        BNE      ??range_rx_test_10
// 2474           {
// 2475             u8AppState = LISTEN_RANGE_RX_ST;
??range_rx_test_9:
        STRB     R1,[R4, #+19]
// 2476           }
// 2477           if(TRUE == gu8ValidRangePacket)
??range_rx_test_10:
        LDRB     R0,[R5, #+29]
        CMP      R0,#+1
        BNE      ??range_rx_test_3
// 2478           {
// 2479             gu8ValidRangePacket = FALSE;
        STRB     R7,[R5, #+29]
// 2480             u8AppState = TRANSMIT_ACK_RANGE_RX_ST;
        MOVS     R0,#+4
        STRB     R0,[R4, #+19]
// 2481             u8retries = 5;
        MOVS     R0,#+5
        MOV      R1,SP
        STRB     R0,[R1, #+0]
        B        ??range_rx_test_3
// 2482           }
// 2483         }
// 2484         break;
// 2485    
// 2486         
// 2487         case TRANSMIT_ACK_RANGE_RX_ST:
// 2488         {
// 2489 
// 2490           if(is_tx_msg_final_state(ACK_msg))
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
// 2491           { 
// 2492             MCPSDataRequest(&ACK_msg); 
??range_rx_test_11:
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2493             u8retries --;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+0]
// 2494           }
// 2495           if(0 == u8retries)
??range_rx_test_12:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??range_rx_test_3
// 2496           {
// 2497             u8AppState = WAITING_RANGE_RX_ST;
??range_rx_test_8:
        STRB     R6,[R4, #+19]
// 2498           }
// 2499         }
// 2500         break;
// 2501         
// 2502         case FINISH_RANGE_RX_ST:
// 2503         {
// 2504           /*Do nothing*/
// 2505         }
// 2506         break;
// 2507         default:
// 2508         {
// 2509         }
// 2510         break;
// 2511       }
// 2512    }
// 2513 #if INTERFACE_TYPE == SERIAL       
// 2514     Uart_Poll(mUARTRxBuffer);
// 2515   }while (mUARTRxBuffer[0] != Exit);  
// 2516   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2517   MLMETestMode(u8CurrentMode);
// 2518 #endif  
// 2519 #if INTERFACE_TYPE == MANUAL      
// 2520   gu8TestAlreadyStarted = TRUE;
??range_rx_test_3:
        MOVS     R0,#+1
        STRB     R0,[R5, #+31]
// 2521 #endif
// 2522 }
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
// 2523 
// 2524 /************************************************************************************
// 2525 * range_tx_test
// 2526 *
// 2527 * This function performs the range transmission process.
// 2528 *
// 2529 ***********************************************************************************/
// 2530 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2531 void range_tx_test(void)
// 2532 {
range_tx_test:
        PUSH     {R3-R7,LR}
// 2533   static range_tx_states_t u8AppState; 
// 2534   static uint16_t u8CountNoPacket = 0;
// 2535    
// 2536 #if INTERFACE_TYPE == MANUAL 
// 2537   if(FALSE == gu8TestAlreadyStarted)
        LDR      R4,??DataTable134
        LDR      R0,??DataTable132_1
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE      ??range_tx_test_1
// 2538   {
// 2539     clear_event(gu8TestModeEvents, TEST_START_EVENT);
        LDR      R0,??DataTable132_1
        LDRB     R1,[R0, #+28]
        MOVS     R2,#+247
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+28]
// 2540     u8AppState = INIT_RANGE_TX_ST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+18]
// 2541     LEDs_TX_INIT(250);  
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
// 2542 #if (gLCDSupported_d) 
// 2543     LCD_WriteString_NormalFont(7,"    ");
        LDR      R1,??DataTable132_2
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 2544     LCD_WriteString_NormalFont(4,"Range Transmitting..");
        LDR      R1,??DataTable134_1
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 2545 #endif        
// 2546   }  
// 2547 #endif  
// 2548 
// 2549 #if INTERFACE_TYPE == SERIAL    
// 2550 
// 2551   u8AppState = INIT_RANGE_TX_ST;
// 2552   
// 2553   u8CurrentMode = SMAC_TEST_MODE_RANGE_TX;
// 2554   Uart_Print("\r\n    ****************************");
// 2555   Uart_Print("\r\n    **       Range Test       **");
// 2556   Uart_Print("\r\n    ****************************");
// 2557    
// 2558   Uart_Print("\r\nPress Q to exit from Range Test");
// 2559   Uart_Print("\r\nPress any key to start the test.....");
// 2560   Uart_getchar(mUARTRxBuffer);
// 2561   do{
// 2562 #endif
// 2563     (void)process_radio_msg();
??range_tx_test_1:
        BL       process_radio_msg
// 2564     if(TRUE == gbDataIndicationFlag)
        MOVS     R5,#+0
        LDR      R0,??DataTable132_1
        LDRB     R0,[R0, #+27]
        CMP      R0,#+1
        BNE      ??range_tx_test_2
// 2565     {
// 2566       gbDataIndicationFlag = FALSE;
        LDR      R1,??DataTable132_1
        STRB     R5,[R1, #+27]
// 2567       process_incoming_msg();
        BL       process_incoming_msg
// 2568       u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
        B        ??range_tx_test_3
// 2569     }
// 2570     else{
// 2571       u8CountNoPacket++;
??range_tx_test_2:
        LDRH     R0,[R4, #+26]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+26]
// 2572       if(MAX_NO_PACKET_ALLOW == u8CountNoPacket)
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,R1
        BNE      ??range_tx_test_3
// 2573       {
// 2574           u8CountNoPacket = 0;
        STRH     R5,[R4, #+26]
// 2575           TurnOffLeds();
        BL       LED_TurnOffAllLeds
// 2576       }
// 2577     }
// 2578     
// 2579 #if OTAP_ENABLED == TRUE
// 2580  if(gbOtapExecute)
// 2581  {
// 2582     OTAP_execute();        
// 2583  }
// 2584  else
// 2585 #endif
// 2586   {
// 2587     
// 2588     switch(u8AppState)
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
// 2589     {
// 2590       case IDLE_RANGE_TX_ST:
// 2591       {
// 2592         // Do nothing when idle
// 2593   		u8AppState = INIT_RANGE_TX_ST;
??range_tx_test_5:
        MOVS     R0,#+1
        B        ??range_tx_test_6
// 2594       }
// 2595       break;
// 2596       case INIT_RANGE_TX_ST:
// 2597       {
// 2598         uint8_t i;
// 2599           RX_msg.u8Status.msg_state = MSG_RX_ACTION_COMPLETE_SUCCESS;
??range_tx_test_7:
        MOVS     R2,#+7
        MOV      R3,SP
        LDRB     R3,[R3, #+0]
        ANDS     R3,R3,R2
        MOVS     R6,#+40
        ORRS     R6,R6,R3
        LDR      R3,??DataTable132_1
        STRB     R6,[R3, #+4]
// 2600           TX_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        MOVS     R3,#+32
        ANDS     R1,R1,R2
        ORRS     R1,R1,R3
        STRB     R1,[R4, #+0]
// 2601           ACK_msg.u8Status.msg_state = MSG_TX_ACTION_COMPLETE_SUCCESS;
        LDR      R1,??DataTable132
        LDRB     R6,[R1, #+0]
        ANDS     R2,R2,R6
        ORRS     R3,R3,R2
        STRB     R3,[R1, #+0]
// 2602           for(i=0; i<(sizeof(u8RangeExpectedString)/sizeof(uint8_t)); i++)
        LDR      R1,??DataTable135
// 2603           {
// 2604             TX_msg.pu8Buffer->u8Data[i] = u8RangeExpectedString[i];
??range_tx_test_8:
        LDRB     R2,[R1, R5]
        LDR      R3,[R4, #+4]
        ADDS     R3,R3,R5
        STRB     R2,[R3, #+2]
// 2605           }
        ADDS     R5,R5,#+1
        CMP      R5,#+10
        BCC      ??range_tx_test_8
// 2606 #if SMAC_FEATURE_SECURITY ==  TRUE
// 2607         {
// 2608           uint8_t fill_counter;
// 2609           for(fill_counter=sizeof(u8RangeExpectedString); fill_counter<16; fill_counter++)
// 2610           {
// 2611              TX_msg.pu8Buffer->u8Data[fill_counter] = '\0';
// 2612           }
// 2613           TX_msg.u8BufSize = 16;
// 2614           (void)CipherMsgU8(&(TX_msg.pu8Buffer->u8Data[0]), (TX_msg.u8BufSize));
// 2615         }
// 2616 #else
// 2617         TX_msg.u8BufSize = (sizeof(u8RangeExpectedString)/sizeof(uint8_t));
        MOVS     R1,#+10
        STRB     R1,[R4, #+8]
// 2618 #endif
// 2619 
// 2620 
// 2621 #if INTERFACE_TYPE == SERIAL              
// 2622           Uart_Print("\r\n\nThe transceiver is now transmitting...");
// 2623 #endif          
// 2624           u8AppState = TRANSMITING_RANGE_TX_ST;
        B        ??range_tx_test_6
// 2625       }
// 2626       break;
// 2627       
// 2628       case TRANSMITING_RANGE_TX_ST:
// 2629       {
// 2630         if(is_tx_msg_final_state(TX_msg))
??range_tx_test_9:
        CMP      R3,#+4
        BEQ      ??range_tx_test_10
        CMP      R3,#+5
        BEQ      ??range_tx_test_10
        CMP      R3,#+7
        BEQ      ??range_tx_test_10
        CMP      R3,#+3
        BNE      ??range_tx_test_11
// 2631         {
// 2632           
// 2633           DelayMs(5);
??range_tx_test_10:
        MOVS     R0,#+5
        BL       DelayMs
// 2634           MCPSDataRequest(&TX_msg);
        MOVS     R0,R4
        BL       MCPSDataRequest
// 2635         }
// 2636         u8AppState = LISTEN_RANGE_TX_ST;
??range_tx_test_11:
        MOVS     R0,#+4
        B        ??range_tx_test_6
// 2637       }  
// 2638       break;
// 2639       
// 2640       case LISTEN_RANGE_TX_ST:
// 2641       {
// 2642         if(is_rx_msg_final_state(RX_msg))
??range_tx_test_12:
        CMP      R2,#+5
        BEQ      ??range_tx_test_13
        CMP      R2,#+6
        BEQ      ??range_tx_test_13
        CMP      R2,#+8
        BEQ      ??range_tx_test_13
        CMP      R2,#+4
        BNE      ??range_tx_test_14
// 2643         {
// 2644           RX_msg.u8BufSize = RANGE_RX_SIZE;
??range_tx_test_13:
        MOVS     R0,#+12
        LDR      R1,??DataTable132_1
        STRB     R0,[R1, #+12]
// 2645           MLMERXEnableRequest(&RX_msg, 0x00000200);
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        LDR      R0,??DataTable136
        BL       MLMERXEnableRequest
// 2646         }
// 2647         u8AppState = WAITING_RANGE_TX_ST;
// 2648       }
// 2649       break;
// 2650       
// 2651       case WAITING_RANGE_TX_ST:
// 2652       {
// 2653         if(is_tx_msg_final_state(TX_msg))
// 2654         {
// 2655           u8AppState = TRANSMITING_RANGE_TX_ST;
// 2656         }
// 2657         if(is_rx_msg_final_state(RX_msg))
// 2658         {
// 2659           u8AppState = LISTEN_RANGE_TX_ST;
// 2660         }
// 2661         if(TRUE == gu8ValidAckPacket)
// 2662         {
// 2663           gu8ValidAckPacket = FALSE;
// 2664           u8AppState = RANGE_INDICATION_TX_ST;
// 2665         }
// 2666       }
// 2667       break;
// 2668       
// 2669       case RANGE_INDICATION_TX_ST:
// 2670       {
// 2671         u8AppState = WAITING_RANGE_TX_ST;
??range_tx_test_14:
        MOVS     R0,#+3
??range_tx_test_6:
        STRB     R0,[R4, #+18]
// 2672       }
// 2673       break;
// 2674       
// 2675       default:
// 2676       {
// 2677       }
// 2678       break;
// 2679     }
// 2680   }
// 2681 #if INTERFACE_TYPE == SERIAL                  
// 2682     Uart_Poll(mUARTRxBuffer);
// 2683   }while (mUARTRxBuffer[0] != Exit);  
// 2684   u8CurrentMode = SMAC_TEST_MODE_IDLE;
// 2685   MLMETestMode(u8CurrentMode);
// 2686 #endif
// 2687 
// 2688 #if INTERFACE_TYPE == MANUAL      
// 2689   gu8TestAlreadyStarted = TRUE;
??range_tx_test_4:
        MOVS     R0,#+1
        LDR      R1,??DataTable132_1
        STRB     R0,[R1, #+31]
// 2690 #endif
// 2691 }
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
// 2692 
// 2693 
// 2694 /************************************************************************************
// 2695 * configure_clock_setting
// 2696 *
// 2697 * This function adjust the clock setting selected by the user in the serial interface.
// 2698 *
// 2699 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2700 void configure_clock_settings(void)
// 2701 {
configure_clock_settings:
        PUSH     {R3-R7,LR}
        LDR      R7,??DataTable136_1
        LDR      R4,??DataTable136_2  ;; 0x80003040
// 2702   char option_menu, option;
// 2703    do{
// 2704       option_menu = clock_setting_menu();
??configure_clock_settings_0:
        BL       clock_setting_menu
        MOVS     R5,R0
// 2705       switch(option_menu)
        CMP      R0,#+49
        BEQ      ??configure_clock_settings_1
        CMP      R0,#+50
        BEQ      ??configure_clock_settings_2
        CMP      R0,#+51
        BEQ      ??configure_clock_settings_3
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_4
        B        ??configure_clock_settings_5
// 2706       {
// 2707         case BulkCapacitor:
// 2708          do
// 2709           {
// 2710             option = bulk_cap_menu();
??configure_clock_settings_1:
        BL       bulk_cap_menu
        MOVS     R6,R0
// 2711             switch(option)
        CMP      R0,#+68
        BEQ      ??configure_clock_settings_6
        CMP      R0,#+69
        BEQ      ??configure_clock_settings_7
        CMP      R0,#+112
        BEQ      ??configure_clock_settings_8
        B        ??configure_clock_settings_9
// 2712             {
// 2713               case EnableBulkCapacitor:
// 2714                 enable_bulk_cap(); 
??configure_clock_settings_7:
        LDR      R0,[R4, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+18       ;; #+33554432
        ORRS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2715                 u8BulkCapState = gEnable_c;
        MOVS     R0,#+1
        B.N      ??configure_clock_settings_10
// 2716                 break;
// 2717               case DisableBulkCapacitor:
// 2718                 disable_bulk_cap(); 
??configure_clock_settings_6:
        LDR      R0,[R4, #+0]
        LDR      R1,??DataTable137  ;; 0xfdffffff
        ANDS     R1,R1,R0
        STR      R1,[R4, #+0]
// 2719                 u8BulkCapState = gDisable_c;
        MOVS     R0,#+0
??configure_clock_settings_10:
        STRB     R0,[R7, #+26]
// 2720                 break;
        B        ??configure_clock_settings_8
// 2721               case PreviousMenu:
// 2722                 break;
// 2723               default:
// 2724                 Uart_Print("  Invalid Option!!!");
??configure_clock_settings_9:
        Nop      
        ADR.N    R0,?_105
        BL       Uart_Print
// 2725                 break;              
// 2726             }
// 2727           }while(option != PreviousMenu);
??configure_clock_settings_8:
        CMP      R6,#+112
        BNE      ??configure_clock_settings_1
        B        ??configure_clock_settings_4
// 2728           break;
// 2729           
// 2730         case CoarseTune:
// 2731           coarse_tune_adjust();
??configure_clock_settings_2:
        BL       coarse_tune_adjust
// 2732           break;
        B        ??configure_clock_settings_4
// 2733           
// 2734         case FineTune:
// 2735           fine_tune_adjust();
??configure_clock_settings_3:
        BL       fine_tune_adjust
// 2736           break;
        B        ??configure_clock_settings_4
// 2737           
// 2738         case PreviousMenu:
// 2739           break;
// 2740           
// 2741         default:
// 2742           Uart_Print("  Invalid Option!!!\n");
??configure_clock_settings_5:
        ADR.N    R0,?_114
        BL       Uart_Print
// 2743           break;
// 2744      }
// 2745   }while(option_menu != PreviousMenu); 
??configure_clock_settings_4:
        CMP      R5,#+112
        BNE      ??configure_clock_settings_0
// 2746 }
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
// 2747 
// 2748 /************************************************************************************
// 2749 * coarse_tune_adjust
// 2750 *
// 2751 * This function ajusts the current coarse tune value to the new typed by the user 
// 2752 * in the serial interface.
// 2753 *
// 2754 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2755 void coarse_tune_adjust(void)
// 2756 {
coarse_tune_adjust:
        PUSH     {R4-R6,LR}
// 2757   uint8_t u8TempCoarse;
// 2758   Uart_Print("\r\n\nCoarse Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_115
        BL       Uart_Print
// 2759   Uart_Print("\r  Current Coarse Tune Value: ");
        LDR      R0,??DataTable137_1
        BL       Uart_Print
// 2760   Uart_PrintHex(&u8CurrentCoarseTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136_1
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+24
        BL       Uart_PrintHex
// 2761   Uart_Print("\r\nPlease enter the new Coarse Tune value between 0x00 to 0x0F in hexadecimal:  ");
        LDR      R5,??DataTable137_2
        MOVS     R0,R5
        BL       Uart_Print
// 2762   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2763   u8TempCoarse = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2764   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2765 
// 2766   if(u8TempCoarse > 0X00)
        CMP      R6,#+0
        BEQ      ??coarse_tune_adjust_0
// 2767   {
// 2768     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x0F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??coarse_tune_adjust_1
// 2769   }
// 2770   else
// 2771   {
// 2772     u8CurrentCoarseTune = (u8TempCoarse << 4);
??coarse_tune_adjust_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+24]
// 2773     u8CurrentCoarseTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+24]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+24]
// 2774     set_xtal_coarse_tune(u8CurrentCoarseTune); 
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
// 2775   }
// 2776 }
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
// 2777 
// 2778 /************************************************************************************
// 2779 * fine_tune_adjust
// 2780 *
// 2781 * This function ajusts the current fine tune value to the new typed by the user
// 2782 * through the serial interface.
// 2783 *
// 2784 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2785 void fine_tune_adjust()
// 2786 {
fine_tune_adjust:
        PUSH     {R4-R6,LR}
// 2787   uint8_t u8TempFine;
// 2788   Uart_Print("\r\n\nFine Tune Adjustment\n\n\n");
        Nop      
        ADR.N    R0,?_117
        BL       Uart_Print
// 2789   Uart_Print("\r  Current Fine Tune Value: ");
        LDR      R0,??DataTable137_4
        BL       Uart_Print
// 2790   Uart_PrintHex(&u8CurrentFineTune, 1,gPrtHexNewLine_c);
        LDR      R4,??DataTable136_1
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
        ADDS     R0,R0,#+25
        BL       Uart_PrintHex
// 2791   Uart_Print("\r\nPlease enter the new Fine Tune value between 0x00 to 0x1F in hexadecimal:  ");
        LDR      R5,??DataTable137_5
        MOVS     R0,R5
        BL       Uart_Print
// 2792   u8TempFine = Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2793   u8TempFine = (AsciitoHex(mUARTRxBuffer[0]));
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        MOVS     R6,R0
// 2794   Uart_getchar(mUARTRxBuffer);
        MOVS     R0,R4
        ADDS     R0,R0,#+32
        BL       Uart_getchar
// 2795   if(u8TempFine > 0X01)
        CMP      R6,#+2
        BLT      ??fine_tune_adjust_0
// 2796   {
// 2797     Uart_Print("\r\n    Incorrect value!!!  The value must be between 0x00 to 0x1F\n");  
        MOVS     R0,R5
        ADDS     R0,R0,#+80
        BL       Uart_Print
        B        ??fine_tune_adjust_1
// 2798   }
// 2799   else
// 2800   {
// 2801     u8CurrentFineTune = (u8TempFine << 4);
??fine_tune_adjust_0:
        LSLS     R0,R6,#+4
        STRB     R0,[R4, #+25]
// 2802     u8CurrentFineTune |= AsciitoHex(mUARTRxBuffer[0]);
        MOVS     R0,#+32
        LDRB     R0,[R4, R0]
        BL       AsciitoHex
        LDRB     R1,[R4, #+25]
        ORRS     R0,R0,R1
        STRB     R0,[R4, #+25]
// 2803     set_xtal_fine_tune(u8CurrentFineTune); 
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
// 2804   }
// 2805 
// 2806 }
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
// 2807 /************************************************************************************
// 2808 * PrintTestMode
// 2809 *
// 2810 * This function prints the Test Mode name received as parameter.
// 2811 *
// 2812 *********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2813 void PrintTestMode(Test_Mode_t TestModeValue)
// 2814 {
PrintTestMode:
        MOVS     R1,R0
        LDR      R0,??DataTable137_7
        CMP      R1,#+6
        BLS      ??PrintTestMode_1
        BX       LR
??PrintTestMode_1:
        PUSH     {R7,LR}
// 2815   switch(TestModeValue)
        ADR      R2,??PrintTestMode_0
        LDRB     R2,[R2, R1]
        ADD      PC,PC,R2
        Nop      
        DATA
??PrintTestMode_0:
        DC8      0x8,0x1E,0x18,0x1C
        DC8      0x10,0x14,0xC,0x0
        THUMB
// 2816   {
// 2817     case SMAC_TEST_MODE_IDLE:
// 2818       Uart_Print("IDLE MODE\n");
??PrintTestMode_2:
        ADR.N    R0,?_119
        B        ??PrintTestMode_3
// 2819       break;
// 2820 	  
// 2821     case SMAC_TEST_MODE_CONTINUOUS_RX:
// 2822       Uart_Print("CONTINUOUS RECEPTION\n");
??PrintTestMode_4:
        ADR.N    R0,?_120
        B        ??PrintTestMode_3
// 2823       break;
// 2824 	  
// 2825     case SMAC_TEST_MODE_PULSE_PRBS9_TX:
// 2826       Uart_Print("CONTINUOUS PULSE PRBS9 TRANSMISSION\n");
// 2827       break;
// 2828 	  
// 2829     case SMAC_TEST_MODE_CONTINUOUS_TX_MOD:
// 2830       Uart_Print("CONTINUOUS MODULATED TRANSMISSION\n");
??PrintTestMode_5:
        ADDS     R0,R0,#+40
        B        ??PrintTestMode_3
// 2831       break;       
// 2832 	  
// 2833     case SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD:
// 2834       Uart_Print("CONTINUOUS UNMODULATED TRANSMISSION\n");
??PrintTestMode_6:
        ADDS     R0,R0,#+76
        B        ??PrintTestMode_3
// 2835       break;      
// 2836 	  
// 2837     case SMAC_TEST_MODE_PER_TX:
// 2838       Uart_Print("PACKET ERROR RATE TEST\n");
??PrintTestMode_7:
        ADR.N    R0,?_121
        B        ??PrintTestMode_3
// 2839       break;
// 2840 	  
// 2841     case SMAC_TEST_MODE_RANGE_TX:
// 2842       Uart_Print("RANGE TEST\n");
??PrintTestMode_8:
        ADR.N    R0,?_122
??PrintTestMode_3:
        BL       Uart_Print
// 2843       break;
// 2844 	  
// 2845     default:
// 2846       break;
// 2847   }
// 2848 }
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
// 2849 
// 2850 /************************************************************************************
// 2851 * PrintChannel
// 2852 *
// 2853 * This function prints the Channel number received as parameter.
// 2854 *
// 2855 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2856 void PrintChannel(channel_num_t u8ChannelValue)
// 2857 {
PrintChannel:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 2858   if( TOTAL_CHANN > u8ChannelValue ){
        CMP      R0,#+16
        BGE      ??PrintChannel_0
// 2859     u8ChannelValue += 11;
// 2860     Uart_Print("CHANNEL ");
        ADR.N    R0,?_123
        BL       Uart_Print
// 2861     Uart_PrintByteDec(u8ChannelValue);
        ADDS     R4,R4,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       Uart_PrintByteDec
// 2862     Uart_Print("\n");
        ADR.N    R0,?_65
        BL       Uart_Print
// 2863   }
// 2864 }
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
// 2865 
// 2866 /************************************************************************************
// 2867 * LEDs_LQI_indicator
// 2868 *
// 2869 * This function show the four possible LQI adjusted values using three LEDs.
// 2870 *
// 2871 ************************************************************************************/
// 2872 #if (gLEDSupported_d)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2873 void LEDs_LQI_indication(link_quality_value_t u8LinkQuality)
// 2874 {
LEDs_LQI_indication:
        PUSH     {R3-R5,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
// 2875   uint8_t LEDs_state[4][4]={gFarRange_c,LED_OFF,LED_OFF,LED_OFF,
// 2876                             gMediumRange_c,LED_ON,LED_OFF,LED_OFF,
// 2877                             gNearRange_c,LED_ON,LED_ON,LED_OFF,
// 2878                             gVeryNearRange_c,LED_ON,LED_ON,LED_ON
// 2879                            };
        MOV      R0,SP
        ADR.N    R1,?_124
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
// 2880   Gpio_SetPinData(LED2_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][1]);
        LSLS     R4,R4,#+2
        MOV      R5,SP
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+24
        BL       Gpio_SetPinData
// 2881   Gpio_SetPinData(LED3_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][2]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+2]
        MOVS     R0,#+25
        BL       Gpio_SetPinData
// 2882   Gpio_SetPinData(LED4_PIN, (GpioPinState_t)LEDs_state[u8LinkQuality][3]);
        ADDS     R0,R5,R4
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+44
        BL       Gpio_SetPinData
// 2883 }
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
// 2884 #endif
// 2885 
// 2886 /************************************************************************************
// 2887 * TMR_Init
// 2888 *
// 2889 * This function configurates the timer to generate a output frequency at 2 MHz.
// 2890 * 
// 2891 **********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2892 void TMR_Init(void)
// 2893 {              
TMR_Init:
        PUSH     {R1-R5,LR}
// 2894   TmrConfig_t pConfig;
// 2895   TmrStatusCtrl_t pStatusCtrl;
// 2896   TmrComparatorStatusCtrl_t pCompStatusCtrl;
// 2897   
// 2898   TmrInit();
        BL       TmrInit
// 2899   GpioTmrInit();
        BL       GpioTmrInit
// 2900   TmrEnable(gTmr1_c);
        MOVS     R0,#+1
        BL       TmrEnable
// 2901  
// 2902   SetLoadVal(gTmr1_c, 0x00);
        LDR      R0,??DataTable138  ;; 0x80007020
        MOVS     R4,#+0
        STRH     R4,[R0, #+6]
// 2903   SetCntrVal(gTmr1_c, 0x00);
        STRH     R4,[R0, #+10]
// 2904   SetCompLoad1Val(gTmr1_c, 0x05);         
        MOVS     R5,#+5
        STRH     R5,[R0, #+16]
// 2905   SetCompLoad2Val(gTmr1_c, 0x05);        
        STRH     R5,[R0, #+18]
// 2906  
// 2907   SetComp1Val(gTmr1_c, 0x05);  
        STRH     R5,[R0, #+0]
// 2908   SetComp2Val(gTmr1_c, 0x05);              
        STRH     R5,[R0, #+2]
// 2909      
// 2910   TmrSetMode(gTmr1_c, gTmrCntRiseEdgFallEdgPriSrc_c);   
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       TmrSetMode
// 2911 
// 2912   pConfig.tmrOutputMode = gTmrToggleOF_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 2913   pConfig.tmrCoInit = FALSE;
        STRB     R4,[R0, #+1]
// 2914   pConfig.tmrCntDir = FALSE;
        STRB     R4,[R0, #+2]
// 2915   pConfig.tmrCntLen = TRUE;
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
// 2916   pConfig.tmrCntOnce = FALSE;
        STRH     R4,[R0, #+4]
// 2917   pConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;
// 2918   pConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;      
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
// 2919   TmrSetConfig(gTmr1_c, &pConfig);  
        ADD      R1,SP,#+4
        MOVS     R0,#+1
        BL       TmrSetConfig
// 2920 
// 2921   pCompStatusCtrl.uintValue =0x06;
        MOVS     R0,#+6
        MOV      R1,SP
        STRH     R0,[R1, #+0]
// 2922   TmrSetCompStatusControl(gTmr1_c, &pCompStatusCtrl);
        MOVS     R0,#+1
        BL       TmrSetCompStatusControl
// 2923  
// 2924   pStatusCtrl.uintValue = 0x05;
        MOV      R0,SP
        STRH     R5,[R0, #+2]
// 2925   TmrSetStatusControl(gTmr1_c, &pStatusCtrl);
        ADD      R1,SP,#+0
        ADDS     R1,R1,#+2
        MOVS     R0,#+1
        BL       TmrSetStatusControl
// 2926 }
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
// 2927 
// 2928 /************************************************************************************
// 2929 * GpioTmrInit
// 2930 *
// 2931 * This function initializate the Timer´s gpios.
// 2932 *
// 2933 ***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2934 void GpioTmrInit(void)
// 2935 {
GpioTmrInit:
        PUSH     {R7,LR}
// 2936   Gpio_SetPinFunction(gGpioPin8_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
// 2937   Gpio_SetPinFunction(gGpioPin9_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
// 2938   Gpio_SetPinFunction(gGpioPin10_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinFunction
// 2939   Gpio_SetPinFunction(gGpioPin11_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
// 2940 }
        POP      {R0,R3}
        BX       R3               ;; return
// 2941 
// 2942 /************************************************************************************
// 2943 * display_config function
// 2944 *
// 2945 * This function prints an ASCII Freescale's logo.
// 2946 ************************************************************************************/
// 2947 #if INTERFACE_TYPE == SERIAL
// 2948 static void print_freescale_logo(void)
// 2949 {
// 2950   Uart_Print("\n\r\n\r\n\r      #\n");
// 2951   Uart_Print("\r     ###\n");
// 2952   Uart_Print("\r    ###  *\n");
// 2953   Uart_Print("\r     #  ***\n");
// 2954   Uart_Print("\r       ***  #\n");
// 2955   Uart_Print("\r        *  ###\n");
// 2956   Uart_Print("\r          ###\n");
// 2957   Uart_Print("\r        *  #\n");
// 2958   Uart_Print("\r       ***\n");
// 2959   Uart_Print("\r      ***  #\n");
// 2960   Uart_Print("\r    #  *  ###\n");
// 2961   Uart_Print("\r   ###   ###\n");
// 2962   Uart_Print("\r  ###  *  #         F R E E S C A L E\n");
// 2963   Uart_Print("\r   #  ***\n");
// 2964   Uart_Print("\r     ***            S E M I C O N D U C T O R\n");
// 2965   Uart_Print("\r   #  *\n");
// 2966   Uart_Print("\r  ###               2 0 1 1\n");
// 2967   Uart_Print("\r ###\n");
// 2968   Uart_Print("\r  #           Press any key to continue...\n\n");
// 2969 }
// 2970 #endif
// 2971 
// 2972 /*******************************************************************************
// 2973 * DisplayFreescaleLogo
// 2974 *
// 2975 * This function displays the Freescale Logo in the LCD.
// 2976 *******************************************************************************/
// 2977 #if (gLCDSupported_d)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2978 void DisplayFreescaleLogo(uint8_t xStartCoord, uint8_t yStartCoord)
// 2979 {
DisplayFreescaleLogo:
        PUSH     {R1-R7,LR}
// 2980   uint8_t u8Count;
// 2981   uint8_t u8String[9] = {'f','r','e','e','s','c','a','l','e'};
        MOV      R2,SP
        LDR      R3,??DataTable139
        LDM      R3!,{R4-R6}
        STM      R2!,{R4-R6}
// 2982   uint8_t i;
// 2983   
// 2984   for(i=0; i < 8; i++)
        MOVS     R6,#+0
        MOVS     R5,R0
        MOVS     R4,R1
// 2985   {  
// 2986     LCD_WritePixel(xStartCoord, yStartCoord, 1);
??DisplayFreescaleLogo_0:
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2987     LCD_WritePixel(xStartCoord, yStartCoord + 1, 1);
        ADDS     R7,R4,#+1
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2988     LCD_WritePixel(xStartCoord + 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2989     LCD_WritePixel(xStartCoord - 1, yStartCoord + 1, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2990     LCD_WritePixel(xStartCoord - 2, yStartCoord + 2, 1);
        ADDS     R7,R4,#+2
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2991     LCD_WritePixel(xStartCoord - 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2992     LCD_WritePixel(xStartCoord, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2993     LCD_WritePixel(xStartCoord + 1, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2994     LCD_WritePixel(xStartCoord + 2, yStartCoord + 2, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2995     LCD_WritePixel(xStartCoord - 3, yStartCoord + 3, 1);
        ADDS     R7,R4,#+3
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2996     LCD_WritePixel(xStartCoord - 2, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2997     LCD_WritePixel(xStartCoord - 1, yStartCoord + 3, 1);
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2998     LCD_WritePixel(xStartCoord , yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 2999     LCD_WritePixel(xStartCoord  + 1, yStartCoord + 3, 1);  
        MOVS     R2,#+1
        LSLS     R1,R7,#+24
        LSRS     R1,R1,#+24
        ADDS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3000     LCD_WritePixel(xStartCoord - 4, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+4
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3001     LCD_WritePixel(xStartCoord - 3, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3002     LCD_WritePixel(xStartCoord - 2, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3003     LCD_WritePixel(xStartCoord - 1, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3004     LCD_WritePixel(xStartCoord, yStartCoord + 4, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+4
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3005     LCD_WritePixel(xStartCoord - 3, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+3
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3006     LCD_WritePixel(xStartCoord - 2, yStartCoord + 5, 1); 
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3007     LCD_WritePixel(xStartCoord - 1, yStartCoord + 5, 1);  
        MOVS     R2,#+1
        ADDS     R1,R4,#+5
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+1
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3008     LCD_WritePixel(xStartCoord - 2, yStartCoord + 6, 1);  
        ADDS     R4,R4,#+6
        MOVS     R2,#+1
        LSLS     R1,R4,#+24
        LSRS     R1,R1,#+24
        SUBS     R0,R5,#+2
        LSLS     R0,R0,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3009 
// 3010     
// 3011    if(i == 2 || i == 4 || i == 6)
        CMP      R6,#+2
        BEQ      ??DisplayFreescaleLogo_1
        CMP      R6,#+4
        BEQ      ??DisplayFreescaleLogo_2
        CMP      R6,#+6
        BNE      ??DisplayFreescaleLogo_3
// 3012    {
// 3013      if(i == 4)
// 3014      {
// 3015        yStartCoord += 3;
// 3016        xStartCoord -= 9;
// 3017      }
// 3018      else
// 3019      {
// 3020        yStartCoord += 6;
// 3021        xStartCoord -= 6;
??DisplayFreescaleLogo_1:
        SUBS     R5,R5,#+6
        B        ??DisplayFreescaleLogo_4
// 3022      }
??DisplayFreescaleLogo_2:
        MOVS     R4,R7
        SUBS     R5,R5,#+9
        B        ??DisplayFreescaleLogo_4
// 3023    }
// 3024    else
// 3025    {
// 3026     yStartCoord += 3;
??DisplayFreescaleLogo_3:
        MOVS     R4,R7
// 3027     xStartCoord += 4;
        ADDS     R5,R5,#+4
// 3028 
// 3029    }
// 3030   }
??DisplayFreescaleLogo_4:
        ADDS     R6,R6,#+1
        CMP      R6,#+8
        BGE      .+4
        B        ??DisplayFreescaleLogo_0
// 3031  (void)LCD_SetFont(gLCD_VerdanaFont_c);
        MOVS     R0,#+1
        BL       LCD_SetFont
// 3032   yStartCoord -= 20;
        SUBS     R4,R4,#+20
// 3033   xStartCoord += 15;
        ADDS     R5,R5,#+15
// 3034   
// 3035   for(u8Count = 0; u8Count < 9; u8Count++)
        MOVS     R6,R4
        MOVS     R4,#+0
// 3036   {
// 3037     LCD_WriteCharacter(u8String[u8Count],xStartCoord, yStartCoord);
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
// 3038     xStartCoord += 6;
        ADDS     R5,R5,#+6
// 3039   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+8
        BLE      ??DisplayFreescaleLogo_5
// 3040 
// 3041  (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
// 3042   yStartCoord -= 20;
// 3043   xStartCoord += 15;
// 3044 }
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138:
        DATA32
        DC32     0x80007020
// 3045 #endif
// 3046 
// 3047 
// 3048 #if (gLCDSupported_d)
// 3049   

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3050 void DisplayTestMode(ConfigOption_t u8ConfigOption)
// 3051 {
DisplayTestMode:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
// 3052   uint8_t line = 0;
// 3053   uint8_t i;
// 3054   ClearDisplay();
        BL       ClearDisplay
// 3055   LCD_WriteString_NormalFont(line,"   CONNECTIVITY TEST  ");
        LDR      R1,??DataTable139_1
        MOVS     R0,#+0
        BL       LCD_WriteString_NormalFont
// 3056 
// 3057   for(i = 0; i< 130 ; i++)
        MOVS     R4,#+0
// 3058   {
// 3059     LCD_WritePixel(i,10,1);  
??DisplayTestMode_0:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3060     LCD_WritePixel(i,11,1);  
        MOVS     R2,#+1
        MOVS     R1,#+11
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WritePixel
// 3061   }
        ADDS     R4,R4,#+1
        LSLS     R0,R4,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+130
        BLT      ??DisplayTestMode_0
// 3062   line++;
// 3063   
// 3064 
// 3065   switch(u8ConfigOption)
        LDR      R6,??DataTable139_2
        LDR      R4,??DataTable139_3
        CMP      R5,#+0
        BEQ      ??DisplayTestMode_1
        CMP      R5,#+2
        BEQ      ??DisplayTestMode_2
        BCC      ??DisplayTestMode_3
        B        ??DisplayTestMode_4
// 3066   {
// 3067     case gChannel_c:
// 3068       line++;
// 3069       LCD_WriteString_NormalFont(line," Option: Channel");
??DisplayTestMode_1:
        LDR      R1,??DataTable139_4
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3070       line++;
// 3071       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3072       line++;
// 3073       LCD_WriteString_NormalFont(line,"  SW2 Channel Up");
        LDR      R1,??DataTable139_5
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3074       line++;
// 3075       LCD_WriteString_NormalFont(line,"  SW3 Channel Down");
        LDR      R1,??DataTable139_6
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3076       LCD_WriteStringValue("CHANNEL:",(u8TestModeChannel + 11),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+21]
        ADDS     R1,R1,#+11
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable139_7
        B.N      ??DisplayTestMode_5
// 3077     break;
// 3078     
// 3079     case gPower_c:
// 3080       line++;
// 3081       LCD_WriteString_NormalFont(line," Option: Power");
??DisplayTestMode_3:
        LDR      R1,??DataTable139_8
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3082       line++;
// 3083       LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3084       line++;
// 3085       LCD_WriteString_NormalFont(line,"  SW2 Power Up");
        LDR      R1,??DataTable139_9
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3086       line++;
// 3087       LCD_WriteString_NormalFont(line,"  SW3 Power Down");
        LDR      R1,??DataTable139_10
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3088       LCD_WriteStringValue("POWER LEVEL:",(u8TestModePower),7,gLCD_DecFormat_c);
        MOVS     R3,#+1
        MOVS     R2,#+7
        LDRB     R1,[R4, #+22]
        LDR      R0,??DataTable139_11
??DisplayTestMode_5:
        BL       LCD_WriteStringValue
// 3089     break;
        B        ??DisplayTestMode_4
// 3090     
// 3091     case gRxTestMode_c:
// 3092       line++;
// 3093       
// 3094       if(SMAC_TEST_MODE_IDLE == u8CurrentMode)
??DisplayTestMode_2:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+0
        BNE      ??DisplayTestMode_6
// 3095       {
// 3096         LCD_WriteString_NormalFont(line," Option: Test");
        LDR      R1,??DataTable139_12
        MOVS     R0,#+2
        BL       LCD_WriteString_NormalFont
// 3097         line++;
// 3098         LCD_WriteString_NormalFont(line,"  SW1 Change option");
        MOVS     R1,R6
        MOVS     R0,#+3
        BL       LCD_WriteString_NormalFont
// 3099         line++;
// 3100         LCD_WriteString_NormalFont(line,"  SW2 Test Up");
        LDR      R1,??DataTable139_13
        MOVS     R0,#+4
        BL       LCD_WriteString_NormalFont
// 3101         line++;
// 3102         LCD_WriteString_NormalFont(line,"  SW3 Test Down");
        LDR      R1,??DataTable139_14
        MOVS     R0,#+5
        BL       LCD_WriteString_NormalFont
// 3103         line++;
        MOVS     R5,#+6
// 3104         LCD_WriteString_NormalFont(7,"Idle Mode");
        LDR      R1,??DataTable139_15
        MOVS     R0,#+7
        BL       LCD_WriteString_NormalFont
// 3105       }
// 3106     /* RX options */  
// 3107       /*
// 3108       if(SMAC_CONTINUOUS_RX == u8CurrentMode)
// 3109       {
// 3110         LCD_WriteString_NormalFont(line," Continuous Reception");
// 3111       } 
// 3112       */
// 3113       if(SMAC_TEST_MODE_PER_RX == u8CurrentMode)
??DisplayTestMode_6:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+2
        BNE      ??DisplayTestMode_7
// 3114       {
// 3115         LCD_WriteString_NormalFont(line,"PER Test running");
        ADR.N    R1,?_138
        MOVS     R0,R5
        BL       LCD_WriteString_NormalFont
// 3116         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3117         LCD_WriteString_NormalFont(line,"SW4 for PER TX");
        LDR      R1,??DataTable139_16
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3118       }  
// 3119 
// 3120       if(SMAC_TEST_MODE_RANGE_RX == u8CurrentMode)
??DisplayTestMode_7:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+3
        BNE      ??DisplayTestMode_8
// 3121       {
// 3122         LCD_WriteString_NormalFont(line,"Range Test running");
        Nop      
        ADR.N    R1,?_140
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3123         line = line + 2 ;
        ADDS     R5,R5,#+2
// 3124         LCD_WriteString_NormalFont(line,"SW4 for Range TX");
        ADR.N    R1,?_141
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3125       }  
// 3126       
// 3127     /* TX options */  
// 3128       if(SMAC_TEST_MODE_PULSE_PRBS9_TX == u8CurrentMode)
??DisplayTestMode_8:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+1
        BNE      ??DisplayTestMode_9
// 3129       {
// 3130         LCD_WriteString_NormalFont(line," PRBS9 Cont. TX ");
        ADR.N    R1,?_142
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3131       }            
// 3132       if(SMAC_TEST_MODE_CONTINUOUS_TX_MOD == u8CurrentMode)
??DisplayTestMode_9:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+4
        BNE      ??DisplayTestMode_10
// 3133       {
// 3134         LCD_WriteString_NormalFont(line," Cont TX Mod ");
        ADR.N    R1,?_143
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3135       }              
// 3136       if(SMAC_TEST_MODE_CONTINUOUS_TX_NOMOD == u8CurrentMode)
??DisplayTestMode_10:
        LDRB     R0,[R4, #+20]
        CMP      R0,#+5
        BNE      ??DisplayTestMode_4
// 3137       {
// 3138         LCD_WriteString_NormalFont(line," Cont TX No Mod ");
        ADR.N    R1,?_144
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3139       }        
// 3140       
// 3141     break;
// 3142   
// 3143     default:
// 3144     break;
// 3145   }
// 3146 }
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
// 3147 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3148 void ClearDisplay(void)
// 3149 {
ClearDisplay:
        PUSH     {R3-R5,LR}
// 3150   uint8_t u8Line;
// 3151   for(u8Line = 0; u8Line < 9; u8Line++)
        MOVS     R5,#+0
        ADR.N    R4,?_47
// 3152   {
// 3153     LCD_WriteString_NormalFont(u8Line,"                     ");
??ClearDisplay_0:
        MOVS     R1,R4
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteString_NormalFont
// 3154   }
        ADDS     R5,R5,#+1
        LSLS     R0,R5,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+9
        BLT      ??ClearDisplay_0
// 3155 }
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
// 3156 
// 3157 #endif
// 3158 
// 3159 /************************************************************************************
// 3160 *************************************************************************************
// 3161 * Private Debug stuff
// 3162 *************************************************************************************
// 3163 ************************************************************************************/
// 3164 
// 3165 
// 
//    46 bytes in section .bss
//   504 bytes in section .data
// 3 248 bytes in section .rodata
// 8 068 bytes in section .text
// 
// 8 068 bytes of CODE  memory
// 3 248 bytes of CONST memory
//   550 bytes of DATA  memory
//
//Errors: none
//Warnings: none
