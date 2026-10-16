001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
008                     ;;	.file	".\Source\APP_Measure.c"
009                     	.module APP_Measure
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:APP_Measure:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
147                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
152                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
153                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
154                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
155                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
157                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
161                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--F:APP_Measure:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0,0,0,0
163                     	;--cdb--S:G$_divslong$0$0({2}DF,SL:SL),C,0,0
164                     	;--cdb--S:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0
165                     	;--cdb--F:APP_Measure:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0,0,0,0
166                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
167                     	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
168                     	;--cdb--S:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0
169                     	;--cdb--F:APP_Measure:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0,0,0,0
170                     	;--cdb--S:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0
171                     	;--cdb--F:APP_Measure:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0,0,0,0
172                     	;--cdb--S:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0
173                     	;--cdb--F:APP_Measure:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0,0,0,0
174                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
175                     	;--cdb--F:APP_Measure:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0,0,0,0
176                     	;--cdb--S:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0
177                     	;--cdb--F:APP_Measure:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0,0,0,0
178                     	;--cdb--S:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0
179                     	;--cdb--F:APP_Measure:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0,0,0,0
180                     	;--cdb--S:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0
181                     	;--cdb--F:APP_Measure:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0,0,0,0
182                     	;--cdb--S:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0
183                     	;--cdb--F:APP_Measure:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0,0,0,0
184                     	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
185                     	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
186                     	;--cdb--S:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0
187                     	;--cdb--F:APP_Measure:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0,0,0,0
188                     	;--cdb--S:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0
189                     	;--cdb--F:APP_Measure:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0,0,0,0
190                     	;--cdb--S:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0
191                     	;--cdb--F:APP_Measure:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0,0,0,0
192                     	;--cdb--S:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0
193                     	;--cdb--F:APP_Measure:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0,0,0,0
194                     	;--cdb--S:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0
195                     	;--cdb--F:APP_Measure:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0,0,0,0
196                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
197                     	;--cdb--F:APP_Measure:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0,0,0,0
198                     ;--------------------------------------------------------
199                     ; overlayable items in internal ram 
200                     ;--------------------------------------------------------
201                     ;	udata_ovr
202                     .area CCODE (code,REL,CON) ; APP_Measure-code 
203                     .globl _Forecast_Measure
204                     
205                     ;--------------------------------------------------------
206                     	.FUNC _Forecast_Measure:$r:0:0:$C:_ActualForecast_Select:$C:_Filter_ErrTemp:$C:_Judge_Stability:$C:_Temp_Drop\
207                     :$C:_Forecast_Calculate_Conditions:$C:_Forecast_Calculate:$C:_Temperature_Compensate:$C:_Forecast_To_Actual\
208                     :$L:r0x1115:$L:r0x1117:$L:r0x1118:$L:r0x1119:$L:r0x111A\
209                     :$L:r0x111B:$L:r0x111C
210                     ;--------------------------------------------------------
211                     ;	;.line	873; ".\Source\APP_Measure.c"	switch (eMeas_Status)
212                     _Forecast_Measure:	;Function start
213                     	MVL	0x05
214                     	CPSL	_eMeas_Status,0
215                     	JMP	_00525_DS_
216                     	MVL	HIGHD2(_00710_DS_)
217                     	MVF	_PCLATH,1,0
218                     	MVF	_eMeas_Status,0,0
219                     	ADDL	D2(_00710_DS_)
220                     	BTSZ	_STATUS,4
221                     	INF	_PCLATH,1,0
222                     	MVF	_PCLATL,1,0
223                     _00710_DS_:
224                     	RJ	_00463_DS_
225                     	RJ	_00468_DS_
226                     	RJ	_00476_DS_
227                     	RJ	_00488_DS_
228                     	RJ	_00523_DS_
229                     _00463_DS_:
230                     ;	;.line	878; ".\Source\APP_Measure.c"	if(!sTIMx.TempSampleFlag || (eMeasureMode == Bath_Mode) || !sActual_Forecast.AF_Start)
231                     	BTSS	_sTIMx,2
232                     	JMP	_00525_DS_
233                     	MVF	_eMeasureMode,0,0
234                     	XORL	0x03
235                     	BTSZ	_STATUS,0
236                     	JMP	_00525_DS_
237                     	BTSS	_sActual_Forecast,0
238                     	JMP	_00525_DS_
239                     _00468_DS_:
240                     ;	;.line	909; ".\Source\APP_Measure.c"	if(!ActualForecast_Select())
241                     	CALL	_ActualForecast_Select
242                     	.CHKPARA _ActualForecast_Select 0
243                     	IORL	0x00
244                     	BTSZ	_STATUS,0
245                     	JMP	_00525_DS_
246                     ;	;.line	914; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ResetTimeFlag)
247                     	BTSZ	_sActual_Forecast,4
248                     	JMP	_00474_DS_
249                     ;	;.line	916; ".\Source\APP_Measure.c"	sActual_Forecast.ResetTimeFlag = TRUE;
250                     	BSF	_sActual_Forecast,4
251                     ;	;.line	919; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
252                     	CLRF	(_sActual_Forecast + 1),0
253                     ;	;.line	921; ".\Source\APP_Measure.c"	sForecast.Forecast_Timer = 0;
254                     	CLRF	(_sForecast + 1),0
255                     ;	;.line	923; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
256                     	CLRF	(_sActual + 2),0
257                     	JMP	_00476_DS_
258                     _00474_DS_:
259                     ;	;.line	928; ".\Source\APP_Measure.c"	if(++sActual_Forecast.Cnt_1S >= 4)
260                     	INF	(_sActual_Forecast + 1),0,0
261                     	MVF	r0x1115,1,0
262                     	MVF	(_sActual_Forecast + 1),1,0
263                     	MVL	0x03
264                     	CPSG	r0x1115,0
265                     	JMP	_00476_DS_
266                     ;	;.line	930; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
267                     	CLRF	(_sActual_Forecast + 1),0
268                     ;	;.line	932; ".\Source\APP_Measure.c"	sForecast.Forecast_Timer++;
269                     	INF	(_sForecast + 1),1,0
270                     ;	;.line	934; ".\Source\APP_Measure.c"	sActual.ActualTime++;
271                     	INF	(_sActual + 2),1,0
272                     ;	;.line	936; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = TRUE;
273                     	LDPR	(_sActual_Forecast + 0),0x00
274                     	BSF	_INDF0,3
275                     _00476_DS_:
276                     ;	;.line	952; ".\Source\APP_Measure.c"	if(sActual.Actual_Start && !sActual_Forecast.StableBuzzerFlag)
277                     	BTSZ	_sActual,0
278                     	BTSZ	_sActual_Forecast,1
279                     	JMP	_00488_DS_
280                     ;	;.line	954; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
281                     	BTSS	_sActual_Forecast,3
282                     	JMP	_00482_DS_
283                     ;	;.line	957; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
284                     	BCF	_sActual_Forecast,3
285                     ;	;.line	960; ".\Source\APP_Measure.c"	Filter_ErrTemp();
286                     	CALL	_Filter_ErrTemp
287                     ;	;.line	962; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
288                     	MVF	(_sActual_Forecast + 7),0,0
289                     	MVF	r0x1117,1,0
290                     	MVF	(_sActual_Forecast + 8),0,0
291                     	MVF	r0x1118,1,0
292                     	MVF	r0x1117,0,0
293                     	SUBF	(_sActual_Forecast + 3),0,0
294                     	MVF	r0x1118,0,0
295                     	SUBC	(_sActual_Forecast + 4),0,0
296                     	BTSZ	_STATUS,4
297                     	JMP	_00478_DS_
298                     ;	;.line	964; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
299                     	MVF	r0x1117,0,0
300                     	MVF	(_sActual_Forecast + 3),1,0
301                     	MVF	r0x1118,0,0
302                     	MVF	(_sActual_Forecast + 4),1,0
303                     _00478_DS_:
304                     ;	;.line	968; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
305                     	MVF	(_sActual + 3),0,0
306                     	MVF	r0x1117,1,0
307                     	MVF	(_sActual + 4),0,0
308                     	MVF	r0x1118,1,0
309                     	MVF	(_sActual_Forecast + 3),0,0
310                     	MVF	r0x1119,1,0
311                     	MVF	(_sActual_Forecast + 4),0,0
312                     	MVF	r0x111A,1,0
313                     	MVF	(_sActual + 1),0,0
314                     	MVF	_Judge_Stability_STK03,1,0
315                     	MVF	r0x1119,0,0
316                     	MVF	_Judge_Stability_STK02,1,0
317                     	MVF	r0x111A,0,0
318                     	MVF	_Judge_Stability_STK01,1,0
319                     	MVF	r0x1117,0,0
320                     	MVF	_Judge_Stability_STK00,1,0
321                     	MVF	r0x1118,0,0
322                     	CALL	_Judge_Stability
323                     	.CHKPARA _Judge_Stability 5
324                     	IORL	0x00
325                     	BTSZ	_STATUS,0
326                     	JMP	_00480_DS_
327                     ;	;.line	970; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
328                     	BSF	_sActual_Forecast,1
329                     ;	;.line	971; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
330                     	BSF	_sBleStatus,4
331                     ;	;.line	972; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
332                     	BSF	_sMemoryFlag,0
333                     _00480_DS_:
334                     ;	;.line	986; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
335                     	MVF	(_sActual_Forecast + 3),0,0
336                     	MVF	(_sActual + 3),1,0
337                     	MVF	(_sActual_Forecast + 4),0,0
338                     	MVF	(_sActual + 4),1,0
339                     _00482_DS_:
340                     ;	;.line	989; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
341                     	BTSS	_sTempCal,5
342                     	JMP	_00488_DS_
343                     ;	;.line	993; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
344                     	MVL	0x01
345                     	MVF	(_ERR + 6),1,0
346                     _00488_DS_:
347                     ;	;.line	999; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Start && !sActual_Forecast.StableBuzzerFlag)
348                     	BTSZ	_sForecast,0
349                     	BTSZ	_sActual_Forecast,1
350                     	JMP	_00523_DS_
351                     ;	;.line	1002; ".\Source\APP_Measure.c"	if(Temp_Drop())
352                     	CALL	_Temp_Drop
353                     	.CHKPARA _Temp_Drop 0
354                     	IORL	0x00
355                     	BTSZ	_STATUS,0
356                     	JMP	_00490_DS_
357                     ;	;.line	1006; ".\Source\APP_Measure.c"	ERR[Err1] = TRUE;
358                     	MVL	0x01
359                     	MVF	(_ERR + 1),1,0
360                     ;	;.line	1010; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_Er1Er2;
361                     	MVL	0x05
362                     	MVF	_eBuzzer_Status,1,0
363                     _00490_DS_:
364                     ;	;.line	1020; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
365                     	BTSS	_sActual_Forecast,3
366                     	JMP	_00523_DS_
367                     ;	;.line	1023; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
368                     	BCF	_sActual_Forecast,3
369                     ;	;.line	1027; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
370                     	BTSS	_sTempCal,5
371                     	JMP	_00494_DS_
372                     ;	;.line	1029; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer > 8)
373                     	MVL	0x08
374                     	CPSG	(_sForecast + 1),0
375                     	JMP	_00494_DS_
376                     ;	;.line	1033; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
377                     	MVL	0x01
378                     	MVF	(_ERR + 6),1,0
379                     _00494_DS_:
380                     ;	;.line	1037; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer > 15)
381                     	MVF	(_sForecast + 1),0,0
382                     	MVF	r0x1117,1,0
383                     	ADDL	0xf0
384                     	BTSS	_STATUS,4
385                     	JMP	_00516_DS_
386                     ;	;.line	1041; ".\Source\APP_Measure.c"	ERR[Err2] = TRUE;
387                     	MVL	0x01
388                     	MVF	(_ERR + 2),1,0
389                     ;	;.line	1044; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_Er1Er2;
390                     	MVL	0x05
391                     	MVF	_eBuzzer_Status,1,0
392                     	JMP	_00517_DS_
393                     _00516_DS_:
394                     ;	;.line	1046; ".\Source\APP_Measure.c"	else if(sForecast.Forecast_Timer >= 2)
395                     	MVL	0x01
396                     	CPSG	r0x1117,0
397                     	JMP	_00517_DS_
398                     ;	;.line	1049; ".\Source\APP_Measure.c"	if(Forecast_Calculate_Conditions())
399                     	CALL	_Forecast_Calculate_Conditions
400                     	.CHKPARA _Forecast_Calculate_Conditions 0
401                     	IORL	0x00
402                     	BTSZ	_STATUS,0
403                     	JMP	_00517_DS_
404                     ;	;.line	1052; ".\Source\APP_Measure.c"	Forecast_Calculate();
405                     	CALL	_Forecast_Calculate
406                     	.CHKPARA _Forecast_Calculate 0
407                     ;	;.line	1064; ".\Source\APP_Measure.c"	Temp = sForecast.ForecastTemp + sForecast.EndTemp;
408                     	MVF	(_sForecast + 22),0,0
409                     	MVF	r0x1117,1,0
410                     	MVF	(_sForecast + 23),0,0
411                     	MVF	r0x1118,1,0
412                     	MVF	(_sForecast + 24),0,0
413                     	MVF	r0x1119,1,0
414                     	MVF	(_sForecast + 25),0,0
415                     	MVF	r0x111A,1,0
416                     	MVF	(_sForecast + 20),0,0
417                     	MVF	r0x111B,1,0
418                     	MVF	(_sForecast + 21),0,0
419                     	MVF	r0x111C,1,0
420                     	MVF	r0x1117,0,0
421                     	ADDF	r0x111B,1,0
422                     	MVF	r0x1118,0,0
423                     	ADDC	r0x111C,1,0
424                     ;	;.line	1066; ".\Source\APP_Measure.c"	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
425                     	RRF	_eMeasureMode,0,0
426                     	BTSZ	_STATUS,0
427                     	JMP	_00507_DS_
428                     	MVL	0x02
429                     	CPSE	_eMeasureMode,0
430                     	JMP	_00508_DS_
431                     _00507_DS_:
432                     ;	;.line	1068; ".\Source\APP_Measure.c"	if((Temp >= 3700) && (Temp <= 3800))
433                     	MVF	r0x111B,0,0
434                     	ADDL	0x8c
435                     	MVL	0xf1
436                     	ADDC	r0x111C,0,0
437                     	BTSS	_STATUS,4
438                     	JMP	_00509_DS_
439                     	MVF	r0x111B,0,0
440                     	ADDL	0x27
441                     	MVL	0xf1
442                     	ADDC	r0x111C,0,0
443                     	BTSZ	_STATUS,4
444                     	JMP	_00509_DS_
445                     ;	;.line	1070; ".\Source\APP_Measure.c"	if(sForecast.ForecastTemp > 80)
446                     	MVF	r0x1117,0,0
447                     	ADDL	0xaf
448                     	MVL	0xff
449                     	ADDC	r0x1118,0,0
450                     	MVL	0xff
451                     	ADDC	r0x1119,0,0
452                     	MVL	0xff
453                     	ADDC	r0x111A,0,0
454                     	BTSS	_STATUS,4
455                     	JMP	_00509_DS_
456                     ;	;.line	1072; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 80;
457                     	MVL	0x50
458                     	MVF	(_sForecast + 22),1,0
459                     	CLRF	(_sForecast + 23),0
460                     	CLRF	(_sForecast + 24),0
461                     	CLRF	(_sForecast + 25),0
462                     	JMP	_00509_DS_
463                     _00508_DS_:
464                     ;	;.line	1077; ".\Source\APP_Measure.c"	else if(eMeasureMode == Underarm_Mode)
465                     	DCSZ	_eMeasureMode,0,0
466                     	JMP	_00509_DS_
467                     ;	;.line	1080; ".\Source\APP_Measure.c"	if((Temp >= 3700) && (Temp <= 3800))
468                     	MVF	r0x111B,0,0
469                     	ADDL	0x8c
470                     	MVL	0xf1
471                     	ADDC	r0x111C,0,0
472                     	BTSS	_STATUS,4
473                     	JMP	_00509_DS_
474                     	MVF	r0x111B,0,0
475                     	ADDL	0x27
476                     	MVL	0xf1
477                     	ADDC	r0x111C,0,0
478                     	BTSZ	_STATUS,4
479                     	JMP	_00509_DS_
480                     ;	;.line	1082; ".\Source\APP_Measure.c"	if(sForecast.ForecastTemp > 120)
481                     	MVF	r0x1117,0,0
482                     	ADDL	0x87
483                     	MVL	0xff
484                     	ADDC	r0x1118,0,0
485                     	MVL	0xff
486                     	ADDC	r0x1119,0,0
487                     	MVL	0xff
488                     	ADDC	r0x111A,0,0
489                     	BTSS	_STATUS,4
490                     	JMP	_00509_DS_
491                     ;	;.line	1084; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 120;
492                     	MVL	0x78
493                     	MVF	(_sForecast + 22),1,0
494                     	CLRF	(_sForecast + 23),0
495                     	CLRF	(_sForecast + 24),0
496                     	CLRF	(_sForecast + 25),0
497                     _00509_DS_:
498                     ;	;.line	1098; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = Temperature_Compensate(sForecast.ForecastTemp + sForecast.EndTemp);
499                     	MVF	(_sForecast + 22),0,0
500                     	MVF	r0x1117,1,0
501                     	MVF	(_sForecast + 23),0,0
502                     	MVF	r0x1118,1,0
503                     	MVF	(_sForecast + 20),0,0
504                     	ADDF	r0x1117,0,0
505                     	MVF	_Temperature_Compensate_STK00,1,0
506                     	MVF	r0x1118,0,0
507                     	ADDC	(_sForecast + 21),0,0
508                     	CALL	_Temperature_Compensate
509                     	.CHKPARA _Temperature_Compensate 2
510                     	MVF	r0x1118,1,0
511                     	MVFF	STK00,(_sForecast + 22)
512                     	MVF	(_sForecast + 23),1,0
513                     	CLRF	(_sForecast + 24),0
514                     	CLRF	(_sForecast + 25),0
515                     ;	;.line	1101; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sForecast.ForecastTemp;
516                     	MVF	STK00,0,0
517                     	MVF	(_sActual_Forecast + 3),1,0
518                     	MVF	r0x1118,0,0
519                     	MVF	(_sActual_Forecast + 4),1,0
520                     ;	;.line	1104; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
521                     	BSF	_sActual_Forecast,1
522                     ;	;.line	1105; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
523                     	BSF	_sBleStatus,4
524                     ;	;.line	1106; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
525                     	BSF	_sMemoryFlag,0
526                     ;	;.line	1108; ".\Source\APP_Measure.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = FALSE;
527                     	BCF	_sTimeStamp,0
528                     _00517_DS_:
529                     ;	;.line	1121; ".\Source\APP_Measure.c"	sForecast.Prior1sForecastTemp = sADC.Centigrade250msTemp;
530                     	MVF	(_sADC + 13),0,0
531                     	MVF	(_sForecast + 8),1,0
532                     	MVF	(_sADC + 14),0,0
533                     	MVF	(_sForecast + 9),1,0
534                     _00523_DS_:
535                     ;	;.line	1128; ".\Source\APP_Measure.c"	Forecast_To_Actual();
536                     	CALL	_Forecast_To_Actual
537                     	.CHKPARA _Forecast_To_Actual 0
538                     _00525_DS_:
539                     ;	;.line	1135; ".\Source\APP_Measure.c"	eMeas_Status = Meas_Get_TEMP;
540                     	CLRF	_eMeas_Status,0
541                     ;	;.line	1139; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag)
542                     	BTSS	_sTIMx,2
543                     	JMP	_00528_DS_
544                     ;	;.line	1142; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = FALSE;
545                     	BCF	_sTIMx,2
546                     ;	;.line	1144; ".\Source\APP_Measure.c"	sForecast.Prior250msForecastTemp = sADC.Centigrade250msTemp;
547                     	MVF	(_sADC + 13),0,0
548                     	MVF	(_sForecast + 6),1,0
549                     	MVF	(_sADC + 14),0,0
550                     	MVF	(_sForecast + 7),1,0
551                     _00528_DS_:
552                     ;	;.line	1167; ".\Source\APP_Measure.c"	}
553                     	RET	
554                     ; exit point of _Forecast_Measure
555                     	.ENDFUNC	_Forecast_Measure
556                     ;--------------------------------------------------------
557                     
558                     .globl _Temperature_Compensate
559                     
560                     ;--------------------------------------------------------
561                     	.FUNC _Temperature_Compensate:$r:2:2:$C:__divuint:$C:__g2ptrget1:$C:__g2ptrget2\
562                     :$L:r0x1109:$L:_Temperature_Compensate_STK00:$L:r0x110A:$L:r0x110C:$L:r0x110B\
563                     :$L:r0x110D:$L:r0x110E
564                     ;--------------------------------------------------------
565                     ;	;.line	818; ".\Source\APP_Measure.c"	uint16 Temperature_Compensate(uint16 Temp)
566                     _Temperature_Compensate:	;Function start
567                     	CLRF	r0x110A,0
568                     	MVF	r0x1109,1,0
569                     ;	;.line	825; ".\Source\APP_Measure.c"	if((Temp < 3700)&&(Temp > 0))
570                     	MVF	_Temperature_Compensate_STK00,0,0
571                     	ADDL	0x8c
572                     	MVL	0xf1
573                     	ADDC	r0x1109,0,0
574                     	BTSZ	_STATUS,4
575                     	JMP	_00455_DS_
576                     	MVF	_Temperature_Compensate_STK00,0,0
577                     	IORF	r0x1109,0,0
578                     	BTSZ	_STATUS,0
579                     	JMP	_00455_DS_
580                     ;	;.line	827; ".\Source\APP_Measure.c"	b = Temp/10;
581                     	MVL	0x0a
582                     	MVF	__divuint_STK02,1,0
583                     	CLRF	__divuint_STK01,0
584                     	MVF	_Temperature_Compensate_STK00,0,0
585                     	MVF	__divuint_STK00,1,0
586                     	MVF	r0x1109,0,0
587                     	CALL	__divuint
588                     	MVF	r0x110C,1,0
589                     	MVF	STK00,0,0
590                     ;	;.line	830; ".\Source\APP_Measure.c"	if(b < C_StartTemp)
591                     	ADDL	0xf0
592                     	MVL	0xfe
593                     	ADDC	r0x110C,0,0
594                     	BTSZ	_STATUS,4
595                     	JMP	_00447_DS_
596                     ;	;.line	832; ".\Source\APP_Measure.c"	a = 0;
597                     	CLRF	r0x110D,0
598                     	JMP	_00448_DS_
599                     _00447_DS_:
600                     ;	;.line	836; ".\Source\APP_Measure.c"	a = (uint8)(b - C_StartTemp);
601                     	MVF	STK00,0,0
602                     	ADDL	0xf0
603                     	MVF	r0x110D,1,0
604                     _00448_DS_:
605                     ;	;.line	840; ".\Source\APP_Measure.c"	if((a & 0x01)== 0x01)
606                     	MVF	r0x110D,0,0
607                     	ANDL	0x01
608                     	DCSZ	_WREG,0,0
609                     	JMP	_00450_DS_
610                     ;	;.line	842; ".\Source\APP_Measure.c"	F_OddFlag = 1;
611                     	MVL	0x01
612                     	MVF	r0x110A,1,0
613                     _00450_DS_:
614                     ;	;.line	845; ".\Source\APP_Measure.c"	a >>= 1;
615                     	BCF	_STATUS,4
616                     	RRFC	r0x110D,0,0
617                     	MVF	r0x110B,1,0
618                     ;	;.line	848; ".\Source\APP_Measure.c"	if( F_OddFlag == 1)
619                     	DCSZ	r0x110A,0,0
620                     	JMP	_00452_DS_
621                     ;	;.line	850; ".\Source\APP_Measure.c"	a = CloseTable[a];
622                     	MVF	r0x110B,0,0
623                     	MULL	0x02
624                     	MVF	_PRODL,0,0
625                     	ADDL	(_CloseTable + 0)
626                     	MVF	__g2ptrget1_STK00,1,0
627                     	MVL	high (_CloseTable + 0)
628                     	ADDC	_PRODH,0,0
629                     	IORL	0x80
630                     	CALL	__g2ptrget1
631                     	MVF	r0x110E,1,0
632                     	JMP	_00453_DS_
633                     _00452_DS_:
634                     ;	;.line	854; ".\Source\APP_Measure.c"	a = CloseTable[a] >> 8;
635                     	MVF	r0x110B,0,0
636                     	MULL	0x02
637                     	MVF	_PRODL,0,0
638                     	ADDL	(_CloseTable + 0)
639                     	MVF	__g2ptrget2_STK00,1,0
640                     	MVL	high (_CloseTable + 0)
641                     	ADDC	_PRODH,0,0
642                     	IORL	0x80
643                     	CALL	__g2ptrget2
644                     	MVF	r0x110E,1,0
645                     _00453_DS_:
646                     ;	;.line	857; ".\Source\APP_Measure.c"	return (Temp + a);
647                     	CLRF	r0x110B,0
648                     	MVF	r0x110E,0,0
649                     	ADDF	_Temperature_Compensate_STK00,0,0
650                     	MVF	STK00,1,0
651                     	MVF	r0x1109,0,0
652                     	ADDC	r0x110B,0,0
653                     	JMP	_00458_DS_
654                     _00455_DS_:
655                     ;	;.line	861; ".\Source\APP_Measure.c"	return Temp;
656                     	MVF	_Temperature_Compensate_STK00,0,0
657                     	MVF	STK00,1,0
658                     	MVF	r0x1109,0,0
659                     _00458_DS_:
660                     ;	;.line	863; ".\Source\APP_Measure.c"	}
661                     	RET	
662                     ; exit point of _Temperature_Compensate
663                     	.ENDFUNC	_Temperature_Compensate
664                     ;--------------------------------------------------------
665                     
666                     .globl _ActualForecast_Select
667                     
668                     ;--------------------------------------------------------
669                     	.FUNC _ActualForecast_Select:$r:1:0:$C:_Start_Algorithm\
670                     :$L:r0x1106
671                     ;--------------------------------------------------------
672                     ;	;.line	756; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ActualForecast_SelectFlag)
673                     _ActualForecast_Select:	;Function start
674                     	BTSZ	_sActual_Forecast,2
675                     	JMP	_00441_DS_
676                     ;	;.line	758; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp > 3400)
677                     	MVF	(_sADC + 13),0,0
678                     	ADDL	0xb7
679                     	MVL	0xf2
680                     	ADDC	(_sADC + 14),0,0
681                     	BTSS	_STATUS,4
682                     	JMP	_00434_DS_
683                     ;	;.line	761; ".\Source\APP_Measure.c"	if(++sForecast.PreBath_Counts >= 3)
684                     	INF	(_sForecast + 4),0,0
685                     	MVF	r0x1106,1,0
686                     	MVF	(_sForecast + 4),1,0
687                     	MVL	0x02
688                     	CPSG	r0x1106,0
689                     	JMP	_00435_DS_
690                     ;	;.line	764; ".\Source\APP_Measure.c"	sForecast.PreBath_Counts = 3;
691                     	MVL	0x03
692                     	MVF	(_sForecast + 4),1,0
693                     ;	;.line	766; ".\Source\APP_Measure.c"	sActual.Actual_Start = TRUE;
694                     	BSF	_sActual,0
695                     ;	;.line	768; ".\Source\APP_Measure.c"	sActual_Forecast.ActualForecast_SelectFlag = TRUE;
696                     	BSF	_sActual_Forecast,2
697                     ;	;.line	772; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sADC.Centigrade250msTemp;
698                     	MVF	(_sADC + 13),0,0
699                     	MVF	(_sActual + 3),1,0
700                     	MVF	(_sADC + 14),0,0
701                     	MVF	(_sActual + 4),1,0
702                     	JMP	_00435_DS_
703                     _00434_DS_:
704                     ;	;.line	784; ".\Source\APP_Measure.c"	sForecast.PreBath_Counts = 0;
705                     	CLRF	(_sForecast + 4),0
706                     _00435_DS_:
707                     ;	;.line	788; ".\Source\APP_Measure.c"	if(!sActual.Actual_Start)
708                     	BTSZ	_sActual,0
709                     	JMP	_00439_DS_
710                     ;	;.line	791; ".\Source\APP_Measure.c"	if(Start_Algorithm())
711                     	CALL	_Start_Algorithm
712                     	.CHKPARA _Start_Algorithm 0
713                     	IORL	0x00
714                     	BTSZ	_STATUS,0
715                     	JMP	_00439_DS_
716                     ;	;.line	794; ".\Source\APP_Measure.c"	sForecast.Forecast_Start = TRUE;
717                     	BSF	_sForecast,0
718                     ;	;.line	796; ".\Source\APP_Measure.c"	sActual_Forecast.ActualForecast_SelectFlag = TRUE;
719                     	LDPR	(_sActual_Forecast + 0),0x00
720                     	BSF	_INDF0,2
721                     _00439_DS_:
722                     ;	;.line	807; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sADC.Centigrade250msTemp;
723                     	MVF	(_sADC + 13),0,0
724                     	MVF	(_sActual_Forecast + 3),1,0
725                     	MVF	(_sADC + 14),0,0
726                     	MVF	(_sActual_Forecast + 4),1,0
727                     _00441_DS_:
728                     ;	;.line	810; ".\Source\APP_Measure.c"	return sActual_Forecast.ActualForecast_SelectFlag;
729                     	MVL	0x00
730                     	BTSZ	_sActual_Forecast,2
731                     	MVL	0x01
732                     ;	;.line	811; ".\Source\APP_Measure.c"	}
733                     	RET	
734                     ; exit point of _ActualForecast_Select
735                     	.ENDFUNC	_ActualForecast_Select
736                     ;--------------------------------------------------------
737                     
738                     .globl _Forecast_To_Actual
739                     
740                     ;--------------------------------------------------------
741                     	.FUNC _Forecast_To_Actual:$r:0:0:$C:_Update_MaxTempImmediately:$C:_Update_MaxTemp3Min\
742                     
743                     ;--------------------------------------------------------
744                     ;	;.line	731; ".\Source\APP_Measure.c"	switch(eTo_Actual_Ways)
745                     _Forecast_To_Actual:	;Function start
746                     	MVF	_eTo_Actual_Ways,0,0
747                     	XORL	0x5a
748                     	BTSZ	_STATUS,0
749                     	JMP	_00409_DS_
750                     	MVL	0xa5
751                     	CPSE	_eTo_Actual_Ways,0
752                     	JMP	_00412_DS_
753                     ;	;.line	736; ".\Source\APP_Measure.c"	Update_MaxTempImmediately();
754                     	CALL	_Update_MaxTempImmediately
755                     	.CHKPARA _Update_MaxTempImmediately 0
756                     ;	;.line	737; ".\Source\APP_Measure.c"	break;
757                     	JMP	_00412_DS_
758                     _00409_DS_:
759                     ;	;.line	741; ".\Source\APP_Measure.c"	Update_MaxTemp3Min();
760                     	CALL	_Update_MaxTemp3Min
761                     	.CHKPARA _Update_MaxTemp3Min 0
762                     _00412_DS_:
763                     ;	;.line	746; ".\Source\APP_Measure.c"	}
764                     	RET	
765                     ; exit point of _Forecast_To_Actual
766                     	.ENDFUNC	_Forecast_To_Actual
767                     ;--------------------------------------------------------
768                     
769                     .globl _Update_MaxTemp3Min
770                     
771                     ;--------------------------------------------------------
772                     	.FUNC _Update_MaxTemp3Min:$r:0:0:$C:_Timer_Experience:$C:_Filter_ErrTemp\
773                     :$L:r0x10F6:$L:r0x10F7:$L:r0x10F8:$L:r0x10F9
774                     ;--------------------------------------------------------
775                     ;	;.line	614; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Start)
776                     _Update_MaxTemp3Min:	;Function start
777                     	BTSS	_sForecast,0
778                     	JMP	_00401_DS_
779                     ;	;.line	616; ".\Source\APP_Measure.c"	if(!sTimeStamp.Get_ForecastMeas_Start_Timer_Flag)
780                     	BTSZ	_sTimeStamp,0
781                     	JMP	_00372_DS_
782                     ;	;.line	618; ".\Source\APP_Measure.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = TRUE;
783                     	BSF	_sTimeStamp,0
784                     ;	;.line	619; ".\Source\APP_Measure.c"	sTimeStamp.ForecastMeas_Timer = sTimeStamp.Timer_Journey;
785                     	MVF	(_sTimeStamp + 2),0,0
786                     	MVF	(_sTimeStamp + 18),1,0
787                     	MVF	(_sTimeStamp + 3),0,0
788                     	MVF	(_sTimeStamp + 19),1,0
789                     	MVF	(_sTimeStamp + 4),0,0
790                     	MVF	(_sTimeStamp + 20),1,0
791                     	MVF	(_sTimeStamp + 5),0,0
792                     	MVF	(_sTimeStamp + 21),1,0
793                     _00372_DS_:
794                     ;	;.line	623; ".\Source\APP_Measure.c"	Result = Timer_Experience(sTimeStamp.ForecastMeas_Timer,7200);
795                     	MVF	(_sTimeStamp + 18),0,0
796                     	MVF	r0x10F6,1,0
797                     	MVF	(_sTimeStamp + 19),0,0
798                     	MVF	r0x10F7,1,0
799                     	MVF	(_sTimeStamp + 20),0,0
800                     	MVF	r0x10F8,1,0
801                     	MVF	(_sTimeStamp + 21),0,0
802                     	MVF	r0x10F9,1,0
803                     	MVL	0x20
804                     	MVF	_Timer_Experience_STK06,1,0
805                     	MVL	0x1c
806                     	MVF	_Timer_Experience_STK05,1,0
807                     	CLRF	_Timer_Experience_STK04,0
808                     	CLRF	_Timer_Experience_STK03,0
809                     	MVF	r0x10F6,0,0
810                     	MVF	_Timer_Experience_STK02,1,0
811                     	MVF	r0x10F7,0,0
812                     	MVF	_Timer_Experience_STK01,1,0
813                     	MVF	r0x10F8,0,0
814                     	MVF	_Timer_Experience_STK00,1,0
815                     	MVF	r0x10F9,0,0
816                     	CALL	_Timer_Experience
817                     	.CHKPARA _Timer_Experience 8
818                     ;	;.line	624; ".\Source\APP_Measure.c"	if(Result)
819                     	IORL	0x00
820                     	BTSZ	_STATUS,0
821                     	JMP	_00390_DS_
822                     ;	;.line	626; ".\Source\APP_Measure.c"	if(!sForecast.Update_MaxTemp3Min_Arrived)
823                     	BTSZ	_sForecast,1
824                     	JMP	_00376_DS_
825                     ;	;.line	628; ".\Source\APP_Measure.c"	sForecast.Update_MaxTemp3Min_Arrived = TRUE;
826                     	BSF	_sForecast,1
827                     ;	;.line	629; ".\Source\APP_Measure.c"	sTIMx.Cnt125ms = 0;
828                     	CLRF	(_sTIMx + 5),0
829                     	CLRF	(_sTIMx + 6),0
830                     ;	;.line	631; ".\Source\APP_Measure.c"	if(!sTempCal.Reset_From_CalOK)
831                     	BTSZ	_sTempCal,5
832                     	JMP	_00374_DS_
833                     ;	;.line	638; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_MeasuredTempActual;
834                     	MVL	0x03
835                     	MVF	_eBuzzer_Status,1,0
836                     _00374_DS_:
837                     ;	;.line	640; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = TRUE;
838                     	BSF	_sActual_Forecast,3
839                     _00376_DS_:
840                     ;	;.line	644; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
841                     	BTSS	_sActual_Forecast,3
842                     	JMP	_00403_DS_
843                     ;	;.line	647; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
844                     	BCF	_sActual_Forecast,3
845                     ;	;.line	650; ".\Source\APP_Measure.c"	Filter_ErrTemp();
846                     	CALL	_Filter_ErrTemp
847                     ;	;.line	652; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 <= 3680)
848                     	MVF	(_sActual_Forecast + 7),0,0
849                     	MVF	r0x10F6,1,0
850                     	MVF	(_sActual_Forecast + 8),0,0
851                     	MVF	r0x10F7,1,0
852                     	MVF	r0x10F6,0,0
853                     	ADDL	0x9f
854                     	MVL	0xf1
855                     	ADDC	r0x10F7,0,0
856                     	BTSZ	_STATUS,4
857                     	JMP	_00383_DS_
858                     ;	;.line	655; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 >= sActual_Forecast.CentigradeTempDisp)
859                     	MVF	(_sActual_Forecast + 3),0,0
860                     	MVF	r0x10F8,1,0
861                     	MVF	(_sActual_Forecast + 4),0,0
862                     	MVF	r0x10F9,1,0
863                     	MVF	r0x10F8,0,0
864                     	SUBF	r0x10F6,0,0
865                     	MVF	r0x10F9,0,0
866                     	SUBC	r0x10F7,0,0
867                     	BTSS	_STATUS,4
868                     	JMP	_00380_DS_
869                     ;	;.line	658; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
870                     	MVF	r0x10F6,0,0
871                     	MVF	(_sActual_Forecast + 3),1,0
872                     	MVF	r0x10F7,0,0
873                     	MVF	(_sActual_Forecast + 4),1,0
874                     	JMP	_00384_DS_
875                     _00380_DS_:
876                     ;	;.line	662; ".\Source\APP_Measure.c"	if(sActual_Forecast.CentigradeTempDisp > 3680)
877                     	MVF	r0x10F8,0,0
878                     	ADDL	0x9f
879                     	MVL	0xf1
880                     	ADDC	r0x10F9,0,0
881                     	BTSS	_STATUS,4
882                     	JMP	_00384_DS_
883                     ;	;.line	665; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = 3680;
884                     	MVL	0x60
885                     	MVF	(_sActual_Forecast + 3),1,0
886                     	MVL	0x0e
887                     	MVF	(_sActual_Forecast + 4),1,0
888                     	JMP	_00384_DS_
889                     _00383_DS_:
890                     ;	;.line	678; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
891                     	MVF	r0x10F6,0,0
892                     	MVF	(_sActual_Forecast + 3),1,0
893                     	MVF	r0x10F7,0,0
894                     	MVF	(_sActual_Forecast + 4),1,0
895                     _00384_DS_:
896                     ;	;.line	680; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
897                     	BSF	_sBleStatus,4
898                     ;	;.line	681; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
899                     	BSF	_sMemoryFlag,0
900                     	JMP	_00403_DS_
901                     _00390_DS_:
902                     ;	;.line	687; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
903                     	BTSS	_sActual_Forecast,3
904                     	JMP	_00403_DS_
905                     ;	;.line	690; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
906                     	BCF	_sActual_Forecast,3
907                     ;	;.line	692; ".\Source\APP_Measure.c"	Filter_ErrTemp();
908                     	CALL	_Filter_ErrTemp
909                     	JMP	_00403_DS_
910                     _00401_DS_:
911                     ;	;.line	696; ".\Source\APP_Measure.c"	else if(sActual.Actual_Start)
912                     	BTSZ	_sActual,0
913                     ;	;.line	699; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
914                     	BTSS	_sActual_Forecast,3
915                     	JMP	_00403_DS_
916                     ;	;.line	702; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
917                     	BCF	_sActual_Forecast,3
918                     ;	;.line	705; ".\Source\APP_Measure.c"	Filter_ErrTemp();
919                     	CALL	_Filter_ErrTemp
920                     ;	;.line	708; ".\Source\APP_Measure.c"	if(eBuzzer_Status == Buzzer_Silent)
921                     	TFSZ	_eBuzzer_Status,0
922                     	JMP	_00403_DS_
923                     ;	;.line	711; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
924                     	MVF	(_sActual_Forecast + 7),0,0
925                     	MVF	r0x10F6,1,0
926                     	MVF	(_sActual_Forecast + 8),0,0
927                     	MVF	r0x10F7,1,0
928                     	MVF	r0x10F6,0,0
929                     	SUBF	(_sActual_Forecast + 3),0,0
930                     	MVF	r0x10F7,0,0
931                     	SUBC	(_sActual_Forecast + 4),0,0
932                     	BTSZ	_STATUS,4
933                     	JMP	_00403_DS_
934                     ;	;.line	715; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
935                     	MVF	r0x10F6,0,0
936                     	MVF	(_sActual_Forecast + 3),1,0
937                     	MVF	r0x10F7,0,0
938                     	MVF	(_sActual_Forecast + 4),1,0
939                     ;	;.line	716; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
940                     	BSF	_sBleStatus,4
941                     ;	;.line	717; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
942                     	BSF	_sMemoryFlag,0
943                     _00403_DS_:
944                     ;	;.line	722; ".\Source\APP_Measure.c"	}
945                     	RET	
946                     ; exit point of _Update_MaxTemp3Min
947                     	.ENDFUNC	_Update_MaxTemp3Min
948                     ;--------------------------------------------------------
949                     
950                     .globl _Update_MaxTempImmediately
951                     
952                     ;--------------------------------------------------------
953                     	.FUNC _Update_MaxTempImmediately:$r:0:0:$C:_Filter_ErrTemp\
954                     :$L:r0x10EB:$L:r0x10EC:$L:r0x10ED:$L:r0x10EE:$L:r0x10EF\
955                     :$L:r0x10F0
956                     ;--------------------------------------------------------
957                     ;	;.line	584; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
958                     _Update_MaxTempImmediately:	;Function start
959                     	BTSS	_sActual_Forecast,3
960                     	JMP	_00366_DS_
961                     ;	;.line	587; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
962                     	BCF	_sActual_Forecast,3
963                     ;	;.line	590; ".\Source\APP_Measure.c"	Filter_ErrTemp();
964                     	CALL	_Filter_ErrTemp
965                     	.CHKPARA _Filter_ErrTemp 0
966                     ;	;.line	593; ".\Source\APP_Measure.c"	if((sActual_Forecast.Temp_T1 > sForecast.ForecastTemp) && (eBuzzer_Status == Buzzer_Silent))
967                     	MVF	(_sActual_Forecast + 7),0,0
968                     	MVF	r0x10EB,1,0
969                     	MVF	(_sActual_Forecast + 8),0,0
970                     	MVF	r0x10EC,1,0
971                     	MVF	(_sForecast + 22),0,0
972                     	MVF	r0x10ED,1,0
973                     	MVF	(_sForecast + 23),0,0
974                     	MVF	r0x10EE,1,0
975                     	MVF	(_sForecast + 24),0,0
976                     	MVF	r0x10EF,1,0
977                     	MVF	(_sForecast + 25),0,0
978                     	MVF	r0x10F0,1,0
979                     	MVF	r0x10EB,0,0
980                     	SUBF	r0x10ED,0,0
981                     	MVF	r0x10EC,0,0
982                     	SUBC	r0x10EE,0,0
983                     	MVL	0x00
984                     	SUBC	r0x10EF,0,0
985                     	MVL	0x00
986                     	SUBC	r0x10F0,0,0
987                     	BTSZ	_STATUS,4
988                     	JMP	_00366_DS_
989                     	TFSZ	_eBuzzer_Status,0
990                     	JMP	_00366_DS_
991                     ;	;.line	596; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
992                     	MVF	r0x10EB,0,0
993                     	SUBF	(_sActual_Forecast + 3),0,0
994                     	MVF	r0x10EC,0,0
995                     	SUBC	(_sActual_Forecast + 4),0,0
996                     	BTSZ	_STATUS,4
997                     	JMP	_00366_DS_
998                     ;	;.line	600; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
999                     	MVF	r0x10EB,0,0
1000                     	MVF	(_sActual_Forecast + 3),1,0
1001                     	MVF	r0x10EC,0,0
1002                     	MVF	(_sActual_Forecast + 4),1,0
1003                     _00366_DS_:
1004                     ;	;.line	604; ".\Source\APP_Measure.c"	}
1005                     	RET	
1006                     ; exit point of _Update_MaxTempImmediately
1007                     	.ENDFUNC	_Update_MaxTempImmediately
1008                     ;--------------------------------------------------------
1009                     
1010                     .globl _Forecast_Calculate
1011                     
1012                     ;--------------------------------------------------------
1013                     	.FUNC _Forecast_Calculate:$r:0:0:$C:_abs:$C:__mullong:$C:__divulong\
1014                     :$L:r0x10D3:$L:r0x10D4:$L:r0x10D5:$L:r0x10D6:$L:r0x10D8\
1015                     :$L:r0x10D7:$L:r0x10DC:$L:r0x10DA
1016                     ;--------------------------------------------------------
1017                     ;	;.line	508; ".\Source\APP_Measure.c"	K = abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp);
1018                     _Forecast_Calculate:	;Function start
1019                     	MVF	(_sForecast + 8),0,0
1020                     	SUBF	(_sADC + 13),0,0
1021                     	MVF	_abs_STK00,1,0
1022                     	MVF	(_sForecast + 9),0,0
1023                     	SUBC	(_sADC + 14),0,0
1024                     	CALL	_abs
1025                     	MVF	r0x10D6,1,0
1026                     	MVL	0x00
1027                     	BTSZ	r0x10D6,7
1028                     	MVL	0xff
1029                     	MVF	r0x10D8,1,0
1030                     	MVF	r0x10D7,1,0
1031                     ;	;.line	513; ".\Source\APP_Measure.c"	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
1032                     	RRF	_eMeasureMode,0,0
1033                     	BTSZ	_STATUS,0
1034                     	JMP	_00352_DS_
1035                     	MVL	0x02
1036                     	CPSE	_eMeasureMode,0
1037                     	JMP	_00353_DS_
1038                     _00352_DS_:
1039                     ;	;.line	516; ".\Source\APP_Measure.c"	if(sForecast.StartTemp >= 3400)
1040                     	MVF	(_sForecast + 10),0,0
1041                     	MVF	r0x10D3,1,0
1042                     	MVF	(_sForecast + 11),0,0
1043                     	MVF	r0x10D4,1,0
1044                     	MVF	r0x10D3,0,0
1045                     	ADDL	0xb8
1046                     	MVL	0xf2
1047                     	ADDC	r0x10D4,0,0
1048                     	BTSZ	_STATUS,4
1049                     	JMP	_00354_DS_
1050                     ;	;.line	521; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2800)
1051                     	MVF	r0x10D3,0,0
1052                     	ADDL	0x10
1053                     	MVL	0xf5
1054                     	ADDC	r0x10D4,0,0
1055                     	BTSS	_STATUS,4
1056                     	JMP	_00333_DS_
1057                     ;	;.line	523; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 3910 * K + 29000;
1058                     	MVFF	STK00,__mullong_STK06
1059                     	MVF	r0x10D6,0,0
1060                     	MVF	__mullong_STK05,1,0
1061                     	MVF	r0x10D7,0,0
1062                     	MVF	__mullong_STK04,1,0
1063                     	MVF	r0x10D8,0,0
1064                     	MVF	__mullong_STK03,1,0
1065                     	MVL	0x46
1066                     	MVF	__mullong_STK02,1,0
1067                     	MVL	0x0f
1068                     	MVF	__mullong_STK01,1,0
1069                     	CLRF	__mullong_STK00,0
1070                     	MVL	0x00
1071                     	CALL	__mullong
1072                     	.CHKPARA __mullong 8
1073                     	MVF	r0x10DC,1,0
1074                     	MVF	STK02,0,0
1075                     	ADDL	0x48
1076                     	MVF	(_sForecast + 22),1,0
1077                     	MVL	0x71
1078                     	ADDC	STK01,0,0
1079                     	MVF	(_sForecast + 23),1,0
1080                     	MVL	0x00
1081                     	ADDC	STK00,0,0
1082                     	MVF	(_sForecast + 24),1,0
1083                     	MVL	0x00
1084                     	ADDC	r0x10DC,0,0
1085                     	MVF	(_sForecast + 25),1,0
1086                     	JMP	_00354_DS_
1087                     _00333_DS_:
1088                     ;	;.line	526; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2200)
1089                     	MVF	r0x10D3,0,0
1090                     	ADDL	0x68
1091                     	MVL	0xf7
1092                     	ADDC	r0x10D4,0,0
1093                     	BTSS	_STATUS,4
1094                     	JMP	_00330_DS_
1095                     ;	;.line	528; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4150 * K + 33000;
1096                     	MVFF	STK00,__mullong_STK06
1097                     	MVF	r0x10D6,0,0
1098                     	MVF	__mullong_STK05,1,0
1099                     	MVF	r0x10D7,0,0
1100                     	MVF	__mullong_STK04,1,0
1101                     	MVF	r0x10D8,0,0
1102                     	MVF	__mullong_STK03,1,0
1103                     	MVL	0x36
1104                     	MVF	__mullong_STK02,1,0
1105                     	MVL	0x10
1106                     	MVF	__mullong_STK01,1,0
1107                     	CLRF	__mullong_STK00,0
1108                     	MVL	0x00
1109                     	CALL	__mullong
1110                     	MVF	r0x10DC,1,0
1111                     	MVF	STK02,0,0
1112                     	ADDL	0xe8
1113                     	MVF	(_sForecast + 22),1,0
1114                     	MVL	0x80
1115                     	ADDC	STK01,0,0
1116                     	MVF	(_sForecast + 23),1,0
1117                     	MVL	0x00
1118                     	ADDC	STK00,0,0
1119                     	MVF	(_sForecast + 24),1,0
1120                     	MVL	0x00
1121                     	ADDC	r0x10DC,0,0
1122                     	MVF	(_sForecast + 25),1,0
1123                     	JMP	_00354_DS_
1124                     _00330_DS_:
1125                     ;	;.line	531; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 1600)
1126                     	MVF	r0x10D3,0,0
1127                     	ADDL	0xc0
1128                     	MVL	0xf9
1129                     	ADDC	r0x10D4,0,0
1130                     	BTSS	_STATUS,4
1131                     	JMP	_00327_DS_
1132                     ;	;.line	533; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4390 * K + 37000;
1133                     	MVFF	STK00,__mullong_STK06
1134                     	MVF	r0x10D6,0,0
1135                     	MVF	__mullong_STK05,1,0
1136                     	MVF	r0x10D7,0,0
1137                     	MVF	__mullong_STK04,1,0
1138                     	MVF	r0x10D8,0,0
1139                     	MVF	__mullong_STK03,1,0
1140                     	MVL	0x26
1141                     	MVF	__mullong_STK02,1,0
1142                     	MVL	0x11
1143                     	MVF	__mullong_STK01,1,0
1144                     	CLRF	__mullong_STK00,0
1145                     	MVL	0x00
1146                     	CALL	__mullong
1147                     	MVF	r0x10DA,1,0
1148                     	MVF	STK02,0,0
1149                     	ADDL	0x88
1150                     	MVF	(_sForecast + 22),1,0
1151                     	MVL	0x90
1152                     	ADDC	STK01,0,0
1153                     	MVF	(_sForecast + 23),1,0
1154                     	MVL	0x00
1155                     	ADDC	STK00,0,0
1156                     	MVF	(_sForecast + 24),1,0
1157                     	MVL	0x00
1158                     	ADDC	r0x10DA,0,0
1159                     	MVF	(_sForecast + 25),1,0
1160                     	JMP	_00354_DS_
1161                     _00327_DS_:
1162                     ;	;.line	539; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4630 * K + 41000;
1163                     	MVFF	STK00,__mullong_STK06
1164                     	MVF	r0x10D6,0,0
1165                     	MVF	__mullong_STK05,1,0
1166                     	MVF	r0x10D7,0,0
1167                     	MVF	__mullong_STK04,1,0
1168                     	MVF	r0x10D8,0,0
1169                     	MVF	__mullong_STK03,1,0
1170                     	MVL	0x16
1171                     	MVF	__mullong_STK02,1,0
1172                     	MVL	0x12
1173                     	MVF	__mullong_STK01,1,0
1174                     	CLRF	__mullong_STK00,0
1175                     	MVL	0x00
1176                     	CALL	__mullong
1177                     	MVF	r0x10DA,1,0
1178                     	MVF	STK02,0,0
1179                     	ADDL	0x28
1180                     	MVF	(_sForecast + 22),1,0
1181                     	MVL	0xa0
1182                     	ADDC	STK01,0,0
1183                     	MVF	(_sForecast + 23),1,0
1184                     	MVL	0x00
1185                     	ADDC	STK00,0,0
1186                     	MVF	(_sForecast + 24),1,0
1187                     	MVL	0x00
1188                     	ADDC	r0x10DA,0,0
1189                     	MVF	(_sForecast + 25),1,0
1190                     	JMP	_00354_DS_
1191                     _00353_DS_:
1192                     ;	;.line	543; ".\Source\APP_Measure.c"	else if(eMeasureMode == Underarm_Mode)
1193                     	DCSZ	_eMeasureMode,0,0
1194                     	JMP	_00354_DS_
1195                     ;	;.line	546; ".\Source\APP_Measure.c"	if(sForecast.StartTemp >= 3400)
1196                     	MVF	(_sForecast + 10),0,0
1197                     	MVF	r0x10D3,1,0
1198                     	MVF	(_sForecast + 11),0,0
1199                     	MVF	r0x10D4,1,0
1200                     	MVF	r0x10D3,0,0
1201                     	ADDL	0xb8
1202                     	MVL	0xf2
1203                     	ADDC	r0x10D4,0,0
1204                     	BTSZ	_STATUS,4
1205                     	JMP	_00354_DS_
1206                     ;	;.line	551; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2800)
1207                     	MVF	r0x10D3,0,0
1208                     	ADDL	0x10
1209                     	MVL	0xf5
1210                     	ADDC	r0x10D4,0,0
1211                     	BTSS	_STATUS,4
1212                     	JMP	_00345_DS_
1213                     ;	;.line	553; ".\Source\APP_Measure.c"	sForecast.ForecastTemp =6900 * K + 56000;
1214                     	MVFF	STK00,__mullong_STK06
1215                     	MVF	r0x10D6,0,0
1216                     	MVF	__mullong_STK05,1,0
1217                     	MVF	r0x10D7,0,0
1218                     	MVF	__mullong_STK04,1,0
1219                     	MVF	r0x10D8,0,0
1220                     	MVF	__mullong_STK03,1,0
1221                     	MVL	0xf4
1222                     	MVF	__mullong_STK02,1,0
1223                     	MVL	0x1a
1224                     	MVF	__mullong_STK01,1,0
1225                     	CLRF	__mullong_STK00,0
1226                     	MVL	0x00
1227                     	CALL	__mullong
1228                     	MVF	r0x10DC,1,0
1229                     	MVF	STK02,0,0
1230                     	ADDL	0xc0
1231                     	MVF	(_sForecast + 22),1,0
1232                     	MVL	0xda
1233                     	ADDC	STK01,0,0
1234                     	MVF	(_sForecast + 23),1,0
1235                     	MVL	0x00
1236                     	ADDC	STK00,0,0
1237                     	MVF	(_sForecast + 24),1,0
1238                     	MVL	0x00
1239                     	ADDC	r0x10DC,0,0
1240                     	MVF	(_sForecast + 25),1,0
1241                     	JMP	_00354_DS_
1242                     _00345_DS_:
1243                     ;	;.line	556; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2200)
1244                     	MVF	r0x10D3,0,0
1245                     	ADDL	0x68
1246                     	MVL	0xf7
1247                     	ADDC	r0x10D4,0,0
1248                     	BTSS	_STATUS,4
1249                     	JMP	_00342_DS_
1250                     ;	;.line	558; ".\Source\APP_Measure.c"	sForecast.ForecastTemp =  7000 * K + 60000;
1251                     	MVFF	STK00,__mullong_STK06
1252                     	MVF	r0x10D6,0,0
1253                     	MVF	__mullong_STK05,1,0
1254                     	MVF	r0x10D7,0,0
1255                     	MVF	__mullong_STK04,1,0
1256                     	MVF	r0x10D8,0,0
1257                     	MVF	__mullong_STK03,1,0
1258                     	MVL	0x58
1259                     	MVF	__mullong_STK02,1,0
1260                     	MVL	0x1b
1261                     	MVF	__mullong_STK01,1,0
1262                     	CLRF	__mullong_STK00,0
1263                     	MVL	0x00
1264                     	CALL	__mullong
1265                     	MVF	r0x10DC,1,0
1266                     	MVF	STK02,0,0
1267                     	ADDL	0x60
1268                     	MVF	(_sForecast + 22),1,0
1269                     	MVL	0xea
1270                     	ADDC	STK01,0,0
1271                     	MVF	(_sForecast + 23),1,0
1272                     	MVL	0x00
1273                     	ADDC	STK00,0,0
1274                     	MVF	(_sForecast + 24),1,0
1275                     	MVL	0x00
1276                     	ADDC	r0x10DC,0,0
1277                     	MVF	(_sForecast + 25),1,0
1278                     	JMP	_00354_DS_
1279                     _00342_DS_:
1280                     ;	;.line	561; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 1600)
1281                     	MVF	r0x10D3,0,0
1282                     	ADDL	0xc0
1283                     	MVL	0xf9
1284                     	ADDC	r0x10D4,0,0
1285                     	BTSS	_STATUS,4
1286                     	JMP	_00339_DS_
1287                     ;	;.line	563; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 7100 * K + 64000;
1288                     	MVFF	STK00,__mullong_STK06
1289                     	MVF	r0x10D6,0,0
1290                     	MVF	__mullong_STK05,1,0
1291                     	MVF	r0x10D7,0,0
1292                     	MVF	__mullong_STK04,1,0
1293                     	MVF	r0x10D8,0,0
1294                     	MVF	__mullong_STK03,1,0
1295                     	MVL	0xbc
1296                     	MVF	__mullong_STK02,1,0
1297                     	MVL	0x1b
1298                     	MVF	__mullong_STK01,1,0
1299                     	CLRF	__mullong_STK00,0
1300                     	MVL	0x00
1301                     	CALL	__mullong
1302                     	MVF	r0x10DA,1,0
1303                     	MVF	STK02,0,0
1304                     	MVF	(_sForecast + 22),1,0
1305                     	MVF	STK01,0,0
1306                     	ADDL	0xfa
1307                     	MVF	(_sForecast + 23),1,0
1308                     	MVL	0x00
1309                     	ADDC	STK00,0,0
1310                     	MVF	(_sForecast + 24),1,0
1311                     	MVL	0x00
1312                     	ADDC	r0x10DA,0,0
1313                     	MVF	(_sForecast + 25),1,0
1314                     	JMP	_00354_DS_
1315                     _00339_DS_:
1316                     ;	;.line	569; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 7200 * K + 68000;
1317                     	MVFF	STK00,__mullong_STK06
1318                     	MVF	r0x10D6,0,0
1319                     	MVF	__mullong_STK05,1,0
1320                     	MVF	r0x10D7,0,0
1321                     	MVF	__mullong_STK04,1,0
1322                     	MVF	r0x10D8,0,0
1323                     	MVF	__mullong_STK03,1,0
1324                     	MVL	0x20
1325                     	MVF	__mullong_STK02,1,0
1326                     	MVL	0x1c
1327                     	MVF	__mullong_STK01,1,0
1328                     	CLRF	__mullong_STK00,0
1329                     	MVL	0x00
1330                     	CALL	__mullong
1331                     	MVF	r0x10D6,1,0
1332                     	MVF	STK02,0,0
1333                     	ADDL	0xa0
1334                     	MVF	(_sForecast + 22),1,0
1335                     	MVL	0x09
1336                     	ADDC	STK01,0,0
1337                     	MVF	(_sForecast + 23),1,0
1338                     	MVL	0x01
1339                     	ADDC	STK00,0,0
1340                     	MVF	(_sForecast + 24),1,0
1341                     	MVL	0x00
1342                     	ADDC	r0x10D6,0,0
1343                     	MVF	(_sForecast + 25),1,0
1344                     _00354_DS_:
1345                     ;	;.line	573; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = (sForecast.ForecastTemp + 500) / 1000;
1346                     	MVF	(_sForecast + 22),0,0
1347                     	ADDL	0xf4
1348                     	MVF	r0x10D3,1,0
1349                     	MVL	0x01
1350                     	ADDC	(_sForecast + 23),0,0
1351                     	MVF	r0x10D4,1,0
1352                     	MVL	0x00
1353                     	ADDC	(_sForecast + 24),0,0
1354                     	MVF	r0x10D5,1,0
1355                     	MVL	0x00
1356                     	ADDC	(_sForecast + 25),0,0
1357                     	MVF	r0x10D6,1,0
1358                     	MVL	0xe8
1359                     	MVF	__divulong_STK06,1,0
1360                     	MVL	0x03
1361                     	MVF	__divulong_STK05,1,0
1362                     	CLRF	__divulong_STK04,0
1363                     	CLRF	__divulong_STK03,0
1364                     	MVF	r0x10D3,0,0
1365                     	MVF	__divulong_STK02,1,0
1366                     	MVF	r0x10D4,0,0
1367                     	MVF	__divulong_STK01,1,0
1368                     	MVF	r0x10D5,0,0
1369                     	MVF	__divulong_STK00,1,0
1370                     	MVF	r0x10D6,0,0
1371                     	CALL	__divulong
1372                     	.CHKPARA __divulong 8
1373                     	MVF	(_sForecast + 25),1,0
1374                     	MVF	STK00,0,0
1375                     	MVF	(_sForecast + 24),1,0
1376                     	MVF	STK01,0,0
1377                     	MVF	(_sForecast + 23),1,0
1378                     	MVF	STK02,0,0
1379                     	MVF	(_sForecast + 22),1,0
1380                     ;	;.line	574; ".\Source\APP_Measure.c"	}
1381                     	RET	
1382                     ; exit point of _Forecast_Calculate
1383                     	.ENDFUNC	_Forecast_Calculate
1384                     ;--------------------------------------------------------
1385                     
1386                     .globl _Forecast_Calculate_Conditions
1387                     
1388                     ;--------------------------------------------------------
1389                     	.FUNC _Forecast_Calculate_Conditions:$r:1:0:$C:_abs\
1390                     :$L:r0x10CF:$L:r0x10D1:$L:r0x10D2
1391                     ;--------------------------------------------------------
1392                     ;	;.line	465; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer >= 3)
1393                     _Forecast_Calculate_Conditions:	;Function start
1394                     	MVL	0x02
1395                     	CPSG	(_sForecast + 1),0
1396                     	JMP	_00320_DS_
1397                     ;	;.line	468; ".\Source\APP_Measure.c"	if(abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp) >= 0)
1398                     	MVF	(_sForecast + 8),0,0
1399                     	SUBF	(_sADC + 13),0,0
1400                     	MVF	_abs_STK00,1,0
1401                     	MVF	(_sForecast + 9),0,0
1402                     	SUBC	(_sADC + 14),0,0
1403                     	CALL	_abs
1404                     	BTSZ	_WREG,7
1405                     	JMP	_00317_DS_
1406                     ;	;.line	472; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp < /*45*/40 + sForecast.Prior1sForecastTemp)
1407                     	MVF	(_sForecast + 8),0,0
1408                     	ADDL	0x28
1409                     	MVF	r0x10D1,1,0
1410                     	MVL	0x00
1411                     	ADDC	(_sForecast + 9),0,0
1412                     	MVF	r0x10D2,1,0
1413                     	MVF	r0x10D1,0,0
1414                     	SUBF	(_sADC + 13),0,0
1415                     	MVF	r0x10D2,0,0
1416                     	SUBC	(_sADC + 14),0,0
1417                     	BTSZ	_STATUS,4
1418                     	JMP	_00314_DS_
1419                     ;	;.line	475; ".\Source\APP_Measure.c"	if(++sForecast.Forecast_Counts >= 3)
1420                     	INF	(_sForecast + 5),0,0
1421                     	MVF	r0x10CF,1,0
1422                     	MVF	(_sForecast + 5),1,0
1423                     	MVL	0x02
1424                     	CPSG	r0x10CF,0
1425                     	JMP	_00320_DS_
1426                     ;	;.line	478; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 3;
1427                     	MVL	0x03
1428                     	MVF	(_sForecast + 5),1,0
1429                     ;	;.line	479; ".\Source\APP_Measure.c"	sForecast.EndTemp = sADC.Centigrade250msTemp/* / 10 * 10*/;
1430                     	MVF	(_sADC + 13),0,0
1431                     	MVF	(_sForecast + 20),1,0
1432                     	MVF	(_sADC + 14),0,0
1433                     	MVF	(_sForecast + 21),1,0
1434                     ;	;.line	480; ".\Source\APP_Measure.c"	return TRUE;
1435                     	MVL	0x01
1436                     	JMP	_00321_DS_
1437                     _00314_DS_:
1438                     ;	;.line	486; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 0;
1439                     	CLRF	(_sForecast + 5),0
1440                     	JMP	_00320_DS_
1441                     _00317_DS_:
1442                     ;	;.line	492; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 0;
1443                     	CLRF	(_sForecast + 5),0
1444                     _00320_DS_:
1445                     ;	;.line	495; ".\Source\APP_Measure.c"	return FALSE;
1446                     	MVL	0x00
1447                     _00321_DS_:
1448                     ;	;.line	496; ".\Source\APP_Measure.c"	}
1449                     	RET	
1450                     ; exit point of _Forecast_Calculate_Conditions
1451                     	.ENDFUNC	_Forecast_Calculate_Conditions
1452                     ;--------------------------------------------------------
1453                     
1454                     .globl _Temp_Drop
1455                     
1456                     ;--------------------------------------------------------
1457                     	.FUNC _Temp_Drop:$r:1:0:$L:r0x10CB:$L:r0x10CC:$L:r0x10CD:$L:r0x10CE
1458                     ;--------------------------------------------------------
1459                     ;	;.line	438; ".\Source\APP_Measure.c"	if(sForecast.Prior250msForecastTemp > 3 + sADC.Centigrade250msTemp)
1460                     _Temp_Drop:	;Function start
1461                     	MVF	(_sForecast + 6),0,0
1462                     	MVF	r0x10CB,1,0
1463                     	MVF	(_sForecast + 7),0,0
1464                     	MVF	r0x10CC,1,0
1465                     	MVF	(_sADC + 13),0,0
1466                     	ADDL	0x03
1467                     	MVF	r0x10CD,1,0
1468                     	MVL	0x00
1469                     	ADDC	(_sADC + 14),0,0
1470                     	MVF	r0x10CE,1,0
1471                     	MVF	r0x10CB,0,0
1472                     	SUBF	r0x10CD,0,0
1473                     	MVF	r0x10CC,0,0
1474                     	SUBC	r0x10CE,0,0
1475                     	BTSZ	_STATUS,4
1476                     	JMP	_00304_DS_
1477                     ;	;.line	441; ".\Source\APP_Measure.c"	if(++sForecast.Drop_Counts >= 5)
1478                     	INF	(_sForecast + 3),0,0
1479                     	MVF	r0x10CB,1,0
1480                     	MVF	(_sForecast + 3),1,0
1481                     	MVL	0x04
1482                     	CPSG	r0x10CB,0
1483                     	JMP	_00305_DS_
1484                     ;	;.line	444; ".\Source\APP_Measure.c"	sForecast.Drop_Counts = 5;
1485                     	MVL	0x05
1486                     	MVF	(_sForecast + 3),1,0
1487                     ;	;.line	445; ".\Source\APP_Measure.c"	return TRUE;
1488                     	MVL	0x01
1489                     	JMP	_00306_DS_
1490                     _00304_DS_:
1491                     ;	;.line	451; ".\Source\APP_Measure.c"	sForecast.Drop_Counts = 0;
1492                     	CLRF	(_sForecast + 3),0
1493                     _00305_DS_:
1494                     ;	;.line	454; ".\Source\APP_Measure.c"	return FALSE;
1495                     	MVL	0x00
1496                     _00306_DS_:
1497                     ;	;.line	455; ".\Source\APP_Measure.c"	}
1498                     	RET	
1499                     ; exit point of _Temp_Drop
1500                     	.ENDFUNC	_Temp_Drop
1501                     ;--------------------------------------------------------
1502                     
1503                     .globl _Start_Algorithm
1504                     
1505                     ;--------------------------------------------------------
1506                     	.FUNC _Start_Algorithm:$r:1:0:$L:r0x10C3:$L:r0x10C4:$L:r0x10C5:$L:r0x10C6
1507                     ;--------------------------------------------------------
1508                     ;	;.line	374; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp > 10 + sForecast.Prior250msForecastTemp)
1509                     _Start_Algorithm:	;Function start
1510                     	MVF	(_sForecast + 6),0,0
1511                     	ADDL	0x0a
1512                     	MVF	r0x10C5,1,0
1513                     	MVL	0x00
1514                     	ADDC	(_sForecast + 7),0,0
1515                     	MVF	r0x10C6,1,0
1516                     	MVF	(_sADC + 13),0,0
1517                     	SUBF	r0x10C5,0,0
1518                     	MVF	(_sADC + 14),0,0
1519                     	SUBC	r0x10C6,0,0
1520                     	BTSZ	_STATUS,4
1521                     	JMP	_00292_DS_
1522                     ;	;.line	377; ".\Source\APP_Measure.c"	if(!sForecast.FlagStartAlgorithmCounts)
1523                     	BTSZ	_sForecast,2
1524                     	JMP	_00285_DS_
1525                     ;	;.line	379; ".\Source\APP_Measure.c"	sForecast.FlagStartAlgorithmCounts = TRUE;
1526                     	BSF	_sForecast,2
1527                     ;	;.line	381; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
1528                     	MVF	(_sForecast + 6),0,0
1529                     	MVF	(_sForecast + 18),1,0
1530                     	MVF	(_sForecast + 7),0,0
1531                     	MVF	(_sForecast + 19),1,0
1532                     	JMP	_00286_DS_
1533                     _00285_DS_:
1534                     ;	;.line	385; ".\Source\APP_Measure.c"	for(i = 0;i < 3;i++)
1535                     	CLRF	r0x10C3,0
1536                     _00294_DS_:
1537                     ;	;.line	387; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[i] = sForecast.StartAlgorithmTemp[i + 1];
1538                     	MVF	r0x10C3,0,0
1539                     	MULL	0x02
1540                     	MVF	_PRODL,0,0
1541                     	ADDL	(_sForecast + 12)
1542                     	MVF	r0x10C4,1,0
1543                     	MVL	high (_sForecast + 12)
1544                     	BTSZ	_STATUS,4
1545                     	ADDL	0x01
1546                     	MVF	r0x10C5,1,0
1547                     	INF	r0x10C3,0,0
1548                     	MULL	0x02
1549                     	MVF	_PRODL,0,0
1550                     	LDPR	(_sForecast + 12),0
1551                     	MVFF	_PLUSW0,STK00
1552                     	INF	_WREG,0,0
1553                     	MVFF	_PLUSW0,STK01
1554                     	MVF	r0x10C4,0,0
1555                     	MVF	_FSR0L,1,0
1556                     	MVF	r0x10C5,0,0
1557                     	MVF	_FSR0H,1,0
1558                     	MVF	STK00,0,0
1559                     	MVF	_POINC0,1,0
1560                     	MVF	STK01,0,0
1561                     	MVF	_INDF0,1,0
1562                     ;	;.line	385; ".\Source\APP_Measure.c"	for(i = 0;i < 3;i++)
1563                     	INF	r0x10C3,1,0
1564                     	MVL	0x02
1565                     	CPSG	r0x10C3,0
1566                     	JMP	_00294_DS_
1567                     ;	;.line	390; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
1568                     	MVF	(_sForecast + 6),0,0
1569                     	MVF	(_sForecast + 18),1,0
1570                     	MVF	(_sForecast + 7),0,0
1571                     	MVF	(_sForecast + 19),1,0
1572                     _00286_DS_:
1573                     ;	;.line	394; ".\Source\APP_Measure.c"	if(sForecast.Start_Counts++ >= 4)
1574                     	MVF	(_sForecast + 2),0,0
1575                     	MVF	r0x10C3,1,0
1576                     	INF	_WREG,0,0
1577                     	MVF	(_sForecast + 2),1,0
1578                     	MVL	0x03
1579                     	CPSG	r0x10C3,0
1580                     	JMP	_00293_DS_
1581                     ;	;.line	397; ".\Source\APP_Measure.c"	sForecast.Start_Counts = 4;
1582                     	MVL	0x04
1583                     	MVF	(_sForecast + 2),1,0
1584                     ;	;.line	409; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp >= 3100)
1585                     	MVF	(_sADC + 13),0,0
1586                     	ADDL	0xe4
1587                     	MVL	0xf3
1588                     	ADDC	(_sADC + 14),0,0
1589                     	BTSS	_STATUS,4
1590                     	JMP	_00293_DS_
1591                     ;	;.line	412; ".\Source\APP_Measure.c"	sForecast.StartTemp = sForecast.StartAlgorithmTemp[0];
1592                     	MVF	(_sForecast + 12),0,0
1593                     	MVF	(_sForecast + 10),1,0
1594                     	MVF	(_sForecast + 13),0,0
1595                     	MVF	(_sForecast + 11),1,0
1596                     ;	;.line	413; ".\Source\APP_Measure.c"	return TRUE;
1597                     	MVL	0x01
1598                     	JMP	_00296_DS_
1599                     _00292_DS_:
1600                     ;	;.line	421; ".\Source\APP_Measure.c"	sForecast.Start_Counts = 1;
1601                     	MVL	0x01
1602                     	MVF	(_sForecast + 2),1,0
1603                     ;	;.line	423; ".\Source\APP_Measure.c"	sForecast.FlagStartAlgorithmCounts = FALSE;
1604                     	LDPR	(_sForecast + 0),0x00
1605                     	BCF	_INDF0,2
1606                     _00293_DS_:
1607                     ;	;.line	426; ".\Source\APP_Measure.c"	return FALSE;
1608                     	MVL	0x00
1609                     _00296_DS_:
1610                     ;	;.line	427; ".\Source\APP_Measure.c"	}
1611                     	RET	
1612                     ; exit point of _Start_Algorithm
1613                     	.ENDFUNC	_Start_Algorithm
1614                     ;--------------------------------------------------------
1615                     
1616                     .globl _Actual_Measure
1617                     
1618                     ;--------------------------------------------------------
1619                     	.FUNC _Actual_Measure:$r:0:0:$C:_Get_1sTemp:$C:_Centigrade_Convert_Fahrenheit:$C:_PresetMeasTime\
1620                     
1621                     ;--------------------------------------------------------
1622                     ;	;.line	241; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag && sActual_Forecast.AF_Start && (eMeasureMode == Bath_Mode))
1623                     _Actual_Measure:	;Function start
1624 0732 [00] [2] 0012 A5CC 	BTSZ	_sTIMx,2
1625 0734 [00] [2] B19F      	BTSS	_sActual_Forecast,0
1626 0735 [00] [2] 7828      	JMP	_00278_DS_
1627 0736 [00] [2] 0603      	MVL	0x03
1628 0737 [00] [2] 6D02      	CPSE	_eMeasureMode,0
1629 0738 [00] [2] 7825      	JMP	_00278_DS_
1630                     ;	;.line	244; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = 0;
1631 0739 [00] [2] 85CC      	BCF	_sTIMx,2
1632                     ;	;.line	255; ".\Source\APP_Measure.c"	if(Get_1sTemp())
1633 073A [00] [2] C824      	CALL	_Get_1sTemp
1634                     	.CHKPARA _Get_1sTemp 0
1635 073B [00] [2] 0200      	IORL	0x00
1636 073C [00] [2] 71        	BTSZ	_STATUS,0
1637 073C [00] 1D        	JMP	_00271_DS_
1638                     ;	;.line	261; ".\Source\APP_Measure.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sADC.Centigrade250msTemp);
1639 073D [00] [2] 6550      	MVF	(_sADC + 13),0,0
1640 073E [00] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
1641 073F [01] [2] 6551      	MVF	(_sADC + 14),0,0
1642 0740 [01] [2] CDFF      	CALL	_Centigrade_Convert_Fahrenheit
1643                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1644 0741 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
1645 0743 [00] [2] 6420      	MVF	STK00,0,0
1646 0744 [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
1647                     ;	;.line	266; ".\Source\APP_Measure.c"	sActual.Actual_Start = TRUE;
1648 0745 [00] [2] 9171      	BSF	_sActual,0
1649                     ;	;.line	272; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.ConvertedTempDisp;
1650 0746 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1651 0747 [00] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
1652 0748 [00] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1653 0749 [00] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
1654                     ;	;.line	274; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
1655 074A [00] [2] 91C6      	BSF	_sMemoryFlag,0
1656                     ;	;.line	279; ".\Source\APP_Measure.c"	if(PresetMeasTime())
1657 074B [00] [2] C820      	CALL	_PresetMeasTime
1658                     	.CHKPARA _PresetMeasTime 0
1659 074C [00] [2] 0200      	IORL	0x00
1660 074D [00] [2] 71        	BTSZ	_STATUS,0
1661 074D [00] 06        	JMP	_00266_DS_
1662                     ;	;.line	282; ".\Source\APP_Measure.c"	sActual.ActualTime++;
1663 074E [00] [2] 3B73      	INF	(_sActual + 2),1,0
1664 074F [00] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
1665                     ;	;.line	310; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
1666 0750 [00] [2] 6774      	MVF	(_sActual + 3),1,0
1667 0751 [00] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
1668 0752 [00] [2] 6775      	MVF	(_sActual + 4),1,0
1669 0753 [00] [2] 7801      	JMP	_00267_DS_
1670                     _00266_DS_:
1671                     ;	;.line	315; ".\Source\APP_Measure.c"	sActual.ActualTime++;
1672 0754 [00] [2] 3B73      	INF	(_sActual + 2),1,0
1673                     _00267_DS_:
1674                     ;	;.line	318; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ResetTimeFlag)
1675 0755 [00] [2] A99F      	BTSZ	_sActual_Forecast,4
1676 0756 [00] [2] 7803      	JMP	_00271_DS_
1677                     ;	;.line	320; ".\Source\APP_Measure.c"	sActual_Forecast.ResetTimeFlag = TRUE;
1678 0757 [00] [2] 999F      	BSF	_sActual_Forecast,4
1679                     ;	;.line	323; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
1680 0758 [00] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
1681                     ;	;.line	325; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
1682 0759 [00] [2] 0D73      	CLRF	(_sActual + 2),0
1683                     _00271_DS_:
1684                     ;	;.line	355; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
1685 075A [00] [2] BB90      	BTSS	_sTempCal,5
1686 075B [00] [2] 7802      	JMP	_00278_DS_
1687                     ;	;.line	359; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
1688 075C [00] [2] 0601      	MVL	0x01
1689 075D [00] [2] 673B      	MVF	(_ERR + 6),1,0
1690                     _00278_DS_:
1691                     ;	;.line	362; ".\Source\APP_Measure.c"	}
1692 075E [00] [2] 000A      	RET	
1693                     ; exit point of _Actual_Measure
1694                     	.ENDFUNC	_Actual_Measure
1695                     ;--------------------------------------------------------
1696                     
1697                     .globl _Filter_ErrTemp
1698                     
1699                     ;--------------------------------------------------------
1700                     	.FUNC _Filter_ErrTemp:$r:0:0:$L:r0x10B9:$L:r0x10BA:$L:r0x10BB:$L:r0x10BC
1701                     ;--------------------------------------------------------
1702                     ;	;.line	217; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = sADC.Centigrade250msTemp;
1703                     _Filter_ErrTemp:	;Function start
1704                     	MVF	(_sADC + 13),0,0
1705                     	MVF	(_sActual_Forecast + 11),1,0
1706                     	MVF	(_sADC + 14),0,0
1707                     	MVF	(_sActual_Forecast + 12),1,0
1708                     ;	;.line	219; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T2)
1709                     	MVF	(_sActual_Forecast + 9),0,0
1710                     	MVF	r0x10BB,1,0
1711                     	MVF	(_sActual_Forecast + 10),0,0
1712                     	MVF	r0x10BC,1,0
1713                     	MVF	r0x10BB,0,0
1714                     	SUBF	(_sADC + 13),0,0
1715                     	MVF	r0x10BC,0,0
1716                     	SUBC	(_sADC + 14),0,0
1717                     	BTSS	_STATUS,4
1718                     	JMP	_00258_DS_
1719                     ;	;.line	221; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T1 = sActual_Forecast.Temp_T2;
1720                     	MVF	r0x10BB,0,0
1721                     	MVF	(_sActual_Forecast + 7),1,0
1722                     	MVF	r0x10BC,0,0
1723                     	MVF	(_sActual_Forecast + 8),1,0
1724                     ;	;.line	222; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
1725                     	MVF	(_sActual_Forecast + 11),0,0
1726                     	MVF	(_sActual_Forecast + 9),1,0
1727                     	MVF	(_sActual_Forecast + 12),0,0
1728                     	MVF	(_sActual_Forecast + 10),1,0
1729                     ;	;.line	223; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = 0;
1730                     	CLRF	(_sActual_Forecast + 11),0
1731                     	CLRF	(_sActual_Forecast + 12),0
1732                     	JMP	_00260_DS_
1733                     _00258_DS_:
1734                     ;	;.line	225; ".\Source\APP_Measure.c"	else if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T1)
1735                     	MVF	(_sActual_Forecast + 11),0,0
1736                     	MVF	r0x10B9,1,0
1737                     	MVF	(_sActual_Forecast + 12),0,0
1738                     	MVF	r0x10BA,1,0
1739                     	MVF	(_sActual_Forecast + 7),0,0
1740                     	SUBF	r0x10B9,0,0
1741                     	MVF	(_sActual_Forecast + 8),0,0
1742                     	SUBC	r0x10BA,0,0
1743                     	BTSS	_STATUS,4
1744                     	JMP	_00260_DS_
1745                     ;	;.line	227; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
1746                     	MVF	r0x10B9,0,0
1747                     	MVF	(_sActual_Forecast + 9),1,0
1748                     	MVF	r0x10BA,0,0
1749                     	MVF	(_sActual_Forecast + 10),1,0
1750                     ;	;.line	228; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = 0;
1751                     	CLRF	(_sActual_Forecast + 11),0
1752                     	CLRF	(_sActual_Forecast + 12),0
1753                     _00260_DS_:
1754                     ;	;.line	230; ".\Source\APP_Measure.c"	}
1755                     	RET	
1756                     ; exit point of _Filter_ErrTemp
1757                     	.ENDFUNC	_Filter_ErrTemp
1758                     ;--------------------------------------------------------
1759                     
1760                     .globl _Get_1sTemp
1761                     
1762                     ;--------------------------------------------------------
1763                     	.FUNC _Get_1sTemp:$r:1:0:$L:r0x10B7
1764                     ;--------------------------------------------------------
1765                     ;	;.line	200; ".\Source\APP_Measure.c"	if(++sActual_Forecast.Cnt_1S >= 4)
1766 075F [00] [2] C481      _Get_1sTemp:	;Function start
1767 0760 [01] [2] 39A0      	INF	(_sActual_Forecast + 1),0,0
1768 0761 [01] [2] 6680      	MVF	r0x10B7,1,0
1769 0762 [01] [2] 67A0      	MVF	(_sActual_Forecast + 1),1,0
1770 0763 [01] [2] 0603      	MVL	0x03
1771 0764 [01] [2] 6880      	CPSG	r0x10B7,0
1772 0765 [01] [2] 7803      	JMP	_00249_DS_
1773                     ;	;.line	202; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
1774 0766 [01] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
1775                     ;	;.line	204; ".\Source\APP_Measure.c"	return TRUE;
1776 0767 [01] [2] 0601      	MVL	0x01
1777 0768 [01] [2] 7801      	JMP	_00250_DS_
1778                     _00249_DS_:
1779                     ;	;.line	206; ".\Source\APP_Measure.c"	return FALSE;
1780 0769 [01] [2] 0600      	MVL	0x00
1781 076A [01] [2] C4BF      _00250_DS_:
1782                     ;	;.line	207; ".\Source\APP_Measure.c"	}
1783 076B [00] [2] 000A      	RET	
1784                     ; exit point of _Get_1sTemp
1785                     	.ENDFUNC	_Get_1sTemp
1786                     ;--------------------------------------------------------
1787                     
1788                     .globl _PresetMeasTime
1789                     
1790                     ;--------------------------------------------------------
1791                     	.FUNC _PresetMeasTime:$r:1:0
1792                     ;--------------------------------------------------------
1793                     ;	;.line	166; ".\Source\APP_Measure.c"	if(!sActual.PresetMeasTimeCompletedFlag)
1794                     _PresetMeasTime:	;Function start
1795 076C [00] [2] A571      	BTSZ	_sActual,2
1796 076D [00] [2] 7803      	JMP	_00243_DS_
1797                     ;	;.line	175; ".\Source\APP_Measure.c"	sActual.PresetMeasTimeCompletedFlag = TRUE;
1798 076E [00] [2] 000C F271 	LDPR	(_sActual + 0),0x00
1799 0770 [00] [2] 9400      	BSF	_INDF0,2
1800                     _00243_DS_:
1801                     ;	;.line	189; ".\Source\APP_Measure.c"	return sActual.PresetMeasTimeCompletedFlag;
1802 0771 [00] [2] 0600      	MVL	0x00
1803 0772 [00] [2] A571      	BTSZ	_sActual,2
1804 0773 [00] [2] 0601      	MVL	0x01
1805                     ;	;.line	190; ".\Source\APP_Measure.c"	}
1806 0774 [00] [2] 000A      	RET	
1807                     ; exit point of _PresetMeasTime
1808                     	.ENDFUNC	_PresetMeasTime
1809                     ;--------------------------------------------------------
1810                     
1811                     .globl _Judge_Stability
1812                     
1813                     ;--------------------------------------------------------
1814                     	.FUNC _Judge_Stability:$r:1:5:$C:__divuint:$C:__mulint:$C:_abs\
1815                     :$L:r0x10A5:$L:_Judge_Stability_STK00:$L:_Judge_Stability_STK01:$L:_Judge_Stability_STK02:$L:_Judge_Stability_STK03\
1816                     
1817                     ;--------------------------------------------------------
1818                     ;	;.line	134; ".\Source\APP_Measure.c"	uint8 Judge_Stability(uint16 PriorTemp,uint16 PresentTemp,uint8 Timer)
1819                     _Judge_Stability:	;Function start
1820                     	MVF	r0x10A5,1,0
1821                     ;	;.line	140; ".\Source\APP_Measure.c"	PresentTemp = (PresentTemp + 5) / 10 * 10;
1822                     	MVL	0x05
1823                     	ADDF	_Judge_Stability_STK02,1,0
1824                     	BTSZ	_STATUS,4
1825                     	INF	_Judge_Stability_STK01,1,0
1826                     	MVL	0x0a
1827                     	MVF	__divuint_STK02,1,0
1828                     	CLRF	__divuint_STK01,0
1829                     	MVF	_Judge_Stability_STK02,0,0
1830                     	MVF	__divuint_STK00,1,0
1831                     	MVF	_Judge_Stability_STK01,0,0
1832                     	CALL	__divuint
1833                     	.CHKPARA __divuint 4
1834                     	MVFF	STK00,__mulint_STK02
1835                     	MVF	__mulint_STK01,1,0
1836                     	MVL	0x0a
1837                     	MVF	__mulint_STK00,1,0
1838                     	MVL	0x00
1839                     	CALL	__mulint
1840                     	.CHKPARA __mulint 4
1841                     	MVF	_Judge_Stability_STK01,1,0
1842                     	MVF	STK00,0,0
1843                     	MVF	_Judge_Stability_STK02,1,0
1844                     ;	;.line	141; ".\Source\APP_Measure.c"	PriorTemp = (PriorTemp + 5) / 10 * 10;
1845                     	MVL	0x05
1846                     	ADDF	_Judge_Stability_STK00,1,0
1847                     	BTSZ	_STATUS,4
1848                     	INF	r0x10A5,1,0
1849                     	MVL	0x0a
1850                     	MVF	__divuint_STK02,1,0
1851                     	CLRF	__divuint_STK01,0
1852                     	MVF	_Judge_Stability_STK00,0,0
1853                     	MVF	__divuint_STK00,1,0
1854                     	MVF	r0x10A5,0,0
1855                     	CALL	__divuint
1856                     	MVFF	STK00,__mulint_STK02
1857                     	MVF	__mulint_STK01,1,0
1858                     	MVL	0x0a
1859                     	MVF	__mulint_STK00,1,0
1860                     	MVL	0x00
1861                     	CALL	__mulint
1862                     	MVF	r0x10A5,1,0
1863                     	MVF	STK00,0,0
1864                     ;	;.line	144; ".\Source\APP_Measure.c"	if(abs(PresentTemp - PriorTemp))
1865                     	SUBF	_Judge_Stability_STK02,0,0
1866                     	MVF	_abs_STK00,1,0
1867                     	MVF	r0x10A5,0,0
1868                     	SUBC	_Judge_Stability_STK01,0,0
1869                     	CALL	_abs
1870                     	IORF	STK00,0,0
1871                     	BTSS	_STATUS,0
1872                     ;	;.line	147; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
1873                     	CLRF	(_sActual + 2),0
1874                     ;	;.line	151; ".\Source\APP_Measure.c"	if(sActual.ActualTime >= Timer)
1875                     	MVF	_Judge_Stability_STK03,0,0
1876                     	SUBF	(_sActual + 2),0,0
1877                     	BTSS	_STATUS,4
1878                     	JMP	_00234_DS_
1879                     ;	;.line	153; ".\Source\APP_Measure.c"	return TRUE;
1880                     	MVL	0x01
1881                     	JMP	_00235_DS_
1882                     _00234_DS_:
1883                     ;	;.line	155; ".\Source\APP_Measure.c"	return FALSE;
1884                     	MVL	0x00
1885                     _00235_DS_:
1886                     ;	;.line	156; ".\Source\APP_Measure.c"	}
1887                     	RET	
1888                     ; exit point of _Judge_Stability
1889                     	.ENDFUNC	_Judge_Stability
1890                     ;--------------------------------------------------------
1891                     
1892                     .globl _Temp_Calibration
1893                     
1894                     ;--------------------------------------------------------
1895                     	.FUNC _Temp_Calibration:$r:0:0:$C:_abs:$C:__divslong:$C:_BIE_Write:$C:_BIE_Read\
1896                     :$L:r0x108F:$L:r0x1091:$L:r0x1090:$L:r0x1092:$L:r0x1093\
1897                     
1898                     ;--------------------------------------------------------
1899                     ;	;.line	26; ".\Source\APP_Measure.c"	if(!sTempCal.BIE_Writed)
1900 0B7C [00] [2] C485      _Temp_Calibration:	;Function start
1901 0B7D [05] [2] B190      	BTSS	_sTempCal,0
1902                     ;	;.line	29; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag)
1903 0B7E [05] [2] B5CC      	BTSS	_sTIMx,2
1904 0B7F [05] [2] 78B9      	JMP	_00133_DS_
1905                     ;	;.line	32; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = 0;
1906 0B80 [05] [2] 85CC      	BCF	_sTIMx,2
1907                     ;	;.line	34; ".\Source\APP_Measure.c"	sTempCal.TempBuf[sTempCal.pTempBuf] = sADC.Centigrade250msTemp;
1908 0B81 [05] [2] 6591      	MVF	(_sTempCal + 1),0,0
1909 0B82 [05] [2] 0702      	MULL	0x02
1910 0B83 [05] [2] 6422      	MVF	_PRODL,0,0
1911 0B84 [05] [2] 0494      	ADDL	(_sTempCal + 4)
1912 0B85 [05] [2] 6684      	MVF	r0x108F,1,0
1913 0B86 [05] [2] 0602      	MVL	high (_sTempCal + 4)
1914 0B87 [05] [2] A82B      	BTSZ	_STATUS,4
1915 0B88 [05] [2] 0401      	ADDL	0x01
1916 0B89 [05] [2] C604 F010 	MVSF	r0x108F,_FSR0L
1917 0B8B [05] [2] 660F      	MVF	_FSR0H,1,0
1918 0B8C [05] [2] 6550      	MVF	(_sADC + 13),0,0
1919 0B8D [05] [2] 6601      	MVF	_POINC0,1,0
1920 0B8E [05] [2] 6551      	MVF	(_sADC + 14),0,0
1921 0B8F [05] [2] 6600      	MVF	_INDF0,1,0
1922                     ;	;.line	36; ".\Source\APP_Measure.c"	if(++sTempCal.pTempBuf >= 5)
1923 0B90 [05] [2] 3991      	INF	(_sTempCal + 1),0,0
1924 0B91 [05] [2] 6684      	MVF	r0x108F,1,0
1925 0B92 [05] [2] 6791      	MVF	(_sTempCal + 1),1,0
1926 0B93 [05] [2] 0604      	MVL	0x04
1927 0B94 [05] [2] 6884      	CPSG	r0x108F,0
1928 0B95 [05] [2] 7801      	JMP	_00106_DS_
1929                     ;	;.line	39; ".\Source\APP_Measure.c"	sTempCal.pTempBuf = 0;
1930 0B96 [05] [2] 0D91      	CLRF	(_sTempCal + 1),0
1931                     _00106_DS_:
1932                     ;	;.line	42; ".\Source\APP_Measure.c"	ERR[Err4] = FALSE;
1933 0B97 [05] [2] 0D39      	CLRF	(_ERR + 4),0
1934                     ;	;.line	44; ".\Source\APP_Measure.c"	ERR[Err0] = FALSE;
1935 0B98 [05] [2] 0D35      	CLRF	(_ERR + 0),0
1936                     ;	;.line	46; ".\Source\APP_Measure.c"	for(i = 0;i < 4;i++)
1937 0B99 [05] [2] 0C84      	CLRF	r0x108F,0
1938                     _00131_DS_:
1939                     ;	;.line	49; ".\Source\APP_Measure.c"	if(abs(sTempCal.TempBuf[i + 1] - sTempCal.TempBuf[i]) > 5)
1940 0B9A [05] [X] 3884      	INF	r0x108F,0,0
1941 0B9B [05] [X] 0702      	MULL	0x02
1942 0B9C [05] [X] 6422      	MVF	_PRODL,0,0
1943 0B9D [05] [X] 0494      	ADDL	(_sTempCal + 4)
1944 0B9E [05] [X] 6682      	MVF	r0x1090,1,0
1945 0B9F [05] [X] 0602      	MVL	high (_sTempCal + 4)
1946 0BA0 [05] [X] A82B      	BTSZ	_STATUS,4
1947 0BA1 [05] [X] 0401      	ADDL	0x01
1948 0BA2 [05] [X] 6681      	MVF	r0x1092,1,0
1949 0BA3 [05] [X] 6484      	MVF	r0x108F,0,0
1950 0BA4 [05] [X] 0702      	MULL	0x02
1951 0BA5 [05] [X] 000C F294 	LDPR	(_sTempCal + 4),0
1952 0BA7 [05] [X] 6422      	MVF	_PRODL,0,0
1953 0BA8 [05] [X] D004 F020 	MVFF	_PLUSW0,STK00
1954 0BAA [05] [X] 3829      	INF	_WREG,0,0
1955 0BAB [05] [X] D004 F01F 	MVFF	_PLUSW0,STK01
1956 0BAD [05] [X] 6482      	MVF	r0x1090,0,0
1957 0BAE [05] [X] 6610      	MVF	_FSR0L,1,0
1958 0BAF [05] [X] 6481      	MVF	r0x1092,0,0
1959 0BB0 [05] [X] 660F      	MVF	_FSR0H,1,0
1960 0BB1 [05] [X] 6401      	MVF	_POINC0,0,0
1961 0BB2 [05] [X] 6683      	MVF	r0x1091,1,0
1962 0BB3 [05] [X] 6401      	MVF	_POINC0,0,0
1963 0BB4 [05] [X] 6680      	MVF	r0x1093,1,0
1964 0BB5 [05] [X] 6420      	MVF	STK00,0,0
1965 0BB6 [05] [X] 1883      	SUBF	r0x1091,0,0
1966 0BB7 [05] [X] 660D      	MVF	_abs_STK00,1,0
1967 0BB8 [06] [X] 641F      	MVF	STK01,0,0
1968 0BB9 [06] [X] 1C81      	SUBC	r0x1093,0,0
1969 0BBA [06] [X] C001 F446 	CALL	_abs
1970                     	.CHKPARA _abs 2
1971 0BBC [05] [X] 6683      	MVF	r0x1091,1,0
1972 0BBD [05] [X] 6420      	MVF	STK00,0,0
1973 0BBE [05] [X] 04FA      	ADDL	0xfa
1974 0BBF [05] [X] 067F      	MVL	0x7f
1975 0BC0 [05] [X] 1483      	ADDC	r0x1091,0,0
1976 0BC1 [05] [X] 77        	BTSS	_STATUS,1
1977 0BC1 [05] 03        	JMP	_00108_DS_
1978                     ;	;.line	52; ".\Source\APP_Measure.c"	ERR[Err4] = TRUE;
1979 0BC2 [05] [X] 0601      	MVL	0x01
1980 0BC3 [00] [2] 0012 6739 	MVF	(_ERR + 4),1,0
1981                     _00108_DS_:
1982                     ;	;.line	55; ".\Source\APP_Measure.c"	if((sTempCal.TempBuf[i] < 3560/*3640*/) || (sTempCal.TempBuf[i] > 3850/*3750*/))
1983 0BC5 [05] [X] 6484      	MVF	r0x108F,0,0
1984 0BC6 [05] [X] 0702      	MULL	0x02
1985 0BC7 [05] [X] 000C F294 	LDPR	(_sTempCal + 4),0
1986 0BC9 [05] [X] 6422      	MVF	_PRODL,0,0
1987 0BCA [05] [X] D004 F020 	MVFF	_PLUSW0,STK00
1988 0BCC [05] [X] 3829      	INF	_WREG,0,0
1989 0BCD [05] [X] D004 F01F 	MVFF	_PLUSW0,STK01
1990 0BCF [05] [X] 6420      	MVF	STK00,0,0
1991 0BD0 [05] [X] 0418      	ADDL	0x18
1992 0BD1 [05] [X] 06F2      	MVL	0xf2
1993 0BD2 [05] [X] 141F      	ADDC	STK01,0,0
1994 0BD3 [05] [X] 74        	BTSS	_STATUS,4
1995 0BD3 [05] 05        	JMP	_00109_DS_
1996 0BD4 [05] [X] 6420      	MVF	STK00,0,0
1997 0BD5 [05] [X] 04F5      	ADDL	0xf5
1998 0BD6 [05] [X] 06F0      	MVL	0xf0
1999 0BD7 [05] [X] 141F      	ADDC	STK01,0,0
2000 0BD8 [05] [X] 74        	BTSS	_STATUS,4
2001 0BD8 [05] 03        	JMP	_00132_DS_
2002                     _00109_DS_:
2003                     ;	;.line	58; ".\Source\APP_Measure.c"	ERR[Err0] = TRUE;
2004 0BD9 [05] [X] 0601      	MVL	0x01
2005 0BDA [00] [2] 0012 6735 	MVF	(_ERR + 0),1,0
2006                     _00132_DS_:
2007                     ;	;.line	46; ".\Source\APP_Measure.c"	for(i = 0;i < 4;i++)
2008 0BDC [05] [X] 3A84      	INF	r0x108F,1,0
2009 0BDD [05] [X] 0603      	MVL	0x03
2010 0BDE [05] [X] 6884      	CPSG	r0x108F,0
2011 0BDF [05] [X] 7FBA      	JMP	_00131_DS_
2012                     ;	;.line	62; ".\Source\APP_Measure.c"	if(sTempCal.Enable_BIE_Write)
2013 0BE0 [00] [2] 0012 B590 	BTSS	_sTempCal,2
2014 0BE2 [05] [2] 7856      	JMP	_00133_DS_
2015                     ;	;.line	65; ".\Source\APP_Measure.c"	if(BIE_Available_Addr <= 0x3F)
2016 0BE3 [05] [2] 0640      	MVL	0x40
2017 0BE4 [05] [2] 6BCA      	CPSL	_BIE_Available_Addr,0
2018 0BE5 [05] [2] 7832      	JMP	_00116_DS_
2019                     ;	;.line	68; ".\Source\APP_Measure.c"	tmp = 30010000 / sADC.RawRntc;
2020 0BE6 [05] [2] 6558      	MVF	(_sADC + 21),0,0
2021 0BE7 [05] [2] 660D      	MVF	__divslong_STK06,1,0
2022 0BE8 [06] [2] 6559      	MVF	(_sADC + 22),0,0
2023 0BE9 [06] [2] 660D      	MVF	__divslong_STK05,1,0
2024 0BEA [07] [2] 0C0D      	CLRF	__divslong_STK04,0
2025 0BEB [08] [2] 0C0D      	CLRF	__divslong_STK03,0
2026 0BEC [09] [2] 0690      	MVL	0x90
2027 0BED [09] [2] 660D      	MVF	__divslong_STK02,1,0
2028 0BEE [10] [2] 06EA      	MVL	0xea
2029 0BEF [10] [2] 660D      	MVF	__divslong_STK01,1,0
2030 0BF0 [11] [2] 06C9      	MVL	0xc9
2031 0BF1 [11] [2] 660D      	MVF	__divslong_STK00,1,0
2032 0BF2 [12] [2] 0601      	MVL	0x01
2033 0BF3 [12] [2] C001 F453 	CALL	__divslong
2034                     	.CHKPARA __divslong 8
2035 0BF5 [05] [2] 6681      	MVF	r0x1092,1,0
2036 0BF6 [05] [2] 6420      	MVF	STK00,0,0
2037 0BF7 [05] [2] 6683      	MVF	r0x1091,1,0
2038 0BF8 [05] [2] 641F      	MVF	STK01,0,0
2039 0BF9 [05] [2] 6682      	MVF	r0x1090,1,0
2040 0BFA [05] [2] 381E      	INF	STK02,0,0
2041 0BFB [05] [2] 6684      	MVF	r0x108F,1,0
2042                     ;	;.line	69; ".\Source\APP_Measure.c"	tmp += 1;
2043 0BFC [05] [2] 0600      	MVL	0x00
2044 0BFD [05] [2] 1682      	ADDC	r0x1090,1,0
2045 0BFE [05] [2] 1683      	ADDC	r0x1091,1,0
2046 0BFF [05] [2] 1681      	ADDC	r0x1092,1,0
2047                     ;	;.line	70; ".\Source\APP_Measure.c"	sTempCal.Temp_Ratio = (uint16)tmp;
2048 0C00 [05] [2] 6484      	MVF	r0x108F,0,0
2049 0C01 [05] [2] 6792      	MVF	(_sTempCal + 2),1,0
2050 0C02 [05] [2] 6482      	MVF	r0x1090,0,0
2051 0C03 [05] [2] 6793      	MVF	(_sTempCal + 3),1,0
2052                     ;	;.line	75; ".\Source\APP_Measure.c"	LCDCN1 &= 0xFE;
2053 0C04 [00] [1] 0011 8180 	BCF	_LCDCN1,0
2054                     ;	;.line	77; ".\Source\APP_Measure.c"	if(BIE_Write(BIE_Available_Addr,sTempCal.Temp_Ratio >> 8,sTempCal.Temp_Ratio))
2055 0C06 [05] [1] 6484      	MVF	r0x108F,0,0
2056 0C07 [05] [1] 660D      	MVF	_BIE_Write_STK01,1,0
2057 0C08 [06] [1] 6483      	MVF	r0x1090,0,0
2058 0C09 [06] [1] 660D      	MVF	_BIE_Write_STK00,1,0
2059 0C0A [00] [2] 0012 65CA 	MVF	_BIE_Available_Addr,0,0
2060 0C0C [07] [2] C001 F4AD 	CALL	_BIE_Write
2061                     	.CHKPARA _BIE_Write 3
2062 0C0E [05] [2] 0200      	IORL	0x00
2063 0C0F [05] [2] 71        	BTSZ	_STATUS,0
2064 0C0F [05] 05        	JMP	_00114_DS_
2065                     ;	;.line	81; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
2066 0C10 [05] [2] 0601      	MVL	0x01
2067 0C11 [05] [2] 673A      	MVF	(_ERR + 5),1,0
2068                     ;	;.line	82; ".\Source\APP_Measure.c"	sTempCal.BIE_Writed = TRUE;
2069 0C12 [05] [2] 000C F290 	LDPR	(_sTempCal + 0),0x00
2070 0C14 [05] [2] 9000      	BSF	_INDF0,0
2071                     _00114_DS_:
2072                     ;	;.line	86; ".\Source\APP_Measure.c"	LCDCN3 = 0x00;
2073 0C15 [00] [1] 0011 0D82 	CLRF	_LCDCN3,0
2074                     ;	;.line	88; ".\Source\APP_Measure.c"	LCDCN4 = 0x00;
2075 0C17 [05] [1] 0D83      	CLRF	_LCDCN4,0
2076                     _00116_DS_:
2077                     ;	;.line	96; ".\Source\APP_Measure.c"	if(BIE_Read(BIE_Available_Addr) == sTempCal.Temp_Ratio)
2078 0C18 [00] [2] 0012 65CA 	MVF	_BIE_Available_Addr,0,0
2079 0C1A [05] [2] C96A      	CALL	_BIE_Read
2080                     	.CHKPARA _BIE_Read 1
2081 0C1B [05] [2] 6683      	MVF	r0x1091,1,0
2082 0C1C [05] [2] 6593      	MVF	(_sTempCal + 3),0,0
2083 0C1D [05] [2] 6C83      	CPSE	r0x1091,0
2084 0C1E [05] [2] 7807      	JMP	_00123_DS_
2085 0C1F [05] [2] 6592      	MVF	(_sTempCal + 2),0,0
2086 0C20 [05] [2] 6C20      	CPSE	STK00,0
2087 0C21 [05] [2] 7804      	JMP	_00123_DS_
2088                     ;	;.line	100; ".\Source\APP_Measure.c"	ERR[Err5] = FALSE;
2089 0C22 [05] [2] 0D3A      	CLRF	(_ERR + 5),0
2090                     ;	;.line	102; ".\Source\APP_Measure.c"	sTempCal.BIE_Writed = TRUE;
2091 0C23 [05] [2] 9190      	BSF	_sTempCal,0
2092                     ;	;.line	104; ".\Source\APP_Measure.c"	BIE_Available_Addr++;
2093 0C24 [05] [2] 3BCA      	INF	_BIE_Available_Addr,1,0
2094 0C25 [05] [2] 7810      	JMP	_00124_DS_
2095                     _00123_DS_:
2096                     ;	;.line	106; ".\Source\APP_Measure.c"	else if(BIE_Read(BIE_Available_Addr) == 0xFFFF)
2097 0C26 [05] [2] 65CA      	MVF	_BIE_Available_Addr,0,0
2098 0C27 [05] [2] C95D      	CALL	_BIE_Read
2099 0C28 [05] [2] 2820      	ANDF	STK00,0,0
2100 0C29 [05] [2] 3C29      	INSZ	_WREG,0,0
2101 0C2A [05] [2] 7803      	JMP	_00120_DS_
2102                     ;	;.line	110; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
2103 0C2B [05] [2] 0601      	MVL	0x01
2104 0C2C [05] [2] 673A      	MVF	(_ERR + 5),1,0
2105 0C2D [05] [2] 7808      	JMP	_00124_DS_
2106                     _00120_DS_:
2107                     ;	;.line	112; ".\Source\APP_Measure.c"	else if(BIE_Read(BIE_Available_Addr) != 0xFFFF)
2108 0C2E [05] [2] 65CA      	MVF	_BIE_Available_Addr,0,0
2109 0C2F [05] [2] C955      	CALL	_BIE_Read
2110 0C30 [05] [2] 2820      	ANDF	STK00,0,0
2111 0C31 [05] [2] 4029      	INSUZ	_WREG,0,0
2112 0C32 [05] [2] 7803      	JMP	_00124_DS_
2113                     ;	;.line	116; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
2114 0C33 [05] [2] 0601      	MVL	0x01
2115 0C34 [05] [2] 673A      	MVF	(_ERR + 5),1,0
2116                     ;	;.line	118; ".\Source\APP_Measure.c"	BIE_Available_Addr++;
2117 0C35 [05] [2] 3BCA      	INF	_BIE_Available_Addr,1,0
2118                     _00124_DS_:
2119                     ;	;.line	121; ".\Source\APP_Measure.c"	sTempCal.BIE_Write_Action = TRUE;
2120 0C36 [05] [2] 000C F290 	LDPR	(_sTempCal + 0),0x00
2121 0C38 [05] [2] 9600      	BSF	_INDF0,3
2122 0C39 [05] [2] C4BB      _00133_DS_:
2123                     ;	;.line	125; ".\Source\APP_Measure.c"	}
2124 0C3A [00] [2] 000A      	RET	
2125                     ; exit point of _Temp_Calibration
2126                     	.ENDFUNC	_Temp_Calibration
2127                     ;--------------------------------------------------------
2128                     
2129                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
2130                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
2131                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
2132                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
2133                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
2134                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
2135                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
2136                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
2137                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
2138                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
2139                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
2140                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
2141                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
2142                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
2143                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
2144                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
2145                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
2146                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
2147                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
2148                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
2149                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
2150                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
2151                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
2152                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
2153                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
2154                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
2155                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
2156                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
2157                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
2158                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
2159                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
2160                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
2161                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
2162                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
2163                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
2164                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
2165                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
2166                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
2167                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
2168                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
2169                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
2170                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
2171                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
2172                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
2173                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
2174                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
2175                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
2176                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
2177                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
2178                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
2179                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
2180                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
2181                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
2182                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
2183                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
2184                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
2185                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
2186                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
2187                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
2188                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
2189                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
2190                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
2191                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
2192                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
2193                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
2194                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
2195                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
2196                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
2197                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
2198                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
2199                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
2200                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
2201                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
2202                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
2203                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
2204                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
2205                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
2206                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
2207                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
2208                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
2209                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
2210                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
2211                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
2212                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
2213                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
2214                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
2215                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
2216                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
2217                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
2218                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
2219                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
2220                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
2221                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
2222                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
2223                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
2224                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
2225                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
2226                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
2227                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
2228                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
2229                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
2230                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
2231                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
2232                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
2233                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
2234                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
2235                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
2236                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
2237                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
2238                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
2239                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
2240                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
2241                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
2242                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
2243                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
2244                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
2245                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
2246                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
2247                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
2248                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
2249                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
2250                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
2251                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
2252                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
2253                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
2254                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
2255                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
2256                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
2257                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
2258                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
2259                     	;--cdb--S:G$_divslong$0$0({2}DF,SL:SL),C,0,0
2260                     	;--cdb--S:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0
2261                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
2262                     	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
2263                     	;--cdb--S:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0
2264                     	;--cdb--S:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0
2265                     	;--cdb--S:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0
2266                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
2267                     	;--cdb--S:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0
2268                     	;--cdb--S:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0
2269                     	;--cdb--S:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0
2270                     	;--cdb--S:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0
2271                     	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
2272                     	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
2273                     	;--cdb--S:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0
2274                     	;--cdb--S:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0
2275                     	;--cdb--S:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0
2276                     	;--cdb--S:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0
2277                     	;--cdb--S:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0
2278                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
2279                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
2280                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
2281                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
2282                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
2283                     	;--cdb--S:LAPP_Measure.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
2284                     	;--cdb--S:LAPP_Measure.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
2285                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
2286                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
2287                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2288                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
2289                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2290                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
2291                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2292                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2293                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2294                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
2295                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
2296                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
2297                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
2298                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2299                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2300                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
2301                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
2302                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
2303                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
2304                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
2305                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
2306                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2307                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
2308                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
2309                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
2310                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
2311                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2312                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
2313                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2314                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2315                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
2316                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
2317                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2318                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
2319                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
2320                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
2321                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
2322                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2323                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
2324                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
2325                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
2326                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
2327                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
2328                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
2329                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
2330                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
2331                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
2332                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
2333                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
2334                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
2335                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
2336                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
2337                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
2338                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
2339                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
2340                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
2341                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
2342                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
2343                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
2344                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
2345                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
2346                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
2347                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
2348                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
2349                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
2350                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
2351                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
2352                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
2353                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
2354                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
2355                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
2356                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
2357                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
2358                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
2359                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
2360                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
2361                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
2362                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
2363                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
2364                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
2365                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
2366                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
2367                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
2368                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
2369                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
2370                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
2371                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
2372                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
2373                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
2374                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
2375                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
2376                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
2377                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
2378                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
2379                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
2380                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
2381                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
2382                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
2383                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
2384                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
2385                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
2386                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
2387                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
2388                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
2389                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
2390                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
2391                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
2392                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
2393                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
2394                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
2395                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
2396                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
2397                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
2398                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
2399                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
2400                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
2401                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
2402                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
2403                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
2404                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
2405                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
2406                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
2407                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
2408                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
2409                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
2410                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
2411                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
2412                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
2413                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
2414                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
2415                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
2416                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
2417                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
2418                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
2419                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
2420                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
2421                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
2422                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
2423                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
2424                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
2425                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
2426                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
2427                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
2428                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
2429                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
2430                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
2431                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
2432                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
2433                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
2434                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
2435                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
2436                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
2437                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
2438                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
2439                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
2440                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
2441                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
2442                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
2443                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
2444                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
2445                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
2446                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
2447                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
2448                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
2449                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
2450                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
2451                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
2452                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
2453                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
2454                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
2455                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
2456                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
2457                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
2458                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
2459                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
2460                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
2461                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
2462                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
2463                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
2464                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
2465                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
2466                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
2467                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
2468                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
2469                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
2470                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
2471                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
2472                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
2473                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
2474                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
2475                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
2476                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
2477                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
2478                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
2479                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
2480                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
2481                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
2482                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
2483                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
2484                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
2485                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
2486                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
2487                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
2488                     	;--cdb--S:LAPP_Measure.Temp_Calibration._Temp_Calibration_i_10000_416$i$2710$416({1}SC:U),R,0,0,[r0x108F]
2489                     	;--cdb--S:LAPP_Measure.Temp_Calibration._Temp_Calibration_tmp_10000_416$tmp$2710$416({4}SL:UL),R,0,0,[r0x108F,r0x1090,r0x1091,r0x1092]
2490                     	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_Timer_10000_441$Timer$2710$441({1}SC:U),R,0,0,[_Judge_Stability_STK03]
2491                     	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_PresentTemp_10000_441$PresentTemp$2710$441({2}SI:U),R,0,0,[_Judge_Stability_STK02,_Judge_Stability_STK01]
2492                     	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_PriorTemp_10000_441$PriorTemp$2710$441({2}SI:U),R,0,0,[_Judge_Stability_STK00,r0x10A5]
2493                     	;--cdb--S:LAPP_Measure.Start_Algorithm._Start_Algorithm_i_10000_478$i$2710$478({1}SC:U),R,0,0,[r0x10C3]
2494                     	;--cdb--S:LAPP_Measure.Forecast_Calculate._Forecast_Calculate_K_10000_511$K$2710$511({4}SL:UL),R,0,0,[r0x10D5,r0x10D6,r0x10D7,r0x10D8]
2495                     	;--cdb--S:LAPP_Measure.Update_MaxTemp3Min._Update_MaxTemp3Min_Result_10000_543$Result$2710$543({1}SC:U),R,0,0,[r0x10F6]
2496                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_Temp_10000_593$Temp$2710$593({2}SI:U),R,0,0,[_Temperature_Compensate_STK00,r0x1109]
2497                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_F_OddFlag_10000_594$F_OddFlag$2710$594({1}SC:U),R,0,0,[r0x110A]
2498                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_a_10000_594$a$2710$594({1}SC:U),R,0,0,[r0x110B]
2499                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_b_10000_594$b$2710$594({2}SI:U),R,0,0,[r0x110B,r0x110C]
2500                     	;--cdb--S:LAPP_Measure.Forecast_Measure._Forecast_Measure_Temp_10000_607$Temp$2710$607({2}SI:U),R,0,0,[r0x111B,r0x111C]
2501                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
2502                     	;--cdb--S:G$_FSR0L$0$0({0}:U),Z,0,0
2503                     	;--cdb--S:G$_FSR0H$0$0({0}:U),Z,0,0
2504                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
2505                     	;--cdb--S:G$_POINC0$0$0({0}:U),Z,0,0
2506                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
2507                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
2508                     	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
2509                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
2510                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
2511                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
2512                     ;--------------------------------------------------------
2513                     ; external declarations
2514                     ;--------------------------------------------------------
2515                     	.globl	_abs
2516                     	.globl	_BIE_Read
2517                     	.globl	_BIE_Write
2518                     	.globl	_Timer_Experience
2519                     	.globl	_Centigrade_Convert_Fahrenheit
2520                     	.globl	__divslong
2521                     	.globl	__divuint
2522                     	.globl	__mulint
2523                     	.globl	__mullong
2524                     	.globl	__divulong
2525                     	.globl	_FSR0
2526                     	.globl	_FSR1
2527                     	.globl	_FSR2
2528                     	.globl	_ADCR
2529                     	.globl	_sIIC
2530                     	.globl	_BIE_Available_Addr
2531                     	.globl	_sTIMx
2532                     	.globl	_sUARTx
2533                     	.globl	_sAutoBps
2534                     	.globl	_eAutoBps_Status
2535                     	.globl	_sTest
2536                     	.globl	_eTempUnit
2537                     	.globl	_eBondingTempUnit
2538                     	.globl	_eVersionCode
2539                     	.globl	_eMeasureMode
2540                     	.globl	_eBinding_Status
2541                     	.globl	_Enter_PrepareSleep_Flag
2542                     	.globl	_sButton
2543                     	.globl	_sTimeStamp
2544                     	.globl	_eButton_Status
2545                     	.globl	_sLVD
2546                     	.globl	_UnitExchangeCompleted
2547                     	.globl	_ERR
2548                     	.globl	_eErr
2549                     	.globl	_eDisplay_Interfaces
2550                     	.globl	_sADC
2551                     	.globl	_eADCChannel
2552                     	.globl	_eSystem_Mode
2553                     	.globl	_eBuzzer_Status
2554                     	.globl	_Flag_No_Buzzer
2555                     	.globl	_sMemory
2556                     	.globl	_sMemoryFlag
2557                     	.globl	_eBle_Sta
2558                     	.globl	_sBleStatus
2559                     	.globl	_eBacklight_Status
2560                     	.globl	_sBacklight
2561                     	.globl	_NUM_CODE
2562                     	.globl	_R_Table
2563                     	.globl	__g2ptrget1
2564                     	.globl	__g2ptrget2
2565                     
2566                     	.globl STK07
2567                     	.globl STK07_SAVE
2568                     	.globl STK06
2569                     	.globl STK06_SAVE
2570                     	.globl STK05
2571                     	.globl STK05_SAVE
2572                     	.globl STK04
2573                     	.globl STK04_SAVE
2574                     	.globl STK03
2575                     	.globl STK03_SAVE
2576                     	.globl STK02
2577                     	.globl STK02_SAVE
2578                     	.globl STK01
2579                     	.globl STK01_SAVE
2580                     	.globl STK00
2581                     	.globl STK00_SAVE
2582                     ;--------------------------------------------------------
2583                     ; global -1 declarations
2584                     ;--------------------------------------------------------
2585                     	.globl	_Judge_Stability
2586                     	.globl	_PresetMeasTime
2587                     	.globl	_Get_1sTemp
2588                     	.globl	_Filter_ErrTemp
2589                     	.globl	_Start_Algorithm
2590                     	.globl	_Temp_Drop
2591                     	.globl	_Forecast_Calculate_Conditions
2592                     	.globl	_Forecast_Calculate
2593                     	.globl	_Update_MaxTempImmediately
2594                     	.globl	_Update_MaxTemp3Min
2595                     	.globl	_Forecast_To_Actual
2596                     	.globl	_ActualForecast_Select
2597                     	.globl	_Temperature_Compensate
2598                     	.globl	_sActual
2599                     	.globl	_sForecast
2600                     	.globl	_sTempCal
2601                     	.globl	_eMeas_Status
2602                     	.globl	_sActual_Forecast
2603                     	.globl	_eTo_Actual_Ways
2604                     	.globl	_CloseTable
2605                     
2606                     	.globl	_memcpy
2607                     ;--------------------------------------------------------
2608                     ; global -2 definitions
2609                     ;--------------------------------------------------------
2610                     	.area DSEG(DATA)
2611 0271 -- -- -- -- -- _sActual:	.ds	5
2612                     
2613                     	.area DSEG(DATA)
2614 0276 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sForecast:	.ds	26
2615                     
2616                     	.area DSEG(DATA)
2617 0290 -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sTempCal:	.ds	14
2618                     
2619                     	.area DSEG(DATA)
2620 029E --             _eMeas_Status:	.ds	1
2621                     
2622                     	.area DSEG(DATA)
2623 029F -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sActual_Forecast:	.ds	15
2624                     
2625                     	.area DSEG(DATA)
2626 02AE --             _eTo_Actual_Ways:	.ds	1
2627                     
2628                     	.area DSEG(DATA)
2629                     __SWTGTID	.equ	0xA6A6B2CF
2630                     
2631                     	.area DSEG(DATA)
2632                     _INDF0	.equ	0x0
2633                     
2634                     	.area DSEG(DATA)
2635                     _POINC0	.equ	0x1
2636                     
2637                     	.area DSEG(DATA)
2638                     _PODEC0	.equ	0x2
2639                     
2640                     	.area DSEG(DATA)
2641                     _PRINC0	.equ	0x3
2642                     
2643                     	.area DSEG(DATA)
2644                     _PLUSW0	.equ	0x4
2645                     
2646                     	.area DSEG(DATA)
2647                     _INDF1	.equ	0x5
2648                     
2649                     	.area DSEG(DATA)
2650                     _POINC1	.equ	0x6
2651                     
2652                     	.area DSEG(DATA)
2653                     _PODEC1	.equ	0x7
2654                     
2655                     	.area DSEG(DATA)
2656                     _PRINC1	.equ	0x8
2657                     
2658                     	.area DSEG(DATA)
2659                     _PLUSW1	.equ	0x9
2660                     
2661                     	.area DSEG(DATA)
2662                     _INDF2	.equ	0xA
2663                     
2664                     	.area DSEG(DATA)
2665                     _POINC2	.equ	0xB
2666                     
2667                     	.area DSEG(DATA)
2668                     _PODEC2	.equ	0xC
2669                     
2670                     	.area DSEG(DATA)
2671                     _PRINC2	.equ	0xD
2672                     
2673                     	.area DSEG(DATA)
2674                     _PLUSW2	.equ	0xE
2675                     
2676                     	.area DSEG(DATA)
2677                     _FSR0H	.equ	0xF
2678                     
2679                     	.area DSEG(DATA)
2680                     _FSR0L	.equ	0x10
2681                     
2682                     	.area DSEG(DATA)
2683                     _FSR1H	.equ	0x11
2684                     
2685                     	.area DSEG(DATA)
2686                     _FSR1L	.equ	0x12
2687                     
2688                     	.area DSEG(DATA)
2689                     _FSR2H	.equ	0x13
2690                     
2691                     	.area DSEG(DATA)
2692                     _FSR2L	.equ	0x14
2693                     
2694                     	.area DSEG(DATA)
2695                     _TOSH	.equ	0x16
2696                     
2697                     	.area DSEG(DATA)
2698                     _TOSL	.equ	0x17
2699                     
2700                     	.area DSEG(DATA)
2701                     _SKCN	.equ	0x18
2702                     
2703                     	.area DSEG(DATA)
2704                     _PCLATH	.equ	0x1A
2705                     
2706                     	.area DSEG(DATA)
2707                     _PCLATL	.equ	0x1B
2708                     
2709                     	.area DSEG(DATA)
2710                     _TBLPTRH	.equ	0x1D
2711                     
2712                     	.area DSEG(DATA)
2713                     _TBLPTRL	.equ	0x1E
2714                     
2715                     	.area DSEG(DATA)
2716                     _TBLDH	.equ	0x1F
2717                     
2718                     	.area DSEG(DATA)
2719                     _TBLDL	.equ	0x20
2720                     
2721                     	.area DSEG(DATA)
2722                     _PRODH	.equ	0x21
2723                     
2724                     	.area DSEG(DATA)
2725                     _PRODL	.equ	0x22
2726                     
2727                     	.area DSEG(DATA)
2728                     _INTE0	.equ	0x23
2729                     
2730                     	.area DSEG(DATA)
2731                     _INTE1	.equ	0x24
2732                     
2733                     	.area DSEG(DATA)
2734                     _INTE2	.equ	0x25
2735                     
2736                     	.area DSEG(DATA)
2737                     _INTF0	.equ	0x26
2738                     
2739                     	.area DSEG(DATA)
2740                     _INTF1	.equ	0x27
2741                     
2742                     	.area DSEG(DATA)
2743                     _INTF2	.equ	0x28
2744                     
2745                     	.area DSEG(DATA)
2746                     _WREG	.equ	0x29
2747                     
2748                     	.area DSEG(DATA)
2749                     _BSRCN	.equ	0x2A
2750                     
2751                     	.area DSEG(DATA)
2752                     _STATUS	.equ	0x2B
2753                     
2754                     	.area DSEG(DATA)
2755                     _MSTAT	.equ	0x2B
2756                     
2757                     	.area DSEG(DATA)
2758                     _PSTAT	.equ	0x2C
2759                     
2760                     	.area DSEG(DATA)
2761                     _BIECN	.equ	0x2E
2762                     
2763                     	.area DSEG(DATA)
2764                     _BIEARH	.equ	0x2F
2765                     
2766                     	.area DSEG(DATA)
2767                     _BIEARL	.equ	0x30
2768                     
2769                     	.area DSEG(DATA)
2770                     _BIEDRH	.equ	0x31
2771                     
2772                     	.area DSEG(DATA)
2773                     _BIEDRL	.equ	0x32
2774                     
2775                     	.area DSEG(DATA)
2776                     _PWRCN	.equ	0x33
2777                     
2778                     	.area DSEG(DATA)
2779                     _OSCCN0	.equ	0x34
2780                     
2781                     	.area DSEG(DATA)
2782                     _OSCCN1	.equ	0x35
2783                     
2784                     	.area DSEG(DATA)
2785                     _OSCCN2	.equ	0x36
2786                     
2787                     	.area DSEG(DATA)
2788                     _CSFCN0	.equ	0x37
2789                     
2790                     	.area DSEG(DATA)
2791                     _CSFCN1	.equ	0x38
2792                     
2793                     	.area DSEG(DATA)
2794                     _WDTCN	.equ	0x39
2795                     
2796                     	.area DSEG(DATA)
2797                     _AD1H	.equ	0x3A
2798                     
2799                     	.area DSEG(DATA)
2800                     _AD1M	.equ	0x3B
2801                     
2802                     	.area DSEG(DATA)
2803                     _AD1L	.equ	0x3C
2804                     
2805                     	.area DSEG(DATA)
2806                     _AD1CN0	.equ	0x3D
2807                     
2808                     	.area DSEG(DATA)
2809                     _AD1CN1	.equ	0x3E
2810                     
2811                     	.area DSEG(DATA)
2812                     _AD1CN2	.equ	0x3F
2813                     
2814                     	.area DSEG(DATA)
2815                     _AD1CN3	.equ	0x40
2816                     
2817                     	.area DSEG(DATA)
2818                     _AD1CN4	.equ	0x41
2819                     
2820                     	.area DSEG(DATA)
2821                     _AD1CN5	.equ	0x42
2822                     
2823                     	.area DSEG(DATA)
2824                     _LVDCN	.equ	0x43
2825                     
2826                     	.area DSEG(DATA)
2827                     _TMA1CN	.equ	0x44
2828                     
2829                     	.area DSEG(DATA)
2830                     _TMA1R	.equ	0x45
2831                     
2832                     	.area DSEG(DATA)
2833                     _TMA1C	.equ	0x46
2834                     
2835                     	.area DSEG(DATA)
2836                     _TB1FLAG	.equ	0x47
2837                     
2838                     	.area DSEG(DATA)
2839                     _TB1CN0	.equ	0x48
2840                     
2841                     	.area DSEG(DATA)
2842                     _TB1CN1	.equ	0x49
2843                     
2844                     	.area DSEG(DATA)
2845                     _TB1RH	.equ	0x4A
2846                     
2847                     	.area DSEG(DATA)
2848                     _TB1RL	.equ	0x4B
2849                     
2850                     	.area DSEG(DATA)
2851                     _TB1C0H	.equ	0x4C
2852                     
2853                     	.area DSEG(DATA)
2854                     _TB1C0L	.equ	0x4D
2855                     
2856                     	.area DSEG(DATA)
2857                     _TB1C1H	.equ	0x4E
2858                     
2859                     	.area DSEG(DATA)
2860                     _TB1C1L	.equ	0x4F
2861                     
2862                     	.area DSEG(DATA)
2863                     _TB1C2H	.equ	0x50
2864                     
2865                     	.area DSEG(DATA)
2866                     _TB1C2L	.equ	0x51
2867                     
2868                     	.area DSEG(DATA)
2869                     _TC1CN0	.equ	0x52
2870                     
2871                     	.area DSEG(DATA)
2872                     _PT1	.equ	0x53
2873                     
2874                     	.area DSEG(DATA)
2875                     _TRISC1	.equ	0x54
2876                     
2877                     	.area DSEG(DATA)
2878                     _PT1DA	.equ	0x55
2879                     
2880                     	.area DSEG(DATA)
2881                     _PT1PU	.equ	0x56
2882                     
2883                     	.area DSEG(DATA)
2884                     _PT1M1	.equ	0x57
2885                     
2886                     	.area DSEG(DATA)
2887                     _PT1INT	.equ	0x58
2888                     
2889                     	.area DSEG(DATA)
2890                     _PT1INTE	.equ	0x59
2891                     
2892                     	.area DSEG(DATA)
2893                     _PT1INTF	.equ	0x5A
2894                     
2895                     	.area DSEG(DATA)
2896                     _PT2	.equ	0x5B
2897                     
2898                     	.area DSEG(DATA)
2899                     _TRISC2	.equ	0x5C
2900                     
2901                     	.area DSEG(DATA)
2902                     _PT2DA	.equ	0x5D
2903                     
2904                     	.area DSEG(DATA)
2905                     _PT2PU	.equ	0x5E
2906                     
2907                     	.area DSEG(DATA)
2908                     _PT2INT	.equ	0x5F
2909                     
2910                     	.area DSEG(DATA)
2911                     _PT2INTE	.equ	0x60
2912                     
2913                     	.area DSEG(DATA)
2914                     _PT2INTF	.equ	0x61
2915                     
2916                     	.area DSEG(DATA)
2917                     _PT6	.equ	0x62
2918                     
2919                     	.area DSEG(DATA)
2920                     _TRISC6	.equ	0x63
2921                     
2922                     	.area DSEG(DATA)
2923                     _PT6DA	.equ	0x64
2924                     
2925                     	.area DSEG(DATA)
2926                     _PT6PU	.equ	0x65
2927                     
2928                     	.area DSEG(DATA)
2929                     _PT7	.equ	0x66
2930                     
2931                     	.area DSEG(DATA)
2932                     _TRISC7	.equ	0x67
2933                     
2934                     	.area DSEG(DATA)
2935                     _PT7DA	.equ	0x68
2936                     
2937                     	.area DSEG(DATA)
2938                     _PT7PU	.equ	0x69
2939                     
2940                     	.area DSEG(DATA)
2941                     _PT8	.equ	0x6A
2942                     
2943                     	.area DSEG(DATA)
2944                     _TRISC8	.equ	0x6B
2945                     
2946                     	.area DSEG(DATA)
2947                     _PT8DA	.equ	0x6C
2948                     
2949                     	.area DSEG(DATA)
2950                     _PT8PU	.equ	0x6D
2951                     
2952                     	.area DSEG(DATA)
2953                     _SSPCN0	.equ	0x6E
2954                     
2955                     	.area DSEG(DATA)
2956                     _SSPSTA0	.equ	0x6F
2957                     
2958                     	.area DSEG(DATA)
2959                     _SSPBUF0	.equ	0x70
2960                     
2961                     	.area DSEG(DATA)
2962                     _CFG0	.equ	0x71
2963                     
2964                     	.area DSEG(DATA)
2965                     _ACT0	.equ	0x72
2966                     
2967                     	.area DSEG(DATA)
2968                     _STA0	.equ	0x73
2969                     
2970                     	.area DSEG(DATA)
2971                     _CRG0	.equ	0x74
2972                     
2973                     	.area DSEG(DATA)
2974                     _TOC0	.equ	0x75
2975                     
2976                     	.area DSEG(DATA)
2977                     _RDB0	.equ	0x76
2978                     
2979                     	.area DSEG(DATA)
2980                     _TDB0	.equ	0x77
2981                     
2982                     	.area DSEG(DATA)
2983                     _SID0	.equ	0x78
2984                     
2985                     	.area DSEG(DATA)
2986                     _UR0CN	.equ	0x79
2987                     
2988                     	.area DSEG(DATA)
2989                     _UR0STA	.equ	0x7A
2990                     
2991                     	.area DSEG(DATA)
2992                     _BA0CN	.equ	0x7B
2993                     
2994                     	.area DSEG(DATA)
2995                     _BG0RH	.equ	0x7C
2996                     
2997                     	.area DSEG(DATA)
2998                     _BG0RL	.equ	0x7D
2999                     
3000                     	.area DSEG(DATA)
3001                     _TX0R	.equ	0x7E
3002                     
3003                     	.area DSEG(DATA)
3004                     _RC0REG	.equ	0x7F
3005                     
3006                     	.area DSEG(DATA)
3007                     _LCDCN1	.equ	0x180
3008                     
3009                     	.area DSEG(DATA)
3010                     _LCDCN2	.equ	0x181
3011                     
3012                     	.area DSEG(DATA)
3013                     _LCDCN3	.equ	0x182
3014                     
3015                     	.area DSEG(DATA)
3016                     _LCDCN4	.equ	0x183
3017                     
3018                     	.area DSEG(DATA)
3019                     _LCDCN5	.equ	0x184
3020                     
3021                     	.area DSEG(DATA)
3022                     _LCDCN6	.equ	0x185
3023                     
3024                     	.area DSEG(DATA)
3025                     _LCDCN7	.equ	0x186
3026                     
3027                     	.area DSEG(DATA)
3028                     _LCDCN8	.equ	0x187
3029                     
3030                     	.area DSEG(DATA)
3031                     _LCD0	.equ	0x188
3032                     
3033                     	.area DSEG(DATA)
3034                     _LCD1	.equ	0x189
3035                     
3036                     	.area DSEG(DATA)
3037                     _LCD2	.equ	0x18A
3038                     
3039                     	.area DSEG(DATA)
3040                     _LCD3	.equ	0x18B
3041                     
3042                     	.area DSEG(DATA)
3043                     _LCD4	.equ	0x18C
3044                     
3045                     	.area DSEG(DATA)
3046                     _LCD5	.equ	0x18D
3047                     
3048                     	.area DSEG(DATA)
3049                     _LCD6	.equ	0x18E
3050                     
3051                     	.area DSEG(DATA)
3052                     _LCD7	.equ	0x18F
3053                     
3054                     	.area DSEG(DATA)
3055                     _LCD8	.equ	0x190
3056                     
3057                     	.area DSEG(DATA)
3058                     _LCD9	.equ	0x191
3059                     
3060                     	.area DSEG(DATA)
3061                     _UR2CN	.equ	0x192
3062                     
3063                     	.area DSEG(DATA)
3064                     _UR2STA	.equ	0x193
3065                     
3066                     	.area DSEG(DATA)
3067                     _BA2CN	.equ	0x194
3068                     
3069                     	.area DSEG(DATA)
3070                     _BG2RH	.equ	0x195
3071                     
3072                     	.area DSEG(DATA)
3073                     _BG2RL	.equ	0x196
3074                     
3075                     	.area DSEG(DATA)
3076                     _TX2R	.equ	0x197
3077                     
3078                     	.area DSEG(DATA)
3079                     _RC2REG	.equ	0x198
3080                     
3081                     	.area DSEG(DATA)
3082                     _TMA2R	.equ	0x1E8
3083                     
3084                     	.area DSEG(DATA)
3085                     _TMA2C	.equ	0x1E9
3086                     
3087                     	.area DSEG(DATA)
3088                     _LEDCN	.equ	0x1EA
3089                     
3090                     	.area DSEG(DATA)
3091                     _IQ0	.equ	0x1EB
3092                     
3093                     	.area DSEG(DATA)
3094                     _IQ1	.equ	0x1EC
3095                     
3096                     	.area DSEG(DATA)
3097                     _DGCON1	.equ	0x1ED
3098                     
3099                     	.area DSEG(DATA)
3100                     _DGCON2	.equ	0x1EE
3101                     
3102                     	.area DSEG(DATA)
3103                     _ADCRH	.equ	0x3A
3104                     
3105                     	.area DSEG(DATA)
3106                     _ADCRM	.equ	0x3B
3107                     
3108                     	.area DSEG(DATA)
3109                     _ADCRL	.equ	0x3C
3110                     
3111                     	.area DSEG(DATA)
3112                     _TEMDATA	.equ	0x2E0
3113                     
3114                     ;--------------------------------------------------------
3115                     ; absolute symbol definitions
3116                     ;--------------------------------------------------------
3117                     ;--------------------------------------------------------
3118                     ; compiler-defined variables
3119                     ;--------------------------------------------------------
3120                     	.area IDATA (DATA,REL,CON); pre-def
3121                     	.area IDATAROM (CODE,REL,CON); pre-def
3122                     	.area UDATA (DATA,REL,CON); pre-def
3123                     	.area UDATA (DATA,REL,CON) ;UDL_APP_Measure_0	udata
3124 @FSR2-CurrentOffset+001 --         r0x108F:	.ds	1
3125 @FSR2-CurrentOffset+003 --         r0x1090:	.ds	1
3126 @FSR2-CurrentOffset+002 --         r0x1091:	.ds	1
3127 @FSR2-CurrentOffset+004 --         r0x1092:	.ds	1
3128 @FSR2-CurrentOffset+005 --         r0x1093:	.ds	1
3129 0000 --             r0x10A5:	.ds	1
3130 @FSR2-CurrentOffset+001 --         r0x10B7:	.ds	1
3131 0000 --             r0x10B9:	.ds	1
3132 0000 --             r0x10BA:	.ds	1
3133 0000 --             r0x10BB:	.ds	1
3134 0000 --             r0x10BC:	.ds	1
3135 0000 --             r0x10C3:	.ds	1
3136 0000 --             r0x10C4:	.ds	1
3137 0000 --             r0x10C5:	.ds	1
3138 0000 --             r0x10C6:	.ds	1
3139 0000 --             r0x10CB:	.ds	1
3140 0000 --             r0x10CC:	.ds	1
3141 0000 --             r0x10CD:	.ds	1
3142 0000 --             r0x10CE:	.ds	1
3143 0000 --             r0x10CF:	.ds	1
3144 0000 --             r0x10D1:	.ds	1
3145 0000 --             r0x10D2:	.ds	1
3146 0000 --             r0x10D3:	.ds	1
3147 0000 --             r0x10D4:	.ds	1
3148 0000 --             r0x10D5:	.ds	1
3149 0000 --             r0x10D6:	.ds	1
3150 0000 --             r0x10D7:	.ds	1
3151 0000 --             r0x10D8:	.ds	1
3152 0000 --             r0x10DA:	.ds	1
3153 0000 --             r0x10DC:	.ds	1
3154 0000 --             r0x10EB:	.ds	1
3155 0000 --             r0x10EC:	.ds	1
3156 0000 --             r0x10ED:	.ds	1
3157 0000 --             r0x10EE:	.ds	1
3158 0000 --             r0x10EF:	.ds	1
3159 0000 --             r0x10F0:	.ds	1
3160 0000 --             r0x10F6:	.ds	1
3161 0000 --             r0x10F7:	.ds	1
3162 0000 --             r0x10F8:	.ds	1
3163 0000 --             r0x10F9:	.ds	1
3164 0000 --             r0x1106:	.ds	1
3165 0000 --             r0x1109:	.ds	1
3166 0000 --             r0x110A:	.ds	1
3167 0000 --             r0x110B:	.ds	1
3168 0000 --             r0x110C:	.ds	1
3169 0000 --             r0x110D:	.ds	1
3170 0000 --             r0x110E:	.ds	1
3171 0000 --             r0x1115:	.ds	1
3172 0000 --             r0x1117:	.ds	1
3173 0000 --             r0x1118:	.ds	1
3174 0000 --             r0x1119:	.ds	1
3175 0000 --             r0x111A:	.ds	1
3176 0000 --             r0x111B:	.ds	1
3177 0000 --             r0x111C:	.ds	1
3178                     	.area LOCALSTK (STK); local stack var
3179                     	.globl _abs_STK00
3180                     	.globl __divslong_STK06
3181                     	.globl __divslong_STK05
3182                     	.globl __divslong_STK04
3183                     	.globl __divslong_STK03
3184                     	.globl __divslong_STK02
3185                     	.globl __divslong_STK01
3186                     	.globl __divslong_STK00
3187                     	.globl _BIE_Write_STK01
3188                     	.globl _BIE_Write_STK00
3189 0000 --             _Judge_Stability_STK00:	.ds	1
3190                     	.globl _Judge_Stability_STK00
3191 0000 --             _Judge_Stability_STK01:	.ds	1
3192                     	.globl _Judge_Stability_STK01
3193 0000 --             _Judge_Stability_STK02:	.ds	1
3194                     	.globl _Judge_Stability_STK02
3195 0000 --             _Judge_Stability_STK03:	.ds	1
3196                     	.globl _Judge_Stability_STK03
3197                     	.globl __divuint_STK02
3198                     	.globl __divuint_STK01
3199                     	.globl __divuint_STK00
3200                     	.globl __mulint_STK02
3201                     	.globl __mulint_STK01
3202                     	.globl __mulint_STK00
3203                     	.globl _Centigrade_Convert_Fahrenheit_STK00
3204                     	.globl __mullong_STK06
3205                     	.globl __mullong_STK05
3206                     	.globl __mullong_STK04
3207                     	.globl __mullong_STK03
3208                     	.globl __mullong_STK02
3209                     	.globl __mullong_STK01
3210                     	.globl __mullong_STK00
3211                     	.globl __divulong_STK06
3212                     	.globl __divulong_STK05
3213                     	.globl __divulong_STK04
3214                     	.globl __divulong_STK03
3215                     	.globl __divulong_STK02
3216                     	.globl __divulong_STK01
3217                     	.globl __divulong_STK00
3218                     	.globl _Timer_Experience_STK06
3219                     	.globl _Timer_Experience_STK05
3220                     	.globl _Timer_Experience_STK04
3221                     	.globl _Timer_Experience_STK03
3222                     	.globl _Timer_Experience_STK02
3223                     	.globl _Timer_Experience_STK01
3224                     	.globl _Timer_Experience_STK00
3225 0000 --             _Temperature_Compensate_STK00:	.ds	1
3226                     	.globl _Temperature_Compensate_STK00
3227                     	.globl __g2ptrget1_STK00
3228                     	.globl __g2ptrget2_STK00
3229                     ;--------------------------------------------------------
3230                     ; initialized data
3231                     ;--------------------------------------------------------
3232                     
3233                     	.area	CONST   (CODE)	 ;APP_Measure-0-code, const
3234                     
3235                     _CloseTable:
3236 17C4 B4B4           	.byte #0xb4, #0xb4	; 46260
3237 17C5 B4B4           	.byte #0xb4, #0xb4	; 46260
3238 17C6 B4B4           	.byte #0xb4, #0xb4	; 46260
3239 17C7 B4B4           	.byte #0xb4, #0xb4	; 46260
3240 17C8 B4B4           	.byte #0xb4, #0xb4	; 46260
3241 17C9 B4B4           	.byte #0xb4, #0xb4	; 46260
3242 17CA B4B4           	.byte #0xb4, #0xb4	; 46260
3243 17CB B4B4           	.byte #0xb4, #0xb4	; 46260
3244 17CC B4B4           	.byte #0xb4, #0xb4	; 46260
3245 17CD B4B4           	.byte #0xb4, #0xb4	; 46260
3246 17CE B4B4           	.byte #0xb4, #0xb4	; 46260
3247 17CF B4B4           	.byte #0xb4, #0xb4	; 46260
3248 17D0 B4B4           	.byte #0xb4, #0xb4	; 46260
3249 17D1 B4B4           	.byte #0xb4, #0xb4	; 46260
3250 17D2 B4B4           	.byte #0xb4, #0xb4	; 46260
3251 17D3 B4B4           	.byte #0xb4, #0xb4	; 46260
3252 17D4 B4B4           	.byte #0xb4, #0xb4	; 46260
3253 17D5 B4B4           	.byte #0xb4, #0xb4	; 46260
3254 17D6 B4B4           	.byte #0xb4, #0xb4	; 46260
3255 17D7 B4B4           	.byte #0xb4, #0xb4	; 46260
3256 17D8 B4B4           	.byte #0xb4, #0xb4	; 46260
3257 17D9 B4B4           	.byte #0xb4, #0xb4	; 46260
3258 17DA B4B4           	.byte #0xb4, #0xb4	; 46260
3259 17DB B4B4           	.byte #0xb4, #0xb4	; 46260
3260 17DC B4B4           	.byte #0xb4, #0xb4	; 46260
3261 17DD B4B4           	.byte #0xb4, #0xb4	; 46260
3262 17DE B4B4           	.byte #0xb4, #0xb4	; 46260
3263 17DF B4B4           	.byte #0xb4, #0xb4	; 46260
3264 17E0 B4B4           	.byte #0xb4, #0xb4	; 46260
3265 17E1 B4B4           	.byte #0xb4, #0xb4	; 46260
3266 17E2 B4B4           	.byte #0xb4, #0xb4	; 46260
3267 17E3 AAB4           	.byte #0xaa, #0xb4	; 46250
3268 17E4 A0AA           	.byte #0xa0, #0xaa	; 43680
3269 17E5 96A0           	.byte #0x96, #0xa0	; 41110
3270 17E6 8C96           	.byte #0x8c, #0x96	; 38540
3271 17E7 828C           	.byte #0x82, #0x8c	; 35970
3272 17E8 7882           	.byte #0x78, #0x82	; 33400
3273 17E9 6E78           	.byte #0x6e, #0x78	; 30830
3274 17EA 646E           	.byte #0x64, #0x6e	; 28260
3275 17EB 5A64           	.byte #0x5a, #0x64	; 25690
3276 17EC 505A           	.byte #0x50, #0x5a	; 23120
3277 17ED 4650           	.byte #0x46, #0x50	; 20550
3278 17EE 3C46           	.byte #0x3c, #0x46	; 17980
3279 17EF 323C           	.byte #0x32, #0x3c	; 15410
3280 17F0 2832           	.byte #0x28, #0x32	; 12840
3281 17F1 1E28           	.byte #0x1e, #0x28	; 10270
3282 17F2 141E           	.byte #0x14, #0x1e	; 7700
3283 17F3 1414           	.byte #0x14, #0x14	; 5140
3284 17F4 0A0A           	.byte #0x0a, #0x0a	; 2570
3285                     
3286                     ;--------------------------------------------------------
3287                     ; initialized data - mirror
3288                     ;--------------------------------------------------------
3289                     
3290                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3291                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
3292                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
3293                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
3294                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3295                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3296                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3297                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3298                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3299                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3300                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3301                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3302                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3303                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3304                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3305                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3306                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3307                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
3308                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3309                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3310                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3311                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3312                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3313                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3314                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3315                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3316                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3317                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3318                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3319                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3320                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3321                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3322                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3323                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3324                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3325                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3326                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3327                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3328                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3329                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3330                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3331                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3332                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3333                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3334                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3335                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3336                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3337                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3338                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3339                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3340                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3341                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3342                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3343                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3344                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3345                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3346                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3347                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3348                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3349                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3350                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3351                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3352                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3353                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
3354                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3355                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3356                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3357                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3358                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3359                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3360                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3361                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3362                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3363                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3364                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3365                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3366                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3367                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3368                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3369                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3370                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3371                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3372                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3373                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3374                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3375                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3376                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3377                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3378                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3379                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3380                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3381                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3382                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3383                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3384                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
3385                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
3386                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
3387                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3388                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
3389                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
3390                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3391                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3392                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3393                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
3394                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
3395                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3396                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
3397                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3398                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
3399                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
3400                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3401                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3402                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3403                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3404                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3405                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3406                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3407                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3408                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3409                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3410                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3411                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3412                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3413                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3414                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3415                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3416                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3417                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3418                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3419                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3420                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3421                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3422                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3423                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3424                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3425                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3426                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3427                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3428                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3429                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
3430                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
3431                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
3432                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3433                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3434                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
3435                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
3436                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3437                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3438                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3439                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3440                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3441                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3442                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3443                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3444                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3445                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3446                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3447                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3448                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3449                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3450                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3451                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3452                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3453                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3454                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3455                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3456                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3457                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3458                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3459                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3460                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3461                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3462                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3463                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3464                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3465                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3466                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3467                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3468                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3469                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3470                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3471                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3472                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3473                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3474                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3475                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3476                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3477                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3478                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3479                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3480                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3481                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3482                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3483                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3484                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3485                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3486                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3487                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3488                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3489                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3490                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3491                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3492                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3493                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3494                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3495                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3496                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3497                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3498                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3499                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3500                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3501                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3502                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3503                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3504                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3505                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3506                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3507                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3508                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3509                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3510                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3511                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3512                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3513                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3514                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3515                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3516                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3517                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3518                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3519                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3520                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3521                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3522                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3523                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
3524                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3525                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
3526                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
3527                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
3528                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
3529                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3530                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3531                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3532                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3533                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3534                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3535                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3536                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3537                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3538                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3539                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3540                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3541                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3542                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3543                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3544                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3545                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3546                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3547                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3548                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3549                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3550                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3551                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3552                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3553                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3554                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3555                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3556                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3557                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3558                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
3559                     	;Following is optimization info, 
3560                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
3561                     	;--cdb--W:r0x1115:NULL+0:-1:1
3562                     	;--cdb--W:r0x111B:NULL+0:-1:1
3563                     	;--cdb--W:r0x1117:NULL+0:-1:1
3564                     	;--cdb--W:r0x1115:NULL+0:-1:0
3565                     	;--cdb--W:r0x1116:NULL+0:-1:0
3566                     	;--cdb--W:r0x1117:NULL+0:-1:0
3567                     	;--cdb--W:r0x1118:NULL+0:-1:0
3568                     	;--cdb--W:r0x1119:STK00+0:-1:0
3569                     	;--cdb--W:r0x111B:NULL+0:0:0
3570                     	;--cdb--W:r0x111C:NULL+0:0:0
3571                     	;--cdb--W:r0x111D:r0x1117+0:-1:0
3572                     	;--cdb--W:r0x111E:r0x1118+1:-1:0
3573                     	;--cdb--W:r0x1116:NULL+0:-1:1
3574                     	;--cdb--W:r0x1118:NULL+0:-1:1
3575                     	;--cdb--W:r0x111C:NULL+0:-1:1
3576                     	;--cdb--W:r0x111A:r0x1118+1:-1:0
3577                     	;--cdb--W:r0x111A:NULL+0:-1:1
3578                     	;--cdb--W:r0x110E:NULL+0:-1:1
3579                     	;--cdb--W:r0x110B:NULL+0:-1:1
3580                     	;--cdb--W:r0x110A:NULL+0:-1:1
3581                     	;--cdb--W:r0x110F:NULL+0:-1:1
3582                     	;--cdb--W:r0x110B:STK00+0:-1:0
3583                     	;--cdb--W:r0x110D:NULL+0:-1:1
3584                     	;--cdb--W:r0x1106:NULL+0:-1:1
3585                     	;--cdb--W:r0x1104:NULL+0:-1:0
3586                     	;--cdb--W:r0x1105:NULL+0:-1:0
3587                     	;--cdb--W:r0x1106:NULL+0:-1:0
3588                     	;--cdb--W:r0x1107:NULL+0:-1:0
3589                     	;--cdb--W:r0x1104:NULL+0:-1:1
3590                     	;--cdb--W:r0x1105:NULL+0:-1:1
3591                     	;--cdb--W:r0x1107:NULL+0:-1:1
3592                     	;--cdb--W:r0x10F6:NULL+0:-1:1
3593                     	;--cdb--W:r0x10F6:NULL+0:-1:0
3594                     	;--cdb--W:r0x10F7:NULL+0:-1:0
3595                     	;--cdb--W:r0x10F7:NULL+0:-1:1
3596                     	;--cdb--W:r0x10EB:NULL+0:-1:0
3597                     	;--cdb--W:r0x10EC:NULL+0:-1:0
3598                     	;--cdb--W:r0x10F1:r0x10EB+0:-1:0
3599                     	;--cdb--W:r0x10F3:NULL+0:0:0
3600                     	;--cdb--W:r0x10F4:NULL+0:0:0
3601                     	;--cdb--W:r0x10EB:NULL+0:-1:1
3602                     	;--cdb--W:r0x10EC:NULL+0:-1:1
3603                     	;--cdb--W:r0x10F3:NULL+0:-1:1
3604                     	;--cdb--W:r0x10F4:NULL+0:-1:1
3605                     	;--cdb--W:r0x10F2:r0x10EC+1:-1:0
3606                     	;--cdb--W:r0x10D3:NULL+0:-1:1
3607                     	;--cdb--W:r0x10D3:STK02+0:-1:0
3608                     	;--cdb--W:r0x10D4:STK01+0:-1:0
3609                     	;--cdb--W:r0x10D5:STK00+0:-1:0
3610                     	;--cdb--W:r0x10DB:STK00+0:-1:0
3611                     	;--cdb--W:r0x10DA:STK01+0:-1:0
3612                     	;--cdb--W:r0x10D9:STK02+0:-1:0
3613                     	;--cdb--W:r0x10D9:STK00+0:-1:0
3614                     	;--cdb--W:r0x10D4:NULL+0:-1:1
3615                     	;--cdb--W:r0x10D4:NULL+0:-1:0
3616                     	;--cdb--W:r0x10D3:NULL+0:-1:0
3617                     	;--cdb--W:r0x10CF:NULL+0:-1:1
3618                     	;--cdb--W:r0x10CF:NULL+0:-1:0
3619                     	;--cdb--W:r0x10D0:NULL+0:-1:0
3620                     	;--cdb--W:r0x10D0:NULL+0:-1:1
3621                     	;--cdb--W:r0x10C7:NULL+0:-1:1
3622                     	;--cdb--W:r0x10C3:NULL+0:-1:0
3623                     	;--cdb--W:r0x10C4:NULL+0:-1:0
3624                     	;--cdb--W:r0x10C7:STK00+0:-1:0
3625                     	;--cdb--W:r0x10C9:STK01+0:-1:0
3626                     	;--cdb--W:r0x10C3:NULL+0:-1:1
3627                     	;--cdb--W:r0x10C4:NULL+0:-1:1
3628                     	;--cdb--W:r0x10C6:NULL+0:-1:1
3629                     	;--cdb--W:r0x10BD:NULL+0:-1:1
3630                     	;--cdb--W:r0x10BD:NULL+0:-1:0
3631                     	;--cdb--W:r0x10BE:NULL+0:-1:0
3632                     	;--cdb--W:r0x10BE:NULL+0:-1:1
3633                     	;--cdb--W:r0x10B9:NULL+0:-1:0
3634                     	;--cdb--W:r0x10BA:NULL+0:-1:0
3635                     	;--cdb--W:r0x10B6:NULL+0:-1:1
3636                     	;--cdb--W:r0x10B4:NULL+0:-1:0
3637                     	;--cdb--W:r0x10B5:NULL+0:-1:0
3638                     	;--cdb--W:r0x10B4:NULL+0:-1:1
3639                     	;--cdb--W:r0x10B5:NULL+0:-1:1
3640                     	;--cdb--W:_Judge_Stability_STK02:NULL+0:-1:1
3641                     	;--cdb--W:_Judge_Stability_STK00:NULL+0:-1:1
3642                     	;--cdb--W:r0x10A5:NULL+0:-1:1
3643                     	;--cdb--W:_Judge_Stability_STK01:NULL+0:-1:1
3644                     	;--cdb--W:r0x1091:NULL+0:-1:1
3645                     	;--cdb--W:r0x1090:NULL+0:-1:1
3646                     	;--cdb--W:r0x108F:NULL+0:-1:1
3647                     	;--cdb--W:r0x108D:NULL+0:-1:1
3648                     	;--cdb--W:r0x108D:NULL+0:-1:0
3649                     	;--cdb--W:r0x108E:NULL+0:-1:0
3650                     	;--cdb--W:r0x108F:NULL+0:-1:0
3651                     	;--cdb--W:r0x108F:STK00+0:-1:0
3652                     	;--cdb--W:r0x1091:NULL+0:-1:0
3653                     	;--cdb--W:r0x1091:r0x1094+1:-1:0
3654                     	;--cdb--W:r0x1090:STK00+0:-1:0
3655                     	;--cdb--W:r0x1090:NULL+0:-1:0
3656                     	;--cdb--W:r0x1092:STK00+0:-1:0
3657                     	;--cdb--W:r0x1094:STK00+0:-1:0
3658                     	;--cdb--W:r0x1094:NULL+0:0:0
3659                     	;--cdb--W:r0x1094:r0x1090+1:-1:0
3660                     	;--cdb--W:r0x1095:STK01+0:-1:0
3661                     	;--cdb--W:r0x1093:STK01+0:-1:0
3662                     	;--cdb--W:r0x1093:NULL+0:0:0
3663                     	;--cdb--W:r0x108E:NULL+0:-1:1
3664                     	;--cdb--W:r0x1093:NULL+0:-1:1
3665                     	;--cdb--W:r0x1094:NULL+0:-1:1
3666                     	;--cdb--W:r0x1092:NULL+0:-1:0
3667                     	;--cdb--W:r0x1093:r0x108F+0:-1:0
3668                     	;--cdb--W:r0x1092:NULL+0:-1:1
3669                     	;--c2db--RNG$_Temp_Calibration_i_10000_416$1936$2011
3670                     	;--c2db--RNG$_Temp_Calibration_tmp_10000_416$2042$2051
3671                     	;--c2db--RNG$_Judge_Stability_Timer_10000_441$1821$1878
3672                     	;--c2db--RNG$_Judge_Stability_PresentTemp_10000_441$1844$1871
3673                     	;--c2db--RNG$_Judge_Stability_PriorTemp_10000_441$1864$1871
3674                     	;--c2db--RNG$_Start_Algorithm_i_10000_478$1534$1566
3675                     	;--c2db--RNG$_Forecast_Calculate_K_10000_511$1031$1344
3676                     	;--c2db--RNG$_Update_MaxTemp3Min_Result_10000_543$818$821
3677                     	;--c2db--RNG$_Temperature_Compensate_Temp_10000_593$569$659
3678                     	;--c2db--RNG$_Temperature_Compensate_F_OddFlag_10000_594$569$620
3679                     	;--c2db--RNG$_Temperature_Compensate_a_10000_594$614$645
3680                     	;--c2db--RNG$_Temperature_Compensate_b_10000_594$590$604
3681                     	;--c2db--RNG$_Forecast_Measure_Temp_10000_607$424$479
3682                     	END
