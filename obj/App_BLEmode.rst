001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_BLEmode.c"
009                     	.module App_BLEmode
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_BLEmode$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_BLEmode$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_BLEmode$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_BLEmode$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_BLEmode$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_BLEmode$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_BLEmode$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_BLEmode$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_BLEmode$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_BLEmode$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_BLEmode$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_BLEmode$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_BLEmode$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_BLEmode$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_BLEmode$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_BLEmode$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_BLEmode$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_BLEmode$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_BLEmode$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_BLEmode$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
031                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
032                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
033                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
034                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
035                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
036                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
037                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
038                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
039                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
040                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
041                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
042                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
043                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
044                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
045                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
046                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
047                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
048                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
049                     	;--cdb--F:App_BLEmode:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_BLEmode$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_BLEmode$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_BLEmode$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
059                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
060                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
061                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
062                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
063                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
064                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
065                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
066                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
067                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
068                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
069                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
070                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
071                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
072                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
073                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
074                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
075                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
076                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
077                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
078                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
079                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
080                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
081                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
082                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
083                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
084                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
085                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
086                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
087                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
088                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
089                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
090                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
091                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
092                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
093                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
095                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
096                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
097                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
100                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
101                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
102                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
103                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
104                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
105                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
106                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
107                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
108                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
109                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
110                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
111                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
112                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
113                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
116                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
119                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
128                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
130                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
137                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
141                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
143                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
152                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
153                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
154                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
155                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
157                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
161                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--S:G$BleData_Check$0$0({2}DF,SC:U),C,0,0
163                     	;--cdb--F:App_BLEmode:G$BleData_Check$0$0({2}DF,SC:U),C,0,0,0,0,0
164                     	;--cdb--S:G$Uart_Receive_Event$0$0({2}DF,SC:U),C,0,0
165                     	;--cdb--F:App_BLEmode:G$Uart_Receive_Event$0$0({2}DF,SC:U),C,0,0,0,0,0
166                     	;--cdb--S:G$App_Upload_Temperature$0$0({2}DF,SV:S),C,0,0
167                     	;--cdb--F:App_BLEmode:G$App_Upload_Temperature$0$0({2}DF,SV:S),C,0,0,0,0,0
168                     	;--cdb--S:G$App_Upload_DeviceInfo$0$0({2}DF,SV:S),C,0,0
169                     	;--cdb--F:App_BLEmode:G$App_Upload_DeviceInfo$0$0({2}DF,SV:S),C,0,0,0,0,0
170                     	;--cdb--S:G$App_UploadData$0$0({2}DF,SV:S),C,0,0
171                     	;--cdb--F:App_BLEmode:G$App_UploadData$0$0({2}DF,SV:S),C,0,0,0,0,0
172                     	;--cdb--S:G$UART_Send_To_Ble$0$0({2}DF,SV:S),C,0,0
173                     	;--cdb--F:App_BLEmode:G$UART_Send_To_Ble$0$0({2}DF,SV:S),C,0,0,0,0,0
174                     	;--cdb--S:G$Uart_Send_Wakeup$0$0({2}DF,SV:S),C,0,0
175                     	;--cdb--F:App_BLEmode:G$Uart_Send_Wakeup$0$0({2}DF,SV:S),C,0,0,0,0,0
176                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
177                     	;--cdb--F:App_BLEmode:G$App_BleMode$0$0({2}DF,SV:S),C,0,0,0,0,0
178                     ;--------------------------------------------------------
179                     ; overlayable items in internal ram 
180                     ;--------------------------------------------------------
181                     ;	udata_ovr
182                     .area CCODE (code,REL,CON) ; App_BLEmode-code 
183                     .globl _App_BleMode
184                     
185                     ;--------------------------------------------------------
186                     	.FUNC _App_BleMode:$r:0:0
187                     ;--------------------------------------------------------
188                     ;	;.line	535; ".\Source\App_BLEmode.c"	}
189                     _App_BleMode:	;Function start
190 075E [00] [Y] 000A      	RET	
191                     ; exit point of _App_BleMode
192                     	.ENDFUNC	_App_BleMode
193                     ;--------------------------------------------------------
194                     
195                     .globl _Uart_Send_Wakeup
196                     
197                     ;--------------------------------------------------------
198                     	.FUNC _Uart_Send_Wakeup:$r:0:0:$C:_UART0_SendByte\
199                     :$L:r0x10A7
200                     ;--------------------------------------------------------
201                     ;	;.line	274; ".\Source\App_BLEmode.c"	for(i = 0;i < 20;i++)
202                     _Uart_Send_Wakeup:	;Function start
203                     	CLRF	r0x10A7,0
204                     _00228_DS_:
205                     ;	;.line	276; ".\Source\App_BLEmode.c"	UART0_SendByte(0xFF);
206                     	MVL	0xff
207                     	CALL	_UART0_SendByte
208                     	.CHKPARA _UART0_SendByte 1
209                     ;	;.line	274; ".\Source\App_BLEmode.c"	for(i = 0;i < 20;i++)
210                     	INF	r0x10A7,1,0
211                     	MVL	0x13
212                     	CPSG	r0x10A7,0
213                     	JMP	_00228_DS_
214                     ;	;.line	278; ".\Source\App_BLEmode.c"	}
215                     	RET	
216                     ; exit point of _Uart_Send_Wakeup
217                     	.ENDFUNC	_Uart_Send_Wakeup
218                     ;--------------------------------------------------------
219                     
220                     .globl _UART_Send_To_Ble
221                     
222                     ;--------------------------------------------------------
223                     	.FUNC _UART_Send_To_Ble:$r:0:0:$C:_UART0_SendBuffer\
224                     
225                     ;--------------------------------------------------------
226                     ;	;.line	261; ".\Source\App_BLEmode.c"	L_lenth = sBleStatus.g_Ble_TxData[Index_lenth + 1] ;
227                     _UART_Send_To_Ble:	;Function start
228                     	MVF	(_sBleStatus + 45),0,0
229                     ;	;.line	263; ".\Source\App_BLEmode.c"	UART0_SendBuffer(sBleStatus.g_Ble_TxData,L_lenth);
230                     	MVF	_UART0_SendBuffer_STK01,1,0
231                     	MVL	(_sBleStatus + 40)
232                     	MVF	_UART0_SendBuffer_STK00,1,0
233                     	MVL	high (_sBleStatus + 40)
234                     	CALL	_UART0_SendBuffer
235                     	.CHKPARA _UART0_SendBuffer 3
236                     ;	;.line	264; ".\Source\App_BLEmode.c"	}
237                     	RET	
238                     ; exit point of _UART_Send_To_Ble
239                     	.ENDFUNC	_UART_Send_To_Ble
240                     ;--------------------------------------------------------
241                     
242                     .globl _App_UploadData
243                     
244                     ;--------------------------------------------------------
245                     	.FUNC _App_UploadData:$r:0:1:$C:_App_Upload_Temperature:$C:_App_Upload_DeviceInfo\
246                     :$L:r0x10A1
247                     ;--------------------------------------------------------
248                     ;	;.line	231; ".\Source\App_BLEmode.c"	void App_UploadData(uint8 L_Upload_func)
249                     _App_UploadData:	;Function start
250                     	MVF	r0x10A1,1,0
251                     ;	;.line	233; ".\Source\App_BLEmode.c"	switch( L_Upload_func )
252                     	RRF	_WREG,0,0
253                     	BTSZ	_STATUS,0
254                     	JMP	_00197_DS_
255                     	MVF	r0x10A1,0,0
256                     	ADDL	0xFC
257                     	BTSZ	_STATUS,0
258                     	JMP	_00192_DS_
259                     	ADDL	0xFB
260                     	BTSZ	_STATUS,0
261                     	JMP	_00193_DS_
262                     	JMP	_00197_DS_
263                     _00192_DS_:
264                     ;	;.line	236; ".\Source\App_BLEmode.c"	App_Upload_Temperature();
265                     	CALL	_App_Upload_Temperature
266                     	.CHKPARA _App_Upload_Temperature 0
267                     ;	;.line	238; ".\Source\App_BLEmode.c"	break;
268                     	JMP	_00197_DS_
269                     _00193_DS_:
270                     ;	;.line	241; ".\Source\App_BLEmode.c"	App_Upload_DeviceInfo();
271                     	CALL	_App_Upload_DeviceInfo
272                     	.CHKPARA _App_Upload_DeviceInfo 0
273                     _00197_DS_:
274                     ;	;.line	248; ".\Source\App_BLEmode.c"	}
275                     	RET	
276                     ; exit point of _App_UploadData
277                     	.ENDFUNC	_App_UploadData
278                     ;--------------------------------------------------------
279                     
280                     .globl _App_Upload_DeviceInfo
281                     
282                     ;--------------------------------------------------------
283                     	.FUNC _App_Upload_DeviceInfo:$r:0:0
284                     ;--------------------------------------------------------
285                     ;	;.line	181; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[0] = 0x55;
286                     _App_Upload_DeviceInfo:	;Function start
287                     	MVL	0x55
288                     	MVF	(_sBleStatus + 40),1,0
289                     ;	;.line	182; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[1] = 0xAA;
290                     	MVL	0xaa
291                     	MVF	(_sBleStatus + 41),1,0
292                     ;	;.line	183; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[2] = 0xAA;
293                     	MVF	(_sBleStatus + 42),1,0
294                     ;	;.line	184; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[3] = 0x55;
295                     	MVL	0x55
296                     	MVF	(_sBleStatus + 43),1,0
297                     ;	;.line	185; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[Index_func] = TxFunc_DeviceInfo;
298                     	MVL	0x09
299                     	MVF	(_sBleStatus + 46),1,0
300                     ;	;.line	188; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_D;
301                     	MVL	0x44
302                     	MVF	(_sBleStatus + 47),1,0
303                     ;	;.line	190; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_M;
304                     	MVL	0x4d
305                     	MVF	(_sBleStatus + 48),1,0
306                     ;	;.line	192; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_T;
307                     	MVL	0x54
308                     	MVF	(_sBleStatus + 49),1,0
309                     ;	;.line	195; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = Ble_Name>>8;
310                     	MVL	0x12
311                     	MVF	(_sBleStatus + 50),1,0
312                     ;	;.line	197; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = Ble_Name;
313                     	MVL	0x98
314                     	MVF	(_sBleStatus + 51),1,0
315                     ;	;.line	200; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = ASCII_b;
316                     	MVL	0x62
317                     	MVF	(_sBleStatus + 52),1,0
318                     ;	;.line	203; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = Soft_Code >> 8;
319                     	MVL	0x01
320                     	MVF	(_sBleStatus + 53),1,0
321                     ;	;.line	205; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = Soft_Code;
322                     	MVL	0xaa
323                     	MVF	(_sBleStatus + 54),1,0
324                     ;	;.line	208; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = Soft_External_Version;
325                     	MVL	0x0a
326                     	MVF	(_sBleStatus + 55),1,0
327                     ;	;.line	211; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = 00;
328                     	CLRF	(_sBleStatus + 56),0
329                     ;	;.line	216; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[Index_lenth] = L_lenth >> 8;
330                     	CLRF	(_sBleStatus + 44),0
331                     ;	;.line	218; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[Index_lenth+1] = L_lenth;
332                     	MVL	0x14
333                     	MVF	(_sBleStatus + 45),1,0
334                     ;	;.line	221; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = L_Checksum;
335                     	MVL	0xc3
336                     	MVF	(_sBleStatus + 57),1,0
337                     ;	;.line	222; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = 0x5A;
338                     	MVL	0x5a
339                     	MVF	(_sBleStatus + 58),1,0
340                     ;	;.line	223; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_lenth++] = 0xA5;
341                     	MVL	0xa5
342                     	MVF	(_sBleStatus + 59),1,0
343                     ;	;.line	224; ".\Source\App_BLEmode.c"	}
344                     	RET	
345                     ; exit point of _App_Upload_DeviceInfo
346                     	.ENDFUNC	_App_Upload_DeviceInfo
347                     ;--------------------------------------------------------
348                     
349                     .globl _App_Upload_Temperature
350                     
351                     ;--------------------------------------------------------
352                     	.FUNC _App_Upload_Temperature:$r:0:0:$L:r0x109D:$L:r0x109E
353                     ;--------------------------------------------------------
354                     ;	;.line	118; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[0] = Ble_Header1;
355                     _App_Upload_Temperature:	;Function start
356                     	MVL	0xfa
357                     	MVF	(_sBleStatus + 40),1,0
358                     ;	;.line	119; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[1] = Ble_Header2;
359                     	MVL	0xaa
360                     	MVF	(_sBleStatus + 41),1,0
361                     ;	;.line	120; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[2] = Ble_Header3;
362                     	MVF	(_sBleStatus + 42),1,0
363                     ;	;.line	121; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[3] = Ble_Header4;
364                     	MVL	0xaf
365                     	MVF	(_sBleStatus + 43),1,0
366                     ;	;.line	123; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[Index_func] = TxFunc_Temperature;
367                     	MVL	0x04
368                     	MVF	(_sBleStatus + 46),1,0
369                     ;	;.line	132; ".\Source\App_BLEmode.c"	if( sActual_Forecast.CentigradeTempDisp < Low_Temp_Centigrade )
370                     	MVF	(_sActual_Forecast + 3),0,0
371                     	ADDL	0xd8
372                     	MVL	0xf5
373                     	ADDC	(_sActual_Forecast + 4),0,0
374                     	BTSZ	_STATUS,4
375                     	JMP	_00182_DS_
376                     ;	;.line	134; ".\Source\App_BLEmode.c"	L_Temp = 0;
377                     	CLRF	r0x109D,0
378                     	CLRF	r0x109E,0
379                     	JMP	_00183_DS_
380                     _00182_DS_:
381                     ;	;.line	136; ".\Source\App_BLEmode.c"	else if( sActual_Forecast.CentigradeTempDisp > High_Temp_Centigrade )
382                     	MVF	(_sActual_Forecast + 3),0,0
383                     	ADDL	0xd9
384                     	MVL	0xee
385                     	ADDC	(_sActual_Forecast + 4),0,0
386                     	BTSS	_STATUS,4
387                     	JMP	_00179_DS_
388                     ;	;.line	138; ".\Source\App_BLEmode.c"	L_Temp = 5000 ;
389                     	MVL	0x88
390                     	MVF	r0x109D,1,0
391                     	MVL	0x13
392                     	MVF	r0x109E,1,0
393                     	JMP	_00183_DS_
394                     _00179_DS_:
395                     ;	;.line	142; ".\Source\App_BLEmode.c"	L_Temp = sActual_Forecast.CentigradeTempDisp;
396                     	MVF	(_sActual_Forecast + 3),0,0
397                     	MVF	r0x109D,1,0
398                     	MVF	(_sActual_Forecast + 4),0,0
399                     	MVF	r0x109E,1,0
400                     _00183_DS_:
401                     ;	;.line	146; ".\Source\App_BLEmode.c"	L_Temp = L_Temp | 0x8000;
402                     	BSF	r0x109E,7
403                     ;	;.line	150; ".\Source\App_BLEmode.c"	L_Temp |= 0x4000;
404                     	BSF	r0x109E,6
405                     ;	;.line	153; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_datalenth++] = L_Temp >> 8;
406                     	MVF	r0x109E,0,0
407                     	MVF	(_sBleStatus + 47),1,0
408                     ;	;.line	154; ".\Source\App_BLEmode.c"	L_Checksum += L_Temp >> 8;
409                     	ADDL	0x04
410                     ;	;.line	155; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_datalenth++] = L_Temp;
411                     	MVSF	r0x109D,(_sBleStatus + 48)
412                     	ADDF	r0x109D,1,0
413                     ;	;.line	160; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[Index_lenth] = L_datalenth >> 8;
414                     	CLRF	(_sBleStatus + 44),0
415                     ;	;.line	162; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[Index_lenth+1] = L_datalenth;
416                     	MVL	0x0c
417                     	MVF	(_sBleStatus + 45),1,0
418                     ;	;.line	163; ".\Source\App_BLEmode.c"	L_Checksum += L_datalenth;
419                     	ADDF	r0x109D,0,0
420                     ;	;.line	165; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_datalenth++] = L_Checksum;
421                     	MVF	(_sBleStatus + 49),1,0
422                     ;	;.line	166; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_datalenth++] = Ble_End1;
423                     	MVL	0xf5
424                     	MVF	(_sBleStatus + 50),1,0
425                     ;	;.line	167; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_TxData[L_datalenth++] = Ble_End2;
426                     	MVL	0x5f
427                     	MVF	(_sBleStatus + 51),1,0
428                     ;	;.line	168; ".\Source\App_BLEmode.c"	}
429                     	RET	
430                     ; exit point of _App_Upload_Temperature
431                     	.ENDFUNC	_App_Upload_Temperature
432                     ;--------------------------------------------------------
433                     
434                     .globl _Uart_Receive_Event
435                     
436                     ;--------------------------------------------------------
437                     	.FUNC _Uart_Receive_Event:$r:1:0:$C:_BleData_Check\
438                     :$L:r0x1095:$L:r0x1096:$L:r0x1097:$L:r0x109A
439                     ;--------------------------------------------------------
440                     ;	;.line	69; ".\Source\App_BLEmode.c"	if(sBleStatus.F_Uart_Receive && sBleStatus.F_Ble_En)
441                     _Uart_Receive_Event:	;Function start
442                     	BTSZ	_sBleStatus,1
443                     	BTSS	_sBleStatus,0
444                     	JMP	_00125_DS_
445                     ;	;.line	71; ".\Source\App_BLEmode.c"	sBleStatus.F_Uart_Receive = 0;
446                     	BCF	_sBleStatus,1
447                     ;	;.line	74; ".\Source\App_BLEmode.c"	for( i = 0; i < DataLenth; i++ )
448                     	CLRF	r0x1095,0
449                     _00127_DS_:
450                     ;	;.line	76; ".\Source\App_BLEmode.c"	sBleStatus.g_Ble_RxData_Buf[i] = sBleStatus.g_Ble_RxData[i];
451                     	MVF	r0x1095,0,0
452                     	ADDL	(_sBleStatus + 22)
453                     	MVF	r0x1096,1,0
454                     	MVL	high (_sBleStatus + 22)
455                     	BTSZ	_STATUS,4
456                     	ADDL	0x01
457                     	MVF	r0x1097,1,0
458                     	LDPR	(_sBleStatus + 4),0
459                     	MVF	r0x1095,0,0
460                     	MVF	_PLUSW0,0,0
461                     	MVF	r0x109A,1,0
462                     	MVF	r0x1096,0,0
463                     	MVF	_FSR0L,1,0
464                     	MVF	r0x1097,0,0
465                     	MVF	_FSR0H,1,0
466                     	MVF	r0x109A,0,0
467                     	MVF	_INDF0,1,0
468                     ;	;.line	74; ".\Source\App_BLEmode.c"	for( i = 0; i < DataLenth; i++ )
469                     	INF	r0x1095,1,0
470                     	MVL	0x11
471                     	CPSG	r0x1095,0
472                     	JMP	_00127_DS_
473                     ;	;.line	80; ".\Source\App_BLEmode.c"	L_ble_func = BleData_Check();
474                     	CALL	_BleData_Check
475                     	.CHKPARA _BleData_Check 0
476                     	MVF	r0x1095,1,0
477                     ;	;.line	81; ".\Source\App_BLEmode.c"	switch (L_ble_func)
478                     	IORL	0x00
479                     	BTSZ	_STATUS,0
480                     	JMP	_00125_DS_
481                     	MVF	r0x1095,0,0
482                     	XORL	0x83
483                     	BTSZ	_STATUS,0
484                     	JMP	_00120_DS_
485                     	MVL	0x89
486                     	CPSE	r0x1095,0
487                     	JMP	_00125_DS_
488                     ;	;.line	85; ".\Source\App_BLEmode.c"	eBle_Sta = Ble_Advertising;
489                     	MVL	0x03
490                     	MVF	_eBle_Sta,1,0
491                     ;	;.line	86; ".\Source\App_BLEmode.c"	break;
492                     	JMP	_00125_DS_
493                     _00120_DS_:
494                     ;	;.line	90; ".\Source\App_BLEmode.c"	eBle_Sta = Ble_Idle;
495                     	MVL	0x04
496                     	MVF	_eBle_Sta,1,0
497                     _00125_DS_:
498                     ;	;.line	101; ".\Source\App_BLEmode.c"	}
499                     	RETL	0x00
500                     ; exit point of _Uart_Receive_Event
501                     	.ENDFUNC	_Uart_Receive_Event
502                     ;--------------------------------------------------------
503                     
504                     .globl _BleData_Check
505                     
506                     ;--------------------------------------------------------
507                     	.FUNC _BleData_Check:$r:1:0:$L:r0x108C:$L:r0x108D:$L:r0x108F:$L:r0x108E
508                     ;--------------------------------------------------------
509                     ;	;.line	31; ".\Source\App_BLEmode.c"	uint8 checksum = 0;
510                     _BleData_Check:	;Function start
511                     	CLRF	r0x108C,0
512                     ;	;.line	32; ".\Source\App_BLEmode.c"	uint8 L_buf = 0;
513                     	CLRF	r0x108D,0
514                     ;	;.line	36; ".\Source\App_BLEmode.c"	L_Lenth = sBleStatus.g_Ble_RxData_Buf[Index_lenth + 1] - 3;
515                     	MVF	(_sBleStatus + 27),0,0
516                     	ADDL	0xfd
517                     	MVF	r0x108E,1,0
518                     ;	;.line	38; ".\Source\App_BLEmode.c"	if(L_Lenth > DataLenth)
519                     	ADDL	0xed
520                     	BTSS	_STATUS,4
521                     	JMP	_00106_DS_
522                     ;	;.line	40; ".\Source\App_BLEmode.c"	return L_buf;
523                     	MVL	0x00
524                     	JMP	_00113_DS_
525                     _00106_DS_:
526                     ;	;.line	43; ".\Source\App_BLEmode.c"	for(i = Index_lenth;i < L_Lenth; i++)
527                     	MVL	0x04
528                     	MVF	r0x108F,1,0
529                     _00111_DS_:
530                     	MVF	r0x108E,0,0
531                     	CPSL	r0x108F,0
532                     	JMP	_00107_DS_
533                     ;	;.line	45; ".\Source\App_BLEmode.c"	checksum += sBleStatus.g_Ble_RxData_Buf[i];
534                     	LDPR	(_sBleStatus + 22),0
535                     	MVF	r0x108F,0,0
536                     	MVF	_PLUSW0,0,0
537                     	ADDF	r0x108C,1,0
538                     ;	;.line	43; ".\Source\App_BLEmode.c"	for(i = Index_lenth;i < L_Lenth; i++)
539                     	INF	r0x108F,1,0
540                     	JMP	_00111_DS_
541                     _00107_DS_:
542                     ;	;.line	48; ".\Source\App_BLEmode.c"	if( checksum == sBleStatus.g_Ble_RxData_Buf[i] )
543                     	LDPR	(_sBleStatus + 22),0
544                     	MVF	r0x108F,0,0
545                     	MVF	_PLUSW0,0,0
546                     	CPSE	r0x108C,0
547                     	JMP	_00109_DS_
548                     ;	;.line	50; ".\Source\App_BLEmode.c"	L_buf = sBleStatus.g_Ble_RxData_Buf[Index_func];
549                     	MVF	(_sBleStatus + 28),0,0
550                     	MVF	r0x108D,1,0
551                     _00109_DS_:
552                     ;	;.line	52; ".\Source\App_BLEmode.c"	return L_buf;
553                     	MVF	r0x108D,0,0
554                     _00113_DS_:
555                     ;	;.line	53; ".\Source\App_BLEmode.c"	}
556                     	RET	
557                     ; exit point of _BleData_Check
558                     	.ENDFUNC	_BleData_Check
559                     ;--------------------------------------------------------
560                     
561                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
562                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
563                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
564                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
565                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
566                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
567                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
568                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
569                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
570                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
571                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
572                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
573                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
574                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
575                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
576                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
577                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
578                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
579                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
580                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
581                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
582                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
583                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
584                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
585                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_BLEmode$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
586                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_BLEmode$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
587                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_BLEmode$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
588                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
589                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
590                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
591                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
592                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
593                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
594                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
595                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
596                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
597                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
598                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
599                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
600                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
601                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
602                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
603                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
604                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
605                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
606                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
607                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
608                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
609                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
610                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
611                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
612                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
613                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
614                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
615                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
616                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
617                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
618                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
619                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
620                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
621                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
622                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
623                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
624                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
625                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
626                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
627                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
628                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
629                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
630                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
631                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
632                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
633                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
634                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
635                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
636                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
637                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
638                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
639                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
640                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
641                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
642                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
643                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
644                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
645                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
646                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
647                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
648                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
649                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
650                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
651                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
652                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
653                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
654                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
655                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
656                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
657                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
658                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
659                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
660                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
661                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
662                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
663                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
664                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
665                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
666                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
667                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
668                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
669                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
670                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
671                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
672                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
673                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
674                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
675                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
676                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
677                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
678                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
679                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
680                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
681                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
682                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
683                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
684                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
685                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
686                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
687                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
688                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
689                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
690                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
691                     	;--cdb--S:G$BleData_Check$0$0({2}DF,SC:U),C,0,0
692                     	;--cdb--S:G$Uart_Receive_Event$0$0({2}DF,SC:U),C,0,0
693                     	;--cdb--S:G$App_Upload_Temperature$0$0({2}DF,SV:S),C,0,0
694                     	;--cdb--S:G$App_Upload_DeviceInfo$0$0({2}DF,SV:S),C,0,0
695                     	;--cdb--S:G$App_UploadData$0$0({2}DF,SV:S),C,0,0
696                     	;--cdb--S:G$UART_Send_To_Ble$0$0({2}DF,SV:S),C,0,0
697                     	;--cdb--S:G$Uart_Send_Wakeup$0$0({2}DF,SV:S),C,0,0
698                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
699                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
700                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
701                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
702                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
703                     	;--cdb--S:LApp_BLEmode.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
704                     	;--cdb--S:LApp_BLEmode.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
705                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_BLEmode$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
706                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
707                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_BLEmode$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
708                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_BLEmode$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
709                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_BLEmode$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
710                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
711                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_BLEmode$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
712                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
713                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
714                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
715                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
716                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
717                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
718                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_BLEmode$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
719                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_BLEmode$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
720                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
721                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_BLEmode$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
722                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
723                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
724                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
725                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
726                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_BLEmode$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
727                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
728                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
729                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
730                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
731                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_BLEmode$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
732                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_BLEmode$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
733                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_BLEmode$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
734                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_BLEmode$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
735                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_BLEmode$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
736                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
737                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_BLEmode$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
738                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
739                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
740                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_BLEmode$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
741                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
742                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_BLEmode$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
743                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
744                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
745                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
746                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
747                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
748                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
749                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
750                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
751                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
752                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
753                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
754                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
755                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
756                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
757                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
758                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
759                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
760                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
761                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
762                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
763                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
764                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
765                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
766                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
767                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
768                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
769                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
770                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
771                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
772                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
773                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
774                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
775                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
776                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
777                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
778                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
779                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
780                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
781                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
782                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
783                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
784                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
785                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
786                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
787                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
788                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
789                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
790                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
791                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
792                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
793                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
794                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
795                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
796                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
797                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
798                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
799                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
800                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
801                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
802                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
803                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
804                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
805                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
806                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
807                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
808                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
809                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
810                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
811                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
812                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
813                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
814                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
815                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
816                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
817                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
818                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
819                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
820                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
821                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
822                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
823                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
824                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
825                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
826                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
827                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
828                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
829                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
830                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
831                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
832                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
833                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
834                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
835                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
836                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
837                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
838                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
839                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
840                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
841                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
842                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
843                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
844                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
845                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
846                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
847                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
848                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
849                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
850                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
851                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
852                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
853                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
854                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
855                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
856                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
857                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
858                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
859                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
860                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
861                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
862                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
863                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
864                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
865                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
866                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
867                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
868                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
869                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
870                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
871                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
872                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
873                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
874                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
875                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
876                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
877                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
878                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
879                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
880                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
881                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
882                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
883                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
884                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
885                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
886                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
887                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
888                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
889                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
890                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
891                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
892                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
893                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
894                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
895                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
896                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
897                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
898                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
899                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
900                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
901                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
902                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
903                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
904                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
905                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
906                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
907                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
908                     	;--cdb--S:LApp_BLEmode.BleData_Check._BleData_Check_checksum_10000_417$checksum$2710$417({1}SC:U),R,0,0,[r0x108C]
909                     	;--cdb--S:LApp_BLEmode.BleData_Check._BleData_Check_L_buf_10000_417$L_buf$2710$417({1}SC:U),R,0,0,[r0x108D]
910                     	;--cdb--S:LApp_BLEmode.BleData_Check._BleData_Check_i_10000_417$i$2710$417({1}SC:U),R,0,0,[r0x108F]
911                     	;--cdb--S:LApp_BLEmode.BleData_Check._BleData_Check_L_Lenth_10000_417$L_Lenth$2710$417({1}SC:U),R,0,0,[r0x108E]
912                     	;--cdb--S:LApp_BLEmode.Uart_Receive_Event._Uart_Receive_Event_i_10000_425$i$2710$425({1}SC:U),R,0,0,[r0x1095]
913                     	;--cdb--S:LApp_BLEmode.Uart_Receive_Event._Uart_Receive_Event_L_ble_func_10000_425$L_ble_func$2710$425({1}SC:U),R,0,0,[r0x1095]
914                     	;--cdb--S:LApp_BLEmode.Uart_Receive_Event._Uart_Receive_Event_L_Success_10000_425$L_Success$2710$425({1}SC:U),R,0,0,[]
915                     	;--cdb--S:LApp_BLEmode.App_Upload_Temperature._App_Upload_Temperature_i_10000_433$i$2710$433({1}SC:U),E,0,0
916                     	;--cdb--S:LApp_BLEmode.App_Upload_Temperature._App_Upload_Temperature_l_readloop_10000_433$l_readloop$2710$433({1}SC:U),E,0,0
917                     	;--cdb--S:LApp_BLEmode.App_Upload_Temperature._App_Upload_Temperature_L_datalenth_10000_433$L_datalenth$2710$433({1}SC:U),R,0,0,[]
918                     	;--cdb--S:LApp_BLEmode.App_Upload_Temperature._App_Upload_Temperature_L_MemAdd_10000_433$L_MemAdd$2710$433({1}SC:U),E,0,0
919                     	;--cdb--S:LApp_BLEmode.App_Upload_Temperature._App_Upload_Temperature_L_Checksum_10000_433$L_Checksum$2710$433({1}SC:U),R,0,0,[r0x109B]
920                     	;--cdb--S:LApp_BLEmode.App_Upload_Temperature._App_Upload_Temperature_L_Temp_10000_433$L_Temp$2710$433({2}SI:U),R,0,0,[r0x109D,r0x109E]
921                     	;--cdb--S:LApp_BLEmode.App_Upload_DeviceInfo._App_Upload_DeviceInfo_L_Checksum_10000_440$L_Checksum$2710$440({1}SC:U),R,0,0,[]
922                     	;--cdb--S:LApp_BLEmode.App_Upload_DeviceInfo._App_Upload_DeviceInfo_L_lenth_10000_440$L_lenth$2710$440({1}SC:U),R,0,0,[]
923                     	;--cdb--S:LApp_BLEmode.App_UploadData._App_UploadData_L_Upload_func_10000_441$L_Upload_func$2710$441({1}SC:U),R,0,0,[r0x10A1]
924                     	;--cdb--S:LApp_BLEmode.UART_Send_To_Ble._UART_Send_To_Ble_i_10000_446$i$2710$446({1}SC:U),E,0,0
925                     	;--cdb--S:LApp_BLEmode.UART_Send_To_Ble._UART_Send_To_Ble_L_lenth_10000_446$L_lenth$2710$446({1}SC:U),R,0,0,[r0x10A2]
926                     	;--cdb--S:LApp_BLEmode.UART_Send_To_Ble._UART_Send_To_Ble_p_10000_446$p$2710$446({2}DT,SC:U),R,0,0,[]
927                     	;--cdb--S:LApp_BLEmode.Uart_Send_Wakeup._Uart_Send_Wakeup_i_10000_448$i$2710$448({1}SC:U),R,0,0,[r0x10A7]
928                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
929                     	;--cdb--S:G$_FSR0L$0$0({0}:U),Z,0,0
930                     	;--cdb--S:G$_FSR0H$0$0({0}:U),Z,0,0
931                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
932                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
933                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
934                     ;--------------------------------------------------------
935                     ; external declarations
936                     ;--------------------------------------------------------
937                     	.globl	_UART0_SendByte
938                     	.globl	_UART0_SendBuffer
939                     	.globl	_FSR0
940                     	.globl	_FSR1
941                     	.globl	_FSR2
942                     	.globl	_ADCR
943                     	.globl	_sIIC
944                     	.globl	_BIE_Available_Addr
945                     	.globl	_sTIMx
946                     	.globl	_sUARTx
947                     	.globl	_sAutoBps
948                     	.globl	_eAutoBps_Status
949                     	.globl	_sTest
950                     	.globl	_eTempUnit
951                     	.globl	_eBondingTempUnit
952                     	.globl	_eVersionCode
953                     	.globl	_eMeasureMode
954                     	.globl	_eBinding_Status
955                     	.globl	_Enter_PrepareSleep_Flag
956                     	.globl	_sButton
957                     	.globl	_sTimeStamp
958                     	.globl	_eButton_Status
959                     	.globl	_sLVD
960                     	.globl	_UnitExchangeCompleted
961                     	.globl	_ERR
962                     	.globl	_eErr
963                     	.globl	_eDisplay_Interfaces
964                     	.globl	_sADC
965                     	.globl	_eADCChannel
966                     	.globl	_eSystem_Mode
967                     	.globl	_eBuzzer_Status
968                     	.globl	_Flag_No_Buzzer
969                     	.globl	_sMemory
970                     	.globl	_sMemoryFlag
971                     	.globl	_sActual
972                     	.globl	_sForecast
973                     	.globl	_sTempCal
974                     	.globl	_eMeas_Status
975                     	.globl	_sActual_Forecast
976                     	.globl	_eTo_Actual_Ways
977                     	.globl	_eBacklight_Status
978                     	.globl	_sBacklight
979                     	.globl	_NUM_CODE
980                     	.globl	_R_Table
981                     	.globl	_CloseTable
982                     
983                     	.globl STK07
984                     	.globl STK07_SAVE
985                     	.globl STK06
986                     	.globl STK06_SAVE
987                     	.globl STK05
988                     	.globl STK05_SAVE
989                     	.globl STK04
990                     	.globl STK04_SAVE
991                     	.globl STK03
992                     	.globl STK03_SAVE
993                     	.globl STK02
994                     	.globl STK02_SAVE
995                     	.globl STK01
996                     	.globl STK01_SAVE
997                     	.globl STK00
998                     	.globl STK00_SAVE
999                     ;--------------------------------------------------------
1000                     ; global -1 declarations
1001                     ;--------------------------------------------------------
1002                     	.globl	_BleData_Check
1003                     	.globl	_App_Upload_Temperature
1004                     	.globl	_App_Upload_DeviceInfo
1005                     	.globl	_App_UploadData
1006                     	.globl	_eBle_Sta
1007                     	.globl	_sBleStatus
1008                     
1009                     	.globl	_memcpy
1010                     ;--------------------------------------------------------
1011                     ; global -2 definitions
1012                     ;--------------------------------------------------------
1013                     	.area DSEG(DATA)
1014 012D --             _eBle_Sta:	.ds	1
1015                     
1016                     	.area DSEG(DATA)
1017 012E -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sBleStatus:	.ds	60
1018                     
1019                     	.area DSEG(DATA)
1020                     __SWTGTID	.equ	0xA6A6B2CF
1021                     
1022                     	.area DSEG(DATA)
1023                     _INDF0	.equ	0x0
1024                     
1025                     	.area DSEG(DATA)
1026                     _POINC0	.equ	0x1
1027                     
1028                     	.area DSEG(DATA)
1029                     _PODEC0	.equ	0x2
1030                     
1031                     	.area DSEG(DATA)
1032                     _PRINC0	.equ	0x3
1033                     
1034                     	.area DSEG(DATA)
1035                     _PLUSW0	.equ	0x4
1036                     
1037                     	.area DSEG(DATA)
1038                     _INDF1	.equ	0x5
1039                     
1040                     	.area DSEG(DATA)
1041                     _POINC1	.equ	0x6
1042                     
1043                     	.area DSEG(DATA)
1044                     _PODEC1	.equ	0x7
1045                     
1046                     	.area DSEG(DATA)
1047                     _PRINC1	.equ	0x8
1048                     
1049                     	.area DSEG(DATA)
1050                     _PLUSW1	.equ	0x9
1051                     
1052                     	.area DSEG(DATA)
1053                     _INDF2	.equ	0xA
1054                     
1055                     	.area DSEG(DATA)
1056                     _POINC2	.equ	0xB
1057                     
1058                     	.area DSEG(DATA)
1059                     _PODEC2	.equ	0xC
1060                     
1061                     	.area DSEG(DATA)
1062                     _PRINC2	.equ	0xD
1063                     
1064                     	.area DSEG(DATA)
1065                     _PLUSW2	.equ	0xE
1066                     
1067                     	.area DSEG(DATA)
1068                     _FSR0H	.equ	0xF
1069                     
1070                     	.area DSEG(DATA)
1071                     _FSR0L	.equ	0x10
1072                     
1073                     	.area DSEG(DATA)
1074                     _FSR1H	.equ	0x11
1075                     
1076                     	.area DSEG(DATA)
1077                     _FSR1L	.equ	0x12
1078                     
1079                     	.area DSEG(DATA)
1080                     _FSR2H	.equ	0x13
1081                     
1082                     	.area DSEG(DATA)
1083                     _FSR2L	.equ	0x14
1084                     
1085                     	.area DSEG(DATA)
1086                     _TOSH	.equ	0x16
1087                     
1088                     	.area DSEG(DATA)
1089                     _TOSL	.equ	0x17
1090                     
1091                     	.area DSEG(DATA)
1092                     _SKCN	.equ	0x18
1093                     
1094                     	.area DSEG(DATA)
1095                     _PCLATH	.equ	0x1A
1096                     
1097                     	.area DSEG(DATA)
1098                     _PCLATL	.equ	0x1B
1099                     
1100                     	.area DSEG(DATA)
1101                     _TBLPTRH	.equ	0x1D
1102                     
1103                     	.area DSEG(DATA)
1104                     _TBLPTRL	.equ	0x1E
1105                     
1106                     	.area DSEG(DATA)
1107                     _TBLDH	.equ	0x1F
1108                     
1109                     	.area DSEG(DATA)
1110                     _TBLDL	.equ	0x20
1111                     
1112                     	.area DSEG(DATA)
1113                     _PRODH	.equ	0x21
1114                     
1115                     	.area DSEG(DATA)
1116                     _PRODL	.equ	0x22
1117                     
1118                     	.area DSEG(DATA)
1119                     _INTE0	.equ	0x23
1120                     
1121                     	.area DSEG(DATA)
1122                     _INTE1	.equ	0x24
1123                     
1124                     	.area DSEG(DATA)
1125                     _INTE2	.equ	0x25
1126                     
1127                     	.area DSEG(DATA)
1128                     _INTF0	.equ	0x26
1129                     
1130                     	.area DSEG(DATA)
1131                     _INTF1	.equ	0x27
1132                     
1133                     	.area DSEG(DATA)
1134                     _INTF2	.equ	0x28
1135                     
1136                     	.area DSEG(DATA)
1137                     _WREG	.equ	0x29
1138                     
1139                     	.area DSEG(DATA)
1140                     _BSRCN	.equ	0x2A
1141                     
1142                     	.area DSEG(DATA)
1143                     _STATUS	.equ	0x2B
1144                     
1145                     	.area DSEG(DATA)
1146                     _MSTAT	.equ	0x2B
1147                     
1148                     	.area DSEG(DATA)
1149                     _PSTAT	.equ	0x2C
1150                     
1151                     	.area DSEG(DATA)
1152                     _BIECN	.equ	0x2E
1153                     
1154                     	.area DSEG(DATA)
1155                     _BIEARH	.equ	0x2F
1156                     
1157                     	.area DSEG(DATA)
1158                     _BIEARL	.equ	0x30
1159                     
1160                     	.area DSEG(DATA)
1161                     _BIEDRH	.equ	0x31
1162                     
1163                     	.area DSEG(DATA)
1164                     _BIEDRL	.equ	0x32
1165                     
1166                     	.area DSEG(DATA)
1167                     _PWRCN	.equ	0x33
1168                     
1169                     	.area DSEG(DATA)
1170                     _OSCCN0	.equ	0x34
1171                     
1172                     	.area DSEG(DATA)
1173                     _OSCCN1	.equ	0x35
1174                     
1175                     	.area DSEG(DATA)
1176                     _OSCCN2	.equ	0x36
1177                     
1178                     	.area DSEG(DATA)
1179                     _CSFCN0	.equ	0x37
1180                     
1181                     	.area DSEG(DATA)
1182                     _CSFCN1	.equ	0x38
1183                     
1184                     	.area DSEG(DATA)
1185                     _WDTCN	.equ	0x39
1186                     
1187                     	.area DSEG(DATA)
1188                     _AD1H	.equ	0x3A
1189                     
1190                     	.area DSEG(DATA)
1191                     _AD1M	.equ	0x3B
1192                     
1193                     	.area DSEG(DATA)
1194                     _AD1L	.equ	0x3C
1195                     
1196                     	.area DSEG(DATA)
1197                     _AD1CN0	.equ	0x3D
1198                     
1199                     	.area DSEG(DATA)
1200                     _AD1CN1	.equ	0x3E
1201                     
1202                     	.area DSEG(DATA)
1203                     _AD1CN2	.equ	0x3F
1204                     
1205                     	.area DSEG(DATA)
1206                     _AD1CN3	.equ	0x40
1207                     
1208                     	.area DSEG(DATA)
1209                     _AD1CN4	.equ	0x41
1210                     
1211                     	.area DSEG(DATA)
1212                     _AD1CN5	.equ	0x42
1213                     
1214                     	.area DSEG(DATA)
1215                     _LVDCN	.equ	0x43
1216                     
1217                     	.area DSEG(DATA)
1218                     _TMA1CN	.equ	0x44
1219                     
1220                     	.area DSEG(DATA)
1221                     _TMA1R	.equ	0x45
1222                     
1223                     	.area DSEG(DATA)
1224                     _TMA1C	.equ	0x46
1225                     
1226                     	.area DSEG(DATA)
1227                     _TB1FLAG	.equ	0x47
1228                     
1229                     	.area DSEG(DATA)
1230                     _TB1CN0	.equ	0x48
1231                     
1232                     	.area DSEG(DATA)
1233                     _TB1CN1	.equ	0x49
1234                     
1235                     	.area DSEG(DATA)
1236                     _TB1RH	.equ	0x4A
1237                     
1238                     	.area DSEG(DATA)
1239                     _TB1RL	.equ	0x4B
1240                     
1241                     	.area DSEG(DATA)
1242                     _TB1C0H	.equ	0x4C
1243                     
1244                     	.area DSEG(DATA)
1245                     _TB1C0L	.equ	0x4D
1246                     
1247                     	.area DSEG(DATA)
1248                     _TB1C1H	.equ	0x4E
1249                     
1250                     	.area DSEG(DATA)
1251                     _TB1C1L	.equ	0x4F
1252                     
1253                     	.area DSEG(DATA)
1254                     _TB1C2H	.equ	0x50
1255                     
1256                     	.area DSEG(DATA)
1257                     _TB1C2L	.equ	0x51
1258                     
1259                     	.area DSEG(DATA)
1260                     _TC1CN0	.equ	0x52
1261                     
1262                     	.area DSEG(DATA)
1263                     _PT1	.equ	0x53
1264                     
1265                     	.area DSEG(DATA)
1266                     _TRISC1	.equ	0x54
1267                     
1268                     	.area DSEG(DATA)
1269                     _PT1DA	.equ	0x55
1270                     
1271                     	.area DSEG(DATA)
1272                     _PT1PU	.equ	0x56
1273                     
1274                     	.area DSEG(DATA)
1275                     _PT1M1	.equ	0x57
1276                     
1277                     	.area DSEG(DATA)
1278                     _PT1INT	.equ	0x58
1279                     
1280                     	.area DSEG(DATA)
1281                     _PT1INTE	.equ	0x59
1282                     
1283                     	.area DSEG(DATA)
1284                     _PT1INTF	.equ	0x5A
1285                     
1286                     	.area DSEG(DATA)
1287                     _PT2	.equ	0x5B
1288                     
1289                     	.area DSEG(DATA)
1290                     _TRISC2	.equ	0x5C
1291                     
1292                     	.area DSEG(DATA)
1293                     _PT2DA	.equ	0x5D
1294                     
1295                     	.area DSEG(DATA)
1296                     _PT2PU	.equ	0x5E
1297                     
1298                     	.area DSEG(DATA)
1299                     _PT2INT	.equ	0x5F
1300                     
1301                     	.area DSEG(DATA)
1302                     _PT2INTE	.equ	0x60
1303                     
1304                     	.area DSEG(DATA)
1305                     _PT2INTF	.equ	0x61
1306                     
1307                     	.area DSEG(DATA)
1308                     _PT6	.equ	0x62
1309                     
1310                     	.area DSEG(DATA)
1311                     _TRISC6	.equ	0x63
1312                     
1313                     	.area DSEG(DATA)
1314                     _PT6DA	.equ	0x64
1315                     
1316                     	.area DSEG(DATA)
1317                     _PT6PU	.equ	0x65
1318                     
1319                     	.area DSEG(DATA)
1320                     _PT7	.equ	0x66
1321                     
1322                     	.area DSEG(DATA)
1323                     _TRISC7	.equ	0x67
1324                     
1325                     	.area DSEG(DATA)
1326                     _PT7DA	.equ	0x68
1327                     
1328                     	.area DSEG(DATA)
1329                     _PT7PU	.equ	0x69
1330                     
1331                     	.area DSEG(DATA)
1332                     _PT8	.equ	0x6A
1333                     
1334                     	.area DSEG(DATA)
1335                     _TRISC8	.equ	0x6B
1336                     
1337                     	.area DSEG(DATA)
1338                     _PT8DA	.equ	0x6C
1339                     
1340                     	.area DSEG(DATA)
1341                     _PT8PU	.equ	0x6D
1342                     
1343                     	.area DSEG(DATA)
1344                     _SSPCN0	.equ	0x6E
1345                     
1346                     	.area DSEG(DATA)
1347                     _SSPSTA0	.equ	0x6F
1348                     
1349                     	.area DSEG(DATA)
1350                     _SSPBUF0	.equ	0x70
1351                     
1352                     	.area DSEG(DATA)
1353                     _CFG0	.equ	0x71
1354                     
1355                     	.area DSEG(DATA)
1356                     _ACT0	.equ	0x72
1357                     
1358                     	.area DSEG(DATA)
1359                     _STA0	.equ	0x73
1360                     
1361                     	.area DSEG(DATA)
1362                     _CRG0	.equ	0x74
1363                     
1364                     	.area DSEG(DATA)
1365                     _TOC0	.equ	0x75
1366                     
1367                     	.area DSEG(DATA)
1368                     _RDB0	.equ	0x76
1369                     
1370                     	.area DSEG(DATA)
1371                     _TDB0	.equ	0x77
1372                     
1373                     	.area DSEG(DATA)
1374                     _SID0	.equ	0x78
1375                     
1376                     	.area DSEG(DATA)
1377                     _UR0CN	.equ	0x79
1378                     
1379                     	.area DSEG(DATA)
1380                     _UR0STA	.equ	0x7A
1381                     
1382                     	.area DSEG(DATA)
1383                     _BA0CN	.equ	0x7B
1384                     
1385                     	.area DSEG(DATA)
1386                     _BG0RH	.equ	0x7C
1387                     
1388                     	.area DSEG(DATA)
1389                     _BG0RL	.equ	0x7D
1390                     
1391                     	.area DSEG(DATA)
1392                     _TX0R	.equ	0x7E
1393                     
1394                     	.area DSEG(DATA)
1395                     _RC0REG	.equ	0x7F
1396                     
1397                     	.area DSEG(DATA)
1398                     _LCDCN1	.equ	0x180
1399                     
1400                     	.area DSEG(DATA)
1401                     _LCDCN2	.equ	0x181
1402                     
1403                     	.area DSEG(DATA)
1404                     _LCDCN3	.equ	0x182
1405                     
1406                     	.area DSEG(DATA)
1407                     _LCDCN4	.equ	0x183
1408                     
1409                     	.area DSEG(DATA)
1410                     _LCDCN5	.equ	0x184
1411                     
1412                     	.area DSEG(DATA)
1413                     _LCDCN6	.equ	0x185
1414                     
1415                     	.area DSEG(DATA)
1416                     _LCDCN7	.equ	0x186
1417                     
1418                     	.area DSEG(DATA)
1419                     _LCDCN8	.equ	0x187
1420                     
1421                     	.area DSEG(DATA)
1422                     _LCD0	.equ	0x188
1423                     
1424                     	.area DSEG(DATA)
1425                     _LCD1	.equ	0x189
1426                     
1427                     	.area DSEG(DATA)
1428                     _LCD2	.equ	0x18A
1429                     
1430                     	.area DSEG(DATA)
1431                     _LCD3	.equ	0x18B
1432                     
1433                     	.area DSEG(DATA)
1434                     _LCD4	.equ	0x18C
1435                     
1436                     	.area DSEG(DATA)
1437                     _LCD5	.equ	0x18D
1438                     
1439                     	.area DSEG(DATA)
1440                     _LCD6	.equ	0x18E
1441                     
1442                     	.area DSEG(DATA)
1443                     _LCD7	.equ	0x18F
1444                     
1445                     	.area DSEG(DATA)
1446                     _LCD8	.equ	0x190
1447                     
1448                     	.area DSEG(DATA)
1449                     _LCD9	.equ	0x191
1450                     
1451                     	.area DSEG(DATA)
1452                     _UR2CN	.equ	0x192
1453                     
1454                     	.area DSEG(DATA)
1455                     _UR2STA	.equ	0x193
1456                     
1457                     	.area DSEG(DATA)
1458                     _BA2CN	.equ	0x194
1459                     
1460                     	.area DSEG(DATA)
1461                     _BG2RH	.equ	0x195
1462                     
1463                     	.area DSEG(DATA)
1464                     _BG2RL	.equ	0x196
1465                     
1466                     	.area DSEG(DATA)
1467                     _TX2R	.equ	0x197
1468                     
1469                     	.area DSEG(DATA)
1470                     _RC2REG	.equ	0x198
1471                     
1472                     	.area DSEG(DATA)
1473                     _TMA2R	.equ	0x1E8
1474                     
1475                     	.area DSEG(DATA)
1476                     _TMA2C	.equ	0x1E9
1477                     
1478                     	.area DSEG(DATA)
1479                     _LEDCN	.equ	0x1EA
1480                     
1481                     	.area DSEG(DATA)
1482                     _IQ0	.equ	0x1EB
1483                     
1484                     	.area DSEG(DATA)
1485                     _IQ1	.equ	0x1EC
1486                     
1487                     	.area DSEG(DATA)
1488                     _DGCON1	.equ	0x1ED
1489                     
1490                     	.area DSEG(DATA)
1491                     _DGCON2	.equ	0x1EE
1492                     
1493                     	.area DSEG(DATA)
1494                     _ADCRH	.equ	0x3A
1495                     
1496                     	.area DSEG(DATA)
1497                     _ADCRM	.equ	0x3B
1498                     
1499                     	.area DSEG(DATA)
1500                     _ADCRL	.equ	0x3C
1501                     
1502                     	.area DSEG(DATA)
1503                     _TEMDATA	.equ	0x2E0
1504                     
1505                     ;--------------------------------------------------------
1506                     ; absolute symbol definitions
1507                     ;--------------------------------------------------------
1508                     ;--------------------------------------------------------
1509                     ; compiler-defined variables
1510                     ;--------------------------------------------------------
1511                     	.area IDATA (DATA,REL,CON); pre-def
1512                     	.area IDATAROM (CODE,REL,CON); pre-def
1513                     	.area UDATA (DATA,REL,CON); pre-def
1514                     	.area UDATA (DATA,REL,CON) ;UDL_App_BLEmode_0	udata
1515 0000 --             r0x108C:	.ds	1
1516 0000 --             r0x108D:	.ds	1
1517 0000 --             r0x108E:	.ds	1
1518 0000 --             r0x108F:	.ds	1
1519 0000 --             r0x1095:	.ds	1
1520 0000 --             r0x1096:	.ds	1
1521 0000 --             r0x1097:	.ds	1
1522 0000 --             r0x109A:	.ds	1
1523 0000 --             r0x109D:	.ds	1
1524 0000 --             r0x109E:	.ds	1
1525 0000 --             r0x10A1:	.ds	1
1526 0000 --             r0x10A7:	.ds	1
1527                     	.area LOCALSTK (STK); local stack var
1528                     	.globl _UART0_SendBuffer_STK01
1529                     	.globl _UART0_SendBuffer_STK00
1530                     ;--------------------------------------------------------
1531                     ; initialized data
1532                     ;--------------------------------------------------------
1533                     ;--------------------------------------------------------
1534                     ; initialized data - mirror
1535                     ;--------------------------------------------------------
1536                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_BLEmode$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1537                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_BLEmode$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1538                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1539                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1540                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1541                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1542                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1543                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1544                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1545                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1546                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1547                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1548                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1549                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1550                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1551                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1552                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1553                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1554                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1555                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1556                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1557                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1558                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1559                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1560                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1561                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1562                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1563                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1564                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1565                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1566                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1567                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1568                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1569                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1570                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1571                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1572                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1573                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1574                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1575                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1576                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1577                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1578                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1579                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1580                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1581                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1582                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1583                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1584                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1585                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1586                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1587                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1588                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1589                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1590                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1591                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1592                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1593                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1594                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1595                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1596                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1597                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1598                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1599                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1600                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1601                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1602                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1603                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1604                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1605                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1606                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1607                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1608                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1609                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1610                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1611                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1612                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1613                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1614                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1615                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1616                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1617                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1618                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1619                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1620                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1621                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1622                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1623                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1624                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1625                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1626                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1627                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1628                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1629                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_BLEmode$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1630                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1631                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1632                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1633                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_BLEmode$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1634                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1635                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1636                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_BLEmode$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1637                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_BLEmode$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1638                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_BLEmode$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1639                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1640                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1641                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_BLEmode$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1642                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_BLEmode$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1643                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_BLEmode$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1644                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_BLEmode$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1645                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_BLEmode$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1646                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1647                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1648                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1649                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1650                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1651                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1652                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1653                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1654                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1655                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1656                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1657                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1658                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1659                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1660                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1661                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1662                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1663                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1664                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1665                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1666                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1667                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1668                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1669                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1670                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1671                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1672                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1673                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1674                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1675                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_BLEmode$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1676                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1677                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1678                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_BLEmode$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1679                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_BLEmode$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1680                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1681                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_BLEmode$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1682                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1683                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1684                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1685                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1686                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1687                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1688                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1689                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1690                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1691                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1692                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1693                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1694                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1695                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1696                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1697                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1698                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1699                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1700                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1701                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1702                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1703                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1704                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1705                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1706                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1707                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1708                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1709                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1710                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1711                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1712                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1713                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1714                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1715                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1716                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1717                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1718                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1719                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1720                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1721                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1722                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1723                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1724                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1725                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1726                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1727                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1728                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1729                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1730                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1731                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1732                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1733                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1734                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1735                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1736                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1737                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1738                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1739                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1740                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1741                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1742                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1743                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1744                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1745                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1746                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1747                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1748                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1749                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1750                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1751                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1752                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1753                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1754                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1755                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1756                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1757                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1758                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1759                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1760                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1761                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1762                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1763                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1764                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1765                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1766                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1767                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1768                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1769                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_BLEmode$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1770                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_BLEmode$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1771                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_BLEmode$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1772                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1773                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1774                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_BLEmode$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1775                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1776                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1777                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1778                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1779                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1780                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1781                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1782                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1783                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1784                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1785                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1786                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1787                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1788                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1789                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1790                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1791                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1792                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1793                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1794                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1795                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1796                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1797                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1798                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1799                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1800                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1801                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1802                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1803                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1804                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1805                     	;Following is optimization info, 
1806                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1807                     	;--cdb--W:r0x10A3:NULL+0:-1:0
1808                     	;--cdb--W:r0x10A4:NULL+0:-1:0
1809                     	;--cdb--W:r0x10A3:NULL+0:-1:1
1810                     	;--cdb--W:r0x10A4:NULL+0:-1:1
1811                     	;--cdb--W:r0x10A2:NULL+0:-1:1
1812                     	;--cdb--W:r0x109C:NULL+0:-1:1
1813                     	;--cdb--W:r0x109B:NULL+0:-1:1
1814                     	;--cdb--W:r0x109B:NULL+0:-1:0
1815                     	;--cdb--W:r0x109B:r0x109D+0:-1:0
1816                     	;--cdb--W:r0x109C:NULL+0:-1:0
1817                     	;--cdb--W:r0x109F:r0x109E+1:-1:0
1818                     	;--cdb--W:r0x1095:NULL+0:-1:0
1819                     	;--cdb--W:r0x1096:NULL+0:-1:0
1820                     	;--cdb--W:r0x1097:NULL+0:-1:0
1821                     	;--cdb--W:r0x1098:NULL+0:-1:0
1822                     	;--cdb--W:r0x1095:NULL+0:-1:1
1823                     	;--cdb--W:r0x1096:NULL+0:-1:1
1824                     	;--cdb--W:r0x1097:NULL+0:-1:1
1825                     	;--cdb--W:r0x1098:NULL+0:-1:1
1826                     	;--cdb--W:r0x1092:NULL+0:-1:1
1827                     	;--cdb--W:r0x1090:NULL+0:-1:1
1828                     	;--cdb--W:r0x108F:NULL+0:-1:1
1829                     	;--c2db--RNG$_BleData_Check_checksum_10000_417$509$547
1830                     	;--c2db--RNG$_BleData_Check_L_buf_10000_417$512$554
1831                     	;--c2db--RNG$_BleData_Check_i_10000_417$526$547
1832                     	;--c2db--RNG$_BleData_Check_L_Lenth_10000_417$518$541
1833                     	;--c2db--RNG$_Uart_Receive_Event_i_10000_425$447$472
1834                     	;--c2db--RNG$_Uart_Receive_Event_L_ble_func_10000_425$473$487
1835                     	;--c2db--RNG$_App_Upload_Temperature_L_Checksum_10000_433$413$419
1836                     	;--c2db--RNG$_App_Upload_Temperature_L_Temp_10000_433$401$404
1837                     	;--c2db--RNG$_App_UploadData_L_Upload_func_10000_441$251$263
1838                     	;--c2db--RNG$_UART_Send_To_Ble_L_lenth_10000_446$229$235
1839                     	;--c2db--RNG$_Uart_Send_Wakeup_i_10000_448$201$213
1840                     	END
