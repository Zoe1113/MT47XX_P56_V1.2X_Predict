001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
008                     ;;	.file	".\Source\App_ADC.c"
009                     	.module App_ADC
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_ADC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_ADC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_ADC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_ADC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_ADC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_ADC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_ADC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_ADC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_ADC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_ADC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_ADC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_ADC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_ADC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_ADC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_ADC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_ADC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_ADC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_ADC:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
141                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
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
162                     	;--cdb--S:G$ADCGetData$0$0({2}DF,SI:S),C,0,0
163                     	;--cdb--F:App_ADC:G$ADCGetData$0$0({2}DF,SI:S),C,0,0,0,0,0
164                     	;--cdb--S:G$ADC_Average$0$0({2}DF,SC:U),C,0,0
165                     	;--cdb--F:App_ADC:G$ADC_Average$0$0({2}DF,SC:U),C,0,0,0,0,0
166                     	;--cdb--S:G$NTC_ADCData$0$0({2}DF,SC:U),C,0,0
167                     	;--cdb--F:App_ADC:G$NTC_ADCData$0$0({2}DF,SC:U),C,0,0,0,0,0
168                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
169                     	;--cdb--F:App_ADC:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0,0,0,0
170                     	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
171                     	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
172                     	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
173                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
174                     	;--cdb--F:App_ADC:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0,0,0,0
175                     ;--------------------------------------------------------
176                     ; overlayable items in internal ram 
177                     ;--------------------------------------------------------
178                     ;	udata_ovr
179                     .area CCODE (code,REL,CON) ; App_ADC-code 
180                     .globl _Centigrade_Convert_Fahrenheit
181                     
182                     ;--------------------------------------------------------
183                     	.FUNC _Centigrade_Convert_Fahrenheit:$r:2:2:$C:__divulong:$C:__mulint:$C:__mullong\
184                     :$L:r0x10D1:$L:_Centigrade_Convert_Fahrenheit_STK00:$L:r0x10D2:$L:r0x10D3:$L:r0x10D4\
185                     :$L:r0x10D5
186                     ;--------------------------------------------------------
187                     ;	;.line	373; ".\Source\App_ADC.c"	uint16 Centigrade_Convert_Fahrenheit(uint16 temp)
188 0540 [00] [2] C485      _Centigrade_Convert_Fahrenheit:	;Function start
189 0541 [05] [2] 6684      	MVF	r0x10D1,1,0
190                     ;	;.line	377; ".\Source\App_ADC.c"	if( (temp >= Low_Temp_Centigrade )&&(temp <= High_Temp_Centigrade ) )
191 0542 [05] [2] 6485      	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
192 0543 [05] [2] 04D8      	ADDL	0xd8
193 0544 [05] [2] 06F5      	MVL	0xf5
194 0545 [05] [2] 1484      	ADDC	r0x10D1,0,0
195 0546 [05] [2] 74        	BTSS	_STATUS,4
196 0546 [05] 67        	JMP	_00252_DS_
197 0547 [05] [2] 6485      	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
198 0548 [05] [2] 04D9      	ADDL	0xd9
199 0549 [05] [2] 06EE      	MVL	0xee
200 054A [05] [2] 1484      	ADDC	r0x10D1,0,0
201 054B [05] [2] 70        	BTSZ	_STATUS,4
202 054B [05] 62        	JMP	_00252_DS_
203                     ;	;.line	380; ".\Source\App_ADC.c"	if(eTempUnit == Centigrade)
204 054C [05] [2] 065A      	MVL	0x5a
205 054D [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
206 054F [05] [1] 7820      	JMP	_00244_DS_
207                     ;	;.line	382; ".\Source\App_ADC.c"	tmp = temp;
208 0550 [05] [1] 0C81      	CLRF	r0x10D4,0
209 0551 [05] [1] 0C80      	CLRF	r0x10D5,0
210                     ;	;.line	383; ".\Source\App_ADC.c"	return ((tmp + 5) / 10 * 10);
211 0552 [05] [1] 0605      	MVL	0x05
212 0553 [05] [1] 1285      	ADDF	_Centigrade_Convert_Fahrenheit_STK00,1,0
213 0554 [05] [1] 0600      	MVL	0x00
214 0555 [05] [1] 1684      	ADDC	r0x10D1,1,0
215 0556 [05] [1] 1681      	ADDC	r0x10D4,1,0
216 0557 [05] [1] 1680      	ADDC	r0x10D5,1,0
217 0558 [05] [1] 060A      	MVL	0x0a
218 0559 [05] [1] 660D      	MVF	__divulong_STK06,1,0
219 055A [06] [1] 0C0D      	CLRF	__divulong_STK05,0
220 055B [07] [1] 0C0D      	CLRF	__divulong_STK04,0
221 055C [08] [1] 0C0D      	CLRF	__divulong_STK03,0
222 055D [09] [1] 6489      	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
223 055E [09] [1] 660D      	MVF	__divulong_STK02,1,0
224 055F [10] [1] 6489      	MVF	r0x10D1,0,0
225 0560 [10] [1] 660D      	MVF	__divulong_STK01,1,0
226 0561 [11] [1] 6487      	MVF	r0x10D4,0,0
227 0562 [11] [1] 660D      	MVF	__divulong_STK00,1,0
228 0563 [12] [1] 6487      	MVF	r0x10D5,0,0
229 0564 [12] [1] C001 F415 	CALL	__divulong
230 0566 [05] [1] D01E F00D 	MVFF	STK02,__mulint_STK02
231 0568 [06] [1] D01F F00D 	MVFF	STK01,__mulint_STK01
232 056A [07] [1] 060A      	MVL	0x0a
233 056B [07] [1] 660D      	MVF	__mulint_STK00,1,0
234 056C [08] [1] 0600      	MVL	0x00
235 056D [08] [1] C001 F402 	CALL	__mulint
236 056F [05] [1] 7867      	JMP	_00255_DS_
237                     _00244_DS_:
238                     ;	;.line	386; ".\Source\App_ADC.c"	else if(eTempUnit == Fahrenheit)
239 0570 [05] [1] 06A5      	MVL	0xa5
240 0571 [05] [1] 6D7F      	CPSE	_eTempUnit,0
241 0572 [05] [1] 7864 C865 	JMP	_00255_DS_
242                     ;	;.line	388; ".\Source\App_ADC.c"	tmp = temp ;
243 05D9 [05] [1] 6485      	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
244                     ;	;.line	390; ".\Source\App_ADC.c"	tmp = (uint32)tmp * 9 / 5 + 3200;
245 05DA [05] [1] 660D      	MVF	__mullong_STK06,1,0
246 05DB [06] [1] 6485      	MVF	r0x10D1,0,0
247 05DC [06] [1] 660D      	MVF	__mullong_STK05,1,0
248 05DD [07] [1] 0C0D      	CLRF	__mullong_STK04,0
249 05DE [08] [1] 0C0D      	CLRF	__mullong_STK03,0
250 05DF [09] [1] 0609      	MVL	0x09
251 05E0 [09] [1] 660D      	MVF	__mullong_STK02,1,0
252 05E1 [10] [1] 0C0D      	CLRF	__mullong_STK01,0
253 05E2 [11] [1] 0C0D      	CLRF	__mullong_STK00,0
254 05E3 [12] [1] 0500      	MVL	0x00
255 0574 [12] [1] C001 F3C3 	CALL	__mullong
256 0576 [05] [1] 6680      	MVF	r0x10D5,1,0
257 0577 [05] [1] 0605      	MVL	0x05
258 0578 [05] [1] 660D      	MVF	__divulong_STK06,1,0
259 0579 [06] [1] 0C0D      	CLRF	__divulong_STK05,0
260 057A [07] [1] 0C0D      	CLRF	__divulong_STK04,0
261 057B [08] [1] 0C0D      	CLRF	__divulong_STK03,0
262 057C [09] [1] D01E F00D 	MVFF	STK02,__divulong_STK02
263 057E [10] [1] D01F F00D 	MVFF	STK01,__divulong_STK01
264 0580 [11] [1] D020 F00D 	MVFF	STK00,__divulong_STK00
265 0582 [12] [1] 6487      	MVF	r0x10D5,0,0
266 0583 [12] [1] C001 F415 	CALL	__divulong
267 0585 [05] [1] 6680      	MVF	r0x10D5,1,0
268 0586 [05] [1] 641F      	MVF	STK01,0,0
269 0587 [05] [1] 6682      	MVF	r0x10D3,1,0
270 0588 [05] [1] 641E      	MVF	STK02,0,0
271 0589 [05] [1] 0480      	ADDL	0x80
272 058A [05] [1] 6683      	MVF	r0x10D2,1,0
273 058B [05] [1] 060C      	MVL	0x0c
274 058C [05] [1] 1682      	ADDC	r0x10D3,1,0
275 058D [05] [1] 0600      	MVL	0x00
276 058E [05] [1] 1620      	ADDC	STK00,1,0
277 058F [05] [1] 1680      	ADDC	r0x10D5,1,0
278                     ;	;.line	392; ".\Source\App_ADC.c"	return ((tmp + 5) / 10 * 10);
279 0590 [05] [1] 0605      	MVL	0x05
280 0591 [05] [1] 1283      	ADDF	r0x10D2,1,0
281 0592 [05] [1] 0600      	MVL	0x00
282 0593 [05] [1] 1682      	ADDC	r0x10D3,1,0
283 0594 [05] [1] 1620      	ADDC	STK00,1,0
284 0595 [05] [1] 1680      	ADDC	r0x10D5,1,0
285 0596 [05] [1] 060A      	MVL	0x0a
286 0597 [05] [1] 660D      	MVF	__divulong_STK06,1,0
287 0598 [06] [1] 0C0D      	CLRF	__divulong_STK05,0
288 0599 [07] [1] 0C0D      	CLRF	__divulong_STK04,0
289 059A [08] [1] 0C0D      	CLRF	__divulong_STK03,0
290 059B [09] [1] 6487      	MVF	r0x10D2,0,0
291 059C [09] [1] 660D      	MVF	__divulong_STK02,1,0
292 059D [10] [1] 6487      	MVF	r0x10D3,0,0
293 059E [10] [1] 660D      	MVF	__divulong_STK01,1,0
294 059F [11] [1] D020 F00D 	MVFF	STK00,__divulong_STK00
295 05A1 [12] [1] 6487      	MVF	r0x10D5,0,0
296 05A2 [12] [1] C001 F415 	CALL	__divulong
297 05A4 [05] [1] D01E F00D 	MVFF	STK02,__mulint_STK02
298 05A6 [06] [1] D01F F00D 	MVFF	STK01,__mulint_STK01
299 05A8 [07] [1] 060A      	MVL	0x0a
300 05A9 [07] [1] 660D      	MVF	__mulint_STK00,1,0
301 05AA [08] [1] 0600      	MVL	0x00
302 05AB [08] [1] C001 F402 	CALL	__mulint
303 05AD [05] [1] 7829      	JMP	_00255_DS_
304                     _00252_DS_:
305                     ;	;.line	398; ".\Source\App_ADC.c"	if(eTempUnit == Centigrade)
306 05AE [05] [2] 065A      	MVL	0x5a
307 05AF [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
308 05B1 [05] [1] 7804      	JMP	_00249_DS_
309                     ;	;.line	400; ".\Source\App_ADC.c"	tmp = temp;
310 05B2 [05] [1] 6485      	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
311                     ;	;.line	401; ".\Source\App_ADC.c"	return tmp;
312 05B3 [05] [1] 6620      	MVF	STK00,1,0
313 05B4 [05] [1] 6484      	MVF	r0x10D1,0,0
314 05B5 [05] [1] 7821      	JMP	_00255_DS_
315                     _00249_DS_:
316                     ;	;.line	404; ".\Source\App_ADC.c"	else if(eTempUnit == Fahrenheit)
317 05B6 [05] [1] 06A5      	MVL	0xa5
318 05B7 [05] [1] 6D7F      	CPSE	_eTempUnit,0
319 05B8 [05] [1] 781E C81F 	JMP	_00255_DS_
320                     ;	;.line	406; ".\Source\App_ADC.c"	tmp = temp ;
321                     	MVF	_Centigrade_Convert_Fahrenheit_STK00,0,0
322                     ;	;.line	408; ".\Source\App_ADC.c"	tmp = (uint32)tmp * 9 / 5 + 3200;
323                     	MVF	__mullong_STK06,1,0
324                     	MVF	r0x10D1,0,0
325                     	MVF	__mullong_STK05,1,0
326                     	CLRF	__mullong_STK04,0
327                     	CLRF	__mullong_STK03,0
328                     	MVL	0x09
329                     	MVF	__mullong_STK02,1,0
330                     	CLRF	__mullong_STK01,0
331                     	CLRF	__mullong_STK00,0
332                     	MVL	0x00
333 05BA [12] [1] C001 F3C3 	CALL	__mullong
334 05BC [05] [1] 6682      	MVF	r0x10D3,1,0
335 05BD [05] [1] 0605      	MVL	0x05
336 05BE [05] [1] 660D      	MVF	__divulong_STK06,1,0
337 05BF [06] [1] 0C0D      	CLRF	__divulong_STK05,0
338 05C0 [07] [1] 0C0D      	CLRF	__divulong_STK04,0
339 05C1 [08] [1] 0C0D      	CLRF	__divulong_STK03,0
340 05C2 [09] [1] D01E F00D 	MVFF	STK02,__divulong_STK02
341 05C4 [10] [1] D01F F00D 	MVFF	STK01,__divulong_STK01
342 05C6 [11] [1] D020 F00D 	MVFF	STK00,__divulong_STK00
343 05C8 [12] [1] 6489      	MVF	r0x10D3,0,0
344 05C9 [12] [1] C001 F415 	CALL	__divulong
345 05CB [05] [1] 6682      	MVF	r0x10D3,1,0
346 05CC [05] [1] 6420      	MVF	STK00,0,0
347 05CD [05] [1] 6683      	MVF	r0x10D2,1,0
348 05CE [05] [1] 641E      	MVF	STK02,0,0
349 05CF [05] [1] 0480      	ADDL	0x80
350 05D0 [05] [1] 6620      	MVF	STK00,1,0
351 05D1 [05] [1] 060C      	MVL	0x0c
352 05D2 [05] [1] 161F      	ADDC	STK01,1,0
353 05D3 [05] [1] 0600      	MVL	0x00
354 05D4 [05] [1] 1683      	ADDC	r0x10D2,1,0
355 05D5 [05] [1] 1682      	ADDC	r0x10D3,1,0
356                     ;	;.line	409; ".\Source\App_ADC.c"	return tmp;
357 05D6 [05] [1] 641F      	MVF	STK01,0,0
358 05D7 [05] [1] C4BA      _00255_DS_:
359                     ;	;.line	412; ".\Source\App_ADC.c"	}
360 05D8 [00] [1] 000A      	RET	
361                     ; exit point of _Centigrade_Convert_Fahrenheit
362                     	.ENDFUNC	_Centigrade_Convert_Fahrenheit
363                     ;--------------------------------------------------------
364                     
365                     .globl _Get_250msTemp
366                     
367                     ;--------------------------------------------------------
368                     	.FUNC _Get_250msTemp:$r:0:0:$C:_NTC_ADCData:$C:__mullong:$C:__divulong:$C:__g2ptrget2\
369                     :$C:__mulint\
370                     :$L:r0x10A5:$L:r0x10A6:$L:r0x10A7:$L:r0x10A8:$L:r0x10A9\
371                     :$L:r0x10AA:$L:r0x10AD:$L:r0x10AE:$L:r0x10AF:$L:r0x10B0\
372                     :$L:r0x10B2:$L:r0x10B1:$L:r0x10B3:$L:r0x10B4:$L:r0x10B5\
373                     :$L:r0x10B6:$L:r0x10B7:$L:r0x10B8
374                     ;--------------------------------------------------------
375                     ;	;.line	242; ".\Source\App_ADC.c"	uint16 n = 250,lower = 0,upper = 501,i;
376 1276 [00] [2] C492      _Get_250msTemp:	;Function start
377 1277 [18] [2] 06FA      	MVL	0xfa
378 1278 [18] [2] 0C90      	CLRF	r0x10A6,0
379 1279 [18] [2] 0C8F      	CLRF	r0x10A7,0
380 127A [18] [2] 0C8E      	CLRF	r0x10A8,0
381 127B [18] [2] 6691      	MVF	r0x10A5,1,0
382 127C [18] [2] 06F5      	MVL	0xf5
383 127D [18] [2] 668D      	MVF	r0x10A9,1,0
384 127E [18] [2] 0601      	MVL	0x01
385 127F [18] [2] 668C      	MVF	r0x10AA,1,0
386                     ;	;.line	248; ".\Source\App_ADC.c"	if((eDisplay_Interfaces == Display_TemperatureDetecting) || (eDisplay_Interfaces == Display_MeasuredTemperature) || (eDisplay_Interfaces == Display_Calibration))
387 1280 [18] [2] 6533      	MVF	_eDisplay_Interfaces,0,0
388 1281 [18] [2] 04F1      	ADDL	0xF1
389 1282 [18] [2] 71        	BTSZ	_STATUS,0
390 1282 [18] 05        	JMP	_00156_DS_
391 1283 [18] [2] 04FE      	ADDL	0xFE
392 1284 [18] [2] 71        	BTSZ	_STATUS,0
393 1284 [18] 03        	JMP	_00156_DS_
394 1285 [18] [2] 0607      	MVL	0x07
395 1286 [18] [2] 6D33      	CPSE	_eDisplay_Interfaces,0
396 1287 [18] [2] 792D      	JMP	_00163_DS_
397                     _00156_DS_:
398                     ;	;.line	250; ".\Source\App_ADC.c"	if(sADC.Get_250msTemp_Flag)
399 1288 [18] [2] B143      	BTSS	_sADC,0
400 1289 [18] [2] 792B      	JMP	_00163_DS_
401                     ;	;.line	262; ".\Source\App_ADC.c"	if(NTC_ADCData())
402 128A [18] [2] C92C      	CALL	_NTC_ADCData
403                     	.CHKPARA _NTC_ADCData 0
404 128B [18] [2] 0200      	IORL	0x00
405 128C [18] [2] A02B      	BTSZ	_STATUS,0
406 128D [18] [2] 7927      	JMP	_00163_DS_
407                     ;	;.line	272; ".\Source\App_ADC.c"	sADC.RawRntc = (uint32)sADC.AI2_AI3_Data * 30000 / (65536 - sADC.AI2_AI3_Data);
408 128E [18] [2] 654C      	MVF	(_sADC + 9),0,0
409 128F [18] [2] 668B      	MVF	r0x10AD,1,0
410 1290 [18] [2] 654D      	MVF	(_sADC + 10),0,0
411 1291 [18] [2] 668A      	MVF	r0x10AE,1,0
412 1292 [18] [2] 0600      	MVL	0x00
413 1293 [18] [2] AE8A      	BTSZ	r0x10AE,7
414 1294 [18] [2] 06FF      	MVL	0xff
415 1295 [18] [2] 6687      	MVF	r0x10B2,1,0
416 1296 [18] [2] 6686      	MVF	r0x10B1,1,0
417 1297 [18] [2] 648B      	MVF	r0x10AD,0,0
418 1298 [18] [2] 660D      	MVF	__mullong_STK06,1,0
419 1299 [19] [2] 648B      	MVF	r0x10AE,0,0
420 129A [19] [2] 660D      	MVF	__mullong_STK05,1,0
421 129B [20] [2] 6488      	MVF	r0x10B1,0,0
422 129C [20] [2] 660D      	MVF	__mullong_STK04,1,0
423 129D [21] [2] 648A      	MVF	r0x10B2,0,0
424 129E [21] [2] 660D      	MVF	__mullong_STK03,1,0
425 129F [22] [2] 0630      	MVL	0x30
426 12A0 [22] [2] 660D      	MVF	__mullong_STK02,1,0
427 12A1 [23] [2] 0675      	MVL	0x75
428 12A2 [23] [2] 660D      	MVF	__mullong_STK01,1,0
429 12A3 [24] [2] 0C0D      	CLRF	__mullong_STK00,0
430 12A4 [25] [2] 0600      	MVL	0x00
431 12A5 [25] [2] C91D      	CALL	__mullong
432                     	.CHKPARA __mullong 8
433 12A6 [18] [2] 0C83      	CLRF	r0x10B5,0
434 12A7 [18] [2] 6687      	MVF	r0x10B2,1,0
435 12A8 [18] [2] AE8A      	BTSZ	r0x10AE,7
436 12A9 [18] [2] 0A83      	SETF	r0x10B5,0
437 12AA [18] [2] 248B      	COMF	r0x10AD,0,0
438 12AB [18] [2] 0401      	ADDL	0x01
439 12AC [18] [2] 268A      	COMF	r0x10AE,1,0
440 12AD [18] [2] 668B      	MVF	r0x10AD,1,0
441 12AE [18] [2] 2483      	COMF	r0x10B5,0,0
442 12AF [18] [2] 6682      	MVF	r0x10B6,1,0
443 12B0 [18] [2] 0600      	MVL	0x00
444 12B1 [18] [2] 168A      	ADDC	r0x10AE,1,0
445 12B2 [18] [2] 0601      	MVL	0x01
446 12B3 [18] [2] 1682      	ADDC	r0x10B6,1,0
447 12B4 [18] [2] 0C81      	CLRF	r0x10B7,0
448 12B5 [18] [2] AE82      	BTSZ	r0x10B6,7
449 12B6 [18] [2] 0A81      	SETF	r0x10B7,0
450 12B7 [18] [2] 648B      	MVF	r0x10AD,0,0
451 12B8 [18] [2] 660D      	MVF	__divulong_STK06,1,0
452 12B9 [19] [2] 648B      	MVF	r0x10AE,0,0
453 12BA [19] [2] 660D      	MVF	__divulong_STK05,1,0
454 12BB [20] [2] 6484      	MVF	r0x10B6,0,0
455 12BC [20] [2] 660D      	MVF	__divulong_STK04,1,0
456 12BD [21] [2] 6484      	MVF	r0x10B7,0,0
457 12BE [21] [2] 660D      	MVF	__divulong_STK03,1,0
458 12BF [22] [2] D01E F00D 	MVFF	STK02,__divulong_STK02
459 12C1 [23] [2] D01F F00D 	MVFF	STK01,__divulong_STK01
460 12C3 [24] [2] D020 F00D 	MVFF	STK00,__divulong_STK00
461 12C5 [25] [2] 648E      	MVF	r0x10B2,0,0
462 12C6 [25] [2] C94E      	CALL	__divulong
463                     	.CHKPARA __divulong 8
464 12C7 [18] [2] 641E      	MVF	STK02,0,0
465 12C8 [18] [2] 6758      	MVF	(_sADC + 21),1,0
466 12C9 [18] [2] 641F      	MVF	STK01,0,0
467 12CA [18] [2] 6759      	MVF	(_sADC + 22),1,0
468                     ;	;.line	275; ".\Source\App_ADC.c"	sADC.Rntc = (uint32)sADC.RawRntc * sTempCal.Temp_Ratio / 10000;
469 12CB [18] [2] 661F      	MVF	STK01,1,0
470 12CC [18] [2] 6592      	MVF	(_sTempCal + 2),0,0
471 12CD [18] [2] 660D      	MVF	__mullong_STK06,1,0
472 12CE [19] [2] 6593      	MVF	(_sTempCal + 3),0,0
473 12CF [19] [2] 660D      	MVF	__mullong_STK05,1,0
474 12D0 [20] [2] 0C0D      	CLRF	__mullong_STK04,0
475 12D1 [21] [2] 0C0D      	CLRF	__mullong_STK03,0
476 12D2 [22] [2] D01E F00D 	MVFF	STK02,__mullong_STK02
477 12D4 [23] [2] D01F F00D 	MVFF	STK01,__mullong_STK01
478 12D6 [24] [2] 0C0D      	CLRF	__mullong_STK00,0
479 12D7 [25] [2] 0600      	MVL	0x00
480 12D8 [25] [2] C8EA      	CALL	__mullong
481 12D9 [18] [2] 6688      	MVF	r0x10B0,1,0
482 12DA [18] [2] 0610      	MVL	0x10
483 12DB [18] [2] 660D      	MVF	__divulong_STK06,1,0
484 12DC [19] [2] 0627      	MVL	0x27
485 12DD [19] [2] 660D      	MVF	__divulong_STK05,1,0
486 12DE [20] [2] 0C0D      	CLRF	__divulong_STK04,0
487 12DF [21] [2] 0C0D      	CLRF	__divulong_STK03,0
488 12E0 [22] [2] D01E F00D 	MVFF	STK02,__divulong_STK02
489 12E2 [23] [2] D01F F00D 	MVFF	STK01,__divulong_STK01
490 12E4 [24] [2] D020 F00D 	MVFF	STK00,__divulong_STK00
491 12E6 [25] [2] 648F      	MVF	r0x10B0,0,0
492 12E7 [25] [2] C92D      	CALL	__divulong
493 12E8 [18] [2] 641E      	MVF	STK02,0,0
494 12E9 [18] [2] 675A      	MVF	(_sADC + 23),1,0
495 12EA [18] [2] 641F      	MVF	STK01,0,0
496 12EB [18] [2] 675B      	MVF	(_sADC + 24),1,0
497                     ;	;.line	282; ".\Source\App_ADC.c"	for(i = lower;i < upper;i++)
498 12EC [18] [2] 0C8B      	CLRF	r0x10AD,0
499 12ED [18] [2] 0C8A      	CLRF	r0x10AE,0
500                     _00161_DS_:
501 12EE [18] [2] 648D      	MVF	r0x10A9,0,0
502 12EF [18] [2] 188B      	SUBF	r0x10AD,0,0
503 12F0 [18] [2] 648C      	MVF	r0x10AA,0,0
504 12F1 [18] [2] 1C8A      	SUBC	r0x10AE,0,0
505 12F2 [18] [2] A82B      	BTSZ	_STATUS,4
506 12F3 [18] [2] 78C1      	JMP	_00163_DS_
507                     ;	;.line	284; ".\Source\App_ADC.c"	if(sADC.Rntc < R_Table[n])
508 12F4 [18] [2] 655A      	MVF	(_sADC + 23),0,0
509 12F5 [18] [2] 6689      	MVF	r0x10AF,1,0
510 12F6 [18] [2] 655B      	MVF	(_sADC + 24),0,0
511 12F7 [18] [2] 6688      	MVF	r0x10B0,1,0
512 12F8 [18] [2] 882B      	BCF	_STATUS,4
513 12F9 [18] [2] 5491      	RLFC	r0x10A5,0,0
514 12FA [18] [2] 6686      	MVF	r0x10B1,1,0
515 12FB [18] [2] 5490      	RLFC	r0x10A6,0,0
516 12FC [18] [2] 6687      	MVF	r0x10B2,1,0
517 12FD [18] [2] 6486      	MVF	r0x10B1,0,0
518 12FE [18] [2] 049E      	ADDL	(_R_Table + 0)
519 12FF [18] [2] 660D      	MVF	__g2ptrget2_STK00,1,0
520 1300 [19] [2] 062B      	MVL	high (_R_Table + 0)
521 1301 [19] [2] 1488      	ADDC	r0x10B2,0,0
522 1302 [19] [2] 0280      	IORL	0x80
523 1303 [19] [2] CDB8      	CALL	__g2ptrget2
524 1304 [18] [2] 6684      	MVF	r0x10B4,1,0
525 1305 [18] [2] 6420      	MVF	STK00,0,0
526 1306 [18] [2] 1889      	SUBF	r0x10AF,0,0
527 1307 [18] [2] 6484      	MVF	r0x10B4,0,0
528 1308 [18] [2] 1C88      	SUBC	r0x10B0,0,0
529 1309 [18] [2] 70        	BTSZ	_STATUS,4
530 1309 [18] 0F        	JMP	_00141_DS_
531                     ;	;.line	286; ".\Source\App_ADC.c"	lower = n;
532 130A [18] [2] 6491      	MVF	r0x10A5,0,0
533 130B [18] [2] 668F      	MVF	r0x10A7,1,0
534 130C [18] [2] 6490      	MVF	r0x10A6,0,0
535 130D [18] [2] 668E      	MVF	r0x10A8,1,0
536                     ;	;.line	287; ".\Source\App_ADC.c"	n = (lower + upper) / 2;
537 130E [18] [2] 648D      	MVF	r0x10A9,0,0
538 130F [18] [2] 1091      	ADDF	r0x10A5,0,0
539 1310 [18] [2] 6689      	MVF	r0x10AF,1,0
540 1311 [18] [2] 6490      	MVF	r0x10A6,0,0
541 1312 [18] [2] 148C      	ADDC	r0x10AA,0,0
542 1313 [18] [2] 882B      	BCF	_STATUS,4
543 1314 [18] [2] 5029      	RRFC	_WREG,0,0
544 1315 [18] [2] 6690      	MVF	r0x10A6,1,0
545 1316 [18] [2] 5089      	RRFC	r0x10AF,0,0
546 1317 [18] [2] 6691      	MVF	r0x10A5,1,0
547 1318 [18] [2] 780E      	JMP	_00142_DS_
548                     _00141_DS_:
549                     ;	;.line	291; ".\Source\App_ADC.c"	upper = n;
550 1319 [18] [2] 6491      	MVF	r0x10A5,0,0
551 131A [18] [2] 668D      	MVF	r0x10A9,1,0
552 131B [18] [2] 6490      	MVF	r0x10A6,0,0
553 131C [18] [2] 668C      	MVF	r0x10AA,1,0
554                     ;	;.line	292; ".\Source\App_ADC.c"	n = (lower + upper) / 2;
555 131D [18] [2] 6491      	MVF	r0x10A5,0,0
556 131E [18] [2] 108F      	ADDF	r0x10A7,0,0
557 131F [18] [2] 6689      	MVF	r0x10AF,1,0
558 1320 [18] [2] 648E      	MVF	r0x10A8,0,0
559 1321 [18] [2] 1490      	ADDC	r0x10A6,0,0
560 1322 [18] [2] 882B      	BCF	_STATUS,4
561 1323 [18] [2] 5029      	RRFC	_WREG,0,0
562 1324 [18] [2] 6690      	MVF	r0x10A6,1,0
563 1325 [18] [2] 5089      	RRFC	r0x10AF,0,0
564 1326 [18] [2] 6691      	MVF	r0x10A5,1,0
565                     _00142_DS_:
566                     ;	;.line	295; ".\Source\App_ADC.c"	if	(sADC.Rntc < 330)
567 1327 [18] [2] 655A      	MVF	(_sADC + 23),0,0
568 1328 [18] [2] 04B6      	ADDL	0xb6
569 1329 [18] [2] 06FE      	MVL	0xfe
570 132A [18] [2] 155B      	ADDC	(_sADC + 24),0,0
571 132B [18] [2] 70        	BTSZ	_STATUS,4
572 132B [18] 09        	JMP	_00149_DS_
573                     ;	;.line	298; ".\Source\App_ADC.c"	i = upper;
574 132C [18] [2] 648D      	MVF	r0x10A9,0,0
575 132D [18] [2] 668B      	MVF	r0x10AD,1,0
576 132E [18] [2] 648C      	MVF	r0x10AA,0,0
577 132F [18] [2] 668A      	MVF	r0x10AE,1,0
578                     ;	;.line	300; ".\Source\App_ADC.c"	sADC.Centigrade250msTemp = 10000;
579 1330 [18] [2] 0610      	MVL	0x10
580 1331 [18] [2] 6750      	MVF	(_sADC + 13),1,0
581 1332 [18] [2] 0627      	MVL	0x27
582 1333 [18] [2] 6751      	MVF	(_sADC + 14),1,0
583 1334 [18] [2] 787D      	JMP	_00162_DS_
584                     _00149_DS_:
585                     ;	;.line	303; ".\Source\App_ADC.c"	else if(sADC.Rntc > 16335)
586 1335 [18] [2] 655A      	MVF	(_sADC + 23),0,0
587 1336 [18] [2] 0430      	ADDL	0x30
588 1337 [18] [2] 06C0      	MVL	0xc0
589 1338 [18] [2] 155B      	ADDC	(_sADC + 24),0,0
590 1339 [18] [2] 74        	BTSS	_STATUS,4
591 1339 [18] 07        	JMP	_00146_DS_
592                     ;	;.line	306; ".\Source\App_ADC.c"	i = upper;
593 133A [18] [2] 648D      	MVF	r0x10A9,0,0
594 133B [18] [2] 668B      	MVF	r0x10AD,1,0
595 133C [18] [2] 648C      	MVF	r0x10AA,0,0
596 133D [18] [2] 668A      	MVF	r0x10AE,1,0
597                     ;	;.line	308; ".\Source\App_ADC.c"	sADC.Centigrade250msTemp = 0;
598 133E [18] [2] 0D50      	CLRF	(_sADC + 13),0
599 133F [18] [2] 0D51      	CLRF	(_sADC + 14),0
600 1340 [18] [2] 7871      	JMP	_00162_DS_
601                     _00146_DS_:
602                     ;	;.line	310; ".\Source\App_ADC.c"	else if(upper - lower == 1)
603 1341 [18] [2] 648F      	MVF	r0x10A7,0,0
604 1342 [18] [2] 188D      	SUBF	r0x10A9,0,0
605 1343 [18] [2] 6689      	MVF	r0x10AF,1,0
606 1344 [18] [2] 648E      	MVF	r0x10A8,0,0
607 1345 [18] [2] 1C8C      	SUBC	r0x10AA,0,0
608 1346 [18] [2] 6688      	MVF	r0x10B0,1,0
609 1347 [18] [2] 3089      	DCF	r0x10AF,0,0
610 1348 [18] [2] 2C88      	IORF	r0x10B0,0,0
611 1349 [18] [2] 75        	BTSS	_STATUS,0
612 1349 [18] 68        	JMP	_00162_DS_
613                     ;	;.line	313; ".\Source\App_ADC.c"	i = upper;
614 134A [18] [2] 648D      	MVF	r0x10A9,0,0
615 134B [18] [2] 668B      	MVF	r0x10AD,1,0
616 134C [18] [2] 648C      	MVF	r0x10AA,0,0
617 134D [18] [2] 668A      	MVF	r0x10AE,1,0
618                     ;	;.line	317; ".\Source\App_ADC.c"	tmp = (uint32)(R_Table[lower] - sADC.Rntc);
619 134E [18] [2] 882B      	BCF	_STATUS,4
620 134F [18] [2] 548F      	RLFC	r0x10A7,0,0
621 1350 [18] [2] 6689      	MVF	r0x10AF,1,0
622 1351 [18] [2] 548E      	RLFC	r0x10A8,0,0
623 1352 [18] [2] 6688      	MVF	r0x10B0,1,0
624 1353 [18] [2] 6489      	MVF	r0x10AF,0,0
625 1354 [18] [2] 049E      	ADDL	(_R_Table + 0)
626 1355 [18] [2] 660D      	MVF	__g2ptrget2_STK00,1,0
627 1356 [19] [2] 062B      	MVL	high (_R_Table + 0)
628 1357 [19] [2] 1489      	ADDC	r0x10B0,0,0
629 1358 [19] [2] 0280      	IORL	0x80
630 1359 [19] [2] CD62      	CALL	__g2ptrget2
631 135A [18] [2] 6687      	MVF	r0x10B2,1,0
632 135B [18] [2] 6420      	MVF	STK00,0,0
633 135C [18] [2] 6686      	MVF	r0x10B1,1,0
634 135D [18] [2] 655A      	MVF	(_sADC + 23),0,0
635 135E [18] [2] 1886      	SUBF	r0x10B1,0,0
636 135F [18] [2] 660D      	MVF	__mullong_STK06,1,0
637 1360 [19] [2] 655B      	MVF	(_sADC + 24),0,0
638 1361 [19] [2] 1C88      	SUBC	r0x10B2,0,0
639                     ;	;.line	318; ".\Source\App_ADC.c"	tmp *= 100;
640 1362 [19] [2] 660D      	MVF	__mullong_STK05,1,0
641 1363 [20] [2] 0C0D      	CLRF	__mullong_STK04,0
642 1364 [21] [2] 0C0D      	CLRF	__mullong_STK03,0
643 1365 [22] [2] 0664      	MVL	0x64
644 1366 [22] [2] 660D      	MVF	__mullong_STK02,1,0
645 1367 [23] [2] 0C0D      	CLRF	__mullong_STK01,0
646 1368 [24] [2] 0C0D      	CLRF	__mullong_STK00,0
647 1369 [25] [2] 0600      	MVL	0x00
648 136A [25] [2] C858      	CALL	__mullong
649 136B [18] [2] 6684      	MVF	r0x10B4,1,0
650 136C [18] [2] 6420      	MVF	STK00,0,0
651 136D [18] [2] 6685      	MVF	r0x10B3,1,0
652 136E [18] [2] 641F      	MVF	STK01,0,0
653 136F [18] [2] 6688      	MVF	r0x10B0,1,0
654 1370 [18] [2] 641E      	MVF	STK02,0,0
655 1371 [18] [2] 6689      	MVF	r0x10AF,1,0
656                     ;	;.line	319; ".\Source\App_ADC.c"	tmp /= (R_Table[lower] - R_Table[upper]);
657 1372 [18] [2] 882B      	BCF	_STATUS,4
658 1373 [18] [2] 548D      	RLFC	r0x10A9,0,0
659 1374 [18] [2] 6683      	MVF	r0x10B5,1,0
660 1375 [18] [2] 548C      	RLFC	r0x10AA,0,0
661 1376 [18] [2] 6682      	MVF	r0x10B6,1,0
662 1377 [18] [2] 6483      	MVF	r0x10B5,0,0
663 1378 [18] [2] 049E      	ADDL	(_R_Table + 0)
664 1379 [18] [2] 660D      	MVF	__g2ptrget2_STK00,1,0
665 137A [19] [2] 062B      	MVL	high (_R_Table + 0)
666 137B [19] [2] 1483      	ADDC	r0x10B6,0,0
667 137C [19] [2] 0280      	IORL	0x80
668 137D [19] [2] CD3E      	CALL	__g2ptrget2
669 137E [18] [2] 6680      	MVF	r0x10B8,1,0
670 137F [18] [2] 6420      	MVF	STK00,0,0
671 1380 [18] [2] 1886      	SUBF	r0x10B1,0,0
672 1381 [18] [2] 660D      	MVF	__divulong_STK06,1,0
673 1382 [19] [2] 6481      	MVF	r0x10B8,0,0
674 1383 [19] [2] 1C88      	SUBC	r0x10B2,0,0
675 1384 [19] [2] 660D      	MVF	__divulong_STK05,1,0
676 1385 [20] [2] 0C0D      	CLRF	__divulong_STK04,0
677 1386 [21] [2] 0C0D      	CLRF	__divulong_STK03,0
678 1387 [22] [2] 648D      	MVF	r0x10AF,0,0
679 1388 [22] [2] 660D      	MVF	__divulong_STK02,1,0
680 1389 [23] [2] 648D      	MVF	r0x10B0,0,0
681 138A [23] [2] 660D      	MVF	__divulong_STK01,1,0
682 138B [24] [2] 648B      	MVF	r0x10B3,0,0
683 138C [24] [2] 660D      	MVF	__divulong_STK00,1,0
684 138D [25] [2] 648B      	MVF	r0x10B4,0,0
685 138E [25] [2] C886      	CALL	__divulong
686 138F [18] [2] 6687      	MVF	r0x10B2,1,0
687                     ;	;.line	320; ".\Source\App_ADC.c"	tmp = tmp / 10;
688 1390 [18] [2] 060A      	MVL	0x0a
689 1391 [18] [2] 660D      	MVF	__divulong_STK06,1,0
690 1392 [19] [2] 0C0D      	CLRF	__divulong_STK05,0
691 1393 [20] [2] 0C0D      	CLRF	__divulong_STK04,0
692 1394 [21] [2] 0C0D      	CLRF	__divulong_STK03,0
693 1395 [22] [2] D01E F00D 	MVFF	STK02,__divulong_STK02
694 1397 [23] [2] D01F F00D 	MVFF	STK01,__divulong_STK01
695 1399 [24] [2] D020 F00D 	MVFF	STK00,__divulong_STK00
696 139B [25] [2] 648E      	MVF	r0x10B2,0,0
697 139C [25] [2] C878      	CALL	__divulong
698 139D [18] [2] 641F      	MVF	STK01,0,0
699 139E [18] [2] 6688      	MVF	r0x10B0,1,0
700 139F [18] [2] 641E      	MVF	STK02,0,0
701 13A0 [18] [2] 6689      	MVF	r0x10AF,1,0
702                     ;	;.line	322; ".\Source\App_ADC.c"	sADC.Centigrade250msTemp = lower * 10 + tmp;
703 13A1 [18] [2] 648F      	MVF	r0x10A7,0,0
704 13A2 [18] [2] 660D      	MVF	__mulint_STK02,1,0
705 13A3 [19] [2] 648F      	MVF	r0x10A8,0,0
706 13A4 [19] [2] 660D      	MVF	__mulint_STK01,1,0
707 13A5 [20] [2] 060A      	MVL	0x0a
708 13A6 [20] [2] 660D      	MVF	__mulint_STK00,1,0
709 13A7 [21] [2] 0600      	MVL	0x00
710 13A8 [21] [2] C859      	CALL	__mulint
711                     	.CHKPARA __mulint 4
712 13A9 [18] [2] 6684      	MVF	r0x10B4,1,0
713 13AA [18] [2] 6489      	MVF	r0x10AF,0,0
714 13AB [18] [2] 1020      	ADDF	STK00,0,0
715 13AC [18] [2] 6750      	MVF	(_sADC + 13),1,0
716 13AD [18] [2] 6484      	MVF	r0x10B4,0,0
717 13AE [18] [2] 1488      	ADDC	r0x10B0,0,0
718 13AF [18] [2] 6751      	MVF	(_sADC + 14),1,0
719                     ;	;.line	324; ".\Source\App_ADC.c"	sADC.Get_250msTemp_Flag = FALSE;
720 13B0 [18] [2] 8143      	BCF	_sADC,0
721                     ;	;.line	327; ".\Source\App_ADC.c"	sTIMx.TempSampleFlag = TRUE;
722 13B1 [18] [2] 95CC      	BSF	_sTIMx,2
723                     _00162_DS_:
724                     ;	;.line	282; ".\Source\App_ADC.c"	for(i = lower;i < upper;i++)
725 13B2 [18] [2] 428B      	INSUZ	r0x10AD,1,0
726 13B3 [18] [2] 3A8A      	INF	r0x10AE,1,0
727 13B4 [18] [2] 7F39      	JMP	_00161_DS_
728 13B5 [18] [2] C4AE      _00163_DS_:
729                     ;	;.line	366; ".\Source\App_ADC.c"	}
730 13B6 [00] [2] 000A      	RET	
731                     ; exit point of _Get_250msTemp
732                     	.ENDFUNC	_Get_250msTemp
733                     ;--------------------------------------------------------
734                     
735                     .globl _NTC_ADCData
736                     
737                     ;--------------------------------------------------------
738                     	.FUNC _NTC_ADCData:$r:1:0:$C:_ADC_Average\
739                     
740                     ;--------------------------------------------------------
741                     ;	;.line	224; ".\Source\App_ADC.c"	if(ADC_Average())
742                     _NTC_ADCData:	;Function start
743 13B7 [00] [2] C000 F5E4 	CALL	_ADC_Average
744                     	.CHKPARA _ADC_Average 0
745 13B9 [00] [2] 0200      	IORL	0x00
746 13BA [00] [2] 71        	BTSZ	_STATUS,0
747 13BA [00] 06        	JMP	_00134_DS_
748                     ;	;.line	227; ".\Source\App_ADC.c"	sADC.AI2_AI3_Data = sADC.ADCSum;
749 13BB [00] [2] 6554      	MVF	(_sADC + 17),0,0
750 13BC [00] [2] 674C      	MVF	(_sADC + 9),1,0
751 13BD [00] [2] 6555      	MVF	(_sADC + 18),0,0
752 13BE [00] [2] 674D      	MVF	(_sADC + 10),1,0
753                     ;	;.line	228; ".\Source\App_ADC.c"	return TRUE;
754 13BF [00] [2] 0601      	MVL	0x01
755 13C0 [00] [2] 7801      	JMP	_00135_DS_
756                     _00134_DS_:
757                     ;	;.line	230; ".\Source\App_ADC.c"	return FALSE;
758 13C1 [00] [2] 0600      	MVL	0x00
759                     _00135_DS_:
760                     ;	;.line	231; ".\Source\App_ADC.c"	}
761 13C2 [00] [2] 000A      	RET	
762                     ; exit point of _NTC_ADCData
763                     	.ENDFUNC	_NTC_ADCData
764                     ;--------------------------------------------------------
765                     
766                     .globl _ADC_Average
767                     
768                     ;--------------------------------------------------------
769                     	.FUNC _ADC_Average:$r:1:0:$C:_ADCGetData\
770                     :$L:r0x1096:$L:r0x1097:$L:r0x1098:$L:r0x1099:$L:r0x109C\
771                     :$L:r0x109D:$L:r0x109F:$L:r0x109E
772                     ;--------------------------------------------------------
773                     ;	;.line	61; ".\Source\App_ADC.c"	if(sADC.Flag_ADCDone)
774 05E4 [00] [2] C488      _ADC_Average:	;Function start
775 05E5 [08] [2] B343      	BTSS	_sADC,1
776 05E6 [08] [2] 786A      	JMP	_00121_DS_
777                     ;	;.line	63; ".\Source\App_ADC.c"	sADC.Flag_ADCDone = FALSE;
778 05E7 [08] [2] 8343      	BCF	_sADC,1
779                     ;	;.line	66; ".\Source\App_ADC.c"	sADC.ADCData = ADCGetData();
780 05E8 [08] [2] C8C9      	CALL	_ADCGetData
781                     	.CHKPARA _ADCGetData 0
782 05E9 [08] [2] 6747      	MVF	(_sADC + 4),1,0
783 05EA [08] [2] 6420      	MVF	STK00,0,0
784 05EB [08] [2] 6746      	MVF	(_sADC + 3),1,0
785                     ;	;.line	69; ".\Source\App_ADC.c"	ADC_INT_Enable();
786 05EC [08] [2] 9A23      	BSF	_INTE0,5
787                     ;	;.line	80; ".\Source\App_ADC.c"	if(++sADC.ADCCounts > FilterNum)
788 05ED [08] [2] 3945      	INF	(_sADC + 2),0,0
789 05EE [08] [2] 6687      	MVF	r0x1096,1,0
790 05EF [08] [2] 6745      	MVF	(_sADC + 2),1,0
791 05F0 [08] [2] 0604      	MVL	0x04
792 05F1 [08] [2] 6887      	CPSG	r0x1096,0
793 05F2 [08] [2] 785E      	JMP	_00121_DS_
794                     ;	;.line	92; ".\Source\App_ADC.c"	if(sADC.ADCData > 0x6666 || sADC.ADCData < 222)
795 05F3 [08] [2] 6546      	MVF	(_sADC + 3),0,0
796 05F4 [08] [2] 6687      	MVF	r0x1096,1,0
797 05F5 [08] [2] 6547      	MVF	(_sADC + 4),0,0
798 05F6 [08] [2] 6686      	MVF	r0x1097,1,0
799 05F7 [08] [2] 6487      	MVF	r0x1096,0,0
800 05F8 [08] [2] 0499      	ADDL	0x99
801 05F9 [08] [2] 0619      	MVL	0x19
802 05FA [08] [2] 1486      	ADDC	r0x1097,0,0
803 05FB [08] [2] 73        	BTSZ	_STATUS,1
804 05FB [08] 05        	JMP	_00109_DS_
805 05FC [08] [2] 6487      	MVF	r0x1096,0,0
806 05FD [08] [2] 0422      	ADDL	0x22
807 05FE [08] [2] 067F      	MVL	0x7f
808 05FF [08] [2] 1486      	ADDC	r0x1097,0,0
809 0600 [08] [2] 73        	BTSZ	_STATUS,1
810 0600 [08] 02        	JMP	_00110_DS_
811                     _00109_DS_:
812                     ;	;.line	95; ".\Source\App_ADC.c"	ERR[Err] = TRUE;
813 0601 [08] [2] 0601      	MVL	0x01
814 0602 [08] [2] 673D      	MVF	(_ERR + 8),1,0
815                     _00110_DS_:
816                     ;	;.line	100; ".\Source\App_ADC.c"	if(sADC.ADCCounts == FilterNum + 1)
817 0603 [08] [2] 0605      	MVL	0x05
818 0604 [08] [2] 6D45      	CPSE	(_sADC + 2),0
819 0605 [08] [2] 780C      	JMP	_00113_DS_
820                     ;	;.line	102; ".\Source\App_ADC.c"	sADC.ADCSum = 0;
821 0606 [08] [2] 0D54      	CLRF	(_sADC + 17),0
822 0607 [08] [2] 0D55      	CLRF	(_sADC + 18),0
823 0608 [08] [2] 0D56      	CLRF	(_sADC + 19),0
824 0609 [08] [2] 0D57      	CLRF	(_sADC + 20),0
825                     ;	;.line	103; ".\Source\App_ADC.c"	sADC.MinData = sADC.ADCData;
826 060A [08] [2] 6546      	MVF	(_sADC + 3),0,0
827 060B [08] [2] 6748      	MVF	(_sADC + 5),1,0
828 060C [08] [2] 6547      	MVF	(_sADC + 4),0,0
829 060D [08] [2] 6749      	MVF	(_sADC + 6),1,0
830                     ;	;.line	104; ".\Source\App_ADC.c"	sADC.MaxData = sADC.ADCData;
831 060E [08] [2] 6546      	MVF	(_sADC + 3),0,0
832 060F [08] [2] 674A      	MVF	(_sADC + 7),1,0
833 0610 [08] [2] 6547      	MVF	(_sADC + 4),0,0
834 0611 [08] [2] 674B      	MVF	(_sADC + 8),1,0
835                     _00113_DS_:
836                     ;	;.line	112; ".\Source\App_ADC.c"	sADC.ADCSum += sADC.ADCData;
837 0612 [08] [2] 6554      	MVF	(_sADC + 17),0,0
838 0613 [08] [2] 6687      	MVF	r0x1096,1,0
839 0614 [08] [2] 6555      	MVF	(_sADC + 18),0,0
840 0615 [08] [2] 6686      	MVF	r0x1097,1,0
841 0616 [08] [2] 6556      	MVF	(_sADC + 19),0,0
842 0617 [08] [2] 6685      	MVF	r0x1098,1,0
843 0618 [08] [2] 6557      	MVF	(_sADC + 20),0,0
844 0619 [08] [2] 6684      	MVF	r0x1099,1,0
845 061A [08] [2] 6546      	MVF	(_sADC + 3),0,0
846 061B [08] [2] 6683      	MVF	r0x109C,1,0
847 061C [08] [2] 6547      	MVF	(_sADC + 4),0,0
848 061D [08] [2] 6682      	MVF	r0x109D,1,0
849 061E [08] [2] 0600      	MVL	0x00
850 061F [08] [2] AE82      	BTSZ	r0x109D,7
851 0620 [08] [2] 06FF      	MVL	0xff
852 0621 [08] [2] 6681      	MVF	r0x109F,1,0
853 0622 [08] [2] 6680      	MVF	r0x109E,1,0
854 0623 [08] [2] 6483      	MVF	r0x109C,0,0
855 0624 [08] [2] 1087      	ADDF	r0x1096,0,0
856 0625 [08] [2] 6754      	MVF	(_sADC + 17),1,0
857 0626 [08] [2] 6486      	MVF	r0x1097,0,0
858 0627 [08] [2] 1482      	ADDC	r0x109D,0,0
859 0628 [08] [2] 6755      	MVF	(_sADC + 18),1,0
860 0629 [08] [2] 6485      	MVF	r0x1098,0,0
861 062A [08] [2] 1480      	ADDC	r0x109E,0,0
862 062B [08] [2] 6756      	MVF	(_sADC + 19),1,0
863 062C [08] [2] 6484      	MVF	r0x1099,0,0
864 062D [08] [2] 1481      	ADDC	r0x109F,0,0
865 062E [08] [2] 6757      	MVF	(_sADC + 20),1,0
866                     ;	;.line	115; ".\Source\App_ADC.c"	if(sADC.MaxData < sADC.ADCData)
867 062F [08] [2] 654A      	MVF	(_sADC + 7),0,0
868 0630 [08] [2] 6687      	MVF	r0x1096,1,0
869 0631 [08] [2] 654B      	MVF	(_sADC + 8),0,0
870 0632 [08] [2] 6686      	MVF	r0x1097,1,0
871 0633 [08] [2] 6546      	MVF	(_sADC + 3),0,0
872 0634 [08] [2] 1887      	SUBF	r0x1096,0,0
873 0635 [08] [2] 6486      	MVF	r0x1097,0,0
874 0636 [08] [2] 0380      	XORL	0x80
875 0637 [08] [2] 6620      	MVF	STK00,1,0
876 0638 [08] [2] 6547      	MVF	(_sADC + 4),0,0
877 0639 [08] [2] 0380      	XORL	0x80
878 063A [08] [2] 1C20      	SUBC	STK00,0,0
879 063B [08] [2] 70        	BTSZ	_STATUS,4
880 063B [08] 04        	JMP	_00115_DS_
881                     ;	;.line	117; ".\Source\App_ADC.c"	sADC.MaxData = sADC.ADCData;
882 063C [08] [2] 6546      	MVF	(_sADC + 3),0,0
883 063D [08] [2] 674A      	MVF	(_sADC + 7),1,0
884 063E [08] [2] 6547      	MVF	(_sADC + 4),0,0
885 063F [08] [2] 674B      	MVF	(_sADC + 8),1,0
886                     _00115_DS_:
887                     ;	;.line	120; ".\Source\App_ADC.c"	if(sADC.MinData > sADC.ADCData)
888 0640 [08] [2] 6548      	MVF	(_sADC + 5),0,0
889 0641 [08] [2] 6687      	MVF	r0x1096,1,0
890 0642 [08] [2] 6549      	MVF	(_sADC + 6),0,0
891 0643 [08] [2] 6686      	MVF	r0x1097,1,0
892 0644 [08] [2] 6487      	MVF	r0x1096,0,0
893 0645 [08] [2] 1946      	SUBF	(_sADC + 3),0,0
894 0646 [08] [2] 6547      	MVF	(_sADC + 4),0,0
895 0647 [08] [2] 0380      	XORL	0x80
896 0648 [08] [2] 6620      	MVF	STK00,1,0
897 0649 [08] [2] 6486      	MVF	r0x1097,0,0
898 064A [08] [2] 0380      	XORL	0x80
899 064B [08] [2] 1C20      	SUBC	STK00,0,0
900 064C [08] [2] 70        	BTSZ	_STATUS,4
901 064C [08] 04        	JMP	_00121_DS_
902                     ;	;.line	122; ".\Source\App_ADC.c"	sADC.MinData = sADC.ADCData;
903 064D [08] [2] 6546      	MVF	(_sADC + 3),0,0
904 064E [08] [2] 6748      	MVF	(_sADC + 5),1,0
905 064F [08] [2] 6547      	MVF	(_sADC + 4),0,0
906 0650 [08] [2] 6749      	MVF	(_sADC + 6),1,0
907                     _00121_DS_:
908                     ;	;.line	136; ".\Source\App_ADC.c"	if(sADC.ADCCounts > (FilterNum + 5))
909 0651 [08] [2] 0609      	MVL	0x09
910 0652 [08] [2] 6945      	CPSG	(_sADC + 2),0
911 0653 [08] [2] 782A      	JMP	_00126_DS_
912                     ;	;.line	144; ".\Source\App_ADC.c"	if(eDisplay_Interfaces == Display_Calibration)
913 0654 [08] [2] 0607      	MVL	0x07
914 0655 [08] [2] 6D33      	CPSE	_eDisplay_Interfaces,0
915 0656 [08] [2] 7813 C84D 	JMP	_00123_DS_
916                     ;	;.line	146; ".\Source\App_ADC.c"	sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
917 06A5 [08] [2] 6554      	MVF	(_sADC + 17),0,0
918 06A6 [08] [2] 6687      	MVF	r0x1096,1,0
919 06A7 [08] [2] 6555      	MVF	(_sADC + 18),0,0
920 06A8 [08] [2] 6686      	MVF	r0x1097,1,0
921 06A9 [08] [2] 6556      	MVF	(_sADC + 19),0,0
922 06AA [08] [2] 6685      	MVF	r0x1098,1,0
923 06AB [08] [2] 6557      	MVF	(_sADC + 20),0,0
924 06AC [08] [2] 6684      	MVF	r0x1099,1,0
925 06AD [08] [2] 6548      	MVF	(_sADC + 5),0,0
926 06AE [08] [2] 6683      	MVF	r0x109C,1,0
927 06AF [08] [2] 6549      	MVF	(_sADC + 6),0,0
928 06B0 [08] [2] 6682      	MVF	r0x109D,1,0
929 06B1 [08] [2] 0500      	MVL	0x00
930 0658 [08] [2] AE82      	BTSZ	r0x109D,7
931 0659 [08] [2] 06FF C83B 	MVL	0xff
932 0696 [08] [2] 6681      	MVF	r0x109F,1,0
933 0697 [08] [2] 6680      	MVF	r0x109E,1,0
934 0698 [08] [2] 6483      	MVF	r0x109C,0,0
935 0699 [08] [2] 1A87      	SUBF	r0x1096,1,0
936 069A [08] [2] 6482      	MVF	r0x109D,0,0
937 069B [08] [2] 1E86      	SUBC	r0x1097,1,0
938 069C [08] [2] 6480      	MVF	r0x109E,0,0
939 069D [08] [2] 1E85      	SUBC	r0x1098,1,0
940 069E [08] [2] 6481      	MVF	r0x109F,0,0
941 069F [08] [2] 1E84      	SUBC	r0x1099,1,0
942 06A0 [08] [2] 654A      	MVF	(_sADC + 7),0,0
943 06A1 [08] [2] 6683      	MVF	r0x109C,1,0
944 06A2 [08] [2] 654B      	MVF	(_sADC + 8),0,0
945 06A3 [08] [2] 6682      	MVF	r0x109D,1,0
946 06A4 [08] [2] 0500      	MVL	0x00
947 065B [08] [2] AE82      	BTSZ	r0x109D,7
948 065C [08] [2] 06FF C823 	MVL	0xff
949 0681 [08] [2] 6681      	MVF	r0x109F,1,0
950 0682 [08] [2] 6680      	MVF	r0x109E,1,0
951 0683 [08] [2] 6483      	MVF	r0x109C,0,0
952 0684 [08] [2] 1A87      	SUBF	r0x1096,1,0
953 0685 [08] [2] 6482      	MVF	r0x109D,0,0
954 0686 [08] [2] 1E86      	SUBC	r0x1097,1,0
955 0687 [08] [2] 6480      	MVF	r0x109E,0,0
956 0688 [08] [2] 1E85      	SUBC	r0x1098,1,0
957 0689 [08] [2] 6481      	MVF	r0x109F,0,0
958 068A [08] [2] 1E84      	SUBC	r0x1099,1,0
959 068B [08] [2] 6487      	MVF	r0x1096,0,0
960 068C [08] [2] 6754      	MVF	(_sADC + 17),1,0
961 068D [08] [2] 6486      	MVF	r0x1097,0,0
962 068E [08] [2] 6755      	MVF	(_sADC + 18),1,0
963 068F [08] [2] 6485      	MVF	r0x1098,0,0
964 0690 [08] [2] 6756      	MVF	(_sADC + 19),1,0
965 0691 [08] [2] 6484      	MVF	r0x1099,0,0
966 0692 [08] [2] 6757      	MVF	(_sADC + 20),1,0
967                     ;	;.line	150; ".\Source\App_ADC.c"	sADC.ADCSum >>= 2;
968 0693 [08] [2] 5C84      	ARRC	r0x1099,0,0
969 0694 [08] [2] 6757 000A 	MVF	(_sADC + 20),1,0
970 065E [08] [2] 5085      	RRFC	r0x1098,0,0
971 065F [08] [2] 6756      	MVF	(_sADC + 19),1,0
972 0660 [08] [2] 5086      	RRFC	r0x1097,0,0
973 0661 [08] [2] 6755      	MVF	(_sADC + 18),1,0
974 0662 [08] [2] 5087      	RRFC	r0x1096,0,0
975 0663 [08] [2] 6754      	MVF	(_sADC + 17),1,0
976 0664 [08] [2] 5F57      	ARRC	(_sADC + 20),1,0
977 0665 [08] [2] 5356      	RRFC	(_sADC + 19),1,0
978 0666 [08] [2] 5355      	RRFC	(_sADC + 18),1,0
979 0667 [08] [2] 5354      	RRFC	(_sADC + 17),1,0
980                     ;	;.line	153; ".\Source\App_ADC.c"	sADC.ADCCounts = 0;
981 0668 [08] [2] 0D45      	CLRF	(_sADC + 2),0
982 0669 [08] [2] 7812      	JMP	_00124_DS_
983 066A [00] [Z] C83A      _00123_DS_:
984                     ;	;.line	200; ".\Source\App_ADC.c"	sADC.ADCSum = sADC.ADCSum - sADC.MinData - sADC.MaxData;
985                     	MVF	(_sADC + 17),0,0
986                     	MVF	r0x1096,1,0
987                     	MVF	(_sADC + 18),0,0
988                     	MVF	r0x1097,1,0
989                     	MVF	(_sADC + 19),0,0
990                     	MVF	r0x1098,1,0
991                     	MVF	(_sADC + 20),0,0
992                     	MVF	r0x1099,1,0
993                     	MVF	(_sADC + 5),0,0
994                     	MVF	r0x109C,1,0
995                     	MVF	(_sADC + 6),0,0
996                     	MVF	r0x109D,1,0
997                     	MVL	0x00
998 066B [08] [2] AE82      	BTSZ	r0x109D,7
999 066C [08] [2] 06FF C828 	MVL	0xff
1000                     	MVF	r0x109F,1,0
1001                     	MVF	r0x109E,1,0
1002                     	MVF	r0x109C,0,0
1003                     	SUBF	r0x1096,1,0
1004                     	MVF	r0x109D,0,0
1005                     	SUBC	r0x1097,1,0
1006                     	MVF	r0x109E,0,0
1007                     	SUBC	r0x1098,1,0
1008                     	MVF	r0x109F,0,0
1009                     	SUBC	r0x1099,1,0
1010                     	MVF	(_sADC + 7),0,0
1011                     	MVF	r0x109C,1,0
1012                     	MVF	(_sADC + 8),0,0
1013                     	MVF	r0x109D,1,0
1014                     	MVL	0x00
1015 066E [08] [2] AE82      	BTSZ	r0x109D,7
1016 066F [08] [2] 06FF C810 	MVL	0xff
1017                     	MVF	r0x109F,1,0
1018                     	MVF	r0x109E,1,0
1019                     	MVF	r0x109C,0,0
1020                     	SUBF	r0x1096,1,0
1021                     	MVF	r0x109D,0,0
1022                     	SUBC	r0x1097,1,0
1023                     	MVF	r0x109E,0,0
1024                     	SUBC	r0x1098,1,0
1025                     	MVF	r0x109F,0,0
1026                     	SUBC	r0x1099,1,0
1027                     	MVF	r0x1096,0,0
1028                     	MVF	(_sADC + 17),1,0
1029                     	MVF	r0x1097,0,0
1030                     	MVF	(_sADC + 18),1,0
1031                     	MVF	r0x1098,0,0
1032                     	MVF	(_sADC + 19),1,0
1033                     	MVF	r0x1099,0,0
1034                     	MVF	(_sADC + 20),1,0
1035                     ;	;.line	201; ".\Source\App_ADC.c"	sADC.ADCSum >>= 2;
1036                     	ARRC	r0x1099,0,0
1037                     	MVF	(_sADC + 20),1,0
1038 0671 [08] [2] 5085      	RRFC	r0x1098,0,0
1039 0672 [08] [2] 6756      	MVF	(_sADC + 19),1,0
1040 0673 [08] [2] 5086      	RRFC	r0x1097,0,0
1041 0674 [08] [2] 6755      	MVF	(_sADC + 18),1,0
1042 0675 [08] [2] 5087      	RRFC	r0x1096,0,0
1043 0676 [08] [2] 6754      	MVF	(_sADC + 17),1,0
1044 0677 [08] [2] 5F57      	ARRC	(_sADC + 20),1,0
1045 0678 [08] [2] 5356      	RRFC	(_sADC + 19),1,0
1046 0679 [08] [2] 5355      	RRFC	(_sADC + 18),1,0
1047 067A [08] [2] 5354      	RRFC	(_sADC + 17),1,0
1048                     ;	;.line	203; ".\Source\App_ADC.c"	sADC.ADCCounts = 0;
1049 067B [08] [2] 0D45      	CLRF	(_sADC + 2),0
1050                     _00124_DS_:
1051                     ;	;.line	206; ".\Source\App_ADC.c"	return TRUE;
1052 067C [08] [2] 0601      	MVL	0x01
1053 067D [08] [2] 7801      	JMP	_00128_DS_
1054                     _00126_DS_:
1055                     ;	;.line	210; ".\Source\App_ADC.c"	return FALSE;
1056 067E [08] [2] 0600      	MVL	0x00
1057 067F [08] [2] C4B8      _00128_DS_:
1058                     ;	;.line	212; ".\Source\App_ADC.c"	}
1059 0680 [00] [2] 000A      	RET	
1060                     ; exit point of _ADC_Average
1061                     	.ENDFUNC	_ADC_Average
1062                     ;--------------------------------------------------------
1063                     
1064                     .globl _ADCGetData
1065                     
1066                     ;--------------------------------------------------------
1067                     	.FUNC _ADCGetData:$r:2:0:$L:_ADCGetData_ADCData1_10000_417
1068                     ;--------------------------------------------------------
1069                     ;	;.line	29; ".\Source\App_ADC.c"	((int8 *)(&ADCData1))[0] = AD1L;
1070 06B2 [00] [Y] C484      _ADCGetData:	;Function start
1071 06B3 [04] [Y] 643C      	MVF	_AD1L,0,0
1072 06B4 [04] [Y] 6683      	MVF	(_ADCGetData_ADCData1_10000_417 + 0),1,0
1073                     ;	;.line	30; ".\Source\App_ADC.c"	((int8 *)(&ADCData1))[1] = AD1M;
1074 06B5 [04] [Y] 643B      	MVF	_AD1M,0,0
1075 06B6 [04] [Y] 6682      	MVF	(_ADCGetData_ADCData1_10000_417 + 1),1,0
1076                     ;	;.line	31; ".\Source\App_ADC.c"	((int8 *)(&ADCData1))[2] = AD1H;
1077 06B7 [04] [Y] 643A      	MVF	_AD1H,0,0
1078 06B8 [04] [Y] 6681      	MVF	(_ADCGetData_ADCData1_10000_417 + 2),1,0
1079                     ;	;.line	34; ".\Source\App_ADC.c"	ADCData2  = (int16)(ADCData1 >> 8);
1080 06B9 [04] [Y] 6482      	MVF	(_ADCGetData_ADCData1_10000_417 + 1),0,0
1081                     ;	;.line	36; ".\Source\App_ADC.c"	return ADCData2;
1082 06BA [04] [Y] 6620      	MVF	STK00,1,0
1083 06BB [04] [Y] 6481      	MVF	(_ADCGetData_ADCData1_10000_417 + 2),0,0
1084                     ;	;.line	37; ".\Source\App_ADC.c"	}
1085 06BC [04] [Y] C4BC 000A 	RET	
1086                     ; exit point of _ADCGetData
1087                     	.ENDFUNC	_ADCGetData
1088                     ;--------------------------------------------------------
1089                     
1090                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
1091                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
1092                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
1093                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
1094                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
1095                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
1096                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
1097                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
1098                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
1099                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
1100                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
1101                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
1102                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
1103                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
1104                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
1105                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
1106                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
1107                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
1108                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
1109                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
1110                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
1111                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
1112                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
1113                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
1114                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
1115                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
1116                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
1117                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
1118                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
1119                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
1120                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
1121                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
1122                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
1123                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
1124                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
1125                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
1126                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
1127                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
1128                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
1129                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
1130                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
1131                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
1132                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
1133                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
1134                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
1135                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
1136                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
1137                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
1138                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
1139                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
1140                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
1141                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
1142                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
1143                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
1144                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
1145                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
1146                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
1147                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
1148                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
1149                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
1150                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
1151                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
1152                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
1153                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
1154                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
1155                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
1156                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
1157                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
1158                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
1159                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
1160                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
1161                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
1162                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
1163                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
1164                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
1165                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
1166                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
1167                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
1168                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
1169                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
1170                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
1171                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
1172                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
1173                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
1174                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
1175                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
1176                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
1177                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
1178                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
1179                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
1180                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
1181                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
1182                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
1183                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
1184                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
1185                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
1186                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
1187                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
1188                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
1189                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
1190                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
1191                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
1192                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
1193                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
1194                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
1195                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
1196                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
1197                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
1198                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
1199                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
1200                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
1201                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
1202                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
1203                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
1204                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
1205                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
1206                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
1207                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
1208                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
1209                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
1210                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
1211                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
1212                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
1213                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
1214                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
1215                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
1216                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
1217                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
1218                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
1219                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
1220                     	;--cdb--S:G$ADCGetData$0$0({2}DF,SI:S),C,0,0
1221                     	;--cdb--S:G$ADC_Average$0$0({2}DF,SC:U),C,0,0
1222                     	;--cdb--S:G$NTC_ADCData$0$0({2}DF,SC:U),C,0,0
1223                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
1224                     	;--cdb--S:G$_mullong$0$0({2}DF,SL:SL),C,0,0
1225                     	;--cdb--S:G$_divulong$0$0({2}DF,SL:UL),C,0,0
1226                     	;--cdb--S:G$_mulint$0$0({2}DF,SI:S),C,0,0
1227                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
1228                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
1229                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
1230                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
1231                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
1232                     	;--cdb--S:LApp_ADC.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
1233                     	;--cdb--S:LApp_ADC.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
1234                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_ADC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
1235                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
1236                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_ADC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1237                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_ADC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
1238                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_ADC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1239                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
1240                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_ADC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1241                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
1242                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
1243                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
1244                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
1245                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
1246                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
1247                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_ADC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
1248                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_ADC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1249                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
1250                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_ADC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
1251                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
1252                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
1253                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
1254                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
1255                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_ADC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
1256                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
1257                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
1258                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
1259                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
1260                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_ADC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
1261                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_ADC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
1262                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_ADC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1263                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_ADC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1264                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_ADC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
1265                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
1266                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_ADC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1267                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
1268                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
1269                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_ADC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
1270                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
1271                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_ADC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
1272                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
1273                     	;--cdb--S:G$R_Table$0$0({1002}DA501d,SI:U),D,0,0
1274                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
1275                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
1276                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
1277                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
1278                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
1279                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
1280                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
1281                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
1282                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
1283                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
1284                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
1285                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
1286                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
1287                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
1288                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
1289                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
1290                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
1291                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
1292                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
1293                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
1294                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
1295                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
1296                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
1297                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
1298                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
1299                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
1300                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
1301                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
1302                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
1303                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
1304                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
1305                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
1306                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
1307                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
1308                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
1309                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
1310                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
1311                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
1312                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
1313                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
1314                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
1315                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
1316                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
1317                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
1318                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
1319                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
1320                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
1321                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
1322                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
1323                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
1324                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
1325                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
1326                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
1327                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
1328                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
1329                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
1330                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
1331                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
1332                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
1333                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
1334                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
1335                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
1336                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
1337                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
1338                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
1339                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
1340                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
1341                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
1342                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
1343                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
1344                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
1345                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
1346                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
1347                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
1348                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
1349                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
1350                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
1351                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
1352                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
1353                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
1354                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
1355                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
1356                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
1357                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
1358                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
1359                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
1360                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
1361                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
1362                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
1363                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
1364                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
1365                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
1366                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
1367                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
1368                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
1369                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
1370                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
1371                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
1372                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
1373                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
1374                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
1375                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
1376                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
1377                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
1378                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
1379                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
1380                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
1381                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
1382                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
1383                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
1384                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
1385                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
1386                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
1387                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
1388                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
1389                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
1390                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
1391                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
1392                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
1393                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
1394                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
1395                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
1396                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
1397                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
1398                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
1399                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
1400                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
1401                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
1402                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
1403                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
1404                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
1405                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
1406                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
1407                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
1408                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
1409                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
1410                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
1411                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
1412                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
1413                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
1414                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
1415                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
1416                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
1417                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
1418                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
1419                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
1420                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
1421                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
1422                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
1423                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
1424                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
1425                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
1426                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
1427                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
1428                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
1429                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
1430                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
1431                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
1432                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
1433                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
1434                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
1435                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
1436                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
1437                     	;--cdb--S:LApp_ADC.ADCGetData._ADCGetData_ADCData1_10000_417$ADCData1$2710$417({4}SL:SL),E,0,0
1438                     	;--cdb--S:LApp_ADC.ADCGetData._ADCGetData_ADCData2_10000_417$ADCData2$2710$417({2}SI:S),R,0,0,[r0x1090,r0x1091]
1439                     	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_n_10000_443$n$2710$443({2}SI:U),R,0,0,[r0x10A5,r0x10A6]
1440                     	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_lower_10000_443$lower$2710$443({2}SI:U),R,0,0,[r0x10A7,r0x10A8]
1441                     	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_upper_10000_443$upper$2710$443({2}SI:U),R,0,0,[r0x10A9,r0x10AA]
1442                     	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_i_10000_443$i$2710$443({2}SI:U),R,0,0,[r0x10AD,r0x10AE]
1443                     	;--cdb--S:LApp_ADC.Get_250msTemp._Get_250msTemp_tmp_10000_443$tmp$2710$443({4}SL:UL),R,0,0,[r0x10AF,r0x10B0,r0x10B1,r0x10B2]
1444                     	;--cdb--S:LApp_ADC.Centigrade_Convert_Fahrenheit._Centigrade_Convert_Fahrenheit_temp_10000_461$temp$2710$461({2}SI:U),R,0,0,[_Centigrade_Convert_Fahrenheit_STK00,r0x10D1]
1445                     	;--cdb--S:LApp_ADC.Centigrade_Convert_Fahrenheit._Centigrade_Convert_Fahrenheit_tmp_10000_462$tmp$2710$462({4}SL:UL),R,0,0,[r0x10D2,r0x10D3,r0x10D4,r0x10D5]
1446                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
1447                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
1448                     	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
1449                     ;--------------------------------------------------------
1450                     ; external declarations
1451                     ;--------------------------------------------------------
1452                     	.globl	__mullong
1453                     	.globl	__divulong
1454                     	.globl	__mulint
1455                     	.globl	_FSR0
1456                     	.globl	_FSR1
1457                     	.globl	_FSR2
1458                     	.globl	_ADCR
1459                     	.globl	_sIIC
1460                     	.globl	_BIE_Available_Addr
1461                     	.globl	_sTIMx
1462                     	.globl	_sUARTx
1463                     	.globl	_sAutoBps
1464                     	.globl	_eAutoBps_Status
1465                     	.globl	_sTest
1466                     	.globl	_eTempUnit
1467                     	.globl	_eBondingTempUnit
1468                     	.globl	_eVersionCode
1469                     	.globl	_eMeasureMode
1470                     	.globl	_eBinding_Status
1471                     	.globl	_Enter_PrepareSleep_Flag
1472                     	.globl	_sButton
1473                     	.globl	_sTimeStamp
1474                     	.globl	_eButton_Status
1475                     	.globl	_sLVD
1476                     	.globl	_UnitExchangeCompleted
1477                     	.globl	_ERR
1478                     	.globl	_eErr
1479                     	.globl	_eDisplay_Interfaces
1480                     	.globl	_eSystem_Mode
1481                     	.globl	_eBuzzer_Status
1482                     	.globl	_Flag_No_Buzzer
1483                     	.globl	_sMemory
1484                     	.globl	_sMemoryFlag
1485                     	.globl	_sActual
1486                     	.globl	_sForecast
1487                     	.globl	_sTempCal
1488                     	.globl	_eMeas_Status
1489                     	.globl	_sActual_Forecast
1490                     	.globl	_eTo_Actual_Ways
1491                     	.globl	_eBle_Sta
1492                     	.globl	_sBleStatus
1493                     	.globl	_eBacklight_Status
1494                     	.globl	_sBacklight
1495                     	.globl	_NUM_CODE
1496                     	.globl	_CloseTable
1497                     	.globl	__g2ptrget2
1498                     
1499                     	.globl STK07
1500                     	.globl STK07_SAVE
1501                     	.globl STK06
1502                     	.globl STK06_SAVE
1503                     	.globl STK05
1504                     	.globl STK05_SAVE
1505                     	.globl STK04
1506                     	.globl STK04_SAVE
1507                     	.globl STK03
1508                     	.globl STK03_SAVE
1509                     	.globl STK02
1510                     	.globl STK02_SAVE
1511                     	.globl STK01
1512                     	.globl STK01_SAVE
1513                     	.globl STK00
1514                     	.globl STK00_SAVE
1515                     ;--------------------------------------------------------
1516                     ; global -1 declarations
1517                     ;--------------------------------------------------------
1518                     	.globl	_ADCGetData
1519                     	.globl	_ADC_Average
1520                     	.globl	_NTC_ADCData
1521                     	.globl	_Centigrade_Convert_Fahrenheit
1522                     	.globl	_sADC
1523                     	.globl	_eADCChannel
1524                     	.globl	_R_Table
1525                     
1526                     	.globl	_memcpy
1527                     ;--------------------------------------------------------
1528                     ; global -2 definitions
1529                     ;--------------------------------------------------------
1530                     	.area DSEG(DATA)
1531 0243 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sADC:	.ds	45
1532                     
1533                     	.area DSEG(DATA)
1534 0270 --             _eADCChannel:	.ds	1
1535                     
1536                     	.area DSEG(DATA)
1537                     __SWTGTID	.equ	0xA6A6B2CF
1538                     
1539                     	.area DSEG(DATA)
1540                     _INDF0	.equ	0x0
1541                     
1542                     	.area DSEG(DATA)
1543                     _POINC0	.equ	0x1
1544                     
1545                     	.area DSEG(DATA)
1546                     _PODEC0	.equ	0x2
1547                     
1548                     	.area DSEG(DATA)
1549                     _PRINC0	.equ	0x3
1550                     
1551                     	.area DSEG(DATA)
1552                     _PLUSW0	.equ	0x4
1553                     
1554                     	.area DSEG(DATA)
1555                     _INDF1	.equ	0x5
1556                     
1557                     	.area DSEG(DATA)
1558                     _POINC1	.equ	0x6
1559                     
1560                     	.area DSEG(DATA)
1561                     _PODEC1	.equ	0x7
1562                     
1563                     	.area DSEG(DATA)
1564                     _PRINC1	.equ	0x8
1565                     
1566                     	.area DSEG(DATA)
1567                     _PLUSW1	.equ	0x9
1568                     
1569                     	.area DSEG(DATA)
1570                     _INDF2	.equ	0xA
1571                     
1572                     	.area DSEG(DATA)
1573                     _POINC2	.equ	0xB
1574                     
1575                     	.area DSEG(DATA)
1576                     _PODEC2	.equ	0xC
1577                     
1578                     	.area DSEG(DATA)
1579                     _PRINC2	.equ	0xD
1580                     
1581                     	.area DSEG(DATA)
1582                     _PLUSW2	.equ	0xE
1583                     
1584                     	.area DSEG(DATA)
1585                     _FSR0H	.equ	0xF
1586                     
1587                     	.area DSEG(DATA)
1588                     _FSR0L	.equ	0x10
1589                     
1590                     	.area DSEG(DATA)
1591                     _FSR1H	.equ	0x11
1592                     
1593                     	.area DSEG(DATA)
1594                     _FSR1L	.equ	0x12
1595                     
1596                     	.area DSEG(DATA)
1597                     _FSR2H	.equ	0x13
1598                     
1599                     	.area DSEG(DATA)
1600                     _FSR2L	.equ	0x14
1601                     
1602                     	.area DSEG(DATA)
1603                     _TOSH	.equ	0x16
1604                     
1605                     	.area DSEG(DATA)
1606                     _TOSL	.equ	0x17
1607                     
1608                     	.area DSEG(DATA)
1609                     _SKCN	.equ	0x18
1610                     
1611                     	.area DSEG(DATA)
1612                     _PCLATH	.equ	0x1A
1613                     
1614                     	.area DSEG(DATA)
1615                     _PCLATL	.equ	0x1B
1616                     
1617                     	.area DSEG(DATA)
1618                     _TBLPTRH	.equ	0x1D
1619                     
1620                     	.area DSEG(DATA)
1621                     _TBLPTRL	.equ	0x1E
1622                     
1623                     	.area DSEG(DATA)
1624                     _TBLDH	.equ	0x1F
1625                     
1626                     	.area DSEG(DATA)
1627                     _TBLDL	.equ	0x20
1628                     
1629                     	.area DSEG(DATA)
1630                     _PRODH	.equ	0x21
1631                     
1632                     	.area DSEG(DATA)
1633                     _PRODL	.equ	0x22
1634                     
1635                     	.area DSEG(DATA)
1636                     _INTE0	.equ	0x23
1637                     
1638                     	.area DSEG(DATA)
1639                     _INTE1	.equ	0x24
1640                     
1641                     	.area DSEG(DATA)
1642                     _INTE2	.equ	0x25
1643                     
1644                     	.area DSEG(DATA)
1645                     _INTF0	.equ	0x26
1646                     
1647                     	.area DSEG(DATA)
1648                     _INTF1	.equ	0x27
1649                     
1650                     	.area DSEG(DATA)
1651                     _INTF2	.equ	0x28
1652                     
1653                     	.area DSEG(DATA)
1654                     _WREG	.equ	0x29
1655                     
1656                     	.area DSEG(DATA)
1657                     _BSRCN	.equ	0x2A
1658                     
1659                     	.area DSEG(DATA)
1660                     _STATUS	.equ	0x2B
1661                     
1662                     	.area DSEG(DATA)
1663                     _MSTAT	.equ	0x2B
1664                     
1665                     	.area DSEG(DATA)
1666                     _PSTAT	.equ	0x2C
1667                     
1668                     	.area DSEG(DATA)
1669                     _BIECN	.equ	0x2E
1670                     
1671                     	.area DSEG(DATA)
1672                     _BIEARH	.equ	0x2F
1673                     
1674                     	.area DSEG(DATA)
1675                     _BIEARL	.equ	0x30
1676                     
1677                     	.area DSEG(DATA)
1678                     _BIEDRH	.equ	0x31
1679                     
1680                     	.area DSEG(DATA)
1681                     _BIEDRL	.equ	0x32
1682                     
1683                     	.area DSEG(DATA)
1684                     _PWRCN	.equ	0x33
1685                     
1686                     	.area DSEG(DATA)
1687                     _OSCCN0	.equ	0x34
1688                     
1689                     	.area DSEG(DATA)
1690                     _OSCCN1	.equ	0x35
1691                     
1692                     	.area DSEG(DATA)
1693                     _OSCCN2	.equ	0x36
1694                     
1695                     	.area DSEG(DATA)
1696                     _CSFCN0	.equ	0x37
1697                     
1698                     	.area DSEG(DATA)
1699                     _CSFCN1	.equ	0x38
1700                     
1701                     	.area DSEG(DATA)
1702                     _WDTCN	.equ	0x39
1703                     
1704                     	.area DSEG(DATA)
1705                     _AD1H	.equ	0x3A
1706                     
1707                     	.area DSEG(DATA)
1708                     _AD1M	.equ	0x3B
1709                     
1710                     	.area DSEG(DATA)
1711                     _AD1L	.equ	0x3C
1712                     
1713                     	.area DSEG(DATA)
1714                     _AD1CN0	.equ	0x3D
1715                     
1716                     	.area DSEG(DATA)
1717                     _AD1CN1	.equ	0x3E
1718                     
1719                     	.area DSEG(DATA)
1720                     _AD1CN2	.equ	0x3F
1721                     
1722                     	.area DSEG(DATA)
1723                     _AD1CN3	.equ	0x40
1724                     
1725                     	.area DSEG(DATA)
1726                     _AD1CN4	.equ	0x41
1727                     
1728                     	.area DSEG(DATA)
1729                     _AD1CN5	.equ	0x42
1730                     
1731                     	.area DSEG(DATA)
1732                     _LVDCN	.equ	0x43
1733                     
1734                     	.area DSEG(DATA)
1735                     _TMA1CN	.equ	0x44
1736                     
1737                     	.area DSEG(DATA)
1738                     _TMA1R	.equ	0x45
1739                     
1740                     	.area DSEG(DATA)
1741                     _TMA1C	.equ	0x46
1742                     
1743                     	.area DSEG(DATA)
1744                     _TB1FLAG	.equ	0x47
1745                     
1746                     	.area DSEG(DATA)
1747                     _TB1CN0	.equ	0x48
1748                     
1749                     	.area DSEG(DATA)
1750                     _TB1CN1	.equ	0x49
1751                     
1752                     	.area DSEG(DATA)
1753                     _TB1RH	.equ	0x4A
1754                     
1755                     	.area DSEG(DATA)
1756                     _TB1RL	.equ	0x4B
1757                     
1758                     	.area DSEG(DATA)
1759                     _TB1C0H	.equ	0x4C
1760                     
1761                     	.area DSEG(DATA)
1762                     _TB1C0L	.equ	0x4D
1763                     
1764                     	.area DSEG(DATA)
1765                     _TB1C1H	.equ	0x4E
1766                     
1767                     	.area DSEG(DATA)
1768                     _TB1C1L	.equ	0x4F
1769                     
1770                     	.area DSEG(DATA)
1771                     _TB1C2H	.equ	0x50
1772                     
1773                     	.area DSEG(DATA)
1774                     _TB1C2L	.equ	0x51
1775                     
1776                     	.area DSEG(DATA)
1777                     _TC1CN0	.equ	0x52
1778                     
1779                     	.area DSEG(DATA)
1780                     _PT1	.equ	0x53
1781                     
1782                     	.area DSEG(DATA)
1783                     _TRISC1	.equ	0x54
1784                     
1785                     	.area DSEG(DATA)
1786                     _PT1DA	.equ	0x55
1787                     
1788                     	.area DSEG(DATA)
1789                     _PT1PU	.equ	0x56
1790                     
1791                     	.area DSEG(DATA)
1792                     _PT1M1	.equ	0x57
1793                     
1794                     	.area DSEG(DATA)
1795                     _PT1INT	.equ	0x58
1796                     
1797                     	.area DSEG(DATA)
1798                     _PT1INTE	.equ	0x59
1799                     
1800                     	.area DSEG(DATA)
1801                     _PT1INTF	.equ	0x5A
1802                     
1803                     	.area DSEG(DATA)
1804                     _PT2	.equ	0x5B
1805                     
1806                     	.area DSEG(DATA)
1807                     _TRISC2	.equ	0x5C
1808                     
1809                     	.area DSEG(DATA)
1810                     _PT2DA	.equ	0x5D
1811                     
1812                     	.area DSEG(DATA)
1813                     _PT2PU	.equ	0x5E
1814                     
1815                     	.area DSEG(DATA)
1816                     _PT2INT	.equ	0x5F
1817                     
1818                     	.area DSEG(DATA)
1819                     _PT2INTE	.equ	0x60
1820                     
1821                     	.area DSEG(DATA)
1822                     _PT2INTF	.equ	0x61
1823                     
1824                     	.area DSEG(DATA)
1825                     _PT6	.equ	0x62
1826                     
1827                     	.area DSEG(DATA)
1828                     _TRISC6	.equ	0x63
1829                     
1830                     	.area DSEG(DATA)
1831                     _PT6DA	.equ	0x64
1832                     
1833                     	.area DSEG(DATA)
1834                     _PT6PU	.equ	0x65
1835                     
1836                     	.area DSEG(DATA)
1837                     _PT7	.equ	0x66
1838                     
1839                     	.area DSEG(DATA)
1840                     _TRISC7	.equ	0x67
1841                     
1842                     	.area DSEG(DATA)
1843                     _PT7DA	.equ	0x68
1844                     
1845                     	.area DSEG(DATA)
1846                     _PT7PU	.equ	0x69
1847                     
1848                     	.area DSEG(DATA)
1849                     _PT8	.equ	0x6A
1850                     
1851                     	.area DSEG(DATA)
1852                     _TRISC8	.equ	0x6B
1853                     
1854                     	.area DSEG(DATA)
1855                     _PT8DA	.equ	0x6C
1856                     
1857                     	.area DSEG(DATA)
1858                     _PT8PU	.equ	0x6D
1859                     
1860                     	.area DSEG(DATA)
1861                     _SSPCN0	.equ	0x6E
1862                     
1863                     	.area DSEG(DATA)
1864                     _SSPSTA0	.equ	0x6F
1865                     
1866                     	.area DSEG(DATA)
1867                     _SSPBUF0	.equ	0x70
1868                     
1869                     	.area DSEG(DATA)
1870                     _CFG0	.equ	0x71
1871                     
1872                     	.area DSEG(DATA)
1873                     _ACT0	.equ	0x72
1874                     
1875                     	.area DSEG(DATA)
1876                     _STA0	.equ	0x73
1877                     
1878                     	.area DSEG(DATA)
1879                     _CRG0	.equ	0x74
1880                     
1881                     	.area DSEG(DATA)
1882                     _TOC0	.equ	0x75
1883                     
1884                     	.area DSEG(DATA)
1885                     _RDB0	.equ	0x76
1886                     
1887                     	.area DSEG(DATA)
1888                     _TDB0	.equ	0x77
1889                     
1890                     	.area DSEG(DATA)
1891                     _SID0	.equ	0x78
1892                     
1893                     	.area DSEG(DATA)
1894                     _UR0CN	.equ	0x79
1895                     
1896                     	.area DSEG(DATA)
1897                     _UR0STA	.equ	0x7A
1898                     
1899                     	.area DSEG(DATA)
1900                     _BA0CN	.equ	0x7B
1901                     
1902                     	.area DSEG(DATA)
1903                     _BG0RH	.equ	0x7C
1904                     
1905                     	.area DSEG(DATA)
1906                     _BG0RL	.equ	0x7D
1907                     
1908                     	.area DSEG(DATA)
1909                     _TX0R	.equ	0x7E
1910                     
1911                     	.area DSEG(DATA)
1912                     _RC0REG	.equ	0x7F
1913                     
1914                     	.area DSEG(DATA)
1915                     _LCDCN1	.equ	0x180
1916                     
1917                     	.area DSEG(DATA)
1918                     _LCDCN2	.equ	0x181
1919                     
1920                     	.area DSEG(DATA)
1921                     _LCDCN3	.equ	0x182
1922                     
1923                     	.area DSEG(DATA)
1924                     _LCDCN4	.equ	0x183
1925                     
1926                     	.area DSEG(DATA)
1927                     _LCDCN5	.equ	0x184
1928                     
1929                     	.area DSEG(DATA)
1930                     _LCDCN6	.equ	0x185
1931                     
1932                     	.area DSEG(DATA)
1933                     _LCDCN7	.equ	0x186
1934                     
1935                     	.area DSEG(DATA)
1936                     _LCDCN8	.equ	0x187
1937                     
1938                     	.area DSEG(DATA)
1939                     _LCD0	.equ	0x188
1940                     
1941                     	.area DSEG(DATA)
1942                     _LCD1	.equ	0x189
1943                     
1944                     	.area DSEG(DATA)
1945                     _LCD2	.equ	0x18A
1946                     
1947                     	.area DSEG(DATA)
1948                     _LCD3	.equ	0x18B
1949                     
1950                     	.area DSEG(DATA)
1951                     _LCD4	.equ	0x18C
1952                     
1953                     	.area DSEG(DATA)
1954                     _LCD5	.equ	0x18D
1955                     
1956                     	.area DSEG(DATA)
1957                     _LCD6	.equ	0x18E
1958                     
1959                     	.area DSEG(DATA)
1960                     _LCD7	.equ	0x18F
1961                     
1962                     	.area DSEG(DATA)
1963                     _LCD8	.equ	0x190
1964                     
1965                     	.area DSEG(DATA)
1966                     _LCD9	.equ	0x191
1967                     
1968                     	.area DSEG(DATA)
1969                     _UR2CN	.equ	0x192
1970                     
1971                     	.area DSEG(DATA)
1972                     _UR2STA	.equ	0x193
1973                     
1974                     	.area DSEG(DATA)
1975                     _BA2CN	.equ	0x194
1976                     
1977                     	.area DSEG(DATA)
1978                     _BG2RH	.equ	0x195
1979                     
1980                     	.area DSEG(DATA)
1981                     _BG2RL	.equ	0x196
1982                     
1983                     	.area DSEG(DATA)
1984                     _TX2R	.equ	0x197
1985                     
1986                     	.area DSEG(DATA)
1987                     _RC2REG	.equ	0x198
1988                     
1989                     	.area DSEG(DATA)
1990                     _TMA2R	.equ	0x1E8
1991                     
1992                     	.area DSEG(DATA)
1993                     _TMA2C	.equ	0x1E9
1994                     
1995                     	.area DSEG(DATA)
1996                     _LEDCN	.equ	0x1EA
1997                     
1998                     	.area DSEG(DATA)
1999                     _IQ0	.equ	0x1EB
2000                     
2001                     	.area DSEG(DATA)
2002                     _IQ1	.equ	0x1EC
2003                     
2004                     	.area DSEG(DATA)
2005                     _DGCON1	.equ	0x1ED
2006                     
2007                     	.area DSEG(DATA)
2008                     _DGCON2	.equ	0x1EE
2009                     
2010                     	.area DSEG(DATA)
2011                     _ADCRH	.equ	0x3A
2012                     
2013                     	.area DSEG(DATA)
2014                     _ADCRM	.equ	0x3B
2015                     
2016                     	.area DSEG(DATA)
2017                     _ADCRL	.equ	0x3C
2018                     
2019                     	.area DSEG(DATA)
2020                     _TEMDATA	.equ	0x2E0
2021                     
2022                     ;--------------------------------------------------------
2023                     ; absolute symbol definitions
2024                     ;--------------------------------------------------------
2025                     ;--------------------------------------------------------
2026                     ; compiler-defined variables
2027                     ;--------------------------------------------------------
2028                     	.area IDATA (DATA,REL,CON); pre-def
2029                     	.area IDATAROM (CODE,REL,CON); pre-def
2030                     	.area UDATA (DATA,REL,CON); pre-def
2031                     	.area UDATA (DATA,REL,CON) ;UDL_App_ADC_0	udata
2032 @FSR2-CurrentOffset+001 --         r0x1096:	.ds	1
2033 @FSR2-CurrentOffset+002 --         r0x1097:	.ds	1
2034 @FSR2-CurrentOffset+003 --         r0x1098:	.ds	1
2035 @FSR2-CurrentOffset+004 --         r0x1099:	.ds	1
2036 @FSR2-CurrentOffset+005 --         r0x109C:	.ds	1
2037 @FSR2-CurrentOffset+006 --         r0x109D:	.ds	1
2038 @FSR2-CurrentOffset+008 --         r0x109E:	.ds	1
2039 @FSR2-CurrentOffset+007 --         r0x109F:	.ds	1
2040 @FSR2-CurrentOffset+001 --         r0x10A5:	.ds	1
2041 @FSR2-CurrentOffset+002 --         r0x10A6:	.ds	1
2042 @FSR2-CurrentOffset+003 --         r0x10A7:	.ds	1
2043 @FSR2-CurrentOffset+004 --         r0x10A8:	.ds	1
2044 @FSR2-CurrentOffset+005 --         r0x10A9:	.ds	1
2045 @FSR2-CurrentOffset+006 --         r0x10AA:	.ds	1
2046 @FSR2-CurrentOffset+007 --         r0x10AD:	.ds	1
2047 @FSR2-CurrentOffset+008 --         r0x10AE:	.ds	1
2048 @FSR2-CurrentOffset+009 --         r0x10AF:	.ds	1
2049 @FSR2-CurrentOffset+010 --         r0x10B0:	.ds	1
2050 @FSR2-CurrentOffset+012 --         r0x10B1:	.ds	1
2051 @FSR2-CurrentOffset+011 --         r0x10B2:	.ds	1
2052 @FSR2-CurrentOffset+013 --         r0x10B3:	.ds	1
2053 @FSR2-CurrentOffset+014 --         r0x10B4:	.ds	1
2054 @FSR2-CurrentOffset+015 --         r0x10B5:	.ds	1
2055 @FSR2-CurrentOffset+016 --         r0x10B6:	.ds	1
2056 @FSR2-CurrentOffset+017 --         r0x10B7:	.ds	1
2057 @FSR2-CurrentOffset+018 --         r0x10B8:	.ds	1
2058 @FSR2-CurrentOffset+001 --         r0x10D1:	.ds	1
2059 @FSR2-CurrentOffset+002 --         r0x10D2:	.ds	1
2060 @FSR2-CurrentOffset+003 --         r0x10D3:	.ds	1
2061 @FSR2-CurrentOffset+004 --         r0x10D4:	.ds	1
2062 @FSR2-CurrentOffset+005 --         r0x10D5:	.ds	1
2063                     	.area LOCALSTK (STK); local stack var
2064 @FSR2-CurrentOffset+001 -- -- -- -- _ADCGetData_ADCData1_10000_417:	.ds	4
2065                     	.globl __mullong_STK06
2066                     	.globl __mullong_STK05
2067                     	.globl __mullong_STK04
2068                     	.globl __mullong_STK03
2069                     	.globl __mullong_STK02
2070                     	.globl __mullong_STK01
2071                     	.globl __mullong_STK00
2072                     	.globl __divulong_STK06
2073                     	.globl __divulong_STK05
2074                     	.globl __divulong_STK04
2075                     	.globl __divulong_STK03
2076                     	.globl __divulong_STK02
2077                     	.globl __divulong_STK01
2078                     	.globl __divulong_STK00
2079                     	.globl __g2ptrget2_STK00
2080                     	.globl __mulint_STK02
2081                     	.globl __mulint_STK01
2082                     	.globl __mulint_STK00
2083 @FSR2-00 --         _Centigrade_Convert_Fahrenheit_STK00:	.ds	1
2084                     	.globl _Centigrade_Convert_Fahrenheit_STK00
2085                     ;--------------------------------------------------------
2086                     ; initialized data
2087                     ;--------------------------------------------------------
2088                     
2089                     	.area	CONST   (CODE)	 ;App_ADC-0-code, const
2090                     
2091                     _R_Table:
2092 15CF CF3F           	.byte #0xcf, #0x3f	; 16335
2093 15D0 7B3F           	.byte #0x7b, #0x3f	; 16251
2094 15D1 283F           	.byte #0x28, #0x3f	; 16168
2095 15D2 D63E           	.byte #0xd6, #0x3e	; 16086
2096 15D3 843E           	.byte #0x84, #0x3e	; 16004
2097 15D4 333E           	.byte #0x33, #0x3e	; 15923
2098 15D5 E23D           	.byte #0xe2, #0x3d	; 15842
2099 15D6 913D           	.byte #0x91, #0x3d	; 15761
2100 15D7 413D           	.byte #0x41, #0x3d	; 15681
2101 15D8 F23C           	.byte #0xf2, #0x3c	; 15602
2102 15D9 A33C           	.byte #0xa3, #0x3c	; 15523
2103 15DA 543C           	.byte #0x54, #0x3c	; 15444
2104 15DB 063C           	.byte #0x06, #0x3c	; 15366
2105 15DC B83B           	.byte #0xb8, #0x3b	; 15288
2106 15DD 6B3B           	.byte #0x6b, #0x3b	; 15211
2107 15DE 1E3B           	.byte #0x1e, #0x3b	; 15134
2108 15DF D13A           	.byte #0xd1, #0x3a	; 15057
2109 15E0 853A           	.byte #0x85, #0x3a	; 14981
2110 15E1 3A3A           	.byte #0x3a, #0x3a	; 14906
2111 15E2 EF39           	.byte #0xef, #0x39	; 14831
2112 15E3 A439           	.byte #0xa4, #0x39	; 14756
2113 15E4 5A39           	.byte #0x5a, #0x39	; 14682
2114 15E5 1039           	.byte #0x10, #0x39	; 14608
2115 15E6 C638           	.byte #0xc6, #0x38	; 14534
2116 15E7 7D38           	.byte #0x7d, #0x38	; 14461
2117 15E8 3438           	.byte #0x34, #0x38	; 14388
2118 15E9 EC37           	.byte #0xec, #0x37	; 14316
2119 15EA A437           	.byte #0xa4, #0x37	; 14244
2120 15EB 5D37           	.byte #0x5d, #0x37	; 14173
2121 15EC 1637           	.byte #0x16, #0x37	; 14102
2122 15ED CF36           	.byte #0xcf, #0x36	; 14031
2123 15EE 8936           	.byte #0x89, #0x36	; 13961
2124 15EF 4336           	.byte #0x43, #0x36	; 13891
2125 15F0 FE35           	.byte #0xfe, #0x35	; 13822
2126 15F1 B935           	.byte #0xb9, #0x35	; 13753
2127 15F2 7435           	.byte #0x74, #0x35	; 13684
2128 15F3 3035           	.byte #0x30, #0x35	; 13616
2129 15F4 EC34           	.byte #0xec, #0x34	; 13548
2130 15F5 A934           	.byte #0xa9, #0x34	; 13481
2131 15F6 6534           	.byte #0x65, #0x34	; 13413
2132 15F7 2334           	.byte #0x23, #0x34	; 13347
2133 15F8 E033           	.byte #0xe0, #0x33	; 13280
2134 15F9 9E33           	.byte #0x9e, #0x33	; 13214
2135 15FA 5D33           	.byte #0x5d, #0x33	; 13149
2136 15FB 1B33           	.byte #0x1b, #0x33	; 13083
2137 15FC DB32           	.byte #0xdb, #0x32	; 13019
2138 15FD 9A32           	.byte #0x9a, #0x32	; 12954
2139 15FE 5A32           	.byte #0x5a, #0x32	; 12890
2140 15FF 1A32           	.byte #0x1a, #0x32	; 12826
2141 1600 DB31           	.byte #0xdb, #0x31	; 12763
2142 1601 9B31           	.byte #0x9b, #0x31	; 12699
2143 1602 5D31           	.byte #0x5d, #0x31	; 12637
2144 1603 1E31           	.byte #0x1e, #0x31	; 12574
2145 1604 E030           	.byte #0xe0, #0x30	; 12512
2146 1605 A230           	.byte #0xa2, #0x30	; 12450
2147 1606 6530           	.byte #0x65, #0x30	; 12389
2148 1607 2830           	.byte #0x28, #0x30	; 12328
2149 1608 EB2F           	.byte #0xeb, #0x2f	; 12267
2150 1609 AF2F           	.byte #0xaf, #0x2f	; 12207
2151 160A 732F           	.byte #0x73, #0x2f	; 12147
2152 160B 372F           	.byte #0x37, #0x2f	; 12087
2153 160C FC2E           	.byte #0xfc, #0x2e	; 12028
2154 160D C12E           	.byte #0xc1, #0x2e	; 11969
2155 160E 862E           	.byte #0x86, #0x2e	; 11910
2156 160F 4C2E           	.byte #0x4c, #0x2e	; 11852
2157 1610 122E           	.byte #0x12, #0x2e	; 11794
2158 1611 D82D           	.byte #0xd8, #0x2d	; 11736
2159 1612 9F2D           	.byte #0x9f, #0x2d	; 11679
2160 1613 652D           	.byte #0x65, #0x2d	; 11621
2161 1614 2D2D           	.byte #0x2d, #0x2d	; 11565
2162 1615 F42C           	.byte #0xf4, #0x2c	; 11508
2163 1616 BC2C           	.byte #0xbc, #0x2c	; 11452
2164 1617 842C           	.byte #0x84, #0x2c	; 11396
2165 1618 4D2C           	.byte #0x4d, #0x2c	; 11341
2166 1619 152C           	.byte #0x15, #0x2c	; 11285
2167 161A DE2B           	.byte #0xde, #0x2b	; 11230
2168 161B A82B           	.byte #0xa8, #0x2b	; 11176
2169 161C 712B           	.byte #0x71, #0x2b	; 11121
2170 161D 3B2B           	.byte #0x3b, #0x2b	; 11067
2171 161E 062B           	.byte #0x06, #0x2b	; 11014
2172 161F D02A           	.byte #0xd0, #0x2a	; 10960
2173 1620 9B2A           	.byte #0x9b, #0x2a	; 10907
2174 1621 662A           	.byte #0x66, #0x2a	; 10854
2175 1622 322A           	.byte #0x32, #0x2a	; 10802
2176 1623 FD29           	.byte #0xfd, #0x29	; 10749
2177 1624 C929           	.byte #0xc9, #0x29	; 10697
2178 1625 9529           	.byte #0x95, #0x29	; 10645
2179 1626 6229           	.byte #0x62, #0x29	; 10594
2180 1627 2F29           	.byte #0x2f, #0x29	; 10543
2181 1628 FC28           	.byte #0xfc, #0x28	; 10492
2182 1629 C928           	.byte #0xc9, #0x28	; 10441
2183 162A 9728           	.byte #0x97, #0x28	; 10391
2184 162B 6528           	.byte #0x65, #0x28	; 10341
2185 162C 3328           	.byte #0x33, #0x28	; 10291
2186 162D 0228           	.byte #0x02, #0x28	; 10242
2187 162E D027           	.byte #0xd0, #0x27	; 10192
2188 162F 9F27           	.byte #0x9f, #0x27	; 10143
2189 1630 6F27           	.byte #0x6f, #0x27	; 10095
2190 1631 3E27           	.byte #0x3e, #0x27	; 10046
2191 1632 0E27           	.byte #0x0e, #0x27	; 9998
2192 1633 DE26           	.byte #0xde, #0x26	; 9950
2193 1634 AE26           	.byte #0xae, #0x26	; 9902
2194 1635 7F26           	.byte #0x7f, #0x26	; 9855
2195 1636 5026           	.byte #0x50, #0x26	; 9808
2196 1637 2126           	.byte #0x21, #0x26	; 9761
2197 1638 F225           	.byte #0xf2, #0x25	; 9714
2198 1639 C425           	.byte #0xc4, #0x25	; 9668
2199 163A 9625           	.byte #0x96, #0x25	; 9622
2200 163B 6825           	.byte #0x68, #0x25	; 9576
2201 163C 3A25           	.byte #0x3a, #0x25	; 9530
2202 163D 0D25           	.byte #0x0d, #0x25	; 9485
2203 163E E024           	.byte #0xe0, #0x24	; 9440
2204 163F B324           	.byte #0xb3, #0x24	; 9395
2205 1640 8624           	.byte #0x86, #0x24	; 9350
2206 1641 5924           	.byte #0x59, #0x24	; 9305
2207 1642 2D24           	.byte #0x2d, #0x24	; 9261
2208 1643 0124           	.byte #0x01, #0x24	; 9217
2209 1644 D623           	.byte #0xd6, #0x23	; 9174
2210 1645 AA23           	.byte #0xaa, #0x23	; 9130
2211 1646 7F23           	.byte #0x7f, #0x23	; 9087
2212 1647 5423           	.byte #0x54, #0x23	; 9044
2213 1648 2923           	.byte #0x29, #0x23	; 9001
2214 1649 FE22           	.byte #0xfe, #0x22	; 8958
2215 164A D422           	.byte #0xd4, #0x22	; 8916
2216 164B AA22           	.byte #0xaa, #0x22	; 8874
2217 164C 8022           	.byte #0x80, #0x22	; 8832
2218 164D 5622           	.byte #0x56, #0x22	; 8790
2219 164E 2D22           	.byte #0x2d, #0x22	; 8749
2220 164F 0422           	.byte #0x04, #0x22	; 8708
2221 1650 DB21           	.byte #0xdb, #0x21	; 8667
2222 1651 B221           	.byte #0xb2, #0x21	; 8626
2223 1652 8921           	.byte #0x89, #0x21	; 8585
2224 1653 6121           	.byte #0x61, #0x21	; 8545
2225 1654 3921           	.byte #0x39, #0x21	; 8505
2226 1655 1121           	.byte #0x11, #0x21	; 8465
2227 1656 E920           	.byte #0xe9, #0x20	; 8425
2228 1657 C120           	.byte #0xc1, #0x20	; 8385
2229 1658 9A20           	.byte #0x9a, #0x20	; 8346
2230 1659 7320           	.byte #0x73, #0x20	; 8307
2231 165A 4C20           	.byte #0x4c, #0x20	; 8268
2232 165B 2520           	.byte #0x25, #0x20	; 8229
2233 165C FF1F           	.byte #0xff, #0x1f	; 8191
2234 165D D91F           	.byte #0xd9, #0x1f	; 8153
2235 165E B31F           	.byte #0xb3, #0x1f	; 8115
2236 165F 8D1F           	.byte #0x8d, #0x1f	; 8077
2237 1660 671F           	.byte #0x67, #0x1f	; 8039
2238 1661 421F           	.byte #0x42, #0x1f	; 8002
2239 1662 1C1F           	.byte #0x1c, #0x1f	; 7964
2240 1663 F71E           	.byte #0xf7, #0x1e	; 7927
2241 1664 D21E           	.byte #0xd2, #0x1e	; 7890
2242 1665 AE1E           	.byte #0xae, #0x1e	; 7854
2243 1666 891E           	.byte #0x89, #0x1e	; 7817
2244 1667 651E           	.byte #0x65, #0x1e	; 7781
2245 1668 411E           	.byte #0x41, #0x1e	; 7745
2246 1669 1D1E           	.byte #0x1d, #0x1e	; 7709
2247 166A F91D           	.byte #0xf9, #0x1d	; 7673
2248 166B D51D           	.byte #0xd5, #0x1d	; 7637
2249 166C B21D           	.byte #0xb2, #0x1d	; 7602
2250 166D 8F1D           	.byte #0x8f, #0x1d	; 7567
2251 166E 6C1D           	.byte #0x6c, #0x1d	; 7532
2252 166F 491D           	.byte #0x49, #0x1d	; 7497
2253 1670 261D           	.byte #0x26, #0x1d	; 7462
2254 1671 041D           	.byte #0x04, #0x1d	; 7428
2255 1672 E21C           	.byte #0xe2, #0x1c	; 7394
2256 1673 BF1C           	.byte #0xbf, #0x1c	; 7359
2257 1674 9E1C           	.byte #0x9e, #0x1c	; 7326
2258 1675 7C1C           	.byte #0x7c, #0x1c	; 7292
2259 1676 5A1C           	.byte #0x5a, #0x1c	; 7258
2260 1677 391C           	.byte #0x39, #0x1c	; 7225
2261 1678 181C           	.byte #0x18, #0x1c	; 7192
2262 1679 F71B           	.byte #0xf7, #0x1b	; 7159
2263 167A D61B           	.byte #0xd6, #0x1b	; 7126
2264 167B B51B           	.byte #0xb5, #0x1b	; 7093
2265 167C 941B           	.byte #0x94, #0x1b	; 7060
2266 167D 741B           	.byte #0x74, #0x1b	; 7028
2267 167E 541B           	.byte #0x54, #0x1b	; 6996
2268 167F 341B           	.byte #0x34, #0x1b	; 6964
2269 1680 141B           	.byte #0x14, #0x1b	; 6932
2270 1681 F41A           	.byte #0xf4, #0x1a	; 6900
2271 1682 D51A           	.byte #0xd5, #0x1a	; 6869
2272 1683 B51A           	.byte #0xb5, #0x1a	; 6837
2273 1684 961A           	.byte #0x96, #0x1a	; 6806
2274 1685 771A           	.byte #0x77, #0x1a	; 6775
2275 1686 581A           	.byte #0x58, #0x1a	; 6744
2276 1687 391A           	.byte #0x39, #0x1a	; 6713
2277 1688 1B1A           	.byte #0x1b, #0x1a	; 6683
2278 1689 FC19           	.byte #0xfc, #0x19	; 6652
2279 168A DE19           	.byte #0xde, #0x19	; 6622
2280 168B C019           	.byte #0xc0, #0x19	; 6592
2281 168C A219           	.byte #0xa2, #0x19	; 6562
2282 168D 8419           	.byte #0x84, #0x19	; 6532
2283 168E 6719           	.byte #0x67, #0x19	; 6503
2284 168F 4919           	.byte #0x49, #0x19	; 6473
2285 1690 2C19           	.byte #0x2c, #0x19	; 6444
2286 1691 0E19           	.byte #0x0e, #0x19	; 6414
2287 1692 F118           	.byte #0xf1, #0x18	; 6385
2288 1693 D518           	.byte #0xd5, #0x18	; 6357
2289 1694 B818           	.byte #0xb8, #0x18	; 6328
2290 1695 9B18           	.byte #0x9b, #0x18	; 6299
2291 1696 7F18           	.byte #0x7f, #0x18	; 6271
2292 1697 6218           	.byte #0x62, #0x18	; 6242
2293 1698 4618           	.byte #0x46, #0x18	; 6214
2294 1699 2A18           	.byte #0x2a, #0x18	; 6186
2295 169A 0E18           	.byte #0x0e, #0x18	; 6158
2296 169B F317           	.byte #0xf3, #0x17	; 6131
2297 169C D717           	.byte #0xd7, #0x17	; 6103
2298 169D BC17           	.byte #0xbc, #0x17	; 6076
2299 169E A017           	.byte #0xa0, #0x17	; 6048
2300 169F 8517           	.byte #0x85, #0x17	; 6021
2301 16A0 6A17           	.byte #0x6a, #0x17	; 5994
2302 16A1 4F17           	.byte #0x4f, #0x17	; 5967
2303 16A2 3417           	.byte #0x34, #0x17	; 5940
2304 16A3 1A17           	.byte #0x1a, #0x17	; 5914
2305 16A4 FF16           	.byte #0xff, #0x16	; 5887
2306 16A5 E516           	.byte #0xe5, #0x16	; 5861
2307 16A6 CB16           	.byte #0xcb, #0x16	; 5835
2308 16A7 B016           	.byte #0xb0, #0x16	; 5808
2309 16A8 9716           	.byte #0x97, #0x16	; 5783
2310 16A9 7D16           	.byte #0x7d, #0x16	; 5757
2311 16AA 6316           	.byte #0x63, #0x16	; 5731
2312 16AB 4916           	.byte #0x49, #0x16	; 5705
2313 16AC 3016           	.byte #0x30, #0x16	; 5680
2314 16AD 1716           	.byte #0x17, #0x16	; 5655
2315 16AE FD15           	.byte #0xfd, #0x15	; 5629
2316 16AF E415           	.byte #0xe4, #0x15	; 5604
2317 16B0 CB15           	.byte #0xcb, #0x15	; 5579
2318 16B1 B315           	.byte #0xb3, #0x15	; 5555
2319 16B2 9A15           	.byte #0x9a, #0x15	; 5530
2320 16B3 8115           	.byte #0x81, #0x15	; 5505
2321 16B4 6915           	.byte #0x69, #0x15	; 5481
2322 16B5 5115           	.byte #0x51, #0x15	; 5457
2323 16B6 3815           	.byte #0x38, #0x15	; 5432
2324 16B7 2015           	.byte #0x20, #0x15	; 5408
2325 16B8 0815           	.byte #0x08, #0x15	; 5384
2326 16B9 F114           	.byte #0xf1, #0x14	; 5361
2327 16BA D914           	.byte #0xd9, #0x14	; 5337
2328 16BB C114           	.byte #0xc1, #0x14	; 5313
2329 16BC AA14           	.byte #0xaa, #0x14	; 5290
2330 16BD 9214           	.byte #0x92, #0x14	; 5266
2331 16BE 7B14           	.byte #0x7b, #0x14	; 5243
2332 16BF 6414           	.byte #0x64, #0x14	; 5220
2333 16C0 4D14           	.byte #0x4d, #0x14	; 5197
2334 16C1 3614           	.byte #0x36, #0x14	; 5174
2335 16C2 1F14           	.byte #0x1f, #0x14	; 5151
2336 16C3 0914           	.byte #0x09, #0x14	; 5129
2337 16C4 F213           	.byte #0xf2, #0x13	; 5106
2338 16C5 DC13           	.byte #0xdc, #0x13	; 5084
2339 16C6 C513           	.byte #0xc5, #0x13	; 5061
2340 16C7 AF13           	.byte #0xaf, #0x13	; 5039
2341 16C8 9913           	.byte #0x99, #0x13	; 5017
2342 16C9 8313           	.byte #0x83, #0x13	; 4995
2343 16CA 6D13           	.byte #0x6d, #0x13	; 4973
2344 16CB 5713           	.byte #0x57, #0x13	; 4951
2345 16CC 4213           	.byte #0x42, #0x13	; 4930
2346 16CD 2C13           	.byte #0x2c, #0x13	; 4908
2347 16CE 1713           	.byte #0x17, #0x13	; 4887
2348 16CF 0113           	.byte #0x01, #0x13	; 4865
2349 16D0 EC12           	.byte #0xec, #0x12	; 4844
2350 16D1 D712           	.byte #0xd7, #0x12	; 4823
2351 16D2 C212           	.byte #0xc2, #0x12	; 4802
2352 16D3 AD12           	.byte #0xad, #0x12	; 4781
2353 16D4 9812           	.byte #0x98, #0x12	; 4760
2354 16D5 8312           	.byte #0x83, #0x12	; 4739
2355 16D6 6F12           	.byte #0x6f, #0x12	; 4719
2356 16D7 5A12           	.byte #0x5a, #0x12	; 4698
2357 16D8 4612           	.byte #0x46, #0x12	; 4678
2358 16D9 3112           	.byte #0x31, #0x12	; 4657
2359 16DA 1D12           	.byte #0x1d, #0x12	; 4637
2360 16DB 0912           	.byte #0x09, #0x12	; 4617
2361 16DC F511           	.byte #0xf5, #0x11	; 4597
2362 16DD E111           	.byte #0xe1, #0x11	; 4577
2363 16DE CD11           	.byte #0xcd, #0x11	; 4557
2364 16DF BA11           	.byte #0xba, #0x11	; 4538
2365 16E0 A611           	.byte #0xa6, #0x11	; 4518
2366 16E1 9211           	.byte #0x92, #0x11	; 4498
2367 16E2 7F11           	.byte #0x7f, #0x11	; 4479
2368 16E3 6C11           	.byte #0x6c, #0x11	; 4460
2369 16E4 5811           	.byte #0x58, #0x11	; 4440
2370 16E5 4511           	.byte #0x45, #0x11	; 4421
2371 16E6 3211           	.byte #0x32, #0x11	; 4402
2372 16E7 1F11           	.byte #0x1f, #0x11	; 4383
2373 16E8 0C11           	.byte #0x0c, #0x11	; 4364
2374 16E9 F910           	.byte #0xf9, #0x10	; 4345
2375 16EA E710           	.byte #0xe7, #0x10	; 4327
2376 16EB D410           	.byte #0xd4, #0x10	; 4308
2377 16EC C210           	.byte #0xc2, #0x10	; 4290
2378 16ED AF10           	.byte #0xaf, #0x10	; 4271
2379 16EE 9D10           	.byte #0x9d, #0x10	; 4253
2380 16EF 8B10           	.byte #0x8b, #0x10	; 4235
2381 16F0 7810           	.byte #0x78, #0x10	; 4216
2382 16F1 6610           	.byte #0x66, #0x10	; 4198
2383 16F2 5410           	.byte #0x54, #0x10	; 4180
2384 16F3 4210           	.byte #0x42, #0x10	; 4162
2385 16F4 3110           	.byte #0x31, #0x10	; 4145
2386 16F5 1F10           	.byte #0x1f, #0x10	; 4127
2387 16F6 0D10           	.byte #0x0d, #0x10	; 4109
2388 16F7 FC0F           	.byte #0xfc, #0x0f	; 4092
2389 16F8 EA0F           	.byte #0xea, #0x0f	; 4074
2390 16F9 D90F           	.byte #0xd9, #0x0f	; 4057
2391 16FA C80F           	.byte #0xc8, #0x0f	; 4040
2392 16FB B60F           	.byte #0xb6, #0x0f	; 4022
2393 16FC A50F           	.byte #0xa5, #0x0f	; 4005
2394 16FD 940F           	.byte #0x94, #0x0f	; 3988
2395 16FE 830F           	.byte #0x83, #0x0f	; 3971
2396 16FF 720F           	.byte #0x72, #0x0f	; 3954
2397 1700 610F           	.byte #0x61, #0x0f	; 3937
2398 1701 510F           	.byte #0x51, #0x0f	; 3921
2399 1702 400F           	.byte #0x40, #0x0f	; 3904
2400 1703 300F           	.byte #0x30, #0x0f	; 3888
2401 1704 1F0F           	.byte #0x1f, #0x0f	; 3871
2402 1705 0D0F           	.byte #0x0d, #0x0f	; 3853
2403 1706 FE0E           	.byte #0xfe, #0x0e	; 3838
2404 1707 EE0E           	.byte #0xee, #0x0e	; 3822
2405 1708 DE0E           	.byte #0xde, #0x0e	; 3806
2406 1709 CE0E           	.byte #0xce, #0x0e	; 3790
2407 170A BE0E           	.byte #0xbe, #0x0e	; 3774
2408 170B AE0E           	.byte #0xae, #0x0e	; 3758
2409 170C 9E0E           	.byte #0x9e, #0x0e	; 3742
2410 170D 8E0E           	.byte #0x8e, #0x0e	; 3726
2411 170E 7F0E           	.byte #0x7f, #0x0e	; 3711
2412 170F 6F0E           	.byte #0x6f, #0x0e	; 3695
2413 1710 5F0E           	.byte #0x5f, #0x0e	; 3679
2414 1711 500E           	.byte #0x50, #0x0e	; 3664
2415 1712 400E           	.byte #0x40, #0x0e	; 3648
2416 1713 310E           	.byte #0x31, #0x0e	; 3633
2417 1714 220E           	.byte #0x22, #0x0e	; 3618
2418 1715 130E           	.byte #0x13, #0x0e	; 3603
2419 1716 030E           	.byte #0x03, #0x0e	; 3587
2420 1717 F40D           	.byte #0xf4, #0x0d	; 3572
2421 1718 E50D           	.byte #0xe5, #0x0d	; 3557
2422 1719 D70D           	.byte #0xd7, #0x0d	; 3543
2423 171A C80D           	.byte #0xc8, #0x0d	; 3528
2424 171B B90D           	.byte #0xb9, #0x0d	; 3513
2425 171C AA0D           	.byte #0xaa, #0x0d	; 3498
2426 171D 9C0D           	.byte #0x9c, #0x0d	; 3484
2427 171E 8D0D           	.byte #0x8d, #0x0d	; 3469
2428 171F 7F0D           	.byte #0x7f, #0x0d	; 3455
2429 1720 700D           	.byte #0x70, #0x0d	; 3440
2430 1721 620D           	.byte #0x62, #0x0d	; 3426
2431 1722 540D           	.byte #0x54, #0x0d	; 3412
2432 1723 450D           	.byte #0x45, #0x0d	; 3397
2433 1724 370D           	.byte #0x37, #0x0d	; 3383
2434 1725 290D           	.byte #0x29, #0x0d	; 3369
2435 1726 1B0D           	.byte #0x1b, #0x0d	; 3355
2436 1727 0D0D           	.byte #0x0d, #0x0d	; 3341
2437 1728 FF0C           	.byte #0xff, #0x0c	; 3327
2438 1729 F10C           	.byte #0xf1, #0x0c	; 3313
2439 172A E40C           	.byte #0xe4, #0x0c	; 3300
2440 172B D60C           	.byte #0xd6, #0x0c	; 3286
2441 172C C80C           	.byte #0xc8, #0x0c	; 3272
2442 172D BA0C           	.byte #0xba, #0x0c	; 3258
2443 172E AD0C           	.byte #0xad, #0x0c	; 3245
2444 172F A00C           	.byte #0xa0, #0x0c	; 3232
2445 1730 920C           	.byte #0x92, #0x0c	; 3218
2446 1731 850C           	.byte #0x85, #0x0c	; 3205
2447 1732 780C           	.byte #0x78, #0x0c	; 3192
2448 1733 6B0C           	.byte #0x6b, #0x0c	; 3179
2449 1734 5E0C           	.byte #0x5e, #0x0c	; 3166
2450 1735 510C           	.byte #0x51, #0x0c	; 3153
2451 1736 440C           	.byte #0x44, #0x0c	; 3140
2452 1737 370C           	.byte #0x37, #0x0c	; 3127
2453 1738 2A0C           	.byte #0x2a, #0x0c	; 3114
2454 1739 1D0C           	.byte #0x1d, #0x0c	; 3101
2455 173A 100C           	.byte #0x10, #0x0c	; 3088
2456 173B 030C           	.byte #0x03, #0x0c	; 3075
2457 173C F70B           	.byte #0xf7, #0x0b	; 3063
2458 173D EA0B           	.byte #0xea, #0x0b	; 3050
2459 173E DE0B           	.byte #0xde, #0x0b	; 3038
2460 173F D10B           	.byte #0xd1, #0x0b	; 3025
2461 1740 C50B           	.byte #0xc5, #0x0b	; 3013
2462 1741 B90B           	.byte #0xb9, #0x0b	; 3001
2463 1742 AC0B           	.byte #0xac, #0x0b	; 2988
2464 1743 A00B           	.byte #0xa0, #0x0b	; 2976
2465 1744 940B           	.byte #0x94, #0x0b	; 2964
2466 1745 880B           	.byte #0x88, #0x0b	; 2952
2467 1746 7C0B           	.byte #0x7c, #0x0b	; 2940
2468 1747 700B           	.byte #0x70, #0x0b	; 2928
2469 1748 640B           	.byte #0x64, #0x0b	; 2916
2470 1749 580B           	.byte #0x58, #0x0b	; 2904
2471 174A 4C0B           	.byte #0x4c, #0x0b	; 2892
2472 174B 400B           	.byte #0x40, #0x0b	; 2880
2473 174C 340B           	.byte #0x34, #0x0b	; 2868
2474 174D 290B           	.byte #0x29, #0x0b	; 2857
2475 174E 1D0B           	.byte #0x1d, #0x0b	; 2845
2476 174F 120B           	.byte #0x12, #0x0b	; 2834
2477 1750 060B           	.byte #0x06, #0x0b	; 2822
2478 1751 FB0A           	.byte #0xfb, #0x0a	; 2811
2479 1752 EF0A           	.byte #0xef, #0x0a	; 2799
2480 1753 E40A           	.byte #0xe4, #0x0a	; 2788
2481 1754 D90A           	.byte #0xd9, #0x0a	; 2777
2482 1755 CD0A           	.byte #0xcd, #0x0a	; 2765
2483 1756 C20A           	.byte #0xc2, #0x0a	; 2754
2484 1757 B70A           	.byte #0xb7, #0x0a	; 2743
2485 1758 AC0A           	.byte #0xac, #0x0a	; 2732
2486 1759 A10A           	.byte #0xa1, #0x0a	; 2721
2487 175A 960A           	.byte #0x96, #0x0a	; 2710
2488 175B 8B0A           	.byte #0x8b, #0x0a	; 2699
2489 175C 800A           	.byte #0x80, #0x0a	; 2688
2490 175D 750A           	.byte #0x75, #0x0a	; 2677
2491 175E 6A0A           	.byte #0x6a, #0x0a	; 2666
2492 175F 600A           	.byte #0x60, #0x0a	; 2656
2493 1760 550A           	.byte #0x55, #0x0a	; 2645
2494 1761 4A0A           	.byte #0x4a, #0x0a	; 2634
2495 1762 400A           	.byte #0x40, #0x0a	; 2624
2496 1763 350A           	.byte #0x35, #0x0a	; 2613
2497 1764 2B0A           	.byte #0x2b, #0x0a	; 2603
2498 1765 200A           	.byte #0x20, #0x0a	; 2592
2499 1766 160A           	.byte #0x16, #0x0a	; 2582
2500 1767 0B0A           	.byte #0x0b, #0x0a	; 2571
2501 1768 010A           	.byte #0x01, #0x0a	; 2561
2502 1769 F809           	.byte #0xf8, #0x09	; 2552
2503 176A EC09           	.byte #0xec, #0x09	; 2540
2504 176B E209           	.byte #0xe2, #0x09	; 2530
2505 176C D809           	.byte #0xd8, #0x09	; 2520
2506 176D CE09           	.byte #0xce, #0x09	; 2510
2507 176E C409           	.byte #0xc4, #0x09	; 2500
2508 176F BA09           	.byte #0xba, #0x09	; 2490
2509 1770 B009           	.byte #0xb0, #0x09	; 2480
2510 1771 A609           	.byte #0xa6, #0x09	; 2470
2511 1772 9C09           	.byte #0x9c, #0x09	; 2460
2512 1773 9309           	.byte #0x93, #0x09	; 2451
2513 1774 8909           	.byte #0x89, #0x09	; 2441
2514 1775 7F09           	.byte #0x7f, #0x09	; 2431
2515 1776 7509           	.byte #0x75, #0x09	; 2421
2516 1777 6C09           	.byte #0x6c, #0x09	; 2412
2517 1778 6209           	.byte #0x62, #0x09	; 2402
2518 1779 5909           	.byte #0x59, #0x09	; 2393
2519 177A 4F09           	.byte #0x4f, #0x09	; 2383
2520 177B 4609           	.byte #0x46, #0x09	; 2374
2521 177C 3C09           	.byte #0x3c, #0x09	; 2364
2522 177D 3309           	.byte #0x33, #0x09	; 2355
2523 177E 2A09           	.byte #0x2a, #0x09	; 2346
2524 177F 2009           	.byte #0x20, #0x09	; 2336
2525 1780 1709           	.byte #0x17, #0x09	; 2327
2526 1781 0E09           	.byte #0x0e, #0x09	; 2318
2527 1782 0509           	.byte #0x05, #0x09	; 2309
2528 1783 FB08           	.byte #0xfb, #0x08	; 2299
2529 1784 F208           	.byte #0xf2, #0x08	; 2290
2530 1785 E908           	.byte #0xe9, #0x08	; 2281
2531 1786 E008           	.byte #0xe0, #0x08	; 2272
2532 1787 D708           	.byte #0xd7, #0x08	; 2263
2533 1788 CE08           	.byte #0xce, #0x08	; 2254
2534 1789 C608           	.byte #0xc6, #0x08	; 2246
2535 178A BD08           	.byte #0xbd, #0x08	; 2237
2536 178B B408           	.byte #0xb4, #0x08	; 2228
2537 178C AB08           	.byte #0xab, #0x08	; 2219
2538 178D A208           	.byte #0xa2, #0x08	; 2210
2539 178E 9A08           	.byte #0x9a, #0x08	; 2202
2540 178F 9108           	.byte #0x91, #0x08	; 2193
2541 1790 8908           	.byte #0x89, #0x08	; 2185
2542 1791 8008           	.byte #0x80, #0x08	; 2176
2543 1792 7708           	.byte #0x77, #0x08	; 2167
2544 1793 6F08           	.byte #0x6f, #0x08	; 2159
2545 1794 6608           	.byte #0x66, #0x08	; 2150
2546 1795 5E08           	.byte #0x5e, #0x08	; 2142
2547 1796 5608           	.byte #0x56, #0x08	; 2134
2548 1797 4D08           	.byte #0x4d, #0x08	; 2125
2549 1798 4508           	.byte #0x45, #0x08	; 2117
2550 1799 3D08           	.byte #0x3d, #0x08	; 2109
2551 179A 3508           	.byte #0x35, #0x08	; 2101
2552 179B 2C08           	.byte #0x2c, #0x08	; 2092
2553 179C 2408           	.byte #0x24, #0x08	; 2084
2554 179D 1C08           	.byte #0x1c, #0x08	; 2076
2555 179E 1408           	.byte #0x14, #0x08	; 2068
2556 179F 0C08           	.byte #0x0c, #0x08	; 2060
2557 17A0 0408           	.byte #0x04, #0x08	; 2052
2558 17A1 FC07           	.byte #0xfc, #0x07	; 2044
2559 17A2 F407           	.byte #0xf4, #0x07	; 2036
2560 17A3 EC07           	.byte #0xec, #0x07	; 2028
2561 17A4 E407           	.byte #0xe4, #0x07	; 2020
2562 17A5 DC07           	.byte #0xdc, #0x07	; 2012
2563 17A6 D507           	.byte #0xd5, #0x07	; 2005
2564 17A7 CD07           	.byte #0xcd, #0x07	; 1997
2565 17A8 C507           	.byte #0xc5, #0x07	; 1989
2566 17A9 BD07           	.byte #0xbd, #0x07	; 1981
2567 17AA B607           	.byte #0xb6, #0x07	; 1974
2568 17AB AE07           	.byte #0xae, #0x07	; 1966
2569 17AC A607           	.byte #0xa6, #0x07	; 1958
2570 17AD 9F07           	.byte #0x9f, #0x07	; 1951
2571 17AE 9707           	.byte #0x97, #0x07	; 1943
2572 17AF 9007           	.byte #0x90, #0x07	; 1936
2573 17B0 8807           	.byte #0x88, #0x07	; 1928
2574 17B1 8107           	.byte #0x81, #0x07	; 1921
2575 17B2 7907           	.byte #0x79, #0x07	; 1913
2576 17B3 7207           	.byte #0x72, #0x07	; 1906
2577 17B4 6B07           	.byte #0x6b, #0x07	; 1899
2578 17B5 6307           	.byte #0x63, #0x07	; 1891
2579 17B6 5C07           	.byte #0x5c, #0x07	; 1884
2580 17B7 5507           	.byte #0x55, #0x07	; 1877
2581 17B8 4E07           	.byte #0x4e, #0x07	; 1870
2582 17B9 4707           	.byte #0x47, #0x07	; 1863
2583 17BA 3F07           	.byte #0x3f, #0x07	; 1855
2584 17BB 3807           	.byte #0x38, #0x07	; 1848
2585 17BC 3107           	.byte #0x31, #0x07	; 1841
2586 17BD 2A07           	.byte #0x2a, #0x07	; 1834
2587 17BE 2307           	.byte #0x23, #0x07	; 1827
2588 17BF 1C07           	.byte #0x1c, #0x07	; 1820
2589 17C0 1507           	.byte #0x15, #0x07	; 1813
2590 17C1 0E07           	.byte #0x0e, #0x07	; 1806
2591 17C2 0707           	.byte #0x07, #0x07	; 1799
2592 17C3 0007           	.byte #0x00, #0x07	; 1792
2593                     
2594                     ;--------------------------------------------------------
2595                     ; initialized data - mirror
2596                     ;--------------------------------------------------------
2597                     
2598                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_ADC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2599                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_ADC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
2600                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
2601                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
2602                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2603                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2604                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2605                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2606                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2607                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2608                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2609                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2610                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2611                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2612                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2613                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2614                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2615                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
2616                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2617                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2618                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2619                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2620                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2621                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2622                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2623                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2624                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2625                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2626                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2627                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2628                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2629                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2630                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2631                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
2632                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2633                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2634                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2635                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2636                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2637                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2638                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2639                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2640                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2641                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2642                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2643                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2644                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2645                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2646                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2647                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2648                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2649                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2650                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2651                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2652                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2653                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2654                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2655                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2656                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2657                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2658                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2659                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2660                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
2661                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
2662                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2663                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2664                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2665                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2666                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2667                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2668                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2669                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2670                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2671                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2672                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2673                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2674                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2675                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2676                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2677                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2678                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2679                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2680                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2681                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2682                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2683                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2684                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2685                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2686                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2687                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2688                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2689                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2690                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
2691                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_ADC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2692                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
2693                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
2694                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
2695                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_ADC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2696                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
2697                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
2698                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_ADC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
2699                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_ADC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
2700                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_ADC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
2701                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
2702                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
2703                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_ADC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2704                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_ADC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
2705                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_ADC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2706                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_ADC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
2707                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_ADC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
2708                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2709                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2710                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2711                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2712                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2713                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2714                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2715                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2716                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2717                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2718                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2719                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2720                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2721                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2722                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2723                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2724                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2725                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2726                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2727                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2728                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2729                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2730                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2731                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2732                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2733                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2734                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2735                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2736                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2737                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_ADC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
2738                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
2739                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
2740                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_ADC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2741                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_ADC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
2742                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
2743                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_ADC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
2744                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2745                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2746                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2747                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2748                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2749                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2750                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2751                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2752                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2753                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2754                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2755                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2756                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2757                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2758                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2759                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2760                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2761                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2762                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2763                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2764                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2765                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2766                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2767                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2768                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2769                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2770                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2771                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2772                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2773                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2774                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2775                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2776                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2777                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2778                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2779                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2780                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2781                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2782                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2783                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2784                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2785                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2786                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2787                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2788                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2789                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2790                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2791                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2792                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2793                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2794                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2795                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2796                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2797                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2798                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2799                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2800                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2801                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2802                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2803                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2804                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2805                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2806                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2807                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2808                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2809                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2810                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2811                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2812                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2813                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2814                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2815                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2816                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2817                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2818                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2819                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2820                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2821                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2822                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2823                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2824                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2825                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2826                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2827                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2828                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2829                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2830                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2831                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_ADC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
2832                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_ADC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2833                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_ADC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
2834                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
2835                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
2836                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_ADC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
2837                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2838                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2839                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2840                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2841                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2842                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2843                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2844                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2845                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2846                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2847                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2848                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2849                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2850                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2851                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2852                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2853                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2854                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2855                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2856                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2857                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2858                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2859                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2860                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2861                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2862                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2863                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2864                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2865                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2866                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
2867                     	;Following is optimization info, 
2868                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
2869                     	;--cdb--W:r0x10D5:NULL+0:-1:1
2870                     	;--cdb--W:r0x10D4:NULL+0:-1:1
2871                     	;--cdb--W:r0x10D2:NULL+0:-1:1
2872                     	;--cdb--W:r0x10D1:STK01+0:-1:0
2873                     	;--cdb--W:_Centigrade_Convert_Fahrenheit_STK00:STK02+0:-1:0
2874                     	;--cdb--W:r0x10D2:_Centigrade_Convert_Fahrenheit_STK00+0:-1:0
2875                     	;--cdb--W:r0x10D2:STK02+0:-1:0
2876                     	;--cdb--W:r0x10D2:STK00+0:-1:0
2877                     	;--cdb--W:r0x10D3:STK01+0:-1:0
2878                     	;--cdb--W:r0x10D3:r0x10D1+1:-1:0
2879                     	;--cdb--W:r0x10D4:NULL+0:0:0
2880                     	;--cdb--W:r0x10D4:STK00+0:-1:0
2881                     	;--cdb--W:r0x10D4:_Centigrade_Convert_Fahrenheit_STK00+0:-1:0
2882                     	;--cdb--W:r0x10D5:NULL+0:0:0
2883                     	;--cdb--W:r0x10D5:STK01+0:-1:0
2884                     	;--cdb--W:r0x10D6:STK02+0:-1:0
2885                     	;--cdb--W:r0x10D6:_Centigrade_Convert_Fahrenheit_STK00+0:-1:0
2886                     	;--cdb--W:r0x10D7:STK01+0:-1:0
2887                     	;--cdb--W:r0x10D7:r0x10D1+1:-1:0
2888                     	;--cdb--W:r0x10D3:NULL+0:-1:1
2889                     	;--cdb--W:r0x10AD:NULL+0:-1:1
2890                     	;--cdb--W:r0x10B0:NULL+0:-1:1
2891                     	;--cdb--W:r0x10AF:NULL+0:-1:1
2892                     	;--cdb--W:r0x10B3:NULL+0:-1:1
2893                     	;--cdb--W:r0x10B7:NULL+0:-1:1
2894                     	;--cdb--W:r0x10B2:NULL+0:-1:1
2895                     	;--cdb--W:r0x10B1:NULL+0:-1:1
2896                     	;--cdb--W:r0x10AB:NULL+0:-1:0
2897                     	;--cdb--W:r0x10AC:NULL+0:-1:0
2898                     	;--cdb--W:r0x10AD:r0x10B1+0:-1:0
2899                     	;--cdb--W:r0x10AD:STK02+0:-1:0
2900                     	;--cdb--W:r0x10AE:STK01+0:-1:0
2901                     	;--cdb--W:r0x10AF:r0x10AD+0:-1:0
2902                     	;--cdb--W:r0x10AF:STK02+0:-1:0
2903                     	;--cdb--W:r0x10AF:NULL+0:0:0
2904                     	;--cdb--W:r0x10AF:STK00+0:-1:0
2905                     	;--cdb--W:r0x10AF:NULL+0:-1:0
2906                     	;--cdb--W:r0x10B0:r0x10AE+1:-1:0
2907                     	;--cdb--W:r0x10B0:STK01+0:-1:0
2908                     	;--cdb--W:r0x10B0:NULL+0:0:0
2909                     	;--cdb--W:r0x10B0:NULL+0:-1:0
2910                     	;--cdb--W:r0x10B2:STK01+0:-1:0
2911                     	;--cdb--W:r0x10B1:STK00+0:-1:0
2912                     	;--cdb--W:r0x10B1:STK02+0:-1:0
2913                     	;--cdb--W:r0x10B3:r0x10AD+0:-1:0
2914                     	;--cdb--W:r0x10B3:NULL+0:-1:0
2915                     	;--cdb--W:r0x10B3:NULL+0:0:0
2916                     	;--cdb--W:r0x10B3:STK00+0:-1:0
2917                     	;--cdb--W:r0x10B4:r0x10AE+1:-1:0
2918                     	;--cdb--W:r0x10B4:NULL+0:0:0
2919                     	;--cdb--W:r0x10B5:NULL+0:0:0
2920                     	;--cdb--W:r0x10B5:r0x10AF+0:-1:0
2921                     	;--cdb--W:r0x10B6:NULL+0:0:0
2922                     	;--cdb--W:r0x10B6:r0x10B0+1:-1:0
2923                     	;--cdb--W:r0x10B9:NULL+0:0:0
2924                     	;--cdb--W:r0x10BA:NULL+0:0:0
2925                     	;--cdb--W:r0x10AB:NULL+0:-1:1
2926                     	;--cdb--W:r0x10AC:NULL+0:-1:1
2927                     	;--cdb--W:r0x10B5:NULL+0:-1:1
2928                     	;--cdb--W:r0x10B6:NULL+0:-1:1
2929                     	;--cdb--W:r0x10B4:NULL+0:-1:1
2930                     	;--cdb--W:r0x10B9:NULL+0:-1:1
2931                     	;--cdb--W:r0x10BA:NULL+0:-1:1
2932                     	;--cdb--W:r0x10B4:NULL+0:-1:0
2933                     	;--cdb--W:r0x10B5:r0x10B6+2:-1:0
2934                     	;--cdb--W:r0x10A3:NULL+0:-1:1
2935                     	;--cdb--W:r0x1096:NULL+0:-1:0
2936                     	;--cdb--W:r0x1097:NULL+0:-1:0
2937                     	;--cdb--W:r0x1096:NULL+0:-1:1
2938                     	;--cdb--W:r0x1097:NULL+0:-1:1
2939                     	;--cdb--W:r0x108F:NULL+0:-1:1
2940                     	;--c2db--RNG$_ADCGetData_ADCData2_10000_417$1081$1083
2941                     	;--c2db--RNG$_Get_250msTemp_n_10000_443$375$728
2942                     	;--c2db--RNG$_Get_250msTemp_lower_10000_443$386$728
2943                     	;--c2db--RNG$_Get_250msTemp_upper_10000_443$386$728
2944                     	;--c2db--RNG$_Get_250msTemp_i_10000_443$497$728
2945                     	;--c2db--RNG$_Get_250msTemp_tmp_10000_443$687$701
2946                     	;--c2db--RNG$_Centigrade_Convert_Fahrenheit_temp_10000_461$190$321
2947                     	;--c2db--RNG$_Centigrade_Convert_Fahrenheit_tmp_10000_462$309$315
2948                     	END
