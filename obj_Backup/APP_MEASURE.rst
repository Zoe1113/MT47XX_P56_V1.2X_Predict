001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
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
208                     :$L:r0x111A:$L:r0x111C:$L:r0x111D:$L:r0x111E:$L:r0x111F\
209                     :$L:r0x1120:$L:r0x1121
210                     ;--------------------------------------------------------
211                     ;	;.line	870; ".\Source\APP_Measure.c"	switch (eMeas_Status)
212 0809 [00] [2] C487      _Forecast_Measure:	;Function start
213 080A [07] [2] 0605      	MVL	0x05
214 080B [07] [2] 6B9E      	CPSL	_eMeas_Status,0
215 080C [07] [2] 78F0      	JMP	_00644_DS_
216 080D [07] [2] 0608      	MVL	HIGHD2(_00829_DS_)
217 080E [07] [2] 661A      	MVF	_PCLATH,1,0
218 080F [07] [2] 659E      	MVF	_eMeas_Status,0,0
219 0810 [07] [2] 0414      	ADDL	D2(_00829_DS_)
220 0811 [07] [2] A82B      	BTSZ	_STATUS,4
221 0812 [07] [2] 3A1A      	INF	_PCLATH,1,0
222 0813 [07] [2] 661B      	MVF	_PCLATL,1,0
223                     _00829_DS_:
224 0814 [07] [2] 7804      	RJ	_00582_DS_
225 0815 [07] [2] 780B      	RJ	_00587_DS_
226 0816 [07] [2] 7821      	RJ	_00595_DS_
227 0817 [07] [2] 7855      	RJ	_00607_DS_
228 0818 [07] [2] 78E3      	RJ	_00642_DS_
229                     _00582_DS_:
230                     ;	;.line	875; ".\Source\APP_Measure.c"	if(!sTIMx.TempSampleFlag || (eMeasureMode == Bath_Mode) || !sActual_Forecast.AF_Start)
231 0819 [07] [2] B5CC      	BTSS	_sTIMx,2
232 081A [07] [2] 78E2      	JMP	_00644_DS_
233 081B [07] [2] 6502      	MVF	_eMeasureMode,0,0
234 081C [07] [2] 0303      	XORL	0x03
235 081D [07] [2] A02B      	BTSZ	_STATUS,0
236 081E [07] [2] 78DE      	JMP	_00644_DS_
237 081F [07] [2] B19F      	BTSS	_sActual_Forecast,0
238 0820 [07] [2] 78DC      	JMP	_00644_DS_
239                     _00587_DS_:
240                     ;	;.line	906; ".\Source\APP_Measure.c"	if(!ActualForecast_Select())
241 0821 [07] [2] C952      	CALL	_ActualForecast_Select
242                     	.CHKPARA _ActualForecast_Select 0
243 0822 [07] [2] 0200      	IORL	0x00
244 0823 [07] [2] A02B      	BTSZ	_STATUS,0
245 0824 [07] [2] 78D8      	JMP	_00644_DS_
246                     ;	;.line	911; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ResetTimeFlag)
247 0825 [07] [2] A99F      	BTSZ	_sActual_Forecast,4
248 0826 [07] [2] 7805      	JMP	_00593_DS_
249                     ;	;.line	913; ".\Source\APP_Measure.c"	sActual_Forecast.ResetTimeFlag = TRUE;
250 0827 [07] [2] 999F      	BSF	_sActual_Forecast,4
251                     ;	;.line	916; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
252 0828 [07] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
253                     ;	;.line	918; ".\Source\APP_Measure.c"	sForecast.Forecast_Timer = 0;
254 0829 [07] [2] 0D77      	CLRF	(_sForecast + 1),0
255                     ;	;.line	920; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
256 082A [07] [2] 0D73      	CLRF	(_sActual + 2),0
257 082B [07] [2] 780C      	JMP	_00595_DS_
258                     _00593_DS_:
259                     ;	;.line	925; ".\Source\APP_Measure.c"	if(++sActual_Forecast.Cnt_1S >= 4)
260 082C [07] [2] 39A0      	INF	(_sActual_Forecast + 1),0,0
261 082D [07] [2] 6686      	MVF	r0x111A,1,0
262 082E [07] [2] 67A0      	MVF	(_sActual_Forecast + 1),1,0
263 082F [07] [2] 0603      	MVL	0x03
264 0830 [07] [2] 6886      	CPSG	r0x111A,0
265 0831 [07] [2] 7806      	JMP	_00595_DS_
266                     ;	;.line	927; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
267 0832 [07] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
268                     ;	;.line	929; ".\Source\APP_Measure.c"	sForecast.Forecast_Timer++;
269 0833 [07] [2] 3B77      	INF	(_sForecast + 1),1,0
270                     ;	;.line	931; ".\Source\APP_Measure.c"	sActual.ActualTime++;
271 0834 [07] [2] 3B73      	INF	(_sActual + 2),1,0
272                     ;	;.line	933; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = TRUE;
273 0835 [07] [2] 000C F29F 	LDPR	(_sActual_Forecast + 0),0x00
274 0837 [07] [2] 9600      	BSF	_INDF0,3
275                     _00595_DS_:
276                     ;	;.line	949; ".\Source\APP_Measure.c"	if(sActual.Actual_Start && !sActual_Forecast.StableBuzzerFlag)
277 0838 [07] [2] A171      	BTSZ	_sActual,0
278 0839 [07] [2] A39F      	BTSZ	_sActual_Forecast,1
279 083A [07] [2] 7832      	JMP	_00607_DS_
280                     ;	;.line	951; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
281 083B [07] [2] B79F      	BTSS	_sActual_Forecast,3
282 083C [07] [2] 782C      	JMP	_00601_DS_
283                     ;	;.line	954; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
284 083D [07] [2] 879F      	BCF	_sActual_Forecast,3
285                     ;	;.line	957; ".\Source\APP_Measure.c"	Filter_ErrTemp();
286 083E [07] [2] CB45      	CALL	_Filter_ErrTemp
287                     ;	;.line	959; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
288 083F [07] [2] 65A6      	MVF	(_sActual_Forecast + 7),0,0
289 0840 [07] [2] 6685      	MVF	r0x111C,1,0
290 0841 [07] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
291 0842 [07] [2] 6684      	MVF	r0x111D,1,0
292 0843 [07] [2] 6485      	MVF	r0x111C,0,0
293 0844 [07] [2] 19A2      	SUBF	(_sActual_Forecast + 3),0,0
294 0845 [07] [2] 6484      	MVF	r0x111D,0,0
295 0846 [07] [2] 1DA3      	SUBC	(_sActual_Forecast + 4),0,0
296 0847 [07] [2] 70        	BTSZ	_STATUS,4
297 0847 [07] 04        	JMP	_00597_DS_
298                     ;	;.line	961; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
299 0848 [07] [2] 6485      	MVF	r0x111C,0,0
300 0849 [07] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
301 084A [07] [2] 6484      	MVF	r0x111D,0,0
302 084B [07] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
303                     _00597_DS_:
304                     ;	;.line	965; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
305 084C [07] [2] 6574      	MVF	(_sActual + 3),0,0
306 084D [07] [2] 6685      	MVF	r0x111C,1,0
307 084E [07] [2] 6575      	MVF	(_sActual + 4),0,0
308 084F [07] [2] 6684      	MVF	r0x111D,1,0
309 0850 [07] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
310 0851 [07] [2] 6683      	MVF	r0x111E,1,0
311 0852 [07] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
312 0853 [07] [2] 6682      	MVF	r0x111F,1,0
313 0854 [07] [2] 6572      	MVF	(_sActual + 1),0,0
314 0855 [07] [2] 660D      	MVF	_Judge_Stability_STK03,1,0
315 0856 [08] [2] 6484      	MVF	r0x111E,0,0
316 0857 [08] [2] 660D      	MVF	_Judge_Stability_STK02,1,0
317 0858 [09] [2] 6484      	MVF	r0x111F,0,0
318 0859 [09] [2] 660D      	MVF	_Judge_Stability_STK01,1,0
319 085A [10] [2] 6488      	MVF	r0x111C,0,0
320 085B [10] [2] 660D      	MVF	_Judge_Stability_STK00,1,0
321 085C [11] [2] 6488      	MVF	r0x111D,0,0
322 085D [11] [2] CB67      	CALL	_Judge_Stability
323 085E [07] [2] 0200      	IORL	0x00
324 085F [07] [2] 71        	BTSZ	_STATUS,0
325 085F [07] 05        	JMP	_00599_DS_
326                     ;	;.line	967; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
327 0860 [07] [2] 939F      	BSF	_sActual_Forecast,1
328                     ;	;.line	968; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
329 0861 [00] [1] 0011 992E 	BSF	_sBleStatus,4
330                     ;	;.line	969; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
331 0863 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
332                     _00599_DS_:
333                     ;	;.line	983; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
334 0865 [07] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
335 0866 [07] [2] 6774      	MVF	(_sActual + 3),1,0
336 0867 [07] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
337 0868 [07] [2] 6775      	MVF	(_sActual + 4),1,0
338                     _00601_DS_:
339                     ;	;.line	986; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
340 0869 [07] [2] BB90      	BTSS	_sTempCal,5
341 086A [07] [2] 7802      	JMP	_00607_DS_
342                     ;	;.line	990; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
343 086B [07] [2] 0601      	MVL	0x01
344 086C [07] [2] 673B      	MVF	(_ERR + 6),1,0
345                     _00607_DS_:
346                     ;	;.line	996; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Start && !sActual_Forecast.StableBuzzerFlag)
347 086D [07] [2] A176      	BTSZ	_sForecast,0
348 086E [07] [2] A39F      	BTSZ	_sActual_Forecast,1
349 086F [07] [2] 788C      	JMP	_00642_DS_
350                     ;	;.line	999; ".\Source\APP_Measure.c"	if(Temp_Drop())
351 0870 [07] [2] CA05      	CALL	_Temp_Drop
352                     	.CHKPARA _Temp_Drop 0
353 0871 [07] [2] 0200      	IORL	0x00
354 0872 [07] [2] 71        	BTSZ	_STATUS,0
355 0872 [07] 05        	JMP	_00609_DS_
356                     ;	;.line	1003; ".\Source\APP_Measure.c"	ERR[Err1] = TRUE;
357 0873 [07] [2] 0601      	MVL	0x01
358 0874 [07] [2] 6736      	MVF	(_ERR + 1),1,0
359                     ;	;.line	1007; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_Er1Er2;
360 0875 [07] [2] 0605      	MVL	0x05
361 0876 [00] [1] 0011 676A 	MVF	_eBuzzer_Status,1,0
362                     _00609_DS_:
363                     ;	;.line	1017; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
364 0878 [00] [2] 0012 B79F 	BTSS	_sActual_Forecast,3
365 087A [07] [2] 7881      	JMP	_00642_DS_
366                     ;	;.line	1020; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
367 087B [07] [2] 879F      	BCF	_sActual_Forecast,3
368                     ;	;.line	1024; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
369 087C [07] [2] BB90      	BTSS	_sTempCal,5
370 087D [07] [2] 7805      	JMP	_00613_DS_
371                     ;	;.line	1026; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer > 8)
372 087E [07] [2] 0608      	MVL	0x08
373 087F [07] [2] 6977      	CPSG	(_sForecast + 1),0
374 0880 [07] [2] 7802      	JMP	_00613_DS_
375                     ;	;.line	1030; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
376 0881 [07] [2] 0601      	MVL	0x01
377 0882 [07] [2] 673B      	MVF	(_ERR + 6),1,0
378                     _00613_DS_:
379                     ;	;.line	1034; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer > 15)
380 0883 [07] [2] 6577      	MVF	(_sForecast + 1),0,0
381 0884 [07] [2] 6685      	MVF	r0x111C,1,0
382 0885 [07] [2] 04F0      	ADDL	0xf0
383 0886 [07] [2] 74        	BTSS	_STATUS,4
384 0886 [07] 06        	JMP	_00635_DS_
385                     ;	;.line	1038; ".\Source\APP_Measure.c"	ERR[Err2] = TRUE;
386 0887 [07] [2] 0601      	MVL	0x01
387 0888 [07] [2] 6737      	MVF	(_ERR + 2),1,0
388                     ;	;.line	1041; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_Er1Er2;
389 0889 [07] [2] 0605      	MVL	0x05
390 088A [00] [1] 0011 676A 	MVF	_eBuzzer_Status,1,0
391 088C [07] [1] 786A      	JMP	_00636_DS_
392                     _00635_DS_:
393                     ;	;.line	1043; ".\Source\APP_Measure.c"	else if(sForecast.Forecast_Timer >= 2)
394 088D [07] [2] 0601      	MVL	0x01
395 088E [07] [2] 6885      	CPSG	r0x111C,0
396 088F [07] [2] 7867      	JMP	_00636_DS_
397                     ;	;.line	1046; ".\Source\APP_Measure.c"	if(Forecast_Calculate_Conditions())
398 0890 [07] [2] CE71      	CALL	_Forecast_Calculate_Conditions
399                     	.CHKPARA _Forecast_Calculate_Conditions 0
400 0891 [07] [2] 0200      	IORL	0x00
401 0892 [07] [2] 71        	BTSZ	_STATUS,0
402 0892 [07] 64        	JMP	_00636_DS_
403                     ;	;.line	1049; ".\Source\APP_Measure.c"	Forecast_Calculate();
404 0893 [07] [2] C001 F64E 	CALL	_Forecast_Calculate
405                     	.CHKPARA _Forecast_Calculate 0
406                     ;	;.line	1061; ".\Source\APP_Measure.c"	Temp = sForecast.ForecastTemp + sForecast.EndTemp;
407 0895 [07] [2] 658C      	MVF	(_sForecast + 22),0,0
408 0896 [07] [2] 6685      	MVF	r0x111C,1,0
409 0897 [07] [2] 658D      	MVF	(_sForecast + 23),0,0
410 0898 [07] [2] 6684      	MVF	r0x111D,1,0
411 0899 [07] [2] 658E      	MVF	(_sForecast + 24),0,0
412 089A [07] [2] 6683      	MVF	r0x111E,1,0
413 089B [07] [2] 658F      	MVF	(_sForecast + 25),0,0
414 089C [07] [2] 6682      	MVF	r0x111F,1,0
415 089D [07] [2] 658A      	MVF	(_sForecast + 20),0,0
416 089E [07] [2] 6681      	MVF	r0x1120,1,0
417 089F [07] [2] 658B      	MVF	(_sForecast + 21),0,0
418 08A0 [07] [2] 6680      	MVF	r0x1121,1,0
419 08A1 [07] [2] 6485      	MVF	r0x111C,0,0
420 08A2 [07] [2] 1281      	ADDF	r0x1120,1,0
421 08A3 [07] [2] 6484      	MVF	r0x111D,0,0
422 08A4 [07] [2] 1680      	ADDC	r0x1121,1,0
423                     ;	;.line	1063; ".\Source\APP_Measure.c"	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
424 08A5 [07] [2] 4D02      	RRF	_eMeasureMode,0,0
425 08A6 [07] [2] 71        	BTSZ	_STATUS,0
426 08A6 [07] 03        	JMP	_00626_DS_
427 08A7 [07] [2] 0602      	MVL	0x02
428 08A8 [07] [2] 6D02      	CPSE	_eMeasureMode,0
429 08A9 [07] [2] 7819      	JMP	_00627_DS_
430                     _00626_DS_:
431                     ;	;.line	1065; ".\Source\APP_Measure.c"	if((Temp >= 3700) && (Temp <= 3800))
432 08AA [07] [2] 6481      	MVF	r0x1120,0,0
433 08AB [07] [2] 048C      	ADDL	0x8c
434 08AC [07] [2] 06F1      	MVL	0xf1
435 08AD [07] [2] 1480      	ADDC	r0x1121,0,0
436 08AE [07] [2] 74        	BTSS	_STATUS,4
437 08AE [07] 2E        	JMP	_00628_DS_
438 08AF [07] [2] 6481      	MVF	r0x1120,0,0
439 08B0 [07] [2] 0427      	ADDL	0x27
440 08B1 [07] [2] 06F1      	MVL	0xf1
441 08B2 [07] [2] 1480      	ADDC	r0x1121,0,0
442 08B3 [07] [2] 70        	BTSZ	_STATUS,4
443 08B3 [07] 29        	JMP	_00628_DS_
444                     ;	;.line	1067; ".\Source\APP_Measure.c"	if(sForecast.ForecastTemp > 80)
445 08B4 [07] [2] 6485      	MVF	r0x111C,0,0
446 08B5 [07] [2] 04AF      	ADDL	0xaf
447 08B6 [07] [2] 06FF      	MVL	0xff
448 08B7 [07] [2] 1484      	ADDC	r0x111D,0,0
449 08B8 [07] [2] 06FF      	MVL	0xff
450 08B9 [07] [2] 1483      	ADDC	r0x111E,0,0
451 08BA [07] [2] 06FF      	MVL	0xff
452 08BB [07] [2] 1482      	ADDC	r0x111F,0,0
453 08BC [07] [2] 74        	BTSS	_STATUS,4
454 08BC [07] 20        	JMP	_00628_DS_
455                     ;	;.line	1069; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 80;
456 08BD [07] [2] 0650      	MVL	0x50
457 08BE [07] [2] 678C      	MVF	(_sForecast + 22),1,0
458 08BF [07] [2] 0D8D      	CLRF	(_sForecast + 23),0
459 08C0 [07] [2] 0D8E      	CLRF	(_sForecast + 24),0
460 08C1 [07] [2] 0D8F      	CLRF	(_sForecast + 25),0
461 08C2 [07] [2] 781A      	JMP	_00628_DS_
462                     _00627_DS_:
463                     ;	;.line	1074; ".\Source\APP_Measure.c"	else if(eMeasureMode == Underarm_Mode)
464 08C3 [07] [2] 3502      	DCSZ	_eMeasureMode,0,0
465 08C4 [07] [2] 7818      	JMP	_00628_DS_
466                     ;	;.line	1077; ".\Source\APP_Measure.c"	if((Temp >= 3700) && (Temp <= 3800))
467 08C5 [07] [2] 6481      	MVF	r0x1120,0,0
468 08C6 [07] [2] 048C      	ADDL	0x8c
469 08C7 [07] [2] 06F1      	MVL	0xf1
470 08C8 [07] [2] 1480      	ADDC	r0x1121,0,0
471 08C9 [07] [2] 74        	BTSS	_STATUS,4
472 08C9 [07] 13        	JMP	_00628_DS_
473 08CA [07] [2] 6481      	MVF	r0x1120,0,0
474 08CB [07] [2] 0427      	ADDL	0x27
475 08CC [07] [2] 06F1      	MVL	0xf1
476 08CD [07] [2] 1480      	ADDC	r0x1121,0,0
477 08CE [07] [2] 70        	BTSZ	_STATUS,4
478 08CE [07] 0E        	JMP	_00628_DS_
479                     ;	;.line	1079; ".\Source\APP_Measure.c"	if(sForecast.ForecastTemp > 120)
480 08CF [07] [2] 6485      	MVF	r0x111C,0,0
481 08D0 [07] [2] 0487      	ADDL	0x87
482 08D1 [07] [2] 06FF      	MVL	0xff
483 08D2 [07] [2] 1484      	ADDC	r0x111D,0,0
484 08D3 [07] [2] 06FF      	MVL	0xff
485 08D4 [07] [2] 1483      	ADDC	r0x111E,0,0
486 08D5 [07] [2] 06FF      	MVL	0xff
487 08D6 [07] [2] 1482      	ADDC	r0x111F,0,0
488 08D7 [07] [2] 74        	BTSS	_STATUS,4
489 08D7 [07] 05        	JMP	_00628_DS_
490                     ;	;.line	1081; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 120;
491 08D8 [07] [2] 0678      	MVL	0x78
492 08D9 [07] [2] 678C      	MVF	(_sForecast + 22),1,0
493 08DA [07] [2] 0D8D      	CLRF	(_sForecast + 23),0
494 08DB [07] [2] 0D8E      	CLRF	(_sForecast + 24),0
495 08DC [07] [2] 0D8F      	CLRF	(_sForecast + 25),0
496                     _00628_DS_:
497                     ;	;.line	1095; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = Temperature_Compensate(sForecast.ForecastTemp + sForecast.EndTemp);
498 08DD [07] [2] 658C      	MVF	(_sForecast + 22),0,0
499 08DE [07] [2] 6685      	MVF	r0x111C,1,0
500 08DF [07] [2] 658D      	MVF	(_sForecast + 23),0,0
501 08E0 [07] [2] 6684      	MVF	r0x111D,1,0
502 08E1 [07] [2] 658A      	MVF	(_sForecast + 20),0,0
503 08E2 [07] [2] 1085      	ADDF	r0x111C,0,0
504 08E3 [07] [2] 660D      	MVF	_Temperature_Compensate_STK00,1,0
505 08E4 [08] [2] 6485      	MVF	r0x111D,0,0
506 08E5 [08] [2] 158B      	ADDC	(_sForecast + 21),0,0
507 08E6 [08] [2] C842      	CALL	_Temperature_Compensate
508                     	.CHKPARA _Temperature_Compensate 2
509 08E7 [07] [2] 6684      	MVF	r0x111D,1,0
510 08E8 [07] [2] D020 F28C 	MVFF	STK00,(_sForecast + 22)
511 08EA [07] [2] 678D      	MVF	(_sForecast + 23),1,0
512 08EB [07] [2] 0D8E      	CLRF	(_sForecast + 24),0
513 08EC [07] [2] 0D8F      	CLRF	(_sForecast + 25),0
514                     ;	;.line	1098; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sForecast.ForecastTemp;
515 08ED [07] [2] 6420      	MVF	STK00,0,0
516 08EE [07] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
517 08EF [07] [2] 6484      	MVF	r0x111D,0,0
518 08F0 [07] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
519                     ;	;.line	1101; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
520 08F1 [07] [2] 939F      	BSF	_sActual_Forecast,1
521                     ;	;.line	1102; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
522 08F2 [00] [1] 0011 992E 	BSF	_sBleStatus,4
523                     ;	;.line	1103; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
524 08F4 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
525                     ;	;.line	1105; ".\Source\APP_Measure.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = FALSE;
526 08F6 [07] [2] 8107      	BCF	_sTimeStamp,0
527                     _00636_DS_:
528                     ;	;.line	1118; ".\Source\APP_Measure.c"	sForecast.Prior1sForecastTemp = sADC.Centigrade250msTemp;
529 08F7 [00] [2] 0012 6550 	MVF	(_sADC + 13),0,0
530 08F9 [07] [2] 677E      	MVF	(_sForecast + 8),1,0
531 08FA [07] [2] 6551      	MVF	(_sADC + 14),0,0
532 08FB [07] [2] 677F      	MVF	(_sForecast + 9),1,0
533                     _00642_DS_:
534                     ;	;.line	1125; ".\Source\APP_Measure.c"	Forecast_To_Actual();
535 08FC [07] [2] C8A1      	CALL	_Forecast_To_Actual
536                     	.CHKPARA _Forecast_To_Actual 0
537                     _00644_DS_:
538                     ;	;.line	1132; ".\Source\APP_Measure.c"	eMeas_Status = Meas_Get_TEMP;
539 08FD [00] [2] 0012 0D9E 	CLRF	_eMeas_Status,0
540                     ;	;.line	1136; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag)
541 08FF [07] [2] B5CC      	BTSS	_sTIMx,2
542 0900 [07] [2] 7805      	JMP	_00647_DS_
543                     ;	;.line	1139; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = FALSE;
544 0901 [07] [2] 85CC      	BCF	_sTIMx,2
545                     ;	;.line	1141; ".\Source\APP_Measure.c"	sForecast.Prior250msForecastTemp = sADC.Centigrade250msTemp;
546 0902 [07] [2] 6550      	MVF	(_sADC + 13),0,0
547 0903 [07] [2] 677C      	MVF	(_sForecast + 6),1,0
548 0904 [07] [2] 6551      	MVF	(_sADC + 14),0,0
549 0905 [07] [2] 677D      	MVF	(_sForecast + 7),1,0
550 0906 [07] [2] C4B9      _00647_DS_:
551                     ;	;.line	1164; ".\Source\APP_Measure.c"	}
552 0907 [00] [2] 000A      	RET	
553                     ; exit point of _Forecast_Measure
554                     	.ENDFUNC	_Forecast_Measure
555                     ;--------------------------------------------------------
556                     
557                     .globl _Temperature_Compensate
558                     
559                     ;--------------------------------------------------------
560                     	.FUNC _Temperature_Compensate:$r:2:2:$C:__divuint:$C:__g2ptrget1:$C:__g2ptrget2\
561                     :$L:r0x110E:$L:_Temperature_Compensate_STK00:$L:r0x110F:$L:r0x1111:$L:r0x1110\
562                     :$L:r0x1112:$L:r0x1113
563                     ;--------------------------------------------------------
564                     ;	;.line	815; ".\Source\APP_Measure.c"	uint16 Temperature_Compensate(uint16 Temp)
565 0929 [00] [Y] C486      _Temperature_Compensate:	;Function start
566 092A [06] [Y] 0C84      	CLRF	r0x110F,0
567 092B [06] [Y] 6685      	MVF	r0x110E,1,0
568                     ;	;.line	822; ".\Source\APP_Measure.c"	if((Temp < 3700)&&(Temp > 0))
569 092C [06] [Y] 6486      	MVF	_Temperature_Compensate_STK00,0,0
570 092D [06] [Y] 048C      	ADDL	0x8c
571 092E [06] [Y] 06F1      	MVL	0xf1
572 092F [06] [Y] 1485      	ADDC	r0x110E,0,0
573 0930 [06] [Y] 70        	BTSZ	_STATUS,4
574 0930 [06] 3E        	JMP	_00574_DS_
575 0931 [06] [Y] 6486      	MVF	_Temperature_Compensate_STK00,0,0
576 0932 [06] [Y] 2C85      	IORF	r0x110E,0,0
577 0933 [06] [Y] 71        	BTSZ	_STATUS,0
578 0933 [06] 3B        	JMP	_00574_DS_
579                     ;	;.line	824; ".\Source\APP_Measure.c"	b = Temp/10;
580 0934 [06] [Y] 060A      	MVL	0x0a
581 0935 [06] [Y] 660D      	MVF	__divuint_STK02,1,0
582 0936 [07] [Y] 0C0D      	CLRF	__divuint_STK01,0
583 0937 [08] [Y] 6488      	MVF	_Temperature_Compensate_STK00,0,0
584 0938 [08] [Y] 660D      	MVF	__divuint_STK00,1,0
585 0939 [09] [Y] 6488      	MVF	r0x110E,0,0
586 093A [09] [Y] C001 F572 	CALL	__divuint
587 093C [06] [Y] 6683      	MVF	r0x1111,1,0
588 093D [06] [Y] 6420      	MVF	STK00,0,0
589                     ;	;.line	827; ".\Source\APP_Measure.c"	if(b < C_StartTemp)
590 093E [06] [Y] 04F0      	ADDL	0xf0
591 093F [06] [Y] 06FE      	MVL	0xfe
592 0940 [06] [Y] 1483      	ADDC	r0x1111,0,0
593 0941 [06] [Y] 70        	BTSZ	_STATUS,4
594 0941 [06] 02        	JMP	_00566_DS_
595                     ;	;.line	829; ".\Source\APP_Measure.c"	a = 0;
596 0942 [06] [Y] 0C81      	CLRF	r0x1112,0
597 0943 [06] [Y] 7803      	JMP	_00567_DS_
598                     _00566_DS_:
599                     ;	;.line	833; ".\Source\APP_Measure.c"	a = (uint8)(b - C_StartTemp);
600 0944 [06] [Y] 6420      	MVF	STK00,0,0
601 0945 [06] [Y] 04F0      	ADDL	0xf0
602 0946 [06] [Y] 6681      	MVF	r0x1112,1,0
603                     _00567_DS_:
604                     ;	;.line	837; ".\Source\APP_Measure.c"	if((a & 0x01)== 0x01)
605 0947 [06] [Y] 6481      	MVF	r0x1112,0,0
606 0948 [06] [Y] 0101      	ANDL	0x01
607 0949 [06] [Y] 3429      	DCSZ	_WREG,0,0
608 094A [06] [Y] 7802      	JMP	_00569_DS_
609                     ;	;.line	839; ".\Source\APP_Measure.c"	F_OddFlag = 1;
610 094B [06] [Y] 0601      	MVL	0x01
611 094C [06] [Y] 6684      	MVF	r0x110F,1,0
612                     _00569_DS_:
613                     ;	;.line	842; ".\Source\APP_Measure.c"	a >>= 1;
614 094D [06] [Y] 882B      	BCF	_STATUS,4
615 094E [06] [Y] 5081      	RRFC	r0x1112,0,0
616 094F [06] [Y] 6682      	MVF	r0x1110,1,0
617                     ;	;.line	845; ".\Source\APP_Measure.c"	if( F_OddFlag == 1)
618 0950 [06] [Y] 3484      	DCSZ	r0x110F,0,0
619 0951 [06] [Y] 780B      	JMP	_00571_DS_
620                     ;	;.line	847; ".\Source\APP_Measure.c"	a = CloseTable[a];
621 0952 [06] [Y] 6482      	MVF	r0x1110,0,0
622 0953 [06] [Y] 0702      	MULL	0x02
623 0954 [06] [Y] 6422      	MVF	_PRODL,0,0
624 0955 [06] [Y] 0484      	ADDL	(_CloseTable + 0)
625 0956 [06] [Y] 660D      	MVF	__g2ptrget1_STK00,1,0
626 0957 [07] [Y] 0639      	MVL	high (_CloseTable + 0)
627 0958 [07] [Y] 1421      	ADDC	_PRODH,0,0
628 0959 [07] [Y] 0280      	IORL	0x80
629 095A [07] [Y] CD48      	CALL	__g2ptrget1
630 095B [06] [Y] 6680      	MVF	r0x1113,1,0
631 095C [06] [Y] 780B      	JMP	_00572_DS_
632                     _00571_DS_:
633                     ;	;.line	851; ".\Source\APP_Measure.c"	a = CloseTable[a] >> 8;
634 095D [06] [Y] 6482      	MVF	r0x1110,0,0
635 095E [06] [Y] 0702      	MULL	0x02
636 095F [06] [Y] 6422      	MVF	_PRODL,0,0
637 0960 [06] [Y] 0484      	ADDL	(_CloseTable + 0)
638 0961 [06] [Y] 660D      	MVF	__g2ptrget2_STK00,1,0
639 0962 [07] [Y] 0639      	MVL	high (_CloseTable + 0)
640 0963 [07] [Y] 1421      	ADDC	_PRODH,0,0
641 0964 [07] [Y] 0280      	IORL	0x80
642 0965 [07] [Y] C001 F608 	CALL	__g2ptrget2
643 0967 [06] [Y] 6680      	MVF	r0x1113,1,0
644                     _00572_DS_:
645                     ;	;.line	854; ".\Source\APP_Measure.c"	return (Temp + a);
646 0968 [06] [Y] 0C82      	CLRF	r0x1110,0
647 0969 [06] [Y] 6480      	MVF	r0x1113,0,0
648 096A [06] [Y] 1086      	ADDF	_Temperature_Compensate_STK00,0,0
649 096B [06] [Y] 6620      	MVF	STK00,1,0
650 096C [06] [Y] 6485      	MVF	r0x110E,0,0
651 096D [06] [Y] 1482      	ADDC	r0x1110,0,0
652 096E [06] [Y] 7803      	JMP	_00577_DS_
653                     _00574_DS_:
654                     ;	;.line	858; ".\Source\APP_Measure.c"	return Temp;
655 096F [06] [Y] 6486      	MVF	_Temperature_Compensate_STK00,0,0
656 0970 [06] [Y] 6620      	MVF	STK00,1,0
657 0971 [06] [Y] 6485      	MVF	r0x110E,0,0
658 0972 [06] [Y] C4B9      _00577_DS_:
659                     ;	;.line	860; ".\Source\APP_Measure.c"	}
660 0973 [00] [Y] 000A      	RET	
661                     ; exit point of _Temperature_Compensate
662                     	.ENDFUNC	_Temperature_Compensate
663                     ;--------------------------------------------------------
664                     
665                     .globl _ActualForecast_Select
666                     
667                     ;--------------------------------------------------------
668                     	.FUNC _ActualForecast_Select:$r:1:0:$C:_Start_Algorithm\
669                     :$L:r0x110B
670                     ;--------------------------------------------------------
671                     ;	;.line	753; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ActualForecast_SelectFlag)
672 0974 [00] [2] C481      _ActualForecast_Select:	;Function start
673 0975 [01] [2] A59F      	BTSZ	_sActual_Forecast,2
674 0976 [01] [2] 7822      	JMP	_00560_DS_
675                     ;	;.line	755; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp > 3400)
676 0977 [01] [2] 6550      	MVF	(_sADC + 13),0,0
677 0978 [01] [2] 04B7      	ADDL	0xb7
678 0979 [01] [2] 06F2      	MVL	0xf2
679 097A [01] [2] 1551      	ADDC	(_sADC + 14),0,0
680 097B [01] [2] 74        	BTSS	_STATUS,4
681 097B [01] 0F        	JMP	_00553_DS_
682                     ;	;.line	758; ".\Source\APP_Measure.c"	if(++sForecast.PreBath_Counts >= 3)
683 097C [01] [2] 397A      	INF	(_sForecast + 4),0,0
684 097D [01] [2] 6680      	MVF	r0x110B,1,0
685 097E [01] [2] 677A      	MVF	(_sForecast + 4),1,0
686 097F [01] [2] 0602      	MVL	0x02
687 0980 [01] [2] 6880      	CPSG	r0x110B,0
688 0981 [01] [2] 780A      	JMP	_00554_DS_
689                     ;	;.line	761; ".\Source\APP_Measure.c"	sForecast.PreBath_Counts = 3;
690 0982 [01] [2] 0603      	MVL	0x03
691 0983 [01] [2] 677A      	MVF	(_sForecast + 4),1,0
692                     ;	;.line	763; ".\Source\APP_Measure.c"	sActual.Actual_Start = TRUE;
693 0984 [01] [2] 9171      	BSF	_sActual,0
694                     ;	;.line	765; ".\Source\APP_Measure.c"	sActual_Forecast.ActualForecast_SelectFlag = TRUE;
695 0985 [01] [2] 959F      	BSF	_sActual_Forecast,2
696                     ;	;.line	769; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sADC.Centigrade250msTemp;
697 0986 [01] [2] 6550      	MVF	(_sADC + 13),0,0
698 0987 [01] [2] 6774      	MVF	(_sActual + 3),1,0
699 0988 [01] [2] 6551      	MVF	(_sADC + 14),0,0
700 0989 [01] [2] 6775      	MVF	(_sActual + 4),1,0
701 098A [01] [2] 7801      	JMP	_00554_DS_
702                     _00553_DS_:
703                     ;	;.line	781; ".\Source\APP_Measure.c"	sForecast.PreBath_Counts = 0;
704 098B [01] [2] 0D7A      	CLRF	(_sForecast + 4),0
705                     _00554_DS_:
706                     ;	;.line	785; ".\Source\APP_Measure.c"	if(!sActual.Actual_Start)
707 098C [01] [2] A171      	BTSZ	_sActual,0
708 098D [01] [2] 7807      	JMP	_00558_DS_
709                     ;	;.line	788; ".\Source\APP_Measure.c"	if(Start_Algorithm())
710 098E [01] [2] C905      	CALL	_Start_Algorithm
711                     	.CHKPARA _Start_Algorithm 0
712 098F [01] [2] 0200      	IORL	0x00
713 0990 [01] [2] 71        	BTSZ	_STATUS,0
714 0990 [01] 04        	JMP	_00558_DS_
715                     ;	;.line	791; ".\Source\APP_Measure.c"	sForecast.Forecast_Start = TRUE;
716 0991 [01] [2] 9176      	BSF	_sForecast,0
717                     ;	;.line	793; ".\Source\APP_Measure.c"	sActual_Forecast.ActualForecast_SelectFlag = TRUE;
718 0992 [01] [2] 000C F29F 	LDPR	(_sActual_Forecast + 0),0x00
719 0994 [01] [2] 9400      	BSF	_INDF0,2
720                     _00558_DS_:
721                     ;	;.line	804; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sADC.Centigrade250msTemp;
722 0995 [01] [2] 6550      	MVF	(_sADC + 13),0,0
723 0996 [01] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
724 0997 [01] [2] 6551      	MVF	(_sADC + 14),0,0
725 0998 [01] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
726                     _00560_DS_:
727                     ;	;.line	807; ".\Source\APP_Measure.c"	return sActual_Forecast.ActualForecast_SelectFlag;
728 0999 [01] [2] 0600      	MVL	0x00
729 099A [01] [2] A59F      	BTSZ	_sActual_Forecast,2
730 099B [01] [2] 0601      	MVL	0x01
731                     ;	;.line	808; ".\Source\APP_Measure.c"	}
732 099C [01] [2] C4BF 000A 	RET	
733                     ; exit point of _ActualForecast_Select
734                     	.ENDFUNC	_ActualForecast_Select
735                     ;--------------------------------------------------------
736                     
737                     .globl _Forecast_To_Actual
738                     
739                     ;--------------------------------------------------------
740                     	.FUNC _Forecast_To_Actual:$r:0:0:$C:_Update_MaxTempImmediately:$C:_Update_MaxTemp3Min\
741                     
742                     ;--------------------------------------------------------
743                     ;	;.line	728; ".\Source\APP_Measure.c"	switch(eTo_Actual_Ways)
744                     _Forecast_To_Actual:	;Function start
745 099E [00] [2] 65AE      	MVF	_eTo_Actual_Ways,0,0
746 099F [00] [2] 035A      	XORL	0x5a
747 09A0 [00] [2] 71        	BTSZ	_STATUS,0
748 09A0 [00] 05        	JMP	_00528_DS_
749 09A1 [00] [2] 06A5      	MVL	0xa5
750 09A2 [00] [2] 6DAE      	CPSE	_eTo_Actual_Ways,0
751 09A3 [00] [2] 7803      	JMP	_00531_DS_
752                     ;	;.line	733; ".\Source\APP_Measure.c"	Update_MaxTempImmediately();
753 09A4 [00] [2] C803      	CALL	_Update_MaxTempImmediately
754                     	.CHKPARA _Update_MaxTempImmediately 0
755                     ;	;.line	734; ".\Source\APP_Measure.c"	break;
756 09A5 [00] [X] 7801      	JMP	_00531_DS_
757                     _00528_DS_:
758                     ;	;.line	738; ".\Source\APP_Measure.c"	Update_MaxTemp3Min();
759 09A6 [00] [2] C82A      	CALL	_Update_MaxTemp3Min
760                     	.CHKPARA _Update_MaxTemp3Min 0
761                     _00531_DS_:
762                     ;	;.line	743; ".\Source\APP_Measure.c"	}
763 09A7 [00] [X] 000A      	RET	
764                     ; exit point of _Forecast_To_Actual
765                     	.ENDFUNC	_Forecast_To_Actual
766                     ;--------------------------------------------------------
767                     
768                     .globl _Update_MaxTemp3Min
769                     
770                     ;--------------------------------------------------------
771                     	.FUNC _Update_MaxTemp3Min:$r:0:0:$C:_Timer_Experience:$C:_Filter_ErrTemp\
772                     :$L:r0x10FC:$L:r0x10FD:$L:r0x10FE:$L:r0x10FF
773                     ;--------------------------------------------------------
774                     ;	;.line	611; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Start)
775 09D1 [00] [2] C484      _Update_MaxTemp3Min:	;Function start
776 09D2 [04] [2] B176      	BTSS	_sForecast,0
777 09D3 [04] [2] 7856      	JMP	_00520_DS_
778                     ;	;.line	613; ".\Source\APP_Measure.c"	if(!sTimeStamp.Get_ForecastMeas_Start_Timer_Flag)
779 09D4 [04] [2] A107      	BTSZ	_sTimeStamp,0
780 09D5 [04] [2] 7809      	JMP	_00491_DS_
781                     ;	;.line	615; ".\Source\APP_Measure.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = TRUE;
782 09D6 [04] [2] 9107      	BSF	_sTimeStamp,0
783                     ;	;.line	616; ".\Source\APP_Measure.c"	sTimeStamp.ForecastMeas_Timer = sTimeStamp.Timer_Journey;
784 09D7 [04] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
785 09D8 [04] [2] 6719      	MVF	(_sTimeStamp + 18),1,0
786 09D9 [04] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
787 09DA [04] [2] 671A      	MVF	(_sTimeStamp + 19),1,0
788 09DB [04] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
789 09DC [04] [2] 671B      	MVF	(_sTimeStamp + 20),1,0
790 09DD [04] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
791 09DE [04] [2] 671C      	MVF	(_sTimeStamp + 21),1,0
792                     _00491_DS_:
793                     ;	;.line	620; ".\Source\APP_Measure.c"	Result = Timer_Experience(sTimeStamp.ForecastMeas_Timer,7200);
794 09DF [04] [2] 6519      	MVF	(_sTimeStamp + 18),0,0
795 09E0 [04] [2] 6683      	MVF	r0x10FC,1,0
796 09E1 [04] [2] 651A      	MVF	(_sTimeStamp + 19),0,0
797 09E2 [04] [2] 6682      	MVF	r0x10FD,1,0
798 09E3 [04] [2] 651B      	MVF	(_sTimeStamp + 20),0,0
799 09E4 [04] [2] 6681      	MVF	r0x10FE,1,0
800 09E5 [04] [2] 651C C85F 	MVF	(_sTimeStamp + 21),0,0
801 0A46 [04] [2] 6680      	MVF	r0x10FF,1,0
802 0A47 [04] [2] 0620      	MVL	0x20
803 0A48 [04] [2] 660D      	MVF	_Timer_Experience_STK06,1,0
804 0A49 [05] [2] 061C      	MVL	0x1c
805 0A4A [05] [2] 660D      	MVF	_Timer_Experience_STK05,1,0
806 0A4B [06] [2] 0C0D      	CLRF	_Timer_Experience_STK04,0
807 0A4C [07] [2] 0C0D      	CLRF	_Timer_Experience_STK03,0
808 0A4D [08] [2] 6487      	MVF	r0x10FC,0,0
809 0A4E [08] [2] 660D      	MVF	_Timer_Experience_STK02,1,0
810 0A4F [09] [2] 6487      	MVF	r0x10FD,0,0
811 0A50 [09] [2] 660D      	MVF	_Timer_Experience_STK01,1,0
812 0A51 [10] [2] 6487      	MVF	r0x10FE,0,0
813 0A52 [10] [2] 660D      	MVF	_Timer_Experience_STK00,1,0
814 0A53 [11] [2] 6487 000A 	MVF	r0x10FF,0,0
815 09E7 [11] [2] C000 FFF9 	CALL	_Timer_Experience
816                     	.CHKPARA _Timer_Experience 8
817                     ;	;.line	621; ".\Source\APP_Measure.c"	if(Result)
818 09E9 [04] [2] 0200      	IORL	0x00
819 09EA [04] [2] 71        	BTSZ	_STATUS,0
820 09EA [04] 3A        	JMP	_00509_DS_
821                     ;	;.line	623; ".\Source\APP_Measure.c"	if(!sForecast.Update_MaxTemp3Min_Arrived)
822 09EB [04] [2] A376      	BTSZ	_sForecast,1
823 09EC [04] [2] 780A      	JMP	_00495_DS_
824                     ;	;.line	625; ".\Source\APP_Measure.c"	sForecast.Update_MaxTemp3Min_Arrived = TRUE;
825 09ED [04] [2] 9376      	BSF	_sForecast,1
826                     ;	;.line	626; ".\Source\APP_Measure.c"	sTIMx.Cnt125ms = 0;
827 09EE [04] [2] 0DD1      	CLRF	(_sTIMx + 5),0
828 09EF [04] [2] 0DD2      	CLRF	(_sTIMx + 6),0
829                     ;	;.line	628; ".\Source\APP_Measure.c"	if(!sTempCal.Reset_From_CalOK)
830 09F0 [04] [2] AB90      	BTSZ	_sTempCal,5
831 09F1 [04] [2] 7803      	JMP	_00493_DS_
832                     ;	;.line	635; ".\Source\APP_Measure.c"	eBuzzer_Status = Buzzer_MeasuredTempActual;
833 09F2 [04] [2] 0603      	MVL	0x03
834 09F3 [00] [1] 0011 676A 	MVF	_eBuzzer_Status,1,0
835                     _00493_DS_:
836                     ;	;.line	637; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = TRUE;
837 09F5 [00] [2] 0012 979F 	BSF	_sActual_Forecast,3
838                     _00495_DS_:
839                     ;	;.line	641; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
840 09F7 [04] [2] B79F      	BTSS	_sActual_Forecast,3
841 09F8 [04] [2] 784B      	JMP	_00522_DS_
842                     ;	;.line	644; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
843 09F9 [04] [2] 879F      	BCF	_sActual_Forecast,3
844                     ;	;.line	647; ".\Source\APP_Measure.c"	Filter_ErrTemp();
845 09FA [04] [2] C989      	CALL	_Filter_ErrTemp
846                     ;	;.line	649; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 <= 3680)
847 09FB [04] [2] 65A6      	MVF	(_sActual_Forecast + 7),0,0
848 09FC [04] [2] 6683      	MVF	r0x10FC,1,0
849 09FD [04] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
850 09FE [04] [2] 6682      	MVF	r0x10FD,1,0
851 09FF [04] [2] 6483      	MVF	r0x10FC,0,0
852 0A00 [04] [2] 049F      	ADDL	0x9f
853 0A01 [04] [2] 06F1      	MVL	0xf1
854 0A02 [04] [2] 1482      	ADDC	r0x10FD,0,0
855 0A03 [04] [2] 70        	BTSZ	_STATUS,4
856 0A03 [04] 18        	JMP	_00502_DS_
857                     ;	;.line	652; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 >= sActual_Forecast.CentigradeTempDisp)
858 0A04 [04] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
859 0A05 [04] [2] 6681      	MVF	r0x10FE,1,0
860 0A06 [04] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
861 0A07 [04] [2] 6680      	MVF	r0x10FF,1,0
862 0A08 [04] [2] 6481      	MVF	r0x10FE,0,0
863 0A09 [04] [2] 1883      	SUBF	r0x10FC,0,0
864 0A0A [04] [2] 6480      	MVF	r0x10FF,0,0
865 0A0B [04] [2] 1C82      	SUBC	r0x10FD,0,0
866 0A0C [04] [2] 74        	BTSS	_STATUS,4
867 0A0C [04] 05        	JMP	_00499_DS_
868                     ;	;.line	655; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
869 0A0D [04] [2] 6483      	MVF	r0x10FC,0,0
870 0A0E [04] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
871 0A0F [04] [2] 6482      	MVF	r0x10FD,0,0
872 0A10 [04] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
873 0A11 [04] [2] 780E      	JMP	_00503_DS_
874                     _00499_DS_:
875                     ;	;.line	659; ".\Source\APP_Measure.c"	if(sActual_Forecast.CentigradeTempDisp > 3680)
876 0A12 [04] [2] 6481      	MVF	r0x10FE,0,0
877 0A13 [04] [2] 049F      	ADDL	0x9f
878 0A14 [04] [2] 06F1      	MVL	0xf1
879 0A15 [04] [2] 1480      	ADDC	r0x10FF,0,0
880 0A16 [04] [2] 74        	BTSS	_STATUS,4
881 0A16 [04] 09        	JMP	_00503_DS_
882                     ;	;.line	662; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = 3680;
883 0A17 [04] [2] 0660      	MVL	0x60
884 0A18 [04] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
885 0A19 [04] [2] 060E      	MVL	0x0e
886 0A1A [04] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
887 0A1B [04] [2] 7804      	JMP	_00503_DS_
888                     _00502_DS_:
889                     ;	;.line	675; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
890 0A1C [04] [2] 6483      	MVF	r0x10FC,0,0
891 0A1D [04] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
892 0A1E [04] [2] 6482      	MVF	r0x10FD,0,0
893 0A1F [04] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
894                     _00503_DS_:
895                     ;	;.line	677; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
896 0A20 [00] [1] 0011 992E 	BSF	_sBleStatus,4
897                     ;	;.line	678; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
898 0A22 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
899 0A24 [04] [2] 781F      	JMP	_00522_DS_
900                     _00509_DS_:
901                     ;	;.line	684; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
902 0A25 [04] [2] B79F      	BTSS	_sActual_Forecast,3
903 0A26 [04] [2] 781D      	JMP	_00522_DS_
904                     ;	;.line	687; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
905 0A27 [04] [2] 879F      	BCF	_sActual_Forecast,3
906                     ;	;.line	689; ".\Source\APP_Measure.c"	Filter_ErrTemp();
907 0A28 [04] [2] C95B      	CALL	_Filter_ErrTemp
908 0A29 [04] [2] 781A      	JMP	_00522_DS_
909                     _00520_DS_:
910                     ;	;.line	693; ".\Source\APP_Measure.c"	else if(sActual.Actual_Start)
911 0A2A [04] [2] A171      	BTSZ	_sActual,0
912                     ;	;.line	696; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
913 0A2B [04] [2] B79F      	BTSS	_sActual_Forecast,3
914 0A2C [04] [2] 7817      	JMP	_00522_DS_
915                     ;	;.line	699; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
916 0A2D [04] [2] 879F      	BCF	_sActual_Forecast,3
917                     ;	;.line	702; ".\Source\APP_Measure.c"	Filter_ErrTemp();
918 0A2E [04] [2] C955      	CALL	_Filter_ErrTemp
919                     ;	;.line	705; ".\Source\APP_Measure.c"	if(eBuzzer_Status == Buzzer_Silent)
920 0A2F [00] [1] 0011 6F6A 	TFSZ	_eBuzzer_Status,0
921 0A31 [04] [1] 7812      	JMP	_00522_DS_
922                     ;	;.line	708; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
923 0A32 [00] [2] 0012 65A6 	MVF	(_sActual_Forecast + 7),0,0
924 0A34 [04] [2] 6683      	MVF	r0x10FC,1,0
925 0A35 [04] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
926 0A36 [04] [2] 6682      	MVF	r0x10FD,1,0
927 0A37 [04] [2] 6483      	MVF	r0x10FC,0,0
928 0A38 [04] [2] 19A2      	SUBF	(_sActual_Forecast + 3),0,0
929 0A39 [04] [2] 6482      	MVF	r0x10FD,0,0
930 0A3A [04] [2] 1DA3      	SUBC	(_sActual_Forecast + 4),0,0
931 0A3B [04] [2] 70        	BTSZ	_STATUS,4
932 0A3B [04] 08        	JMP	_00522_DS_
933                     ;	;.line	712; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
934 0A3C [04] [2] 6483      	MVF	r0x10FC,0,0
935 0A3D [04] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
936 0A3E [04] [2] 6482      	MVF	r0x10FD,0,0
937 0A3F [04] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
938                     ;	;.line	713; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
939 0A40 [00] [1] 0011 992E 	BSF	_sBleStatus,4
940                     ;	;.line	714; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
941 0A42 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
942 0A44 [04] [X] C4BC      _00522_DS_:
943                     ;	;.line	719; ".\Source\APP_Measure.c"	}
944 0A45 [00] [X] 000A      	RET	
945                     ; exit point of _Update_MaxTemp3Min
946                     	.ENDFUNC	_Update_MaxTemp3Min
947                     ;--------------------------------------------------------
948                     
949                     .globl _Update_MaxTempImmediately
950                     
951                     ;--------------------------------------------------------
952                     	.FUNC _Update_MaxTempImmediately:$r:0:0:$C:_Filter_ErrTemp\
953                     :$L:r0x10F2:$L:r0x10F3:$L:r0x10F4:$L:r0x10F5:$L:r0x10F6\
954                     :$L:r0x10F7
955                     ;--------------------------------------------------------
956                     ;	;.line	581; ".\Source\APP_Measure.c"	if(sActual_Forecast.Get_1sTempFlag)
957 09A8 [00] [2] C486      _Update_MaxTempImmediately:	;Function start
958 09A9 [06] [2] B79F      	BTSS	_sActual_Forecast,3
959 09AA [06] [2] 7824      	JMP	_00485_DS_
960                     ;	;.line	584; ".\Source\APP_Measure.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
961 09AB [06] [2] 879F      	BCF	_sActual_Forecast,3
962                     ;	;.line	587; ".\Source\APP_Measure.c"	Filter_ErrTemp();
963 09AC [06] [2] C9D7      	CALL	_Filter_ErrTemp
964                     ;	;.line	590; ".\Source\APP_Measure.c"	if((sActual_Forecast.Temp_T1 > sForecast.ForecastTemp) && (eBuzzer_Status == Buzzer_Silent))
965 09AD [06] [2] 65A6      	MVF	(_sActual_Forecast + 7),0,0
966 09AE [06] [2] 6685      	MVF	r0x10F2,1,0
967 09AF [06] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
968 09B0 [06] [2] 6684      	MVF	r0x10F3,1,0
969 09B1 [06] [2] 658C      	MVF	(_sForecast + 22),0,0
970 09B2 [06] [2] 6683      	MVF	r0x10F4,1,0
971 09B3 [06] [2] 658D      	MVF	(_sForecast + 23),0,0
972 09B4 [06] [2] 6682      	MVF	r0x10F5,1,0
973 09B5 [06] [2] 658E      	MVF	(_sForecast + 24),0,0
974 09B6 [06] [2] 6681      	MVF	r0x10F6,1,0
975 09B7 [06] [2] 658F      	MVF	(_sForecast + 25),0,0
976 09B8 [06] [2] 6680      	MVF	r0x10F7,1,0
977 09B9 [06] [2] 6485      	MVF	r0x10F2,0,0
978 09BA [06] [2] 1883      	SUBF	r0x10F4,0,0
979 09BB [06] [2] 6484      	MVF	r0x10F3,0,0
980 09BC [06] [2] 1C82      	SUBC	r0x10F5,0,0
981 09BD [06] [2] 0600      	MVL	0x00
982 09BE [06] [2] 1C81      	SUBC	r0x10F6,0,0
983 09BF [06] [2] 0600      	MVL	0x00
984 09C0 [06] [2] 1C80      	SUBC	r0x10F7,0,0
985 09C1 [06] [2] 70        	BTSZ	_STATUS,4
986 09C1 [06] 0D        	JMP	_00485_DS_
987 09C2 [00] [1] 0011 6F6A 	TFSZ	_eBuzzer_Status,0
988 09C4 [06] [1] 780A      	JMP	_00485_DS_
989                     ;	;.line	593; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp)
990 09C5 [06] [1] 6485      	MVF	r0x10F2,0,0
991 09C6 [00] [2] 0012 19A2 	SUBF	(_sActual_Forecast + 3),0,0
992 09C8 [06] [2] 6484      	MVF	r0x10F3,0,0
993 09C9 [06] [2] 1DA3      	SUBC	(_sActual_Forecast + 4),0,0
994 09CA [06] [2] 70        	BTSZ	_STATUS,4
995 09CA [06] 04        	JMP	_00485_DS_
996                     ;	;.line	597; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
997 09CB [06] [2] 6485      	MVF	r0x10F2,0,0
998 09CC [06] [2] 67A2      	MVF	(_sActual_Forecast + 3),1,0
999 09CD [06] [2] 6484      	MVF	r0x10F3,0,0
1000 09CE [06] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
1001 09CF [06] [X] C4BA      _00485_DS_:
1002                     ;	;.line	601; ".\Source\APP_Measure.c"	}
1003 09D0 [00] [X] 000A      	RET	
1004                     ; exit point of _Update_MaxTempImmediately
1005                     	.ENDFUNC	_Update_MaxTempImmediately
1006                     ;--------------------------------------------------------
1007                     
1008                     .globl _Forecast_Calculate
1009                     
1010                     ;--------------------------------------------------------
1011                     	.FUNC _Forecast_Calculate:$r:0:0:$C:_abs:$C:__mullong:$C:__divulong\
1012                     :$L:r0x10DA:$L:r0x10DB:$L:r0x10DC:$L:r0x10DD:$L:r0x10DF\
1013                     :$L:r0x10DE:$L:r0x10E3:$L:r0x10E1
1014                     ;--------------------------------------------------------
1015                     ;	;.line	505; ".\Source\APP_Measure.c"	K = abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp);
1016 164E [00] [2] C488      _Forecast_Calculate:	;Function start
1017 164F [08] [2] 657E      	MVF	(_sForecast + 8),0,0
1018 1650 [08] [2] 1950      	SUBF	(_sADC + 13),0,0
1019 1651 [08] [2] 660D      	MVF	_abs_STK00,1,0
1020 1652 [09] [2] 657F      	MVF	(_sForecast + 9),0,0
1021 1653 [09] [2] 1D51      	SUBC	(_sADC + 14),0,0
1022 1654 [09] [2] C000 F908 	CALL	_abs
1023 1656 [08] [2] 6684      	MVF	r0x10DD,1,0
1024 1657 [08] [2] 0600      	MVL	0x00
1025 1658 [08] [2] AE84      	BTSZ	r0x10DD,7
1026 1659 [08] [2] 06FF      	MVL	0xff
1027 165A [08] [2] 6683      	MVF	r0x10DF,1,0
1028 165B [08] [2] 6682      	MVF	r0x10DE,1,0
1029                     ;	;.line	510; ".\Source\APP_Measure.c"	if((eMeasureMode == Oral_Mode) || (eMeasureMode == Rectal_Mode))
1030 165C [08] [2] 4D02      	RRF	_eMeasureMode,0,0
1031 165D [08] [2] 71        	BTSZ	_STATUS,0
1032 165D [08] 03        	JMP	_00471_DS_
1033 165E [08] [2] 0602      	MVL	0x02
1034 165F [08] [2] 6D02      	CPSE	_eMeasureMode,0
1035 1660 [08] [2] 788D      	JMP	_00472_DS_
1036                     _00471_DS_:
1037                     ;	;.line	513; ".\Source\APP_Measure.c"	if(sForecast.StartTemp >= 3400)
1038 1661 [08] [2] 6580      	MVF	(_sForecast + 10),0,0
1039 1662 [08] [2] 6687      	MVF	r0x10DA,1,0
1040 1663 [08] [2] 6581      	MVF	(_sForecast + 11),0,0
1041 1664 [08] [2] 6686      	MVF	r0x10DB,1,0
1042 1665 [08] [2] 6487      	MVF	r0x10DA,0,0
1043 1666 [08] [2] 04B8      	ADDL	0xb8
1044 1667 [08] [2] 06F2      	MVL	0xf2
1045 1668 [08] [2] 1486      	ADDC	r0x10DB,0,0
1046 1669 [08] [2] A82B      	BTSZ	_STATUS,4
1047 166A [08] [2] 7910      	JMP	_00473_DS_
1048                     ;	;.line	518; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2800)
1049 166B [08] [2] 6487      	MVF	r0x10DA,0,0
1050 166C [08] [2] 0410      	ADDL	0x10
1051 166D [08] [2] 06F5      	MVL	0xf5
1052 166E [08] [2] 1486      	ADDC	r0x10DB,0,0
1053 166F [08] [2] 74        	BTSS	_STATUS,4
1054 166F [08] 1D        	JMP	_00452_DS_
1055                     ;	;.line	520; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 3910 * K + 29000;
1056 1670 [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1057 1672 [09] [2] 6485      	MVF	r0x10DD,0,0
1058 1673 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1059 1674 [10] [2] 6484      	MVF	r0x10DE,0,0
1060 1675 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1061 1676 [11] [2] 6486      	MVF	r0x10DF,0,0
1062 1677 [11] [2] 660D      	MVF	__mullong_STK03,1,0
1063 1678 [12] [2] 0646      	MVL	0x46
1064 1679 [12] [2] 660D      	MVF	__mullong_STK02,1,0
1065 167A [13] [2] 060F      	MVL	0x0f
1066 167B [13] [2] 660D      	MVF	__mullong_STK01,1,0
1067 167C [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1068 167D [15] [2] 0600      	MVL	0x00
1069 167E [15] [2] CA6C      	CALL	__mullong
1070                     	.CHKPARA __mullong 8
1071 167F [08] [2] 6681      	MVF	r0x10E3,1,0
1072 1680 [08] [2] 641E      	MVF	STK02,0,0
1073 1681 [08] [2] 0448      	ADDL	0x48
1074 1682 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1075 1683 [08] [2] 0671      	MVL	0x71
1076 1684 [08] [2] 141F      	ADDC	STK01,0,0
1077 1685 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1078 1686 [08] [2] 0600      	MVL	0x00
1079 1687 [08] [2] 1420      	ADDC	STK00,0,0
1080 1688 [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1081 1689 [08] [2] 0600      	MVL	0x00
1082 168A [08] [2] 1481      	ADDC	r0x10E3,0,0
1083 168B [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1084 168C [08] [2] 78EE      	JMP	_00473_DS_
1085                     _00452_DS_:
1086                     ;	;.line	523; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2200)
1087 168D [08] [2] 6487      	MVF	r0x10DA,0,0
1088 168E [08] [2] 0468      	ADDL	0x68
1089 168F [08] [2] 06F7      	MVL	0xf7
1090 1690 [08] [2] 1486      	ADDC	r0x10DB,0,0
1091 1691 [08] [2] 74        	BTSS	_STATUS,4
1092 1691 [08] 1D        	JMP	_00449_DS_
1093                     ;	;.line	525; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4150 * K + 33000;
1094 1692 [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1095 1694 [09] [2] 6485      	MVF	r0x10DD,0,0
1096 1695 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1097 1696 [10] [2] 6484      	MVF	r0x10DE,0,0
1098 1697 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1099 1698 [11] [2] 6486      	MVF	r0x10DF,0,0
1100 1699 [11] [2] 660D      	MVF	__mullong_STK03,1,0
1101 169A [12] [2] 0636      	MVL	0x36
1102 169B [12] [2] 660D      	MVF	__mullong_STK02,1,0
1103 169C [13] [2] 0610      	MVL	0x10
1104 169D [13] [2] 660D      	MVF	__mullong_STK01,1,0
1105 169E [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1106 169F [15] [2] 0600      	MVL	0x00
1107 16A0 [15] [2] CA4A      	CALL	__mullong
1108 16A1 [08] [2] 6681      	MVF	r0x10E3,1,0
1109 16A2 [08] [2] 641E      	MVF	STK02,0,0
1110 16A3 [08] [2] 04E8      	ADDL	0xe8
1111 16A4 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1112 16A5 [08] [2] 0680      	MVL	0x80
1113 16A6 [08] [2] 141F      	ADDC	STK01,0,0
1114 16A7 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1115 16A8 [08] [2] 0600      	MVL	0x00
1116 16A9 [08] [2] 1420      	ADDC	STK00,0,0
1117 16AA [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1118 16AB [08] [2] 0600      	MVL	0x00
1119 16AC [08] [2] 1481      	ADDC	r0x10E3,0,0
1120 16AD [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1121 16AE [08] [2] 78CC      	JMP	_00473_DS_
1122                     _00449_DS_:
1123                     ;	;.line	528; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 1600)
1124 16AF [08] [2] 6487      	MVF	r0x10DA,0,0
1125 16B0 [08] [2] 04C0      	ADDL	0xc0
1126 16B1 [08] [2] 06F9      	MVL	0xf9
1127 16B2 [08] [2] 1486      	ADDC	r0x10DB,0,0
1128 16B3 [08] [2] 74        	BTSS	_STATUS,4
1129 16B3 [08] 1D        	JMP	_00446_DS_
1130                     ;	;.line	530; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4390 * K + 37000;
1131 16B4 [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1132 16B6 [09] [2] 6485      	MVF	r0x10DD,0,0
1133 16B7 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1134 16B8 [10] [2] 6484      	MVF	r0x10DE,0,0
1135 16B9 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1136 16BA [11] [2] 6486      	MVF	r0x10DF,0,0
1137 16BB [11] [2] 660D      	MVF	__mullong_STK03,1,0
1138 16BC [12] [2] 0626      	MVL	0x26
1139 16BD [12] [2] 660D      	MVF	__mullong_STK02,1,0
1140 16BE [13] [2] 0611      	MVL	0x11
1141 16BF [13] [2] 660D      	MVF	__mullong_STK01,1,0
1142 16C0 [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1143 16C1 [15] [2] 0600      	MVL	0x00
1144 16C2 [15] [2] CA28      	CALL	__mullong
1145 16C3 [08] [2] 6680      	MVF	r0x10E1,1,0
1146 16C4 [08] [2] 641E      	MVF	STK02,0,0
1147 16C5 [08] [2] 0488      	ADDL	0x88
1148 16C6 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1149 16C7 [08] [2] 0690      	MVL	0x90
1150 16C8 [08] [2] 141F      	ADDC	STK01,0,0
1151 16C9 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1152 16CA [08] [2] 0600      	MVL	0x00
1153 16CB [08] [2] 1420      	ADDC	STK00,0,0
1154 16CC [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1155 16CD [08] [2] 0600      	MVL	0x00
1156 16CE [08] [2] 1480      	ADDC	r0x10E1,0,0
1157 16CF [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1158 16D0 [08] [2] 78AA      	JMP	_00473_DS_
1159                     _00446_DS_:
1160                     ;	;.line	536; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 4630 * K + 41000;
1161 16D1 [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1162 16D3 [09] [2] 6485      	MVF	r0x10DD,0,0
1163 16D4 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1164 16D5 [10] [2] 6484      	MVF	r0x10DE,0,0
1165 16D6 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1166 16D7 [11] [2] 6486      	MVF	r0x10DF,0,0
1167 16D8 [11] [2] 660D      	MVF	__mullong_STK03,1,0
1168 16D9 [12] [2] 0616      	MVL	0x16
1169 16DA [12] [2] 660D      	MVF	__mullong_STK02,1,0
1170 16DB [13] [2] 0612      	MVL	0x12
1171 16DC [13] [2] 660D      	MVF	__mullong_STK01,1,0
1172 16DD [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1173 16DE [15] [2] 0600      	MVL	0x00
1174 16DF [15] [2] CA0B      	CALL	__mullong
1175 16E0 [08] [2] 6680      	MVF	r0x10E1,1,0
1176 16E1 [08] [2] 641E      	MVF	STK02,0,0
1177 16E2 [08] [2] 0428      	ADDL	0x28
1178 16E3 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1179 16E4 [08] [2] 06A0      	MVL	0xa0
1180 16E5 [08] [2] 141F      	ADDC	STK01,0,0
1181 16E6 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1182 16E7 [08] [2] 0600      	MVL	0x00
1183 16E8 [08] [2] 1420      	ADDC	STK00,0,0
1184 16E9 [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1185 16EA [08] [2] 0600      	MVL	0x00
1186 16EB [08] [2] 1480      	ADDC	r0x10E1,0,0
1187 16EC [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1188 16ED [08] [2] 788D      	JMP	_00473_DS_
1189                     _00472_DS_:
1190                     ;	;.line	540; ".\Source\APP_Measure.c"	else if(eMeasureMode == Underarm_Mode)
1191 16EE [08] [2] 3502      	DCSZ	_eMeasureMode,0,0
1192 16EF [08] [2] 788B      	JMP	_00473_DS_
1193                     ;	;.line	543; ".\Source\APP_Measure.c"	if(sForecast.StartTemp >= 3400)
1194 16F0 [08] [2] 6580      	MVF	(_sForecast + 10),0,0
1195 16F1 [08] [2] 6687      	MVF	r0x10DA,1,0
1196 16F2 [08] [2] 6581      	MVF	(_sForecast + 11),0,0
1197 16F3 [08] [2] 6686      	MVF	r0x10DB,1,0
1198 16F4 [08] [2] 6487      	MVF	r0x10DA,0,0
1199 16F5 [08] [2] 04B8      	ADDL	0xb8
1200 16F6 [08] [2] 06F2      	MVL	0xf2
1201 16F7 [08] [2] 1486      	ADDC	r0x10DB,0,0
1202 16F8 [08] [2] A82B      	BTSZ	_STATUS,4
1203 16F9 [08] [2] 7881      	JMP	_00473_DS_
1204                     ;	;.line	548; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2800)
1205 16FA [08] [2] 6487      	MVF	r0x10DA,0,0
1206 16FB [08] [2] 0410      	ADDL	0x10
1207 16FC [08] [2] 06F5      	MVL	0xf5
1208 16FD [08] [2] 1486      	ADDC	r0x10DB,0,0
1209 16FE [08] [2] 74        	BTSS	_STATUS,4
1210 16FE [08] 1D        	JMP	_00464_DS_
1211                     ;	;.line	550; ".\Source\APP_Measure.c"	sForecast.ForecastTemp =6900 * K + 56000;
1212 16FF [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1213 1701 [09] [2] 6485      	MVF	r0x10DD,0,0
1214 1702 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1215 1703 [10] [2] 6484      	MVF	r0x10DE,0,0
1216 1704 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1217 1705 [11] [2] 6486      	MVF	r0x10DF,0,0
1218 1706 [11] [2] 660D      	MVF	__mullong_STK03,1,0
1219 1707 [12] [2] 06F4      	MVL	0xf4
1220 1708 [12] [2] 660D      	MVF	__mullong_STK02,1,0
1221 1709 [13] [2] 061A      	MVL	0x1a
1222 170A [13] [2] 660D      	MVF	__mullong_STK01,1,0
1223 170B [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1224 170C [15] [2] 0600      	MVL	0x00
1225 170D [15] [2] C9DD      	CALL	__mullong
1226 170E [08] [2] 6681      	MVF	r0x10E3,1,0
1227 170F [08] [2] 641E      	MVF	STK02,0,0
1228 1710 [08] [2] 04C0      	ADDL	0xc0
1229 1711 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1230 1712 [08] [2] 06DA      	MVL	0xda
1231 1713 [08] [2] 141F      	ADDC	STK01,0,0
1232 1714 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1233 1715 [08] [2] 0600      	MVL	0x00
1234 1716 [08] [2] 1420      	ADDC	STK00,0,0
1235 1717 [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1236 1718 [08] [2] 0600      	MVL	0x00
1237 1719 [08] [2] 1481      	ADDC	r0x10E3,0,0
1238 171A [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1239 171B [08] [2] 785F      	JMP	_00473_DS_
1240                     _00464_DS_:
1241                     ;	;.line	553; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 2200)
1242 171C [08] [2] 6487      	MVF	r0x10DA,0,0
1243 171D [08] [2] 0468      	ADDL	0x68
1244 171E [08] [2] 06F7      	MVL	0xf7
1245 171F [08] [2] 1486      	ADDC	r0x10DB,0,0
1246 1720 [08] [2] 74        	BTSS	_STATUS,4
1247 1720 [08] 1D        	JMP	_00461_DS_
1248                     ;	;.line	555; ".\Source\APP_Measure.c"	sForecast.ForecastTemp =  7000 * K + 60000;
1249 1721 [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1250 1723 [09] [2] 6485      	MVF	r0x10DD,0,0
1251 1724 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1252 1725 [10] [2] 6484      	MVF	r0x10DE,0,0
1253 1726 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1254 1727 [11] [2] 6486      	MVF	r0x10DF,0,0
1255 1728 [11] [2] 660D      	MVF	__mullong_STK03,1,0
1256 1729 [12] [2] 0658      	MVL	0x58
1257 172A [12] [2] 660D      	MVF	__mullong_STK02,1,0
1258 172B [13] [2] 061B      	MVL	0x1b
1259 172C [13] [2] 660D      	MVF	__mullong_STK01,1,0
1260 172D [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1261 172E [15] [2] 0600      	MVL	0x00
1262 172F [15] [2] C9BB      	CALL	__mullong
1263 1730 [08] [2] 6681      	MVF	r0x10E3,1,0
1264 1731 [08] [2] 641E      	MVF	STK02,0,0
1265 1732 [08] [2] 0460      	ADDL	0x60
1266 1733 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1267 1734 [08] [2] 06EA      	MVL	0xea
1268 1735 [08] [2] 141F      	ADDC	STK01,0,0
1269 1736 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1270 1737 [08] [2] 0600      	MVL	0x00
1271 1738 [08] [2] 1420      	ADDC	STK00,0,0
1272 1739 [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1273 173A [08] [2] 0600      	MVL	0x00
1274 173B [08] [2] 1481      	ADDC	r0x10E3,0,0
1275 173C [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1276 173D [08] [2] 783D      	JMP	_00473_DS_
1277                     _00461_DS_:
1278                     ;	;.line	558; ".\Source\APP_Measure.c"	else if(sForecast.StartTemp >= 1600)
1279 173E [08] [2] 6487      	MVF	r0x10DA,0,0
1280 173F [08] [2] 04C0      	ADDL	0xc0
1281 1740 [08] [2] 06F9      	MVL	0xf9
1282 1741 [08] [2] 1486      	ADDC	r0x10DB,0,0
1283 1742 [08] [2] 74        	BTSS	_STATUS,4
1284 1742 [08] 1C        	JMP	_00458_DS_
1285                     ;	;.line	560; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 7100 * K + 64000;
1286 1743 [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1287 1745 [09] [2] 6485      	MVF	r0x10DD,0,0
1288 1746 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1289 1747 [10] [2] 6484      	MVF	r0x10DE,0,0
1290 1748 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1291 1749 [11] [2] 6486      	MVF	r0x10DF,0,0
1292 174A [11] [2] 660D      	MVF	__mullong_STK03,1,0
1293 174B [12] [2] 06BC      	MVL	0xbc
1294 174C [12] [2] 660D      	MVF	__mullong_STK02,1,0
1295 174D [13] [2] 061B      	MVL	0x1b
1296 174E [13] [2] 660D      	MVF	__mullong_STK01,1,0
1297 174F [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1298 1750 [15] [2] 0600      	MVL	0x00
1299 1751 [15] [2] C999      	CALL	__mullong
1300 1752 [08] [2] 6680      	MVF	r0x10E1,1,0
1301 1753 [08] [2] 641E      	MVF	STK02,0,0
1302 1754 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1303 1755 [08] [2] 641F      	MVF	STK01,0,0
1304 1756 [08] [2] 04FA      	ADDL	0xfa
1305 1757 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1306 1758 [08] [2] 0600      	MVL	0x00
1307 1759 [08] [2] 1420      	ADDC	STK00,0,0
1308 175A [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1309 175B [08] [2] 0600      	MVL	0x00
1310 175C [08] [2] 1480      	ADDC	r0x10E1,0,0
1311 175D [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1312 175E [08] [2] 781C      	JMP	_00473_DS_
1313                     _00458_DS_:
1314                     ;	;.line	566; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = 7200 * K + 68000;
1315 175F [08] [2] D020 F00D 	MVFF	STK00,__mullong_STK06
1316 1761 [09] [2] 6485      	MVF	r0x10DD,0,0
1317 1762 [09] [2] 660D      	MVF	__mullong_STK05,1,0
1318 1763 [10] [2] 6484      	MVF	r0x10DE,0,0
1319 1764 [10] [2] 660D      	MVF	__mullong_STK04,1,0
1320 1765 [11] [2] 6486      	MVF	r0x10DF,0,0
1321 1766 [11] [2] 660D      	MVF	__mullong_STK03,1,0
1322 1767 [12] [2] 0620      	MVL	0x20
1323 1768 [12] [2] 660D      	MVF	__mullong_STK02,1,0
1324 1769 [13] [2] 061C      	MVL	0x1c
1325 176A [13] [2] 660D      	MVF	__mullong_STK01,1,0
1326 176B [14] [2] 0C0D      	CLRF	__mullong_STK00,0
1327 176C [15] [2] 0600      	MVL	0x00
1328 176D [15] [2] C97D      	CALL	__mullong
1329 176E [08] [2] 6684      	MVF	r0x10DD,1,0
1330 176F [08] [2] 641E      	MVF	STK02,0,0
1331 1770 [08] [2] 04A0      	ADDL	0xa0
1332 1771 [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1333 1772 [08] [2] 0609      	MVL	0x09
1334 1773 [08] [2] 141F      	ADDC	STK01,0,0
1335 1774 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1336 1775 [08] [2] 0601      	MVL	0x01
1337 1776 [08] [2] 1420      	ADDC	STK00,0,0
1338 1777 [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1339 1778 [08] [2] 0600      	MVL	0x00
1340 1779 [08] [2] 1484      	ADDC	r0x10DD,0,0
1341 177A [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1342                     _00473_DS_:
1343                     ;	;.line	570; ".\Source\APP_Measure.c"	sForecast.ForecastTemp = (sForecast.ForecastTemp + 500) / 1000;
1344 177B [08] [2] 658C      	MVF	(_sForecast + 22),0,0
1345 177C [08] [2] 04F4      	ADDL	0xf4
1346 177D [08] [2] 6687      	MVF	r0x10DA,1,0
1347 177E [08] [2] 0601      	MVL	0x01
1348 177F [08] [2] 158D      	ADDC	(_sForecast + 23),0,0
1349 1780 [08] [2] 6686      	MVF	r0x10DB,1,0
1350 1781 [08] [2] 0600      	MVL	0x00
1351 1782 [08] [2] 158E      	ADDC	(_sForecast + 24),0,0
1352 1783 [08] [2] 6685      	MVF	r0x10DC,1,0
1353 1784 [08] [2] 0600      	MVL	0x00
1354 1785 [08] [2] 158F      	ADDC	(_sForecast + 25),0,0
1355 1786 [08] [2] 6684      	MVF	r0x10DD,1,0
1356 1787 [08] [2] 06E8      	MVL	0xe8
1357 1788 [08] [2] 660D      	MVF	__divulong_STK06,1,0
1358 1789 [09] [2] 0603      	MVL	0x03
1359 178A [09] [2] 660D      	MVF	__divulong_STK05,1,0
1360 178B [10] [2] 0C0D      	CLRF	__divulong_STK04,0
1361 178C [11] [2] 0C0D      	CLRF	__divulong_STK03,0
1362 178D [12] [2] 648B      	MVF	r0x10DA,0,0
1363 178E [12] [2] 660D      	MVF	__divulong_STK02,1,0
1364 178F [13] [2] 648B      	MVF	r0x10DB,0,0
1365 1790 [13] [2] 660D      	MVF	__divulong_STK01,1,0
1366 1791 [14] [2] 648B      	MVF	r0x10DC,0,0
1367 1792 [14] [2] 660D      	MVF	__divulong_STK00,1,0
1368 1793 [15] [2] 648B      	MVF	r0x10DD,0,0
1369 1794 [15] [2] C9A8      	CALL	__divulong
1370                     	.CHKPARA __divulong 8
1371 1795 [08] [2] 678F      	MVF	(_sForecast + 25),1,0
1372 1796 [08] [2] 6420      	MVF	STK00,0,0
1373 1797 [08] [2] 678E      	MVF	(_sForecast + 24),1,0
1374 1798 [08] [2] 641F      	MVF	STK01,0,0
1375 1799 [08] [2] 678D      	MVF	(_sForecast + 23),1,0
1376 179A [08] [2] 641E      	MVF	STK02,0,0
1377 179B [08] [2] 678C      	MVF	(_sForecast + 22),1,0
1378                     ;	;.line	571; ".\Source\APP_Measure.c"	}
1379 179C [08] [2] C4B8 000A 	RET	
1380                     ; exit point of _Forecast_Calculate
1381                     	.ENDFUNC	_Forecast_Calculate
1382                     ;--------------------------------------------------------
1383                     
1384                     .globl _Forecast_Calculate_Conditions
1385                     
1386                     ;--------------------------------------------------------
1387                     	.FUNC _Forecast_Calculate_Conditions:$r:1:0:$C:_abs\
1388                     :$L:r0x10D6:$L:r0x10D8:$L:r0x10D9
1389                     ;--------------------------------------------------------
1390                     ;	;.line	462; ".\Source\APP_Measure.c"	if(sForecast.Forecast_Timer >= 3)
1391 0702 [00] [2] C483      _Forecast_Calculate_Conditions:	;Function start
1392 0703 [03] [2] 0602      	MVL	0x02
1393 0704 [03] [2] 6977      	CPSG	(_sForecast + 1),0
1394 0705 [03] [2] 7824      	JMP	_00439_DS_
1395                     ;	;.line	465; ".\Source\APP_Measure.c"	if(abs(sADC.Centigrade250msTemp - sForecast.Prior1sForecastTemp) >= 0)
1396 0706 [03] [2] 657E      	MVF	(_sForecast + 8),0,0
1397 0707 [03] [2] 1950      	SUBF	(_sADC + 13),0,0
1398 0708 [03] [2] 660D      	MVF	_abs_STK00,1,0
1399 0709 [04] [2] 657F      	MVF	(_sForecast + 9),0,0
1400 070A [04] [2] 1D51      	SUBC	(_sADC + 14),0,0
1401 070B [04] [2] C9FC      	CALL	_abs
1402 070C [03] [2] AE29      	BTSZ	_WREG,7
1403 070D [03] [2] 781B      	JMP	_00436_DS_
1404                     ;	;.line	469; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp < /*45*/40 + sForecast.Prior1sForecastTemp)
1405 070E [03] [2] 657E      	MVF	(_sForecast + 8),0,0
1406 070F [03] [2] 0428      	ADDL	0x28
1407 0710 [03] [2] 6681      	MVF	r0x10D8,1,0
1408 0711 [03] [2] 0600      	MVL	0x00
1409 0712 [03] [2] 157F      	ADDC	(_sForecast + 9),0,0
1410 0713 [03] [2] 6680      	MVF	r0x10D9,1,0
1411 0714 [03] [2] 6481      	MVF	r0x10D8,0,0
1412 0715 [03] [2] 1950      	SUBF	(_sADC + 13),0,0
1413 0716 [03] [2] 6480      	MVF	r0x10D9,0,0
1414 0717 [03] [2] 1D51      	SUBC	(_sADC + 14),0,0
1415 0718 [03] [2] 70        	BTSZ	_STATUS,4
1416 0718 [03] 0E        	JMP	_00433_DS_
1417                     ;	;.line	472; ".\Source\APP_Measure.c"	if(++sForecast.Forecast_Counts >= 3)
1418 0719 [03] [2] 397B      	INF	(_sForecast + 5),0,0
1419 071A [03] [2] 6682      	MVF	r0x10D6,1,0
1420 071B [03] [2] 677B      	MVF	(_sForecast + 5),1,0
1421 071C [03] [2] 0602      	MVL	0x02
1422 071D [03] [2] 6882      	CPSG	r0x10D6,0
1423 071E [03] [2] 780B      	JMP	_00439_DS_
1424                     ;	;.line	475; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 3;
1425 071F [03] [2] 0603      	MVL	0x03
1426 0720 [03] [2] 677B      	MVF	(_sForecast + 5),1,0
1427                     ;	;.line	476; ".\Source\APP_Measure.c"	sForecast.EndTemp = sADC.Centigrade250msTemp/* / 10 * 10*/;
1428 0721 [03] [2] 6550      	MVF	(_sADC + 13),0,0
1429 0722 [03] [2] 678A      	MVF	(_sForecast + 20),1,0
1430 0723 [03] [2] 6551      	MVF	(_sADC + 14),0,0
1431 0724 [03] [2] 678B      	MVF	(_sForecast + 21),1,0
1432                     ;	;.line	477; ".\Source\APP_Measure.c"	return TRUE;
1433 0725 [03] [2] 0601      	MVL	0x01
1434 0726 [03] [2] 7804      	JMP	_00440_DS_
1435                     _00433_DS_:
1436                     ;	;.line	483; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 0;
1437 0727 [03] [2] 0D7B      	CLRF	(_sForecast + 5),0
1438 0728 [03] [2] 7801      	JMP	_00439_DS_
1439                     _00436_DS_:
1440                     ;	;.line	489; ".\Source\APP_Measure.c"	sForecast.Forecast_Counts = 0;
1441 0729 [03] [2] 0D7B      	CLRF	(_sForecast + 5),0
1442                     _00439_DS_:
1443                     ;	;.line	492; ".\Source\APP_Measure.c"	return FALSE;
1444 072A [03] [2] 0600      	MVL	0x00
1445 072B [03] [2] C4BD      _00440_DS_:
1446                     ;	;.line	493; ".\Source\APP_Measure.c"	}
1447 072C [00] [2] 000A      	RET	
1448                     ; exit point of _Forecast_Calculate_Conditions
1449                     	.ENDFUNC	_Forecast_Calculate_Conditions
1450                     ;--------------------------------------------------------
1451                     
1452                     .globl _Temp_Drop
1453                     
1454                     ;--------------------------------------------------------
1455                     	.FUNC _Temp_Drop:$r:1:0:$L:r0x10D2:$L:r0x10D3:$L:r0x10D4:$L:r0x10D5
1456                     ;--------------------------------------------------------
1457                     ;	;.line	435; ".\Source\APP_Measure.c"	if(sForecast.Prior250msForecastTemp > 3 + sADC.Centigrade250msTemp)
1458 0A76 [00] [2] C484      _Temp_Drop:	;Function start
1459 0A77 [04] [2] 657C      	MVF	(_sForecast + 6),0,0
1460 0A78 [04] [2] 6683      	MVF	r0x10D2,1,0
1461 0A79 [04] [2] 657D      	MVF	(_sForecast + 7),0,0
1462 0A7A [04] [2] 6682      	MVF	r0x10D3,1,0
1463 0A7B [04] [2] 6550      	MVF	(_sADC + 13),0,0
1464 0A7C [04] [2] 0403      	ADDL	0x03
1465 0A7D [04] [2] 6681      	MVF	r0x10D4,1,0
1466 0A7E [04] [2] 0600      	MVL	0x00
1467 0A7F [04] [2] 1551      	ADDC	(_sADC + 14),0,0
1468 0A80 [04] [2] 6680      	MVF	r0x10D5,1,0
1469 0A81 [04] [2] 6483      	MVF	r0x10D2,0,0
1470 0A82 [04] [2] 1881      	SUBF	r0x10D4,0,0
1471 0A83 [04] [2] 6482      	MVF	r0x10D3,0,0
1472 0A84 [04] [2] 1C80      	SUBC	r0x10D5,0,0
1473 0A85 [04] [2] 70        	BTSZ	_STATUS,4
1474 0A85 [04] 0A        	JMP	_00423_DS_
1475                     ;	;.line	438; ".\Source\APP_Measure.c"	if(++sForecast.Drop_Counts >= 5)
1476 0A86 [04] [2] 3979      	INF	(_sForecast + 3),0,0
1477 0A87 [04] [2] 6683      	MVF	r0x10D2,1,0
1478 0A88 [04] [2] 6779      	MVF	(_sForecast + 3),1,0
1479 0A89 [04] [2] 0604      	MVL	0x04
1480 0A8A [04] [2] 6883      	CPSG	r0x10D2,0
1481 0A8B [04] [2] 7805      	JMP	_00424_DS_
1482                     ;	;.line	441; ".\Source\APP_Measure.c"	sForecast.Drop_Counts = 5;
1483 0A8C [04] [2] 0605      	MVL	0x05
1484 0A8D [04] [2] 6779      	MVF	(_sForecast + 3),1,0
1485                     ;	;.line	442; ".\Source\APP_Measure.c"	return TRUE;
1486 0A8E [04] [2] 0601      	MVL	0x01
1487 0A8F [04] [2] 7802      	JMP	_00425_DS_
1488                     _00423_DS_:
1489                     ;	;.line	448; ".\Source\APP_Measure.c"	sForecast.Drop_Counts = 0;
1490 0A90 [04] [2] 0D79      	CLRF	(_sForecast + 3),0
1491                     _00424_DS_:
1492                     ;	;.line	451; ".\Source\APP_Measure.c"	return FALSE;
1493 0A91 [04] [2] 0600      	MVL	0x00
1494 0A92 [04] [2] C4BC      _00425_DS_:
1495                     ;	;.line	452; ".\Source\APP_Measure.c"	}
1496 0A93 [00] [2] 000A      	RET	
1497                     ; exit point of _Temp_Drop
1498                     	.ENDFUNC	_Temp_Drop
1499                     ;--------------------------------------------------------
1500                     
1501                     .globl _Start_Algorithm
1502                     
1503                     ;--------------------------------------------------------
1504                     	.FUNC _Start_Algorithm:$r:1:0:$L:r0x10CA:$L:r0x10CB:$L:r0x10CC:$L:r0x10CD
1505                     ;--------------------------------------------------------
1506                     ;	;.line	371; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp > 10 + sForecast.Prior250msForecastTemp)
1507 0A94 [00] [2] C484      _Start_Algorithm:	;Function start
1508 0A95 [04] [2] 657C      	MVF	(_sForecast + 6),0,0
1509 0A96 [04] [2] 040A      	ADDL	0x0a
1510 0A97 [04] [2] 6681      	MVF	r0x10CC,1,0
1511 0A98 [04] [2] 0600      	MVL	0x00
1512 0A99 [04] [2] 157D      	ADDC	(_sForecast + 7),0,0
1513 0A9A [04] [2] 6680      	MVF	r0x10CD,1,0
1514 0A9B [04] [2] 6550      	MVF	(_sADC + 13),0,0
1515 0A9C [04] [2] 1881      	SUBF	r0x10CC,0,0
1516 0A9D [04] [2] 6551      	MVF	(_sADC + 14),0,0
1517 0A9E [04] [2] 1C80      	SUBC	r0x10CD,0,0
1518 0A9F [04] [2] 70        	BTSZ	_STATUS,4
1519 0A9F [04] 41        	JMP	_00411_DS_
1520                     ;	;.line	374; ".\Source\APP_Measure.c"	if(!sForecast.FlagStartAlgorithmCounts)
1521 0AA0 [04] [2] A576      	BTSZ	_sForecast,2
1522 0AA1 [04] [2] 7806      	JMP	_00404_DS_
1523                     ;	;.line	376; ".\Source\APP_Measure.c"	sForecast.FlagStartAlgorithmCounts = TRUE;
1524 0AA2 [04] [2] 9576      	BSF	_sForecast,2
1525                     ;	;.line	378; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
1526 0AA3 [04] [2] 657C      	MVF	(_sForecast + 6),0,0
1527 0AA4 [04] [2] 6788      	MVF	(_sForecast + 18),1,0
1528 0AA5 [04] [2] 657D      	MVF	(_sForecast + 7),0,0
1529 0AA6 [04] [2] 6789      	MVF	(_sForecast + 19),1,0
1530 0AA7 [04] [2] 7825      	JMP	_00405_DS_
1531                     _00404_DS_:
1532                     ;	;.line	382; ".\Source\APP_Measure.c"	for(i = 0;i < 3;i++)
1533 0AA8 [04] [2] 0C83      	CLRF	r0x10CA,0
1534                     _00413_DS_:
1535                     ;	;.line	384; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[i] = sForecast.StartAlgorithmTemp[i + 1];
1536 0AA9 [04] [X] 6483      	MVF	r0x10CA,0,0
1537 0AAA [04] [X] 0702      	MULL	0x02
1538 0AAB [04] [X] 6422      	MVF	_PRODL,0,0
1539 0AAC [04] [X] 0482      	ADDL	(_sForecast + 12)
1540 0AAD [04] [X] 6682      	MVF	r0x10CB,1,0
1541 0AAE [04] [X] 0602      	MVL	high (_sForecast + 12)
1542 0AAF [04] [X] A82B      	BTSZ	_STATUS,4
1543 0AB0 [04] [X] 0401      	ADDL	0x01
1544 0AB1 [04] [X] 6681      	MVF	r0x10CC,1,0
1545 0AB2 [04] [X] 3883      	INF	r0x10CA,0,0
1546 0AB3 [04] [X] 0702      	MULL	0x02
1547 0AB4 [04] [X] 6422      	MVF	_PRODL,0,0
1548 0AB5 [04] [X] 000C F282 	LDPR	(_sForecast + 12),0
1549 0AB7 [04] [X] D004 F020 	MVFF	_PLUSW0,STK00
1550 0AB9 [04] [X] 3829      	INF	_WREG,0,0
1551 0ABA [04] [X] D004 F01F 	MVFF	_PLUSW0,STK01
1552 0ABC [04] [X] 6482      	MVF	r0x10CB,0,0
1553 0ABD [04] [X] 6610      	MVF	_FSR0L,1,0
1554 0ABE [04] [X] 6481      	MVF	r0x10CC,0,0
1555 0ABF [04] [X] 660F      	MVF	_FSR0H,1,0
1556 0AC0 [04] [X] 6420      	MVF	STK00,0,0
1557 0AC1 [04] [X] 6601      	MVF	_POINC0,1,0
1558 0AC2 [04] [X] 641F      	MVF	STK01,0,0
1559 0AC3 [04] [X] 6600      	MVF	_INDF0,1,0
1560                     ;	;.line	382; ".\Source\APP_Measure.c"	for(i = 0;i < 3;i++)
1561 0AC4 [04] [X] 3A83      	INF	r0x10CA,1,0
1562 0AC5 [04] [X] 0602      	MVL	0x02
1563 0AC6 [04] [X] 6883      	CPSG	r0x10CA,0
1564 0AC7 [04] [X] 7FE1      	JMP	_00413_DS_
1565                     ;	;.line	387; ".\Source\APP_Measure.c"	sForecast.StartAlgorithmTemp[3] = sForecast.Prior250msForecastTemp;
1566 0AC8 [00] [2] 0012 657C 	MVF	(_sForecast + 6),0,0
1567 0ACA [04] [2] 6788      	MVF	(_sForecast + 18),1,0
1568 0ACB [04] [2] 657D      	MVF	(_sForecast + 7),0,0
1569 0ACC [04] [2] 6789      	MVF	(_sForecast + 19),1,0
1570                     _00405_DS_:
1571                     ;	;.line	391; ".\Source\APP_Measure.c"	if(sForecast.Start_Counts++ >= 4)
1572 0ACD [04] [2] 6578      	MVF	(_sForecast + 2),0,0
1573 0ACE [04] [2] 6683      	MVF	r0x10CA,1,0
1574 0ACF [04] [2] 3829      	INF	_WREG,0,0
1575 0AD0 [04] [2] 6778      	MVF	(_sForecast + 2),1,0
1576 0AD1 [04] [2] 0603      	MVL	0x03
1577 0AD2 [04] [2] 6883      	CPSG	r0x10CA,0
1578 0AD3 [04] [2] 7812      	JMP	_00412_DS_
1579                     ;	;.line	394; ".\Source\APP_Measure.c"	sForecast.Start_Counts = 4;
1580 0AD4 [04] [2] 0604      	MVL	0x04
1581 0AD5 [04] [2] 6778      	MVF	(_sForecast + 2),1,0
1582                     ;	;.line	406; ".\Source\APP_Measure.c"	if(sADC.Centigrade250msTemp >= 3100)
1583 0AD6 [04] [2] 6550      	MVF	(_sADC + 13),0,0
1584 0AD7 [04] [2] 04E4      	ADDL	0xe4
1585 0AD8 [04] [2] 06F3      	MVL	0xf3
1586 0AD9 [04] [2] 1551      	ADDC	(_sADC + 14),0,0
1587 0ADA [04] [2] 74        	BTSS	_STATUS,4
1588 0ADA [04] 0B        	JMP	_00412_DS_
1589                     ;	;.line	409; ".\Source\APP_Measure.c"	sForecast.StartTemp = sForecast.StartAlgorithmTemp[0];
1590 0ADB [04] [2] 6582      	MVF	(_sForecast + 12),0,0
1591 0ADC [04] [2] 6780      	MVF	(_sForecast + 10),1,0
1592 0ADD [04] [2] 6583      	MVF	(_sForecast + 13),0,0
1593 0ADE [04] [2] 6781      	MVF	(_sForecast + 11),1,0
1594                     ;	;.line	410; ".\Source\APP_Measure.c"	return TRUE;
1595 0ADF [04] [2] 0601      	MVL	0x01
1596 0AE0 [04] [2] 7806      	JMP	_00415_DS_
1597                     _00411_DS_:
1598                     ;	;.line	418; ".\Source\APP_Measure.c"	sForecast.Start_Counts = 1;
1599 0AE1 [04] [2] 0601      	MVL	0x01
1600 0AE2 [04] [2] 6778      	MVF	(_sForecast + 2),1,0
1601                     ;	;.line	420; ".\Source\APP_Measure.c"	sForecast.FlagStartAlgorithmCounts = FALSE;
1602 0AE3 [04] [2] 000C F276 	LDPR	(_sForecast + 0),0x00
1603 0AE5 [04] [2] 8400      	BCF	_INDF0,2
1604                     _00412_DS_:
1605                     ;	;.line	423; ".\Source\APP_Measure.c"	return FALSE;
1606 0AE6 [04] [2] 0600      	MVL	0x00
1607 0AE7 [04] [2] C4BC      _00415_DS_:
1608                     ;	;.line	424; ".\Source\APP_Measure.c"	}
1609 0AE8 [00] [2] 000A      	RET	
1610                     ; exit point of _Start_Algorithm
1611                     	.ENDFUNC	_Start_Algorithm
1612                     ;--------------------------------------------------------
1613                     
1614                     .globl _Actual_Measure
1615                     
1616                     ;--------------------------------------------------------
1617                     	.FUNC _Actual_Measure:$r:0:0:$C:_Get_1sTemp:$C:_Filter_ErrTemp:$C:_Centigrade_Convert_Fahrenheit:$C:_PresetMeasTime\
1618                     :$C:_Judge_Stability\
1619                     :$L:r0x10BD:$L:r0x10BE:$L:r0x10BF:$L:r0x10C0:$L:r0x10C1\
1620                     :$L:r0x10C2
1621                     ;--------------------------------------------------------
1622                     ;	;.line	241; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag && sActual_Forecast.AF_Start && (eMeasureMode == Bath_Mode))
1623 0AE9 [00] [X] C486      _Actual_Measure:	;Function start
1624 0AEA [00] [2] 0012 A5CC 	BTSZ	_sTIMx,2
1625 0AEC [06] [2] B19F      	BTSS	_sActual_Forecast,0
1626 0AED [06] [2] 788A      	JMP	_00298_DS_
1627 0AEE [06] [2] 0603      	MVL	0x03
1628 0AEF [06] [2] 6D02      	CPSE	_eMeasureMode,0
1629 0AF0 [06] [2] 7887      	JMP	_00298_DS_
1630                     ;	;.line	244; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = 0;
1631 0AF1 [06] [2] 85CC      	BCF	_sTIMx,2
1632                     ;	;.line	255; ".\Source\APP_Measure.c"	if(Get_1sTemp())
1633 0AF2 [06] [2] C8BB      	CALL	_Get_1sTemp
1634                     	.CHKPARA _Get_1sTemp 0
1635 0AF3 [06] [2] 0200      	IORL	0x00
1636 0AF4 [06] [2] 71        	BTSZ	_STATUS,0
1637 0AF4 [06] 7E        	JMP	_00291_DS_
1638                     ;	;.line	258; ".\Source\APP_Measure.c"	Filter_ErrTemp();
1639 0AF5 [06] [2] C88E      	CALL	_Filter_ErrTemp
1640                     	.CHKPARA _Filter_ErrTemp 0
1641                     ;	;.line	259; ".\Source\APP_Measure.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Temp_T1);
1642 0AF6 [06] [2] 65A6      	MVF	(_sActual_Forecast + 7),0,0
1643 0AF7 [06] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
1644 0AF8 [07] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
1645 0AF9 [07] [2] C000 F5FF 	CALL	_Centigrade_Convert_Fahrenheit
1646                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1647 0AFB [06] [1] 6684      	MVF	r0x10BE,1,0
1648 0AFC [06] [1] D020 F2A4 	MVFF	STK00,(_sActual_Forecast + 5)
1649 0AFE [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
1650                     ;	;.line	261; ".\Source\APP_Measure.c"	if(((sActual_Forecast.ConvertedTempDisp >= Low_Temp_Centigrade) && (eTempUnit == Centigrade))
1651 0B00 [06] [2] 6420      	MVF	STK00,0,0
1652 0B01 [06] [2] 04D8      	ADDL	0xd8
1653 0B02 [06] [2] 06F5      	MVL	0xf5
1654 0B03 [06] [2] 1484      	ADDC	r0x10BE,0,0
1655 0B04 [06] [2] 74        	BTSS	_STATUS,4
1656 0B04 [06] 04        	JMP	_00289_DS_
1657 0B05 [00] [1] 0011 657F 	MVF	_eTempUnit,0,0
1658 0B07 [06] [1] 035A      	XORL	0x5a
1659 0B08 [06] [1] 71        	BTSZ	_STATUS,0
1660 0B08 [06] 0A        	JMP	_00285_DS_
1661                     _00289_DS_:
1662                     ;	;.line	262; ".\Source\APP_Measure.c"	|| ((sActual_Forecast.ConvertedTempDisp >= Low_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
1663 0B09 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1664 0B0B [06] [2] 0438      	ADDL	0x38
1665 0B0C [06] [2] 06E1      	MVL	0xe1
1666 0B0D [06] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1667 0B0E [06] [2] 74        	BTSS	_STATUS,4
1668 0B0E [06] 64        	JMP	_00291_DS_
1669 0B0F [06] [2] 06A5      	MVL	0xa5
1670 0B10 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1671 0B12 [06] [1] 7860      	JMP	_00291_DS_
1672                     _00285_DS_:
1673                     ;	;.line	264; ".\Source\APP_Measure.c"	sActual.Actual_Start = TRUE;
1674 0B13 [00] [2] 0012 9171 	BSF	_sActual,0
1675                     ;	;.line	266; ".\Source\APP_Measure.c"	if((sActual_Forecast.Temp_T1 > sActual_Forecast.CentigradeTempDisp) && (eBuzzer_Status == Buzzer_Silent))
1676 0B15 [06] [2] 65A6      	MVF	(_sActual_Forecast + 7),0,0
1677 0B16 [06] [2] 6685      	MVF	r0x10BD,1,0
1678 0B17 [06] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
1679 0B18 [06] [2] 6684      	MVF	r0x10BE,1,0
1680 0B19 [06] [2] 6485      	MVF	r0x10BD,0,0
1681 0B1A [06] [2] 19A2      	SUBF	(_sActual_Forecast + 3),0,0
1682 0B1B [06] [2] 6484      	MVF	r0x10BE,0,0
1683 0B1C [06] [2] 1DA3      	SUBC	(_sActual_Forecast + 4),0,0
1684 0B1D [06] [2] 70        	BTSZ	_STATUS,4
1685 0B1D [06] 0C        	JMP	_00266_DS_
1686 0B1E [00] [1] 0011 6F6A 	TFSZ	_eBuzzer_Status,0
1687 0B20 [06] [1] 7809      	JMP	_00266_DS_
1688                     ;	;.line	269; ".\Source\APP_Measure.c"	sActual_Forecast.CentigradeTempDisp = sActual_Forecast.Temp_T1;
1689 0B21 [06] [1] 6485      	MVF	r0x10BD,0,0
1690 0B22 [00] [2] 0012 67A2 	MVF	(_sActual_Forecast + 3),1,0
1691 0B24 [06] [2] 6484      	MVF	r0x10BE,0,0
1692 0B25 [06] [2] 67A3      	MVF	(_sActual_Forecast + 4),1,0
1693                     ;	;.line	270; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
1694 0B26 [00] [1] 0011 992E 	BSF	_sBleStatus,4
1695                     ;	;.line	271; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
1696 0B28 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
1697                     _00266_DS_:
1698                     ;	;.line	276; ".\Source\APP_Measure.c"	if(PresetMeasTime())
1699 0B2A [06] [X] C890      	CALL	_PresetMeasTime
1700                     	.CHKPARA _PresetMeasTime 0
1701 0B2B [06] [2] 0200      	IORL	0x00
1702 0B2C [06] [2] 71        	BTSZ	_STATUS,0
1703 0B2C [06] 40        	JMP	_00281_DS_
1704                     ;	;.line	279; ".\Source\APP_Measure.c"	sActual.ActualTime++;
1705 0B2D [06] [2] 3B73      	INF	(_sActual + 2),1,0
1706                     ;	;.line	281; ".\Source\APP_Measure.c"	if(!sActual_Forecast.StableBuzzerFlag)
1707 0B2E [06] [2] A39F      	BTSZ	_sActual_Forecast,1
1708 0B2F [06] [2] 7838      	JMP	_00279_DS_
1709                     ;	;.line	284; ".\Source\APP_Measure.c"	if(((sActual_Forecast.ConvertedTempDisp >= 3600) && (eTempUnit == Centigrade))
1710 0B30 [06] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1711 0B31 [06] [2] 04F0      	ADDL	0xf0
1712 0B32 [06] [2] 06F1      	MVL	0xf1
1713 0B33 [06] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1714 0B34 [06] [2] 74        	BTSS	_STATUS,4
1715 0B34 [06] 04        	JMP	_00277_DS_
1716 0B35 [00] [1] 0011 657F 	MVF	_eTempUnit,0,0
1717 0B37 [06] [1] 035A      	XORL	0x5a
1718 0B38 [06] [1] 71        	BTSZ	_STATUS,0
1719 0B38 [06] 0A        	JMP	_00272_DS_
1720                     _00277_DS_:
1721                     ;	;.line	285; ".\Source\APP_Measure.c"	|| ((sActual_Forecast.ConvertedTempDisp >= 9680) && (eTempUnit == Fahrenheit)))
1722 0B39 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1723 0B3B [06] [2] 0430      	ADDL	0x30
1724 0B3C [06] [2] 06DA      	MVL	0xda
1725 0B3D [06] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1726 0B3E [06] [2] 74        	BTSS	_STATUS,4
1727 0B3E [06] 17        	JMP	_00273_DS_
1728 0B3F [06] [2] 06A5      	MVL	0xa5
1729 0B40 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1730 0B42 [06] [1] 7813      	JMP	_00273_DS_
1731 0B43 [00] [Z] C836      _00272_DS_:
1732                     ;	;.line	288; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,sActual.StableTime))
1733 0B7A [00] [2] 0012 6574 	MVF	(_sActual + 3),0,0
1734 0B7C [06] [2] 6683      	MVF	r0x10BF,1,0
1735 0B7D [06] [2] 6575      	MVF	(_sActual + 4),0,0
1736 0B7E [06] [2] 6682      	MVF	r0x10C0,1,0
1737 0B7F [06] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
1738 0B80 [06] [2] 6681      	MVF	r0x10C1,1,0
1739 0B81 [06] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
1740 0B82 [06] [2] 6680 000A 	MVF	r0x10C2,1,0
1741 0B44 [06] [2] 6572      	MVF	(_sActual + 1),0,0
1742 0B45 [06] [2] 660D      	MVF	_Judge_Stability_STK03,1,0
1743 0B46 [07] [2] 6482      	MVF	r0x10C1,0,0
1744 0B47 [07] [2] 660D      	MVF	_Judge_Stability_STK02,1,0
1745 0B48 [08] [2] 6482      	MVF	r0x10C2,0,0
1746 0B49 [08] [2] 660D      	MVF	_Judge_Stability_STK01,1,0
1747 0B4A [09] [2] 6486      	MVF	r0x10BF,0,0
1748 0B4B [09] [2] 660D      	MVF	_Judge_Stability_STK00,1,0
1749 0B4C [10] [2] 6486      	MVF	r0x10C0,0,0
1750 0B4D [10] [2] C877      	CALL	_Judge_Stability
1751                     	.CHKPARA _Judge_Stability 5
1752 0B4E [06] [2] 0200      	IORL	0x00
1753 0B4F [06] [2] 71        	BTSZ	_STATUS,0
1754 0B4F [06] 18        	JMP	_00279_DS_
1755                     ;	;.line	290; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
1756 0B50 [06] [2] 939F      	BSF	_sActual_Forecast,1
1757                     ;	;.line	291; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
1758 0B51 [00] [1] 0011 992E 	BSF	_sBleStatus,4
1759                     ;	;.line	292; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
1760 0B53 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
1761 0B55 [06] [2] 7812      	JMP	_00279_DS_
1762 0B56 [00] [Z] C823      _00273_DS_:
1763                     ;	;.line	298; ".\Source\APP_Measure.c"	if(Judge_Stability(sActual.Prior1sActualTemp,sActual_Forecast.CentigradeTempDisp,16))
1764                     	MVF	(_sActual + 3),0,0
1765                     	MVF	r0x10BF,1,0
1766                     	MVF	(_sActual + 4),0,0
1767                     	MVF	r0x10C0,1,0
1768                     	MVF	(_sActual_Forecast + 3),0,0
1769                     	MVF	r0x10C1,1,0
1770                     	MVF	(_sActual_Forecast + 4),0,0
1771                     	MVF	r0x10C2,1,0
1772 0B57 [06] [2] 0610      	MVL	0x10
1773 0B58 [06] [2] 660D      	MVF	_Judge_Stability_STK03,1,0
1774 0B59 [07] [2] 6482      	MVF	r0x10C1,0,0
1775 0B5A [07] [2] 660D      	MVF	_Judge_Stability_STK02,1,0
1776 0B5B [08] [2] 6482      	MVF	r0x10C2,0,0
1777 0B5C [08] [2] 660D      	MVF	_Judge_Stability_STK01,1,0
1778 0B5D [09] [2] 6486      	MVF	r0x10BF,0,0
1779 0B5E [09] [2] 660D      	MVF	_Judge_Stability_STK00,1,0
1780 0B5F [10] [2] 6486      	MVF	r0x10C0,0,0
1781 0B60 [10] [2] C864      	CALL	_Judge_Stability
1782 0B61 [06] [2] 0200      	IORL	0x00
1783 0B62 [06] [2] 71        	BTSZ	_STATUS,0
1784 0B62 [06] 05        	JMP	_00279_DS_
1785                     ;	;.line	300; ".\Source\APP_Measure.c"	sActual_Forecast.StableBuzzerFlag = TRUE;
1786 0B63 [06] [2] 939F      	BSF	_sActual_Forecast,1
1787                     ;	;.line	301; ".\Source\APP_Measure.c"	sBleStatus.F_Temp_Updated = TRUE;
1788 0B64 [00] [1] 0011 992E 	BSF	_sBleStatus,4
1789                     ;	;.line	302; ".\Source\APP_Measure.c"	sMemoryFlag.MemTemp_Updated = TRUE;
1790 0B66 [00] [2] 0012 91C6 	BSF	_sMemoryFlag,0
1791                     _00279_DS_:
1792                     ;	;.line	307; ".\Source\APP_Measure.c"	sActual.Prior1sActualTemp = sActual_Forecast.CentigradeTempDisp;
1793 0B68 [06] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
1794 0B69 [06] [2] 6774      	MVF	(_sActual + 3),1,0
1795 0B6A [06] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
1796 0B6B [06] [2] 6775      	MVF	(_sActual + 4),1,0
1797 0B6C [06] [2] 7801      	JMP	_00282_DS_
1798                     _00281_DS_:
1799                     ;	;.line	312; ".\Source\APP_Measure.c"	sActual.ActualTime++;
1800 0B6D [06] [2] 3B73      	INF	(_sActual + 2),1,0
1801                     _00282_DS_:
1802                     ;	;.line	315; ".\Source\APP_Measure.c"	if(!sActual_Forecast.ResetTimeFlag)
1803 0B6E [06] [2] A99F      	BTSZ	_sActual_Forecast,4
1804 0B6F [06] [2] 7803      	JMP	_00291_DS_
1805                     ;	;.line	317; ".\Source\APP_Measure.c"	sActual_Forecast.ResetTimeFlag = TRUE;
1806 0B70 [06] [2] 999F      	BSF	_sActual_Forecast,4
1807                     ;	;.line	320; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
1808 0B71 [06] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
1809                     ;	;.line	322; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
1810 0B72 [06] [2] 0D73      	CLRF	(_sActual + 2),0
1811                     _00291_DS_:
1812                     ;	;.line	352; ".\Source\APP_Measure.c"	if(sTempCal.Reset_From_CalOK)
1813 0B73 [00] [2] 0012 BB90 	BTSS	_sTempCal,5
1814 0B75 [06] [2] 7802      	JMP	_00298_DS_
1815                     ;	;.line	356; ".\Source\APP_Measure.c"	ERR[Err6] = TRUE;
1816 0B76 [06] [2] 0601      	MVL	0x01
1817 0B77 [06] [2] 673B      	MVF	(_ERR + 6),1,0
1818 0B78 [06] [2] C4BA      _00298_DS_:
1819                     ;	;.line	359; ".\Source\APP_Measure.c"	}
1820 0B79 [00] [2] 000A      	RET	
1821                     ; exit point of _Actual_Measure
1822                     	.ENDFUNC	_Actual_Measure
1823                     ;--------------------------------------------------------
1824                     
1825                     .globl _Filter_ErrTemp
1826                     
1827                     ;--------------------------------------------------------
1828                     	.FUNC _Filter_ErrTemp:$r:0:0:$L:r0x10B9:$L:r0x10BA:$L:r0x10BB:$L:r0x10BC
1829                     ;--------------------------------------------------------
1830                     ;	;.line	217; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = sADC.Centigrade250msTemp;
1831 0B84 [00] [2] C484      _Filter_ErrTemp:	;Function start
1832 0B85 [04] [2] 6550      	MVF	(_sADC + 13),0,0
1833 0B86 [04] [2] 67AA      	MVF	(_sActual_Forecast + 11),1,0
1834 0B87 [04] [2] 6551      	MVF	(_sADC + 14),0,0
1835 0B88 [04] [2] 67AB      	MVF	(_sActual_Forecast + 12),1,0
1836                     ;	;.line	219; ".\Source\APP_Measure.c"	if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T2)
1837 0B89 [04] [2] 65A8      	MVF	(_sActual_Forecast + 9),0,0
1838 0B8A [04] [2] 6681      	MVF	r0x10BB,1,0
1839 0B8B [04] [2] 65A9      	MVF	(_sActual_Forecast + 10),0,0
1840 0B8C [04] [2] 6680      	MVF	r0x10BC,1,0
1841 0B8D [04] [2] 6481      	MVF	r0x10BB,0,0
1842 0B8E [04] [2] 1950      	SUBF	(_sADC + 13),0,0
1843 0B8F [04] [2] 6480      	MVF	r0x10BC,0,0
1844 0B90 [04] [2] 1D51      	SUBC	(_sADC + 14),0,0
1845 0B91 [04] [2] 74        	BTSS	_STATUS,4
1846 0B91 [04] 0B        	JMP	_00258_DS_
1847                     ;	;.line	221; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T1 = sActual_Forecast.Temp_T2;
1848 0B92 [04] [2] 6481      	MVF	r0x10BB,0,0
1849 0B93 [04] [2] 67A6      	MVF	(_sActual_Forecast + 7),1,0
1850 0B94 [04] [2] 6480      	MVF	r0x10BC,0,0
1851 0B95 [04] [2] 67A7      	MVF	(_sActual_Forecast + 8),1,0
1852                     ;	;.line	222; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
1853 0B96 [04] [2] 65AA      	MVF	(_sActual_Forecast + 11),0,0
1854 0B97 [04] [2] 67A8      	MVF	(_sActual_Forecast + 9),1,0
1855 0B98 [04] [2] 65AB      	MVF	(_sActual_Forecast + 12),0,0
1856 0B99 [04] [2] 67A9      	MVF	(_sActual_Forecast + 10),1,0
1857                     ;	;.line	223; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = 0;
1858 0B9A [04] [2] 0DAA      	CLRF	(_sActual_Forecast + 11),0
1859 0B9B [04] [2] 0DAB      	CLRF	(_sActual_Forecast + 12),0
1860 0B9C [04] [2] 780F      	JMP	_00260_DS_
1861                     _00258_DS_:
1862                     ;	;.line	225; ".\Source\APP_Measure.c"	else if(sActual_Forecast.Temp_T3 >= sActual_Forecast.Temp_T1)
1863 0B9D [04] [2] 65AA      	MVF	(_sActual_Forecast + 11),0,0
1864 0B9E [04] [2] 6683      	MVF	r0x10B9,1,0
1865 0B9F [04] [2] 65AB      	MVF	(_sActual_Forecast + 12),0,0
1866 0BA0 [04] [2] 6682      	MVF	r0x10BA,1,0
1867 0BA1 [04] [2] 65A6      	MVF	(_sActual_Forecast + 7),0,0
1868 0BA2 [04] [2] 1883      	SUBF	r0x10B9,0,0
1869 0BA3 [04] [2] 65A7      	MVF	(_sActual_Forecast + 8),0,0
1870 0BA4 [04] [2] 1C82      	SUBC	r0x10BA,0,0
1871 0BA5 [04] [2] 74        	BTSS	_STATUS,4
1872 0BA5 [04] 06        	JMP	_00260_DS_
1873                     ;	;.line	227; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T2 = sActual_Forecast.Temp_T3;
1874 0BA6 [04] [2] 6483      	MVF	r0x10B9,0,0
1875 0BA7 [04] [2] 67A8      	MVF	(_sActual_Forecast + 9),1,0
1876 0BA8 [04] [2] 6482      	MVF	r0x10BA,0,0
1877 0BA9 [04] [2] 67A9      	MVF	(_sActual_Forecast + 10),1,0
1878                     ;	;.line	228; ".\Source\APP_Measure.c"	sActual_Forecast.Temp_T3 = 0;
1879 0BAA [04] [2] 0DAA      	CLRF	(_sActual_Forecast + 11),0
1880 0BAB [04] [2] 0DAB      	CLRF	(_sActual_Forecast + 12),0
1881 0BAC [04] [2] C4BC      _00260_DS_:
1882                     ;	;.line	230; ".\Source\APP_Measure.c"	}
1883 0BAD [00] [2] 000A      	RET	
1884                     ; exit point of _Filter_ErrTemp
1885                     	.ENDFUNC	_Filter_ErrTemp
1886                     ;--------------------------------------------------------
1887                     
1888                     .globl _Get_1sTemp
1889                     
1890                     ;--------------------------------------------------------
1891                     	.FUNC _Get_1sTemp:$r:1:0:$L:r0x10B7
1892                     ;--------------------------------------------------------
1893                     ;	;.line	200; ".\Source\APP_Measure.c"	if(++sActual_Forecast.Cnt_1S >= 4)
1894 0BAE [00] [2] C481      _Get_1sTemp:	;Function start
1895 0BAF [01] [2] 39A0      	INF	(_sActual_Forecast + 1),0,0
1896 0BB0 [01] [2] 6680      	MVF	r0x10B7,1,0
1897 0BB1 [01] [2] 67A0      	MVF	(_sActual_Forecast + 1),1,0
1898 0BB2 [01] [2] 0603      	MVL	0x03
1899 0BB3 [01] [2] 6880      	CPSG	r0x10B7,0
1900 0BB4 [01] [2] 7803      	JMP	_00249_DS_
1901                     ;	;.line	202; ".\Source\APP_Measure.c"	sActual_Forecast.Cnt_1S = 0;
1902 0BB5 [01] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
1903                     ;	;.line	204; ".\Source\APP_Measure.c"	return TRUE;
1904 0BB6 [01] [2] 0601      	MVL	0x01
1905 0BB7 [01] [2] 7801      	JMP	_00250_DS_
1906                     _00249_DS_:
1907                     ;	;.line	206; ".\Source\APP_Measure.c"	return FALSE;
1908 0BB8 [01] [2] 0600      	MVL	0x00
1909 0BB9 [01] [2] C4BF      _00250_DS_:
1910                     ;	;.line	207; ".\Source\APP_Measure.c"	}
1911 0BBA [00] [2] 000A      	RET	
1912                     ; exit point of _Get_1sTemp
1913                     	.ENDFUNC	_Get_1sTemp
1914                     ;--------------------------------------------------------
1915                     
1916                     .globl _PresetMeasTime
1917                     
1918                     ;--------------------------------------------------------
1919                     	.FUNC _PresetMeasTime:$r:1:0
1920                     ;--------------------------------------------------------
1921                     ;	;.line	166; ".\Source\APP_Measure.c"	if(!sActual.PresetMeasTimeCompletedFlag)
1922                     _PresetMeasTime:	;Function start
1923 0BBB [00] [2] 0012 A571 	BTSZ	_sActual,2
1924 0BBD [00] [2] 7803      	JMP	_00243_DS_
1925                     ;	;.line	175; ".\Source\APP_Measure.c"	sActual.PresetMeasTimeCompletedFlag = TRUE;
1926 0BBE [00] [2] 000C F271 	LDPR	(_sActual + 0),0x00
1927 0BC0 [00] [2] 9400      	BSF	_INDF0,2
1928                     _00243_DS_:
1929                     ;	;.line	189; ".\Source\APP_Measure.c"	return sActual.PresetMeasTimeCompletedFlag;
1930 0BC1 [00] [2] 0600      	MVL	0x00
1931 0BC2 [00] [2] A571      	BTSZ	_sActual,2
1932 0BC3 [00] [2] 0601      	MVL	0x01
1933                     ;	;.line	190; ".\Source\APP_Measure.c"	}
1934 0BC4 [00] [2] 000A      	RET	
1935                     ; exit point of _PresetMeasTime
1936                     	.ENDFUNC	_PresetMeasTime
1937                     ;--------------------------------------------------------
1938                     
1939                     .globl _Judge_Stability
1940                     
1941                     ;--------------------------------------------------------
1942                     	.FUNC _Judge_Stability:$r:1:5:$C:__divuint:$C:__mulint:$C:_abs\
1943                     :$L:r0x10A5:$L:_Judge_Stability_STK00:$L:_Judge_Stability_STK01:$L:_Judge_Stability_STK02:$L:_Judge_Stability_STK03\
1944                     
1945                     ;--------------------------------------------------------
1946                     ;	;.line	134; ".\Source\APP_Measure.c"	uint8 Judge_Stability(uint16 PriorTemp,uint16 PresentTemp,uint8 Timer)
1947 0BC5 [00] [2] C481      _Judge_Stability:	;Function start
1948 0BC6 [01] [2] 6680      	MVF	r0x10A5,1,0
1949                     ;	;.line	140; ".\Source\APP_Measure.c"	PresentTemp = (PresentTemp + 5) / 10 * 10;
1950 0BC7 [01] [2] 0605      	MVL	0x05
1951 0BC8 [01] [2] 1283      	ADDF	_Judge_Stability_STK02,1,0
1952 0BC9 [01] [2] A82B      	BTSZ	_STATUS,4
1953 0BCA [01] [2] 3A82      	INF	_Judge_Stability_STK01,1,0
1954 0BCB [01] [2] 060A      	MVL	0x0a
1955 0BCC [01] [2] 660D      	MVF	__divuint_STK02,1,0
1956 0BCD [02] [2] 0C0D      	CLRF	__divuint_STK01,0
1957 0BCE [03] [2] 6485      	MVF	_Judge_Stability_STK02,0,0
1958 0BCF [03] [2] 660D      	MVF	__divuint_STK00,1,0
1959 0BD0 [04] [2] 6485      	MVF	_Judge_Stability_STK01,0,0
1960 0BD1 [04] [2] C001 F572 	CALL	__divuint
1961                     	.CHKPARA __divuint 4
1962 0BD3 [01] [2] D020 F00D 	MVFF	STK00,__mulint_STK02
1963 0BD5 [02] [2] 660D      	MVF	__mulint_STK01,1,0
1964 0BD6 [03] [2] 060A      	MVL	0x0a
1965 0BD7 [03] [2] 660D      	MVF	__mulint_STK00,1,0
1966 0BD8 [04] [2] 0600      	MVL	0x00
1967 0BD9 [04] [2] C001 F92A 	CALL	__mulint
1968                     	.CHKPARA __mulint 4
1969 0BDB [01] [2] 6682      	MVF	_Judge_Stability_STK01,1,0
1970 0BDC [01] [2] 6420      	MVF	STK00,0,0
1971 0BDD [01] [2] 6683      	MVF	_Judge_Stability_STK02,1,0
1972                     ;	;.line	141; ".\Source\APP_Measure.c"	PriorTemp = (PriorTemp + 5) / 10 * 10;
1973 0BDE [01] [2] 0605      	MVL	0x05
1974 0BDF [01] [2] 1281      	ADDF	_Judge_Stability_STK00,1,0
1975 0BE0 [01] [2] A82B      	BTSZ	_STATUS,4
1976 0BE1 [01] [2] 3A80      	INF	r0x10A5,1,0
1977 0BE2 [01] [2] 060A      	MVL	0x0a
1978 0BE3 [01] [2] 660D      	MVF	__divuint_STK02,1,0
1979 0BE4 [02] [2] 0C0D      	CLRF	__divuint_STK01,0
1980 0BE5 [03] [2] 6483      	MVF	_Judge_Stability_STK00,0,0
1981 0BE6 [03] [2] 660D      	MVF	__divuint_STK00,1,0
1982 0BE7 [04] [2] 6483      	MVF	r0x10A5,0,0
1983 0BE8 [04] [2] C001 F572 	CALL	__divuint
1984 0BEA [01] [2] D020 F00D 	MVFF	STK00,__mulint_STK02
1985 0BEC [02] [2] 660D      	MVF	__mulint_STK01,1,0
1986 0BED [03] [2] 060A      	MVL	0x0a
1987 0BEE [03] [2] 660D      	MVF	__mulint_STK00,1,0
1988 0BEF [04] [2] 0600      	MVL	0x00
1989 0BF0 [04] [2] C001 F92A 	CALL	__mulint
1990 0BF2 [01] [2] 6680      	MVF	r0x10A5,1,0
1991 0BF3 [01] [2] 6420      	MVF	STK00,0,0
1992                     ;	;.line	144; ".\Source\APP_Measure.c"	if(abs(PresentTemp - PriorTemp))
1993 0BF4 [01] [2] 1883      	SUBF	_Judge_Stability_STK02,0,0
1994 0BF5 [01] [2] 660D      	MVF	_abs_STK00,1,0
1995 0BF6 [02] [2] 6481      	MVF	r0x10A5,0,0
1996 0BF7 [02] [2] 1C83      	SUBC	_Judge_Stability_STK01,0,0
1997 0BF8 [02] [2] CD0F      	CALL	_abs
1998 0BF9 [01] [2] 2C20      	IORF	STK00,0,0
1999 0BFA [01] [2] B02B      	BTSS	_STATUS,0
2000                     ;	;.line	147; ".\Source\APP_Measure.c"	sActual.ActualTime = 0;
2001 0BFB [01] [2] 0D73      	CLRF	(_sActual + 2),0
2002                     ;	;.line	151; ".\Source\APP_Measure.c"	if(sActual.ActualTime >= Timer)
2003 0BFC [01] [2] 6484      	MVF	_Judge_Stability_STK03,0,0
2004 0BFD [01] [2] 1973      	SUBF	(_sActual + 2),0,0
2005 0BFE [01] [2] 74        	BTSS	_STATUS,4
2006 0BFE [01] 02        	JMP	_00234_DS_
2007                     ;	;.line	153; ".\Source\APP_Measure.c"	return TRUE;
2008 0BFF [01] [2] 0601      	MVL	0x01
2009 0C00 [01] [2] 7801      	JMP	_00235_DS_
2010                     _00234_DS_:
2011                     ;	;.line	155; ".\Source\APP_Measure.c"	return FALSE;
2012 0C01 [01] [2] 0600      	MVL	0x00
2013 0C02 [01] [2] C4BB      _00235_DS_:
2014                     ;	;.line	156; ".\Source\APP_Measure.c"	}
2015 0C03 [00] [2] 000A      	RET	
2016                     ; exit point of _Judge_Stability
2017                     	.ENDFUNC	_Judge_Stability
2018                     ;--------------------------------------------------------
2019                     
2020                     .globl _Temp_Calibration
2021                     
2022                     ;--------------------------------------------------------
2023                     	.FUNC _Temp_Calibration:$r:0:0:$C:_abs:$C:__divslong:$C:_BIE_Write:$C:_BIE_Read\
2024                     :$L:r0x108F:$L:r0x1091:$L:r0x1090:$L:r0x1092:$L:r0x1093\
2025                     
2026                     ;--------------------------------------------------------
2027                     ;	;.line	26; ".\Source\APP_Measure.c"	if(!sTempCal.BIE_Writed)
2028 107C [00] [2] C485      _Temp_Calibration:	;Function start
2029 107D [05] [2] B190      	BTSS	_sTempCal,0
2030                     ;	;.line	29; ".\Source\APP_Measure.c"	if(sTIMx.TempSampleFlag)
2031 107E [05] [2] B5CC      	BTSS	_sTIMx,2
2032 107F [05] [2] 78B8      	JMP	_00133_DS_
2033                     ;	;.line	32; ".\Source\APP_Measure.c"	sTIMx.TempSampleFlag = 0;
2034 1080 [05] [2] 85CC      	BCF	_sTIMx,2
2035                     ;	;.line	34; ".\Source\APP_Measure.c"	sTempCal.TempBuf[sTempCal.pTempBuf] = sADC.Centigrade250msTemp;
2036 1081 [05] [2] 6591      	MVF	(_sTempCal + 1),0,0
2037 1082 [05] [2] 0702      	MULL	0x02
2038 1083 [05] [2] 6422      	MVF	_PRODL,0,0
2039 1084 [05] [2] 0494      	ADDL	(_sTempCal + 4)
2040 1085 [05] [2] 6684      	MVF	r0x108F,1,0
2041 1086 [05] [2] 0602      	MVL	high (_sTempCal + 4)
2042 1087 [05] [2] A82B      	BTSZ	_STATUS,4
2043 1088 [05] [2] 0401      	ADDL	0x01
2044 1089 [05] [2] C604 F010 	MVSF	r0x108F,_FSR0L
2045 108B [05] [2] 660F      	MVF	_FSR0H,1,0
2046 108C [05] [2] 6550      	MVF	(_sADC + 13),0,0
2047 108D [05] [2] 6601      	MVF	_POINC0,1,0
2048 108E [05] [2] 6551      	MVF	(_sADC + 14),0,0
2049 108F [05] [2] 6600      	MVF	_INDF0,1,0
2050                     ;	;.line	36; ".\Source\APP_Measure.c"	if(++sTempCal.pTempBuf >= 5)
2051 1090 [05] [2] 3991      	INF	(_sTempCal + 1),0,0
2052 1091 [05] [2] 6684      	MVF	r0x108F,1,0
2053 1092 [05] [2] 6791      	MVF	(_sTempCal + 1),1,0
2054 1093 [05] [2] 0604      	MVL	0x04
2055 1094 [05] [2] 6884      	CPSG	r0x108F,0
2056 1095 [05] [2] 7801      	JMP	_00106_DS_
2057                     ;	;.line	39; ".\Source\APP_Measure.c"	sTempCal.pTempBuf = 0;
2058 1096 [05] [2] 0D91      	CLRF	(_sTempCal + 1),0
2059                     _00106_DS_:
2060                     ;	;.line	42; ".\Source\APP_Measure.c"	ERR[Err4] = FALSE;
2061 1097 [05] [2] 0D39      	CLRF	(_ERR + 4),0
2062                     ;	;.line	44; ".\Source\APP_Measure.c"	ERR[Err0] = FALSE;
2063 1098 [05] [2] 0D35      	CLRF	(_ERR + 0),0
2064                     ;	;.line	46; ".\Source\APP_Measure.c"	for(i = 0;i < 4;i++)
2065 1099 [05] [2] 0C84      	CLRF	r0x108F,0
2066                     _00131_DS_:
2067                     ;	;.line	49; ".\Source\APP_Measure.c"	if(abs(sTempCal.TempBuf[i + 1] - sTempCal.TempBuf[i]) > 5)
2068 109A [05] [X] 3884      	INF	r0x108F,0,0
2069 109B [05] [X] 0702      	MULL	0x02
2070 109C [05] [X] 6422      	MVF	_PRODL,0,0
2071 109D [05] [X] 0494      	ADDL	(_sTempCal + 4)
2072 109E [05] [X] 6682      	MVF	r0x1090,1,0
2073 109F [05] [X] 0602      	MVL	high (_sTempCal + 4)
2074 10A0 [05] [X] A82B      	BTSZ	_STATUS,4
2075 10A1 [05] [X] 0401      	ADDL	0x01
2076 10A2 [05] [X] 6681      	MVF	r0x1092,1,0
2077 10A3 [05] [X] 6484      	MVF	r0x108F,0,0
2078 10A4 [05] [X] 0702      	MULL	0x02
2079 10A5 [05] [X] 000C F294 	LDPR	(_sTempCal + 4),0
2080 10A7 [05] [X] 6422      	MVF	_PRODL,0,0
2081 10A8 [05] [X] D004 F020 	MVFF	_PLUSW0,STK00
2082 10AA [05] [X] 3829      	INF	_WREG,0,0
2083 10AB [05] [X] D004 F01F 	MVFF	_PLUSW0,STK01
2084 10AD [05] [X] 6482      	MVF	r0x1090,0,0
2085 10AE [05] [X] 6610      	MVF	_FSR0L,1,0
2086 10AF [05] [X] 6481      	MVF	r0x1092,0,0
2087 10B0 [05] [X] 660F      	MVF	_FSR0H,1,0
2088 10B1 [05] [X] 6401      	MVF	_POINC0,0,0
2089 10B2 [05] [X] 6683      	MVF	r0x1091,1,0
2090 10B3 [05] [X] 6401      	MVF	_POINC0,0,0
2091 10B4 [05] [X] 6680      	MVF	r0x1093,1,0
2092 10B5 [05] [X] 6420      	MVF	STK00,0,0
2093 10B6 [05] [X] 1883      	SUBF	r0x1091,0,0
2094 10B7 [05] [X] 660D      	MVF	_abs_STK00,1,0
2095 10B8 [06] [X] 641F      	MVF	STK01,0,0
2096 10B9 [06] [X] 1C81      	SUBC	r0x1093,0,0
2097 10BA [06] [X] C000 F908 	CALL	_abs
2098                     	.CHKPARA _abs 2
2099 10BC [05] [X] 6683      	MVF	r0x1091,1,0
2100 10BD [05] [X] 6420      	MVF	STK00,0,0
2101 10BE [05] [X] 04FA      	ADDL	0xfa
2102 10BF [05] [X] 067F      	MVL	0x7f
2103 10C0 [05] [X] 1483      	ADDC	r0x1091,0,0
2104 10C1 [05] [X] 77        	BTSS	_STATUS,1
2105 10C1 [05] 03        	JMP	_00108_DS_
2106                     ;	;.line	52; ".\Source\APP_Measure.c"	ERR[Err4] = TRUE;
2107 10C2 [05] [X] 0601      	MVL	0x01
2108 10C3 [00] [2] 0012 6739 	MVF	(_ERR + 4),1,0
2109                     _00108_DS_:
2110                     ;	;.line	55; ".\Source\APP_Measure.c"	if((sTempCal.TempBuf[i] < 3560/*3640*/) || (sTempCal.TempBuf[i] > 3850/*3750*/))
2111 10C5 [05] [X] 6484      	MVF	r0x108F,0,0
2112 10C6 [05] [X] 0702      	MULL	0x02
2113 10C7 [05] [X] 000C F294 	LDPR	(_sTempCal + 4),0
2114 10C9 [05] [X] 6422      	MVF	_PRODL,0,0
2115 10CA [05] [X] D004 F020 	MVFF	_PLUSW0,STK00
2116 10CC [05] [X] 3829      	INF	_WREG,0,0
2117 10CD [05] [X] D004 F01F 	MVFF	_PLUSW0,STK01
2118 10CF [05] [X] 6420      	MVF	STK00,0,0
2119 10D0 [05] [X] 0418      	ADDL	0x18
2120 10D1 [05] [X] 06F2      	MVL	0xf2
2121 10D2 [05] [X] 141F      	ADDC	STK01,0,0
2122 10D3 [05] [X] 74        	BTSS	_STATUS,4
2123 10D3 [05] 05        	JMP	_00109_DS_
2124 10D4 [05] [X] 6420      	MVF	STK00,0,0
2125 10D5 [05] [X] 04F5      	ADDL	0xf5
2126 10D6 [05] [X] 06F0      	MVL	0xf0
2127 10D7 [05] [X] 141F      	ADDC	STK01,0,0
2128 10D8 [05] [X] 74        	BTSS	_STATUS,4
2129 10D8 [05] 03        	JMP	_00132_DS_
2130                     _00109_DS_:
2131                     ;	;.line	58; ".\Source\APP_Measure.c"	ERR[Err0] = TRUE;
2132 10D9 [05] [X] 0601      	MVL	0x01
2133 10DA [00] [2] 0012 6735 	MVF	(_ERR + 0),1,0
2134                     _00132_DS_:
2135                     ;	;.line	46; ".\Source\APP_Measure.c"	for(i = 0;i < 4;i++)
2136 10DC [05] [X] 3A84      	INF	r0x108F,1,0
2137 10DD [05] [X] 0603      	MVL	0x03
2138 10DE [05] [X] 6884      	CPSG	r0x108F,0
2139 10DF [05] [X] 7FBA      	JMP	_00131_DS_
2140                     ;	;.line	62; ".\Source\APP_Measure.c"	if(sTempCal.Enable_BIE_Write)
2141 10E0 [00] [2] 0012 B590 	BTSS	_sTempCal,2
2142 10E2 [05] [2] 7855      	JMP	_00133_DS_
2143                     ;	;.line	65; ".\Source\APP_Measure.c"	if(BIE_Available_Addr <= 0x3F)
2144 10E3 [05] [2] 0640      	MVL	0x40
2145 10E4 [05] [2] 6BCA      	CPSL	_BIE_Available_Addr,0
2146 10E5 [05] [2] 7831      	JMP	_00116_DS_
2147                     ;	;.line	68; ".\Source\APP_Measure.c"	tmp = 30010000 / sADC.RawRntc;
2148 10E6 [05] [2] 6558      	MVF	(_sADC + 21),0,0
2149 10E7 [05] [2] 660D      	MVF	__divslong_STK06,1,0
2150 10E8 [06] [2] 6559      	MVF	(_sADC + 22),0,0
2151 10E9 [06] [2] 660D      	MVF	__divslong_STK05,1,0
2152 10EA [07] [2] 0C0D      	CLRF	__divslong_STK04,0
2153 10EB [08] [2] 0C0D      	CLRF	__divslong_STK03,0
2154 10EC [09] [2] 0690      	MVL	0x90
2155 10ED [09] [2] 660D      	MVF	__divslong_STK02,1,0
2156 10EE [10] [2] 06EA      	MVL	0xea
2157 10EF [10] [2] 660D      	MVF	__divslong_STK01,1,0
2158 10F0 [11] [2] 06C9      	MVL	0xc9
2159 10F1 [11] [2] 660D      	MVF	__divslong_STK00,1,0
2160 10F2 [12] [2] 0601      	MVL	0x01
2161 10F3 [12] [2] CF2E      	CALL	__divslong
2162                     	.CHKPARA __divslong 8
2163 10F4 [05] [2] 6681      	MVF	r0x1092,1,0
2164 10F5 [05] [2] 6420      	MVF	STK00,0,0
2165 10F6 [05] [2] 6683      	MVF	r0x1091,1,0
2166 10F7 [05] [2] 641F      	MVF	STK01,0,0
2167 10F8 [05] [2] 6682      	MVF	r0x1090,1,0
2168 10F9 [05] [2] 381E      	INF	STK02,0,0
2169 10FA [05] [2] 6684      	MVF	r0x108F,1,0
2170                     ;	;.line	69; ".\Source\APP_Measure.c"	tmp += 1;
2171 10FB [05] [2] 0600      	MVL	0x00
2172 10FC [05] [2] 1682      	ADDC	r0x1090,1,0
2173 10FD [05] [2] 1683      	ADDC	r0x1091,1,0
2174 10FE [05] [2] 1681      	ADDC	r0x1092,1,0
2175                     ;	;.line	70; ".\Source\APP_Measure.c"	sTempCal.Temp_Ratio = (uint16)tmp;
2176 10FF [05] [2] 6484      	MVF	r0x108F,0,0
2177 1100 [05] [2] 6792      	MVF	(_sTempCal + 2),1,0
2178 1101 [05] [2] 6482      	MVF	r0x1090,0,0
2179 1102 [05] [2] 6793      	MVF	(_sTempCal + 3),1,0
2180                     ;	;.line	75; ".\Source\APP_Measure.c"	LCDCN1 &= 0xFE;
2181 1103 [00] [1] 0011 8180 	BCF	_LCDCN1,0
2182                     ;	;.line	77; ".\Source\APP_Measure.c"	if(BIE_Write(BIE_Available_Addr,sTempCal.Temp_Ratio >> 8,sTempCal.Temp_Ratio))
2183 1105 [05] [1] 6484      	MVF	r0x108F,0,0
2184 1106 [05] [1] 660D      	MVF	_BIE_Write_STK01,1,0
2185 1107 [06] [1] 6483      	MVF	r0x1090,0,0
2186 1108 [06] [1] 660D      	MVF	_BIE_Write_STK00,1,0
2187 1109 [00] [2] 0012 65CA 	MVF	_BIE_Available_Addr,0,0
2188 110B [07] [2] C001 FA03 	CALL	_BIE_Write
2189                     	.CHKPARA _BIE_Write 3
2190 110D [05] [2] 0200      	IORL	0x00
2191 110E [05] [2] 71        	BTSZ	_STATUS,0
2192 110E [05] 05        	JMP	_00114_DS_
2193                     ;	;.line	81; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
2194 110F [05] [2] 0601      	MVL	0x01
2195 1110 [05] [2] 673A      	MVF	(_ERR + 5),1,0
2196                     ;	;.line	82; ".\Source\APP_Measure.c"	sTempCal.BIE_Writed = TRUE;
2197 1111 [05] [2] 000C F290 	LDPR	(_sTempCal + 0),0x00
2198 1113 [05] [2] 9000      	BSF	_INDF0,0
2199                     _00114_DS_:
2200                     ;	;.line	86; ".\Source\APP_Measure.c"	LCDCN3 = 0x00;
2201 1114 [00] [1] 0011 0D82 	CLRF	_LCDCN3,0
2202                     ;	;.line	88; ".\Source\APP_Measure.c"	LCDCN4 = 0x00;
2203 1116 [05] [1] 0D83      	CLRF	_LCDCN4,0
2204                     _00116_DS_:
2205                     ;	;.line	96; ".\Source\APP_Measure.c"	if(BIE_Read(BIE_Available_Addr) == sTempCal.Temp_Ratio)
2206 1117 [00] [2] 0012 65CA 	MVF	_BIE_Available_Addr,0,0
2207 1119 [05] [2] C9CC      	CALL	_BIE_Read
2208                     	.CHKPARA _BIE_Read 1
2209 111A [05] [2] 6683      	MVF	r0x1091,1,0
2210 111B [05] [2] 6593      	MVF	(_sTempCal + 3),0,0
2211 111C [05] [2] 6C83      	CPSE	r0x1091,0
2212 111D [05] [2] 7807      	JMP	_00123_DS_
2213 111E [05] [2] 6592      	MVF	(_sTempCal + 2),0,0
2214 111F [05] [2] 6C20      	CPSE	STK00,0
2215 1120 [05] [2] 7804      	JMP	_00123_DS_
2216                     ;	;.line	100; ".\Source\APP_Measure.c"	ERR[Err5] = FALSE;
2217 1121 [05] [2] 0D3A      	CLRF	(_ERR + 5),0
2218                     ;	;.line	102; ".\Source\APP_Measure.c"	sTempCal.BIE_Writed = TRUE;
2219 1122 [05] [2] 9190      	BSF	_sTempCal,0
2220                     ;	;.line	104; ".\Source\APP_Measure.c"	BIE_Available_Addr++;
2221 1123 [05] [2] 3BCA      	INF	_BIE_Available_Addr,1,0
2222 1124 [05] [2] 7810      	JMP	_00124_DS_
2223                     _00123_DS_:
2224                     ;	;.line	106; ".\Source\APP_Measure.c"	else if(BIE_Read(BIE_Available_Addr) == 0xFFFF)
2225 1125 [05] [2] 65CA      	MVF	_BIE_Available_Addr,0,0
2226 1126 [05] [2] C9BF      	CALL	_BIE_Read
2227 1127 [05] [2] 2820      	ANDF	STK00,0,0
2228 1128 [05] [2] 3C29      	INSZ	_WREG,0,0
2229 1129 [05] [2] 7803      	JMP	_00120_DS_
2230                     ;	;.line	110; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
2231 112A [05] [2] 0601      	MVL	0x01
2232 112B [05] [2] 673A      	MVF	(_ERR + 5),1,0
2233 112C [05] [2] 7808      	JMP	_00124_DS_
2234                     _00120_DS_:
2235                     ;	;.line	112; ".\Source\APP_Measure.c"	else if(BIE_Read(BIE_Available_Addr) != 0xFFFF)
2236 112D [05] [2] 65CA      	MVF	_BIE_Available_Addr,0,0
2237 112E [05] [2] C9B7      	CALL	_BIE_Read
2238 112F [05] [2] 2820      	ANDF	STK00,0,0
2239 1130 [05] [2] 4029      	INSUZ	_WREG,0,0
2240 1131 [05] [2] 7803      	JMP	_00124_DS_
2241                     ;	;.line	116; ".\Source\APP_Measure.c"	ERR[Err5] = TRUE;
2242 1132 [05] [2] 0601      	MVL	0x01
2243 1133 [05] [2] 673A      	MVF	(_ERR + 5),1,0
2244                     ;	;.line	118; ".\Source\APP_Measure.c"	BIE_Available_Addr++;
2245 1134 [05] [2] 3BCA      	INF	_BIE_Available_Addr,1,0
2246                     _00124_DS_:
2247                     ;	;.line	121; ".\Source\APP_Measure.c"	sTempCal.BIE_Write_Action = TRUE;
2248 1135 [05] [2] 000C F290 	LDPR	(_sTempCal + 0),0x00
2249 1137 [05] [2] 9600      	BSF	_INDF0,3
2250 1138 [05] [2] C4BB      _00133_DS_:
2251                     ;	;.line	125; ".\Source\APP_Measure.c"	}
2252 1139 [00] [2] 000A      	RET	
2253                     ; exit point of _Temp_Calibration
2254                     	.ENDFUNC	_Temp_Calibration
2255                     ;--------------------------------------------------------
2256                     
2257                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
2258                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
2259                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
2260                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
2261                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
2262                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
2263                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
2264                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
2265                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
2266                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
2267                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
2268                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
2269                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
2270                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
2271                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
2272                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
2273                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
2274                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
2275                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
2276                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
2277                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
2278                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
2279                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
2280                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
2281                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
2282                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
2283                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
2284                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
2285                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
2286                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
2287                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
2288                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
2289                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
2290                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
2291                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
2292                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
2293                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
2294                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
2295                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
2296                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
2297                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
2298                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
2299                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
2300                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
2301                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
2302                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
2303                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
2304                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
2305                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
2306                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
2307                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
2308                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
2309                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
2310                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
2311                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
2312                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
2313                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
2314                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
2315                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
2316                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
2317                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
2318                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
2319                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
2320                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
2321                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
2322                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
2323                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
2324                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
2325                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
2326                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
2327                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
2328                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
2329                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
2330                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
2331                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
2332                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
2333                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
2334                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
2335                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
2336                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
2337                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
2338                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
2339                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
2340                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
2341                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
2342                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
2343                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
2344                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
2345                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
2346                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
2347                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
2348                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
2349                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
2350                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
2351                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
2352                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
2353                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
2354                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
2355                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
2356                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
2357                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
2358                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
2359                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
2360                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
2361                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
2362                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
2363                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
2364                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
2365                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
2366                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
2367                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
2368                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
2369                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
2370                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
2371                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
2372                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
2373                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
2374                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
2375                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
2376                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
2377                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
2378                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
2379                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
2380                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
2381                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
2382                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
2383                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
2384                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
2385                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
2386                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
2387                     	;--cdb--S:G$_divslong$0$0({2}DF,SL:SL),C,0,0
2388                     	;--cdb--S:G$Judge_Stability$0$0({2}DF,SC:U),C,0,0
2389                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
2390                     	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
2391                     	;--cdb--S:G$PresetMeasTime$0$0({2}DF,SC:U),C,0,0
2392                     	;--cdb--S:G$Get_1sTemp$0$0({2}DF,SC:U),C,0,0
2393                     	;--cdb--S:G$Filter_ErrTemp$0$0({2}DF,SV:S),C,0,0
2394                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
2395                     	;--cdb--S:G$Start_Algorithm$0$0({2}DF,SC:U),C,0,0
2396                     	;--cdb--S:G$Temp_Drop$0$0({2}DF,SC:U),C,0,0
2397                     	;--cdb--S:G$Forecast_Calculate_Conditions$0$0({2}DF,SC:U),C,0,0
2398                     	;--cdb--S:G$Forecast_Calculate$0$0({2}DF,SV:S),C,0,0
2399                     	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
2400                     	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
2401                     	;--cdb--S:G$Update_MaxTempImmediately$0$0({2}DF,SV:S),C,0,0
2402                     	;--cdb--S:G$Update_MaxTemp3Min$0$0({2}DF,SV:S),C,0,0
2403                     	;--cdb--S:G$Forecast_To_Actual$0$0({2}DF,SV:S),C,0,0
2404                     	;--cdb--S:G$ActualForecast_Select$0$0({2}DF,SC:U),C,0,0
2405                     	;--cdb--S:G$Temperature_Compensate$0$0({2}DF,SI:U),C,0,0
2406                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
2407                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
2408                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
2409                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
2410                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
2411                     	;--cdb--S:LAPP_Measure.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
2412                     	;--cdb--S:LAPP_Measure.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
2413                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
2414                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
2415                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2416                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
2417                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2418                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
2419                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2420                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2421                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2422                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
2423                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
2424                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
2425                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
2426                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2427                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2428                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
2429                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
2430                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
2431                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
2432                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
2433                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
2434                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2435                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
2436                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
2437                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
2438                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
2439                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2440                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
2441                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2442                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2443                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
2444                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
2445                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2446                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
2447                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
2448                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
2449                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
2450                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2451                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
2452                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
2453                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
2454                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
2455                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
2456                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
2457                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
2458                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
2459                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
2460                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
2461                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
2462                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
2463                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
2464                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
2465                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
2466                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
2467                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
2468                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
2469                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
2470                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
2471                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
2472                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
2473                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
2474                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
2475                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
2476                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
2477                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
2478                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
2479                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
2480                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
2481                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
2482                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
2483                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
2484                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
2485                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
2486                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
2487                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
2488                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
2489                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
2490                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
2491                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
2492                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
2493                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
2494                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
2495                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
2496                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
2497                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
2498                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
2499                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
2500                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
2501                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
2502                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
2503                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
2504                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
2505                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
2506                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
2507                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
2508                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
2509                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
2510                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
2511                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
2512                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
2513                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
2514                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
2515                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
2516                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
2517                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
2518                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
2519                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
2520                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
2521                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
2522                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
2523                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
2524                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
2525                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
2526                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
2527                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
2528                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
2529                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
2530                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
2531                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
2532                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
2533                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
2534                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
2535                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
2536                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
2537                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
2538                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
2539                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
2540                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
2541                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
2542                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
2543                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
2544                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
2545                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
2546                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
2547                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
2548                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
2549                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
2550                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
2551                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
2552                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
2553                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
2554                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
2555                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
2556                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
2557                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
2558                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
2559                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
2560                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
2561                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
2562                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
2563                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
2564                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
2565                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
2566                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
2567                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
2568                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
2569                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
2570                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
2571                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
2572                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
2573                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
2574                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
2575                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
2576                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
2577                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
2578                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
2579                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
2580                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
2581                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
2582                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
2583                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
2584                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
2585                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
2586                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
2587                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
2588                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
2589                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
2590                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
2591                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
2592                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
2593                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
2594                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
2595                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
2596                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
2597                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
2598                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
2599                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
2600                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
2601                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
2602                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
2603                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
2604                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
2605                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
2606                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
2607                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
2608                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
2609                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
2610                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
2611                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
2612                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
2613                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
2614                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
2615                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
2616                     	;--cdb--S:LAPP_Measure.Temp_Calibration._Temp_Calibration_i_10000_416$i$2710$416({1}SC:U),R,0,0,[r0x108F]
2617                     	;--cdb--S:LAPP_Measure.Temp_Calibration._Temp_Calibration_tmp_10000_416$tmp$2710$416({4}SL:UL),R,0,0,[r0x108F,r0x1090,r0x1091,r0x1092]
2618                     	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_Timer_10000_441$Timer$2710$441({1}SC:U),R,0,0,[_Judge_Stability_STK03]
2619                     	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_PresentTemp_10000_441$PresentTemp$2710$441({2}SI:U),R,0,0,[_Judge_Stability_STK02,_Judge_Stability_STK01]
2620                     	;--cdb--S:LAPP_Measure.Judge_Stability._Judge_Stability_PriorTemp_10000_441$PriorTemp$2710$441({2}SI:U),R,0,0,[_Judge_Stability_STK00,r0x10A5]
2621                     	;--cdb--S:LAPP_Measure.Start_Algorithm._Start_Algorithm_i_10000_490$i$2710$490({1}SC:U),R,0,0,[r0x10CA]
2622                     	;--cdb--S:LAPP_Measure.Forecast_Calculate._Forecast_Calculate_K_10000_523$K$2710$523({4}SL:UL),R,0,0,[r0x10DC,r0x10DD,r0x10DE,r0x10DF]
2623                     	;--cdb--S:LAPP_Measure.Update_MaxTemp3Min._Update_MaxTemp3Min_Result_10000_555$Result$2710$555({1}SC:U),R,0,0,[r0x10FC]
2624                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_Temp_10000_605$Temp$2710$605({2}SI:U),R,0,0,[_Temperature_Compensate_STK00,r0x110E]
2625                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_F_OddFlag_10000_606$F_OddFlag$2710$606({1}SC:U),R,0,0,[r0x110F]
2626                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_a_10000_606$a$2710$606({1}SC:U),R,0,0,[r0x1110]
2627                     	;--cdb--S:LAPP_Measure.Temperature_Compensate._Temperature_Compensate_b_10000_606$b$2710$606({2}SI:U),R,0,0,[r0x1110,r0x1111]
2628                     	;--cdb--S:LAPP_Measure.Forecast_Measure._Forecast_Measure_Temp_10000_619$Temp$2710$619({2}SI:U),R,0,0,[r0x1120,r0x1121]
2629                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
2630                     	;--cdb--S:G$_FSR0L$0$0({0}:U),Z,0,0
2631                     	;--cdb--S:G$_FSR0H$0$0({0}:U),Z,0,0
2632                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
2633                     	;--cdb--S:G$_POINC0$0$0({0}:U),Z,0,0
2634                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
2635                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
2636                     	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
2637                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
2638                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
2639                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
2640                     ;--------------------------------------------------------
2641                     ; external declarations
2642                     ;--------------------------------------------------------
2643                     	.globl	_abs
2644                     	.globl	_BIE_Read
2645                     	.globl	_BIE_Write
2646                     	.globl	_Timer_Experience
2647                     	.globl	_Centigrade_Convert_Fahrenheit
2648                     	.globl	__divslong
2649                     	.globl	__divuint
2650                     	.globl	__mulint
2651                     	.globl	__mullong
2652                     	.globl	__divulong
2653                     	.globl	_FSR0
2654                     	.globl	_FSR1
2655                     	.globl	_FSR2
2656                     	.globl	_ADCR
2657                     	.globl	_sIIC
2658                     	.globl	_BIE_Available_Addr
2659                     	.globl	_sTIMx
2660                     	.globl	_sUARTx
2661                     	.globl	_sAutoBps
2662                     	.globl	_eAutoBps_Status
2663                     	.globl	_sTest
2664                     	.globl	_eTempUnit
2665                     	.globl	_eBondingTempUnit
2666                     	.globl	_eVersionCode
2667                     	.globl	_eMeasureMode
2668                     	.globl	_eBinding_Status
2669                     	.globl	_Enter_PrepareSleep_Flag
2670                     	.globl	_sButton
2671                     	.globl	_sTimeStamp
2672                     	.globl	_eButton_Status
2673                     	.globl	_sLVD
2674                     	.globl	_UnitExchangeCompleted
2675                     	.globl	_ERR
2676                     	.globl	_eErr
2677                     	.globl	_eDisplay_Interfaces
2678                     	.globl	_sADC
2679                     	.globl	_eADCChannel
2680                     	.globl	_eSystem_Mode
2681                     	.globl	_eBuzzer_Status
2682                     	.globl	_Flag_No_Buzzer
2683                     	.globl	_sMemory
2684                     	.globl	_sMemoryFlag
2685                     	.globl	_eBle_Sta
2686                     	.globl	_sBleStatus
2687                     	.globl	_eBacklight_Status
2688                     	.globl	_sBacklight
2689                     	.globl	_NUM_CODE
2690                     	.globl	_R_Table
2691                     	.globl	__g2ptrget1
2692                     	.globl	__g2ptrget2
2693                     
2694                     	.globl STK07
2695                     	.globl STK07_SAVE
2696                     	.globl STK06
2697                     	.globl STK06_SAVE
2698                     	.globl STK05
2699                     	.globl STK05_SAVE
2700                     	.globl STK04
2701                     	.globl STK04_SAVE
2702                     	.globl STK03
2703                     	.globl STK03_SAVE
2704                     	.globl STK02
2705                     	.globl STK02_SAVE
2706                     	.globl STK01
2707                     	.globl STK01_SAVE
2708                     	.globl STK00
2709                     	.globl STK00_SAVE
2710                     ;--------------------------------------------------------
2711                     ; global -1 declarations
2712                     ;--------------------------------------------------------
2713                     	.globl	_Judge_Stability
2714                     	.globl	_PresetMeasTime
2715                     	.globl	_Get_1sTemp
2716                     	.globl	_Filter_ErrTemp
2717                     	.globl	_Start_Algorithm
2718                     	.globl	_Temp_Drop
2719                     	.globl	_Forecast_Calculate_Conditions
2720                     	.globl	_Forecast_Calculate
2721                     	.globl	_Update_MaxTempImmediately
2722                     	.globl	_Update_MaxTemp3Min
2723                     	.globl	_Forecast_To_Actual
2724                     	.globl	_ActualForecast_Select
2725                     	.globl	_Temperature_Compensate
2726                     	.globl	_sActual
2727                     	.globl	_sForecast
2728                     	.globl	_sTempCal
2729                     	.globl	_eMeas_Status
2730                     	.globl	_sActual_Forecast
2731                     	.globl	_eTo_Actual_Ways
2732                     	.globl	_CloseTable
2733                     
2734                     	.globl	_memcpy
2735                     ;--------------------------------------------------------
2736                     ; global -2 definitions
2737                     ;--------------------------------------------------------
2738                     	.area DSEG(DATA)
2739 0271 -- -- -- -- -- _sActual:	.ds	5
2740                     
2741                     	.area DSEG(DATA)
2742 0276 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sForecast:	.ds	26
2743                     
2744                     	.area DSEG(DATA)
2745 0290 -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sTempCal:	.ds	14
2746                     
2747                     	.area DSEG(DATA)
2748 029E --             _eMeas_Status:	.ds	1
2749                     
2750                     	.area DSEG(DATA)
2751 029F -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sActual_Forecast:	.ds	15
2752                     
2753                     	.area DSEG(DATA)
2754 02AE --             _eTo_Actual_Ways:	.ds	1
2755                     
2756                     	.area DSEG(DATA)
2757                     __SWTGTID	.equ	0xA6A6B2CF
2758                     
2759                     	.area DSEG(DATA)
2760                     _INDF0	.equ	0x0
2761                     
2762                     	.area DSEG(DATA)
2763                     _POINC0	.equ	0x1
2764                     
2765                     	.area DSEG(DATA)
2766                     _PODEC0	.equ	0x2
2767                     
2768                     	.area DSEG(DATA)
2769                     _PRINC0	.equ	0x3
2770                     
2771                     	.area DSEG(DATA)
2772                     _PLUSW0	.equ	0x4
2773                     
2774                     	.area DSEG(DATA)
2775                     _INDF1	.equ	0x5
2776                     
2777                     	.area DSEG(DATA)
2778                     _POINC1	.equ	0x6
2779                     
2780                     	.area DSEG(DATA)
2781                     _PODEC1	.equ	0x7
2782                     
2783                     	.area DSEG(DATA)
2784                     _PRINC1	.equ	0x8
2785                     
2786                     	.area DSEG(DATA)
2787                     _PLUSW1	.equ	0x9
2788                     
2789                     	.area DSEG(DATA)
2790                     _INDF2	.equ	0xA
2791                     
2792                     	.area DSEG(DATA)
2793                     _POINC2	.equ	0xB
2794                     
2795                     	.area DSEG(DATA)
2796                     _PODEC2	.equ	0xC
2797                     
2798                     	.area DSEG(DATA)
2799                     _PRINC2	.equ	0xD
2800                     
2801                     	.area DSEG(DATA)
2802                     _PLUSW2	.equ	0xE
2803                     
2804                     	.area DSEG(DATA)
2805                     _FSR0H	.equ	0xF
2806                     
2807                     	.area DSEG(DATA)
2808                     _FSR0L	.equ	0x10
2809                     
2810                     	.area DSEG(DATA)
2811                     _FSR1H	.equ	0x11
2812                     
2813                     	.area DSEG(DATA)
2814                     _FSR1L	.equ	0x12
2815                     
2816                     	.area DSEG(DATA)
2817                     _FSR2H	.equ	0x13
2818                     
2819                     	.area DSEG(DATA)
2820                     _FSR2L	.equ	0x14
2821                     
2822                     	.area DSEG(DATA)
2823                     _TOSH	.equ	0x16
2824                     
2825                     	.area DSEG(DATA)
2826                     _TOSL	.equ	0x17
2827                     
2828                     	.area DSEG(DATA)
2829                     _SKCN	.equ	0x18
2830                     
2831                     	.area DSEG(DATA)
2832                     _PCLATH	.equ	0x1A
2833                     
2834                     	.area DSEG(DATA)
2835                     _PCLATL	.equ	0x1B
2836                     
2837                     	.area DSEG(DATA)
2838                     _TBLPTRH	.equ	0x1D
2839                     
2840                     	.area DSEG(DATA)
2841                     _TBLPTRL	.equ	0x1E
2842                     
2843                     	.area DSEG(DATA)
2844                     _TBLDH	.equ	0x1F
2845                     
2846                     	.area DSEG(DATA)
2847                     _TBLDL	.equ	0x20
2848                     
2849                     	.area DSEG(DATA)
2850                     _PRODH	.equ	0x21
2851                     
2852                     	.area DSEG(DATA)
2853                     _PRODL	.equ	0x22
2854                     
2855                     	.area DSEG(DATA)
2856                     _INTE0	.equ	0x23
2857                     
2858                     	.area DSEG(DATA)
2859                     _INTE1	.equ	0x24
2860                     
2861                     	.area DSEG(DATA)
2862                     _INTE2	.equ	0x25
2863                     
2864                     	.area DSEG(DATA)
2865                     _INTF0	.equ	0x26
2866                     
2867                     	.area DSEG(DATA)
2868                     _INTF1	.equ	0x27
2869                     
2870                     	.area DSEG(DATA)
2871                     _INTF2	.equ	0x28
2872                     
2873                     	.area DSEG(DATA)
2874                     _WREG	.equ	0x29
2875                     
2876                     	.area DSEG(DATA)
2877                     _BSRCN	.equ	0x2A
2878                     
2879                     	.area DSEG(DATA)
2880                     _STATUS	.equ	0x2B
2881                     
2882                     	.area DSEG(DATA)
2883                     _MSTAT	.equ	0x2B
2884                     
2885                     	.area DSEG(DATA)
2886                     _PSTAT	.equ	0x2C
2887                     
2888                     	.area DSEG(DATA)
2889                     _BIECN	.equ	0x2E
2890                     
2891                     	.area DSEG(DATA)
2892                     _BIEARH	.equ	0x2F
2893                     
2894                     	.area DSEG(DATA)
2895                     _BIEARL	.equ	0x30
2896                     
2897                     	.area DSEG(DATA)
2898                     _BIEDRH	.equ	0x31
2899                     
2900                     	.area DSEG(DATA)
2901                     _BIEDRL	.equ	0x32
2902                     
2903                     	.area DSEG(DATA)
2904                     _PWRCN	.equ	0x33
2905                     
2906                     	.area DSEG(DATA)
2907                     _OSCCN0	.equ	0x34
2908                     
2909                     	.area DSEG(DATA)
2910                     _OSCCN1	.equ	0x35
2911                     
2912                     	.area DSEG(DATA)
2913                     _OSCCN2	.equ	0x36
2914                     
2915                     	.area DSEG(DATA)
2916                     _CSFCN0	.equ	0x37
2917                     
2918                     	.area DSEG(DATA)
2919                     _CSFCN1	.equ	0x38
2920                     
2921                     	.area DSEG(DATA)
2922                     _WDTCN	.equ	0x39
2923                     
2924                     	.area DSEG(DATA)
2925                     _AD1H	.equ	0x3A
2926                     
2927                     	.area DSEG(DATA)
2928                     _AD1M	.equ	0x3B
2929                     
2930                     	.area DSEG(DATA)
2931                     _AD1L	.equ	0x3C
2932                     
2933                     	.area DSEG(DATA)
2934                     _AD1CN0	.equ	0x3D
2935                     
2936                     	.area DSEG(DATA)
2937                     _AD1CN1	.equ	0x3E
2938                     
2939                     	.area DSEG(DATA)
2940                     _AD1CN2	.equ	0x3F
2941                     
2942                     	.area DSEG(DATA)
2943                     _AD1CN3	.equ	0x40
2944                     
2945                     	.area DSEG(DATA)
2946                     _AD1CN4	.equ	0x41
2947                     
2948                     	.area DSEG(DATA)
2949                     _AD1CN5	.equ	0x42
2950                     
2951                     	.area DSEG(DATA)
2952                     _LVDCN	.equ	0x43
2953                     
2954                     	.area DSEG(DATA)
2955                     _TMA1CN	.equ	0x44
2956                     
2957                     	.area DSEG(DATA)
2958                     _TMA1R	.equ	0x45
2959                     
2960                     	.area DSEG(DATA)
2961                     _TMA1C	.equ	0x46
2962                     
2963                     	.area DSEG(DATA)
2964                     _TB1FLAG	.equ	0x47
2965                     
2966                     	.area DSEG(DATA)
2967                     _TB1CN0	.equ	0x48
2968                     
2969                     	.area DSEG(DATA)
2970                     _TB1CN1	.equ	0x49
2971                     
2972                     	.area DSEG(DATA)
2973                     _TB1RH	.equ	0x4A
2974                     
2975                     	.area DSEG(DATA)
2976                     _TB1RL	.equ	0x4B
2977                     
2978                     	.area DSEG(DATA)
2979                     _TB1C0H	.equ	0x4C
2980                     
2981                     	.area DSEG(DATA)
2982                     _TB1C0L	.equ	0x4D
2983                     
2984                     	.area DSEG(DATA)
2985                     _TB1C1H	.equ	0x4E
2986                     
2987                     	.area DSEG(DATA)
2988                     _TB1C1L	.equ	0x4F
2989                     
2990                     	.area DSEG(DATA)
2991                     _TB1C2H	.equ	0x50
2992                     
2993                     	.area DSEG(DATA)
2994                     _TB1C2L	.equ	0x51
2995                     
2996                     	.area DSEG(DATA)
2997                     _TC1CN0	.equ	0x52
2998                     
2999                     	.area DSEG(DATA)
3000                     _PT1	.equ	0x53
3001                     
3002                     	.area DSEG(DATA)
3003                     _TRISC1	.equ	0x54
3004                     
3005                     	.area DSEG(DATA)
3006                     _PT1DA	.equ	0x55
3007                     
3008                     	.area DSEG(DATA)
3009                     _PT1PU	.equ	0x56
3010                     
3011                     	.area DSEG(DATA)
3012                     _PT1M1	.equ	0x57
3013                     
3014                     	.area DSEG(DATA)
3015                     _PT1INT	.equ	0x58
3016                     
3017                     	.area DSEG(DATA)
3018                     _PT1INTE	.equ	0x59
3019                     
3020                     	.area DSEG(DATA)
3021                     _PT1INTF	.equ	0x5A
3022                     
3023                     	.area DSEG(DATA)
3024                     _PT2	.equ	0x5B
3025                     
3026                     	.area DSEG(DATA)
3027                     _TRISC2	.equ	0x5C
3028                     
3029                     	.area DSEG(DATA)
3030                     _PT2DA	.equ	0x5D
3031                     
3032                     	.area DSEG(DATA)
3033                     _PT2PU	.equ	0x5E
3034                     
3035                     	.area DSEG(DATA)
3036                     _PT2INT	.equ	0x5F
3037                     
3038                     	.area DSEG(DATA)
3039                     _PT2INTE	.equ	0x60
3040                     
3041                     	.area DSEG(DATA)
3042                     _PT2INTF	.equ	0x61
3043                     
3044                     	.area DSEG(DATA)
3045                     _PT6	.equ	0x62
3046                     
3047                     	.area DSEG(DATA)
3048                     _TRISC6	.equ	0x63
3049                     
3050                     	.area DSEG(DATA)
3051                     _PT6DA	.equ	0x64
3052                     
3053                     	.area DSEG(DATA)
3054                     _PT6PU	.equ	0x65
3055                     
3056                     	.area DSEG(DATA)
3057                     _PT7	.equ	0x66
3058                     
3059                     	.area DSEG(DATA)
3060                     _TRISC7	.equ	0x67
3061                     
3062                     	.area DSEG(DATA)
3063                     _PT7DA	.equ	0x68
3064                     
3065                     	.area DSEG(DATA)
3066                     _PT7PU	.equ	0x69
3067                     
3068                     	.area DSEG(DATA)
3069                     _PT8	.equ	0x6A
3070                     
3071                     	.area DSEG(DATA)
3072                     _TRISC8	.equ	0x6B
3073                     
3074                     	.area DSEG(DATA)
3075                     _PT8DA	.equ	0x6C
3076                     
3077                     	.area DSEG(DATA)
3078                     _PT8PU	.equ	0x6D
3079                     
3080                     	.area DSEG(DATA)
3081                     _SSPCN0	.equ	0x6E
3082                     
3083                     	.area DSEG(DATA)
3084                     _SSPSTA0	.equ	0x6F
3085                     
3086                     	.area DSEG(DATA)
3087                     _SSPBUF0	.equ	0x70
3088                     
3089                     	.area DSEG(DATA)
3090                     _CFG0	.equ	0x71
3091                     
3092                     	.area DSEG(DATA)
3093                     _ACT0	.equ	0x72
3094                     
3095                     	.area DSEG(DATA)
3096                     _STA0	.equ	0x73
3097                     
3098                     	.area DSEG(DATA)
3099                     _CRG0	.equ	0x74
3100                     
3101                     	.area DSEG(DATA)
3102                     _TOC0	.equ	0x75
3103                     
3104                     	.area DSEG(DATA)
3105                     _RDB0	.equ	0x76
3106                     
3107                     	.area DSEG(DATA)
3108                     _TDB0	.equ	0x77
3109                     
3110                     	.area DSEG(DATA)
3111                     _SID0	.equ	0x78
3112                     
3113                     	.area DSEG(DATA)
3114                     _UR0CN	.equ	0x79
3115                     
3116                     	.area DSEG(DATA)
3117                     _UR0STA	.equ	0x7A
3118                     
3119                     	.area DSEG(DATA)
3120                     _BA0CN	.equ	0x7B
3121                     
3122                     	.area DSEG(DATA)
3123                     _BG0RH	.equ	0x7C
3124                     
3125                     	.area DSEG(DATA)
3126                     _BG0RL	.equ	0x7D
3127                     
3128                     	.area DSEG(DATA)
3129                     _TX0R	.equ	0x7E
3130                     
3131                     	.area DSEG(DATA)
3132                     _RC0REG	.equ	0x7F
3133                     
3134                     	.area DSEG(DATA)
3135                     _LCDCN1	.equ	0x180
3136                     
3137                     	.area DSEG(DATA)
3138                     _LCDCN2	.equ	0x181
3139                     
3140                     	.area DSEG(DATA)
3141                     _LCDCN3	.equ	0x182
3142                     
3143                     	.area DSEG(DATA)
3144                     _LCDCN4	.equ	0x183
3145                     
3146                     	.area DSEG(DATA)
3147                     _LCDCN5	.equ	0x184
3148                     
3149                     	.area DSEG(DATA)
3150                     _LCDCN6	.equ	0x185
3151                     
3152                     	.area DSEG(DATA)
3153                     _LCDCN7	.equ	0x186
3154                     
3155                     	.area DSEG(DATA)
3156                     _LCDCN8	.equ	0x187
3157                     
3158                     	.area DSEG(DATA)
3159                     _LCD0	.equ	0x188
3160                     
3161                     	.area DSEG(DATA)
3162                     _LCD1	.equ	0x189
3163                     
3164                     	.area DSEG(DATA)
3165                     _LCD2	.equ	0x18A
3166                     
3167                     	.area DSEG(DATA)
3168                     _LCD3	.equ	0x18B
3169                     
3170                     	.area DSEG(DATA)
3171                     _LCD4	.equ	0x18C
3172                     
3173                     	.area DSEG(DATA)
3174                     _LCD5	.equ	0x18D
3175                     
3176                     	.area DSEG(DATA)
3177                     _LCD6	.equ	0x18E
3178                     
3179                     	.area DSEG(DATA)
3180                     _LCD7	.equ	0x18F
3181                     
3182                     	.area DSEG(DATA)
3183                     _LCD8	.equ	0x190
3184                     
3185                     	.area DSEG(DATA)
3186                     _LCD9	.equ	0x191
3187                     
3188                     	.area DSEG(DATA)
3189                     _UR2CN	.equ	0x192
3190                     
3191                     	.area DSEG(DATA)
3192                     _UR2STA	.equ	0x193
3193                     
3194                     	.area DSEG(DATA)
3195                     _BA2CN	.equ	0x194
3196                     
3197                     	.area DSEG(DATA)
3198                     _BG2RH	.equ	0x195
3199                     
3200                     	.area DSEG(DATA)
3201                     _BG2RL	.equ	0x196
3202                     
3203                     	.area DSEG(DATA)
3204                     _TX2R	.equ	0x197
3205                     
3206                     	.area DSEG(DATA)
3207                     _RC2REG	.equ	0x198
3208                     
3209                     	.area DSEG(DATA)
3210                     _TMA2R	.equ	0x1E8
3211                     
3212                     	.area DSEG(DATA)
3213                     _TMA2C	.equ	0x1E9
3214                     
3215                     	.area DSEG(DATA)
3216                     _LEDCN	.equ	0x1EA
3217                     
3218                     	.area DSEG(DATA)
3219                     _IQ0	.equ	0x1EB
3220                     
3221                     	.area DSEG(DATA)
3222                     _IQ1	.equ	0x1EC
3223                     
3224                     	.area DSEG(DATA)
3225                     _DGCON1	.equ	0x1ED
3226                     
3227                     	.area DSEG(DATA)
3228                     _DGCON2	.equ	0x1EE
3229                     
3230                     	.area DSEG(DATA)
3231                     _ADCRH	.equ	0x3A
3232                     
3233                     	.area DSEG(DATA)
3234                     _ADCRM	.equ	0x3B
3235                     
3236                     	.area DSEG(DATA)
3237                     _ADCRL	.equ	0x3C
3238                     
3239                     	.area DSEG(DATA)
3240                     _TEMDATA	.equ	0x2E0
3241                     
3242                     ;--------------------------------------------------------
3243                     ; absolute symbol definitions
3244                     ;--------------------------------------------------------
3245                     ;--------------------------------------------------------
3246                     ; compiler-defined variables
3247                     ;--------------------------------------------------------
3248                     	.area IDATA (DATA,REL,CON); pre-def
3249                     	.area IDATAROM (CODE,REL,CON); pre-def
3250                     	.area UDATA (DATA,REL,CON); pre-def
3251                     	.area UDATA (DATA,REL,CON) ;UDL_APP_Measure_0	udata
3252 @FSR2-CurrentOffset+001 --         r0x108F:	.ds	1
3253 @FSR2-CurrentOffset+003 --         r0x1090:	.ds	1
3254 @FSR2-CurrentOffset+002 --         r0x1091:	.ds	1
3255 @FSR2-CurrentOffset+004 --         r0x1092:	.ds	1
3256 @FSR2-CurrentOffset+005 --         r0x1093:	.ds	1
3257 @FSR2-CurrentOffset+001 --         r0x10A5:	.ds	1
3258 @FSR2-CurrentOffset+001 --         r0x10B7:	.ds	1
3259 @FSR2-CurrentOffset+001 --         r0x10B9:	.ds	1
3260 @FSR2-CurrentOffset+002 --         r0x10BA:	.ds	1
3261 @FSR2-CurrentOffset+003 --         r0x10BB:	.ds	1
3262 @FSR2-CurrentOffset+004 --         r0x10BC:	.ds	1
3263 @FSR2-CurrentOffset+001 --         r0x10BD:	.ds	1
3264 @FSR2-CurrentOffset+002 --         r0x10BE:	.ds	1
3265 @FSR2-CurrentOffset+003 --         r0x10BF:	.ds	1
3266 @FSR2-CurrentOffset+004 --         r0x10C0:	.ds	1
3267 @FSR2-CurrentOffset+005 --         r0x10C1:	.ds	1
3268 @FSR2-CurrentOffset+006 --         r0x10C2:	.ds	1
3269 @FSR2-CurrentOffset+001 --         r0x10CA:	.ds	1
3270 @FSR2-CurrentOffset+002 --         r0x10CB:	.ds	1
3271 @FSR2-CurrentOffset+003 --         r0x10CC:	.ds	1
3272 @FSR2-CurrentOffset+004 --         r0x10CD:	.ds	1
3273 @FSR2-CurrentOffset+001 --         r0x10D2:	.ds	1
3274 @FSR2-CurrentOffset+002 --         r0x10D3:	.ds	1
3275 @FSR2-CurrentOffset+003 --         r0x10D4:	.ds	1
3276 @FSR2-CurrentOffset+004 --         r0x10D5:	.ds	1
3277 @FSR2-CurrentOffset+001 --         r0x10D6:	.ds	1
3278 @FSR2-CurrentOffset+002 --         r0x10D8:	.ds	1
3279 @FSR2-CurrentOffset+003 --         r0x10D9:	.ds	1
3280 @FSR2-CurrentOffset+001 --         r0x10DA:	.ds	1
3281 @FSR2-CurrentOffset+002 --         r0x10DB:	.ds	1
3282 @FSR2-CurrentOffset+003 --         r0x10DC:	.ds	1
3283 @FSR2-CurrentOffset+004 --         r0x10DD:	.ds	1
3284 @FSR2-CurrentOffset+006 --         r0x10DE:	.ds	1
3285 @FSR2-CurrentOffset+005 --         r0x10DF:	.ds	1
3286 @FSR2-CurrentOffset+008 --         r0x10E1:	.ds	1
3287 @FSR2-CurrentOffset+007 --         r0x10E3:	.ds	1
3288 @FSR2-CurrentOffset+001 --         r0x10F2:	.ds	1
3289 @FSR2-CurrentOffset+002 --         r0x10F3:	.ds	1
3290 @FSR2-CurrentOffset+003 --         r0x10F4:	.ds	1
3291 @FSR2-CurrentOffset+004 --         r0x10F5:	.ds	1
3292 @FSR2-CurrentOffset+005 --         r0x10F6:	.ds	1
3293 @FSR2-CurrentOffset+006 --         r0x10F7:	.ds	1
3294 @FSR2-CurrentOffset+001 --         r0x10FC:	.ds	1
3295 @FSR2-CurrentOffset+002 --         r0x10FD:	.ds	1
3296 @FSR2-CurrentOffset+003 --         r0x10FE:	.ds	1
3297 @FSR2-CurrentOffset+004 --         r0x10FF:	.ds	1
3298 @FSR2-CurrentOffset+001 --         r0x110B:	.ds	1
3299 @FSR2-CurrentOffset+001 --         r0x110E:	.ds	1
3300 @FSR2-CurrentOffset+002 --         r0x110F:	.ds	1
3301 @FSR2-CurrentOffset+004 --         r0x1110:	.ds	1
3302 @FSR2-CurrentOffset+003 --         r0x1111:	.ds	1
3303 @FSR2-CurrentOffset+005 --         r0x1112:	.ds	1
3304 @FSR2-CurrentOffset+006 --         r0x1113:	.ds	1
3305 @FSR2-CurrentOffset+001 --         r0x111A:	.ds	1
3306 @FSR2-CurrentOffset+002 --         r0x111C:	.ds	1
3307 @FSR2-CurrentOffset+003 --         r0x111D:	.ds	1
3308 @FSR2-CurrentOffset+004 --         r0x111E:	.ds	1
3309 @FSR2-CurrentOffset+005 --         r0x111F:	.ds	1
3310 @FSR2-CurrentOffset+006 --         r0x1120:	.ds	1
3311 @FSR2-CurrentOffset+007 --         r0x1121:	.ds	1
3312                     	.area LOCALSTK (STK); local stack var
3313                     	.globl _abs_STK00
3314                     	.globl __divslong_STK06
3315                     	.globl __divslong_STK05
3316                     	.globl __divslong_STK04
3317                     	.globl __divslong_STK03
3318                     	.globl __divslong_STK02
3319                     	.globl __divslong_STK01
3320                     	.globl __divslong_STK00
3321                     	.globl _BIE_Write_STK01
3322                     	.globl _BIE_Write_STK00
3323 @FSR2-00 --         _Judge_Stability_STK00:	.ds	1
3324                     	.globl _Judge_Stability_STK00
3325 @FSR2+01 --         _Judge_Stability_STK01:	.ds	1
3326                     	.globl _Judge_Stability_STK01
3327 @FSR2+02 --         _Judge_Stability_STK02:	.ds	1
3328                     	.globl _Judge_Stability_STK02
3329 @FSR2+03 --         _Judge_Stability_STK03:	.ds	1
3330                     	.globl _Judge_Stability_STK03
3331                     	.globl __divuint_STK02
3332                     	.globl __divuint_STK01
3333                     	.globl __divuint_STK00
3334                     	.globl __mulint_STK02
3335                     	.globl __mulint_STK01
3336                     	.globl __mulint_STK00
3337                     	.globl _Centigrade_Convert_Fahrenheit_STK00
3338                     	.globl __mullong_STK06
3339                     	.globl __mullong_STK05
3340                     	.globl __mullong_STK04
3341                     	.globl __mullong_STK03
3342                     	.globl __mullong_STK02
3343                     	.globl __mullong_STK01
3344                     	.globl __mullong_STK00
3345                     	.globl __divulong_STK06
3346                     	.globl __divulong_STK05
3347                     	.globl __divulong_STK04
3348                     	.globl __divulong_STK03
3349                     	.globl __divulong_STK02
3350                     	.globl __divulong_STK01
3351                     	.globl __divulong_STK00
3352                     	.globl _Timer_Experience_STK06
3353                     	.globl _Timer_Experience_STK05
3354                     	.globl _Timer_Experience_STK04
3355                     	.globl _Timer_Experience_STK03
3356                     	.globl _Timer_Experience_STK02
3357                     	.globl _Timer_Experience_STK01
3358                     	.globl _Timer_Experience_STK00
3359 @FSR2-00 --         _Temperature_Compensate_STK00:	.ds	1
3360                     	.globl _Temperature_Compensate_STK00
3361                     	.globl __g2ptrget1_STK00
3362                     	.globl __g2ptrget2_STK00
3363                     ;--------------------------------------------------------
3364                     ; initialized data
3365                     ;--------------------------------------------------------
3366                     
3367                     	.area	CONST   (CODE)	 ;APP_Measure-0-code, const
3368                     
3369                     _CloseTable:
3370 1CC2 B4B4           	.byte #0xb4, #0xb4	; 46260
3371 1CC3 B4B4           	.byte #0xb4, #0xb4	; 46260
3372 1CC4 B4B4           	.byte #0xb4, #0xb4	; 46260
3373 1CC5 B4B4           	.byte #0xb4, #0xb4	; 46260
3374 1CC6 B4B4           	.byte #0xb4, #0xb4	; 46260
3375 1CC7 B4B4           	.byte #0xb4, #0xb4	; 46260
3376 1CC8 B4B4           	.byte #0xb4, #0xb4	; 46260
3377 1CC9 B4B4           	.byte #0xb4, #0xb4	; 46260
3378 1CCA B4B4           	.byte #0xb4, #0xb4	; 46260
3379 1CCB B4B4           	.byte #0xb4, #0xb4	; 46260
3380 1CCC B4B4           	.byte #0xb4, #0xb4	; 46260
3381 1CCD B4B4           	.byte #0xb4, #0xb4	; 46260
3382 1CCE B4B4           	.byte #0xb4, #0xb4	; 46260
3383 1CCF B4B4           	.byte #0xb4, #0xb4	; 46260
3384 1CD0 B4B4           	.byte #0xb4, #0xb4	; 46260
3385 1CD1 B4B4           	.byte #0xb4, #0xb4	; 46260
3386 1CD2 B4B4           	.byte #0xb4, #0xb4	; 46260
3387 1CD3 B4B4           	.byte #0xb4, #0xb4	; 46260
3388 1CD4 B4B4           	.byte #0xb4, #0xb4	; 46260
3389 1CD5 B4B4           	.byte #0xb4, #0xb4	; 46260
3390 1CD6 B4B4           	.byte #0xb4, #0xb4	; 46260
3391 1CD7 B4B4           	.byte #0xb4, #0xb4	; 46260
3392 1CD8 B4B4           	.byte #0xb4, #0xb4	; 46260
3393 1CD9 B4B4           	.byte #0xb4, #0xb4	; 46260
3394 1CDA B4B4           	.byte #0xb4, #0xb4	; 46260
3395 1CDB B4B4           	.byte #0xb4, #0xb4	; 46260
3396 1CDC B4B4           	.byte #0xb4, #0xb4	; 46260
3397 1CDD B4B4           	.byte #0xb4, #0xb4	; 46260
3398 1CDE B4B4           	.byte #0xb4, #0xb4	; 46260
3399 1CDF B4B4           	.byte #0xb4, #0xb4	; 46260
3400 1CE0 B4B4           	.byte #0xb4, #0xb4	; 46260
3401 1CE1 AAB4           	.byte #0xaa, #0xb4	; 46250
3402 1CE2 A0AA           	.byte #0xa0, #0xaa	; 43680
3403 1CE3 96A0           	.byte #0x96, #0xa0	; 41110
3404 1CE4 8C96           	.byte #0x8c, #0x96	; 38540
3405 1CE5 828C           	.byte #0x82, #0x8c	; 35970
3406 1CE6 7882           	.byte #0x78, #0x82	; 33400
3407 1CE7 6E78           	.byte #0x6e, #0x78	; 30830
3408 1CE8 646E           	.byte #0x64, #0x6e	; 28260
3409 1CE9 5A64           	.byte #0x5a, #0x64	; 25690
3410 1CEA 505A           	.byte #0x50, #0x5a	; 23120
3411 1CEB 4650           	.byte #0x46, #0x50	; 20550
3412 1CEC 3C46           	.byte #0x3c, #0x46	; 17980
3413 1CED 323C           	.byte #0x32, #0x3c	; 15410
3414 1CEE 2832           	.byte #0x28, #0x32	; 12840
3415 1CEF 1E28           	.byte #0x1e, #0x28	; 10270
3416 1CF0 141E           	.byte #0x14, #0x1e	; 7700
3417 1CF1 1414           	.byte #0x14, #0x14	; 5140
3418 1CF2 0A0A           	.byte #0x0a, #0x0a	; 2570
3419                     
3420                     ;--------------------------------------------------------
3421                     ; initialized data - mirror
3422                     ;--------------------------------------------------------
3423                     
3424                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FAPP_Measure$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3425                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FAPP_Measure$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
3426                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
3427                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
3428                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3429                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3430                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3431                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3432                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3433                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3434                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3435                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3436                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3437                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3438                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3439                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3440                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3441                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
3442                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3443                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3444                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3445                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3446                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3447                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3448                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3449                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3450                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3451                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3452                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3453                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3454                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3455                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3456                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3457                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3458                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3459                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3460                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3461                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3462                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3463                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3464                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3465                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3466                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3467                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3468                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3469                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3470                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3471                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3472                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3473                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3474                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3475                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3476                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3477                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3478                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3479                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3480                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3481                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3482                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3483                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3484                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3485                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3486                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3487                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
3488                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3489                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3490                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3491                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3492                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3493                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3494                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3495                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3496                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3497                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3498                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3499                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3500                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3501                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3502                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3503                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3504                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3505                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3506                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3507                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3508                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3509                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3510                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3511                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3512                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3513                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3514                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3515                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3516                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3517                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FAPP_Measure$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3518                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
3519                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
3520                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
3521                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FAPP_Measure$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3522                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
3523                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
3524                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FAPP_Measure$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3525                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FAPP_Measure$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3526                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FAPP_Measure$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3527                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
3528                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
3529                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FAPP_Measure$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3530                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FAPP_Measure$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
3531                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FAPP_Measure$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3532                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FAPP_Measure$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
3533                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FAPP_Measure$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
3534                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3535                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3536                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3537                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3538                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3539                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3540                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3541                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3542                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3543                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3544                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3545                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3546                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3547                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3548                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3549                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3550                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3551                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3552                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3553                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3554                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3555                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3556                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3557                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3558                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3559                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3560                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3561                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3562                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3563                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FAPP_Measure$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
3564                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
3565                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
3566                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FAPP_Measure$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3567                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FAPP_Measure$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3568                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
3569                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FAPP_Measure$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
3570                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3571                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3572                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3573                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3574                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3575                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3576                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3577                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3578                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3579                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3580                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3581                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3582                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3583                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3584                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3585                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3586                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3587                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3588                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3589                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3590                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3591                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3592                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3593                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3594                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3595                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3596                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3597                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3598                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3599                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3600                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3601                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3602                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3603                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3604                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3605                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3606                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3607                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3608                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3609                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3610                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3611                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3612                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3613                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3614                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3615                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3616                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3617                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3618                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3619                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3620                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3621                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3622                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3623                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3624                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3625                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3626                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3627                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3628                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3629                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3630                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3631                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3632                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3633                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3634                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3635                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3636                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3637                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3638                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3639                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3640                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3641                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3642                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3643                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3644                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3645                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3646                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3647                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3648                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3649                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3650                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3651                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3652                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3653                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3654                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3655                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3656                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3657                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FAPP_Measure$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
3658                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FAPP_Measure$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3659                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FAPP_Measure$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
3660                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
3661                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
3662                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FAPP_Measure$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
3663                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3664                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3665                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3666                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3667                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3668                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3669                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3670                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3671                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3672                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3673                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3674                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3675                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3676                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3677                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3678                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3679                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3680                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3681                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3682                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3683                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3684                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3685                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3686                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3687                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3688                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3689                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3690                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3691                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3692                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
3693                     	;Following is optimization info, 
3694                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
3695                     	;--cdb--W:r0x111A:NULL+0:-1:1
3696                     	;--cdb--W:r0x1120:NULL+0:-1:1
3697                     	;--cdb--W:r0x111C:NULL+0:-1:1
3698                     	;--cdb--W:r0x111A:NULL+0:-1:0
3699                     	;--cdb--W:r0x111B:NULL+0:-1:0
3700                     	;--cdb--W:r0x111C:NULL+0:-1:0
3701                     	;--cdb--W:r0x111D:NULL+0:-1:0
3702                     	;--cdb--W:r0x111E:STK00+0:-1:0
3703                     	;--cdb--W:r0x1120:NULL+0:0:0
3704                     	;--cdb--W:r0x1121:NULL+0:0:0
3705                     	;--cdb--W:r0x1122:r0x111C+0:-1:0
3706                     	;--cdb--W:r0x1123:r0x111D+1:-1:0
3707                     	;--cdb--W:r0x111B:NULL+0:-1:1
3708                     	;--cdb--W:r0x111D:NULL+0:-1:1
3709                     	;--cdb--W:r0x1121:NULL+0:-1:1
3710                     	;--cdb--W:r0x111F:r0x111D+1:-1:0
3711                     	;--cdb--W:r0x111F:NULL+0:-1:1
3712                     	;--cdb--W:r0x1113:NULL+0:-1:1
3713                     	;--cdb--W:r0x1110:NULL+0:-1:1
3714                     	;--cdb--W:r0x110F:NULL+0:-1:1
3715                     	;--cdb--W:r0x1114:NULL+0:-1:1
3716                     	;--cdb--W:r0x1110:STK00+0:-1:0
3717                     	;--cdb--W:r0x1112:NULL+0:-1:1
3718                     	;--cdb--W:r0x110B:NULL+0:-1:1
3719                     	;--cdb--W:r0x1109:NULL+0:-1:0
3720                     	;--cdb--W:r0x110A:NULL+0:-1:0
3721                     	;--cdb--W:r0x110B:NULL+0:-1:0
3722                     	;--cdb--W:r0x110C:NULL+0:-1:0
3723                     	;--cdb--W:r0x1109:NULL+0:-1:1
3724                     	;--cdb--W:r0x110A:NULL+0:-1:1
3725                     	;--cdb--W:r0x110C:NULL+0:-1:1
3726                     	;--cdb--W:r0x10FC:NULL+0:-1:1
3727                     	;--cdb--W:r0x10FC:NULL+0:-1:0
3728                     	;--cdb--W:r0x10FD:NULL+0:-1:0
3729                     	;--cdb--W:r0x10FD:NULL+0:-1:1
3730                     	;--cdb--W:r0x10F2:NULL+0:-1:0
3731                     	;--cdb--W:r0x10F3:NULL+0:-1:0
3732                     	;--cdb--W:r0x10F8:r0x10F2+0:-1:0
3733                     	;--cdb--W:r0x10FA:NULL+0:0:0
3734                     	;--cdb--W:r0x10FB:NULL+0:0:0
3735                     	;--cdb--W:r0x10F2:NULL+0:-1:1
3736                     	;--cdb--W:r0x10F3:NULL+0:-1:1
3737                     	;--cdb--W:r0x10FA:NULL+0:-1:1
3738                     	;--cdb--W:r0x10FB:NULL+0:-1:1
3739                     	;--cdb--W:r0x10F9:r0x10F3+1:-1:0
3740                     	;--cdb--W:r0x10DA:NULL+0:-1:1
3741                     	;--cdb--W:r0x10DA:STK02+0:-1:0
3742                     	;--cdb--W:r0x10DB:STK01+0:-1:0
3743                     	;--cdb--W:r0x10DC:STK00+0:-1:0
3744                     	;--cdb--W:r0x10E2:STK00+0:-1:0
3745                     	;--cdb--W:r0x10E1:STK01+0:-1:0
3746                     	;--cdb--W:r0x10E0:STK02+0:-1:0
3747                     	;--cdb--W:r0x10E0:STK00+0:-1:0
3748                     	;--cdb--W:r0x10DB:NULL+0:-1:1
3749                     	;--cdb--W:r0x10DB:NULL+0:-1:0
3750                     	;--cdb--W:r0x10DA:NULL+0:-1:0
3751                     	;--cdb--W:r0x10D6:NULL+0:-1:1
3752                     	;--cdb--W:r0x10D6:NULL+0:-1:0
3753                     	;--cdb--W:r0x10D7:NULL+0:-1:0
3754                     	;--cdb--W:r0x10D7:NULL+0:-1:1
3755                     	;--cdb--W:r0x10CE:NULL+0:-1:1
3756                     	;--cdb--W:r0x10CA:NULL+0:-1:0
3757                     	;--cdb--W:r0x10CB:NULL+0:-1:0
3758                     	;--cdb--W:r0x10CE:STK00+0:-1:0
3759                     	;--cdb--W:r0x10D0:STK01+0:-1:0
3760                     	;--cdb--W:r0x10CA:NULL+0:-1:1
3761                     	;--cdb--W:r0x10CB:NULL+0:-1:1
3762                     	;--cdb--W:r0x10CD:NULL+0:-1:1
3763                     	;--cdb--W:r0x10BD:NULL+0:-1:1
3764                     	;--cdb--W:r0x10C3:NULL+0:-1:1
3765                     	;--cdb--W:r0x10BF:NULL+0:-1:1
3766                     	;--cdb--W:r0x10BD:NULL+0:-1:0
3767                     	;--cdb--W:r0x10BD:STK00+0:-1:0
3768                     	;--cdb--W:r0x10BE:NULL+0:-1:0
3769                     	;--cdb--W:r0x10BF:NULL+0:-1:0
3770                     	;--cdb--W:r0x10C0:NULL+0:-1:0
3771                     	;--cdb--W:r0x10BE:NULL+0:-1:1
3772                     	;--cdb--W:r0x10C0:NULL+0:-1:1
3773                     	;--cdb--W:r0x10B9:NULL+0:-1:0
3774                     	;--cdb--W:r0x10BA:NULL+0:-1:0
3775                     	;--cdb--W:r0x10B6:NULL+0:-1:1
3776                     	;--cdb--W:r0x10B4:NULL+0:-1:0
3777                     	;--cdb--W:r0x10B5:NULL+0:-1:0
3778                     	;--cdb--W:r0x10B4:NULL+0:-1:1
3779                     	;--cdb--W:r0x10B5:NULL+0:-1:1
3780                     	;--cdb--W:_Judge_Stability_STK02:NULL+0:-1:1
3781                     	;--cdb--W:_Judge_Stability_STK00:NULL+0:-1:1
3782                     	;--cdb--W:r0x10A5:NULL+0:-1:1
3783                     	;--cdb--W:_Judge_Stability_STK01:NULL+0:-1:1
3784                     	;--cdb--W:r0x1091:NULL+0:-1:1
3785                     	;--cdb--W:r0x1090:NULL+0:-1:1
3786                     	;--cdb--W:r0x108F:NULL+0:-1:1
3787                     	;--cdb--W:r0x108D:NULL+0:-1:1
3788                     	;--cdb--W:r0x108D:NULL+0:-1:0
3789                     	;--cdb--W:r0x108E:NULL+0:-1:0
3790                     	;--cdb--W:r0x108F:NULL+0:-1:0
3791                     	;--cdb--W:r0x108F:STK00+0:-1:0
3792                     	;--cdb--W:r0x1091:NULL+0:-1:0
3793                     	;--cdb--W:r0x1091:r0x1094+1:-1:0
3794                     	;--cdb--W:r0x1090:STK00+0:-1:0
3795                     	;--cdb--W:r0x1090:NULL+0:-1:0
3796                     	;--cdb--W:r0x1092:STK00+0:-1:0
3797                     	;--cdb--W:r0x1094:STK00+0:-1:0
3798                     	;--cdb--W:r0x1094:NULL+0:0:0
3799                     	;--cdb--W:r0x1094:r0x1090+1:-1:0
3800                     	;--cdb--W:r0x1095:STK01+0:-1:0
3801                     	;--cdb--W:r0x1093:STK01+0:-1:0
3802                     	;--cdb--W:r0x1093:NULL+0:0:0
3803                     	;--cdb--W:r0x108E:NULL+0:-1:1
3804                     	;--cdb--W:r0x1093:NULL+0:-1:1
3805                     	;--cdb--W:r0x1094:NULL+0:-1:1
3806                     	;--cdb--W:r0x1092:NULL+0:-1:0
3807                     	;--cdb--W:r0x1093:r0x108F+0:-1:0
3808                     	;--cdb--W:r0x1092:NULL+0:-1:1
3809                     	;--c2db--RNG$_Temp_Calibration_i_10000_416$2064$2139
3810                     	;--c2db--RNG$_Temp_Calibration_tmp_10000_416$2170$2179
3811                     	;--c2db--RNG$_Judge_Stability_Timer_10000_441$1949$2006
3812                     	;--c2db--RNG$_Judge_Stability_PresentTemp_10000_441$1972$1999
3813                     	;--c2db--RNG$_Judge_Stability_PriorTemp_10000_441$1992$1999
3814                     	;--c2db--RNG$_Start_Algorithm_i_10000_490$1532$1564
3815                     	;--c2db--RNG$_Forecast_Calculate_K_10000_523$1029$1342
3816                     	;--c2db--RNG$_Update_MaxTemp3Min_Result_10000_555$817$820
3817                     	;--c2db--RNG$_Temperature_Compensate_Temp_10000_605$568$658
3818                     	;--c2db--RNG$_Temperature_Compensate_F_OddFlag_10000_606$568$619
3819                     	;--c2db--RNG$_Temperature_Compensate_a_10000_606$613$644
3820                     	;--c2db--RNG$_Temperature_Compensate_b_10000_606$589$603
3821                     	;--c2db--RNG$_Forecast_Measure_Temp_10000_619$423$478
3822                     	END
