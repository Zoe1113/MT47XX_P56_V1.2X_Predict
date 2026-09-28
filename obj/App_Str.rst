001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_Str.c"
009                     	.module App_Str
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Str$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Str$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Str$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Str$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Str$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Str$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Str$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Str$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Str$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Str$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Str$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Str$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Str$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Str$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Str$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Str$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Str$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Str$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Str$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Str$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Str:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Str$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Str$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Str$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
128                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
135                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
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
162                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
163                     	;--cdb--F:App_Str:G$memchrn$0$0({2}DF,SC:U),C,0,0,0,0,0
164                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:App_Str:G$Delay_ms$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     ;--------------------------------------------------------
167                     ; overlayable items in internal ram 
168                     ;--------------------------------------------------------
169                     ;	udata_ovr
170                     .area CCODE (code,REL,CON) ; App_Str-code 
171                     .globl _Delay_ms
172                     
173                     ;--------------------------------------------------------
174                     	.FUNC _Delay_ms:$r:0:1:$L:r0x1096:$L:r0x1097
175                     ;--------------------------------------------------------
176                     ;	;.line	43; ".\Source\App_Str.c"	void Delay_ms(uint8 ms)
177 128B [00] [Y] C482      _Delay_ms:	;Function start
178 128C [02] [Y] 6681      	MVF	r0x1096,1,0
179                     ;	;.line	45; ".\Source\App_Str.c"	uint8 c = 44;
180 128D [02] [Y] 062C      	MVL	0x2c
181 128E [02] [Y] 6680      	MVF	r0x1097,1,0
182                     _00117_DS_:
183                     ;	;.line	46; ".\Source\App_Str.c"	while(ms)
184 128F [02] [Y] 4C81      	RRF	r0x1096,0,0
185 1290 [02] [Y] 71        	BTSZ	_STATUS,0
186 1290 [02] 08        	JMP	_00120_DS_
187                     _00114_DS_:
188                     ;	;.line	48; ".\Source\App_Str.c"	while(c)
189 1291 [02] [Y] 4C80      	RRF	r0x1097,0,0
190 1292 [02] [Y] 71        	BTSZ	_STATUS,0
191 1292 [02] 02        	JMP	_00116_DS_
192                     ;	;.line	50; ".\Source\App_Str.c"	c--;
193 1293 [02] [Y] 3280      	DCF	r0x1097,1,0
194 1294 [02] [Y] 7FFC      	JMP	_00114_DS_
195                     _00116_DS_:
196                     ;	;.line	52; ".\Source\App_Str.c"	c = 44;
197 1295 [02] [Y] 062C      	MVL	0x2c
198 1296 [02] [Y] 6680      	MVF	r0x1097,1,0
199                     ;	;.line	53; ".\Source\App_Str.c"	ms--;
200 1297 [02] [Y] 3281      	DCF	r0x1096,1,0
201 1298 [02] [Y] 7FF6      	JMP	_00117_DS_
202 1299 [02] [Y] C4BE      _00120_DS_:
203                     ;	;.line	55; ".\Source\App_Str.c"	}
204 129A [00] [Y] 000A      	RET	
205                     ; exit point of _Delay_ms
206                     	.ENDFUNC	_Delay_ms
207                     ;--------------------------------------------------------
208                     
209                     .globl _memchrn
210                     
211                     ;--------------------------------------------------------
212                     	.FUNC _memchrn:$r:1:4:$C:__g2ptrget1\
213                     :$L:r0x108D:$L:_memchrn_STK00:$L:_memchrn_STK01:$L:_memchrn_STK02:$L:r0x1090\
214                     :$L:r0x1091
215                     ;--------------------------------------------------------
216                     ;	;.line	23; ".\Source\App_Str.c"	uint8 memchrn(uint8* pMem, uint8 chr, uint8 Cnt)
217 0FAE [00] [Y] C483      _memchrn:	;Function start
218 0FAF [03] [Y] 6682      	MVF	r0x108D,1,0
219                     ;	;.line	25; ".\Source\App_Str.c"	uint8 nchr = 0;
220 0FB0 [03] [Y] 0C81      	CLRF	r0x1090,0
221                     _00107_DS_:
222                     ;	;.line	27; ".\Source\App_Str.c"	while(Cnt--)
223 0FB1 [03] [Y] 3285      	DCF	_memchrn_STK02,1,0
224 0FB2 [03] [Y] 4085      	INSUZ	_memchrn_STK02,0,0
225 0FB3 [03] [Y] 780D      	JMP	_00109_DS_
226                     ;	;.line	29; ".\Source\App_Str.c"	if(*pMem++ == chr)
227 0FB4 [03] [Y] 6483      	MVF	_memchrn_STK00,0,0
228 0FB5 [03] [Y] 660D      	MVF	__g2ptrget1_STK00,1,0
229 0FB6 [04] [Y] 6483      	MVF	r0x108D,0,0
230 0FB7 [04] [Y] C000 F6A3 	CALL	__g2ptrget1
231 0FB9 [03] [Y] 6680      	MVF	r0x1091,1,0
232 0FBA [03] [Y] 4283      	INSUZ	_memchrn_STK00,1,0
233 0FBB [03] [Y] 3A82      	INF	r0x108D,1,0
234 0FBC [03] [Y] 6484      	MVF	_memchrn_STK01,0,0
235 0FBD [03] [Y] 6C80      	CPSE	r0x1091,0
236 0FBE [03] [Y] 7FF2      	JMP	_00107_DS_
237                     ;	;.line	31; ".\Source\App_Str.c"	nchr++;
238 0FBF [03] [Y] 3A81      	INF	r0x1090,1,0
239 0FC0 [03] [Y] 7FF0      	JMP	_00107_DS_
240                     _00109_DS_:
241                     ;	;.line	34; ".\Source\App_Str.c"	return nchr;
242 0FC1 [03] [Y] 6481      	MVF	r0x1090,0,0
243                     ;	;.line	35; ".\Source\App_Str.c"	}
244 0FC2 [03] [Y] C4BA 000A 	RET	
245                     ; exit point of _memchrn
246                     	.ENDFUNC	_memchrn
247                     ;--------------------------------------------------------
248                     
249                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
250                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
251                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
252                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
253                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
254                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
255                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
256                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
257                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
258                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
259                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
260                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
261                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
262                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
263                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
264                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
265                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
266                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
267                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
268                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
269                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
270                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
271                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
272                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
273                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Str$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
274                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Str$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
275                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Str$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
276                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
277                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
278                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
279                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
280                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
281                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
282                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
283                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
284                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
285                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
286                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
287                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
288                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
289                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
290                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
291                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
292                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
293                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
294                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
295                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
296                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
297                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
298                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
299                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
300                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
301                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
302                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
303                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
304                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
305                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
306                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
307                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
308                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
309                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
310                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
311                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
312                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
313                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
314                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
315                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
316                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
317                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
318                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
319                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
320                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
321                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
322                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
323                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
324                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
325                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
326                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
327                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
328                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
329                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
330                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
331                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
332                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
333                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
334                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
335                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
336                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
337                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
338                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
339                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
340                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
341                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
342                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
343                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
344                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
345                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
346                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
347                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
348                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
349                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
350                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
351                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
352                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
353                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
354                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
355                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
356                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
357                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
358                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
359                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
360                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
361                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
362                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
363                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
364                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
365                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
366                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
367                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
368                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
369                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
370                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
371                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
372                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
373                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
374                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
375                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
376                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
377                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
378                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
379                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
380                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
381                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
382                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
383                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
384                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
385                     	;--cdb--S:LApp_Str.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
386                     	;--cdb--S:LApp_Str.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
387                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Str$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
388                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
389                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Str$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
390                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Str$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
391                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Str$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
392                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
393                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Str$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
394                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
395                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
396                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
397                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
398                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
399                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
400                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Str$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
401                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Str$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
402                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
403                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Str$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
404                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
405                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
406                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
407                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
408                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Str$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
409                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
410                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
411                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
412                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
413                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Str$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
414                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Str$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
415                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Str$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
416                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Str$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
417                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Str$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
418                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
419                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Str$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
420                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
421                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
422                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Str$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
423                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
424                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Str$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
425                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
426                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
427                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
428                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
429                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
430                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
431                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
432                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
433                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
434                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
435                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
436                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
437                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
438                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
439                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
440                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
441                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
442                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
443                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
444                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
445                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
446                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
447                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
448                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
449                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
450                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
451                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
452                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
453                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
454                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
455                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
456                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
457                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
458                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
459                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
460                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
461                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
462                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
463                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
464                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
465                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
466                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
467                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
468                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
469                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
470                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
471                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
472                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
473                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
474                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
475                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
476                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
477                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
478                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
479                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
480                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
481                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
482                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
483                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
484                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
485                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
486                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
487                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
488                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
489                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
490                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
491                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
492                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
493                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
494                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
495                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
496                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
497                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
498                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
499                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
500                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
501                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
502                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
503                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
504                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
505                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
506                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
507                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
508                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
509                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
510                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
511                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
512                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
513                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
514                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
515                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
516                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
517                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
518                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
519                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
520                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
521                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
522                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
523                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
524                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
525                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
526                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
527                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
528                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
529                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
530                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
531                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
532                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
533                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
534                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
535                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
536                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
537                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
538                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
539                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
540                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
541                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
542                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
543                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
544                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
545                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
546                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
547                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
548                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
549                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
550                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
551                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
552                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
553                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
554                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
555                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
556                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
557                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
558                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
559                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
560                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
561                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
562                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
563                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
564                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
565                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
566                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
567                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
568                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
569                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
570                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
571                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
572                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
573                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
574                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
575                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
576                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
577                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
578                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
579                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
580                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
581                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
582                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
583                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
584                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
585                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
586                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
587                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
588                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
589                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
590                     	;--cdb--S:LApp_Str.memchrn._memchrn_Cnt_10000_416$Cnt$2710$416({1}SC:U),R,0,0,[_memchrn_STK02]
591                     	;--cdb--S:LApp_Str.memchrn._memchrn_chr_10000_416$chr$2710$416({1}SC:U),R,0,0,[_memchrn_STK01]
592                     	;--cdb--S:LApp_Str.memchrn._memchrn_pMem_10000_416$pMem$2710$416({2}DT,SC:U),R,0,0,[_memchrn_STK00,r0x108D]
593                     	;--cdb--S:LApp_Str.memchrn._memchrn_nchr_10000_417$nchr$2710$417({1}SC:U),R,0,0,[r0x1090]
594                     	;--cdb--S:LApp_Str.Delay_ms._Delay_ms_ms_10000_421$ms$2710$421({1}SC:U),R,0,0,[r0x1096]
595                     	;--cdb--S:LApp_Str.Delay_ms._Delay_ms_c_10000_422$c$2710$422({1}SC:U),R,0,0,[r0x1097]
596                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
597                     ;--------------------------------------------------------
598                     ; external declarations
599                     ;--------------------------------------------------------
600                     	.globl	_FSR0
601                     	.globl	_FSR1
602                     	.globl	_FSR2
603                     	.globl	_ADCR
604                     	.globl	_sIIC
605                     	.globl	_BIE_Available_Addr
606                     	.globl	_sTIMx
607                     	.globl	_sUARTx
608                     	.globl	_sAutoBps
609                     	.globl	_eAutoBps_Status
610                     	.globl	_sTest
611                     	.globl	_eTempUnit
612                     	.globl	_eBondingTempUnit
613                     	.globl	_eVersionCode
614                     	.globl	_eMeasureMode
615                     	.globl	_eBinding_Status
616                     	.globl	_Enter_PrepareSleep_Flag
617                     	.globl	_sButton
618                     	.globl	_sTimeStamp
619                     	.globl	_eButton_Status
620                     	.globl	_sLVD
621                     	.globl	_UnitExchangeCompleted
622                     	.globl	_ERR
623                     	.globl	_eErr
624                     	.globl	_eDisplay_Interfaces
625                     	.globl	_sADC
626                     	.globl	_eADCChannel
627                     	.globl	_eSystem_Mode
628                     	.globl	_eBuzzer_Status
629                     	.globl	_Flag_No_Buzzer
630                     	.globl	_sMemory
631                     	.globl	_sMemoryFlag
632                     	.globl	_sActual
633                     	.globl	_sForecast
634                     	.globl	_sTempCal
635                     	.globl	_eMeas_Status
636                     	.globl	_sActual_Forecast
637                     	.globl	_eTo_Actual_Ways
638                     	.globl	_eBle_Sta
639                     	.globl	_sBleStatus
640                     	.globl	_eBacklight_Status
641                     	.globl	_sBacklight
642                     	.globl	_NUM_CODE
643                     	.globl	_R_Table
644                     	.globl	_CloseTable
645                     	.globl	__g2ptrget1
646                     
647                     	.globl STK07
648                     	.globl STK07_SAVE
649                     	.globl STK06
650                     	.globl STK06_SAVE
651                     	.globl STK05
652                     	.globl STK05_SAVE
653                     	.globl STK04
654                     	.globl STK04_SAVE
655                     	.globl STK03
656                     	.globl STK03_SAVE
657                     	.globl STK02
658                     	.globl STK02_SAVE
659                     	.globl STK01
660                     	.globl STK01_SAVE
661                     	.globl STK00
662                     	.globl STK00_SAVE
663                     ;--------------------------------------------------------
664                     ; global -1 declarations
665                     ;--------------------------------------------------------
666                     	.globl	_memchrn
667                     	.globl	_Delay_ms
668                     
669                     	.globl	_memcpy
670                     ;--------------------------------------------------------
671                     ; global -2 definitions
672                     ;--------------------------------------------------------
673                     	.area DSEG(DATA)
674                     __SWTGTID	.equ	0xA6A6B2CF
675                     
676                     	.area DSEG(DATA)
677                     _INDF0	.equ	0x0
678                     
679                     	.area DSEG(DATA)
680                     _POINC0	.equ	0x1
681                     
682                     	.area DSEG(DATA)
683                     _PODEC0	.equ	0x2
684                     
685                     	.area DSEG(DATA)
686                     _PRINC0	.equ	0x3
687                     
688                     	.area DSEG(DATA)
689                     _PLUSW0	.equ	0x4
690                     
691                     	.area DSEG(DATA)
692                     _INDF1	.equ	0x5
693                     
694                     	.area DSEG(DATA)
695                     _POINC1	.equ	0x6
696                     
697                     	.area DSEG(DATA)
698                     _PODEC1	.equ	0x7
699                     
700                     	.area DSEG(DATA)
701                     _PRINC1	.equ	0x8
702                     
703                     	.area DSEG(DATA)
704                     _PLUSW1	.equ	0x9
705                     
706                     	.area DSEG(DATA)
707                     _INDF2	.equ	0xA
708                     
709                     	.area DSEG(DATA)
710                     _POINC2	.equ	0xB
711                     
712                     	.area DSEG(DATA)
713                     _PODEC2	.equ	0xC
714                     
715                     	.area DSEG(DATA)
716                     _PRINC2	.equ	0xD
717                     
718                     	.area DSEG(DATA)
719                     _PLUSW2	.equ	0xE
720                     
721                     	.area DSEG(DATA)
722                     _FSR0H	.equ	0xF
723                     
724                     	.area DSEG(DATA)
725                     _FSR0L	.equ	0x10
726                     
727                     	.area DSEG(DATA)
728                     _FSR1H	.equ	0x11
729                     
730                     	.area DSEG(DATA)
731                     _FSR1L	.equ	0x12
732                     
733                     	.area DSEG(DATA)
734                     _FSR2H	.equ	0x13
735                     
736                     	.area DSEG(DATA)
737                     _FSR2L	.equ	0x14
738                     
739                     	.area DSEG(DATA)
740                     _TOSH	.equ	0x16
741                     
742                     	.area DSEG(DATA)
743                     _TOSL	.equ	0x17
744                     
745                     	.area DSEG(DATA)
746                     _SKCN	.equ	0x18
747                     
748                     	.area DSEG(DATA)
749                     _PCLATH	.equ	0x1A
750                     
751                     	.area DSEG(DATA)
752                     _PCLATL	.equ	0x1B
753                     
754                     	.area DSEG(DATA)
755                     _TBLPTRH	.equ	0x1D
756                     
757                     	.area DSEG(DATA)
758                     _TBLPTRL	.equ	0x1E
759                     
760                     	.area DSEG(DATA)
761                     _TBLDH	.equ	0x1F
762                     
763                     	.area DSEG(DATA)
764                     _TBLDL	.equ	0x20
765                     
766                     	.area DSEG(DATA)
767                     _PRODH	.equ	0x21
768                     
769                     	.area DSEG(DATA)
770                     _PRODL	.equ	0x22
771                     
772                     	.area DSEG(DATA)
773                     _INTE0	.equ	0x23
774                     
775                     	.area DSEG(DATA)
776                     _INTE1	.equ	0x24
777                     
778                     	.area DSEG(DATA)
779                     _INTE2	.equ	0x25
780                     
781                     	.area DSEG(DATA)
782                     _INTF0	.equ	0x26
783                     
784                     	.area DSEG(DATA)
785                     _INTF1	.equ	0x27
786                     
787                     	.area DSEG(DATA)
788                     _INTF2	.equ	0x28
789                     
790                     	.area DSEG(DATA)
791                     _WREG	.equ	0x29
792                     
793                     	.area DSEG(DATA)
794                     _BSRCN	.equ	0x2A
795                     
796                     	.area DSEG(DATA)
797                     _STATUS	.equ	0x2B
798                     
799                     	.area DSEG(DATA)
800                     _MSTAT	.equ	0x2B
801                     
802                     	.area DSEG(DATA)
803                     _PSTAT	.equ	0x2C
804                     
805                     	.area DSEG(DATA)
806                     _BIECN	.equ	0x2E
807                     
808                     	.area DSEG(DATA)
809                     _BIEARH	.equ	0x2F
810                     
811                     	.area DSEG(DATA)
812                     _BIEARL	.equ	0x30
813                     
814                     	.area DSEG(DATA)
815                     _BIEDRH	.equ	0x31
816                     
817                     	.area DSEG(DATA)
818                     _BIEDRL	.equ	0x32
819                     
820                     	.area DSEG(DATA)
821                     _PWRCN	.equ	0x33
822                     
823                     	.area DSEG(DATA)
824                     _OSCCN0	.equ	0x34
825                     
826                     	.area DSEG(DATA)
827                     _OSCCN1	.equ	0x35
828                     
829                     	.area DSEG(DATA)
830                     _OSCCN2	.equ	0x36
831                     
832                     	.area DSEG(DATA)
833                     _CSFCN0	.equ	0x37
834                     
835                     	.area DSEG(DATA)
836                     _CSFCN1	.equ	0x38
837                     
838                     	.area DSEG(DATA)
839                     _WDTCN	.equ	0x39
840                     
841                     	.area DSEG(DATA)
842                     _AD1H	.equ	0x3A
843                     
844                     	.area DSEG(DATA)
845                     _AD1M	.equ	0x3B
846                     
847                     	.area DSEG(DATA)
848                     _AD1L	.equ	0x3C
849                     
850                     	.area DSEG(DATA)
851                     _AD1CN0	.equ	0x3D
852                     
853                     	.area DSEG(DATA)
854                     _AD1CN1	.equ	0x3E
855                     
856                     	.area DSEG(DATA)
857                     _AD1CN2	.equ	0x3F
858                     
859                     	.area DSEG(DATA)
860                     _AD1CN3	.equ	0x40
861                     
862                     	.area DSEG(DATA)
863                     _AD1CN4	.equ	0x41
864                     
865                     	.area DSEG(DATA)
866                     _AD1CN5	.equ	0x42
867                     
868                     	.area DSEG(DATA)
869                     _LVDCN	.equ	0x43
870                     
871                     	.area DSEG(DATA)
872                     _TMA1CN	.equ	0x44
873                     
874                     	.area DSEG(DATA)
875                     _TMA1R	.equ	0x45
876                     
877                     	.area DSEG(DATA)
878                     _TMA1C	.equ	0x46
879                     
880                     	.area DSEG(DATA)
881                     _TB1FLAG	.equ	0x47
882                     
883                     	.area DSEG(DATA)
884                     _TB1CN0	.equ	0x48
885                     
886                     	.area DSEG(DATA)
887                     _TB1CN1	.equ	0x49
888                     
889                     	.area DSEG(DATA)
890                     _TB1RH	.equ	0x4A
891                     
892                     	.area DSEG(DATA)
893                     _TB1RL	.equ	0x4B
894                     
895                     	.area DSEG(DATA)
896                     _TB1C0H	.equ	0x4C
897                     
898                     	.area DSEG(DATA)
899                     _TB1C0L	.equ	0x4D
900                     
901                     	.area DSEG(DATA)
902                     _TB1C1H	.equ	0x4E
903                     
904                     	.area DSEG(DATA)
905                     _TB1C1L	.equ	0x4F
906                     
907                     	.area DSEG(DATA)
908                     _TB1C2H	.equ	0x50
909                     
910                     	.area DSEG(DATA)
911                     _TB1C2L	.equ	0x51
912                     
913                     	.area DSEG(DATA)
914                     _TC1CN0	.equ	0x52
915                     
916                     	.area DSEG(DATA)
917                     _PT1	.equ	0x53
918                     
919                     	.area DSEG(DATA)
920                     _TRISC1	.equ	0x54
921                     
922                     	.area DSEG(DATA)
923                     _PT1DA	.equ	0x55
924                     
925                     	.area DSEG(DATA)
926                     _PT1PU	.equ	0x56
927                     
928                     	.area DSEG(DATA)
929                     _PT1M1	.equ	0x57
930                     
931                     	.area DSEG(DATA)
932                     _PT1INT	.equ	0x58
933                     
934                     	.area DSEG(DATA)
935                     _PT1INTE	.equ	0x59
936                     
937                     	.area DSEG(DATA)
938                     _PT1INTF	.equ	0x5A
939                     
940                     	.area DSEG(DATA)
941                     _PT2	.equ	0x5B
942                     
943                     	.area DSEG(DATA)
944                     _TRISC2	.equ	0x5C
945                     
946                     	.area DSEG(DATA)
947                     _PT2DA	.equ	0x5D
948                     
949                     	.area DSEG(DATA)
950                     _PT2PU	.equ	0x5E
951                     
952                     	.area DSEG(DATA)
953                     _PT2INT	.equ	0x5F
954                     
955                     	.area DSEG(DATA)
956                     _PT2INTE	.equ	0x60
957                     
958                     	.area DSEG(DATA)
959                     _PT2INTF	.equ	0x61
960                     
961                     	.area DSEG(DATA)
962                     _PT6	.equ	0x62
963                     
964                     	.area DSEG(DATA)
965                     _TRISC6	.equ	0x63
966                     
967                     	.area DSEG(DATA)
968                     _PT6DA	.equ	0x64
969                     
970                     	.area DSEG(DATA)
971                     _PT6PU	.equ	0x65
972                     
973                     	.area DSEG(DATA)
974                     _PT7	.equ	0x66
975                     
976                     	.area DSEG(DATA)
977                     _TRISC7	.equ	0x67
978                     
979                     	.area DSEG(DATA)
980                     _PT7DA	.equ	0x68
981                     
982                     	.area DSEG(DATA)
983                     _PT7PU	.equ	0x69
984                     
985                     	.area DSEG(DATA)
986                     _PT8	.equ	0x6A
987                     
988                     	.area DSEG(DATA)
989                     _TRISC8	.equ	0x6B
990                     
991                     	.area DSEG(DATA)
992                     _PT8DA	.equ	0x6C
993                     
994                     	.area DSEG(DATA)
995                     _PT8PU	.equ	0x6D
996                     
997                     	.area DSEG(DATA)
998                     _SSPCN0	.equ	0x6E
999                     
1000                     	.area DSEG(DATA)
1001                     _SSPSTA0	.equ	0x6F
1002                     
1003                     	.area DSEG(DATA)
1004                     _SSPBUF0	.equ	0x70
1005                     
1006                     	.area DSEG(DATA)
1007                     _CFG0	.equ	0x71
1008                     
1009                     	.area DSEG(DATA)
1010                     _ACT0	.equ	0x72
1011                     
1012                     	.area DSEG(DATA)
1013                     _STA0	.equ	0x73
1014                     
1015                     	.area DSEG(DATA)
1016                     _CRG0	.equ	0x74
1017                     
1018                     	.area DSEG(DATA)
1019                     _TOC0	.equ	0x75
1020                     
1021                     	.area DSEG(DATA)
1022                     _RDB0	.equ	0x76
1023                     
1024                     	.area DSEG(DATA)
1025                     _TDB0	.equ	0x77
1026                     
1027                     	.area DSEG(DATA)
1028                     _SID0	.equ	0x78
1029                     
1030                     	.area DSEG(DATA)
1031                     _UR0CN	.equ	0x79
1032                     
1033                     	.area DSEG(DATA)
1034                     _UR0STA	.equ	0x7A
1035                     
1036                     	.area DSEG(DATA)
1037                     _BA0CN	.equ	0x7B
1038                     
1039                     	.area DSEG(DATA)
1040                     _BG0RH	.equ	0x7C
1041                     
1042                     	.area DSEG(DATA)
1043                     _BG0RL	.equ	0x7D
1044                     
1045                     	.area DSEG(DATA)
1046                     _TX0R	.equ	0x7E
1047                     
1048                     	.area DSEG(DATA)
1049                     _RC0REG	.equ	0x7F
1050                     
1051                     	.area DSEG(DATA)
1052                     _LCDCN1	.equ	0x180
1053                     
1054                     	.area DSEG(DATA)
1055                     _LCDCN2	.equ	0x181
1056                     
1057                     	.area DSEG(DATA)
1058                     _LCDCN3	.equ	0x182
1059                     
1060                     	.area DSEG(DATA)
1061                     _LCDCN4	.equ	0x183
1062                     
1063                     	.area DSEG(DATA)
1064                     _LCDCN5	.equ	0x184
1065                     
1066                     	.area DSEG(DATA)
1067                     _LCDCN6	.equ	0x185
1068                     
1069                     	.area DSEG(DATA)
1070                     _LCDCN7	.equ	0x186
1071                     
1072                     	.area DSEG(DATA)
1073                     _LCDCN8	.equ	0x187
1074                     
1075                     	.area DSEG(DATA)
1076                     _LCD0	.equ	0x188
1077                     
1078                     	.area DSEG(DATA)
1079                     _LCD1	.equ	0x189
1080                     
1081                     	.area DSEG(DATA)
1082                     _LCD2	.equ	0x18A
1083                     
1084                     	.area DSEG(DATA)
1085                     _LCD3	.equ	0x18B
1086                     
1087                     	.area DSEG(DATA)
1088                     _LCD4	.equ	0x18C
1089                     
1090                     	.area DSEG(DATA)
1091                     _LCD5	.equ	0x18D
1092                     
1093                     	.area DSEG(DATA)
1094                     _LCD6	.equ	0x18E
1095                     
1096                     	.area DSEG(DATA)
1097                     _LCD7	.equ	0x18F
1098                     
1099                     	.area DSEG(DATA)
1100                     _LCD8	.equ	0x190
1101                     
1102                     	.area DSEG(DATA)
1103                     _LCD9	.equ	0x191
1104                     
1105                     	.area DSEG(DATA)
1106                     _UR2CN	.equ	0x192
1107                     
1108                     	.area DSEG(DATA)
1109                     _UR2STA	.equ	0x193
1110                     
1111                     	.area DSEG(DATA)
1112                     _BA2CN	.equ	0x194
1113                     
1114                     	.area DSEG(DATA)
1115                     _BG2RH	.equ	0x195
1116                     
1117                     	.area DSEG(DATA)
1118                     _BG2RL	.equ	0x196
1119                     
1120                     	.area DSEG(DATA)
1121                     _TX2R	.equ	0x197
1122                     
1123                     	.area DSEG(DATA)
1124                     _RC2REG	.equ	0x198
1125                     
1126                     	.area DSEG(DATA)
1127                     _TMA2R	.equ	0x1E8
1128                     
1129                     	.area DSEG(DATA)
1130                     _TMA2C	.equ	0x1E9
1131                     
1132                     	.area DSEG(DATA)
1133                     _LEDCN	.equ	0x1EA
1134                     
1135                     	.area DSEG(DATA)
1136                     _IQ0	.equ	0x1EB
1137                     
1138                     	.area DSEG(DATA)
1139                     _IQ1	.equ	0x1EC
1140                     
1141                     	.area DSEG(DATA)
1142                     _DGCON1	.equ	0x1ED
1143                     
1144                     	.area DSEG(DATA)
1145                     _DGCON2	.equ	0x1EE
1146                     
1147                     	.area DSEG(DATA)
1148                     _ADCRH	.equ	0x3A
1149                     
1150                     	.area DSEG(DATA)
1151                     _ADCRM	.equ	0x3B
1152                     
1153                     	.area DSEG(DATA)
1154                     _ADCRL	.equ	0x3C
1155                     
1156                     	.area DSEG(DATA)
1157                     _TEMDATA	.equ	0x2E0
1158                     
1159                     ;--------------------------------------------------------
1160                     ; absolute symbol definitions
1161                     ;--------------------------------------------------------
1162                     ;--------------------------------------------------------
1163                     ; compiler-defined variables
1164                     ;--------------------------------------------------------
1165                     	.area IDATA (DATA,REL,CON); pre-def
1166                     	.area IDATAROM (CODE,REL,CON); pre-def
1167                     	.area UDATA (DATA,REL,CON); pre-def
1168                     	.area UDATA (DATA,REL,CON) ;UDL_App_Str_0	udata
1169 @FSR2-CurrentOffset+001 --         r0x108D:	.ds	1
1170 @FSR2-CurrentOffset+002 --         r0x1090:	.ds	1
1171 @FSR2-CurrentOffset+003 --         r0x1091:	.ds	1
1172 @FSR2-CurrentOffset+001 --         r0x1096:	.ds	1
1173 @FSR2-CurrentOffset+002 --         r0x1097:	.ds	1
1174                     	.area LOCALSTK (STK); local stack var
1175 @FSR2-00 --         _memchrn_STK00:	.ds	1
1176                     	.globl _memchrn_STK00
1177 @FSR2+01 --         _memchrn_STK01:	.ds	1
1178                     	.globl _memchrn_STK01
1179 @FSR2+02 --         _memchrn_STK02:	.ds	1
1180                     	.globl _memchrn_STK02
1181                     	.globl __g2ptrget1_STK00
1182                     ;--------------------------------------------------------
1183                     ; initialized data
1184                     ;--------------------------------------------------------
1185                     ;--------------------------------------------------------
1186                     ; initialized data - mirror
1187                     ;--------------------------------------------------------
1188                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Str$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1189                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Str$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1190                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1191                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1192                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1193                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1194                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1195                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1196                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1197                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1198                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1199                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1200                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1201                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1202                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1203                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1204                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1205                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1206                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1207                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1208                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1209                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1210                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1211                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1212                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1213                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1214                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1215                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1216                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1217                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1218                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1219                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1220                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1221                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1222                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1223                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1224                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1225                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1226                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1227                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1228                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1229                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1230                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1231                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1232                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1233                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1234                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1235                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1236                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1237                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1238                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1239                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1240                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1241                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1242                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1243                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1244                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1245                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1246                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1247                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1248                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1249                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1250                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1251                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1252                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1253                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1254                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1255                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1256                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1257                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1258                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1259                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1260                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1261                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1262                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1263                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1264                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1265                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1266                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1267                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1268                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1269                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1270                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1271                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1272                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1273                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1274                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1275                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1276                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1277                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1278                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1279                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1280                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1281                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Str$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1282                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1283                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1284                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1285                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Str$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1286                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1287                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1288                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Str$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1289                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Str$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1290                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Str$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1291                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1292                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1293                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Str$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1294                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Str$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1295                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Str$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1296                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Str$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1297                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Str$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1298                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1299                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1300                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1301                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1302                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1303                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1304                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1305                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1306                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1307                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1308                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1309                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1310                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1311                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1312                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1313                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1314                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1315                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1316                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1317                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1318                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1319                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1320                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1321                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1322                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1323                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1324                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1325                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1326                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1327                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Str$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1328                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1329                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1330                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Str$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1331                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Str$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1332                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1333                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Str$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1334                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1335                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1336                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1337                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1338                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1339                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1340                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1341                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1342                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1343                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1344                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1345                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1346                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1347                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1348                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1349                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1350                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1351                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1352                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1353                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1354                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1355                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1356                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1357                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1358                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1359                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1360                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1361                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1362                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1363                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1364                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1365                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1366                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1367                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1368                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1369                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1370                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1371                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1372                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1373                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1374                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1375                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1376                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1377                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1378                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1379                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1380                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1381                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1382                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1383                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1384                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1385                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1386                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1387                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1388                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1389                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1390                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1391                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1392                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1393                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1394                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1395                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1396                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1397                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1398                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1399                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1400                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1401                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1402                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1403                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1404                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1405                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1406                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1407                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1408                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1409                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1410                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1411                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1412                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1413                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1414                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1415                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1416                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1417                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1418                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1419                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1420                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1421                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Str$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1422                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Str$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1423                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Str$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1424                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1425                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1426                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Str$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1427                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1428                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1429                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1430                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1431                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1432                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1433                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1434                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1435                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1436                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1437                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1438                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1439                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1440                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1441                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1442                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1443                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1444                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1445                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1446                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1447                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1448                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1449                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1450                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1451                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1452                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1453                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1454                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1455                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1456                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1457                     	;Following is optimization info, 
1458                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1459                     	;--cdb--W:r0x1091:NULL+0:-1:1
1460                     	;--c2db--RNG$_memchrn_Cnt_10000_416$219$240
1461                     	;--c2db--RNG$_memchrn_chr_10000_416$219$240
1462                     	;--c2db--RNG$_memchrn_pMem_10000_416$219$240
1463                     	;--c2db--RNG$_memchrn_nchr_10000_417$219$242
1464                     	;--c2db--RNG$_Delay_ms_ms_10000_421$179$202
1465                     	;--c2db--RNG$_Delay_ms_c_10000_422$179$202
1466                     	END
