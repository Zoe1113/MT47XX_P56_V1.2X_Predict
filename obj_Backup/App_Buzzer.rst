001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_Buzzer.c"
009                     	.module App_Buzzer
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Buzzer$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Buzzer$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Buzzer$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Buzzer$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Buzzer$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Buzzer$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Buzzer$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Buzzer$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Buzzer$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Buzzer$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Buzzer$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Buzzer$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Buzzer$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Buzzer$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Buzzer$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Buzzer$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Buzzer$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Buzzer$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Buzzer$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Buzzer$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Buzzer:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Buzzer$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Buzzer$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Buzzer$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
144                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
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
163                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:App_Buzzer:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     ;--------------------------------------------------------
166                     ; overlayable items in internal ram 
167                     ;--------------------------------------------------------
168                     ;	udata_ovr
169                     .area CCODE (code,REL,CON) ; App_Buzzer-code 
170                     .globl _Buzzer_Drive
171                     
172                     ;--------------------------------------------------------
173                     	.FUNC _Buzzer_Drive:$r:0:0:$C:_Timer_Experience:$C:_Centigrade_Convert_Fahrenheit\
174                     :$L:r0x108D:$L:r0x108E:$L:r0x108F:$L:r0x1090
175                     ;--------------------------------------------------------
176                     ;	;.line	24; ".\Source\App_Buzzer.c"	switch(eBuzzer_Status)
177 00BE [00] [X] C484      _Buzzer_Drive:	;Function start
178 00BF [04] [X] 0606      	MVL	0x06
179 00C0 [00] [1] 0011 6B6A 	CPSL	_eBuzzer_Status,0
180 00C2 [04] [1] 78F4      	JMP	_00185_DS_
181 00C3 [04] [1] 0600      	MVL	HIGHD2(_00362_DS_)
182 00C4 [04] [1] 661A      	MVF	_PCLATH,1,0
183 00C5 [04] [1] 656A      	MVF	_eBuzzer_Status,0,0
184 00C6 [04] [1] 04CA      	ADDL	D2(_00362_DS_)
185 00C7 [04] [1] A82B      	BTSZ	_STATUS,4
186 00C8 [04] [1] 3A1A      	INF	_PCLATH,1,0
187 00C9 [04] [1] 661B      	MVF	_PCLATL,1,0
188                     _00362_DS_:
189 00CA [04] [1] 7805      	RJ	_00105_DS_
190 00CB [04] [1] 780D      	RJ	_00106_DS_
191 00CC [04] [1] 7825      	RJ	_00113_DS_
192 00CD [04] [1] 786A      	RJ	_00138_DS_
193 00CE [04] [1] 78B8      	RJ	_00163_DS_
194 00CF [04] [1] 78D4      	RJ	_00173_DS_
195                     _00105_DS_:
196                     ;	;.line	29; ".\Source\App_Buzzer.c"	BZ_Disable();
197 00D0 [04] [1] 8E39      	BCF	_WDTCN,7
198                     ;	;.line	31; ".\Source\App_Buzzer.c"	Power_Buzzer_Low;
199 00D1 [04] [1] 9E54      	BSF	_TRISC1,7
200 00D2 [04] [1] 8E53      	BCF	_PT1,7
201                     ;	;.line	33; ".\Source\App_Buzzer.c"	sTIMx.BuzzerIntervalCnt = 0;
202 00D3 [00] [2] 0012 0DCF 	CLRF	(_sTIMx + 3),0
203                     ;	;.line	35; ".\Source\App_Buzzer.c"	sTIMx.BuzzerFlash4Hz = 0;
204 00D5 [04] [2] 89CD      	BCF	(_sTIMx+1),4
205                     ;	;.line	37; ".\Source\App_Buzzer.c"	sTIMx.BuzzerFlash1Hz = 0;
206 00D6 [04] [2] 87CD      	BCF	(_sTIMx+1),3
207                     ;	;.line	40; ".\Source\App_Buzzer.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = FALSE;
208 00D7 [04] [2] 8707      	BCF	_sTimeStamp,3
209                     ;	;.line	41; ".\Source\App_Buzzer.c"	break;
210 00D8 [04] [2] 78DE      	JMP	_00185_DS_
211                     _00106_DS_:
212                     ;	;.line	45; ".\Source\App_Buzzer.c"	if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
213 00D9 [00] [2] 0012 A707 	BTSZ	_sTimeStamp,3
214 00DB [04] [2] 7802 C90A 	JMP	_00111_DS_
215                     ;	;.line	48; ".\Source\App_Buzzer.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
216 01E7 [04] [2] 9707      	BSF	_sTimeStamp,3
217                     ;	;.line	50; ".\Source\App_Buzzer.c"	sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
218 01E8 [04] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
219 01E9 [04] [2] 670D      	MVF	(_sTimeStamp + 6),1,0
220 01EA [04] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
221 01EB [04] [2] 670E      	MVF	(_sTimeStamp + 7),1,0
222 01EC [04] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
223 01ED [04] [2] 670F      	MVF	(_sTimeStamp + 8),1,0
224 01EE [04] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
225 01EF [04] [2] 6710 000A 	MVF	(_sTimeStamp + 9),1,0
226 00DD [04] [2] 78D9      	JMP	_00185_DS_
227                     _00111_DS_:
228                     ;	;.line	55; ".\Source\App_Buzzer.c"	Result = Timer_Experience(sTimeStamp.Buzzing_Timer,5);
229 00DE [04] [2] 650D      	MVF	(_sTimeStamp + 6),0,0
230 00DF [04] [2] 6683      	MVF	r0x108D,1,0
231 00E0 [04] [2] 650E      	MVF	(_sTimeStamp + 7),0,0
232 00E1 [04] [2] 6682      	MVF	r0x108E,1,0
233 00E2 [04] [2] 650F      	MVF	(_sTimeStamp + 8),0,0
234 00E3 [04] [2] 6681      	MVF	r0x108F,1,0
235 00E4 [04] [2] 6510      	MVF	(_sTimeStamp + 9),0,0
236 00E5 [04] [2] 6680      	MVF	r0x1090,1,0
237 00E6 [04] [2] 0605 C8F3 	MVL	0x05
238 01DB [04] [2] 660D      	MVF	_Timer_Experience_STK06,1,0
239 01DC [05] [2] 0C0D      	CLRF	_Timer_Experience_STK05,0
240 01DD [06] [2] 0C0D      	CLRF	_Timer_Experience_STK04,0
241 01DE [07] [2] 0C0D      	CLRF	_Timer_Experience_STK03,0
242 01DF [08] [2] 6487      	MVF	r0x108D,0,0
243 01E0 [08] [2] 660D      	MVF	_Timer_Experience_STK02,1,0
244 01E1 [09] [2] 6487      	MVF	r0x108E,0,0
245 01E2 [09] [2] 660D      	MVF	_Timer_Experience_STK01,1,0
246 01E3 [10] [2] 6487      	MVF	r0x108F,0,0
247 01E4 [10] [2] 660D      	MVF	_Timer_Experience_STK00,1,0
248 01E5 [11] [2] 6487 000A 	MVF	r0x1090,0,0
249 00E8 [11] [2] C001 F06A 	CALL	_Timer_Experience
250                     	.CHKPARA _Timer_Experience 8
251                     ;	;.line	56; ".\Source\App_Buzzer.c"	if(Result)
252 00EA [04] [2] 0200      	IORL	0x00
253 00EB [04] [2] A02B      	BTSZ	_STATUS,0
254 00EC [04] [2] 7803      	JMP	_00108_DS_
255                     ;	;.line	59; ".\Source\App_Buzzer.c"	eBuzzer_Status = Buzzer_Silent;
256 00ED [00] [1] 0011 0D6A 	CLRF	_eBuzzer_Status,0
257 00EF [04] [1] 78C7      	JMP	_00185_DS_
258                     _00108_DS_:
259                     ;	;.line	64; ".\Source\App_Buzzer.c"	BZ_Enable();
260 00F0 [04] [2] 9E39      	BSF	_WDTCN,7
261                     ;	;.line	67; ".\Source\App_Buzzer.c"	break;
262 00F1 [04] [2] 78C5      	JMP	_00185_DS_
263                     _00113_DS_:
264                     ;	;.line	72; ".\Source\App_Buzzer.c"	if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
265 00F2 [00] [2] 0012 A707 	BTSZ	_sTimeStamp,3
266 00F4 [04] [2] 7802 C8F1 	JMP	_00136_DS_
267                     ;	;.line	75; ".\Source\App_Buzzer.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
268                     	BSF	_sTimeStamp,3
269                     ;	;.line	77; ".\Source\App_Buzzer.c"	sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
270                     	MVF	(_sTimeStamp + 2),0,0
271                     	MVF	(_sTimeStamp + 6),1,0
272                     	MVF	(_sTimeStamp + 3),0,0
273                     	MVF	(_sTimeStamp + 7),1,0
274                     	MVF	(_sTimeStamp + 4),0,0
275                     	MVF	(_sTimeStamp + 8),1,0
276                     	MVF	(_sTimeStamp + 5),0,0
277                     	MVF	(_sTimeStamp + 9),1,0
278 00F6 [04] [2] 78C0      	JMP	_00185_DS_
279 00F7 [00] [Z] C8C1      _00136_DS_:
280                     ;	;.line	82; ".\Source\App_Buzzer.c"	Result = Timer_Experience(sTimeStamp.Buzzing_Timer,200);
281 01B9 [04] [2] 650D      	MVF	(_sTimeStamp + 6),0,0
282 01BA [04] [2] 6683      	MVF	r0x108D,1,0
283 01BB [04] [2] 650E      	MVF	(_sTimeStamp + 7),0,0
284 01BC [04] [2] 6682      	MVF	r0x108E,1,0
285 01BD [04] [2] 650F      	MVF	(_sTimeStamp + 8),0,0
286 01BE [04] [2] 6681      	MVF	r0x108F,1,0
287 01BF [04] [2] 6510      	MVF	(_sTimeStamp + 9),0,0
288 01C0 [04] [2] 6680      	MVF	r0x1090,1,0
289 01C1 [04] [2] 06C8      	MVL	0xc8
290 01C2 [04] [2] 660D      	MVF	_Timer_Experience_STK06,1,0
291 01C3 [05] [2] 0C0D      	CLRF	_Timer_Experience_STK05,0
292 01C4 [06] [2] 0C0D      	CLRF	_Timer_Experience_STK04,0
293 01C5 [07] [2] 0C0D      	CLRF	_Timer_Experience_STK03,0
294 01C6 [08] [2] 6487      	MVF	r0x108D,0,0
295 01C7 [08] [2] 660D      	MVF	_Timer_Experience_STK02,1,0
296 01C8 [09] [2] 6487      	MVF	r0x108E,0,0
297 01C9 [09] [2] 660D      	MVF	_Timer_Experience_STK01,1,0
298 01CA [10] [2] 6487      	MVF	r0x108F,0,0
299 01CB [10] [2] 660D      	MVF	_Timer_Experience_STK00,1,0
300 01CC [11] [2] 6487 000A 	MVF	r0x1090,0,0
301 00F8 [11] [2] C001 F06A 	CALL	_Timer_Experience
302                     ;	;.line	83; ".\Source\App_Buzzer.c"	if(Result)
303 00FA [04] [2] 0200      	IORL	0x00
304 00FB [04] [2] A02B      	BTSZ	_STATUS,0
305 00FC [04] [2] 7803      	JMP	_00133_DS_
306                     ;	;.line	86; ".\Source\App_Buzzer.c"	eBuzzer_Status = Buzzer_Silent;
307 00FD [00] [1] 0011 0D6A 	CLRF	_eBuzzer_Status,0
308 00FF [04] [1] 78B7      	JMP	_00185_DS_
309                     _00133_DS_:
310                     ;	;.line	90; ".\Source\App_Buzzer.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
311 0100 [04] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
312 0101 [04] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
313 0102 [05] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
314 0103 [05] [2] C000 F628 	CALL	_Centigrade_Convert_Fahrenheit
315                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
316 0105 [04] [1] 6682      	MVF	r0x108E,1,0
317 0106 [04] [1] D020 F2A4 	MVFF	STK00,(_sActual_Forecast + 5)
318 0108 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
319                     ;	;.line	92; ".\Source\App_Buzzer.c"	if(((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade) && (eTempUnit == Centigrade))
320 010A [04] [2] 6420      	MVF	STK00,0,0
321 010B [04] [2] 043C      	ADDL	0x3c
322 010C [04] [2] 06F1      	MVL	0xf1
323 010D [04] [2] 1482      	ADDC	r0x108E,0,0
324 010E [04] [2] B82B      	BTSS	_STATUS,4
325 010F [04] [2] 7805      	JMP	_00131_DS_
326 0110 [00] [1] 0011 657F 	MVF	_eTempUnit,0,0
327 0112 [04] [1] 035A      	XORL	0x5a
328 0113 [04] [1] A02B      	BTSZ	_STATUS,0
329 0114 [04] [1] 780B      	JMP	_00126_DS_
330                     _00131_DS_:
331                     ;	;.line	93; ".\Source\App_Buzzer.c"	|| ((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
332 0115 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
333 0117 [04] [2] 04F0      	ADDL	0xf0
334 0118 [04] [2] 06D8      	MVL	0xd8
335 0119 [04] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
336 011A [04] [2] B82B      	BTSS	_STATUS,4
337 011B [04] [2] 7815      	JMP	_00127_DS_
338 011C [04] [2] 06A5      	MVL	0xa5
339 011D [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
340 011F [04] [1] 7811      	JMP	_00127_DS_
341                     _00126_DS_:
342                     ;	;.line	98; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerIntervalCnt >= 8)
343 0120 [04] [1] 0607      	MVL	0x07
344 0121 [00] [2] 0012 69CF 	CPSG	(_sTIMx + 3),0
345 0123 [04] [2] 7802      	JMP	_00121_DS_
346                     ;	;.line	101; ".\Source\App_Buzzer.c"	sTIMx.BuzzerIntervalCnt = 0;
347 0124 [04] [2] 0DCF      	CLRF	(_sTIMx + 3),0
348 0125 [04] [2] 7891      	JMP	_00185_DS_
349                     _00121_DS_:
350                     ;	;.line	104; ".\Source\App_Buzzer.c"	else if(sTIMx.BuzzerIntervalCnt < 6)
351 0126 [04] [2] 0606      	MVL	0x06
352 0127 [04] [2] 6BCF      	CPSL	(_sTIMx + 3),0
353 0128 [04] [2] 7806      	JMP	_00118_DS_
354                     ;	;.line	107; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerFlash4Hz)
355 0129 [04] [2] B9CD      	BTSS	(_sTIMx+1),4
356 012A [04] [2] 7802      	JMP	_00115_DS_
357                     ;	;.line	110; ".\Source\App_Buzzer.c"	BZ_Enable();
358 012B [04] [2] 9E39      	BSF	_WDTCN,7
359 012C [04] [2] 788A      	JMP	_00185_DS_
360                     _00115_DS_:
361                     ;	;.line	115; ".\Source\App_Buzzer.c"	BZ_Disable();
362 012D [04] [2] 8E39      	BCF	_WDTCN,7
363 012E [04] [2] 7888      	JMP	_00185_DS_
364                     _00118_DS_:
365                     ;	;.line	121; ".\Source\App_Buzzer.c"	BZ_Disable();
366 012F [04] [2] 8E39      	BCF	_WDTCN,7
367 0130 [04] [2] 7886      	JMP	_00185_DS_
368                     _00127_DS_:
369                     ;	;.line	130; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerFlash1Hz)
370 0131 [00] [2] 0012 B7CD 	BTSS	(_sTIMx+1),3
371 0133 [04] [2] 7802      	JMP	_00124_DS_
372                     ;	;.line	133; ".\Source\App_Buzzer.c"	BZ_Enable();
373 0134 [04] [2] 9E39      	BSF	_WDTCN,7
374 0135 [04] [2] 7881      	JMP	_00185_DS_
375                     _00124_DS_:
376                     ;	;.line	138; ".\Source\App_Buzzer.c"	BZ_Disable();
377 0136 [04] [2] 8E39      	BCF	_WDTCN,7
378                     ;	;.line	143; ".\Source\App_Buzzer.c"	break;
379 0137 [04] [2] 787F      	JMP	_00185_DS_
380                     _00138_DS_:
381                     ;	;.line	147; ".\Source\App_Buzzer.c"	if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
382 0138 [00] [2] 0012 A707 	BTSZ	_sTimeStamp,3
383 013A [04] [2] 7802 C8AB 	JMP	_00161_DS_
384                     ;	;.line	150; ".\Source\App_Buzzer.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
385                     	BSF	_sTimeStamp,3
386                     ;	;.line	152; ".\Source\App_Buzzer.c"	sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
387                     	MVF	(_sTimeStamp + 2),0,0
388                     	MVF	(_sTimeStamp + 6),1,0
389                     	MVF	(_sTimeStamp + 3),0,0
390                     	MVF	(_sTimeStamp + 7),1,0
391                     	MVF	(_sTimeStamp + 4),0,0
392                     	MVF	(_sTimeStamp + 8),1,0
393                     	MVF	(_sTimeStamp + 5),0,0
394                     	MVF	(_sTimeStamp + 9),1,0
395 013C [04] [2] 787A      	JMP	_00185_DS_
396                     _00161_DS_:
397                     ;	;.line	157; ".\Source\App_Buzzer.c"	Result = Timer_Experience(sTimeStamp.Buzzing_Timer,400);
398 013D [04] [2] 650D      	MVF	(_sTimeStamp + 6),0,0
399 013E [04] [2] 6683      	MVF	r0x108D,1,0
400 013F [04] [2] 650E      	MVF	(_sTimeStamp + 7),0,0
401 0140 [04] [2] 6682      	MVF	r0x108E,1,0
402 0141 [04] [2] 650F      	MVF	(_sTimeStamp + 8),0,0
403 0142 [04] [2] 6681      	MVF	r0x108F,1,0
404 0143 [04] [2] 6510      	MVF	(_sTimeStamp + 9),0,0
405 0144 [04] [2] 6680      	MVF	r0x1090,1,0
406 0145 [04] [2] 0690 C887 	MVL	0x90
407 01CE [04] [2] 660D      	MVF	_Timer_Experience_STK06,1,0
408 01CF [05] [2] 0601      	MVL	0x01
409 01D0 [05] [2] 660D      	MVF	_Timer_Experience_STK05,1,0
410 01D1 [06] [2] 0C0D      	CLRF	_Timer_Experience_STK04,0
411 01D2 [07] [2] 0C0D      	CLRF	_Timer_Experience_STK03,0
412 01D3 [08] [2] 6487      	MVF	r0x108D,0,0
413 01D4 [08] [2] 660D      	MVF	_Timer_Experience_STK02,1,0
414 01D5 [09] [2] 6487      	MVF	r0x108E,0,0
415 01D6 [09] [2] 660D      	MVF	_Timer_Experience_STK01,1,0
416 01D7 [10] [2] 6487      	MVF	r0x108F,0,0
417 01D8 [10] [2] 660D      	MVF	_Timer_Experience_STK00,1,0
418 01D9 [11] [2] 6487 000A 	MVF	r0x1090,0,0
419 0147 [11] [2] C001 F06A 	CALL	_Timer_Experience
420                     ;	;.line	158; ".\Source\App_Buzzer.c"	if(Result)
421 0149 [04] [2] 0200      	IORL	0x00
422 014A [04] [2] A02B      	BTSZ	_STATUS,0
423 014B [04] [2] 7803      	JMP	_00158_DS_
424                     ;	;.line	161; ".\Source\App_Buzzer.c"	eBuzzer_Status = Buzzer_Silent;
425 014C [00] [1] 0011 0D6A 	CLRF	_eBuzzer_Status,0
426 014E [04] [1] 7868      	JMP	_00185_DS_
427                     _00158_DS_:
428                     ;	;.line	165; ".\Source\App_Buzzer.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
429 014F [04] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
430 0150 [04] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
431 0151 [05] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
432 0152 [05] [2] C000 F628 	CALL	_Centigrade_Convert_Fahrenheit
433 0154 [04] [1] 6682      	MVF	r0x108E,1,0
434 0155 [04] [1] D020 F2A4 	MVFF	STK00,(_sActual_Forecast + 5)
435 0157 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
436                     ;	;.line	167; ".\Source\App_Buzzer.c"	if(((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Centigrade) && (eTempUnit == Centigrade))
437 0159 [04] [2] 6420      	MVF	STK00,0,0
438 015A [04] [2] 043C      	ADDL	0x3c
439 015B [04] [2] 06F1      	MVL	0xf1
440 015C [04] [2] 1482      	ADDC	r0x108E,0,0
441 015D [04] [2] B82B      	BTSS	_STATUS,4
442 015E [04] [2] 7805      	JMP	_00156_DS_
443 015F [00] [1] 0011 657F 	MVF	_eTempUnit,0,0
444 0161 [04] [1] 035A      	XORL	0x5a
445 0162 [04] [1] A02B      	BTSZ	_STATUS,0
446 0163 [04] [1] 780B      	JMP	_00151_DS_
447                     _00156_DS_:
448                     ;	;.line	168; ".\Source\App_Buzzer.c"	|| ((sActual_Forecast.ConvertedTempDisp >= Fever_Temp_Fahrenheit) && (eTempUnit == Fahrenheit)))
449 0164 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
450 0166 [04] [2] 04F0      	ADDL	0xf0
451 0167 [04] [2] 06D8      	MVL	0xd8
452 0168 [04] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
453 0169 [04] [2] B82B      	BTSS	_STATUS,4
454 016A [04] [2] 7815      	JMP	_00152_DS_
455 016B [04] [2] 06A5      	MVL	0xa5
456 016C [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
457 016E [04] [1] 7811      	JMP	_00152_DS_
458                     _00151_DS_:
459                     ;	;.line	173; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerIntervalCnt >= 8)
460 016F [04] [1] 0607      	MVL	0x07
461 0170 [00] [2] 0012 69CF 	CPSG	(_sTIMx + 3),0
462 0172 [04] [2] 7802      	JMP	_00146_DS_
463                     ;	;.line	176; ".\Source\App_Buzzer.c"	sTIMx.BuzzerIntervalCnt = 0;
464 0173 [04] [2] 0DCF      	CLRF	(_sTIMx + 3),0
465 0174 [04] [2] 7842      	JMP	_00185_DS_
466                     _00146_DS_:
467                     ;	;.line	179; ".\Source\App_Buzzer.c"	else if(sTIMx.BuzzerIntervalCnt < 6)
468 0175 [04] [2] 0606      	MVL	0x06
469 0176 [04] [2] 6BCF      	CPSL	(_sTIMx + 3),0
470 0177 [04] [2] 7806      	JMP	_00143_DS_
471                     ;	;.line	182; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerFlash4Hz)
472 0178 [04] [2] B9CD      	BTSS	(_sTIMx+1),4
473 0179 [04] [2] 7802      	JMP	_00140_DS_
474                     ;	;.line	185; ".\Source\App_Buzzer.c"	BZ_Enable();
475 017A [04] [2] 9E39      	BSF	_WDTCN,7
476 017B [04] [2] 783B      	JMP	_00185_DS_
477                     _00140_DS_:
478                     ;	;.line	190; ".\Source\App_Buzzer.c"	BZ_Disable();
479 017C [04] [2] 8E39      	BCF	_WDTCN,7
480 017D [04] [2] 7839      	JMP	_00185_DS_
481                     _00143_DS_:
482                     ;	;.line	196; ".\Source\App_Buzzer.c"	BZ_Disable();
483 017E [04] [2] 8E39      	BCF	_WDTCN,7
484 017F [04] [2] 7837      	JMP	_00185_DS_
485                     _00152_DS_:
486                     ;	;.line	205; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerFlash1Hz)
487 0180 [00] [2] 0012 B7CD 	BTSS	(_sTIMx+1),3
488 0182 [04] [2] 7802      	JMP	_00149_DS_
489                     ;	;.line	208; ".\Source\App_Buzzer.c"	BZ_Enable();
490 0183 [04] [2] 9E39      	BSF	_WDTCN,7
491 0184 [04] [2] 7832      	JMP	_00185_DS_
492                     _00149_DS_:
493                     ;	;.line	213; ".\Source\App_Buzzer.c"	BZ_Disable();
494 0185 [04] [2] 8E39      	BCF	_WDTCN,7
495                     ;	;.line	218; ".\Source\App_Buzzer.c"	break;
496 0186 [04] [2] 7830      	JMP	_00185_DS_
497                     _00163_DS_:
498                     ;	;.line	221; ".\Source\App_Buzzer.c"	if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
499 0187 [00] [2] 0012 A707 	BTSZ	_sTimeStamp,3
500 0189 [04] [2] 7802 C85C 	JMP	_00171_DS_
501                     ;	;.line	224; ".\Source\App_Buzzer.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
502                     	BSF	_sTimeStamp,3
503                     ;	;.line	226; ".\Source\App_Buzzer.c"	sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
504                     	MVF	(_sTimeStamp + 2),0,0
505                     	MVF	(_sTimeStamp + 6),1,0
506                     	MVF	(_sTimeStamp + 3),0,0
507                     	MVF	(_sTimeStamp + 7),1,0
508                     	MVF	(_sTimeStamp + 4),0,0
509                     	MVF	(_sTimeStamp + 8),1,0
510                     	MVF	(_sTimeStamp + 5),0,0
511                     	MVF	(_sTimeStamp + 9),1,0
512 018B [04] [2] 782B      	JMP	_00185_DS_
513                     _00171_DS_:
514                     ;	;.line	231; ".\Source\App_Buzzer.c"	Result = Timer_Experience(sTimeStamp.Buzzing_Timer,20);
515 018C [04] [2] 650D      	MVF	(_sTimeStamp + 6),0,0
516 018D [04] [2] 6683      	MVF	r0x108D,1,0
517 018E [04] [2] 650E      	MVF	(_sTimeStamp + 7),0,0
518 018F [04] [2] 6682      	MVF	r0x108E,1,0
519 0190 [04] [2] 650F      	MVF	(_sTimeStamp + 8),0,0
520 0191 [04] [2] 6681      	MVF	r0x108F,1,0
521 0192 [04] [2] 6510      	MVF	(_sTimeStamp + 9),0,0
522 0193 [04] [2] 6680      	MVF	r0x1090,1,0
523 0194 [04] [2] 0614 C845 	MVL	0x14
524                     	MVF	_Timer_Experience_STK06,1,0
525                     	CLRF	_Timer_Experience_STK05,0
526                     	CLRF	_Timer_Experience_STK04,0
527                     	CLRF	_Timer_Experience_STK03,0
528                     	MVF	r0x108D,0,0
529                     	MVF	_Timer_Experience_STK02,1,0
530                     	MVF	r0x108E,0,0
531                     	MVF	_Timer_Experience_STK01,1,0
532                     	MVF	r0x108F,0,0
533                     	MVF	_Timer_Experience_STK00,1,0
534                     	MVF	r0x1090,0,0
535 0196 [11] [2] C001 F06A 	CALL	_Timer_Experience
536                     ;	;.line	232; ".\Source\App_Buzzer.c"	if(Result)
537 0198 [04] [2] 0200      	IORL	0x00
538 0199 [04] [2] A02B      	BTSZ	_STATUS,0
539 019A [04] [2] 7803      	JMP	_00168_DS_
540                     ;	;.line	235; ".\Source\App_Buzzer.c"	eBuzzer_Status = Buzzer_Silent;
541 019B [00] [1] 0011 0D6A 	CLRF	_eBuzzer_Status,0
542 019D [04] [1] 7819      	JMP	_00185_DS_
543                     _00168_DS_:
544                     ;	;.line	240; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerFlash4Hz)
545 019E [04] [2] B9CD      	BTSS	(_sTIMx+1),4
546 019F [04] [2] 7802      	JMP	_00165_DS_
547                     ;	;.line	243; ".\Source\App_Buzzer.c"	BZ_Enable();
548 01A0 [04] [2] 9E39      	BSF	_WDTCN,7
549 01A1 [04] [2] 7815      	JMP	_00185_DS_
550                     _00165_DS_:
551                     ;	;.line	248; ".\Source\App_Buzzer.c"	BZ_Disable();
552 01A2 [04] [2] 8E39      	BCF	_WDTCN,7
553                     ;	;.line	252; ".\Source\App_Buzzer.c"	break;
554 01A3 [04] [2] 7813      	JMP	_00185_DS_
555                     _00173_DS_:
556                     ;	;.line	257; ".\Source\App_Buzzer.c"	if(!sTimeStamp.Get_Buzzer_Start_Timer_Flag)
557 01A4 [00] [2] 0012 A707 	BTSZ	_sTimeStamp,3
558 01A6 [04] [2] 7802 C83F 	JMP	_00181_DS_
559                     ;	;.line	260; ".\Source\App_Buzzer.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = TRUE;
560                     	BSF	_sTimeStamp,3
561                     ;	;.line	262; ".\Source\App_Buzzer.c"	sTimeStamp.Buzzing_Timer = sTimeStamp.Timer_Journey;
562                     	MVF	(_sTimeStamp + 2),0,0
563                     	MVF	(_sTimeStamp + 6),1,0
564                     	MVF	(_sTimeStamp + 3),0,0
565                     	MVF	(_sTimeStamp + 7),1,0
566                     	MVF	(_sTimeStamp + 4),0,0
567                     	MVF	(_sTimeStamp + 8),1,0
568                     	MVF	(_sTimeStamp + 5),0,0
569                     	MVF	(_sTimeStamp + 9),1,0
570 01A8 [04] [2] 780E      	JMP	_00185_DS_
571 01A9 [00] [Z] C80F      _00181_DS_:
572                     ;	;.line	267; ".\Source\App_Buzzer.c"	Result = Timer_Experience(sTimeStamp.Buzzing_Timer,200);
573                     	MVF	(_sTimeStamp + 6),0,0
574                     	MVF	r0x108D,1,0
575                     	MVF	(_sTimeStamp + 7),0,0
576                     	MVF	r0x108E,1,0
577                     	MVF	(_sTimeStamp + 8),0,0
578                     	MVF	r0x108F,1,0
579                     	MVF	(_sTimeStamp + 9),0,0
580                     	MVF	r0x1090,1,0
581                     	MVL	0xc8
582                     	MVF	_Timer_Experience_STK06,1,0
583                     	CLRF	_Timer_Experience_STK05,0
584                     	CLRF	_Timer_Experience_STK04,0
585                     	CLRF	_Timer_Experience_STK03,0
586                     	MVF	r0x108D,0,0
587                     	MVF	_Timer_Experience_STK02,1,0
588                     	MVF	r0x108E,0,0
589                     	MVF	_Timer_Experience_STK01,1,0
590                     	MVF	r0x108F,0,0
591                     	MVF	_Timer_Experience_STK00,1,0
592                     	MVF	r0x1090,0,0
593 01AA [11] [2] C001 F06A 	CALL	_Timer_Experience
594                     ;	;.line	268; ".\Source\App_Buzzer.c"	if(Result)
595 01AC [04] [2] 0200      	IORL	0x00
596 01AD [04] [2] A02B      	BTSZ	_STATUS,0
597 01AE [04] [2] 7803      	JMP	_00178_DS_
598                     ;	;.line	271; ".\Source\App_Buzzer.c"	eBuzzer_Status = Buzzer_Silent;
599 01AF [00] [1] 0011 0D6A 	CLRF	_eBuzzer_Status,0
600 01B1 [04] [1] 7805      	JMP	_00185_DS_
601                     _00178_DS_:
602                     ;	;.line	277; ".\Source\App_Buzzer.c"	if(sTIMx.BuzzerFlash1Hz)
603 01B2 [04] [2] B7CD      	BTSS	(_sTIMx+1),3
604 01B3 [04] [2] 7802      	JMP	_00175_DS_
605                     ;	;.line	280; ".\Source\App_Buzzer.c"	BZ_Enable();
606 01B4 [04] [2] 9E39      	BSF	_WDTCN,7
607 01B5 [04] [2] 7801      	JMP	_00185_DS_
608                     _00175_DS_:
609                     ;	;.line	285; ".\Source\App_Buzzer.c"	BZ_Disable();
610 01B6 [04] [2] 8E39      	BCF	_WDTCN,7
611 01B7 [04] [X] C4BC      _00185_DS_:
612                     ;	;.line	293; ".\Source\App_Buzzer.c"	}
613 01B8 [00] [X] 000A      	RET	
614                     ; exit point of _Buzzer_Drive
615                     	.ENDFUNC	_Buzzer_Drive
616                     ;--------------------------------------------------------
617                     
618                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
619                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
620                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
621                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
622                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
623                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
624                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
625                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
626                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
627                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
628                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
629                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
630                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
631                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
632                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
633                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
634                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
635                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
636                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
637                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
638                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
639                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
640                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
641                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
642                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Buzzer$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
643                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Buzzer$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
644                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Buzzer$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
645                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
646                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
647                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
648                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
649                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
650                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
651                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
652                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
653                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
654                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
655                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
656                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
657                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
658                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
659                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
660                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
661                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
662                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
663                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
664                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
665                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
666                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
667                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
668                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
669                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
670                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
671                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
672                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
673                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
674                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
675                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
676                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
677                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
678                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
679                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
680                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
681                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
682                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
683                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
684                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
685                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
686                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
687                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
688                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
689                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
690                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
691                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
692                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
693                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
694                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
695                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
696                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
697                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
698                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
699                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
700                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
701                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
702                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
703                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
704                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
705                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
706                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
707                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
708                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
709                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
710                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
711                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
712                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
713                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
714                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
715                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
716                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
717                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
718                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
719                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
720                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
721                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
722                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
723                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
724                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
725                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
726                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
727                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
728                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
729                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
730                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
731                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
732                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
733                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
734                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
735                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
736                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
737                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
738                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
739                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
740                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
741                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
742                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
743                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
744                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
745                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
746                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
747                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
748                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
749                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
750                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
751                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
752                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
753                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
754                     	;--cdb--S:LApp_Buzzer.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
755                     	;--cdb--S:LApp_Buzzer.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
756                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Buzzer$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
757                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
758                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Buzzer$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
759                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Buzzer$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
760                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Buzzer$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
761                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
762                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Buzzer$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
763                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
764                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
765                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
766                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
767                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
768                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
769                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Buzzer$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
770                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Buzzer$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
771                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
772                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Buzzer$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
773                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
774                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
775                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
776                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
777                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Buzzer$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
778                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
779                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
780                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
781                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
782                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Buzzer$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
783                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Buzzer$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
784                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Buzzer$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
785                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Buzzer$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
786                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Buzzer$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
787                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
788                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Buzzer$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
789                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
790                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
791                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Buzzer$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
792                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
793                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Buzzer$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
794                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
795                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
796                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
797                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
798                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
799                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
800                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
801                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
802                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
803                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
804                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
805                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
806                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
807                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
808                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
809                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
810                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
811                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
812                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
813                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
814                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
815                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
816                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
817                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
818                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
819                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
820                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
821                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
822                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
823                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
824                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
825                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
826                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
827                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
828                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
829                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
830                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
831                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
832                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
833                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
834                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
835                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
836                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
837                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
838                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
839                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
840                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
841                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
842                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
843                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
844                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
845                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
846                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
847                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
848                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
849                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
850                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
851                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
852                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
853                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
854                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
855                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
856                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
857                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
858                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
859                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
860                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
861                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
862                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
863                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
864                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
865                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
866                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
867                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
868                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
869                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
870                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
871                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
872                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
873                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
874                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
875                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
876                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
877                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
878                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
879                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
880                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
881                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
882                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
883                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
884                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
885                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
886                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
887                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
888                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
889                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
890                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
891                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
892                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
893                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
894                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
895                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
896                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
897                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
898                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
899                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
900                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
901                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
902                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
903                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
904                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
905                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
906                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
907                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
908                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
909                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
910                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
911                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
912                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
913                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
914                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
915                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
916                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
917                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
918                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
919                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
920                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
921                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
922                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
923                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
924                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
925                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
926                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
927                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
928                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
929                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
930                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
931                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
932                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
933                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
934                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
935                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
936                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
937                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
938                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
939                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
940                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
941                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
942                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
943                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
944                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
945                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
946                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
947                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
948                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
949                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
950                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
951                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
952                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
953                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
954                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
955                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
956                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
957                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
958                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
959                     	;--cdb--S:LApp_Buzzer.Buzzer_Drive._Buzzer_Drive_Result_10000_418$Result$2710$418({1}SC:U),R,0,0,[r0x108D]
960                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
961                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
962                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
963                     ;--------------------------------------------------------
964                     ; external declarations
965                     ;--------------------------------------------------------
966                     	.globl	_Timer_Experience
967                     	.globl	_Centigrade_Convert_Fahrenheit
968                     	.globl	_FSR0
969                     	.globl	_FSR1
970                     	.globl	_FSR2
971                     	.globl	_ADCR
972                     	.globl	_sIIC
973                     	.globl	_BIE_Available_Addr
974                     	.globl	_sTIMx
975                     	.globl	_sUARTx
976                     	.globl	_sAutoBps
977                     	.globl	_eAutoBps_Status
978                     	.globl	_sTest
979                     	.globl	_eTempUnit
980                     	.globl	_eBondingTempUnit
981                     	.globl	_eVersionCode
982                     	.globl	_eMeasureMode
983                     	.globl	_eBinding_Status
984                     	.globl	_Enter_PrepareSleep_Flag
985                     	.globl	_sButton
986                     	.globl	_sTimeStamp
987                     	.globl	_eButton_Status
988                     	.globl	_sLVD
989                     	.globl	_UnitExchangeCompleted
990                     	.globl	_ERR
991                     	.globl	_eErr
992                     	.globl	_eDisplay_Interfaces
993                     	.globl	_sADC
994                     	.globl	_eADCChannel
995                     	.globl	_eSystem_Mode
996                     	.globl	_sMemory
997                     	.globl	_sMemoryFlag
998                     	.globl	_sActual
999                     	.globl	_sForecast
1000                     	.globl	_sTempCal
1001                     	.globl	_eMeas_Status
1002                     	.globl	_sActual_Forecast
1003                     	.globl	_eTo_Actual_Ways
1004                     	.globl	_eBle_Sta
1005                     	.globl	_sBleStatus
1006                     	.globl	_eBacklight_Status
1007                     	.globl	_sBacklight
1008                     	.globl	_NUM_CODE
1009                     	.globl	_R_Table
1010                     	.globl	_CloseTable
1011                     
1012                     	.globl STK07
1013                     	.globl STK07_SAVE
1014                     	.globl STK06
1015                     	.globl STK06_SAVE
1016                     	.globl STK05
1017                     	.globl STK05_SAVE
1018                     	.globl STK04
1019                     	.globl STK04_SAVE
1020                     	.globl STK03
1021                     	.globl STK03_SAVE
1022                     	.globl STK02
1023                     	.globl STK02_SAVE
1024                     	.globl STK01
1025                     	.globl STK01_SAVE
1026                     	.globl STK00
1027                     	.globl STK00_SAVE
1028                     ;--------------------------------------------------------
1029                     ; global -1 declarations
1030                     ;--------------------------------------------------------
1031                     	.globl	_eBuzzer_Status
1032                     	.globl	_Flag_No_Buzzer
1033                     
1034                     	.globl	_memcpy
1035                     ;--------------------------------------------------------
1036                     ; global -2 definitions
1037                     ;--------------------------------------------------------
1038                     	.area DSEG(DATA)
1039 016A --             _eBuzzer_Status:	.ds	1
1040                     
1041                     	.area DSEG(DATA)
1042 016B --             _Flag_No_Buzzer:	.ds	1
1043                     
1044                     	.area DSEG(DATA)
1045                     __SWTGTID	.equ	0xA6A6B2CF
1046                     
1047                     	.area DSEG(DATA)
1048                     _INDF0	.equ	0x0
1049                     
1050                     	.area DSEG(DATA)
1051                     _POINC0	.equ	0x1
1052                     
1053                     	.area DSEG(DATA)
1054                     _PODEC0	.equ	0x2
1055                     
1056                     	.area DSEG(DATA)
1057                     _PRINC0	.equ	0x3
1058                     
1059                     	.area DSEG(DATA)
1060                     _PLUSW0	.equ	0x4
1061                     
1062                     	.area DSEG(DATA)
1063                     _INDF1	.equ	0x5
1064                     
1065                     	.area DSEG(DATA)
1066                     _POINC1	.equ	0x6
1067                     
1068                     	.area DSEG(DATA)
1069                     _PODEC1	.equ	0x7
1070                     
1071                     	.area DSEG(DATA)
1072                     _PRINC1	.equ	0x8
1073                     
1074                     	.area DSEG(DATA)
1075                     _PLUSW1	.equ	0x9
1076                     
1077                     	.area DSEG(DATA)
1078                     _INDF2	.equ	0xA
1079                     
1080                     	.area DSEG(DATA)
1081                     _POINC2	.equ	0xB
1082                     
1083                     	.area DSEG(DATA)
1084                     _PODEC2	.equ	0xC
1085                     
1086                     	.area DSEG(DATA)
1087                     _PRINC2	.equ	0xD
1088                     
1089                     	.area DSEG(DATA)
1090                     _PLUSW2	.equ	0xE
1091                     
1092                     	.area DSEG(DATA)
1093                     _FSR0H	.equ	0xF
1094                     
1095                     	.area DSEG(DATA)
1096                     _FSR0L	.equ	0x10
1097                     
1098                     	.area DSEG(DATA)
1099                     _FSR1H	.equ	0x11
1100                     
1101                     	.area DSEG(DATA)
1102                     _FSR1L	.equ	0x12
1103                     
1104                     	.area DSEG(DATA)
1105                     _FSR2H	.equ	0x13
1106                     
1107                     	.area DSEG(DATA)
1108                     _FSR2L	.equ	0x14
1109                     
1110                     	.area DSEG(DATA)
1111                     _TOSH	.equ	0x16
1112                     
1113                     	.area DSEG(DATA)
1114                     _TOSL	.equ	0x17
1115                     
1116                     	.area DSEG(DATA)
1117                     _SKCN	.equ	0x18
1118                     
1119                     	.area DSEG(DATA)
1120                     _PCLATH	.equ	0x1A
1121                     
1122                     	.area DSEG(DATA)
1123                     _PCLATL	.equ	0x1B
1124                     
1125                     	.area DSEG(DATA)
1126                     _TBLPTRH	.equ	0x1D
1127                     
1128                     	.area DSEG(DATA)
1129                     _TBLPTRL	.equ	0x1E
1130                     
1131                     	.area DSEG(DATA)
1132                     _TBLDH	.equ	0x1F
1133                     
1134                     	.area DSEG(DATA)
1135                     _TBLDL	.equ	0x20
1136                     
1137                     	.area DSEG(DATA)
1138                     _PRODH	.equ	0x21
1139                     
1140                     	.area DSEG(DATA)
1141                     _PRODL	.equ	0x22
1142                     
1143                     	.area DSEG(DATA)
1144                     _INTE0	.equ	0x23
1145                     
1146                     	.area DSEG(DATA)
1147                     _INTE1	.equ	0x24
1148                     
1149                     	.area DSEG(DATA)
1150                     _INTE2	.equ	0x25
1151                     
1152                     	.area DSEG(DATA)
1153                     _INTF0	.equ	0x26
1154                     
1155                     	.area DSEG(DATA)
1156                     _INTF1	.equ	0x27
1157                     
1158                     	.area DSEG(DATA)
1159                     _INTF2	.equ	0x28
1160                     
1161                     	.area DSEG(DATA)
1162                     _WREG	.equ	0x29
1163                     
1164                     	.area DSEG(DATA)
1165                     _BSRCN	.equ	0x2A
1166                     
1167                     	.area DSEG(DATA)
1168                     _STATUS	.equ	0x2B
1169                     
1170                     	.area DSEG(DATA)
1171                     _MSTAT	.equ	0x2B
1172                     
1173                     	.area DSEG(DATA)
1174                     _PSTAT	.equ	0x2C
1175                     
1176                     	.area DSEG(DATA)
1177                     _BIECN	.equ	0x2E
1178                     
1179                     	.area DSEG(DATA)
1180                     _BIEARH	.equ	0x2F
1181                     
1182                     	.area DSEG(DATA)
1183                     _BIEARL	.equ	0x30
1184                     
1185                     	.area DSEG(DATA)
1186                     _BIEDRH	.equ	0x31
1187                     
1188                     	.area DSEG(DATA)
1189                     _BIEDRL	.equ	0x32
1190                     
1191                     	.area DSEG(DATA)
1192                     _PWRCN	.equ	0x33
1193                     
1194                     	.area DSEG(DATA)
1195                     _OSCCN0	.equ	0x34
1196                     
1197                     	.area DSEG(DATA)
1198                     _OSCCN1	.equ	0x35
1199                     
1200                     	.area DSEG(DATA)
1201                     _OSCCN2	.equ	0x36
1202                     
1203                     	.area DSEG(DATA)
1204                     _CSFCN0	.equ	0x37
1205                     
1206                     	.area DSEG(DATA)
1207                     _CSFCN1	.equ	0x38
1208                     
1209                     	.area DSEG(DATA)
1210                     _WDTCN	.equ	0x39
1211                     
1212                     	.area DSEG(DATA)
1213                     _AD1H	.equ	0x3A
1214                     
1215                     	.area DSEG(DATA)
1216                     _AD1M	.equ	0x3B
1217                     
1218                     	.area DSEG(DATA)
1219                     _AD1L	.equ	0x3C
1220                     
1221                     	.area DSEG(DATA)
1222                     _AD1CN0	.equ	0x3D
1223                     
1224                     	.area DSEG(DATA)
1225                     _AD1CN1	.equ	0x3E
1226                     
1227                     	.area DSEG(DATA)
1228                     _AD1CN2	.equ	0x3F
1229                     
1230                     	.area DSEG(DATA)
1231                     _AD1CN3	.equ	0x40
1232                     
1233                     	.area DSEG(DATA)
1234                     _AD1CN4	.equ	0x41
1235                     
1236                     	.area DSEG(DATA)
1237                     _AD1CN5	.equ	0x42
1238                     
1239                     	.area DSEG(DATA)
1240                     _LVDCN	.equ	0x43
1241                     
1242                     	.area DSEG(DATA)
1243                     _TMA1CN	.equ	0x44
1244                     
1245                     	.area DSEG(DATA)
1246                     _TMA1R	.equ	0x45
1247                     
1248                     	.area DSEG(DATA)
1249                     _TMA1C	.equ	0x46
1250                     
1251                     	.area DSEG(DATA)
1252                     _TB1FLAG	.equ	0x47
1253                     
1254                     	.area DSEG(DATA)
1255                     _TB1CN0	.equ	0x48
1256                     
1257                     	.area DSEG(DATA)
1258                     _TB1CN1	.equ	0x49
1259                     
1260                     	.area DSEG(DATA)
1261                     _TB1RH	.equ	0x4A
1262                     
1263                     	.area DSEG(DATA)
1264                     _TB1RL	.equ	0x4B
1265                     
1266                     	.area DSEG(DATA)
1267                     _TB1C0H	.equ	0x4C
1268                     
1269                     	.area DSEG(DATA)
1270                     _TB1C0L	.equ	0x4D
1271                     
1272                     	.area DSEG(DATA)
1273                     _TB1C1H	.equ	0x4E
1274                     
1275                     	.area DSEG(DATA)
1276                     _TB1C1L	.equ	0x4F
1277                     
1278                     	.area DSEG(DATA)
1279                     _TB1C2H	.equ	0x50
1280                     
1281                     	.area DSEG(DATA)
1282                     _TB1C2L	.equ	0x51
1283                     
1284                     	.area DSEG(DATA)
1285                     _TC1CN0	.equ	0x52
1286                     
1287                     	.area DSEG(DATA)
1288                     _PT1	.equ	0x53
1289                     
1290                     	.area DSEG(DATA)
1291                     _TRISC1	.equ	0x54
1292                     
1293                     	.area DSEG(DATA)
1294                     _PT1DA	.equ	0x55
1295                     
1296                     	.area DSEG(DATA)
1297                     _PT1PU	.equ	0x56
1298                     
1299                     	.area DSEG(DATA)
1300                     _PT1M1	.equ	0x57
1301                     
1302                     	.area DSEG(DATA)
1303                     _PT1INT	.equ	0x58
1304                     
1305                     	.area DSEG(DATA)
1306                     _PT1INTE	.equ	0x59
1307                     
1308                     	.area DSEG(DATA)
1309                     _PT1INTF	.equ	0x5A
1310                     
1311                     	.area DSEG(DATA)
1312                     _PT2	.equ	0x5B
1313                     
1314                     	.area DSEG(DATA)
1315                     _TRISC2	.equ	0x5C
1316                     
1317                     	.area DSEG(DATA)
1318                     _PT2DA	.equ	0x5D
1319                     
1320                     	.area DSEG(DATA)
1321                     _PT2PU	.equ	0x5E
1322                     
1323                     	.area DSEG(DATA)
1324                     _PT2INT	.equ	0x5F
1325                     
1326                     	.area DSEG(DATA)
1327                     _PT2INTE	.equ	0x60
1328                     
1329                     	.area DSEG(DATA)
1330                     _PT2INTF	.equ	0x61
1331                     
1332                     	.area DSEG(DATA)
1333                     _PT6	.equ	0x62
1334                     
1335                     	.area DSEG(DATA)
1336                     _TRISC6	.equ	0x63
1337                     
1338                     	.area DSEG(DATA)
1339                     _PT6DA	.equ	0x64
1340                     
1341                     	.area DSEG(DATA)
1342                     _PT6PU	.equ	0x65
1343                     
1344                     	.area DSEG(DATA)
1345                     _PT7	.equ	0x66
1346                     
1347                     	.area DSEG(DATA)
1348                     _TRISC7	.equ	0x67
1349                     
1350                     	.area DSEG(DATA)
1351                     _PT7DA	.equ	0x68
1352                     
1353                     	.area DSEG(DATA)
1354                     _PT7PU	.equ	0x69
1355                     
1356                     	.area DSEG(DATA)
1357                     _PT8	.equ	0x6A
1358                     
1359                     	.area DSEG(DATA)
1360                     _TRISC8	.equ	0x6B
1361                     
1362                     	.area DSEG(DATA)
1363                     _PT8DA	.equ	0x6C
1364                     
1365                     	.area DSEG(DATA)
1366                     _PT8PU	.equ	0x6D
1367                     
1368                     	.area DSEG(DATA)
1369                     _SSPCN0	.equ	0x6E
1370                     
1371                     	.area DSEG(DATA)
1372                     _SSPSTA0	.equ	0x6F
1373                     
1374                     	.area DSEG(DATA)
1375                     _SSPBUF0	.equ	0x70
1376                     
1377                     	.area DSEG(DATA)
1378                     _CFG0	.equ	0x71
1379                     
1380                     	.area DSEG(DATA)
1381                     _ACT0	.equ	0x72
1382                     
1383                     	.area DSEG(DATA)
1384                     _STA0	.equ	0x73
1385                     
1386                     	.area DSEG(DATA)
1387                     _CRG0	.equ	0x74
1388                     
1389                     	.area DSEG(DATA)
1390                     _TOC0	.equ	0x75
1391                     
1392                     	.area DSEG(DATA)
1393                     _RDB0	.equ	0x76
1394                     
1395                     	.area DSEG(DATA)
1396                     _TDB0	.equ	0x77
1397                     
1398                     	.area DSEG(DATA)
1399                     _SID0	.equ	0x78
1400                     
1401                     	.area DSEG(DATA)
1402                     _UR0CN	.equ	0x79
1403                     
1404                     	.area DSEG(DATA)
1405                     _UR0STA	.equ	0x7A
1406                     
1407                     	.area DSEG(DATA)
1408                     _BA0CN	.equ	0x7B
1409                     
1410                     	.area DSEG(DATA)
1411                     _BG0RH	.equ	0x7C
1412                     
1413                     	.area DSEG(DATA)
1414                     _BG0RL	.equ	0x7D
1415                     
1416                     	.area DSEG(DATA)
1417                     _TX0R	.equ	0x7E
1418                     
1419                     	.area DSEG(DATA)
1420                     _RC0REG	.equ	0x7F
1421                     
1422                     	.area DSEG(DATA)
1423                     _LCDCN1	.equ	0x180
1424                     
1425                     	.area DSEG(DATA)
1426                     _LCDCN2	.equ	0x181
1427                     
1428                     	.area DSEG(DATA)
1429                     _LCDCN3	.equ	0x182
1430                     
1431                     	.area DSEG(DATA)
1432                     _LCDCN4	.equ	0x183
1433                     
1434                     	.area DSEG(DATA)
1435                     _LCDCN5	.equ	0x184
1436                     
1437                     	.area DSEG(DATA)
1438                     _LCDCN6	.equ	0x185
1439                     
1440                     	.area DSEG(DATA)
1441                     _LCDCN7	.equ	0x186
1442                     
1443                     	.area DSEG(DATA)
1444                     _LCDCN8	.equ	0x187
1445                     
1446                     	.area DSEG(DATA)
1447                     _LCD0	.equ	0x188
1448                     
1449                     	.area DSEG(DATA)
1450                     _LCD1	.equ	0x189
1451                     
1452                     	.area DSEG(DATA)
1453                     _LCD2	.equ	0x18A
1454                     
1455                     	.area DSEG(DATA)
1456                     _LCD3	.equ	0x18B
1457                     
1458                     	.area DSEG(DATA)
1459                     _LCD4	.equ	0x18C
1460                     
1461                     	.area DSEG(DATA)
1462                     _LCD5	.equ	0x18D
1463                     
1464                     	.area DSEG(DATA)
1465                     _LCD6	.equ	0x18E
1466                     
1467                     	.area DSEG(DATA)
1468                     _LCD7	.equ	0x18F
1469                     
1470                     	.area DSEG(DATA)
1471                     _LCD8	.equ	0x190
1472                     
1473                     	.area DSEG(DATA)
1474                     _LCD9	.equ	0x191
1475                     
1476                     	.area DSEG(DATA)
1477                     _UR2CN	.equ	0x192
1478                     
1479                     	.area DSEG(DATA)
1480                     _UR2STA	.equ	0x193
1481                     
1482                     	.area DSEG(DATA)
1483                     _BA2CN	.equ	0x194
1484                     
1485                     	.area DSEG(DATA)
1486                     _BG2RH	.equ	0x195
1487                     
1488                     	.area DSEG(DATA)
1489                     _BG2RL	.equ	0x196
1490                     
1491                     	.area DSEG(DATA)
1492                     _TX2R	.equ	0x197
1493                     
1494                     	.area DSEG(DATA)
1495                     _RC2REG	.equ	0x198
1496                     
1497                     	.area DSEG(DATA)
1498                     _TMA2R	.equ	0x1E8
1499                     
1500                     	.area DSEG(DATA)
1501                     _TMA2C	.equ	0x1E9
1502                     
1503                     	.area DSEG(DATA)
1504                     _LEDCN	.equ	0x1EA
1505                     
1506                     	.area DSEG(DATA)
1507                     _IQ0	.equ	0x1EB
1508                     
1509                     	.area DSEG(DATA)
1510                     _IQ1	.equ	0x1EC
1511                     
1512                     	.area DSEG(DATA)
1513                     _DGCON1	.equ	0x1ED
1514                     
1515                     	.area DSEG(DATA)
1516                     _DGCON2	.equ	0x1EE
1517                     
1518                     	.area DSEG(DATA)
1519                     _ADCRH	.equ	0x3A
1520                     
1521                     	.area DSEG(DATA)
1522                     _ADCRM	.equ	0x3B
1523                     
1524                     	.area DSEG(DATA)
1525                     _ADCRL	.equ	0x3C
1526                     
1527                     	.area DSEG(DATA)
1528                     _TEMDATA	.equ	0x2E0
1529                     
1530                     ;--------------------------------------------------------
1531                     ; absolute symbol definitions
1532                     ;--------------------------------------------------------
1533                     ;--------------------------------------------------------
1534                     ; compiler-defined variables
1535                     ;--------------------------------------------------------
1536                     	.area IDATA (DATA,REL,CON); pre-def
1537                     	.area IDATAROM (CODE,REL,CON); pre-def
1538                     	.area UDATA (DATA,REL,CON); pre-def
1539                     	.area UDATA (DATA,REL,CON) ;UDL_App_Buzzer_0	udata
1540 @FSR2-CurrentOffset+001 --         r0x108D:	.ds	1
1541 @FSR2-CurrentOffset+002 --         r0x108E:	.ds	1
1542 @FSR2-CurrentOffset+003 --         r0x108F:	.ds	1
1543 @FSR2-CurrentOffset+004 --         r0x1090:	.ds	1
1544                     	.area LOCALSTK (STK); local stack var
1545                     	.globl _Timer_Experience_STK06
1546                     	.globl _Timer_Experience_STK05
1547                     	.globl _Timer_Experience_STK04
1548                     	.globl _Timer_Experience_STK03
1549                     	.globl _Timer_Experience_STK02
1550                     	.globl _Timer_Experience_STK01
1551                     	.globl _Timer_Experience_STK00
1552                     	.globl _Centigrade_Convert_Fahrenheit_STK00
1553                     ;--------------------------------------------------------
1554                     ; initialized data
1555                     ;--------------------------------------------------------
1556                     ;--------------------------------------------------------
1557                     ; initialized data - mirror
1558                     ;--------------------------------------------------------
1559                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Buzzer$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1560                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Buzzer$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1561                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1562                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1563                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1564                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1565                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1566                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1567                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1568                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1569                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1570                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1571                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1572                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1573                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1574                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1575                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1576                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1577                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1578                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1579                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1580                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1581                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1582                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1583                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1584                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1585                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1586                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1587                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1588                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1589                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1590                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1591                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1592                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1593                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1594                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1595                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1596                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1597                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1598                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1599                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1600                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1601                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1602                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1603                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1604                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1605                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1606                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1607                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1608                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1609                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1610                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1611                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1612                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1613                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1614                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1615                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1616                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1617                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1618                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1619                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1620                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1621                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1622                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1623                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1624                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1625                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1626                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1627                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1628                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1629                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1630                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1631                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1632                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1633                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1634                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1635                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1636                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1637                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1638                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1639                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1640                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1641                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1642                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1643                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1644                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1645                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1646                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1647                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1648                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1649                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1650                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1651                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1652                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Buzzer$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1653                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1654                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1655                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1656                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Buzzer$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1657                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1658                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1659                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Buzzer$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1660                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Buzzer$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1661                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Buzzer$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1662                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1663                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1664                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Buzzer$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1665                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Buzzer$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1666                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Buzzer$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1667                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Buzzer$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1668                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Buzzer$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1669                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1670                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1671                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1672                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1673                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1674                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1675                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1676                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1677                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1678                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1679                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1680                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1681                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1682                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1683                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1684                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1685                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1686                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1687                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1688                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1689                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1690                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1691                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1692                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1693                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1694                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1695                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1696                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1697                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1698                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Buzzer$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1699                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1700                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1701                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Buzzer$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1702                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Buzzer$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1703                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1704                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Buzzer$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1705                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1706                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1707                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1708                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1709                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1710                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1711                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1712                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1713                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1714                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1715                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1716                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1717                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1718                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1719                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1720                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1721                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1722                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1723                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1724                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1725                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1726                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1727                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1728                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1729                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1730                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1731                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1732                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1733                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1734                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1735                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1736                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1737                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1738                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1739                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1740                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1741                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1742                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1743                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1744                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1745                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1746                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1747                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1748                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1749                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1750                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1751                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1752                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1753                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1754                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1755                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1756                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1757                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1758                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1759                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1760                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1761                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1762                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1763                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1764                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1765                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1766                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1767                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1768                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1769                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1770                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1771                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1772                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1773                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1774                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1775                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1776                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1777                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1778                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1779                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1780                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1781                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1782                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1783                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1784                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1785                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1786                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1787                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1788                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1789                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1790                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1791                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1792                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Buzzer$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1793                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Buzzer$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1794                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Buzzer$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1795                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1796                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1797                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Buzzer$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1798                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1799                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1800                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1801                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1802                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1803                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1804                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1805                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1806                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1807                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1808                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1809                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1810                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1811                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1812                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1813                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1814                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1815                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1816                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1817                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1818                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1819                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1820                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1821                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1822                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1823                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1824                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1825                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1826                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1827                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1828                     	;Following is optimization info, 
1829                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1830                     	;--cdb--W:r0x108D:NULL+0:-1:1
1831                     	;--cdb--W:r0x108D:NULL+0:-1:0
1832                     	;--cdb--W:r0x108D:STK00+0:-1:0
1833                     	;--cdb--W:r0x108E:NULL+0:-1:0
1834                     	;--cdb--W:r0x108E:NULL+0:-1:1
1835                     	;--c2db--RNG$_Buzzer_Drive_Result_10000_418$420$423
1836                     	END
