001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_Backlight.c"
009                     	.module App_Backlight
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Backlight$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Backlight$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Backlight$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Backlight$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Backlight$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Backlight$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Backlight$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Backlight$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Backlight$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Backlight$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Backlight$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Backlight$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Backlight$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Backlight$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Backlight$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Backlight$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Backlight$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Backlight$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Backlight$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Backlight$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Backlight:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Backlight$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Backlight$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Backlight$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
150                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
152                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
153                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
154                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
155                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
157                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
161                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
163                     	;--cdb--S:G$BackLight_SingleDrv$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:App_Backlight:G$BackLight_SingleDrv$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     	;--cdb--S:G$BackLight_DoubleDrv$0$0({2}DF,SV:S),C,0,0
166                     	;--cdb--F:App_Backlight:G$BackLight_DoubleDrv$0$0({2}DF,SV:S),C,0,0,0,0,0
167                     	;--cdb--S:G$BackLight_TribleDrv$0$0({2}DF,SV:S),C,0,0
168                     	;--cdb--F:App_Backlight:G$BackLight_TribleDrv$0$0({2}DF,SV:S),C,0,0,0,0,0
169                     	;--cdb--S:G$BackLight_QuadrupleDrv$0$0({2}DF,SV:S),C,0,0
170                     	;--cdb--F:App_Backlight:G$BackLight_QuadrupleDrv$0$0({2}DF,SV:S),C,0,0,0,0,0
171                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--F:App_Backlight:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0,0,0,0
173                     ;--------------------------------------------------------
174                     ; overlayable items in internal ram 
175                     ;--------------------------------------------------------
176                     ;	udata_ovr
177                     .area CCODE (code,REL,CON) ; App_Backlight-code 
178                     .globl _Backlight_Drive
179                     
180                     ;--------------------------------------------------------
181                     	.FUNC _Backlight_Drive:$r:0:0
182                     ;--------------------------------------------------------
183                     ;	;.line	1125; ".\Source\App_Backlight.c"	}
184                     _Backlight_Drive:	;Function start
185 075C [00] [Y] 000A      	RET	
186                     ; exit point of _Backlight_Drive
187                     	.ENDFUNC	_Backlight_Drive
188                     ;--------------------------------------------------------
189                     
190                     .globl _BackLight_QuadrupleDrv
191                     
192                     ;--------------------------------------------------------
193                     	.FUNC _BackLight_QuadrupleDrv:$r:0:0:$C:_Delay_ms:$C:_Timer_Experience:$C:_Centigrade_Convert_Fahrenheit\
194                     :$L:r0x10A8:$L:r0x10A9:$L:r0x10AA:$L:r0x10AB
195                     ;--------------------------------------------------------
196                     ;	;.line	767; ".\Source\App_Backlight.c"	switch(eBacklight_Status)
197                     _BackLight_QuadrupleDrv:	;Function start
198                     	MVL	0x05
199                     	CPSL	_eBacklight_Status,0
200                     	JMP	_00677_DS_
201                     	MVL	HIGHD2(_00868_DS_)
202                     	MVF	_PCLATH,1,0
203                     	MVF	_eBacklight_Status,0,0
204                     	ADDL	D2(_00868_DS_)
205                     	BTSZ	_STATUS,4
206                     	INF	_PCLATH,1,0
207                     	MVF	_PCLATL,1,0
208                     _00868_DS_:
209                     	RJ	_00595_DS_
210                     	RJ	_00598_DS_
211                     	RJ	_00624_DS_
212                     	RJ	_00624_DS_
213                     	RJ	_00651_DS_
214                     _00595_DS_:
215                     ;	;.line	772; ".\Source\App_Backlight.c"	Disable_Green;
216                     	BCF	_TRISC2,0
217                     ;	;.line	774; ".\Source\App_Backlight.c"	Disable_Yellow;
218                     	BCF	_TRISC2,1
219                     ;	;.line	776; ".\Source\App_Backlight.c"	Disable_Red;
220                     	BCF	_TRISC2,3
221                     ;	;.line	778; ".\Source\App_Backlight.c"	Disable_white;
222                     	BCF	_TRISC2,2
223                     ;	;.line	780; ".\Source\App_Backlight.c"	G320_Disable();
224                     	BCF	_PT8,4
225                     ;	;.line	781; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
226                     	BCF	_sTimeStamp,2
227                     ;	;.line	783; ".\Source\App_Backlight.c"	if(sBacklight.MeasuredTempLighting)
228                     	BTSS	_sBacklight,1
229                     	JMP	_00677_DS_
230                     ;	;.line	785; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = FALSE;
231                     	BCF	_sBacklight,1
232                     ;	;.line	787; ".\Source\App_Backlight.c"	ADC_Enable();
233                     	BSF	_AD1CN0,7
234                     ;	;.line	789; ".\Source\App_Backlight.c"	ADC_CMFREnable();
235                     	BSF	_AD1CN0,0
236                     ;	;.line	793; ".\Source\App_Backlight.c"	ADC_OSRSelect(OSR_2048);
237                     	MVF	_AD1CN0,0,0
238                     	ANDL	0xe1
239                     	IORL	0x08
240                     	MVF	_AD1CN0,1,0
241                     ;	;.line	795; ".\Source\App_Backlight.c"	sADC.ADCCounts = 0;
242                     	CLRF	(_sADC + 2),0
243                     ;	;.line	797; ".\Source\App_Backlight.c"	Delay_ms(10);
244                     	MVL	0x0a
245                     	CALL	_Delay_ms
246                     ;	;.line	799; ".\Source\App_Backlight.c"	break;
247                     	JMP	_00677_DS_
248                     _00598_DS_:
249                     ;	;.line	804; ".\Source\App_Backlight.c"	if(eVersionCode == VC_DispOn)
250                     	RRF	_eVersionCode,0,0
251                     	BTSZ	_STATUS,0
252                     	JMP	_00621_DS_
253                     ;	;.line	806; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
254                     	BTSZ	_sTimeStamp,2
255                     	JMP	_00612_DS_
256                     ;	;.line	808; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
257                     	BSF	_sTimeStamp,2
258                     ;	;.line	809; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
259                     	MVF	(_sTimeStamp + 2),0,0
260                     	MVF	(_sTimeStamp + 14),1,0
261                     	MVF	(_sTimeStamp + 3),0,0
262                     	MVF	(_sTimeStamp + 15),1,0
263                     	MVF	(_sTimeStamp + 4),0,0
264                     	MVF	(_sTimeStamp + 16),1,0
265                     	MVF	(_sTimeStamp + 5),0,0
266                     	MVF	(_sTimeStamp + 17),1,0
267                     ;	;.line	811; ".\Source\App_Backlight.c"	G320_Enable();
268                     	BSF	_PT8,4
269                     	JMP	_00677_DS_
270                     _00612_DS_:
271                     ;	;.line	816; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,20);
272                     	MVF	(_sTimeStamp + 14),0,0
273                     	MVF	r0x10A8,1,0
274                     	MVF	(_sTimeStamp + 15),0,0
275                     	MVF	r0x10A9,1,0
276                     	MVF	(_sTimeStamp + 16),0,0
277                     	MVF	r0x10AA,1,0
278                     	MVF	(_sTimeStamp + 17),0,0
279                     	MVF	r0x10AB,1,0
280                     	MVL	0x14
281                     	MVF	_Timer_Experience_STK06,1,0
282                     	CLRF	_Timer_Experience_STK05,0
283                     	CLRF	_Timer_Experience_STK04,0
284                     	CLRF	_Timer_Experience_STK03,0
285                     	MVF	r0x10A8,0,0
286                     	MVF	_Timer_Experience_STK02,1,0
287                     	MVF	r0x10A9,0,0
288                     	MVF	_Timer_Experience_STK01,1,0
289                     	MVF	r0x10AA,0,0
290                     	MVF	_Timer_Experience_STK00,1,0
291                     	MVF	r0x10AB,0,0
292                     	CALL	_Timer_Experience
293                     ;	;.line	818; ".\Source\App_Backlight.c"	if(Result)
294                     	IORL	0x00
295                     	BTSZ	_STATUS,0
296                     	JMP	_00609_DS_
297                     ;	;.line	821; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,40);
298                     	MVF	(_sTimeStamp + 14),0,0
299                     	MVF	r0x10A8,1,0
300                     	MVF	(_sTimeStamp + 15),0,0
301                     	MVF	r0x10A9,1,0
302                     	MVF	(_sTimeStamp + 16),0,0
303                     	MVF	r0x10AA,1,0
304                     	MVF	(_sTimeStamp + 17),0,0
305                     	MVF	r0x10AB,1,0
306                     	MVL	0x28
307                     	MVF	_Timer_Experience_STK06,1,0
308                     	CLRF	_Timer_Experience_STK05,0
309                     	CLRF	_Timer_Experience_STK04,0
310                     	CLRF	_Timer_Experience_STK03,0
311                     	MVF	r0x10A8,0,0
312                     	MVF	_Timer_Experience_STK02,1,0
313                     	MVF	r0x10A9,0,0
314                     	MVF	_Timer_Experience_STK01,1,0
315                     	MVF	r0x10AA,0,0
316                     	MVF	_Timer_Experience_STK00,1,0
317                     	MVF	r0x10AB,0,0
318                     	CALL	_Timer_Experience
319                     ;	;.line	822; ".\Source\App_Backlight.c"	if(Result)
320                     	IORL	0x00
321                     	BTSZ	_STATUS,0
322                     	JMP	_00606_DS_
323                     ;	;.line	825; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,60);
324                     	MVF	(_sTimeStamp + 14),0,0
325                     	MVF	r0x10A8,1,0
326                     	MVF	(_sTimeStamp + 15),0,0
327                     	MVF	r0x10A9,1,0
328                     	MVF	(_sTimeStamp + 16),0,0
329                     	MVF	r0x10AA,1,0
330                     	MVF	(_sTimeStamp + 17),0,0
331                     	MVF	r0x10AB,1,0
332                     	MVL	0x3c
333                     	MVF	_Timer_Experience_STK06,1,0
334                     	CLRF	_Timer_Experience_STK05,0
335                     	CLRF	_Timer_Experience_STK04,0
336                     	CLRF	_Timer_Experience_STK03,0
337                     	MVF	r0x10A8,0,0
338                     	MVF	_Timer_Experience_STK02,1,0
339                     	MVF	r0x10A9,0,0
340                     	MVF	_Timer_Experience_STK01,1,0
341                     	MVF	r0x10AA,0,0
342                     	MVF	_Timer_Experience_STK00,1,0
343                     	MVF	r0x10AB,0,0
344                     	CALL	_Timer_Experience
345                     ;	;.line	826; ".\Source\App_Backlight.c"	if(Result)
346                     	IORL	0x00
347                     	BTSZ	_STATUS,0
348                     	JMP	_00603_DS_
349                     ;	;.line	829; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
350                     	MVF	(_sTimeStamp + 14),0,0
351                     	MVF	r0x10A8,1,0
352                     	MVF	(_sTimeStamp + 15),0,0
353                     	MVF	r0x10A9,1,0
354                     	MVF	(_sTimeStamp + 16),0,0
355                     	MVF	r0x10AA,1,0
356                     	MVF	(_sTimeStamp + 17),0,0
357                     	MVF	r0x10AB,1,0
358                     	MVL	0x50
359                     	MVF	_Timer_Experience_STK06,1,0
360                     	CLRF	_Timer_Experience_STK05,0
361                     	CLRF	_Timer_Experience_STK04,0
362                     	CLRF	_Timer_Experience_STK03,0
363                     	MVF	r0x10A8,0,0
364                     	MVF	_Timer_Experience_STK02,1,0
365                     	MVF	r0x10A9,0,0
366                     	MVF	_Timer_Experience_STK01,1,0
367                     	MVF	r0x10AA,0,0
368                     	MVF	_Timer_Experience_STK00,1,0
369                     	MVF	r0x10AB,0,0
370                     	CALL	_Timer_Experience
371                     ;	;.line	830; ".\Source\App_Backlight.c"	if(Result)
372                     	IORL	0x00
373                     	BTSZ	_STATUS,0
374                     	JMP	_00600_DS_
375                     ;	;.line	832; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
376                     	CLRF	_eBacklight_Status,0
377                     	JMP	_00677_DS_
378                     _00600_DS_:
379                     ;	;.line	837; ".\Source\App_Backlight.c"	Disable_Yellow;
380                     	BCF	_TRISC2,1
381                     ;	;.line	839; ".\Source\App_Backlight.c"	Enable_Red;
382                     	BSF	_TRISC2,3
383                     	BCF	_PT2,3
384                     	JMP	_00677_DS_
385                     _00603_DS_:
386                     ;	;.line	845; ".\Source\App_Backlight.c"	Disable_Green;
387                     	BCF	_TRISC2,0
388                     ;	;.line	847; ".\Source\App_Backlight.c"	Enable_Yellow;
389                     	BSF	_TRISC2,1
390                     	BCF	_PT2,2
391                     	JMP	_00677_DS_
392                     _00606_DS_:
393                     ;	;.line	853; ".\Source\App_Backlight.c"	Disable_white;
394                     	BCF	_TRISC2,2
395                     ;	;.line	855; ".\Source\App_Backlight.c"	Enable_Green;
396                     	BSF	_TRISC2,0
397                     	BCF	_PT2,0
398                     	JMP	_00677_DS_
399                     _00609_DS_:
400                     ;	;.line	861; ".\Source\App_Backlight.c"	Enable_white;
401                     	BSF	_TRISC2,2
402                     	BCF	_PT2,2
403                     	JMP	_00677_DS_
404                     _00621_DS_:
405                     ;	;.line	867; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
406                     	BTSZ	_sTimeStamp,2
407                     	JMP	_00618_DS_
408                     ;	;.line	869; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
409                     	BSF	_sTimeStamp,2
410                     ;	;.line	870; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
411                     	MVF	(_sTimeStamp + 2),0,0
412                     	MVF	(_sTimeStamp + 14),1,0
413                     	MVF	(_sTimeStamp + 3),0,0
414                     	MVF	(_sTimeStamp + 15),1,0
415                     	MVF	(_sTimeStamp + 4),0,0
416                     	MVF	(_sTimeStamp + 16),1,0
417                     	MVF	(_sTimeStamp + 5),0,0
418                     	MVF	(_sTimeStamp + 17),1,0
419                     ;	;.line	872; ".\Source\App_Backlight.c"	G320_Enable();
420                     	BSF	_PT8,4
421                     	JMP	_00677_DS_
422                     _00618_DS_:
423                     ;	;.line	877; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
424                     	MVF	(_sTimeStamp + 14),0,0
425                     	MVF	r0x10A8,1,0
426                     	MVF	(_sTimeStamp + 15),0,0
427                     	MVF	r0x10A9,1,0
428                     	MVF	(_sTimeStamp + 16),0,0
429                     	MVF	r0x10AA,1,0
430                     	MVF	(_sTimeStamp + 17),0,0
431                     	MVF	r0x10AB,1,0
432                     	MVL	0x50
433                     	MVF	_Timer_Experience_STK06,1,0
434                     	CLRF	_Timer_Experience_STK05,0
435                     	CLRF	_Timer_Experience_STK04,0
436                     	CLRF	_Timer_Experience_STK03,0
437                     	MVF	r0x10A8,0,0
438                     	MVF	_Timer_Experience_STK02,1,0
439                     	MVF	r0x10A9,0,0
440                     	MVF	_Timer_Experience_STK01,1,0
441                     	MVF	r0x10AA,0,0
442                     	MVF	_Timer_Experience_STK00,1,0
443                     	MVF	r0x10AB,0,0
444                     	CALL	_Timer_Experience
445                     ;	;.line	879; ".\Source\App_Backlight.c"	if(Result)
446                     	IORL	0x00
447                     	BTSZ	_STATUS,0
448                     	JMP	_00615_DS_
449                     ;	;.line	881; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
450                     	CLRF	_eBacklight_Status,0
451                     	JMP	_00677_DS_
452                     _00615_DS_:
453                     ;	;.line	886; ".\Source\App_Backlight.c"	Enable_white;
454                     	BSF	_TRISC2,2
455                     	BCF	_PT2,2
456                     ;	;.line	890; ".\Source\App_Backlight.c"	break;
457                     	JMP	_00677_DS_
458                     _00624_DS_:
459                     ;	;.line	896; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
460                     	BTSZ	_sTimeStamp,2
461                     	JMP	_00649_DS_
462                     ;	;.line	898; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
463                     	BSF	_sTimeStamp,2
464                     ;	;.line	899; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
465                     	MVF	(_sTimeStamp + 2),0,0
466                     	MVF	(_sTimeStamp + 14),1,0
467                     	MVF	(_sTimeStamp + 3),0,0
468                     	MVF	(_sTimeStamp + 15),1,0
469                     	MVF	(_sTimeStamp + 4),0,0
470                     	MVF	(_sTimeStamp + 16),1,0
471                     	MVF	(_sTimeStamp + 5),0,0
472                     	MVF	(_sTimeStamp + 17),1,0
473                     ;	;.line	901; ".\Source\App_Backlight.c"	G320_Enable();
474                     	BSF	_PT8,4
475                     	JMP	_00677_DS_
476                     _00649_DS_:
477                     ;	;.line	906; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
478                     	MVF	(_sTimeStamp + 14),0,0
479                     	MVF	r0x10A8,1,0
480                     	MVF	(_sTimeStamp + 15),0,0
481                     	MVF	r0x10A9,1,0
482                     	MVF	(_sTimeStamp + 16),0,0
483                     	MVF	r0x10AA,1,0
484                     	MVF	(_sTimeStamp + 17),0,0
485                     	MVF	r0x10AB,1,0
486                     	MVL	0x50
487                     	MVF	_Timer_Experience_STK06,1,0
488                     	CLRF	_Timer_Experience_STK05,0
489                     	CLRF	_Timer_Experience_STK04,0
490                     	CLRF	_Timer_Experience_STK03,0
491                     	MVF	r0x10A8,0,0
492                     	MVF	_Timer_Experience_STK02,1,0
493                     	MVF	r0x10A9,0,0
494                     	MVF	_Timer_Experience_STK01,1,0
495                     	MVF	r0x10AA,0,0
496                     	MVF	_Timer_Experience_STK00,1,0
497                     	MVF	r0x10AB,0,0
498                     	CALL	_Timer_Experience
499                     ;	;.line	908; ".\Source\App_Backlight.c"	if(Result)
500                     	IORL	0x00
501                     	BTSZ	_STATUS,0
502                     	JMP	_00646_DS_
503                     ;	;.line	910; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
504                     	CLRF	_eBacklight_Status,0
505                     	JMP	_00677_DS_
506                     _00646_DS_:
507                     ;	;.line	914; ".\Source\App_Backlight.c"	if(eBacklight_Status == MemTemp_Backlight)
508                     	MVL	0x02
509                     	CPSE	_eBacklight_Status,0
510                     	JMP	_00643_DS_
511                     ;	;.line	916; ".\Source\App_Backlight.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
512                     	MVF	(_sMemoryFlag + 2),0,0
513                     	MULL	0x02
514                     	LDPR	(_sMemory + 3),0
515                     	MVF	_PRODL,0,0
516                     	MVFF	_PLUSW0,STK00
517                     	INF	_WREG,0,0
518                     	MVFF	_PLUSW0,STK01
519                     	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
520                     	MVF	STK01,0,0
521                     	CALL	_Centigrade_Convert_Fahrenheit
522                     	MVF	(_sActual_Forecast + 6),1,0
523                     	MVF	STK00,0,0
524                     	MVF	(_sActual_Forecast + 5),1,0
525                     ;	;.line	918; ".\Source\App_Backlight.c"	if(eTempUnit == Centigrade)
526                     	MVL	0x5a
527                     	CPSE	_eTempUnit,0
528                     	JMP	_00640_DS_
529                     ;	;.line	921; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
530                     	MVF	(_sActual_Forecast + 5),0,0
531                     	ADDL	0x3c
532                     	MVL	0xf1
533                     	ADDC	(_sActual_Forecast + 6),0,0
534                     	BTSS	_STATUS,4
535                     	JMP	_00629_DS_
536                     ;	;.line	924; ".\Source\App_Backlight.c"	Disable_Green;
537                     	BCF	_TRISC2,0
538                     ;	;.line	926; ".\Source\App_Backlight.c"	Disable_Yellow;
539                     	BCF	_TRISC2,1
540                     ;	;.line	928; ".\Source\App_Backlight.c"	Enable_Red;
541                     	BSF	_TRISC2,3
542                     	BCF	_PT2,3
543                     	JMP	_00677_DS_
544                     _00629_DS_:
545                     ;	;.line	931; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
546                     	MVF	(_sActual_Forecast + 5),0,0
547                     	ADDL	0x6e
548                     	MVL	0xf1
549                     	ADDC	(_sActual_Forecast + 6),0,0
550                     	BTSS	_STATUS,4
551                     	JMP	_00626_DS_
552                     ;	;.line	934; ".\Source\App_Backlight.c"	Disable_Green;
553                     	BCF	_TRISC2,0
554                     ;	;.line	936; ".\Source\App_Backlight.c"	Disable_Red;
555                     	BCF	_TRISC2,3
556                     ;	;.line	938; ".\Source\App_Backlight.c"	Enable_Yellow;
557                     	BSF	_TRISC2,1
558                     	BCF	_PT2,2
559                     	JMP	_00677_DS_
560                     _00626_DS_:
561                     ;	;.line	944; ".\Source\App_Backlight.c"	Disable_Yellow;
562                     	BCF	_TRISC2,1
563                     ;	;.line	946; ".\Source\App_Backlight.c"	Disable_Red;
564                     	BCF	_TRISC2,3
565                     ;	;.line	948; ".\Source\App_Backlight.c"	Enable_Green;
566                     	BSF	_TRISC2,0
567                     	BCF	_PT2,0
568                     	JMP	_00677_DS_
569                     _00640_DS_:
570                     ;	;.line	952; ".\Source\App_Backlight.c"	else if(eTempUnit == Fahrenheit)
571                     	MVL	0xa5
572                     	CPSE	_eTempUnit,0
573                     	JMP	_00677_DS_
574                     ;	;.line	955; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
575                     	MVF	(_sActual_Forecast + 5),0,0
576                     	ADDL	0xf0
577                     	MVL	0xd8
578                     	ADDC	(_sActual_Forecast + 6),0,0
579                     	BTSS	_STATUS,4
580                     	JMP	_00635_DS_
581                     ;	;.line	958; ".\Source\App_Backlight.c"	Disable_Green;
582                     	BCF	_TRISC2,0
583                     ;	;.line	960; ".\Source\App_Backlight.c"	Disable_Yellow;
584                     	BCF	_TRISC2,1
585                     ;	;.line	962; ".\Source\App_Backlight.c"	Enable_Red;
586                     	BSF	_TRISC2,3
587                     	BCF	_PT2,3
588                     	JMP	_00677_DS_
589                     _00635_DS_:
590                     ;	;.line	965; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
591                     	MVF	(_sActual_Forecast + 5),0,0
592                     	ADDL	0x4a
593                     	MVL	0xd9
594                     	ADDC	(_sActual_Forecast + 6),0,0
595                     	BTSS	_STATUS,4
596                     	JMP	_00632_DS_
597                     ;	;.line	968; ".\Source\App_Backlight.c"	Disable_Green;
598                     	BCF	_TRISC2,0
599                     ;	;.line	970; ".\Source\App_Backlight.c"	Disable_Red;
600                     	BCF	_TRISC2,3
601                     ;	;.line	972; ".\Source\App_Backlight.c"	Enable_Yellow;
602                     	BSF	_TRISC2,1
603                     	BCF	_PT2,2
604                     	JMP	_00677_DS_
605                     _00632_DS_:
606                     ;	;.line	978; ".\Source\App_Backlight.c"	Disable_Yellow;
607                     	BCF	_TRISC2,1
608                     ;	;.line	980; ".\Source\App_Backlight.c"	Disable_Red;
609                     	BCF	_TRISC2,3
610                     ;	;.line	982; ".\Source\App_Backlight.c"	Enable_Green;
611                     	BSF	_TRISC2,0
612                     	BCF	_PT2,0
613                     	JMP	_00677_DS_
614                     _00643_DS_:
615                     ;	;.line	989; ".\Source\App_Backlight.c"	Enable_Green;
616                     	BSF	_TRISC2,0
617                     	BCF	_PT2,0
618                     ;	;.line	993; ".\Source\App_Backlight.c"	break;
619                     	JMP	_00677_DS_
620                     _00651_DS_:
621                     ;	;.line	998; ".\Source\App_Backlight.c"	ADC_Disable();
622                     	BCF	_AD1CN0,7
623                     ;	;.line	1000; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = TRUE;
624                     	BSF	_sBacklight,1
625                     ;	;.line	1002; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
626                     	BTSZ	_sTimeStamp,2
627                     	JMP	_00673_DS_
628                     ;	;.line	1004; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
629                     	BSF	_sTimeStamp,2
630                     ;	;.line	1005; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
631                     	MVF	(_sTimeStamp + 2),0,0
632                     	MVF	(_sTimeStamp + 14),1,0
633                     	MVF	(_sTimeStamp + 3),0,0
634                     	MVF	(_sTimeStamp + 15),1,0
635                     	MVF	(_sTimeStamp + 4),0,0
636                     	MVF	(_sTimeStamp + 16),1,0
637                     	MVF	(_sTimeStamp + 5),0,0
638                     	MVF	(_sTimeStamp + 17),1,0
639                     ;	;.line	1007; ".\Source\App_Backlight.c"	G320_Enable();
640                     	BSF	_PT8,4
641                     	JMP	_00677_DS_
642                     _00673_DS_:
643                     ;	;.line	1014; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
644                     	MVF	(_sTimeStamp + 14),0,0
645                     	MVF	r0x10A8,1,0
646                     	MVF	(_sTimeStamp + 15),0,0
647                     	MVF	r0x10A9,1,0
648                     	MVF	(_sTimeStamp + 16),0,0
649                     	MVF	r0x10AA,1,0
650                     	MVF	(_sTimeStamp + 17),0,0
651                     	MVF	r0x10AB,1,0
652                     	MVL	0x90
653                     	MVF	_Timer_Experience_STK06,1,0
654                     	MVL	0x01
655                     	MVF	_Timer_Experience_STK05,1,0
656                     	CLRF	_Timer_Experience_STK04,0
657                     	CLRF	_Timer_Experience_STK03,0
658                     	MVF	r0x10A8,0,0
659                     	MVF	_Timer_Experience_STK02,1,0
660                     	MVF	r0x10A9,0,0
661                     	MVF	_Timer_Experience_STK01,1,0
662                     	MVF	r0x10AA,0,0
663                     	MVF	_Timer_Experience_STK00,1,0
664                     	MVF	r0x10AB,0,0
665                     	CALL	_Timer_Experience
666                     ;	;.line	1022; ".\Source\App_Backlight.c"	if(Result)
667                     	IORL	0x00
668                     	BTSZ	_STATUS,0
669                     	JMP	_00670_DS_
670                     ;	;.line	1024; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
671                     	CLRF	_eBacklight_Status,0
672                     	JMP	_00677_DS_
673                     _00670_DS_:
674                     ;	;.line	1028; ".\Source\App_Backlight.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
675                     	MVF	(_sActual_Forecast + 3),0,0
676                     	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
677                     	MVF	(_sActual_Forecast + 4),0,0
678                     	CALL	_Centigrade_Convert_Fahrenheit
679                     	MVF	(_sActual_Forecast + 6),1,0
680                     	MVF	STK00,0,0
681                     	MVF	(_sActual_Forecast + 5),1,0
682                     ;	;.line	1030; ".\Source\App_Backlight.c"	if(eTempUnit == Centigrade)
683                     	MVL	0x5a
684                     	CPSE	_eTempUnit,0
685                     	JMP	_00667_DS_
686                     ;	;.line	1033; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
687                     	MVF	(_sActual_Forecast + 5),0,0
688                     	ADDL	0x3c
689                     	MVL	0xf1
690                     	ADDC	(_sActual_Forecast + 6),0,0
691                     	BTSS	_STATUS,4
692                     	JMP	_00656_DS_
693                     ;	;.line	1035; ".\Source\App_Backlight.c"	Enable_Red;
694                     	BSF	_TRISC2,3
695                     	BCF	_PT2,3
696                     	JMP	_00677_DS_
697                     _00656_DS_:
698                     ;	;.line	1038; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
699                     	MVF	(_sActual_Forecast + 5),0,0
700                     	ADDL	0x6e
701                     	MVL	0xf1
702                     	ADDC	(_sActual_Forecast + 6),0,0
703                     	BTSS	_STATUS,4
704                     	JMP	_00653_DS_
705                     ;	;.line	1041; ".\Source\App_Backlight.c"	Enable_Yellow;
706                     	BSF	_TRISC2,1
707                     	BCF	_PT2,2
708                     	JMP	_00677_DS_
709                     _00653_DS_:
710                     ;	;.line	1047; ".\Source\App_Backlight.c"	Enable_Green;
711                     	BSF	_TRISC2,0
712                     	BCF	_PT2,0
713                     	JMP	_00677_DS_
714                     _00667_DS_:
715                     ;	;.line	1051; ".\Source\App_Backlight.c"	else if(eTempUnit == Fahrenheit)
716                     	MVL	0xa5
717                     	CPSE	_eTempUnit,0
718                     	JMP	_00677_DS_
719                     ;	;.line	1054; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
720                     	MVF	(_sActual_Forecast + 5),0,0
721                     	ADDL	0xf0
722                     	MVL	0xd8
723                     	ADDC	(_sActual_Forecast + 6),0,0
724                     	BTSS	_STATUS,4
725                     	JMP	_00662_DS_
726                     ;	;.line	1056; ".\Source\App_Backlight.c"	Enable_Red;
727                     	BSF	_TRISC2,3
728                     	BCF	_PT2,3
729                     	JMP	_00677_DS_
730                     _00662_DS_:
731                     ;	;.line	1059; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
732                     	MVF	(_sActual_Forecast + 5),0,0
733                     	ADDL	0x4a
734                     	MVL	0xd9
735                     	ADDC	(_sActual_Forecast + 6),0,0
736                     	BTSS	_STATUS,4
737                     	JMP	_00659_DS_
738                     ;	;.line	1062; ".\Source\App_Backlight.c"	Enable_Yellow;
739                     	BSF	_TRISC2,1
740                     	BCF	_PT2,2
741                     	JMP	_00677_DS_
742                     _00659_DS_:
743                     ;	;.line	1068; ".\Source\App_Backlight.c"	Enable_Green;
744                     	BSF	_TRISC2,0
745                     	BCF	_PT2,0
746                     _00677_DS_:
747                     ;	;.line	1077; ".\Source\App_Backlight.c"	}
748                     	RET	
749                     ; exit point of _BackLight_QuadrupleDrv
750                     	.ENDFUNC	_BackLight_QuadrupleDrv
751                     ;--------------------------------------------------------
752                     
753                     .globl _BackLight_TribleDrv
754                     
755                     ;--------------------------------------------------------
756                     	.FUNC _BackLight_TribleDrv:$r:0:0:$C:_Delay_ms:$C:_Timer_Experience:$C:_Centigrade_Convert_Fahrenheit\
757                     :$L:r0x10A4:$L:r0x10A5:$L:r0x10A6:$L:r0x10A7
758                     ;--------------------------------------------------------
759                     ;	;.line	487; ".\Source\App_Backlight.c"	switch(eBacklight_Status)
760                     _BackLight_TribleDrv:	;Function start
761                     	MVL	0x05
762                     	CPSL	_eBacklight_Status,0
763                     	JMP	_00427_DS_
764                     	MVL	HIGHD2(_00590_DS_)
765                     	MVF	_PCLATH,1,0
766                     	MVF	_eBacklight_Status,0,0
767                     	ADDL	D2(_00590_DS_)
768                     	BTSZ	_STATUS,4
769                     	INF	_PCLATH,1,0
770                     	MVF	_PCLATL,1,0
771                     _00590_DS_:
772                     	RJ	_00357_DS_
773                     	RJ	_00360_DS_
774                     	RJ	_00374_DS_
775                     	RJ	_00374_DS_
776                     	RJ	_00401_DS_
777                     _00357_DS_:
778                     ;	;.line	492; ".\Source\App_Backlight.c"	Disable_Green;
779                     	BCF	_TRISC2,0
780                     ;	;.line	494; ".\Source\App_Backlight.c"	Disable_Yellow;
781                     	BCF	_TRISC2,1
782                     ;	;.line	496; ".\Source\App_Backlight.c"	Disable_Red;
783                     	BCF	_TRISC2,3
784                     ;	;.line	498; ".\Source\App_Backlight.c"	G320_Disable();
785                     	BCF	_PT8,4
786                     ;	;.line	499; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
787                     	BCF	_sTimeStamp,2
788                     ;	;.line	501; ".\Source\App_Backlight.c"	if(sBacklight.MeasuredTempLighting)
789                     	BTSS	_sBacklight,1
790                     	JMP	_00427_DS_
791                     ;	;.line	503; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = FALSE;
792                     	BCF	_sBacklight,1
793                     ;	;.line	505; ".\Source\App_Backlight.c"	ADC_Enable();
794                     	BSF	_AD1CN0,7
795                     ;	;.line	507; ".\Source\App_Backlight.c"	ADC_CMFREnable();
796                     	BSF	_AD1CN0,0
797                     ;	;.line	511; ".\Source\App_Backlight.c"	ADC_OSRSelect(OSR_2048);
798                     	MVF	_AD1CN0,0,0
799                     	ANDL	0xe1
800                     	IORL	0x08
801                     	MVF	_AD1CN0,1,0
802                     ;	;.line	513; ".\Source\App_Backlight.c"	sADC.ADCCounts = 0;
803                     	CLRF	(_sADC + 2),0
804                     ;	;.line	515; ".\Source\App_Backlight.c"	Delay_ms(10);
805                     	MVL	0x0a
806                     	CALL	_Delay_ms
807                     ;	;.line	517; ".\Source\App_Backlight.c"	break;
808                     	JMP	_00427_DS_
809                     _00360_DS_:
810                     ;	;.line	521; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
811                     	BTSZ	_sTimeStamp,2
812                     	JMP	_00371_DS_
813                     ;	;.line	523; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
814                     	BSF	_sTimeStamp,2
815                     ;	;.line	524; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
816                     	MVF	(_sTimeStamp + 2),0,0
817                     	MVF	(_sTimeStamp + 14),1,0
818                     	MVF	(_sTimeStamp + 3),0,0
819                     	MVF	(_sTimeStamp + 15),1,0
820                     	MVF	(_sTimeStamp + 4),0,0
821                     	MVF	(_sTimeStamp + 16),1,0
822                     	MVF	(_sTimeStamp + 5),0,0
823                     	MVF	(_sTimeStamp + 17),1,0
824                     ;	;.line	526; ".\Source\App_Backlight.c"	G320_Enable();
825                     	BSF	_PT8,4
826                     	JMP	_00427_DS_
827                     _00371_DS_:
828                     ;	;.line	531; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,26);
829                     	MVF	(_sTimeStamp + 14),0,0
830                     	MVF	r0x10A4,1,0
831                     	MVF	(_sTimeStamp + 15),0,0
832                     	MVF	r0x10A5,1,0
833                     	MVF	(_sTimeStamp + 16),0,0
834                     	MVF	r0x10A6,1,0
835                     	MVF	(_sTimeStamp + 17),0,0
836                     	MVF	r0x10A7,1,0
837                     	MVL	0x1a
838                     	MVF	_Timer_Experience_STK06,1,0
839                     	CLRF	_Timer_Experience_STK05,0
840                     	CLRF	_Timer_Experience_STK04,0
841                     	CLRF	_Timer_Experience_STK03,0
842                     	MVF	r0x10A4,0,0
843                     	MVF	_Timer_Experience_STK02,1,0
844                     	MVF	r0x10A5,0,0
845                     	MVF	_Timer_Experience_STK01,1,0
846                     	MVF	r0x10A6,0,0
847                     	MVF	_Timer_Experience_STK00,1,0
848                     	MVF	r0x10A7,0,0
849                     	CALL	_Timer_Experience
850                     ;	;.line	533; ".\Source\App_Backlight.c"	if(Result)
851                     	IORL	0x00
852                     	BTSZ	_STATUS,0
853                     	JMP	_00368_DS_
854                     ;	;.line	536; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,52);
855                     	MVF	(_sTimeStamp + 14),0,0
856                     	MVF	r0x10A4,1,0
857                     	MVF	(_sTimeStamp + 15),0,0
858                     	MVF	r0x10A5,1,0
859                     	MVF	(_sTimeStamp + 16),0,0
860                     	MVF	r0x10A6,1,0
861                     	MVF	(_sTimeStamp + 17),0,0
862                     	MVF	r0x10A7,1,0
863                     	MVL	0x34
864                     	MVF	_Timer_Experience_STK06,1,0
865                     	CLRF	_Timer_Experience_STK05,0
866                     	CLRF	_Timer_Experience_STK04,0
867                     	CLRF	_Timer_Experience_STK03,0
868                     	MVF	r0x10A4,0,0
869                     	MVF	_Timer_Experience_STK02,1,0
870                     	MVF	r0x10A5,0,0
871                     	MVF	_Timer_Experience_STK01,1,0
872                     	MVF	r0x10A6,0,0
873                     	MVF	_Timer_Experience_STK00,1,0
874                     	MVF	r0x10A7,0,0
875                     	CALL	_Timer_Experience
876                     ;	;.line	537; ".\Source\App_Backlight.c"	if(Result)
877                     	IORL	0x00
878                     	BTSZ	_STATUS,0
879                     	JMP	_00365_DS_
880                     ;	;.line	540; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,78);
881                     	MVF	(_sTimeStamp + 14),0,0
882                     	MVF	r0x10A4,1,0
883                     	MVF	(_sTimeStamp + 15),0,0
884                     	MVF	r0x10A5,1,0
885                     	MVF	(_sTimeStamp + 16),0,0
886                     	MVF	r0x10A6,1,0
887                     	MVF	(_sTimeStamp + 17),0,0
888                     	MVF	r0x10A7,1,0
889                     	MVL	0x4e
890                     	MVF	_Timer_Experience_STK06,1,0
891                     	CLRF	_Timer_Experience_STK05,0
892                     	CLRF	_Timer_Experience_STK04,0
893                     	CLRF	_Timer_Experience_STK03,0
894                     	MVF	r0x10A4,0,0
895                     	MVF	_Timer_Experience_STK02,1,0
896                     	MVF	r0x10A5,0,0
897                     	MVF	_Timer_Experience_STK01,1,0
898                     	MVF	r0x10A6,0,0
899                     	MVF	_Timer_Experience_STK00,1,0
900                     	MVF	r0x10A7,0,0
901                     	CALL	_Timer_Experience
902                     ;	;.line	541; ".\Source\App_Backlight.c"	if(Result)
903                     	IORL	0x00
904                     	BTSZ	_STATUS,0
905                     	JMP	_00362_DS_
906                     ;	;.line	543; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
907                     	CLRF	_eBacklight_Status,0
908                     	JMP	_00427_DS_
909                     _00362_DS_:
910                     ;	;.line	548; ".\Source\App_Backlight.c"	Disable_Yellow;
911                     	BCF	_TRISC2,1
912                     ;	;.line	550; ".\Source\App_Backlight.c"	Enable_Red;
913                     	BSF	_TRISC2,3
914                     	BCF	_PT2,3
915                     	JMP	_00427_DS_
916                     _00365_DS_:
917                     ;	;.line	556; ".\Source\App_Backlight.c"	Disable_Green;
918                     	BCF	_TRISC2,0
919                     ;	;.line	558; ".\Source\App_Backlight.c"	Enable_Yellow;
920                     	BSF	_TRISC2,1
921                     	BCF	_PT2,2
922                     	JMP	_00427_DS_
923                     _00368_DS_:
924                     ;	;.line	564; ".\Source\App_Backlight.c"	Enable_Green;
925                     	BSF	_TRISC2,0
926                     	BCF	_PT2,0
927                     ;	;.line	567; ".\Source\App_Backlight.c"	break;
928                     	JMP	_00427_DS_
929                     _00374_DS_:
930                     ;	;.line	573; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
931                     	BTSZ	_sTimeStamp,2
932                     	JMP	_00399_DS_
933                     ;	;.line	575; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
934                     	BSF	_sTimeStamp,2
935                     ;	;.line	576; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
936                     	MVF	(_sTimeStamp + 2),0,0
937                     	MVF	(_sTimeStamp + 14),1,0
938                     	MVF	(_sTimeStamp + 3),0,0
939                     	MVF	(_sTimeStamp + 15),1,0
940                     	MVF	(_sTimeStamp + 4),0,0
941                     	MVF	(_sTimeStamp + 16),1,0
942                     	MVF	(_sTimeStamp + 5),0,0
943                     	MVF	(_sTimeStamp + 17),1,0
944                     ;	;.line	578; ".\Source\App_Backlight.c"	G320_Enable();
945                     	BSF	_PT8,4
946                     	JMP	_00427_DS_
947                     _00399_DS_:
948                     ;	;.line	583; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
949                     	MVF	(_sTimeStamp + 14),0,0
950                     	MVF	r0x10A4,1,0
951                     	MVF	(_sTimeStamp + 15),0,0
952                     	MVF	r0x10A5,1,0
953                     	MVF	(_sTimeStamp + 16),0,0
954                     	MVF	r0x10A6,1,0
955                     	MVF	(_sTimeStamp + 17),0,0
956                     	MVF	r0x10A7,1,0
957                     	MVL	0x50
958                     	MVF	_Timer_Experience_STK06,1,0
959                     	CLRF	_Timer_Experience_STK05,0
960                     	CLRF	_Timer_Experience_STK04,0
961                     	CLRF	_Timer_Experience_STK03,0
962                     	MVF	r0x10A4,0,0
963                     	MVF	_Timer_Experience_STK02,1,0
964                     	MVF	r0x10A5,0,0
965                     	MVF	_Timer_Experience_STK01,1,0
966                     	MVF	r0x10A6,0,0
967                     	MVF	_Timer_Experience_STK00,1,0
968                     	MVF	r0x10A7,0,0
969                     	CALL	_Timer_Experience
970                     ;	;.line	585; ".\Source\App_Backlight.c"	if(Result)
971                     	IORL	0x00
972                     	BTSZ	_STATUS,0
973                     	JMP	_00396_DS_
974                     ;	;.line	587; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
975                     	CLRF	_eBacklight_Status,0
976                     	JMP	_00427_DS_
977                     _00396_DS_:
978                     ;	;.line	591; ".\Source\App_Backlight.c"	if(eBacklight_Status == MemTemp_Backlight)
979                     	MVL	0x02
980                     	CPSE	_eBacklight_Status,0
981                     	JMP	_00393_DS_
982                     ;	;.line	593; ".\Source\App_Backlight.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
983                     	MVF	(_sMemoryFlag + 2),0,0
984                     	MULL	0x02
985                     	LDPR	(_sMemory + 3),0
986                     	MVF	_PRODL,0,0
987                     	MVFF	_PLUSW0,STK00
988                     	INF	_WREG,0,0
989                     	MVFF	_PLUSW0,STK01
990                     	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
991                     	MVF	STK01,0,0
992                     	CALL	_Centigrade_Convert_Fahrenheit
993                     	MVF	(_sActual_Forecast + 6),1,0
994                     	MVF	STK00,0,0
995                     	MVF	(_sActual_Forecast + 5),1,0
996                     ;	;.line	595; ".\Source\App_Backlight.c"	if(eTempUnit == Centigrade)
997                     	MVL	0x5a
998                     	CPSE	_eTempUnit,0
999                     	JMP	_00390_DS_
1000                     ;	;.line	598; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
1001                     	MVF	(_sActual_Forecast + 5),0,0
1002                     	ADDL	0x3c
1003                     	MVL	0xf1
1004                     	ADDC	(_sActual_Forecast + 6),0,0
1005                     	BTSS	_STATUS,4
1006                     	JMP	_00379_DS_
1007                     ;	;.line	601; ".\Source\App_Backlight.c"	Disable_Green;
1008                     	BCF	_TRISC2,0
1009                     ;	;.line	603; ".\Source\App_Backlight.c"	Disable_Yellow;
1010                     	BCF	_TRISC2,1
1011                     ;	;.line	605; ".\Source\App_Backlight.c"	Enable_Red;
1012                     	BSF	_TRISC2,3
1013                     	BCF	_PT2,3
1014                     	JMP	_00427_DS_
1015                     _00379_DS_:
1016                     ;	;.line	608; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
1017                     	MVF	(_sActual_Forecast + 5),0,0
1018                     	ADDL	0x6e
1019                     	MVL	0xf1
1020                     	ADDC	(_sActual_Forecast + 6),0,0
1021                     	BTSS	_STATUS,4
1022                     	JMP	_00376_DS_
1023                     ;	;.line	611; ".\Source\App_Backlight.c"	Disable_Green;
1024                     	BCF	_TRISC2,0
1025                     ;	;.line	613; ".\Source\App_Backlight.c"	Disable_Red;
1026                     	BCF	_TRISC2,3
1027                     ;	;.line	615; ".\Source\App_Backlight.c"	Enable_Yellow;
1028                     	BSF	_TRISC2,1
1029                     	BCF	_PT2,2
1030                     	JMP	_00427_DS_
1031                     _00376_DS_:
1032                     ;	;.line	621; ".\Source\App_Backlight.c"	Disable_Yellow;
1033                     	BCF	_TRISC2,1
1034                     ;	;.line	623; ".\Source\App_Backlight.c"	Disable_Red;
1035                     	BCF	_TRISC2,3
1036                     ;	;.line	625; ".\Source\App_Backlight.c"	Enable_Green;
1037                     	BSF	_TRISC2,0
1038                     	BCF	_PT2,0
1039                     	JMP	_00427_DS_
1040                     _00390_DS_:
1041                     ;	;.line	629; ".\Source\App_Backlight.c"	else if(eTempUnit == Fahrenheit)
1042                     	MVL	0xa5
1043                     	CPSE	_eTempUnit,0
1044                     	JMP	_00427_DS_
1045                     ;	;.line	632; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
1046                     	MVF	(_sActual_Forecast + 5),0,0
1047                     	ADDL	0xf0
1048                     	MVL	0xd8
1049                     	ADDC	(_sActual_Forecast + 6),0,0
1050                     	BTSS	_STATUS,4
1051                     	JMP	_00385_DS_
1052                     ;	;.line	635; ".\Source\App_Backlight.c"	Disable_Green;
1053                     	BCF	_TRISC2,0
1054                     ;	;.line	637; ".\Source\App_Backlight.c"	Disable_Yellow;
1055                     	BCF	_TRISC2,1
1056                     ;	;.line	639; ".\Source\App_Backlight.c"	Enable_Red;
1057                     	BSF	_TRISC2,3
1058                     	BCF	_PT2,3
1059                     	JMP	_00427_DS_
1060                     _00385_DS_:
1061                     ;	;.line	642; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
1062                     	MVF	(_sActual_Forecast + 5),0,0
1063                     	ADDL	0x4a
1064                     	MVL	0xd9
1065                     	ADDC	(_sActual_Forecast + 6),0,0
1066                     	BTSS	_STATUS,4
1067                     	JMP	_00382_DS_
1068                     ;	;.line	645; ".\Source\App_Backlight.c"	Disable_Green;
1069                     	BCF	_TRISC2,0
1070                     ;	;.line	647; ".\Source\App_Backlight.c"	Disable_Red;
1071                     	BCF	_TRISC2,3
1072                     ;	;.line	649; ".\Source\App_Backlight.c"	Enable_Yellow;
1073                     	BSF	_TRISC2,1
1074                     	BCF	_PT2,2
1075                     	JMP	_00427_DS_
1076                     _00382_DS_:
1077                     ;	;.line	655; ".\Source\App_Backlight.c"	Disable_Yellow;
1078                     	BCF	_TRISC2,1
1079                     ;	;.line	657; ".\Source\App_Backlight.c"	Disable_Red;
1080                     	BCF	_TRISC2,3
1081                     ;	;.line	659; ".\Source\App_Backlight.c"	Enable_Green;
1082                     	BSF	_TRISC2,0
1083                     	BCF	_PT2,0
1084                     	JMP	_00427_DS_
1085                     _00393_DS_:
1086                     ;	;.line	666; ".\Source\App_Backlight.c"	Enable_Green;
1087                     	BSF	_TRISC2,0
1088                     	BCF	_PT2,0
1089                     ;	;.line	670; ".\Source\App_Backlight.c"	break;
1090                     	JMP	_00427_DS_
1091                     _00401_DS_:
1092                     ;	;.line	675; ".\Source\App_Backlight.c"	ADC_Disable();
1093                     	BCF	_AD1CN0,7
1094                     ;	;.line	677; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = TRUE;
1095                     	BSF	_sBacklight,1
1096                     ;	;.line	679; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
1097                     	BTSZ	_sTimeStamp,2
1098                     	JMP	_00423_DS_
1099                     ;	;.line	681; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
1100                     	BSF	_sTimeStamp,2
1101                     ;	;.line	682; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
1102                     	MVF	(_sTimeStamp + 2),0,0
1103                     	MVF	(_sTimeStamp + 14),1,0
1104                     	MVF	(_sTimeStamp + 3),0,0
1105                     	MVF	(_sTimeStamp + 15),1,0
1106                     	MVF	(_sTimeStamp + 4),0,0
1107                     	MVF	(_sTimeStamp + 16),1,0
1108                     	MVF	(_sTimeStamp + 5),0,0
1109                     	MVF	(_sTimeStamp + 17),1,0
1110                     ;	;.line	684; ".\Source\App_Backlight.c"	G320_Enable();
1111                     	BSF	_PT8,4
1112                     	JMP	_00427_DS_
1113                     _00423_DS_:
1114                     ;	;.line	691; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
1115                     	MVF	(_sTimeStamp + 14),0,0
1116                     	MVF	r0x10A4,1,0
1117                     	MVF	(_sTimeStamp + 15),0,0
1118                     	MVF	r0x10A5,1,0
1119                     	MVF	(_sTimeStamp + 16),0,0
1120                     	MVF	r0x10A6,1,0
1121                     	MVF	(_sTimeStamp + 17),0,0
1122                     	MVF	r0x10A7,1,0
1123                     	MVL	0x90
1124                     	MVF	_Timer_Experience_STK06,1,0
1125                     	MVL	0x01
1126                     	MVF	_Timer_Experience_STK05,1,0
1127                     	CLRF	_Timer_Experience_STK04,0
1128                     	CLRF	_Timer_Experience_STK03,0
1129                     	MVF	r0x10A4,0,0
1130                     	MVF	_Timer_Experience_STK02,1,0
1131                     	MVF	r0x10A5,0,0
1132                     	MVF	_Timer_Experience_STK01,1,0
1133                     	MVF	r0x10A6,0,0
1134                     	MVF	_Timer_Experience_STK00,1,0
1135                     	MVF	r0x10A7,0,0
1136                     	CALL	_Timer_Experience
1137                     ;	;.line	699; ".\Source\App_Backlight.c"	if(Result)
1138                     	IORL	0x00
1139                     	BTSZ	_STATUS,0
1140                     	JMP	_00420_DS_
1141                     ;	;.line	701; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
1142                     	CLRF	_eBacklight_Status,0
1143                     	JMP	_00427_DS_
1144                     _00420_DS_:
1145                     ;	;.line	705; ".\Source\App_Backlight.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
1146                     	MVF	(_sActual_Forecast + 3),0,0
1147                     	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
1148                     	MVF	(_sActual_Forecast + 4),0,0
1149                     	CALL	_Centigrade_Convert_Fahrenheit
1150                     	MVF	(_sActual_Forecast + 6),1,0
1151                     	MVF	STK00,0,0
1152                     	MVF	(_sActual_Forecast + 5),1,0
1153                     ;	;.line	707; ".\Source\App_Backlight.c"	if(eTempUnit == Centigrade)
1154                     	MVL	0x5a
1155                     	CPSE	_eTempUnit,0
1156                     	JMP	_00417_DS_
1157                     ;	;.line	710; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
1158                     	MVF	(_sActual_Forecast + 5),0,0
1159                     	ADDL	0x3c
1160                     	MVL	0xf1
1161                     	ADDC	(_sActual_Forecast + 6),0,0
1162                     	BTSS	_STATUS,4
1163                     	JMP	_00406_DS_
1164                     ;	;.line	712; ".\Source\App_Backlight.c"	Enable_Red;
1165                     	BSF	_TRISC2,3
1166                     	BCF	_PT2,3
1167                     	JMP	_00427_DS_
1168                     _00406_DS_:
1169                     ;	;.line	715; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Centigrade)
1170                     	MVF	(_sActual_Forecast + 5),0,0
1171                     	ADDL	0x6e
1172                     	MVL	0xf1
1173                     	ADDC	(_sActual_Forecast + 6),0,0
1174                     	BTSS	_STATUS,4
1175                     	JMP	_00403_DS_
1176                     ;	;.line	718; ".\Source\App_Backlight.c"	Enable_Yellow;
1177                     	BSF	_TRISC2,1
1178                     	BCF	_PT2,2
1179                     	JMP	_00427_DS_
1180                     _00403_DS_:
1181                     ;	;.line	724; ".\Source\App_Backlight.c"	Enable_Green;
1182                     	BSF	_TRISC2,0
1183                     	BCF	_PT2,0
1184                     	JMP	_00427_DS_
1185                     _00417_DS_:
1186                     ;	;.line	728; ".\Source\App_Backlight.c"	else if(eTempUnit == Fahrenheit)
1187                     	MVL	0xa5
1188                     	CPSE	_eTempUnit,0
1189                     	JMP	_00427_DS_
1190                     ;	;.line	731; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
1191                     	MVF	(_sActual_Forecast + 5),0,0
1192                     	ADDL	0xf0
1193                     	MVL	0xd8
1194                     	ADDC	(_sActual_Forecast + 6),0,0
1195                     	BTSS	_STATUS,4
1196                     	JMP	_00412_DS_
1197                     ;	;.line	733; ".\Source\App_Backlight.c"	Enable_Red;
1198                     	BSF	_TRISC2,3
1199                     	BCF	_PT2,3
1200                     	JMP	_00427_DS_
1201                     _00412_DS_:
1202                     ;	;.line	736; ".\Source\App_Backlight.c"	else if(sActual_Forecast.ConvertedTempDisp >= Warn_Temp_Fahrenheit)
1203                     	MVF	(_sActual_Forecast + 5),0,0
1204                     	ADDL	0x4a
1205                     	MVL	0xd9
1206                     	ADDC	(_sActual_Forecast + 6),0,0
1207                     	BTSS	_STATUS,4
1208                     	JMP	_00409_DS_
1209                     ;	;.line	739; ".\Source\App_Backlight.c"	Enable_Yellow;
1210                     	BSF	_TRISC2,1
1211                     	BCF	_PT2,2
1212                     	JMP	_00427_DS_
1213                     _00409_DS_:
1214                     ;	;.line	745; ".\Source\App_Backlight.c"	Enable_Green;
1215                     	BSF	_TRISC2,0
1216                     	BCF	_PT2,0
1217                     _00427_DS_:
1218                     ;	;.line	754; ".\Source\App_Backlight.c"	}
1219                     	RET	
1220                     ; exit point of _BackLight_TribleDrv
1221                     	.ENDFUNC	_BackLight_TribleDrv
1222                     ;--------------------------------------------------------
1223                     
1224                     .globl _BackLight_DoubleDrv
1225                     
1226                     ;--------------------------------------------------------
1227                     	.FUNC _BackLight_DoubleDrv:$r:0:0:$C:_Delay_ms:$C:_Timer_Experience:$C:_Centigrade_Convert_Fahrenheit\
1228                     :$L:r0x109B:$L:r0x109C:$L:r0x109D:$L:r0x109E
1229                     ;--------------------------------------------------------
1230                     ;	;.line	260; ".\Source\App_Backlight.c"	switch(eBacklight_Status)
1231                     _BackLight_DoubleDrv:	;Function start
1232                     	MVL	0x05
1233                     	CPSL	_eBacklight_Status,0
1234                     	JMP	_00224_DS_
1235                     	MVL	HIGHD2(_00352_DS_)
1236                     	MVF	_PCLATH,1,0
1237                     	MVF	_eBacklight_Status,0,0
1238                     	ADDL	D2(_00352_DS_)
1239                     	BTSZ	_STATUS,4
1240                     	INF	_PCLATH,1,0
1241                     	MVF	_PCLATL,1,0
1242                     _00352_DS_:
1243                     	RJ	_00169_DS_
1244                     	RJ	_00172_DS_
1245                     	RJ	_00183_DS_
1246                     	RJ	_00183_DS_
1247                     	RJ	_00204_DS_
1248                     _00169_DS_:
1249                     ;	;.line	265; ".\Source\App_Backlight.c"	Disable_Green;
1250                     	BCF	_TRISC2,0
1251                     ;	;.line	267; ".\Source\App_Backlight.c"	Disable_Red;
1252                     	BCF	_TRISC2,3
1253                     ;	;.line	269; ".\Source\App_Backlight.c"	G320_Disable();
1254                     	BCF	_PT8,4
1255                     ;	;.line	270; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
1256                     	BCF	_sTimeStamp,2
1257                     ;	;.line	272; ".\Source\App_Backlight.c"	if(sBacklight.MeasuredTempLighting)
1258                     	BTSS	_sBacklight,1
1259                     	JMP	_00224_DS_
1260                     ;	;.line	274; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = FALSE;
1261                     	BCF	_sBacklight,1
1262                     ;	;.line	276; ".\Source\App_Backlight.c"	ADC_Enable();
1263                     	BSF	_AD1CN0,7
1264                     ;	;.line	278; ".\Source\App_Backlight.c"	ADC_CMFREnable();
1265                     	BSF	_AD1CN0,0
1266                     ;	;.line	282; ".\Source\App_Backlight.c"	ADC_OSRSelect(OSR_2048);
1267                     	MVF	_AD1CN0,0,0
1268                     	ANDL	0xe1
1269                     	IORL	0x08
1270                     	MVF	_AD1CN0,1,0
1271                     ;	;.line	284; ".\Source\App_Backlight.c"	sADC.ADCCounts = 0;
1272                     	CLRF	(_sADC + 2),0
1273                     ;	;.line	286; ".\Source\App_Backlight.c"	Delay_ms(10);
1274                     	MVL	0x0a
1275                     	CALL	_Delay_ms
1276                     ;	;.line	288; ".\Source\App_Backlight.c"	break;
1277                     	JMP	_00224_DS_
1278                     _00172_DS_:
1279                     ;	;.line	292; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
1280                     	BTSZ	_sTimeStamp,2
1281                     	JMP	_00180_DS_
1282                     ;	;.line	294; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
1283                     	BSF	_sTimeStamp,2
1284                     ;	;.line	295; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
1285                     	MVF	(_sTimeStamp + 2),0,0
1286                     	MVF	(_sTimeStamp + 14),1,0
1287                     	MVF	(_sTimeStamp + 3),0,0
1288                     	MVF	(_sTimeStamp + 15),1,0
1289                     	MVF	(_sTimeStamp + 4),0,0
1290                     	MVF	(_sTimeStamp + 16),1,0
1291                     	MVF	(_sTimeStamp + 5),0,0
1292                     	MVF	(_sTimeStamp + 17),1,0
1293                     ;	;.line	297; ".\Source\App_Backlight.c"	G320_Enable();
1294                     	BSF	_PT8,4
1295                     	JMP	_00224_DS_
1296                     _00180_DS_:
1297                     ;	;.line	302; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,40);
1298                     	MVF	(_sTimeStamp + 14),0,0
1299                     	MVF	r0x109B,1,0
1300                     	MVF	(_sTimeStamp + 15),0,0
1301                     	MVF	r0x109C,1,0
1302                     	MVF	(_sTimeStamp + 16),0,0
1303                     	MVF	r0x109D,1,0
1304                     	MVF	(_sTimeStamp + 17),0,0
1305                     	MVF	r0x109E,1,0
1306                     	MVL	0x28
1307                     	MVF	_Timer_Experience_STK06,1,0
1308                     	CLRF	_Timer_Experience_STK05,0
1309                     	CLRF	_Timer_Experience_STK04,0
1310                     	CLRF	_Timer_Experience_STK03,0
1311                     	MVF	r0x109B,0,0
1312                     	MVF	_Timer_Experience_STK02,1,0
1313                     	MVF	r0x109C,0,0
1314                     	MVF	_Timer_Experience_STK01,1,0
1315                     	MVF	r0x109D,0,0
1316                     	MVF	_Timer_Experience_STK00,1,0
1317                     	MVF	r0x109E,0,0
1318                     	CALL	_Timer_Experience
1319                     ;	;.line	304; ".\Source\App_Backlight.c"	if(Result)
1320                     	IORL	0x00
1321                     	BTSZ	_STATUS,0
1322                     	JMP	_00177_DS_
1323                     ;	;.line	307; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
1324                     	MVF	(_sTimeStamp + 14),0,0
1325                     	MVF	r0x109B,1,0
1326                     	MVF	(_sTimeStamp + 15),0,0
1327                     	MVF	r0x109C,1,0
1328                     	MVF	(_sTimeStamp + 16),0,0
1329                     	MVF	r0x109D,1,0
1330                     	MVF	(_sTimeStamp + 17),0,0
1331                     	MVF	r0x109E,1,0
1332                     	MVL	0x50
1333                     	MVF	_Timer_Experience_STK06,1,0
1334                     	CLRF	_Timer_Experience_STK05,0
1335                     	CLRF	_Timer_Experience_STK04,0
1336                     	CLRF	_Timer_Experience_STK03,0
1337                     	MVF	r0x109B,0,0
1338                     	MVF	_Timer_Experience_STK02,1,0
1339                     	MVF	r0x109C,0,0
1340                     	MVF	_Timer_Experience_STK01,1,0
1341                     	MVF	r0x109D,0,0
1342                     	MVF	_Timer_Experience_STK00,1,0
1343                     	MVF	r0x109E,0,0
1344                     	CALL	_Timer_Experience
1345                     ;	;.line	308; ".\Source\App_Backlight.c"	if(Result)
1346                     	IORL	0x00
1347                     	BTSZ	_STATUS,0
1348                     	JMP	_00174_DS_
1349                     ;	;.line	310; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
1350                     	CLRF	_eBacklight_Status,0
1351                     	JMP	_00224_DS_
1352                     _00174_DS_:
1353                     ;	;.line	315; ".\Source\App_Backlight.c"	Disable_Green;
1354                     	BCF	_TRISC2,0
1355                     ;	;.line	317; ".\Source\App_Backlight.c"	Enable_Red;
1356                     	BSF	_TRISC2,3
1357                     	BCF	_PT2,3
1358                     	JMP	_00224_DS_
1359                     _00177_DS_:
1360                     ;	;.line	323; ".\Source\App_Backlight.c"	Enable_Green;
1361                     	BSF	_TRISC2,0
1362                     	BCF	_PT2,0
1363                     ;	;.line	326; ".\Source\App_Backlight.c"	break;
1364                     	JMP	_00224_DS_
1365                     _00183_DS_:
1366                     ;	;.line	332; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
1367                     	BTSZ	_sTimeStamp,2
1368                     	JMP	_00202_DS_
1369                     ;	;.line	334; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
1370                     	BSF	_sTimeStamp,2
1371                     ;	;.line	335; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
1372                     	MVF	(_sTimeStamp + 2),0,0
1373                     	MVF	(_sTimeStamp + 14),1,0
1374                     	MVF	(_sTimeStamp + 3),0,0
1375                     	MVF	(_sTimeStamp + 15),1,0
1376                     	MVF	(_sTimeStamp + 4),0,0
1377                     	MVF	(_sTimeStamp + 16),1,0
1378                     	MVF	(_sTimeStamp + 5),0,0
1379                     	MVF	(_sTimeStamp + 17),1,0
1380                     ;	;.line	337; ".\Source\App_Backlight.c"	G320_Enable();
1381                     	BSF	_PT8,4
1382                     	JMP	_00224_DS_
1383                     _00202_DS_:
1384                     ;	;.line	342; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
1385                     	MVF	(_sTimeStamp + 14),0,0
1386                     	MVF	r0x109B,1,0
1387                     	MVF	(_sTimeStamp + 15),0,0
1388                     	MVF	r0x109C,1,0
1389                     	MVF	(_sTimeStamp + 16),0,0
1390                     	MVF	r0x109D,1,0
1391                     	MVF	(_sTimeStamp + 17),0,0
1392                     	MVF	r0x109E,1,0
1393                     	MVL	0x50
1394                     	MVF	_Timer_Experience_STK06,1,0
1395                     	CLRF	_Timer_Experience_STK05,0
1396                     	CLRF	_Timer_Experience_STK04,0
1397                     	CLRF	_Timer_Experience_STK03,0
1398                     	MVF	r0x109B,0,0
1399                     	MVF	_Timer_Experience_STK02,1,0
1400                     	MVF	r0x109C,0,0
1401                     	MVF	_Timer_Experience_STK01,1,0
1402                     	MVF	r0x109D,0,0
1403                     	MVF	_Timer_Experience_STK00,1,0
1404                     	MVF	r0x109E,0,0
1405                     	CALL	_Timer_Experience
1406                     ;	;.line	344; ".\Source\App_Backlight.c"	if(Result)
1407                     	IORL	0x00
1408                     	BTSZ	_STATUS,0
1409                     	JMP	_00199_DS_
1410                     ;	;.line	346; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
1411                     	CLRF	_eBacklight_Status,0
1412                     	JMP	_00224_DS_
1413                     _00199_DS_:
1414                     ;	;.line	350; ".\Source\App_Backlight.c"	if(eBacklight_Status == MemTemp_Backlight)
1415                     	MVL	0x02
1416                     	CPSE	_eBacklight_Status,0
1417                     	JMP	_00196_DS_
1418                     ;	;.line	352; ".\Source\App_Backlight.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
1419                     	MVF	(_sMemoryFlag + 2),0,0
1420                     	MULL	0x02
1421                     	LDPR	(_sMemory + 3),0
1422                     	MVF	_PRODL,0,0
1423                     	MVFF	_PLUSW0,STK00
1424                     	INF	_WREG,0,0
1425                     	MVFF	_PLUSW0,STK01
1426                     	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
1427                     	MVF	STK01,0,0
1428                     	CALL	_Centigrade_Convert_Fahrenheit
1429                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1430                     	MVF	(_sActual_Forecast + 6),1,0
1431                     	MVF	STK00,0,0
1432                     	MVF	(_sActual_Forecast + 5),1,0
1433                     ;	;.line	354; ".\Source\App_Backlight.c"	if(eTempUnit == Centigrade)
1434                     	MVL	0x5a
1435                     	CPSE	_eTempUnit,0
1436                     	JMP	_00193_DS_
1437                     ;	;.line	357; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
1438                     	MVF	(_sActual_Forecast + 5),0,0
1439                     	ADDL	0x3c
1440                     	MVL	0xf1
1441                     	ADDC	(_sActual_Forecast + 6),0,0
1442                     	BTSS	_STATUS,4
1443                     	JMP	_00185_DS_
1444                     ;	;.line	360; ".\Source\App_Backlight.c"	Disable_Green;
1445                     	BCF	_TRISC2,0
1446                     ;	;.line	362; ".\Source\App_Backlight.c"	Enable_Red;
1447                     	BSF	_TRISC2,3
1448                     	BCF	_PT2,3
1449                     	JMP	_00224_DS_
1450                     _00185_DS_:
1451                     ;	;.line	368; ".\Source\App_Backlight.c"	Disable_Red;
1452                     	BCF	_TRISC2,3
1453                     ;	;.line	370; ".\Source\App_Backlight.c"	Enable_Green;
1454                     	BSF	_TRISC2,0
1455                     	BCF	_PT2,0
1456                     	JMP	_00224_DS_
1457                     _00193_DS_:
1458                     ;	;.line	374; ".\Source\App_Backlight.c"	else if(eTempUnit == Fahrenheit)
1459                     	MVL	0xa5
1460                     	CPSE	_eTempUnit,0
1461                     	JMP	_00224_DS_
1462                     ;	;.line	377; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
1463                     	MVF	(_sActual_Forecast + 5),0,0
1464                     	ADDL	0xf0
1465                     	MVL	0xd8
1466                     	ADDC	(_sActual_Forecast + 6),0,0
1467                     	BTSS	_STATUS,4
1468                     	JMP	_00188_DS_
1469                     ;	;.line	380; ".\Source\App_Backlight.c"	Disable_Green;
1470                     	BCF	_TRISC2,0
1471                     ;	;.line	382; ".\Source\App_Backlight.c"	Enable_Red;
1472                     	BSF	_TRISC2,3
1473                     	BCF	_PT2,3
1474                     	JMP	_00224_DS_
1475                     _00188_DS_:
1476                     ;	;.line	388; ".\Source\App_Backlight.c"	Disable_Red;
1477                     	BCF	_TRISC2,3
1478                     ;	;.line	390; ".\Source\App_Backlight.c"	Enable_Green;
1479                     	BSF	_TRISC2,0
1480                     	BCF	_PT2,0
1481                     	JMP	_00224_DS_
1482                     _00196_DS_:
1483                     ;	;.line	397; ".\Source\App_Backlight.c"	Enable_Green;
1484                     	BSF	_TRISC2,0
1485                     	BCF	_PT2,0
1486                     ;	;.line	401; ".\Source\App_Backlight.c"	break;
1487                     	JMP	_00224_DS_
1488                     _00204_DS_:
1489                     ;	;.line	406; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = TRUE;
1490                     	BSF	_sBacklight,1
1491                     ;	;.line	408; ".\Source\App_Backlight.c"	ADC_Disable();
1492                     	BCF	_AD1CN0,7
1493                     ;	;.line	410; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
1494                     	BTSZ	_sTimeStamp,2
1495                     	JMP	_00220_DS_
1496                     ;	;.line	412; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
1497                     	BSF	_sTimeStamp,2
1498                     ;	;.line	413; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
1499                     	MVF	(_sTimeStamp + 2),0,0
1500                     	MVF	(_sTimeStamp + 14),1,0
1501                     	MVF	(_sTimeStamp + 3),0,0
1502                     	MVF	(_sTimeStamp + 15),1,0
1503                     	MVF	(_sTimeStamp + 4),0,0
1504                     	MVF	(_sTimeStamp + 16),1,0
1505                     	MVF	(_sTimeStamp + 5),0,0
1506                     	MVF	(_sTimeStamp + 17),1,0
1507                     ;	;.line	415; ".\Source\App_Backlight.c"	G320_Enable();
1508                     	BSF	_PT8,4
1509                     	JMP	_00224_DS_
1510                     _00220_DS_:
1511                     ;	;.line	422; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
1512                     	MVF	(_sTimeStamp + 14),0,0
1513                     	MVF	r0x109B,1,0
1514                     	MVF	(_sTimeStamp + 15),0,0
1515                     	MVF	r0x109C,1,0
1516                     	MVF	(_sTimeStamp + 16),0,0
1517                     	MVF	r0x109D,1,0
1518                     	MVF	(_sTimeStamp + 17),0,0
1519                     	MVF	r0x109E,1,0
1520                     	MVL	0x90
1521                     	MVF	_Timer_Experience_STK06,1,0
1522                     	MVL	0x01
1523                     	MVF	_Timer_Experience_STK05,1,0
1524                     	CLRF	_Timer_Experience_STK04,0
1525                     	CLRF	_Timer_Experience_STK03,0
1526                     	MVF	r0x109B,0,0
1527                     	MVF	_Timer_Experience_STK02,1,0
1528                     	MVF	r0x109C,0,0
1529                     	MVF	_Timer_Experience_STK01,1,0
1530                     	MVF	r0x109D,0,0
1531                     	MVF	_Timer_Experience_STK00,1,0
1532                     	MVF	r0x109E,0,0
1533                     	CALL	_Timer_Experience
1534                     ;	;.line	430; ".\Source\App_Backlight.c"	if(Result)
1535                     	IORL	0x00
1536                     	BTSZ	_STATUS,0
1537                     	JMP	_00217_DS_
1538                     ;	;.line	432; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
1539                     	CLRF	_eBacklight_Status,0
1540                     	JMP	_00224_DS_
1541                     _00217_DS_:
1542                     ;	;.line	436; ".\Source\App_Backlight.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
1543                     	MVF	(_sActual_Forecast + 3),0,0
1544                     	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
1545                     	MVF	(_sActual_Forecast + 4),0,0
1546                     	CALL	_Centigrade_Convert_Fahrenheit
1547                     	MVF	(_sActual_Forecast + 6),1,0
1548                     	MVF	STK00,0,0
1549                     	MVF	(_sActual_Forecast + 5),1,0
1550                     ;	;.line	438; ".\Source\App_Backlight.c"	if(eTempUnit == Centigrade)
1551                     	MVL	0x5a
1552                     	CPSE	_eTempUnit,0
1553                     	JMP	_00214_DS_
1554                     ;	;.line	441; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade)
1555                     	MVF	(_sActual_Forecast + 5),0,0
1556                     	ADDL	0x3c
1557                     	MVL	0xf1
1558                     	ADDC	(_sActual_Forecast + 6),0,0
1559                     	BTSS	_STATUS,4
1560                     	JMP	_00206_DS_
1561                     ;	;.line	444; ".\Source\App_Backlight.c"	Enable_Red;
1562                     	BSF	_TRISC2,3
1563                     	BCF	_PT2,3
1564                     	JMP	_00224_DS_
1565                     _00206_DS_:
1566                     ;	;.line	450; ".\Source\App_Backlight.c"	Enable_Green;
1567                     	BSF	_TRISC2,0
1568                     	BCF	_PT2,0
1569                     	JMP	_00224_DS_
1570                     _00214_DS_:
1571                     ;	;.line	454; ".\Source\App_Backlight.c"	else if(eTempUnit == Fahrenheit)
1572                     	MVL	0xa5
1573                     	CPSE	_eTempUnit,0
1574                     	JMP	_00224_DS_
1575                     ;	;.line	457; ".\Source\App_Backlight.c"	if(sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit)
1576                     	MVF	(_sActual_Forecast + 5),0,0
1577                     	ADDL	0xf0
1578                     	MVL	0xd8
1579                     	ADDC	(_sActual_Forecast + 6),0,0
1580                     	BTSS	_STATUS,4
1581                     	JMP	_00209_DS_
1582                     ;	;.line	460; ".\Source\App_Backlight.c"	Enable_Red;
1583                     	BSF	_TRISC2,3
1584                     	BCF	_PT2,3
1585                     	JMP	_00224_DS_
1586                     _00209_DS_:
1587                     ;	;.line	466; ".\Source\App_Backlight.c"	Enable_Green;
1588                     	BSF	_TRISC2,0
1589                     	BCF	_PT2,0
1590                     _00224_DS_:
1591                     ;	;.line	475; ".\Source\App_Backlight.c"	}
1592                     	RET	
1593                     ; exit point of _BackLight_DoubleDrv
1594                     	.ENDFUNC	_BackLight_DoubleDrv
1595                     ;--------------------------------------------------------
1596                     
1597                     .globl _BackLight_SingleDrv
1598                     
1599                     ;--------------------------------------------------------
1600                     	.FUNC _BackLight_SingleDrv:$r:0:0:$C:_Delay_ms:$C:_Timer_Experience\
1601                     :$L:r0x108D:$L:r0x108E:$L:r0x108F:$L:r0x1090
1602                     ;--------------------------------------------------------
1603                     ;	;.line	25; ".\Source\App_Backlight.c"	switch(eBacklight_Status)
1604                     _BackLight_SingleDrv:	;Function start
1605                     	MVL	0x05
1606                     	CPSL	_eBacklight_Status,0
1607                     	JMP	_00126_DS_
1608                     	MVL	HIGHD2(_00164_DS_)
1609                     	MVF	_PCLATH,1,0
1610                     	MVF	_eBacklight_Status,0,0
1611                     	ADDL	D2(_00164_DS_)
1612                     	BTSZ	_STATUS,4
1613                     	INF	_PCLATH,1,0
1614                     	MVF	_PCLATL,1,0
1615                     _00164_DS_:
1616                     	RJ	_00105_DS_
1617                     	RJ	_00110_DS_
1618                     	RJ	_00110_DS_
1619                     	RJ	_00110_DS_
1620                     	RJ	_00117_DS_
1621                     _00105_DS_:
1622                     ;	;.line	31; ".\Source\App_Backlight.c"	Disable_Red;
1623                     	BCF	_TRISC2,3
1624                     ;	;.line	33; ".\Source\App_Backlight.c"	G320_Disable();
1625                     	BCF	_PT8,4
1626                     ;	;.line	34; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
1627                     	BCF	_sTimeStamp,2
1628                     ;	;.line	36; ".\Source\App_Backlight.c"	if(sBacklight.MeasuredTempLighting)
1629                     	BTSS	_sBacklight,1
1630                     	JMP	_00126_DS_
1631                     ;	;.line	38; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = FALSE;
1632                     	BCF	_sBacklight,1
1633                     ;	;.line	40; ".\Source\App_Backlight.c"	ADC_Enable();
1634                     	BSF	_AD1CN0,7
1635                     ;	;.line	42; ".\Source\App_Backlight.c"	ADC_CMFREnable();
1636                     	BSF	_AD1CN0,0
1637                     ;	;.line	46; ".\Source\App_Backlight.c"	ADC_OSRSelect(OSR_2048);
1638                     	MVF	_AD1CN0,0,0
1639                     	ANDL	0xe1
1640                     	IORL	0x08
1641                     	MVF	_AD1CN0,1,0
1642                     ;	;.line	48; ".\Source\App_Backlight.c"	sADC.ADCCounts = 0;
1643                     	CLRF	(_sADC + 2),0
1644                     ;	;.line	50; ".\Source\App_Backlight.c"	Delay_ms(10);
1645                     	MVL	0x0a
1646                     	CALL	_Delay_ms
1647                     	.CHKPARA _Delay_ms 1
1648                     ;	;.line	52; ".\Source\App_Backlight.c"	break;
1649                     	JMP	_00126_DS_
1650                     _00110_DS_:
1651                     ;	;.line	118; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
1652                     	BTSZ	_sTimeStamp,2
1653                     	JMP	_00115_DS_
1654                     ;	;.line	120; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
1655                     	BSF	_sTimeStamp,2
1656                     ;	;.line	121; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
1657                     	MVF	(_sTimeStamp + 2),0,0
1658                     	MVF	(_sTimeStamp + 14),1,0
1659                     	MVF	(_sTimeStamp + 3),0,0
1660                     	MVF	(_sTimeStamp + 15),1,0
1661                     	MVF	(_sTimeStamp + 4),0,0
1662                     	MVF	(_sTimeStamp + 16),1,0
1663                     	MVF	(_sTimeStamp + 5),0,0
1664                     	MVF	(_sTimeStamp + 17),1,0
1665                     ;	;.line	123; ".\Source\App_Backlight.c"	G320_Enable();
1666                     	BSF	_PT8,4
1667                     	JMP	_00126_DS_
1668                     _00115_DS_:
1669                     ;	;.line	128; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,80);
1670                     	MVF	(_sTimeStamp + 14),0,0
1671                     	MVF	r0x108D,1,0
1672                     	MVF	(_sTimeStamp + 15),0,0
1673                     	MVF	r0x108E,1,0
1674                     	MVF	(_sTimeStamp + 16),0,0
1675                     	MVF	r0x108F,1,0
1676                     	MVF	(_sTimeStamp + 17),0,0
1677                     	MVF	r0x1090,1,0
1678                     	MVL	0x50
1679                     	MVF	_Timer_Experience_STK06,1,0
1680                     	CLRF	_Timer_Experience_STK05,0
1681                     	CLRF	_Timer_Experience_STK04,0
1682                     	CLRF	_Timer_Experience_STK03,0
1683                     	MVF	r0x108D,0,0
1684                     	MVF	_Timer_Experience_STK02,1,0
1685                     	MVF	r0x108E,0,0
1686                     	MVF	_Timer_Experience_STK01,1,0
1687                     	MVF	r0x108F,0,0
1688                     	MVF	_Timer_Experience_STK00,1,0
1689                     	MVF	r0x1090,0,0
1690                     	CALL	_Timer_Experience
1691                     	.CHKPARA _Timer_Experience 8
1692                     ;	;.line	130; ".\Source\App_Backlight.c"	if(Result)
1693                     	IORL	0x00
1694                     	BTSZ	_STATUS,0
1695                     	JMP	_00112_DS_
1696                     ;	;.line	132; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
1697                     	CLRF	_eBacklight_Status,0
1698                     	JMP	_00126_DS_
1699                     _00112_DS_:
1700                     ;	;.line	138; ".\Source\App_Backlight.c"	Enable_Red;
1701                     	BSF	_TRISC2,3
1702                     	BCF	_PT2,3
1703                     ;	;.line	142; ".\Source\App_Backlight.c"	break;
1704                     	JMP	_00126_DS_
1705                     _00117_DS_:
1706                     ;	;.line	209; ".\Source\App_Backlight.c"	sBacklight.MeasuredTempLighting = TRUE;
1707                     	BSF	_sBacklight,1
1708                     ;	;.line	211; ".\Source\App_Backlight.c"	ADC_Disable();
1709                     	BCF	_AD1CN0,7
1710                     ;	;.line	213; ".\Source\App_Backlight.c"	if(!sTimeStamp.Get_Backlight_Start_Time_Flag)
1711                     	BTSZ	_sTimeStamp,2
1712                     	JMP	_00122_DS_
1713                     ;	;.line	215; ".\Source\App_Backlight.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = TRUE;
1714                     	BSF	_sTimeStamp,2
1715                     ;	;.line	216; ".\Source\App_Backlight.c"	sTimeStamp.Backlight_Timer = sTimeStamp.Timer_Journey;
1716                     	MVF	(_sTimeStamp + 2),0,0
1717                     	MVF	(_sTimeStamp + 14),1,0
1718                     	MVF	(_sTimeStamp + 3),0,0
1719                     	MVF	(_sTimeStamp + 15),1,0
1720                     	MVF	(_sTimeStamp + 4),0,0
1721                     	MVF	(_sTimeStamp + 16),1,0
1722                     	MVF	(_sTimeStamp + 5),0,0
1723                     	MVF	(_sTimeStamp + 17),1,0
1724                     ;	;.line	218; ".\Source\App_Backlight.c"	G320_Enable();
1725                     	BSF	_PT8,4
1726                     	JMP	_00126_DS_
1727                     _00122_DS_:
1728                     ;	;.line	225; ".\Source\App_Backlight.c"	Result = Timer_Experience(sTimeStamp.Backlight_Timer,400);
1729                     	MVF	(_sTimeStamp + 14),0,0
1730                     	MVF	r0x108D,1,0
1731                     	MVF	(_sTimeStamp + 15),0,0
1732                     	MVF	r0x108E,1,0
1733                     	MVF	(_sTimeStamp + 16),0,0
1734                     	MVF	r0x108F,1,0
1735                     	MVF	(_sTimeStamp + 17),0,0
1736                     	MVF	r0x1090,1,0
1737                     	MVL	0x90
1738                     	MVF	_Timer_Experience_STK06,1,0
1739                     	MVL	0x01
1740                     	MVF	_Timer_Experience_STK05,1,0
1741                     	CLRF	_Timer_Experience_STK04,0
1742                     	CLRF	_Timer_Experience_STK03,0
1743                     	MVF	r0x108D,0,0
1744                     	MVF	_Timer_Experience_STK02,1,0
1745                     	MVF	r0x108E,0,0
1746                     	MVF	_Timer_Experience_STK01,1,0
1747                     	MVF	r0x108F,0,0
1748                     	MVF	_Timer_Experience_STK00,1,0
1749                     	MVF	r0x1090,0,0
1750                     	CALL	_Timer_Experience
1751                     ;	;.line	233; ".\Source\App_Backlight.c"	if(Result)
1752                     	IORL	0x00
1753                     	BTSZ	_STATUS,0
1754                     	JMP	_00119_DS_
1755                     ;	;.line	235; ".\Source\App_Backlight.c"	eBacklight_Status = No_Backlight;
1756                     	CLRF	_eBacklight_Status,0
1757                     	JMP	_00126_DS_
1758                     _00119_DS_:
1759                     ;	;.line	241; ".\Source\App_Backlight.c"	Enable_Red;
1760                     	BSF	_TRISC2,3
1761                     	BCF	_PT2,3
1762                     _00126_DS_:
1763                     ;	;.line	249; ".\Source\App_Backlight.c"	}
1764                     	RET	
1765                     ; exit point of _BackLight_SingleDrv
1766                     	.ENDFUNC	_BackLight_SingleDrv
1767                     ;--------------------------------------------------------
1768                     
1769                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
1770                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
1771                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
1772                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
1773                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
1774                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
1775                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
1776                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
1777                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
1778                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
1779                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
1780                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
1781                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
1782                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
1783                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
1784                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
1785                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
1786                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
1787                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
1788                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
1789                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
1790                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
1791                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
1792                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
1793                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Backlight$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
1794                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Backlight$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
1795                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Backlight$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
1796                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
1797                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
1798                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
1799                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
1800                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
1801                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
1802                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
1803                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
1804                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
1805                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
1806                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
1807                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
1808                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
1809                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
1810                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
1811                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
1812                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
1813                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
1814                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
1815                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
1816                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
1817                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
1818                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
1819                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
1820                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
1821                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
1822                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
1823                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
1824                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
1825                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
1826                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
1827                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
1828                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
1829                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
1830                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
1831                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
1832                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
1833                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
1834                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
1835                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
1836                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
1837                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
1838                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
1839                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
1840                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
1841                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
1842                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
1843                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
1844                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
1845                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
1846                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
1847                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
1848                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
1849                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
1850                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
1851                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
1852                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
1853                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
1854                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
1855                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
1856                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
1857                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
1858                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
1859                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
1860                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
1861                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
1862                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
1863                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
1864                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
1865                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
1866                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
1867                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
1868                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
1869                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
1870                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
1871                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
1872                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
1873                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
1874                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
1875                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
1876                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
1877                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
1878                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
1879                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
1880                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
1881                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
1882                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
1883                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
1884                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
1885                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
1886                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
1887                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
1888                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
1889                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
1890                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
1891                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
1892                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
1893                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
1894                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
1895                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
1896                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
1897                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
1898                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
1899                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
1900                     	;--cdb--S:G$BackLight_SingleDrv$0$0({2}DF,SV:S),C,0,0
1901                     	;--cdb--S:G$BackLight_DoubleDrv$0$0({2}DF,SV:S),C,0,0
1902                     	;--cdb--S:G$BackLight_TribleDrv$0$0({2}DF,SV:S),C,0,0
1903                     	;--cdb--S:G$BackLight_QuadrupleDrv$0$0({2}DF,SV:S),C,0,0
1904                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
1905                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
1906                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
1907                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
1908                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
1909                     	;--cdb--S:LApp_Backlight.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
1910                     	;--cdb--S:LApp_Backlight.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
1911                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Backlight$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
1912                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
1913                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Backlight$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1914                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Backlight$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
1915                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Backlight$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1916                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
1917                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Backlight$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1918                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
1919                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
1920                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
1921                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
1922                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
1923                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
1924                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Backlight$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
1925                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Backlight$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1926                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
1927                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Backlight$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
1928                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
1929                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
1930                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
1931                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
1932                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Backlight$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
1933                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
1934                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
1935                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
1936                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
1937                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Backlight$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
1938                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Backlight$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
1939                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Backlight$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1940                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Backlight$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1941                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Backlight$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
1942                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
1943                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Backlight$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1944                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
1945                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
1946                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Backlight$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
1947                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
1948                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Backlight$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
1949                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
1950                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
1951                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
1952                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
1953                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
1954                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
1955                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
1956                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
1957                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
1958                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
1959                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
1960                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
1961                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
1962                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
1963                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
1964                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
1965                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
1966                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
1967                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
1968                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
1969                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
1970                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
1971                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
1972                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
1973                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
1974                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
1975                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
1976                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
1977                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
1978                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
1979                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
1980                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
1981                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
1982                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
1983                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
1984                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
1985                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
1986                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
1987                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
1988                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
1989                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
1990                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
1991                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
1992                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
1993                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
1994                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
1995                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
1996                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
1997                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
1998                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
1999                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
2000                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
2001                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
2002                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
2003                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
2004                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
2005                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
2006                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
2007                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
2008                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
2009                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
2010                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
2011                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
2012                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
2013                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
2014                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
2015                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
2016                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
2017                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
2018                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
2019                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
2020                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
2021                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
2022                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
2023                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
2024                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
2025                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
2026                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
2027                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
2028                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
2029                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
2030                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
2031                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
2032                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
2033                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
2034                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
2035                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
2036                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
2037                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
2038                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
2039                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
2040                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
2041                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
2042                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
2043                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
2044                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
2045                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
2046                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
2047                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
2048                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
2049                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
2050                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
2051                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
2052                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
2053                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
2054                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
2055                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
2056                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
2057                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
2058                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
2059                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
2060                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
2061                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
2062                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
2063                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
2064                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
2065                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
2066                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
2067                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
2068                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
2069                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
2070                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
2071                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
2072                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
2073                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
2074                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
2075                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
2076                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
2077                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
2078                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
2079                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
2080                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
2081                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
2082                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
2083                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
2084                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
2085                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
2086                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
2087                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
2088                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
2089                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
2090                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
2091                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
2092                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
2093                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
2094                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
2095                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
2096                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
2097                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
2098                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
2099                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
2100                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
2101                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
2102                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
2103                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
2104                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
2105                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
2106                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
2107                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
2108                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
2109                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
2110                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
2111                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
2112                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
2113                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
2114                     	;--cdb--S:LApp_Backlight.BackLight_SingleDrv._BackLight_SingleDrv_Result_10000_418$Result$2710$418({1}SC:U),R,0,0,[r0x108D]
2115                     	;--cdb--S:LApp_Backlight.BackLight_DoubleDrv._BackLight_DoubleDrv_Result_10000_441$Result$2710$441({1}SC:U),R,0,0,[r0x109B]
2116                     	;--cdb--S:LApp_Backlight.BackLight_TribleDrv._BackLight_TribleDrv_Result_10000_506$Result$2710$506({1}SC:U),R,0,0,[r0x10A4]
2117                     	;--cdb--S:LApp_Backlight.BackLight_QuadrupleDrv._BackLight_QuadrupleDrv_Result_10000_587$Result$2710$587({1}SC:U),R,0,0,[r0x10A8]
2118                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
2119                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
2120                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
2121                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
2122                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
2123                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
2124                     ;--------------------------------------------------------
2125                     ; external declarations
2126                     ;--------------------------------------------------------
2127                     	.globl	_Delay_ms
2128                     	.globl	_Timer_Experience
2129                     	.globl	_Centigrade_Convert_Fahrenheit
2130                     	.globl	_FSR0
2131                     	.globl	_FSR1
2132                     	.globl	_FSR2
2133                     	.globl	_ADCR
2134                     	.globl	_sIIC
2135                     	.globl	_BIE_Available_Addr
2136                     	.globl	_sTIMx
2137                     	.globl	_sUARTx
2138                     	.globl	_sAutoBps
2139                     	.globl	_eAutoBps_Status
2140                     	.globl	_sTest
2141                     	.globl	_eTempUnit
2142                     	.globl	_eBondingTempUnit
2143                     	.globl	_eVersionCode
2144                     	.globl	_eMeasureMode
2145                     	.globl	_eBinding_Status
2146                     	.globl	_Enter_PrepareSleep_Flag
2147                     	.globl	_sButton
2148                     	.globl	_sTimeStamp
2149                     	.globl	_eButton_Status
2150                     	.globl	_sLVD
2151                     	.globl	_UnitExchangeCompleted
2152                     	.globl	_ERR
2153                     	.globl	_eErr
2154                     	.globl	_eDisplay_Interfaces
2155                     	.globl	_sADC
2156                     	.globl	_eADCChannel
2157                     	.globl	_eSystem_Mode
2158                     	.globl	_eBuzzer_Status
2159                     	.globl	_Flag_No_Buzzer
2160                     	.globl	_sMemory
2161                     	.globl	_sMemoryFlag
2162                     	.globl	_sActual
2163                     	.globl	_sForecast
2164                     	.globl	_sTempCal
2165                     	.globl	_eMeas_Status
2166                     	.globl	_sActual_Forecast
2167                     	.globl	_eTo_Actual_Ways
2168                     	.globl	_eBle_Sta
2169                     	.globl	_sBleStatus
2170                     	.globl	_NUM_CODE
2171                     	.globl	_R_Table
2172                     	.globl	_CloseTable
2173                     
2174                     	.globl STK07
2175                     	.globl STK07_SAVE
2176                     	.globl STK06
2177                     	.globl STK06_SAVE
2178                     	.globl STK05
2179                     	.globl STK05_SAVE
2180                     	.globl STK04
2181                     	.globl STK04_SAVE
2182                     	.globl STK03
2183                     	.globl STK03_SAVE
2184                     	.globl STK02
2185                     	.globl STK02_SAVE
2186                     	.globl STK01
2187                     	.globl STK01_SAVE
2188                     	.globl STK00
2189                     	.globl STK00_SAVE
2190                     ;--------------------------------------------------------
2191                     ; global -1 declarations
2192                     ;--------------------------------------------------------
2193                     	.globl	_eBacklight_Status
2194                     	.globl	_sBacklight
2195                     
2196                     	.globl	_memcpy
2197                     ;--------------------------------------------------------
2198                     ; global -2 definitions
2199                     ;--------------------------------------------------------
2200                     	.area DSEG(DATA)
2201 012B --             _eBacklight_Status:	.ds	1
2202                     
2203                     	.area DSEG(DATA)
2204 012C --             _sBacklight:	.ds	1
2205                     
2206                     	.area DSEG(DATA)
2207                     __SWTGTID	.equ	0xA6A6B2CF
2208                     
2209                     	.area DSEG(DATA)
2210                     _INDF0	.equ	0x0
2211                     
2212                     	.area DSEG(DATA)
2213                     _POINC0	.equ	0x1
2214                     
2215                     	.area DSEG(DATA)
2216                     _PODEC0	.equ	0x2
2217                     
2218                     	.area DSEG(DATA)
2219                     _PRINC0	.equ	0x3
2220                     
2221                     	.area DSEG(DATA)
2222                     _PLUSW0	.equ	0x4
2223                     
2224                     	.area DSEG(DATA)
2225                     _INDF1	.equ	0x5
2226                     
2227                     	.area DSEG(DATA)
2228                     _POINC1	.equ	0x6
2229                     
2230                     	.area DSEG(DATA)
2231                     _PODEC1	.equ	0x7
2232                     
2233                     	.area DSEG(DATA)
2234                     _PRINC1	.equ	0x8
2235                     
2236                     	.area DSEG(DATA)
2237                     _PLUSW1	.equ	0x9
2238                     
2239                     	.area DSEG(DATA)
2240                     _INDF2	.equ	0xA
2241                     
2242                     	.area DSEG(DATA)
2243                     _POINC2	.equ	0xB
2244                     
2245                     	.area DSEG(DATA)
2246                     _PODEC2	.equ	0xC
2247                     
2248                     	.area DSEG(DATA)
2249                     _PRINC2	.equ	0xD
2250                     
2251                     	.area DSEG(DATA)
2252                     _PLUSW2	.equ	0xE
2253                     
2254                     	.area DSEG(DATA)
2255                     _FSR0H	.equ	0xF
2256                     
2257                     	.area DSEG(DATA)
2258                     _FSR0L	.equ	0x10
2259                     
2260                     	.area DSEG(DATA)
2261                     _FSR1H	.equ	0x11
2262                     
2263                     	.area DSEG(DATA)
2264                     _FSR1L	.equ	0x12
2265                     
2266                     	.area DSEG(DATA)
2267                     _FSR2H	.equ	0x13
2268                     
2269                     	.area DSEG(DATA)
2270                     _FSR2L	.equ	0x14
2271                     
2272                     	.area DSEG(DATA)
2273                     _TOSH	.equ	0x16
2274                     
2275                     	.area DSEG(DATA)
2276                     _TOSL	.equ	0x17
2277                     
2278                     	.area DSEG(DATA)
2279                     _SKCN	.equ	0x18
2280                     
2281                     	.area DSEG(DATA)
2282                     _PCLATH	.equ	0x1A
2283                     
2284                     	.area DSEG(DATA)
2285                     _PCLATL	.equ	0x1B
2286                     
2287                     	.area DSEG(DATA)
2288                     _TBLPTRH	.equ	0x1D
2289                     
2290                     	.area DSEG(DATA)
2291                     _TBLPTRL	.equ	0x1E
2292                     
2293                     	.area DSEG(DATA)
2294                     _TBLDH	.equ	0x1F
2295                     
2296                     	.area DSEG(DATA)
2297                     _TBLDL	.equ	0x20
2298                     
2299                     	.area DSEG(DATA)
2300                     _PRODH	.equ	0x21
2301                     
2302                     	.area DSEG(DATA)
2303                     _PRODL	.equ	0x22
2304                     
2305                     	.area DSEG(DATA)
2306                     _INTE0	.equ	0x23
2307                     
2308                     	.area DSEG(DATA)
2309                     _INTE1	.equ	0x24
2310                     
2311                     	.area DSEG(DATA)
2312                     _INTE2	.equ	0x25
2313                     
2314                     	.area DSEG(DATA)
2315                     _INTF0	.equ	0x26
2316                     
2317                     	.area DSEG(DATA)
2318                     _INTF1	.equ	0x27
2319                     
2320                     	.area DSEG(DATA)
2321                     _INTF2	.equ	0x28
2322                     
2323                     	.area DSEG(DATA)
2324                     _WREG	.equ	0x29
2325                     
2326                     	.area DSEG(DATA)
2327                     _BSRCN	.equ	0x2A
2328                     
2329                     	.area DSEG(DATA)
2330                     _STATUS	.equ	0x2B
2331                     
2332                     	.area DSEG(DATA)
2333                     _MSTAT	.equ	0x2B
2334                     
2335                     	.area DSEG(DATA)
2336                     _PSTAT	.equ	0x2C
2337                     
2338                     	.area DSEG(DATA)
2339                     _BIECN	.equ	0x2E
2340                     
2341                     	.area DSEG(DATA)
2342                     _BIEARH	.equ	0x2F
2343                     
2344                     	.area DSEG(DATA)
2345                     _BIEARL	.equ	0x30
2346                     
2347                     	.area DSEG(DATA)
2348                     _BIEDRH	.equ	0x31
2349                     
2350                     	.area DSEG(DATA)
2351                     _BIEDRL	.equ	0x32
2352                     
2353                     	.area DSEG(DATA)
2354                     _PWRCN	.equ	0x33
2355                     
2356                     	.area DSEG(DATA)
2357                     _OSCCN0	.equ	0x34
2358                     
2359                     	.area DSEG(DATA)
2360                     _OSCCN1	.equ	0x35
2361                     
2362                     	.area DSEG(DATA)
2363                     _OSCCN2	.equ	0x36
2364                     
2365                     	.area DSEG(DATA)
2366                     _CSFCN0	.equ	0x37
2367                     
2368                     	.area DSEG(DATA)
2369                     _CSFCN1	.equ	0x38
2370                     
2371                     	.area DSEG(DATA)
2372                     _WDTCN	.equ	0x39
2373                     
2374                     	.area DSEG(DATA)
2375                     _AD1H	.equ	0x3A
2376                     
2377                     	.area DSEG(DATA)
2378                     _AD1M	.equ	0x3B
2379                     
2380                     	.area DSEG(DATA)
2381                     _AD1L	.equ	0x3C
2382                     
2383                     	.area DSEG(DATA)
2384                     _AD1CN0	.equ	0x3D
2385                     
2386                     	.area DSEG(DATA)
2387                     _AD1CN1	.equ	0x3E
2388                     
2389                     	.area DSEG(DATA)
2390                     _AD1CN2	.equ	0x3F
2391                     
2392                     	.area DSEG(DATA)
2393                     _AD1CN3	.equ	0x40
2394                     
2395                     	.area DSEG(DATA)
2396                     _AD1CN4	.equ	0x41
2397                     
2398                     	.area DSEG(DATA)
2399                     _AD1CN5	.equ	0x42
2400                     
2401                     	.area DSEG(DATA)
2402                     _LVDCN	.equ	0x43
2403                     
2404                     	.area DSEG(DATA)
2405                     _TMA1CN	.equ	0x44
2406                     
2407                     	.area DSEG(DATA)
2408                     _TMA1R	.equ	0x45
2409                     
2410                     	.area DSEG(DATA)
2411                     _TMA1C	.equ	0x46
2412                     
2413                     	.area DSEG(DATA)
2414                     _TB1FLAG	.equ	0x47
2415                     
2416                     	.area DSEG(DATA)
2417                     _TB1CN0	.equ	0x48
2418                     
2419                     	.area DSEG(DATA)
2420                     _TB1CN1	.equ	0x49
2421                     
2422                     	.area DSEG(DATA)
2423                     _TB1RH	.equ	0x4A
2424                     
2425                     	.area DSEG(DATA)
2426                     _TB1RL	.equ	0x4B
2427                     
2428                     	.area DSEG(DATA)
2429                     _TB1C0H	.equ	0x4C
2430                     
2431                     	.area DSEG(DATA)
2432                     _TB1C0L	.equ	0x4D
2433                     
2434                     	.area DSEG(DATA)
2435                     _TB1C1H	.equ	0x4E
2436                     
2437                     	.area DSEG(DATA)
2438                     _TB1C1L	.equ	0x4F
2439                     
2440                     	.area DSEG(DATA)
2441                     _TB1C2H	.equ	0x50
2442                     
2443                     	.area DSEG(DATA)
2444                     _TB1C2L	.equ	0x51
2445                     
2446                     	.area DSEG(DATA)
2447                     _TC1CN0	.equ	0x52
2448                     
2449                     	.area DSEG(DATA)
2450                     _PT1	.equ	0x53
2451                     
2452                     	.area DSEG(DATA)
2453                     _TRISC1	.equ	0x54
2454                     
2455                     	.area DSEG(DATA)
2456                     _PT1DA	.equ	0x55
2457                     
2458                     	.area DSEG(DATA)
2459                     _PT1PU	.equ	0x56
2460                     
2461                     	.area DSEG(DATA)
2462                     _PT1M1	.equ	0x57
2463                     
2464                     	.area DSEG(DATA)
2465                     _PT1INT	.equ	0x58
2466                     
2467                     	.area DSEG(DATA)
2468                     _PT1INTE	.equ	0x59
2469                     
2470                     	.area DSEG(DATA)
2471                     _PT1INTF	.equ	0x5A
2472                     
2473                     	.area DSEG(DATA)
2474                     _PT2	.equ	0x5B
2475                     
2476                     	.area DSEG(DATA)
2477                     _TRISC2	.equ	0x5C
2478                     
2479                     	.area DSEG(DATA)
2480                     _PT2DA	.equ	0x5D
2481                     
2482                     	.area DSEG(DATA)
2483                     _PT2PU	.equ	0x5E
2484                     
2485                     	.area DSEG(DATA)
2486                     _PT2INT	.equ	0x5F
2487                     
2488                     	.area DSEG(DATA)
2489                     _PT2INTE	.equ	0x60
2490                     
2491                     	.area DSEG(DATA)
2492                     _PT2INTF	.equ	0x61
2493                     
2494                     	.area DSEG(DATA)
2495                     _PT6	.equ	0x62
2496                     
2497                     	.area DSEG(DATA)
2498                     _TRISC6	.equ	0x63
2499                     
2500                     	.area DSEG(DATA)
2501                     _PT6DA	.equ	0x64
2502                     
2503                     	.area DSEG(DATA)
2504                     _PT6PU	.equ	0x65
2505                     
2506                     	.area DSEG(DATA)
2507                     _PT7	.equ	0x66
2508                     
2509                     	.area DSEG(DATA)
2510                     _TRISC7	.equ	0x67
2511                     
2512                     	.area DSEG(DATA)
2513                     _PT7DA	.equ	0x68
2514                     
2515                     	.area DSEG(DATA)
2516                     _PT7PU	.equ	0x69
2517                     
2518                     	.area DSEG(DATA)
2519                     _PT8	.equ	0x6A
2520                     
2521                     	.area DSEG(DATA)
2522                     _TRISC8	.equ	0x6B
2523                     
2524                     	.area DSEG(DATA)
2525                     _PT8DA	.equ	0x6C
2526                     
2527                     	.area DSEG(DATA)
2528                     _PT8PU	.equ	0x6D
2529                     
2530                     	.area DSEG(DATA)
2531                     _SSPCN0	.equ	0x6E
2532                     
2533                     	.area DSEG(DATA)
2534                     _SSPSTA0	.equ	0x6F
2535                     
2536                     	.area DSEG(DATA)
2537                     _SSPBUF0	.equ	0x70
2538                     
2539                     	.area DSEG(DATA)
2540                     _CFG0	.equ	0x71
2541                     
2542                     	.area DSEG(DATA)
2543                     _ACT0	.equ	0x72
2544                     
2545                     	.area DSEG(DATA)
2546                     _STA0	.equ	0x73
2547                     
2548                     	.area DSEG(DATA)
2549                     _CRG0	.equ	0x74
2550                     
2551                     	.area DSEG(DATA)
2552                     _TOC0	.equ	0x75
2553                     
2554                     	.area DSEG(DATA)
2555                     _RDB0	.equ	0x76
2556                     
2557                     	.area DSEG(DATA)
2558                     _TDB0	.equ	0x77
2559                     
2560                     	.area DSEG(DATA)
2561                     _SID0	.equ	0x78
2562                     
2563                     	.area DSEG(DATA)
2564                     _UR0CN	.equ	0x79
2565                     
2566                     	.area DSEG(DATA)
2567                     _UR0STA	.equ	0x7A
2568                     
2569                     	.area DSEG(DATA)
2570                     _BA0CN	.equ	0x7B
2571                     
2572                     	.area DSEG(DATA)
2573                     _BG0RH	.equ	0x7C
2574                     
2575                     	.area DSEG(DATA)
2576                     _BG0RL	.equ	0x7D
2577                     
2578                     	.area DSEG(DATA)
2579                     _TX0R	.equ	0x7E
2580                     
2581                     	.area DSEG(DATA)
2582                     _RC0REG	.equ	0x7F
2583                     
2584                     	.area DSEG(DATA)
2585                     _LCDCN1	.equ	0x180
2586                     
2587                     	.area DSEG(DATA)
2588                     _LCDCN2	.equ	0x181
2589                     
2590                     	.area DSEG(DATA)
2591                     _LCDCN3	.equ	0x182
2592                     
2593                     	.area DSEG(DATA)
2594                     _LCDCN4	.equ	0x183
2595                     
2596                     	.area DSEG(DATA)
2597                     _LCDCN5	.equ	0x184
2598                     
2599                     	.area DSEG(DATA)
2600                     _LCDCN6	.equ	0x185
2601                     
2602                     	.area DSEG(DATA)
2603                     _LCDCN7	.equ	0x186
2604                     
2605                     	.area DSEG(DATA)
2606                     _LCDCN8	.equ	0x187
2607                     
2608                     	.area DSEG(DATA)
2609                     _LCD0	.equ	0x188
2610                     
2611                     	.area DSEG(DATA)
2612                     _LCD1	.equ	0x189
2613                     
2614                     	.area DSEG(DATA)
2615                     _LCD2	.equ	0x18A
2616                     
2617                     	.area DSEG(DATA)
2618                     _LCD3	.equ	0x18B
2619                     
2620                     	.area DSEG(DATA)
2621                     _LCD4	.equ	0x18C
2622                     
2623                     	.area DSEG(DATA)
2624                     _LCD5	.equ	0x18D
2625                     
2626                     	.area DSEG(DATA)
2627                     _LCD6	.equ	0x18E
2628                     
2629                     	.area DSEG(DATA)
2630                     _LCD7	.equ	0x18F
2631                     
2632                     	.area DSEG(DATA)
2633                     _LCD8	.equ	0x190
2634                     
2635                     	.area DSEG(DATA)
2636                     _LCD9	.equ	0x191
2637                     
2638                     	.area DSEG(DATA)
2639                     _UR2CN	.equ	0x192
2640                     
2641                     	.area DSEG(DATA)
2642                     _UR2STA	.equ	0x193
2643                     
2644                     	.area DSEG(DATA)
2645                     _BA2CN	.equ	0x194
2646                     
2647                     	.area DSEG(DATA)
2648                     _BG2RH	.equ	0x195
2649                     
2650                     	.area DSEG(DATA)
2651                     _BG2RL	.equ	0x196
2652                     
2653                     	.area DSEG(DATA)
2654                     _TX2R	.equ	0x197
2655                     
2656                     	.area DSEG(DATA)
2657                     _RC2REG	.equ	0x198
2658                     
2659                     	.area DSEG(DATA)
2660                     _TMA2R	.equ	0x1E8
2661                     
2662                     	.area DSEG(DATA)
2663                     _TMA2C	.equ	0x1E9
2664                     
2665                     	.area DSEG(DATA)
2666                     _LEDCN	.equ	0x1EA
2667                     
2668                     	.area DSEG(DATA)
2669                     _IQ0	.equ	0x1EB
2670                     
2671                     	.area DSEG(DATA)
2672                     _IQ1	.equ	0x1EC
2673                     
2674                     	.area DSEG(DATA)
2675                     _DGCON1	.equ	0x1ED
2676                     
2677                     	.area DSEG(DATA)
2678                     _DGCON2	.equ	0x1EE
2679                     
2680                     	.area DSEG(DATA)
2681                     _ADCRH	.equ	0x3A
2682                     
2683                     	.area DSEG(DATA)
2684                     _ADCRM	.equ	0x3B
2685                     
2686                     	.area DSEG(DATA)
2687                     _ADCRL	.equ	0x3C
2688                     
2689                     	.area DSEG(DATA)
2690                     _TEMDATA	.equ	0x2E0
2691                     
2692                     ;--------------------------------------------------------
2693                     ; absolute symbol definitions
2694                     ;--------------------------------------------------------
2695                     ;--------------------------------------------------------
2696                     ; compiler-defined variables
2697                     ;--------------------------------------------------------
2698                     	.area IDATA (DATA,REL,CON); pre-def
2699                     	.area IDATAROM (CODE,REL,CON); pre-def
2700                     	.area UDATA (DATA,REL,CON); pre-def
2701                     	.area UDATA (DATA,REL,CON) ;UDL_App_Backlight_0	udata
2702 0000 --             r0x108D:	.ds	1
2703 0000 --             r0x108E:	.ds	1
2704 0000 --             r0x108F:	.ds	1
2705 0000 --             r0x1090:	.ds	1
2706 0000 --             r0x109B:	.ds	1
2707 0000 --             r0x109C:	.ds	1
2708 0000 --             r0x109D:	.ds	1
2709 0000 --             r0x109E:	.ds	1
2710 0000 --             r0x10A4:	.ds	1
2711 0000 --             r0x10A5:	.ds	1
2712 0000 --             r0x10A6:	.ds	1
2713 0000 --             r0x10A7:	.ds	1
2714 0000 --             r0x10A8:	.ds	1
2715 0000 --             r0x10A9:	.ds	1
2716 0000 --             r0x10AA:	.ds	1
2717 0000 --             r0x10AB:	.ds	1
2718                     	.area LOCALSTK (STK); local stack var
2719                     	.globl _Timer_Experience_STK06
2720                     	.globl _Timer_Experience_STK05
2721                     	.globl _Timer_Experience_STK04
2722                     	.globl _Timer_Experience_STK03
2723                     	.globl _Timer_Experience_STK02
2724                     	.globl _Timer_Experience_STK01
2725                     	.globl _Timer_Experience_STK00
2726                     	.globl _Centigrade_Convert_Fahrenheit_STK00
2727                     ;--------------------------------------------------------
2728                     ; initialized data
2729                     ;--------------------------------------------------------
2730                     ;--------------------------------------------------------
2731                     ; initialized data - mirror
2732                     ;--------------------------------------------------------
2733                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Backlight$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2734                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Backlight$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
2735                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
2736                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
2737                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2738                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2739                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2740                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2741                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2742                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2743                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2744                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2745                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2746                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2747                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2748                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2749                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2750                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
2751                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2752                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2753                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2754                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2755                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2756                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2757                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2758                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2759                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2760                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2761                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2762                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2763                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2764                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2765                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2766                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2767                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2768                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2769                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2770                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2771                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2772                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2773                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2774                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2775                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2776                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2777                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2778                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2779                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2780                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2781                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2782                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2783                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2784                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2785                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2786                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2787                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2788                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2789                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2790                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2791                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2792                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2793                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2794                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2795                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2796                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
2797                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2798                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2799                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2800                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2801                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2802                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2803                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2804                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2805                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2806                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2807                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2808                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2809                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2810                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2811                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2812                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2813                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2814                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2815                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2816                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2817                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2818                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2819                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2820                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2821                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2822                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2823                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2824                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2825                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2826                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Backlight$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2827                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
2828                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
2829                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
2830                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Backlight$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2831                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
2832                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
2833                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Backlight$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
2834                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Backlight$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
2835                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Backlight$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
2836                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
2837                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
2838                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Backlight$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2839                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Backlight$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
2840                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Backlight$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2841                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Backlight$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
2842                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Backlight$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
2843                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2844                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2845                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2846                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2847                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2848                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2849                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2850                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2851                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2852                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2853                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2854                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2855                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2856                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2857                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2858                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2859                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2860                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2861                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2862                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2863                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2864                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2865                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2866                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2867                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2868                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2869                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2870                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2871                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2872                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Backlight$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
2873                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
2874                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
2875                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Backlight$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2876                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Backlight$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
2877                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
2878                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Backlight$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
2879                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2880                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2881                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2882                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2883                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2884                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2885                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2886                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2887                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2888                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2889                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2890                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2891                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2892                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2893                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2894                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2895                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2896                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2897                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2898                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2899                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2900                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2901                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2902                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2903                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2904                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2905                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2906                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2907                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2908                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2909                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2910                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2911                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2912                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2913                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2914                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2915                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2916                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2917                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2918                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2919                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2920                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2921                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2922                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2923                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2924                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2925                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2926                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2927                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2928                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2929                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2930                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2931                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2932                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2933                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2934                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2935                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2936                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2937                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2938                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2939                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2940                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2941                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2942                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2943                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2944                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2945                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2946                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2947                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2948                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2949                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2950                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2951                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2952                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2953                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2954                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2955                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2956                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2957                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2958                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2959                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2960                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2961                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2962                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2963                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2964                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2965                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2966                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Backlight$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
2967                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Backlight$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2968                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Backlight$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
2969                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
2970                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
2971                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Backlight$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
2972                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2973                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2974                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2975                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2976                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2977                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2978                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2979                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2980                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2981                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2982                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2983                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2984                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2985                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2986                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2987                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2988                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2989                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2990                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2991                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2992                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2993                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2994                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2995                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2996                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2997                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2998                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2999                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3000                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3001                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
3002                     	;Following is optimization info, 
3003                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
3004                     	;--cdb--W:r0x10A8:NULL+0:-1:1
3005                     	;--cdb--W:r0x10A8:NULL+0:-1:0
3006                     	;--cdb--W:r0x10A9:NULL+0:-1:0
3007                     	;--cdb--W:r0x10A9:STK00+0:-1:0
3008                     	;--cdb--W:r0x10AB:STK01+0:-1:0
3009                     	;--cdb--W:r0x10A9:NULL+0:-1:1
3010                     	;--cdb--W:r0x10A4:NULL+0:-1:1
3011                     	;--cdb--W:r0x10A4:NULL+0:-1:0
3012                     	;--cdb--W:r0x10A5:NULL+0:-1:0
3013                     	;--cdb--W:r0x10A5:STK00+0:-1:0
3014                     	;--cdb--W:r0x10A7:STK01+0:-1:0
3015                     	;--cdb--W:r0x10A5:NULL+0:-1:1
3016                     	;--cdb--W:r0x109B:NULL+0:-1:1
3017                     	;--cdb--W:r0x109B:NULL+0:-1:0
3018                     	;--cdb--W:r0x109C:NULL+0:-1:0
3019                     	;--cdb--W:r0x109C:STK00+0:-1:0
3020                     	;--cdb--W:r0x109E:STK01+0:-1:0
3021                     	;--cdb--W:r0x109C:NULL+0:-1:1
3022                     	;--cdb--W:r0x108D:NULL+0:-1:1
3023                     	;--cdb--W:r0x108D:NULL+0:-1:0
3024                     	;--cdb--W:r0x108E:NULL+0:-1:0
3025                     	;--cdb--W:r0x108E:NULL+0:-1:1
3026                     	;--c2db--RNG$_BackLight_SingleDrv_Result_10000_418$1692$1695
3027                     	;--c2db--RNG$_BackLight_DoubleDrv_Result_10000_441$1406$1409
3028                     	;--c2db--RNG$_BackLight_TribleDrv_Result_10000_506$902$905
3029                     	;--c2db--RNG$_BackLight_QuadrupleDrv_Result_10000_587$371$374
3030                     	END
