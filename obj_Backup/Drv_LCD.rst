001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : open source ANSI-C Compiler modified for HYCON CPU
003                     ; Version 4.0.4 #65ee8b859 (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"F:\陈宇航\001 程序\000 最新程序20230301(增加839，930，新增高精度判稳≤0.01)\DMT2022050508p"
008                     ;;	.file	".\Source\Drv_LCD.c"
009                     	.module Drv_LCD
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_LCD$__00000000[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
012                     	;--cdb--T:FDrv_LCD$__00000010[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_LCD$__00000001[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
014                     	;--cdb--T:FDrv_LCD$__00000011[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_LCD$__00000002[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
016                     	;--cdb--T:FDrv_LCD$__00000012[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_LCD$__00000003[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
018                     	;--cdb--T:FDrv_LCD$__00000013[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
019                     	;--cdb--T:FDrv_LCD$__00000004[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
020                     	;--cdb--T:FDrv_LCD$__00000014[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_LCD$__00000005[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_2S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_1S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB1$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB2$1:U),Z,0,0)]
022                     	;--cdb--T:FDrv_LCD$__00000015[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$F_Receive_First$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Port_Ble_PowerOn$0$0({1}SB6$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
023                     	;--cdb--T:FDrv_LCD$__00000006[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
024                     	;--cdb--T:FDrv_LCD$__00000016[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
025                     	;--cdb--T:FDrv_LCD$__00000007[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
026                     	;--cdb--T:FDrv_LCD$__00000008[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_LCD$__00000009[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({2}DA1d,SI:U),Z,0,0)]
028                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
029                     	;--cdb--F:Drv_LCD:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0,0,0,0
030                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
031                     	;--cdb--F:Drv_LCD:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0,0,0,0
032                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
033                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
034                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
035                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
036                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
037                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
038                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
039                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
040                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
041                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
042                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
043                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
044                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
045                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
046                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
047                     	;--cdb--F:Drv_LCD:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
048                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
049                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
050                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
052                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
053                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
055                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
056                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
057                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
058                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
059                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
060                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
061                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
062                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
063                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
064                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
065                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
066                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
067                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
068                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
069                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
070                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
071                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
072                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
073                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
074                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
075                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
076                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
077                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
078                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
079                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
080                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
081                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
082                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
083                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
084                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
085                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
086                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
087                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
088                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
089                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
090                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
091                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
092                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
093                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
095                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
096                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
097                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
100                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
101                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
102                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
103                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
104                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
105                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
106                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
107                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
108                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
109                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
110                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
111                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
112                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
113                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
116                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
119                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
128                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--F:Drv_LCD:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0,0,0,0
139                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--F:Drv_LCD:G$Disp_Low$0$0({2}DF,SV:S),C,0,0,0,0,0
141                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--F:Drv_LCD:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0,0,0,0
143                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--F:Drv_LCD:G$Disp_All$0$0({2}DF,SV:S),C,0,0,0,0,0
145                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--F:Drv_LCD:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0,0,0,0
147                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--F:Drv_LCD:G$Disp_Err$0$0({2}DF,SV:S),C,0,0,0,0,0
149                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--F:Drv_LCD:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0,0,0,0
151                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
152                     	;--cdb--F:Drv_LCD:G$Disp_Version$0$0({2}DF,SV:S),C,0,0,0,0,0
153                     	;--cdb--S:G$_divsint$0$0({2}DF,SI:S),C,0,0
154                     	;--cdb--S:G$_modsint$0$0({2}DF,SI:S),C,0,0
155                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--F:Drv_LCD:G$Disp_Code$0$0({2}DF,SV:S),C,0,0,0,0,0
157                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
158                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
159                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--F:Drv_LCD:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0,0,0,0
161                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--F:Drv_LCD:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0,0,0,0
163                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:Drv_LCD:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
166                     	;--cdb--F:Drv_LCD:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0,0,0,0
167                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
168                     	;--cdb--F:Drv_LCD:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0,0,0,0
169                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
170                     	;--cdb--F:Drv_LCD:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0,0,0,0
171                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--F:Drv_LCD:G$Disp_End$0$0({2}DF,SV:S),C,0,0,0,0,0
173                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
174                     	;--cdb--F:Drv_LCD:G$Disp_Off$0$0({2}DF,SV:S),C,0,0,0,0,0
175                     ;--------------------------------------------------------
176                     ; overlayable items in internal ram 
177                     ;--------------------------------------------------------
178                     ;	udata_ovr
179                     .area CCODE (code,REL,CON) ; Drv_LCD-code 
180                     .globl _Disp_Off
181                     
182                     ;--------------------------------------------------------
183                     	.FUNC _Disp_Off:0
184                     ;--------------------------------------------------------
185                     ;	;.line	500; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
186 0549 [00] [1] 0011      _Disp_Off:	;Function start
187 054A [00] [1] 0D8D      	CLRF	_LCD5,0
188                     ;	;.line	502; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
189 054B [00] [1] 0D8C      	CLRF	_LCD4,0
190                     ;	;.line	504; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
191 054C [00] [1] 0D8B      	CLRF	_LCD3,0
192                     ;	;.line	506; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x17;
193 054D [00] [1] 0617      	MVL	0x17
194 054E [00] [1] 678A      	MVF	_LCD2,1,0
195                     ;	;.line	508; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x17;
196 054F [00] [1] 6789      	MVF	_LCD1,1,0
197                     ;	;.line	510; ".\Source\Drv_LCD.c"	LCD0_Macro = 0xF5;
198 0550 [00] [1] 06F5      	MVL	0xf5
199 0551 [00] [1] 6788      	MVF	_LCD0,1,0
200                     ;	;.line	511; ".\Source\Drv_LCD.c"	}
201 0552 [00] [1] 000A      	RET	
202                     ; exit point of _Disp_Off
203                     	.ENDFUNC	_Disp_Off
204                     ;--------------------------------------------------------
205                     
206                     .globl _Disp_End
207                     
208                     ;--------------------------------------------------------
209                     	.FUNC _Disp_End:0
210                     ;--------------------------------------------------------
211                     ;	;.line	479; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
212 0536 [00] [1] 0011      _Disp_End:	;Function start
213 0537 [00] [1] 0D8D      	CLRF	_LCD5,0
214                     ;	;.line	481; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
215 0538 [00] [1] 0D8C      	CLRF	_LCD4,0
216                     ;	;.line	483; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
217 0539 [00] [1] 0D8B      	CLRF	_LCD3,0
218                     ;	;.line	485; ".\Source\Drv_LCD.c"	LCD2_Macro = 0xE6;
219 053A [00] [1] 06E6      	MVL	0xe6
220 053B [00] [1] 678A      	MVF	_LCD2,1,0
221                     ;	;.line	487; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x46;
222 053C [00] [1] 0646      	MVL	0x46
223 053D [00] [1] 6789      	MVF	_LCD1,1,0
224                     ;	;.line	489; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x97;
225 053E [00] [1] 0697      	MVL	0x97
226 053F [00] [1] 6788      	MVF	_LCD0,1,0
227                     ;	;.line	490; ".\Source\Drv_LCD.c"	}
228 0540 [00] [1] 000A      	RET	
229                     ; exit point of _Disp_End
230                     	.ENDFUNC	_Disp_End
231                     ;--------------------------------------------------------
232                     
233                     .globl _Disp_BrownOut
234                     
235                     ;--------------------------------------------------------
236                     	.FUNC _Disp_BrownOut:0
237                     ;--------------------------------------------------------
238                     ;	;.line	458; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
239 03E1 [00] [1] 0011      _Disp_BrownOut:	;Function start
240 03E2 [00] [1] 0D8D      	CLRF	_LCD5,0
241                     ;	;.line	460; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x08;
242 03E3 [00] [1] 0608      	MVL	0x08
243 03E4 [00] [1] 678C      	MVF	_LCD4,1,0
244                     ;	;.line	462; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
245 03E5 [00] [1] 0D8B      	CLRF	_LCD3,0
246                     ;	;.line	464; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x00;
247 03E6 [00] [1] 0D8A      	CLRF	_LCD2,0
248                     ;	;.line	466; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x00;
249 03E7 [00] [1] 0D89      	CLRF	_LCD1,0
250                     ;	;.line	468; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x00;
251 03E8 [00] [1] 0D88      	CLRF	_LCD0,0
252                     ;	;.line	469; ".\Source\Drv_LCD.c"	}
253 03E9 [00] [1] 000A      	RET	
254                     ; exit point of _Disp_BrownOut
255                     	.ENDFUNC	_Disp_BrownOut
256                     ;--------------------------------------------------------
257                     
258                     .globl _Disp_CAL
259                     
260                     ;--------------------------------------------------------
261                     	.FUNC _Disp_CAL:0
262                     ;--------------------------------------------------------
263                     ;	;.line	437; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
264 1534 [00] [1] 0011      _Disp_CAL:	;Function start
265 1535 [00] [1] 0D8D      	CLRF	_LCD5,0
266                     ;	;.line	439; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
267 1536 [00] [1] 0D8C      	CLRF	_LCD4,0
268                     ;	;.line	441; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
269 1537 [00] [1] 0D8B      	CLRF	_LCD3,0
270                     ;	;.line	443; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x85;
271 1538 [00] [1] 0685      	MVL	0x85
272 1539 [00] [1] 678A      	MVF	_LCD2,1,0
273                     ;	;.line	445; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x77;
274 153A [00] [1] 0677      	MVL	0x77
275 153B [00] [1] 6789      	MVF	_LCD1,1,0
276                     ;	;.line	447; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x95;
277 153C [00] [1] 0695      	MVL	0x95
278 153D [00] [1] 6788      	MVF	_LCD0,1,0
279                     ;	;.line	448; ".\Source\Drv_LCD.c"	}
280 153E [00] [1] 000A      	RET	
281                     ; exit point of _Disp_CAL
282                     	.ENDFUNC	_Disp_CAL
283                     ;--------------------------------------------------------
284                     
285                     .globl _Disp_Bth
286                     
287                     ;--------------------------------------------------------
288                     	.FUNC _Disp_Bth:0
289                     ;--------------------------------------------------------
290                     ;	;.line	416; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
291 153F [00] [1] 0011      _Disp_Bth:	;Function start
292 1540 [00] [1] 0D8D      	CLRF	_LCD5,0
293                     ;	;.line	418; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
294 1541 [00] [1] 0D8C      	CLRF	_LCD4,0
295                     ;	;.line	420; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
296 1542 [00] [1] 0D8B      	CLRF	_LCD3,0
297                     ;	;.line	422; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x47;
298 1543 [00] [1] 0647      	MVL	0x47
299 1544 [00] [1] 678A      	MVF	_LCD2,1,0
300                     ;	;.line	424; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x87;
301 1545 [00] [1] 0687      	MVL	0x87
302 1546 [00] [1] 6789      	MVF	_LCD1,1,0
303                     ;	;.line	426; ".\Source\Drv_LCD.c"	LCD0_Macro = 0xC7;
304 1547 [00] [1] 06C7      	MVL	0xc7
305 1548 [00] [1] 6788      	MVF	_LCD0,1,0
306                     ;	;.line	427; ".\Source\Drv_LCD.c"	}
307 1549 [00] [1] 000A      	RET	
308                     ; exit point of _Disp_Bth
309                     	.ENDFUNC	_Disp_Bth
310                     ;--------------------------------------------------------
311                     
312                     .globl _Disp_Rct
313                     
314                     ;--------------------------------------------------------
315                     	.FUNC _Disp_Rct:0
316                     ;--------------------------------------------------------
317                     ;	;.line	395; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
318 154A [00] [1] 0011      _Disp_Rct:	;Function start
319 154B [00] [1] 0D8D      	CLRF	_LCD5,0
320                     ;	;.line	397; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
321 154C [00] [1] 0D8C      	CLRF	_LCD4,0
322                     ;	;.line	399; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
323 154D [00] [1] 0D8B      	CLRF	_LCD3,0
324                     ;	;.line	401; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x87;
325 154E [00] [1] 0687      	MVL	0x87
326 154F [00] [1] 678A      	MVF	_LCD2,1,0
327                     ;	;.line	403; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x86;
328 1550 [00] [1] 0686      	MVL	0x86
329 1551 [00] [1] 6789      	MVF	_LCD1,1,0
330                     ;	;.line	405; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x06;
331 1552 [00] [1] 0606      	MVL	0x06
332 1553 [00] [1] 6788      	MVF	_LCD0,1,0
333                     ;	;.line	406; ".\Source\Drv_LCD.c"	}
334 1554 [00] [1] 000A      	RET	
335                     ; exit point of _Disp_Rct
336                     	.ENDFUNC	_Disp_Rct
337                     ;--------------------------------------------------------
338                     
339                     .globl _Disp_Udr
340                     
341                     ;--------------------------------------------------------
342                     	.FUNC _Disp_Udr:0
343                     ;--------------------------------------------------------
344                     ;	;.line	374; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
345 1555 [00] [1] 0011      _Disp_Udr:	;Function start
346 1556 [00] [1] 0D8D      	CLRF	_LCD5,0
347                     ;	;.line	376; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
348 1557 [00] [1] 0D8C      	CLRF	_LCD4,0
349                     ;	;.line	378; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
350 1558 [00] [1] 0D8B      	CLRF	_LCD3,0
351                     ;	;.line	380; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x06;
352 1559 [00] [1] 0606      	MVL	0x06
353 155A [00] [1] 678A      	MVF	_LCD2,1,0
354                     ;	;.line	382; ".\Source\Drv_LCD.c"	LCD1_Macro = 0xE6;
355 155B [00] [1] 06E6      	MVL	0xe6
356 155C [00] [1] 6789      	MVF	_LCD1,1,0
357                     ;	;.line	384; ".\Source\Drv_LCD.c"	LCD0_Macro = 0xC4;
358 155D [00] [1] 06C4      	MVL	0xc4
359 155E [00] [1] 6788      	MVF	_LCD0,1,0
360                     ;	;.line	385; ".\Source\Drv_LCD.c"	}
361 155F [00] [1] 000A      	RET	
362                     ; exit point of _Disp_Udr
363                     	.ENDFUNC	_Disp_Udr
364                     ;--------------------------------------------------------
365                     
366                     .globl _Disp_Orl
367                     
368                     ;--------------------------------------------------------
369                     	.FUNC _Disp_Orl:0
370                     ;--------------------------------------------------------
371                     ;	;.line	353; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
372 1560 [00] [1] 0011      _Disp_Orl:	;Function start
373 1561 [00] [1] 0D8D      	CLRF	_LCD5,0
374                     ;	;.line	355; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
375 1562 [00] [1] 0D8C      	CLRF	_LCD4,0
376                     ;	;.line	357; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
377 1563 [00] [1] 0D8B      	CLRF	_LCD3,0
378                     ;	;.line	359; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x85;
379 1564 [00] [1] 0685      	MVL	0x85
380 1565 [00] [1] 678A      	MVF	_LCD2,1,0
381                     ;	;.line	361; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x06;
382 1566 [00] [1] 0606      	MVL	0x06
383 1567 [00] [1] 6789      	MVF	_LCD1,1,0
384                     ;	;.line	363; ".\Source\Drv_LCD.c"	LCD0_Macro = 0xC6;
385 1568 [00] [1] 06C6      	MVL	0xc6
386 1569 [00] [1] 6788      	MVF	_LCD0,1,0
387                     ;	;.line	364; ".\Source\Drv_LCD.c"	}
388 156A [00] [1] 000A      	RET	
389                     ; exit point of _Disp_Orl
390                     	.ENDFUNC	_Disp_Orl
391                     ;--------------------------------------------------------
392                     
393                     .globl _Disp_Code
394                     
395                     ;--------------------------------------------------------
396                     	.FUNC _Disp_Code:2:$C:__divuint:$C:__moduint:$C:__cptrget1\
397                     :$L:r0x10A6:$L:_Disp_Code_STK00:$L:r0x10A8:$L:r0x10A9:$L:_Disp_Code_NumDisp_65536_371\
398                     :$L:r0x10AA
399                     ;--------------------------------------------------------
400                     ;	;.line	319; ".\Source\Drv_LCD.c"	void Disp_Code(uint16 num)
401 156B [00] [2] C487      _Disp_Code:	;Function start
402 156C [07] [2] 6686      	MVF	r0x10A6,1,0
403                     ;	;.line	325; ".\Source\Drv_LCD.c"	NumDisp[2] = num / 100;
404 156D [07] [2] 0664      	MVL	0x64
405 156E [07] [2] 660D      	MVF	__divuint_STK02,1,0
406 156F [08] [2] 0C0D      	CLRF	__divuint_STK01,0
407 1570 [09] [2] 6489      	MVF	_Disp_Code_STK00,0,0
408 1571 [09] [2] 660D      	MVF	__divuint_STK00,1,0
409 1572 [10] [2] 6489      	MVF	r0x10A6,0,0
410 1573 [10] [2] C976      	CALL	__divuint
411                     	.CHKPARA __divuint 4
412 1574 [07] [2] 6420      	MVF	STK00,0,0
413 1575 [07] [2] 6684      	MVF	r0x10A9,1,0
414 1576 [07] [2] 6681      	MVF	(_Disp_Code_NumDisp_65536_371 + 2),1,0
415                     ;	;.line	327; ".\Source\Drv_LCD.c"	NumDisp[1] = num % 100 / 10;
416 1577 [07] [2] 0664      	MVL	0x64
417 1578 [07] [2] 660D      	MVF	__moduint_STK02,1,0
418 1579 [08] [2] 0C0D      	CLRF	__moduint_STK01,0
419 157A [09] [2] 6489      	MVF	_Disp_Code_STK00,0,0
420 157B [09] [2] 660D      	MVF	__moduint_STK00,1,0
421 157C [10] [2] 6489      	MVF	r0x10A6,0,0
422 157D [10] [2] C98A      	CALL	__moduint
423                     	.CHKPARA __moduint 4
424 157E [07] [2] 6685      	MVF	r0x10A8,1,0
425 157F [07] [2] 060A      	MVL	0x0a
426 1580 [07] [2] 660D      	MVF	__divuint_STK02,1,0
427 1581 [08] [2] 0C0D      	CLRF	__divuint_STK01,0
428 1582 [09] [2] D020      	MVF	STK00,0,0
429 1583 [09] [2] F00D      	MVF	__divuint_STK00,1,0
430 1584 [10] [2] 6488      	MVF	r0x10A8,0,0
431 1585 [10] [2] C964      	CALL	__divuint
432                     	.CHKPARA __divuint 4
433 1586 [07] [2] 6420      	MVF	STK00,0,0
434 1587 [07] [2] 6680      	MVF	r0x10AA,1,0
435 1588 [07] [2] 6682      	MVF	(_Disp_Code_NumDisp_65536_371 + 1),1,0
436                     ;	;.line	329; ".\Source\Drv_LCD.c"	NumDisp[0] = num % 10;
437 1589 [07] [2] 060A      	MVL	0x0a
438 158A [07] [2] 660D      	MVF	__moduint_STK02,1,0
439 158B [08] [2] 0C0D      	CLRF	__moduint_STK01,0
440 158C [09] [2] 6489      	MVF	_Disp_Code_STK00,0,0
441 158D [09] [2] 660D      	MVF	__moduint_STK00,1,0
442 158E [10] [2] 6489      	MVF	r0x10A6,0,0
443 158F [10] [2] C978      	CALL	__moduint
444                     	.CHKPARA __moduint 4
445 1590 [07] [2] 6420      	MVF	STK00,0,0
446 1591 [07] [2] 6683 0011 	MVF	(_Disp_Code_NumDisp_65536_371 + 0),1,0
447                     ;	;.line	332; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
448 1593 [07] [1] 0D8D      	CLRF	_LCD5,0
449                     ;	;.line	334; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
450 1594 [07] [1] 0D8C      	CLRF	_LCD4,0
451                     ;	;.line	336; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
452 1595 [07] [1] 0D8B      	CLRF	_LCD3,0
453                     ;	;.line	338; ".\Source\Drv_LCD.c"	LCD2_Macro = NUM_CODE[NumDisp[0]];
454 1596 [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
455 1598 [07] [1] 6420      	MVF	STK00,0,0
456 1599 [07] [1] C990      	CALL	__cptrget1
457 159A [07] [1] 678A      	MVF	_LCD2,1,0
458                     ;	;.line	340; ".\Source\Drv_LCD.c"	LCD1_Macro = NUM_CODE[NumDisp[1]];
459 159B [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
460 159D [07] [1] 6480      	MVF	r0x10AA,0,0
461 159E [07] [1] C98B      	CALL	__cptrget1
462 159F [07] [1] 6789      	MVF	_LCD1,1,0
463                     ;	;.line	342; ".\Source\Drv_LCD.c"	LCD0_Macro = NUM_CODE[NumDisp[2]];
464 15A0 [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
465 15A2 [07] [1] 6484      	MVF	r0x10A9,0,0
466 15A3 [07] [1] C986      	CALL	__cptrget1
467 15A4 [07] [1] 6788      	MVF	_LCD0,1,0
468                     ;	;.line	343; ".\Source\Drv_LCD.c"	}
469 15A5 [00] [1] C4F8      	RET	
470                     ; exit point of _Disp_Code
471                     	.ENDFUNC	_Disp_Code
472                     ;--------------------------------------------------------
473                     
474                     .globl _Disp_Version
475                     
476                     ;--------------------------------------------------------
477                     	.FUNC _Disp_Version:1:$C:__divsint:$C:__modsint:$C:__cptrget1\
478                     :$L:r0x109A:$L:r0x109D:$L:_Disp_Version_NumDisp_65536_369
479                     ;--------------------------------------------------------
480                     ;	;.line	295; ".\Source\Drv_LCD.c"	NumDisp[1] = num / 10;
481 1673 [00] [2] C484      _Disp_Version:	;Function start
482 1674 [04] [2] 6683      	MVF	r0x109A,1,0
483 1675 [04] [2] 060A      	MVL	0x0a
484 1676 [04] [2] 660D      	MVF	__divsint_STK02,1,0
485 1677 [05] [2] 0C0D      	CLRF	__divsint_STK01,0
486 1678 [06] [2] 6485      	MVF	r0x109A,0,0
487 1679 [06] [2] 660D      	MVF	__divsint_STK00,1,0
488 167A [07] [2] 0600      	MVL	0x00
489 167B [07] [2] C9A2      	CALL	__divsint
490                     	.CHKPARA __divsint 4
491 167C [04] [2] 6420      	MVF	STK00,0,0
492 167D [04] [2] 6682      	MVF	r0x109D,1,0
493 167E [04] [2] 6680      	MVF	(_Disp_Version_NumDisp_65536_369 + 1),1,0
494                     ;	;.line	297; ".\Source\Drv_LCD.c"	NumDisp[0] = num % 10;
495 167F [04] [2] 060A      	MVL	0x0a
496 1680 [04] [2] 660D      	MVF	__modsint_STK02,1,0
497 1681 [05] [2] 0C0D      	CLRF	__modsint_STK01,0
498 1682 [06] [2] 6485      	MVF	r0x109A,0,0
499 1683 [06] [2] 660D      	MVF	__modsint_STK00,1,0
500 1684 [07] [2] 0600      	MVL	0x00
501 1685 [07] [2] C9BB      	CALL	__modsint
502                     	.CHKPARA __modsint 4
503 1686 [04] [2] 6420      	MVF	STK00,0,0
504 1687 [04] [2] 6681 0011 	MVF	(_Disp_Version_NumDisp_65536_369 + 0),1,0
505                     ;	;.line	301; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
506 1689 [04] [1] 0D8D      	CLRF	_LCD5,0
507                     ;	;.line	303; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
508 168A [04] [1] 0D8C      	CLRF	_LCD4,0
509                     ;	;.line	305; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
510 168B [04] [1] 0D8B      	CLRF	_LCD3,0
511                     ;	;.line	307; ".\Source\Drv_LCD.c"	LCD2_Macro = NUM_CODE[NumDisp[0]] + 0x08;
512 168C [04] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
513 168E [04] [1] 6420      	MVF	STK00,0,0
514 168F [04] [1] C89A      	CALL	__cptrget1
515 1690 [04] [1] 0408      	ADDL	0x08
516 1691 [04] [1] 678A      	MVF	_LCD2,1,0
517                     ;	;.line	309; ".\Source\Drv_LCD.c"	LCD1_Macro = NUM_CODE[NumDisp[1]];
518 1692 [04] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
519 1694 [04] [1] 6482      	MVF	r0x109D,0,0
520 1695 [04] [1] C894      	CALL	__cptrget1
521 1696 [04] [1] 6789      	MVF	_LCD1,1,0
522                     ;	;.line	311; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x00;
523 1697 [04] [1] 0D88      	CLRF	_LCD0,0
524                     ;	;.line	312; ".\Source\Drv_LCD.c"	}
525 1698 [00] [1] C4FC      	RET	
526                     ; exit point of _Disp_Version
527                     	.ENDFUNC	_Disp_Version
528                     ;--------------------------------------------------------
529                     
530                     .globl _Disp_StaticDash
531                     
532                     ;--------------------------------------------------------
533                     	.FUNC _Disp_StaticDash:0
534                     ;--------------------------------------------------------
535                     ;	;.line	271; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
536 052D [00] [1] 0011      _Disp_StaticDash:	;Function start
537 052E [00] [1] 0D8D      	CLRF	_LCD5,0
538                     ;	;.line	273; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
539 052F [00] [1] 0D8C      	CLRF	_LCD4,0
540                     ;	;.line	275; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
541 0530 [00] [1] 0D8B      	CLRF	_LCD3,0
542                     ;	;.line	277; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x02;
543 0531 [00] [1] 0602      	MVL	0x02
544 0532 [00] [1] 678A      	MVF	_LCD2,1,0
545                     ;	;.line	279; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x02;
546 0533 [00] [1] 6789      	MVF	_LCD1,1,0
547                     ;	;.line	281; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x02;
548 0534 [00] [1] 6788      	MVF	_LCD0,1,0
549                     ;	;.line	282; ".\Source\Drv_LCD.c"	}
550 0535 [00] [1] 000A      	RET	
551                     ; exit point of _Disp_StaticDash
552                     	.ENDFUNC	_Disp_StaticDash
553                     ;--------------------------------------------------------
554                     
555                     .globl _Disp_Err
556                     
557                     ;--------------------------------------------------------
558                     	.FUNC _Disp_Err:0
559                     ;--------------------------------------------------------
560                     ;	;.line	250; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
561 15A6 [00] [1] 0011      _Disp_Err:	;Function start
562 15A7 [00] [1] 0D8D      	CLRF	_LCD5,0
563                     ;	;.line	252; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
564 15A8 [00] [1] 0D8C      	CLRF	_LCD4,0
565                     ;	;.line	254; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
566 15A9 [00] [1] 0D8B      	CLRF	_LCD3,0
567                     ;	;.line	256; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x06;
568 15AA [00] [1] 0606      	MVL	0x06
569 15AB [00] [1] 678A      	MVF	_LCD2,1,0
570                     ;	;.line	258; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x06;
571 15AC [00] [1] 6789      	MVF	_LCD1,1,0
572                     ;	;.line	260; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x97;
573 15AD [00] [1] 0697      	MVL	0x97
574 15AE [00] [1] 6788      	MVF	_LCD0,1,0
575                     ;	;.line	261; ".\Source\Drv_LCD.c"	}
576 15AF [00] [1] 000A      	RET	
577                     ; exit point of _Disp_Err
578                     	.ENDFUNC	_Disp_Err
579                     ;--------------------------------------------------------
580                     
581                     .globl _Disp_ErrNo
582                     
583                     ;--------------------------------------------------------
584                     	.FUNC _Disp_ErrNo:1:$C:__cptrget1\
585                     :$L:r0x1096
586                     ;--------------------------------------------------------
587                     ;	;.line	226; ".\Source\Drv_LCD.c"	void Disp_ErrNo(uint8 No)
588 15B0 [00] [2] C481      _Disp_ErrNo:	;Function start
589 15B1 [01] [2] 6680 0011 	MVF	r0x1096,1,0
590                     ;	;.line	229; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
591 15B3 [01] [1] 0D8D      	CLRF	_LCD5,0
592                     ;	;.line	231; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
593 15B4 [01] [1] 0D8C      	CLRF	_LCD4,0
594                     ;	;.line	233; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
595 15B5 [01] [1] 0D8B      	CLRF	_LCD3,0
596                     ;	;.line	235; ".\Source\Drv_LCD.c"	LCD2_Macro = NUM_CODE[No];
597 15B6 [01] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
598 15B8 [01] [1] 6480      	MVF	r0x1096,0,0
599 15B9 [01] [1] C970      	CALL	__cptrget1
600 15BA [01] [1] 678A      	MVF	_LCD2,1,0
601                     ;	;.line	237; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x06;
602 15BB [01] [1] 0606      	MVL	0x06
603 15BC [01] [1] 6789      	MVF	_LCD1,1,0
604                     ;	;.line	239; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x97;
605 15BD [01] [1] 0697      	MVL	0x97
606 15BE [01] [1] 6788      	MVF	_LCD0,1,0
607                     ;	;.line	240; ".\Source\Drv_LCD.c"	}
608 15BF [00] [1] C4FF      	RET	
609                     ; exit point of _Disp_ErrNo
610                     	.ENDFUNC	_Disp_ErrNo
611                     ;--------------------------------------------------------
612                     
613                     .globl _Disp_Nothing
614                     
615                     ;--------------------------------------------------------
616                     	.FUNC _Disp_Nothing:0
617                     ;--------------------------------------------------------
618                     ;	;.line	208; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
619 0541 [00] [1] 0011      _Disp_Nothing:	;Function start
620 0542 [00] [1] 0D8D      	CLRF	_LCD5,0
621                     ;	;.line	210; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
622 0543 [00] [1] 0D8C      	CLRF	_LCD4,0
623                     ;	;.line	212; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
624 0544 [00] [1] 0D8B      	CLRF	_LCD3,0
625                     ;	;.line	214; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x00;
626 0545 [00] [1] 0D8A      	CLRF	_LCD2,0
627                     ;	;.line	216; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x00;
628 0546 [00] [1] 0D89      	CLRF	_LCD1,0
629                     ;	;.line	218; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x00;
630 0547 [00] [1] 0D88      	CLRF	_LCD0,0
631                     ;	;.line	219; ".\Source\Drv_LCD.c"	}
632 0548 [00] [1] 000A      	RET	
633                     ; exit point of _Disp_Nothing
634                     	.ENDFUNC	_Disp_Nothing
635                     ;--------------------------------------------------------
636                     
637                     .globl _Disp_All
638                     
639                     ;--------------------------------------------------------
640                     	.FUNC _Disp_All:0
641                     ;--------------------------------------------------------
642                     ;	;.line	171; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x07;
643                     _Disp_All:	;Function start
644 03D6 [00] [2] 0607 0011 	MVL	0x07
645 03D8 [00] [1] 678D      	MVF	_LCD5,1,0
646                     ;	;.line	180; ".\Source\Drv_LCD.c"	LCD4_Macro = 0xFF;
647 03D9 [00] [1] 0B8C      	SETF	_LCD4,0
648                     ;	;.line	182; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x08;
649 03DA [00] [1] 0608      	MVL	0x08
650 03DB [00] [1] 678B      	MVF	_LCD3,1,0
651                     ;	;.line	184; ".\Source\Drv_LCD.c"	LCD2_Macro = 0xFF;
652 03DC [00] [1] 0B8A      	SETF	_LCD2,0
653                     ;	;.line	193; ".\Source\Drv_LCD.c"	LCD1_Macro = 0xF7;
654 03DD [00] [1] 06F7      	MVL	0xf7
655 03DE [00] [1] 6789      	MVF	_LCD1,1,0
656                     ;	;.line	197; ".\Source\Drv_LCD.c"	LCD0_Macro = 0xFF;
657 03DF [00] [1] 0B88      	SETF	_LCD0,0
658                     ;	;.line	198; ".\Source\Drv_LCD.c"	}
659 03E0 [00] [1] 000A      	RET	
660                     ; exit point of _Disp_All
661                     	.ENDFUNC	_Disp_All
662                     ;--------------------------------------------------------
663                     
664                     .globl _Disp_Hi
665                     
666                     ;--------------------------------------------------------
667                     	.FUNC _Disp_Hi:0
668                     ;--------------------------------------------------------
669                     ;	;.line	148; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
670 0523 [00] [1] 0011      _Disp_Hi:	;Function start
671 0524 [00] [1] 0D8D      	CLRF	_LCD5,0
672                     ;	;.line	150; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
673 0525 [00] [1] 0D8C      	CLRF	_LCD4,0
674                     ;	;.line	152; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
675 0526 [00] [1] 0D8B      	CLRF	_LCD3,0
676                     ;	;.line	154; ".\Source\Drv_LCD.c"	LCD2_Macro = 0x04;
677 0527 [00] [1] 0604      	MVL	0x04
678 0528 [00] [1] 678A      	MVF	_LCD2,1,0
679                     ;	;.line	156; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x67;
680 0529 [00] [1] 0667      	MVL	0x67
681 052A [00] [1] 6789      	MVF	_LCD1,1,0
682                     ;	;.line	158; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x00;
683 052B [00] [1] 0D88      	CLRF	_LCD0,0
684                     ;	;.line	159; ".\Source\Drv_LCD.c"	}
685 052C [00] [1] 000A      	RET	
686                     ; exit point of _Disp_Hi
687                     	.ENDFUNC	_Disp_Hi
688                     ;--------------------------------------------------------
689                     
690                     .globl _Disp_Low
691                     
692                     ;--------------------------------------------------------
693                     	.FUNC _Disp_Low:0
694                     ;--------------------------------------------------------
695                     ;	;.line	127; ".\Source\Drv_LCD.c"	LCD5_Macro = 0x00;
696                     _Disp_Low:	;Function start
697                     	CLRF	_LCD5,0
698                     ;	;.line	129; ".\Source\Drv_LCD.c"	LCD4_Macro = 0x00;
699                     	CLRF	_LCD4,0
700                     ;	;.line	131; ".\Source\Drv_LCD.c"	LCD3_Macro = 0x00;
701                     	CLRF	_LCD3,0
702                     ;	;.line	133; ".\Source\Drv_LCD.c"	LCD2_Macro = 0xC6;
703                     	MVL	0xc6
704                     	MVF	_LCD2,1,0
705                     ;	;.line	135; ".\Source\Drv_LCD.c"	LCD1_Macro = 0x85;
706                     	MVL	0x85
707                     	MVF	_LCD1,1,0
708                     ;	;.line	137; ".\Source\Drv_LCD.c"	LCD0_Macro = 0x00;
709                     	CLRF	_LCD0,0
710                     ;	;.line	138; ".\Source\Drv_LCD.c"	}
711                     	RET	
712                     ; exit point of _Disp_Low
713                     	.ENDFUNC	_Disp_Low
714                     ;--------------------------------------------------------
715                     
716                     .globl _LCD_Clear_Register
717                     
718                     ;--------------------------------------------------------
719                     	.FUNC _LCD_Clear_Register:0
720                     ;--------------------------------------------------------
721                     ;	;.line	91; ".\Source\Drv_LCD.c"	LCDCN1 = 0x00;
722 15C0 [00] [1] 0011      _LCD_Clear_Register:	;Function start
723 15C1 [00] [1] 0D80      	CLRF	_LCDCN1,0
724                     ;	;.line	95; ".\Source\Drv_LCD.c"	LCDCN2 = 0x00;
725 15C2 [00] [1] 0D81      	CLRF	_LCDCN2,0
726                     ;	;.line	99; ".\Source\Drv_LCD.c"	LCDCN3 = 0x00;
727 15C3 [00] [1] 0D82      	CLRF	_LCDCN3,0
728                     ;	;.line	103; ".\Source\Drv_LCD.c"	LCDCN4 = 0x00;
729 15C4 [00] [1] 0D83      	CLRF	_LCDCN4,0
730                     ;	;.line	107; ".\Source\Drv_LCD.c"	LCDCN6 = 0x00;
731 15C5 [00] [1] 0D85      	CLRF	_LCDCN6,0
732                     ;	;.line	111; ".\Source\Drv_LCD.c"	LCDCN7 = 0x00;
733 15C6 [00] [1] 0D86      	CLRF	_LCDCN7,0
734                     ;	;.line	115; ".\Source\Drv_LCD.c"	LCDCN8 = 0x00;
735 15C7 [00] [1] 0D87      	CLRF	_LCDCN8,0
736                     ;	;.line	116; ".\Source\Drv_LCD.c"	}
737 15C8 [00] [1] 000A      	RET	
738                     ; exit point of _LCD_Clear_Register
739                     	.ENDFUNC	_LCD_Clear_Register
740                     ;--------------------------------------------------------
741                     
742                     .globl _LCD_Configuration
743                     
744                     ;--------------------------------------------------------
745                     	.FUNC _LCD_Configuration:0:$C:_Disp_Nothing\
746                     
747                     ;--------------------------------------------------------
748                     ;	;.line	25; ".\Source\Drv_LCD.c"	LCD_Enable();
749                     _LCD_Configuration:	;Function start
750 15C9 [00] [1] 9F80      	BSF	_LCDCN1,7
751                     ;	;.line	27; ".\Source\Drv_LCD.c"	LCD_ChargePumpSelect(LCDV_3V0);
752 15CA [00] [1] 6580      	MVF	_LCDCN1,0,0
753 15CB [00] [1] 018F      	ANDL	0x8f
754 15CC [00] [1] 0240      	IORL	0x40
755 15CD [00] [1] 6780      	MVF	_LCDCN1,1,0
756                     ;	;.line	29; ".\Source\Drv_LCD.c"	LCD_OutBufferEnable();
757 15CE [00] [1] 9780      	BSF	_LCDCN1,3
758                     ;	;.line	31; ".\Source\Drv_LCD.c"	LCD_ChargePumpClk(SELPCLK_7KHZ);
759 15CF [00] [1] 6580      	MVF	_LCDCN1,0,0
760 15D0 [00] [1] 01FB      	ANDL	0xfb
761 15D1 [00] [1] 0204      	IORL	0x04
762 15D2 [00] [1] 6780      	MVF	_LCDCN1,1,0
763                     ;	;.line	35; ".\Source\Drv_LCD.c"	LCD_CLK_ClkSelect(LCDS_LSCK);
764 15D3 [00] [1] 6435      	MVF	_OSCCN1,0,0
765 15D4 [00] [1] 01FE      	ANDL	0xfe
766 15D5 [00] [1] 0201      	IORL	0x01
767 15D6 [00] [1] 6635      	MVF	_OSCCN1,1,0
768                     ;	;.line	38; ".\Source\Drv_LCD.c"	LCD_CLK_DivSelect(DLCD_LCDCKDIV2);
769 15D7 [00] [1] 063F      	MVL	0x3f
770 15D8 [00] [1] 2A36      	ANDF	_OSCCN2,1,0
771                     ;	;.line	52; ".\Source\Drv_LCD.c"	LCDCN1 |= 0x01;
772 15D9 [00] [1] 9180      	BSF	_LCDCN1,0
773                     ;	;.line	57; ".\Source\Drv_LCD.c"	LCD_DisplayOn();
774 15DA [00] [1] 8381      	BCF	_LCDCN2,1
775                     ;	;.line	61; ".\Source\Drv_LCD.c"	LCDCN3 = 0xFF;
776 15DB [00] [1] 0B82      	SETF	_LCDCN3,0
777                     ;	;.line	65; ".\Source\Drv_LCD.c"	LCDCN6 = 0xFF;
778 15DC [00] [1] 0B85      	SETF	_LCDCN6,0
779                     ;	;.line	69; ".\Source\Drv_LCD.c"	LCDCN7 = 0xFF;
780 15DD [00] [1] 0B86      	SETF	_LCDCN7,0
781                     ;	;.line	73; ".\Source\Drv_LCD.c"	LCDCN8 = 0x3F;
782 15DE [00] [1] 063F      	MVL	0x3f
783 15DF [00] [1] 6787      	MVF	_LCDCN8,1,0
784                     ;	;.line	77; ".\Source\Drv_LCD.c"	LCDCN4 = 0x00;
785 15E0 [00] [1] 0D83      	CLRF	_LCDCN4,0
786                     ;	;.line	79; ".\Source\Drv_LCD.c"	Disp_Nothing();
787 15E1 [00] [1] C200 F541 	CALL	_Disp_Nothing
788                     	.CHKPARA _Disp_Nothing 0
789                     ;	;.line	80; ".\Source\Drv_LCD.c"	}
790                     	RET	
791                     ; exit point of _LCD_Configuration
792                     	.ENDFUNC	_LCD_Configuration
793                     ;--------------------------------------------------------
794                     
795                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
796                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
797                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
798                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
799                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
800                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
801                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
802                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
803                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
804                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
805                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
806                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
807                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
808                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
809                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
810                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
811                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
812                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
813                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
814                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
815                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
816                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
817                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
818                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
819                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
820                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
821                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
822                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
823                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
824                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
825                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
826                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
827                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
828                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
829                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
830                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
831                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
832                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
833                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
834                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
835                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
836                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
837                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
838                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
839                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
840                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
841                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
842                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
843                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
844                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
845                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
846                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
847                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
848                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
849                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
850                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
851                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
852                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
853                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
854                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
855                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
856                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
857                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
858                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
859                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
860                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
861                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
862                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
863                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
864                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
865                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
866                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
867                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
868                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
869                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
870                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
871                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
872                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
873                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
874                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
875                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
876                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
877                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
878                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
879                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
880                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
881                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
882                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
883                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
884                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
885                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
886                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
887                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
888                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
889                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
890                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
891                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
892                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
893                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
894                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
895                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
896                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
897                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
898                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
899                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
900                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
901                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
902                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
903                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
904                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
905                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
906                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
907                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
908                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
909                     	;--cdb--S:G$_divsint$0$0({2}DF,SI:S),C,0,0
910                     	;--cdb--S:G$_modsint$0$0({2}DF,SI:S),C,0,0
911                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
912                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
913                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
914                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
915                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
916                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
917                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
918                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
919                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
920                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
921                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
922                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
923                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
924                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
925                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
926                     	;--cdb--S:G$sIIC$0$0({1}ST__00000000:S),E,0,0
927                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
928                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000001:S),E,0,0
929                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000002:S),E,0,0
930                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000003:S),E,0,0
931                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U),E,0,0
932                     	;--cdb--S:G$sTest$0$0({19}ST__00000004:S),E,0,0
933                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U),E,0,0
934                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U),E,0,0
935                     	;--cdb--S:G$eVersionCode$0$0({1}SC:U),E,0,0
936                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U),E,0,0
937                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U),E,0,0
938                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
939                     	;--cdb--S:G$sButton$0$0({2}ST__00000005:S),E,0,0
940                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000006:S),E,0,0
941                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U),E,0,0
942                     	;--cdb--S:G$sLVD$0$0({5}ST__00000007:S),E,0,0
943                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
944                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
945                     	;--cdb--S:G$eErr$0$0({1}SC:U),E,0,0
946                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U),E,0,0
947                     	;--cdb--S:G$sADC$0$0({45}ST__00000008:S),E,0,0
948                     	;--cdb--S:G$eADCChannel$0$0({1}SC:U),E,0,0
949                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U),E,0,0
950                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U),E,0,0
951                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
952                     	;--cdb--S:G$sMemory$0$0({5}ST__00000009:S),E,0,0
953                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000010:S),E,0,0
954                     	;--cdb--S:G$sActual$0$0({5}ST__00000012:S),E,0,0
955                     	;--cdb--S:G$sForecast$0$0({26}ST__00000013:S),E,0,0
956                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000011:S),E,0,0
957                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U),E,0,0
958                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000014:S),E,0,0
959                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U),E,0,0
960                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U),E,0,0
961                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000015:S),E,0,0
962                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U),E,0,0
963                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000016:S),E,0,0
964                     	;--cdb--S:G$NUM_CODE$0$0({11}DA11d,SC:U),D,0,0
965                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
966                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
967                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
968                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
969                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
970                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
971                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
972                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
973                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
974                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
975                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
976                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
977                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
978                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
979                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
980                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
981                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
982                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
983                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
984                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
985                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
986                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
987                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
988                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
989                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
990                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
991                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
992                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
993                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
994                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
995                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
996                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
997                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
998                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
999                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
1000                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
1001                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
1002                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
1003                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
1004                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
1005                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
1006                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
1007                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
1008                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
1009                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
1010                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
1011                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
1012                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
1013                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
1014                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
1015                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
1016                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
1017                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
1018                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
1019                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
1020                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
1021                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
1022                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
1023                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
1024                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
1025                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
1026                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
1027                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
1028                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
1029                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
1030                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
1031                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
1032                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
1033                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
1034                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
1035                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
1036                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
1037                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
1038                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
1039                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
1040                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
1041                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
1042                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
1043                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
1044                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
1045                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
1046                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
1047                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
1048                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
1049                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
1050                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
1051                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
1052                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
1053                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
1054                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
1055                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
1056                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
1057                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
1058                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
1059                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
1060                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
1061                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
1062                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
1063                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
1064                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
1065                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
1066                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
1067                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
1068                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
1069                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
1070                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
1071                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
1072                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
1073                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
1074                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
1075                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
1076                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
1077                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
1078                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
1079                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
1080                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
1081                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
1082                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
1083                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
1084                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
1085                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
1086                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
1087                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
1088                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
1089                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
1090                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
1091                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
1092                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
1093                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
1094                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
1095                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
1096                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
1097                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
1098                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
1099                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
1100                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
1101                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
1102                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
1103                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
1104                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
1105                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
1106                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
1107                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
1108                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
1109                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
1110                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
1111                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
1112                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
1113                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
1114                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
1115                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
1116                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
1117                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
1118                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
1119                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
1120                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
1121                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
1122                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
1123                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
1124                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
1125                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
1126                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
1127                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
1128                     	;--cdb--S:LDrv_LCD.aligned_alloc._aligned_alloc_size_65536_25$size$10000$25({2}SI:U),E,0,0
1129                     	;--cdb--S:LDrv_LCD.aligned_alloc._aligned_alloc_alignment_65536_25$alignment$10000$25({2}SI:U),E,0,0
1130                     	;--cdb--S:LDrv_LCD.Disp_ErrNo._Disp_ErrNo_No_65536_362$No$10000$362({1}SC:U),R,0,0,[r0x1096]
1131                     	;--cdb--S:LDrv_LCD.Disp_Version._Disp_Version_num_65536_368$num$10000$368({1}SC:U),R,0,0,[r0x1099]
1132                     	;--cdb--S:LDrv_LCD.Disp_Version._Disp_Version_NumDisp_65536_369$NumDisp$10000$369({2}DA2d,SC:U),E,0,0
1133                     	;--cdb--S:LDrv_LCD.Disp_Code._Disp_Code_num_65536_370$num$10000$370({2}SI:U),R,0,0,[_Disp_Code_STK00,r0x10A6]
1134                     	;--cdb--S:LDrv_LCD.Disp_Code._Disp_Code_NumDisp_65536_371$NumDisp$10000$371({3}DA3d,SC:U),E,0,0
1135                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
1136                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
1137                     ;--------------------------------------------------------
1138                     ; external declarations
1139                     ;--------------------------------------------------------
1140                     	.globl	__divsint
1141                     	.globl	__modsint
1142                     	.globl	__divuint
1143                     	.globl	__moduint
1144                     	.globl	_FSR0
1145                     	.globl	_FSR1
1146                     	.globl	_FSR2
1147                     	.globl	_ADCR
1148                     	.globl	_sIIC
1149                     	.globl	_BIE_Available_Addr
1150                     	.globl	_sTIMx
1151                     	.globl	_sUARTx
1152                     	.globl	_sAutoBps
1153                     	.globl	_eAutoBps_Status
1154                     	.globl	_sTest
1155                     	.globl	_eTempUnit
1156                     	.globl	_eBondingTempUnit
1157                     	.globl	_eVersionCode
1158                     	.globl	_eMeasureMode
1159                     	.globl	_eBinding_Status
1160                     	.globl	_Enter_PrepareSleep_Flag
1161                     	.globl	_sButton
1162                     	.globl	_sTimeStamp
1163                     	.globl	_eButton_Status
1164                     	.globl	_sLVD
1165                     	.globl	_UnitExchangeCompleted
1166                     	.globl	_ERR
1167                     	.globl	_eErr
1168                     	.globl	_eDisplay_Interfaces
1169                     	.globl	_sADC
1170                     	.globl	_eADCChannel
1171                     	.globl	_eSystem_Mode
1172                     	.globl	_eBuzzer_Status
1173                     	.globl	_Flag_No_Buzzer
1174                     	.globl	_sMemory
1175                     	.globl	_sMemoryFlag
1176                     	.globl	_sActual
1177                     	.globl	_sForecast
1178                     	.globl	_sTempCal
1179                     	.globl	_eMeas_Status
1180                     	.globl	_sActual_Forecast
1181                     	.globl	_eTo_Actual_Ways
1182                     	.globl	_eBle_Sta
1183                     	.globl	_sBleStatus
1184                     	.globl	_eBacklight_Status
1185                     	.globl	_sBacklight
1186                     	.globl	_NUM_CODE
1187                     	.globl	_R_Table
1188                     	.globl	_CloseTable
1189                     	.globl	__cptrget1
1190                     
1191                     	.globl STK07
1192                     	.globl STK07_SAVE
1193                     	.globl STK06
1194                     	.globl STK06_SAVE
1195                     	.globl STK05
1196                     	.globl STK05_SAVE
1197                     	.globl STK04
1198                     	.globl STK04_SAVE
1199                     	.globl STK03
1200                     	.globl STK03_SAVE
1201                     	.globl STK02
1202                     	.globl STK02_SAVE
1203                     	.globl STK01
1204                     	.globl STK01_SAVE
1205                     	.globl STK00
1206                     	.globl STK00_SAVE
1207                     ;--------------------------------------------------------
1208                     ; global -1 declarations
1209                     ;--------------------------------------------------------
1210                     	.globl	_Disp_ErrNo
1211                     	.globl	_Disp_Version
1212                     	.globl	_Disp_Code
1213                     
1214                     	.globl	_memcpy
1215                     ;--------------------------------------------------------
1216                     ; global -2 definitions
1217                     ;--------------------------------------------------------
1218                     	.area DSEG(DATA)
1219                     __SWTGTID	.equ	0xA6A6B2CF
1220                     
1221                     	.area DSEG(DATA)
1222                     _INDF0	.equ	0x0
1223                     
1224                     	.area DSEG(DATA)
1225                     _POINC0	.equ	0x1
1226                     
1227                     	.area DSEG(DATA)
1228                     _PODEC0	.equ	0x2
1229                     
1230                     	.area DSEG(DATA)
1231                     _PRINC0	.equ	0x3
1232                     
1233                     	.area DSEG(DATA)
1234                     _PLUSW0	.equ	0x4
1235                     
1236                     	.area DSEG(DATA)
1237                     _INDF1	.equ	0x5
1238                     
1239                     	.area DSEG(DATA)
1240                     _POINC1	.equ	0x6
1241                     
1242                     	.area DSEG(DATA)
1243                     _PODEC1	.equ	0x7
1244                     
1245                     	.area DSEG(DATA)
1246                     _PRINC1	.equ	0x8
1247                     
1248                     	.area DSEG(DATA)
1249                     _PLUSW1	.equ	0x9
1250                     
1251                     	.area DSEG(DATA)
1252                     _INDF2	.equ	0xA
1253                     
1254                     	.area DSEG(DATA)
1255                     _POINC2	.equ	0xB
1256                     
1257                     	.area DSEG(DATA)
1258                     _PODEC2	.equ	0xC
1259                     
1260                     	.area DSEG(DATA)
1261                     _PRINC2	.equ	0xD
1262                     
1263                     	.area DSEG(DATA)
1264                     _PLUSW2	.equ	0xE
1265                     
1266                     	.area DSEG(DATA)
1267                     _FSR0H	.equ	0xF
1268                     
1269                     	.area DSEG(DATA)
1270                     _FSR0L	.equ	0x10
1271                     
1272                     	.area DSEG(DATA)
1273                     _FSR1H	.equ	0x11
1274                     
1275                     	.area DSEG(DATA)
1276                     _FSR1L	.equ	0x12
1277                     
1278                     	.area DSEG(DATA)
1279                     _FSR2H	.equ	0x13
1280                     
1281                     	.area DSEG(DATA)
1282                     _FSR2L	.equ	0x14
1283                     
1284                     	.area DSEG(DATA)
1285                     _TOSH	.equ	0x16
1286                     
1287                     	.area DSEG(DATA)
1288                     _TOSL	.equ	0x17
1289                     
1290                     	.area DSEG(DATA)
1291                     _SKCN	.equ	0x18
1292                     
1293                     	.area DSEG(DATA)
1294                     _PCLATH	.equ	0x1A
1295                     
1296                     	.area DSEG(DATA)
1297                     _PCLATL	.equ	0x1B
1298                     
1299                     	.area DSEG(DATA)
1300                     _TBLPTRH	.equ	0x1D
1301                     
1302                     	.area DSEG(DATA)
1303                     _TBLPTRL	.equ	0x1E
1304                     
1305                     	.area DSEG(DATA)
1306                     _TBLDH	.equ	0x1F
1307                     
1308                     	.area DSEG(DATA)
1309                     _TBLDL	.equ	0x20
1310                     
1311                     	.area DSEG(DATA)
1312                     _PRODH	.equ	0x21
1313                     
1314                     	.area DSEG(DATA)
1315                     _PRODL	.equ	0x22
1316                     
1317                     	.area DSEG(DATA)
1318                     _INTE0	.equ	0x23
1319                     
1320                     	.area DSEG(DATA)
1321                     _INTE1	.equ	0x24
1322                     
1323                     	.area DSEG(DATA)
1324                     _INTE2	.equ	0x25
1325                     
1326                     	.area DSEG(DATA)
1327                     _INTF0	.equ	0x26
1328                     
1329                     	.area DSEG(DATA)
1330                     _INTF1	.equ	0x27
1331                     
1332                     	.area DSEG(DATA)
1333                     _INTF2	.equ	0x28
1334                     
1335                     	.area DSEG(DATA)
1336                     _WREG	.equ	0x29
1337                     
1338                     	.area DSEG(DATA)
1339                     _BSRCN	.equ	0x2A
1340                     
1341                     	.area DSEG(DATA)
1342                     _STATUS	.equ	0x2B
1343                     
1344                     	.area DSEG(DATA)
1345                     _MSTAT	.equ	0x2B
1346                     
1347                     	.area DSEG(DATA)
1348                     _PSTAT	.equ	0x2C
1349                     
1350                     	.area DSEG(DATA)
1351                     _BIECN	.equ	0x2E
1352                     
1353                     	.area DSEG(DATA)
1354                     _BIEARH	.equ	0x2F
1355                     
1356                     	.area DSEG(DATA)
1357                     _BIEARL	.equ	0x30
1358                     
1359                     	.area DSEG(DATA)
1360                     _BIEDRH	.equ	0x31
1361                     
1362                     	.area DSEG(DATA)
1363                     _BIEDRL	.equ	0x32
1364                     
1365                     	.area DSEG(DATA)
1366                     _PWRCN	.equ	0x33
1367                     
1368                     	.area DSEG(DATA)
1369                     _OSCCN0	.equ	0x34
1370                     
1371                     	.area DSEG(DATA)
1372                     _OSCCN1	.equ	0x35
1373                     
1374                     	.area DSEG(DATA)
1375                     _OSCCN2	.equ	0x36
1376                     
1377                     	.area DSEG(DATA)
1378                     _CSFCN0	.equ	0x37
1379                     
1380                     	.area DSEG(DATA)
1381                     _CSFCN1	.equ	0x38
1382                     
1383                     	.area DSEG(DATA)
1384                     _WDTCN	.equ	0x39
1385                     
1386                     	.area DSEG(DATA)
1387                     _AD1H	.equ	0x3A
1388                     
1389                     	.area DSEG(DATA)
1390                     _AD1M	.equ	0x3B
1391                     
1392                     	.area DSEG(DATA)
1393                     _AD1L	.equ	0x3C
1394                     
1395                     	.area DSEG(DATA)
1396                     _AD1CN0	.equ	0x3D
1397                     
1398                     	.area DSEG(DATA)
1399                     _AD1CN1	.equ	0x3E
1400                     
1401                     	.area DSEG(DATA)
1402                     _AD1CN2	.equ	0x3F
1403                     
1404                     	.area DSEG(DATA)
1405                     _AD1CN3	.equ	0x40
1406                     
1407                     	.area DSEG(DATA)
1408                     _AD1CN4	.equ	0x41
1409                     
1410                     	.area DSEG(DATA)
1411                     _AD1CN5	.equ	0x42
1412                     
1413                     	.area DSEG(DATA)
1414                     _LVDCN	.equ	0x43
1415                     
1416                     	.area DSEG(DATA)
1417                     _TMA1CN	.equ	0x44
1418                     
1419                     	.area DSEG(DATA)
1420                     _TMA1R	.equ	0x45
1421                     
1422                     	.area DSEG(DATA)
1423                     _TMA1C	.equ	0x46
1424                     
1425                     	.area DSEG(DATA)
1426                     _TB1FLAG	.equ	0x47
1427                     
1428                     	.area DSEG(DATA)
1429                     _TB1CN0	.equ	0x48
1430                     
1431                     	.area DSEG(DATA)
1432                     _TB1CN1	.equ	0x49
1433                     
1434                     	.area DSEG(DATA)
1435                     _TB1RH	.equ	0x4A
1436                     
1437                     	.area DSEG(DATA)
1438                     _TB1RL	.equ	0x4B
1439                     
1440                     	.area DSEG(DATA)
1441                     _TB1C0H	.equ	0x4C
1442                     
1443                     	.area DSEG(DATA)
1444                     _TB1C0L	.equ	0x4D
1445                     
1446                     	.area DSEG(DATA)
1447                     _TB1C1H	.equ	0x4E
1448                     
1449                     	.area DSEG(DATA)
1450                     _TB1C1L	.equ	0x4F
1451                     
1452                     	.area DSEG(DATA)
1453                     _TB1C2H	.equ	0x50
1454                     
1455                     	.area DSEG(DATA)
1456                     _TB1C2L	.equ	0x51
1457                     
1458                     	.area DSEG(DATA)
1459                     _TC1CN0	.equ	0x52
1460                     
1461                     	.area DSEG(DATA)
1462                     _PT1	.equ	0x53
1463                     
1464                     	.area DSEG(DATA)
1465                     _TRISC1	.equ	0x54
1466                     
1467                     	.area DSEG(DATA)
1468                     _PT1DA	.equ	0x55
1469                     
1470                     	.area DSEG(DATA)
1471                     _PT1PU	.equ	0x56
1472                     
1473                     	.area DSEG(DATA)
1474                     _PT1M1	.equ	0x57
1475                     
1476                     	.area DSEG(DATA)
1477                     _PT1INT	.equ	0x58
1478                     
1479                     	.area DSEG(DATA)
1480                     _PT1INTE	.equ	0x59
1481                     
1482                     	.area DSEG(DATA)
1483                     _PT1INTF	.equ	0x5A
1484                     
1485                     	.area DSEG(DATA)
1486                     _PT2	.equ	0x5B
1487                     
1488                     	.area DSEG(DATA)
1489                     _TRISC2	.equ	0x5C
1490                     
1491                     	.area DSEG(DATA)
1492                     _PT2DA	.equ	0x5D
1493                     
1494                     	.area DSEG(DATA)
1495                     _PT2PU	.equ	0x5E
1496                     
1497                     	.area DSEG(DATA)
1498                     _PT2INT	.equ	0x5F
1499                     
1500                     	.area DSEG(DATA)
1501                     _PT2INTE	.equ	0x60
1502                     
1503                     	.area DSEG(DATA)
1504                     _PT2INTF	.equ	0x61
1505                     
1506                     	.area DSEG(DATA)
1507                     _PT6	.equ	0x62
1508                     
1509                     	.area DSEG(DATA)
1510                     _TRISC6	.equ	0x63
1511                     
1512                     	.area DSEG(DATA)
1513                     _PT6DA	.equ	0x64
1514                     
1515                     	.area DSEG(DATA)
1516                     _PT6PU	.equ	0x65
1517                     
1518                     	.area DSEG(DATA)
1519                     _PT7	.equ	0x66
1520                     
1521                     	.area DSEG(DATA)
1522                     _TRISC7	.equ	0x67
1523                     
1524                     	.area DSEG(DATA)
1525                     _PT7DA	.equ	0x68
1526                     
1527                     	.area DSEG(DATA)
1528                     _PT7PU	.equ	0x69
1529                     
1530                     	.area DSEG(DATA)
1531                     _PT8	.equ	0x6A
1532                     
1533                     	.area DSEG(DATA)
1534                     _TRISC8	.equ	0x6B
1535                     
1536                     	.area DSEG(DATA)
1537                     _PT8DA	.equ	0x6C
1538                     
1539                     	.area DSEG(DATA)
1540                     _PT8PU	.equ	0x6D
1541                     
1542                     	.area DSEG(DATA)
1543                     _SSPCN0	.equ	0x6E
1544                     
1545                     	.area DSEG(DATA)
1546                     _SSPSTA0	.equ	0x6F
1547                     
1548                     	.area DSEG(DATA)
1549                     _SSPBUF0	.equ	0x70
1550                     
1551                     	.area DSEG(DATA)
1552                     _CFG0	.equ	0x71
1553                     
1554                     	.area DSEG(DATA)
1555                     _ACT0	.equ	0x72
1556                     
1557                     	.area DSEG(DATA)
1558                     _STA0	.equ	0x73
1559                     
1560                     	.area DSEG(DATA)
1561                     _CRG0	.equ	0x74
1562                     
1563                     	.area DSEG(DATA)
1564                     _TOC0	.equ	0x75
1565                     
1566                     	.area DSEG(DATA)
1567                     _RDB0	.equ	0x76
1568                     
1569                     	.area DSEG(DATA)
1570                     _TDB0	.equ	0x77
1571                     
1572                     	.area DSEG(DATA)
1573                     _SID0	.equ	0x78
1574                     
1575                     	.area DSEG(DATA)
1576                     _UR0CN	.equ	0x79
1577                     
1578                     	.area DSEG(DATA)
1579                     _UR0STA	.equ	0x7A
1580                     
1581                     	.area DSEG(DATA)
1582                     _BA0CN	.equ	0x7B
1583                     
1584                     	.area DSEG(DATA)
1585                     _BG0RH	.equ	0x7C
1586                     
1587                     	.area DSEG(DATA)
1588                     _BG0RL	.equ	0x7D
1589                     
1590                     	.area DSEG(DATA)
1591                     _TX0R	.equ	0x7E
1592                     
1593                     	.area DSEG(DATA)
1594                     _RC0REG	.equ	0x7F
1595                     
1596                     	.area DSEG(DATA)
1597                     _LCDCN1	.equ	0x180
1598                     
1599                     	.area DSEG(DATA)
1600                     _LCDCN2	.equ	0x181
1601                     
1602                     	.area DSEG(DATA)
1603                     _LCDCN3	.equ	0x182
1604                     
1605                     	.area DSEG(DATA)
1606                     _LCDCN4	.equ	0x183
1607                     
1608                     	.area DSEG(DATA)
1609                     _LCDCN5	.equ	0x184
1610                     
1611                     	.area DSEG(DATA)
1612                     _LCDCN6	.equ	0x185
1613                     
1614                     	.area DSEG(DATA)
1615                     _LCDCN7	.equ	0x186
1616                     
1617                     	.area DSEG(DATA)
1618                     _LCDCN8	.equ	0x187
1619                     
1620                     	.area DSEG(DATA)
1621                     _LCD0	.equ	0x188
1622                     
1623                     	.area DSEG(DATA)
1624                     _LCD1	.equ	0x189
1625                     
1626                     	.area DSEG(DATA)
1627                     _LCD2	.equ	0x18A
1628                     
1629                     	.area DSEG(DATA)
1630                     _LCD3	.equ	0x18B
1631                     
1632                     	.area DSEG(DATA)
1633                     _LCD4	.equ	0x18C
1634                     
1635                     	.area DSEG(DATA)
1636                     _LCD5	.equ	0x18D
1637                     
1638                     	.area DSEG(DATA)
1639                     _LCD6	.equ	0x18E
1640                     
1641                     	.area DSEG(DATA)
1642                     _LCD7	.equ	0x18F
1643                     
1644                     	.area DSEG(DATA)
1645                     _LCD8	.equ	0x190
1646                     
1647                     	.area DSEG(DATA)
1648                     _LCD9	.equ	0x191
1649                     
1650                     	.area DSEG(DATA)
1651                     _UR2CN	.equ	0x192
1652                     
1653                     	.area DSEG(DATA)
1654                     _UR2STA	.equ	0x193
1655                     
1656                     	.area DSEG(DATA)
1657                     _BA2CN	.equ	0x194
1658                     
1659                     	.area DSEG(DATA)
1660                     _BG2RH	.equ	0x195
1661                     
1662                     	.area DSEG(DATA)
1663                     _BG2RL	.equ	0x196
1664                     
1665                     	.area DSEG(DATA)
1666                     _TX2R	.equ	0x197
1667                     
1668                     	.area DSEG(DATA)
1669                     _RC2REG	.equ	0x198
1670                     
1671                     	.area DSEG(DATA)
1672                     _TMA2R	.equ	0x1E8
1673                     
1674                     	.area DSEG(DATA)
1675                     _TMA2C	.equ	0x1E9
1676                     
1677                     	.area DSEG(DATA)
1678                     _LEDCN	.equ	0x1EA
1679                     
1680                     	.area DSEG(DATA)
1681                     _IQ0	.equ	0x1EB
1682                     
1683                     	.area DSEG(DATA)
1684                     _IQ1	.equ	0x1EC
1685                     
1686                     	.area DSEG(DATA)
1687                     _DGCON1	.equ	0x1ED
1688                     
1689                     	.area DSEG(DATA)
1690                     _DGCON2	.equ	0x1EE
1691                     
1692                     	.area DSEG(DATA)
1693                     _ADCRH	.equ	0x3A
1694                     
1695                     	.area DSEG(DATA)
1696                     _ADCRM	.equ	0x3B
1697                     
1698                     	.area DSEG(DATA)
1699                     _ADCRL	.equ	0x3C
1700                     
1701                     ;--------------------------------------------------------
1702                     ; absolute symbol definitions
1703                     ;--------------------------------------------------------
1704                     ;--------------------------------------------------------
1705                     ; compiler-defined variables
1706                     ;--------------------------------------------------------
1707                     	.area IDATA (DATA,REL,CON); pre-def
1708                     	.area IDATAROM (CODE,REL,CON); pre-def
1709                     	.area UDATA (DATA,REL,CON); pre-def
1710                     	.area UDATA (DATA,REL,CON) ;UDL_Drv_LCD_0	udata
1711 @FSR2-01 --         r0x1096:	.ds	1
1712 @FSR2-01 --         r0x109A:	.ds	1
1713 @FSR2-02 --         r0x109D:	.ds	1
1714 @FSR2-01 --         r0x10A6:	.ds	1
1715 @FSR2-02 --         r0x10A8:	.ds	1
1716 @FSR2-03 --         r0x10A9:	.ds	1
1717 @FSR2-07 --         r0x10AA:	.ds	1
1718                     	.area LOCALSTK (STK); local stack var
1719                     	.globl __divsint_STK02
1720                     	.globl __divsint_STK01
1721                     	.globl __divsint_STK00
1722 @FSR2-03 -- --      _Disp_Version_NumDisp_65536_369:	.ds	2
1723                     	.globl __modsint_STK02
1724                     	.globl __modsint_STK01
1725                     	.globl __modsint_STK00
1726 @FSR2-00 --         _Disp_Code_STK00:	.ds	1
1727                     	.globl _Disp_Code_STK00
1728                     	.globl __divuint_STK02
1729                     	.globl __divuint_STK01
1730                     	.globl __divuint_STK00
1731 @FSR2-04 -- -- --   _Disp_Code_NumDisp_65536_371:	.ds	3
1732                     	.globl __moduint_STK02
1733                     	.globl __moduint_STK01
1734                     	.globl __moduint_STK00
1735                     ;--------------------------------------------------------
1736                     ; initialized data
1737                     ;--------------------------------------------------------
1738                     ;--------------------------------------------------------
1739                     ; initialized data - mirror
1740                     ;--------------------------------------------------------
1741                     	;Following is optimization info, 
1742                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1743                     	;--cdb--W:r0x10A8:NULL+0:-1:1
1744                     	;--cdb--W:r0x10A7:NULL+0:-1:1
1745                     	;--cdb--W:r0x10A6:NULL+0:-1:1
1746                     	;--cdb--W:_Disp_Code_STK00:NULL+0:-1:1
1747                     	;--cdb--W:r0x10A7:STK00+0:-1:0
1748                     	;--cdb--W:r0x1099:NULL+0:-1:1
1749                     	;--cdb--W:r0x109C:NULL+0:-1:1
1750                     	;--cdb--W:r0x109A:NULL+0:-1:1
1751                     	;--cdb--W:r0x109B:NULL+0:0:0
1752                     	;--cdb--W:r0x109B:STK00+0:-1:0
1753                     	;--cdb--W:r0x109B:NULL+0:-1:1
1754                     	;--cdb--W:r0x1094:NULL+0:-1:1
1755                     	end
