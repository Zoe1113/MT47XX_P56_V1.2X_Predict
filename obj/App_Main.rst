001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
008                     ;;	.file	".\Source\App_Main.c"
009                     	.module App_Main
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Main$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Main$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Main$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Main$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Main$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Main$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Main$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Main$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Main$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Main$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Main$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Main$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Main$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Main$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Main$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Main$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Main$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Main$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Main$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Main$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Main:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Main$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Main$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Main$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
152                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
153                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
154                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
155                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
157                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
161                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
163                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--S:G$main$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:App_Main:G$main$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     	;--cdb--S:G$ISR$0$0({2}DF,SV:S),C,0,0
167                     	;--cdb--F:App_Main:G$ISR$0$0({2}DF,SV:S),C,0,0,1,256,0
168                     ;--------------------------------------------------------
169                     ; overlayable items in internal ram 
170                     ;--------------------------------------------------------
171                     ;	udata_ovr
172                     	.globl _main
173                     ;--------------------------------------------------------
174                     ; reset vector 
175                     ;--------------------------------------------------------
176                     	.area STARTUP	(code,REL,CON) 
177 0000 0000           	nop
178 0001 C201 F7F5      	jmp	__sdcc_gsinit_startup512fsr2ini80
179 0003 0000           	nop
180                     ;--------------------------------------------------------
181                     ; interrupt and initialization code
182                     ;--------------------------------------------------------
183                     	.area c_interrupt	(code,REL,CON)
184                     __sdcc_interrupt:
185                     .globl _ISR
186                     
187                     ;--------------------------------------------------------
188                     	.FUNC _ISR:$r:0:0:$L:r0x108D:$L:r0x1090:$L:r0x108E:$L:r0x1093
189                     ;--------------------------------------------------------
190                     ;	;.line	76; ".\Source\App_Main.c"	if(ADIF_IsFlag())
191 0004 [00] [Y] D00F F12A 
191 0006 D010 F129 D020 
191 0009 F128 C484      _ISR:	;Function start
192 000B [04] [Y] BA26      	BTSS	_INTF0,5
193 000C [04] [Y] 7804      	JMP	_00112_DS_
194                     ;	;.line	79; ".\Source\App_Main.c"	ADIF_ClearFlag();
195 000D [04] [Y] 8A26      	BCF	_INTF0,5
196                     ;	;.line	82; ".\Source\App_Main.c"	sADC.Flag_ADCDone = TRUE;
197 000E [00] [2] 0012 9343 	BSF	_sADC,1
198                     ;	;.line	84; ".\Source\App_Main.c"	ADC_INT_Disable();
199 0010 [04] [2] 8A23      	BCF	_INTE0,5
200                     _00112_DS_:
201                     ;	;.line	89; ".\Source\App_Main.c"	if(RCIF_IsFlag())
202 0011 [04] [X] B827      	BTSS	_INTF1,4
203 0012 [04] [X] 7820      	JMP	_00123_DS_
204                     ;	;.line	92; ".\Source\App_Main.c"	sBleStatus.g_Ble_RxData[sBleStatus.pBleRxBuf] = RC0REG;
205 0013 [04] [X] 000C F132 	LDPR	(_sBleStatus + 4),0
206 0015 [04] [X] 647F      	MVF	_RC0REG,0,0
207 0016 [04] [X] 6620      	MVF	STK00,1,0
208 0017 [00] [1] 0011 6531 	MVF	(_sBleStatus + 3),0,0
209 0019 [04] [1] D020 F004 	MVFF	STK00,_PLUSW0
210                     ;	;.line	94; ".\Source\App_Main.c"	if((sBleStatus.g_Ble_RxData[sBleStatus.pBleRxBuf] == Ble_End2) || (sBleStatus.g_Ble_RxData[sBleStatus.pBleRxBuf] == Ble_End22))
211 001B [04] [1] 6531      	MVF	(_sBleStatus + 3),0,0
212 001C [04] [1] 6683      	MVF	r0x108D,1,0
213 001D [04] [1] 6404      	MVF	_PLUSW0,0,0
214 001E [04] [1] 6682      	MVF	r0x1090,1,0
215 001F [04] [1] 035F      	XORL	0x5f
216 0020 [04] [1] 71        	BTSZ	_STATUS,0
217 0020 [04] 03        	JMP	_00118_DS_
218 0021 [04] [1] 06A5      	MVL	0xa5
219 0022 [04] [1] 6C82      	CPSE	r0x1090,0
220 0023 [04] [1] 7803      	JMP	_00119_DS_
221                     _00118_DS_:
222                     ;	;.line	96; ".\Source\App_Main.c"	sBleStatus.F_Uart_Receive = TRUE;
223 0024 [04] [1] 932E      	BSF	_sBleStatus,1
224                     ;	;.line	97; ".\Source\App_Main.c"	sBleStatus.pBleRxBuf = 0;
225 0025 [04] [1] 0D31      	CLRF	(_sBleStatus + 3),0
226 0026 [04] [1] 780C      	JMP	_00123_DS_
227                     _00119_DS_:
228                     ;	;.line	100; ".\Source\App_Main.c"	else if((sBleStatus.g_Ble_RxData[0] == Ble_Header1) || (sBleStatus.g_Ble_RxData[0] == Ble_Header21))
229 0027 [04] [1] 6532      	MVF	(_sBleStatus + 4),0,0
230 0028 [04] [1] 6681      	MVF	r0x108E,1,0
231 0029 [04] [1] 03FA      	XORL	0xfa
232 002A [04] [1] 71        	BTSZ	_STATUS,0
233 002A [04] 03        	JMP	_00115_DS_
234 002B [04] [1] 0655      	MVL	0x55
235 002C [04] [1] 6C81      	CPSE	r0x108E,0
236 002D [04] [1] 7805      	JMP	_00123_DS_
237                     _00115_DS_:
238                     ;	;.line	102; ".\Source\App_Main.c"	sBleStatus.pBleRxBuf++;
239 002E [04] [1] 3883      	INF	r0x108D,0,0
240 002F [04] [1] 6731      	MVF	(_sBleStatus + 3),1,0
241                     ;	;.line	104; ".\Source\App_Main.c"	if(sBleStatus.pBleRxBuf == DataLenth)
242 0030 [04] [1] 0312      	XORL	0x12
243 0031 [04] [1] A02B      	BTSZ	_STATUS,0
244                     ;	;.line	106; ".\Source\App_Main.c"	sBleStatus.pBleRxBuf = 0;
245 0032 [04] [1] 0D31      	CLRF	(_sBleStatus + 3),0
246                     _00123_DS_:
247                     ;	;.line	113; ".\Source\App_Main.c"	if(TA1CIF_IsFlag())
248 0033 [04] [X] BC26      	BTSS	_INTF0,6
249 0034 [04] [X] 7868      	JMP	_00137_DS_
250                     ;	;.line	116; ".\Source\App_Main.c"	TA1CIF_ClearFlag();
251 0035 [04] [X] 8C26      	BCF	_INTF0,6
252                     ;	;.line	118; ".\Source\App_Main.c"	TMA1R = 0x00;
253 0036 [04] [X] 0C45      	CLRF	_TMA1R,0
254                     ;	;.line	123; ".\Source\App_Main.c"	sTimeStamp.Timer_Journey++;
255 0037 [00] [2] 0012 3B09 	INF	(_sTimeStamp + 2),1,0
256 0039 [04] [2] 0600      	MVL	0x00
257 003A [04] [2] 170A      	ADDC	(_sTimeStamp + 3),1,0
258 003B [04] [2] 170B      	ADDC	(_sTimeStamp + 4),1,0
259 003C [04] [2] 170C      	ADDC	(_sTimeStamp + 5),1,0
260                     ;	;.line	126; ".\Source\App_Main.c"	if(++sTIMx.Cnt50ms >= 2)
261 003D [04] [2] 39D0      	INF	(_sTIMx + 4),0,0
262 003E [04] [2] 6683      	MVF	r0x108D,1,0
263 003F [04] [2] 67D0      	MVF	(_sTIMx + 4),1,0
264 0040 [04] [2] 0601      	MVL	0x01
265 0041 [04] [2] 6883      	CPSG	r0x108D,0
266 0042 [04] [2] 7805      	JMP	_00125_DS_
267                     ;	;.line	128; ".\Source\App_Main.c"	sTIMx.Cnt50ms = 0;
268 0043 [04] [2] 0DD0      	CLRF	(_sTIMx + 4),0
269                     ;	;.line	130; ".\Source\App_Main.c"	sTIMx.LVDSampleFlag = TRUE;
270 0044 [04] [2] 91CC      	BSF	_sTIMx,0
271                     ;	;.line	132; ".\Source\App_Main.c"	sTIMx.LCDRefreshFlag = TRUE;
272 0045 [04] [2] 000C F2CC 	LDPR	(_sTIMx + 0),0x00
273 0047 [04] [2] 9200      	BSF	_INDF0,1
274                     _00125_DS_:
275                     ;	;.line	136; ".\Source\App_Main.c"	if(++sTIMx.Cnt125ms >= 5)
276 0048 [04] [2] 39D1      	INF	(_sTIMx + 5),0,0
277 0049 [04] [2] 6683      	MVF	r0x108D,1,0
278 004A [04] [2] 0600      	MVL	0x00
279 004B [04] [2] 15D2      	ADDC	(_sTIMx + 6),0,0
280 004C [04] [2] 6681      	MVF	r0x108E,1,0
281 004D [04] [2] C603 F2D1 	MVSF	r0x108D,(_sTIMx + 5)
282 004F [04] [2] 67D2      	MVF	(_sTIMx + 6),1,0
283 0050 [04] [2] 6483      	MVF	r0x108D,0,0
284 0051 [04] [2] 04FB      	ADDL	0xfb
285 0052 [04] [2] 06FF      	MVL	0xff
286 0053 [04] [2] 1481      	ADDC	r0x108E,0,0
287 0054 [04] [2] 74        	BTSS	_STATUS,4
288 0054 [04] 04        	JMP	_00127_DS_
289                     ;	;.line	138; ".\Source\App_Main.c"	sTIMx.Cnt125ms = 0;
290 0055 [04] [2] 0DD1      	CLRF	(_sTIMx + 5),0
291 0056 [04] [2] 0DD2      	CLRF	(_sTIMx + 6),0
292                     ;	;.line	139; ".\Source\App_Main.c"	sTIMx.BuzzerIntervalCnt++;
293 0057 [04] [2] 3BCF      	INF	(_sTIMx + 3),1,0
294                     ;	;.line	140; ".\Source\App_Main.c"	sTIMx.BuzzerFlash4Hz = !sTIMx.BuzzerFlash4Hz;
295 0058 [04] [2] E9CD      	BTGF	(_sTIMx+1),4
296                     _00127_DS_:
297                     ;	;.line	144; ".\Source\App_Main.c"	if(++sTIMx.Cnt250ms >= 10)
298 0059 [04] [2] 39D3      	INF	(_sTIMx + 7),0,0
299 005A [04] [2] 6683      	MVF	r0x108D,1,0
300 005B [04] [2] 0600      	MVL	0x00
301 005C [04] [2] 15D4      	ADDC	(_sTIMx + 8),0,0
302 005D [04] [2] 6681      	MVF	r0x108E,1,0
303 005E [04] [2] C603 F2D3 	MVSF	r0x108D,(_sTIMx + 7)
304 0060 [04] [2] 67D4      	MVF	(_sTIMx + 8),1,0
305 0061 [04] [2] 6483      	MVF	r0x108D,0,0
306 0062 [04] [2] 04F6      	ADDL	0xf6
307 0063 [04] [2] 06FF      	MVL	0xff
308 0064 [04] [2] 1481      	ADDC	r0x108E,0,0
309 0065 [04] [2] 74        	BTSS	_STATUS,4
310 0065 [04] 0A        	JMP	_00131_DS_
311                     ;	;.line	146; ".\Source\App_Main.c"	sTIMx.Cnt250ms = 0;
312 0066 [04] [2] 0DD3      	CLRF	(_sTIMx + 7),0
313 0067 [04] [2] 0DD4      	CLRF	(_sTIMx + 8),0
314                     ;	;.line	148; ".\Source\App_Main.c"	sADC.Get_250msTemp_Flag = TRUE;
315 0068 [04] [2] 9143      	BSF	_sADC,0
316                     ;	;.line	150; ".\Source\App_Main.c"	if(++sTIMx.TempDetectingSymFlash1Hz >= 3)
317 0069 [04] [2] 39CE      	INF	(_sTIMx + 2),0,0
318 006A [04] [2] 6683      	MVF	r0x108D,1,0
319 006B [04] [2] 67CE      	MVF	(_sTIMx + 2),1,0
320 006C [04] [2] 0602      	MVL	0x02
321 006D [04] [2] 6883      	CPSG	r0x108D,0
322 006E [04] [2] 7801      	JMP	_00131_DS_
323                     ;	;.line	152; ".\Source\App_Main.c"	sTIMx.TempDetectingSymFlash1Hz = 0;
324 006F [04] [2] 0DCE      	CLRF	(_sTIMx + 2),0
325                     _00131_DS_:
326                     ;	;.line	163; ".\Source\App_Main.c"	if(++sTIMx.Cnt500ms >= 20)
327 0070 [04] [2] 39D5      	INF	(_sTIMx + 9),0,0
328 0071 [04] [2] 6683      	MVF	r0x108D,1,0
329 0072 [04] [2] 0600      	MVL	0x00
330 0073 [04] [2] 15D6      	ADDC	(_sTIMx + 10),0,0
331 0074 [04] [2] 6681      	MVF	r0x108E,1,0
332 0075 [04] [2] C603 F2D5 	MVSF	r0x108D,(_sTIMx + 9)
333 0077 [04] [2] 67D6      	MVF	(_sTIMx + 10),1,0
334 0078 [04] [2] 6483      	MVF	r0x108D,0,0
335 0079 [04] [2] 04EC      	ADDL	0xec
336 007A [04] [2] 06FF      	MVL	0xff
337 007B [04] [2] 1481      	ADDC	r0x108E,0,0
338 007C [04] [2] 74        	BTSS	_STATUS,4
339 007C [04] 09        	JMP	_00133_DS_
340                     ;	;.line	165; ".\Source\App_Main.c"	sTIMx.Cnt500ms = 0;
341 007D [04] [2] 0DD5      	CLRF	(_sTIMx + 9),0
342 007E [04] [2] 0DD6      	CLRF	(_sTIMx + 10),0
343                     ;	;.line	167; ".\Source\App_Main.c"	sTIMx.ModeSymbolFlash = !sTIMx.ModeSymbolFlash;
344 007F [04] [2] E7CC      	BTGF	_sTIMx,3
345                     ;	;.line	169; ".\Source\App_Main.c"	sTIMx.BuzzerFlash1Hz = !sTIMx.BuzzerFlash1Hz;
346 0080 [04] [2] E7CD      	BTGF	(_sTIMx+1),3
347                     ;	;.line	171; ".\Source\App_Main.c"	sTIMx.CalSymbolFlash = !sTIMx.CalSymbolFlash;
348 0081 [04] [2] EBCC      	BTGF	_sTIMx,5
349                     ;	;.line	173; ".\Source\App_Main.c"	sTIMx.BindingSymbolFlash = 0;
350 0082 [04] [2] 8FCC      	BCF	_sTIMx,7
351                     ;	;.line	175; ".\Source\App_Main.c"	sTIMx.UnitSymbolFlash = !sTIMx.UnitSymbolFlash;
352 0083 [04] [2] E1CD      	BTGF	(_sTIMx+1),0
353                     ;	;.line	177; ".\Source\App_Main.c"	sTIMx.BLESymbolFlash = !sTIMx.BLESymbolFlash;
354 0084 [04] [2] E3CD      	BTGF	(_sTIMx+1),1
355                     ;	;.line	179; ".\Source\App_Main.c"	sTIMx.ForecastSymbolFlash = !sTIMx.ForecastSymbolFlash;
356 0085 [04] [2] E5CD      	BTGF	(_sTIMx+1),2
357                     _00133_DS_:
358                     ;	;.line	183; ".\Source\App_Main.c"	if(++sTIMx.Cnt1s >= 40)
359 0086 [04] [2] 39D7      	INF	(_sTIMx + 11),0,0
360 0087 [04] [2] 6683      	MVF	r0x108D,1,0
361 0088 [04] [2] 0600      	MVL	0x00
362 0089 [04] [2] 15D8      	ADDC	(_sTIMx + 12),0,0
363 008A [04] [2] 6681      	MVF	r0x108E,1,0
364 008B [04] [2] C603 F2D7 	MVSF	r0x108D,(_sTIMx + 11)
365 008D [04] [2] 67D8      	MVF	(_sTIMx + 12),1,0
366 008E [04] [2] 6483      	MVF	r0x108D,0,0
367 008F [04] [2] 04D8      	ADDL	0xd8
368 0090 [04] [2] 06FF      	MVL	0xff
369 0091 [04] [2] 1481      	ADDC	r0x108E,0,0
370 0092 [04] [2] 74        	BTSS	_STATUS,4
371 0092 [04] 0A        	JMP	_00137_DS_
372                     ;	;.line	185; ".\Source\App_Main.c"	sTIMx.Cnt1s = 0;
373 0093 [04] [2] 0DD7      	CLRF	(_sTIMx + 11),0
374 0094 [04] [2] 0DD8      	CLRF	(_sTIMx + 12),0
375                     ;	;.line	187; ".\Source\App_Main.c"	sTIMx.ForecastJudgeOKTempFlash = !sTIMx.ForecastJudgeOKTempFlash;
376 0095 [04] [2] 0601      	MVL	0x01
377 0096 [04] [2] ADCC      	BTSZ	_sTIMx,6
378 0097 [04] [2] 0600      	MVL	0x00
379 0098 [04] [2] 6680      	MVF	r0x1093,1,0
380 0099 [04] [2] B029      	BTSS	_WREG,0
381 009A [04] [2] 8DCC      	BCF	_sTIMx,6
382 009B [04] [2] A080      	BTSZ	r0x1093,0
383 009C [04] [2] 9DCC      	BSF	_sTIMx,6
384                     _00137_DS_:
385                     ;	;.line	193; ".\Source\App_Main.c"	if(WDTIF_IsFlag())
386 009D [04] [X] A826      	BTSZ	_INTF0,4
387                     ;	;.line	196; ".\Source\App_Main.c"	WDTIF_ClearFlag();
388 009E [04] [X] 8826      	BCF	_INTF0,4
389                     ;	;.line	201; ".\Source\App_Main.c"	if(E1IF_IsFlag())
390 009F [04] [X] B226      	BTSS	_INTF0,1
391 00A0 [04] [X] 7806      	JMP	_00144_DS_
392                     ;	;.line	204; ".\Source\App_Main.c"	E1IF_ClearFlag();
393 00A1 [04] [X] 8226      	BCF	_INTF0,1
394                     ;	;.line	206; ".\Source\App_Main.c"	if(eSystem_Mode == Sleep)
395 00A2 [00] [2] 0012 35C9 	DCSZ	_eSystem_Mode,0,0
396 00A4 [04] [2] 7802      	JMP	_00144_DS_
397                     ;	;.line	209; ".\Source\App_Main.c"	eSystem_Mode = Prepare_Normal;
398 00A5 [04] [2] 0602      	MVL	0x02
399 00A6 [04] [2] 67C9      	MVF	_eSystem_Mode,1,0
400 00A7 [04] [X] C4BC D12A 
400 00A9 F00F D129 F010 
400 00AC D128 F020      _00144_DS_:
401                     ;	;.line	212; ".\Source\App_Main.c"	}
402 00AE [00] [X] 0009      	RETI	 1
403                     ; exit point of _ISR
404                     	.ENDFUNC	_ISR
405                     ;--------------------------------------------------------
406                     
407                     .area CCODE (code,REL,CON) ; App_Main-code 
408                     .globl _main
409                     
410                     ;--------------------------------------------------------
411                     	.FUNC _main:$r:0:0:$C:_System_Init:$C:_AutoBps_Configuration:$C:_Key_Detect:$C:_Get_250msTemp\
412                     :$C:_Task_Schedule:$C:_LCD_Display:$C:_Buzzer_Drive:$C:_Backlight_Drive:$C:_App_BleMode\
413                     :$C:_Actual_Measure\
414                     
415                     ;--------------------------------------------------------
416                     ;	;.line	25; ".\Source\App_Main.c"	System_Init();
417                     _main:	;Function start
418 00B2 [00] [X] 9E35      	BSF	0x35,7
419 00B3 [00] [X] C000 FD41 	CALL	_System_Init
420                     	.CHKPARA _System_Init 0
421                     _00106_DS_:
422                     ;	;.line	31; ".\Source\App_Main.c"	AutoBps_Configuration();
423 00B5 [00] [2] C000 FF51 	CALL	_AutoBps_Configuration
424                     	.CHKPARA _AutoBps_Configuration 0
425                     ;	;.line	35; ".\Source\App_Main.c"	 ..asm
426 00B7 [00] [X] 0003      	CWDT
427                     ;	;.line	38; ".\Source\App_Main.c"	Key_Detect();
428 00B8 [00] [X] C92D      	CALL	_Key_Detect
429                     	.CHKPARA _Key_Detect 0
430                     ;	;.line	41; ".\Source\App_Main.c"	Get_250msTemp();
431 00B9 [00] [2] C001 F276 	CALL	_Get_250msTemp
432                     	.CHKPARA _Get_250msTemp 0
433                     ;	;.line	44; ".\Source\App_Main.c"	Task_Schedule();
434 00BB [00] [2] C000 F7E6 	CALL	_Task_Schedule
435                     	.CHKPARA _Task_Schedule 0
436                     ;	;.line	47; ".\Source\App_Main.c"	LCD_Display();
437 00BD [00] [X] CAD1      	CALL	_LCD_Display
438                     	.CHKPARA _LCD_Display 0
439                     ;	;.line	50; ".\Source\App_Main.c"	Buzzer_Drive();
440 00BE [00] [X] C805      	CALL	_Buzzer_Drive
441                     	.CHKPARA _Buzzer_Drive 0
442                     ;	;.line	53; ".\Source\App_Main.c"	Backlight_Drive();
443 00BF [00] [X] CFF1      	CALL	_Backlight_Drive
444                     	.CHKPARA _Backlight_Drive 0
445                     ;	;.line	56; ".\Source\App_Main.c"	App_BleMode();
446 00C0 [00] [X] CFEF      	CALL	_App_BleMode
447                     	.CHKPARA _App_BleMode 0
448                     ;	;.line	60; ".\Source\App_Main.c"	Actual_Measure();
449 00C1 [00] [X] C000 F732 	CALL	_Actual_Measure
450                     	.CHKPARA _Actual_Measure 0
451                     ;	;.line	66; ".\Source\App_Main.c"	}
452 00C3 [00] [2] 7FF1      	JMP	_00106_DS_
453                     ; exit point of _main
454                     	.ENDFUNC	_main
455                     ;--------------------------------------------------------
456                     
457                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
458                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
459                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
460                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
461                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
462                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
463                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
464                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
465                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
466                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
467                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
468                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
469                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
470                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
471                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
472                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
473                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
474                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
475                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
476                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
477                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
478                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
479                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
480                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
481                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Main$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
482                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Main$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
483                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Main$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
484                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
485                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
486                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
487                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
488                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
489                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
490                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
491                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
492                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
493                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
494                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
495                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
496                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
497                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
498                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
499                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
500                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
501                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
502                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
503                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
504                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
505                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
506                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
507                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
508                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
509                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
510                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
511                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
512                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
513                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
514                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
515                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
516                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
517                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
518                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
519                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
520                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
521                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
522                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
523                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
524                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
525                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
526                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
527                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
528                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
529                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
530                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
531                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
532                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
533                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
534                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
535                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
536                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
537                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
538                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
539                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
540                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
541                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
542                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
543                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
544                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
545                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
546                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
547                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
548                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
549                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
550                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
551                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
552                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
553                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
554                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
555                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
556                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
557                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
558                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
559                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
560                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
561                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
562                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
563                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
564                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
565                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
566                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
567                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
568                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
569                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
570                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
571                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
572                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
573                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
574                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
575                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
576                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
577                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
578                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
579                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
580                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
581                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
582                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
583                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
584                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
585                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
586                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
587                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
588                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
589                     	;--cdb--S:G$main$0$0({2}DF,SV:S),C,0,0
590                     	;--cdb--S:G$ISR$0$0({2}DF,SV:S),C,0,0
591                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
592                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
593                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
594                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
595                     	;--cdb--S:LApp_Main.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
596                     	;--cdb--S:LApp_Main.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
597                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Main$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
598                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
599                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Main$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
600                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Main$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
601                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Main$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
602                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
603                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Main$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
604                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
605                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
606                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
607                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
608                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
609                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
610                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Main$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
611                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Main$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
612                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
613                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Main$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
614                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
615                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
616                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
617                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
618                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Main$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
619                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
620                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
621                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
622                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
623                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Main$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
624                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Main$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
625                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Main$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
626                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Main$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
627                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Main$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
628                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
629                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Main$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
630                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
631                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
632                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Main$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
633                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
634                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Main$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
635                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
636                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
637                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
638                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
639                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
640                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
641                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
642                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
643                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
644                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
645                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
646                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
647                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
648                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
649                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
650                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
651                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
652                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
653                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
654                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
655                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
656                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
657                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
658                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
659                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
660                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
661                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
662                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
663                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
664                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
665                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
666                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
667                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
668                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
669                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
670                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
671                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
672                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
673                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
674                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
675                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
676                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
677                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
678                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
679                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
680                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
681                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
682                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
683                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
684                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
685                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
686                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
687                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
688                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
689                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
690                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
691                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
692                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
693                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
694                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
695                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
696                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
697                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
698                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
699                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
700                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
701                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
702                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
703                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
704                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
705                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
706                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
707                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
708                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
709                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
710                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
711                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
712                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
713                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
714                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
715                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
716                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
717                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
718                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
719                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
720                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
721                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
722                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
723                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
724                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
725                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
726                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
727                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
728                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
729                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
730                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
731                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
732                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
733                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
734                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
735                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
736                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
737                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
738                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
739                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
740                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
741                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
742                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
743                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
744                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
745                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
746                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
747                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
748                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
749                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
750                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
751                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
752                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
753                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
754                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
755                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
756                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
757                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
758                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
759                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
760                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
761                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
762                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
763                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
764                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
765                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
766                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
767                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
768                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
769                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
770                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
771                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
772                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
773                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
774                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
775                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
776                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
777                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
778                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
779                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
780                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
781                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
782                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
783                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
784                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
785                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
786                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
787                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
788                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
789                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
790                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
791                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
792                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
793                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
794                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
795                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
796                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
797                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
798                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
799                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
800                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
801                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
802                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
803                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
804                     	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
805                     ;--------------------------------------------------------
806                     ; external declarations
807                     ;--------------------------------------------------------
808                     	.globl	_AutoBps_Configuration
809                     	.globl	_System_Init
810                     	.globl	_Key_Detect
811                     	.globl	_LCD_Display
812                     	.globl	_Get_250msTemp
813                     	.globl	_Buzzer_Drive
814                     	.globl	_Actual_Measure
815                     	.globl	_App_BleMode
816                     	.globl	_Backlight_Drive
817                     	.globl	_Task_Schedule
818                     	.globl	_FSR0
819                     	.globl	_FSR1
820                     	.globl	_FSR2
821                     	.globl	_ADCR
822                     	.globl	_sIIC
823                     	.globl	_BIE_Available_Addr
824                     	.globl	_sTIMx
825                     	.globl	_sUARTx
826                     	.globl	_sAutoBps
827                     	.globl	_eAutoBps_Status
828                     	.globl	_sTest
829                     	.globl	_eTempUnit
830                     	.globl	_eBondingTempUnit
831                     	.globl	_eVersionCode
832                     	.globl	_eMeasureMode
833                     	.globl	_eBinding_Status
834                     	.globl	_Enter_PrepareSleep_Flag
835                     	.globl	_sButton
836                     	.globl	_sTimeStamp
837                     	.globl	_eButton_Status
838                     	.globl	_sLVD
839                     	.globl	_UnitExchangeCompleted
840                     	.globl	_ERR
841                     	.globl	_eErr
842                     	.globl	_eDisplay_Interfaces
843                     	.globl	_sADC
844                     	.globl	_eADCChannel
845                     	.globl	_eSystem_Mode
846                     	.globl	_eBuzzer_Status
847                     	.globl	_Flag_No_Buzzer
848                     	.globl	_sMemory
849                     	.globl	_sMemoryFlag
850                     	.globl	_sActual
851                     	.globl	_sForecast
852                     	.globl	_sTempCal
853                     	.globl	_eMeas_Status
854                     	.globl	_sActual_Forecast
855                     	.globl	_eTo_Actual_Ways
856                     	.globl	_eBle_Sta
857                     	.globl	_sBleStatus
858                     	.globl	_eBacklight_Status
859                     	.globl	_sBacklight
860                     	.globl	_NUM_CODE
861                     	.globl	_R_Table
862                     	.globl	_CloseTable
863                     	.globl	__sdcc_gsinit_startup512fsr2ini80
864                     ;--------------------------------------------------------
865                     ; global -1 declarations
866                     ;--------------------------------------------------------
867                     
868                     	.globl WSAVE
869                     	.globl STK07
870                     	.globl STK07_SAVE
871                     	.globl STK06
872                     	.globl STK06_SAVE
873                     	.globl STK05
874                     	.globl STK05_SAVE
875                     	.globl STK04
876                     	.globl STK04_SAVE
877                     	.globl STK03
878                     	.globl STK03_SAVE
879                     	.globl STK02
880                     	.globl STK02_SAVE
881                     	.globl STK01
882                     	.globl STK01_SAVE
883                     	.globl STK00
884                     	.globl STK00_SAVE
885                     	.globl _FSR0L_SAVE
886                     	.globl _FSR0H_SAVE
887                     	.globl _FSR1L_SAVE
888                     	.globl _FSR1H_SAVE
889                     	.globl _FSR2L_SAVE
890                     	.globl _FSR2H_SAVE
891                     	.globl	_TBLPTRH_SAVE
892                     	.globl	_TBLPTRL_SAVE
893                     	.globl	_PCLATH_SAVE
894                     
895                     .area UDATA (DATA,REL,CON)
896                     _TBLPTRH_SAVE:	.ds	 1
897                     _TBLPTRL_SAVE:	.ds	 1
898                     _PCLATH_SAVE:	.ds	 1
899                     STK07_SAVE:	.ds	 1
900                     STK06_SAVE:	.ds	 1
901                     STK05_SAVE:	.ds	 1
902                     STK04_SAVE:	.ds	 1
903                     STK03_SAVE:	.ds	 1
904                     STK02_SAVE:	.ds	 1
905                     STK01_SAVE:	.ds	 1
906 0128 --             STK00_SAVE:	.ds	 1
907 0129 --             _FSR0L_SAVE:	.ds	 1
908 012A --             _FSR0H_SAVE:	.ds	 1
909                     _FSR1L_SAVE:	.ds	 1
910                     _FSR1H_SAVE:	.ds	 1
911                     _FSR2L_SAVE:	.ds	 1
912                     _FSR2H_SAVE:	.ds	 1
913                     WSAVE:	.ds 1
914                     STK07:	.ds	 1
915                     STK06:	.ds	 1
916                     STK05:	.ds	 1
917                     STK04:	.ds	 1
918                     STK03:	.ds	 1
919                     STK02:	.equ	 0x1E
920                     STK01:	.equ	 0x1F
921                     STK00:	.equ	 0x20
922                     
923                     	.globl	_memcpy
924                     ;--------------------------------------------------------
925                     ; global -2 definitions
926                     ;--------------------------------------------------------
927                     	.area DSEG(DATA)
928                     __SWTGTID	.equ	0xA6A6B2CF
929                     
930                     	.area DSEG(DATA)
931                     _INDF0	.equ	0x0
932                     
933                     	.area DSEG(DATA)
934                     _POINC0	.equ	0x1
935                     
936                     	.area DSEG(DATA)
937                     _PODEC0	.equ	0x2
938                     
939                     	.area DSEG(DATA)
940                     _PRINC0	.equ	0x3
941                     
942                     	.area DSEG(DATA)
943                     _PLUSW0	.equ	0x4
944                     
945                     	.area DSEG(DATA)
946                     _INDF1	.equ	0x5
947                     
948                     	.area DSEG(DATA)
949                     _POINC1	.equ	0x6
950                     
951                     	.area DSEG(DATA)
952                     _PODEC1	.equ	0x7
953                     
954                     	.area DSEG(DATA)
955                     _PRINC1	.equ	0x8
956                     
957                     	.area DSEG(DATA)
958                     _PLUSW1	.equ	0x9
959                     
960                     	.area DSEG(DATA)
961                     _INDF2	.equ	0xA
962                     
963                     	.area DSEG(DATA)
964                     _POINC2	.equ	0xB
965                     
966                     	.area DSEG(DATA)
967                     _PODEC2	.equ	0xC
968                     
969                     	.area DSEG(DATA)
970                     _PRINC2	.equ	0xD
971                     
972                     	.area DSEG(DATA)
973                     _PLUSW2	.equ	0xE
974                     
975                     	.area DSEG(DATA)
976                     _FSR0H	.equ	0xF
977                     
978                     	.area DSEG(DATA)
979                     _FSR0L	.equ	0x10
980                     
981                     	.area DSEG(DATA)
982                     _FSR1H	.equ	0x11
983                     
984                     	.area DSEG(DATA)
985                     _FSR1L	.equ	0x12
986                     
987                     	.area DSEG(DATA)
988                     _FSR2H	.equ	0x13
989                     
990                     	.area DSEG(DATA)
991                     _FSR2L	.equ	0x14
992                     
993                     	.area DSEG(DATA)
994                     _TOSH	.equ	0x16
995                     
996                     	.area DSEG(DATA)
997                     _TOSL	.equ	0x17
998                     
999                     	.area DSEG(DATA)
1000                     _SKCN	.equ	0x18
1001                     
1002                     	.area DSEG(DATA)
1003                     _PCLATH	.equ	0x1A
1004                     
1005                     	.area DSEG(DATA)
1006                     _PCLATL	.equ	0x1B
1007                     
1008                     	.area DSEG(DATA)
1009                     _TBLPTRH	.equ	0x1D
1010                     
1011                     	.area DSEG(DATA)
1012                     _TBLPTRL	.equ	0x1E
1013                     
1014                     	.area DSEG(DATA)
1015                     _TBLDH	.equ	0x1F
1016                     
1017                     	.area DSEG(DATA)
1018                     _TBLDL	.equ	0x20
1019                     
1020                     	.area DSEG(DATA)
1021                     _PRODH	.equ	0x21
1022                     
1023                     	.area DSEG(DATA)
1024                     _PRODL	.equ	0x22
1025                     
1026                     	.area DSEG(DATA)
1027                     _INTE0	.equ	0x23
1028                     
1029                     	.area DSEG(DATA)
1030                     _INTE1	.equ	0x24
1031                     
1032                     	.area DSEG(DATA)
1033                     _INTE2	.equ	0x25
1034                     
1035                     	.area DSEG(DATA)
1036                     _INTF0	.equ	0x26
1037                     
1038                     	.area DSEG(DATA)
1039                     _INTF1	.equ	0x27
1040                     
1041                     	.area DSEG(DATA)
1042                     _INTF2	.equ	0x28
1043                     
1044                     	.area DSEG(DATA)
1045                     _WREG	.equ	0x29
1046                     
1047                     	.area DSEG(DATA)
1048                     _BSRCN	.equ	0x2A
1049                     
1050                     	.area DSEG(DATA)
1051                     _STATUS	.equ	0x2B
1052                     
1053                     	.area DSEG(DATA)
1054                     _MSTAT	.equ	0x2B
1055                     
1056                     	.area DSEG(DATA)
1057                     _PSTAT	.equ	0x2C
1058                     
1059                     	.area DSEG(DATA)
1060                     _BIECN	.equ	0x2E
1061                     
1062                     	.area DSEG(DATA)
1063                     _BIEARH	.equ	0x2F
1064                     
1065                     	.area DSEG(DATA)
1066                     _BIEARL	.equ	0x30
1067                     
1068                     	.area DSEG(DATA)
1069                     _BIEDRH	.equ	0x31
1070                     
1071                     	.area DSEG(DATA)
1072                     _BIEDRL	.equ	0x32
1073                     
1074                     	.area DSEG(DATA)
1075                     _PWRCN	.equ	0x33
1076                     
1077                     	.area DSEG(DATA)
1078                     _OSCCN0	.equ	0x34
1079                     
1080                     	.area DSEG(DATA)
1081                     _OSCCN1	.equ	0x35
1082                     
1083                     	.area DSEG(DATA)
1084                     _OSCCN2	.equ	0x36
1085                     
1086                     	.area DSEG(DATA)
1087                     _CSFCN0	.equ	0x37
1088                     
1089                     	.area DSEG(DATA)
1090                     _CSFCN1	.equ	0x38
1091                     
1092                     	.area DSEG(DATA)
1093                     _WDTCN	.equ	0x39
1094                     
1095                     	.area DSEG(DATA)
1096                     _AD1H	.equ	0x3A
1097                     
1098                     	.area DSEG(DATA)
1099                     _AD1M	.equ	0x3B
1100                     
1101                     	.area DSEG(DATA)
1102                     _AD1L	.equ	0x3C
1103                     
1104                     	.area DSEG(DATA)
1105                     _AD1CN0	.equ	0x3D
1106                     
1107                     	.area DSEG(DATA)
1108                     _AD1CN1	.equ	0x3E
1109                     
1110                     	.area DSEG(DATA)
1111                     _AD1CN2	.equ	0x3F
1112                     
1113                     	.area DSEG(DATA)
1114                     _AD1CN3	.equ	0x40
1115                     
1116                     	.area DSEG(DATA)
1117                     _AD1CN4	.equ	0x41
1118                     
1119                     	.area DSEG(DATA)
1120                     _AD1CN5	.equ	0x42
1121                     
1122                     	.area DSEG(DATA)
1123                     _LVDCN	.equ	0x43
1124                     
1125                     	.area DSEG(DATA)
1126                     _TMA1CN	.equ	0x44
1127                     
1128                     	.area DSEG(DATA)
1129                     _TMA1R	.equ	0x45
1130                     
1131                     	.area DSEG(DATA)
1132                     _TMA1C	.equ	0x46
1133                     
1134                     	.area DSEG(DATA)
1135                     _TB1FLAG	.equ	0x47
1136                     
1137                     	.area DSEG(DATA)
1138                     _TB1CN0	.equ	0x48
1139                     
1140                     	.area DSEG(DATA)
1141                     _TB1CN1	.equ	0x49
1142                     
1143                     	.area DSEG(DATA)
1144                     _TB1RH	.equ	0x4A
1145                     
1146                     	.area DSEG(DATA)
1147                     _TB1RL	.equ	0x4B
1148                     
1149                     	.area DSEG(DATA)
1150                     _TB1C0H	.equ	0x4C
1151                     
1152                     	.area DSEG(DATA)
1153                     _TB1C0L	.equ	0x4D
1154                     
1155                     	.area DSEG(DATA)
1156                     _TB1C1H	.equ	0x4E
1157                     
1158                     	.area DSEG(DATA)
1159                     _TB1C1L	.equ	0x4F
1160                     
1161                     	.area DSEG(DATA)
1162                     _TB1C2H	.equ	0x50
1163                     
1164                     	.area DSEG(DATA)
1165                     _TB1C2L	.equ	0x51
1166                     
1167                     	.area DSEG(DATA)
1168                     _TC1CN0	.equ	0x52
1169                     
1170                     	.area DSEG(DATA)
1171                     _PT1	.equ	0x53
1172                     
1173                     	.area DSEG(DATA)
1174                     _TRISC1	.equ	0x54
1175                     
1176                     	.area DSEG(DATA)
1177                     _PT1DA	.equ	0x55
1178                     
1179                     	.area DSEG(DATA)
1180                     _PT1PU	.equ	0x56
1181                     
1182                     	.area DSEG(DATA)
1183                     _PT1M1	.equ	0x57
1184                     
1185                     	.area DSEG(DATA)
1186                     _PT1INT	.equ	0x58
1187                     
1188                     	.area DSEG(DATA)
1189                     _PT1INTE	.equ	0x59
1190                     
1191                     	.area DSEG(DATA)
1192                     _PT1INTF	.equ	0x5A
1193                     
1194                     	.area DSEG(DATA)
1195                     _PT2	.equ	0x5B
1196                     
1197                     	.area DSEG(DATA)
1198                     _TRISC2	.equ	0x5C
1199                     
1200                     	.area DSEG(DATA)
1201                     _PT2DA	.equ	0x5D
1202                     
1203                     	.area DSEG(DATA)
1204                     _PT2PU	.equ	0x5E
1205                     
1206                     	.area DSEG(DATA)
1207                     _PT2INT	.equ	0x5F
1208                     
1209                     	.area DSEG(DATA)
1210                     _PT2INTE	.equ	0x60
1211                     
1212                     	.area DSEG(DATA)
1213                     _PT2INTF	.equ	0x61
1214                     
1215                     	.area DSEG(DATA)
1216                     _PT6	.equ	0x62
1217                     
1218                     	.area DSEG(DATA)
1219                     _TRISC6	.equ	0x63
1220                     
1221                     	.area DSEG(DATA)
1222                     _PT6DA	.equ	0x64
1223                     
1224                     	.area DSEG(DATA)
1225                     _PT6PU	.equ	0x65
1226                     
1227                     	.area DSEG(DATA)
1228                     _PT7	.equ	0x66
1229                     
1230                     	.area DSEG(DATA)
1231                     _TRISC7	.equ	0x67
1232                     
1233                     	.area DSEG(DATA)
1234                     _PT7DA	.equ	0x68
1235                     
1236                     	.area DSEG(DATA)
1237                     _PT7PU	.equ	0x69
1238                     
1239                     	.area DSEG(DATA)
1240                     _PT8	.equ	0x6A
1241                     
1242                     	.area DSEG(DATA)
1243                     _TRISC8	.equ	0x6B
1244                     
1245                     	.area DSEG(DATA)
1246                     _PT8DA	.equ	0x6C
1247                     
1248                     	.area DSEG(DATA)
1249                     _PT8PU	.equ	0x6D
1250                     
1251                     	.area DSEG(DATA)
1252                     _SSPCN0	.equ	0x6E
1253                     
1254                     	.area DSEG(DATA)
1255                     _SSPSTA0	.equ	0x6F
1256                     
1257                     	.area DSEG(DATA)
1258                     _SSPBUF0	.equ	0x70
1259                     
1260                     	.area DSEG(DATA)
1261                     _CFG0	.equ	0x71
1262                     
1263                     	.area DSEG(DATA)
1264                     _ACT0	.equ	0x72
1265                     
1266                     	.area DSEG(DATA)
1267                     _STA0	.equ	0x73
1268                     
1269                     	.area DSEG(DATA)
1270                     _CRG0	.equ	0x74
1271                     
1272                     	.area DSEG(DATA)
1273                     _TOC0	.equ	0x75
1274                     
1275                     	.area DSEG(DATA)
1276                     _RDB0	.equ	0x76
1277                     
1278                     	.area DSEG(DATA)
1279                     _TDB0	.equ	0x77
1280                     
1281                     	.area DSEG(DATA)
1282                     _SID0	.equ	0x78
1283                     
1284                     	.area DSEG(DATA)
1285                     _UR0CN	.equ	0x79
1286                     
1287                     	.area DSEG(DATA)
1288                     _UR0STA	.equ	0x7A
1289                     
1290                     	.area DSEG(DATA)
1291                     _BA0CN	.equ	0x7B
1292                     
1293                     	.area DSEG(DATA)
1294                     _BG0RH	.equ	0x7C
1295                     
1296                     	.area DSEG(DATA)
1297                     _BG0RL	.equ	0x7D
1298                     
1299                     	.area DSEG(DATA)
1300                     _TX0R	.equ	0x7E
1301                     
1302                     	.area DSEG(DATA)
1303                     _RC0REG	.equ	0x7F
1304                     
1305                     	.area DSEG(DATA)
1306                     _LCDCN1	.equ	0x180
1307                     
1308                     	.area DSEG(DATA)
1309                     _LCDCN2	.equ	0x181
1310                     
1311                     	.area DSEG(DATA)
1312                     _LCDCN3	.equ	0x182
1313                     
1314                     	.area DSEG(DATA)
1315                     _LCDCN4	.equ	0x183
1316                     
1317                     	.area DSEG(DATA)
1318                     _LCDCN5	.equ	0x184
1319                     
1320                     	.area DSEG(DATA)
1321                     _LCDCN6	.equ	0x185
1322                     
1323                     	.area DSEG(DATA)
1324                     _LCDCN7	.equ	0x186
1325                     
1326                     	.area DSEG(DATA)
1327                     _LCDCN8	.equ	0x187
1328                     
1329                     	.area DSEG(DATA)
1330                     _LCD0	.equ	0x188
1331                     
1332                     	.area DSEG(DATA)
1333                     _LCD1	.equ	0x189
1334                     
1335                     	.area DSEG(DATA)
1336                     _LCD2	.equ	0x18A
1337                     
1338                     	.area DSEG(DATA)
1339                     _LCD3	.equ	0x18B
1340                     
1341                     	.area DSEG(DATA)
1342                     _LCD4	.equ	0x18C
1343                     
1344                     	.area DSEG(DATA)
1345                     _LCD5	.equ	0x18D
1346                     
1347                     	.area DSEG(DATA)
1348                     _LCD6	.equ	0x18E
1349                     
1350                     	.area DSEG(DATA)
1351                     _LCD7	.equ	0x18F
1352                     
1353                     	.area DSEG(DATA)
1354                     _LCD8	.equ	0x190
1355                     
1356                     	.area DSEG(DATA)
1357                     _LCD9	.equ	0x191
1358                     
1359                     	.area DSEG(DATA)
1360                     _UR2CN	.equ	0x192
1361                     
1362                     	.area DSEG(DATA)
1363                     _UR2STA	.equ	0x193
1364                     
1365                     	.area DSEG(DATA)
1366                     _BA2CN	.equ	0x194
1367                     
1368                     	.area DSEG(DATA)
1369                     _BG2RH	.equ	0x195
1370                     
1371                     	.area DSEG(DATA)
1372                     _BG2RL	.equ	0x196
1373                     
1374                     	.area DSEG(DATA)
1375                     _TX2R	.equ	0x197
1376                     
1377                     	.area DSEG(DATA)
1378                     _RC2REG	.equ	0x198
1379                     
1380                     	.area DSEG(DATA)
1381                     _TMA2R	.equ	0x1E8
1382                     
1383                     	.area DSEG(DATA)
1384                     _TMA2C	.equ	0x1E9
1385                     
1386                     	.area DSEG(DATA)
1387                     _LEDCN	.equ	0x1EA
1388                     
1389                     	.area DSEG(DATA)
1390                     _IQ0	.equ	0x1EB
1391                     
1392                     	.area DSEG(DATA)
1393                     _IQ1	.equ	0x1EC
1394                     
1395                     	.area DSEG(DATA)
1396                     _DGCON1	.equ	0x1ED
1397                     
1398                     	.area DSEG(DATA)
1399                     _DGCON2	.equ	0x1EE
1400                     
1401                     	.area DSEG(DATA)
1402                     _ADCRH	.equ	0x3A
1403                     
1404                     	.area DSEG(DATA)
1405                     _ADCRM	.equ	0x3B
1406                     
1407                     	.area DSEG(DATA)
1408                     _ADCRL	.equ	0x3C
1409                     
1410                     	.area DSEG(DATA)
1411                     _TEMDATA	.equ	0x2E0
1412                     
1413                     ;--------------------------------------------------------
1414                     ; absolute symbol definitions
1415                     ;--------------------------------------------------------
1416                     ;--------------------------------------------------------
1417                     ; compiler-defined variables
1418                     ;--------------------------------------------------------
1419                     	.area IDATA (DATA,REL,CON); pre-def
1420                     	.area IDATAROM (CODE,REL,CON); pre-def
1421                     	.area UDATA (DATA,REL,CON); pre-def
1422                     	.area UDATA (DATA,REL,CON) ;UDL_App_Main_0	udata
1423 @FSR2-CurrentOffset+001 --         r0x108D:	.ds	1
1424 @FSR2-CurrentOffset+003 --         r0x108E:	.ds	1
1425 @FSR2-CurrentOffset+002 --         r0x1090:	.ds	1
1426 @FSR2-CurrentOffset+004 --         r0x1093:	.ds	1
1427                     ;--------------------------------------------------------
1428                     ; initialized data
1429                     ;--------------------------------------------------------
1430                     ;--------------------------------------------------------
1431                     ; initialized data - mirror
1432                     ;--------------------------------------------------------
1433                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Main$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1434                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Main$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1435                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1436                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1437                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1438                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1439                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1440                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1441                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1442                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1443                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1444                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1445                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1446                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1447                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1448                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1449                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1450                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1451                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1452                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1453                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1454                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1455                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1456                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1457                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1458                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1459                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1460                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1461                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1462                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1463                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1464                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1465                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1466                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1467                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1468                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1469                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1470                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1471                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1472                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1473                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1474                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1475                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1476                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1477                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1478                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1479                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1480                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1481                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1482                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1483                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1484                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1485                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1486                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1487                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1488                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1489                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1490                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1491                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1492                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1493                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1494                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1495                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1496                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1497                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1498                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1499                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1500                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1501                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1502                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1503                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1504                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1505                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1506                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1507                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1508                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1509                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1510                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1511                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1512                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1513                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1514                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1515                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1516                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1517                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1518                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1519                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1520                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1521                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1522                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1523                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1524                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1525                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1526                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Main$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1527                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1528                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1529                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1530                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Main$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1531                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1532                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1533                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Main$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1534                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Main$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1535                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Main$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1536                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1537                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1538                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Main$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1539                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Main$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1540                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Main$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1541                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Main$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1542                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Main$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1543                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1544                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1545                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1546                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1547                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1548                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1549                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1550                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1551                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1552                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1553                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1554                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1555                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1556                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1557                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1558                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1559                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1560                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1561                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1562                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1563                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1564                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1565                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1566                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1567                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1568                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1569                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1570                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1571                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1572                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Main$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1573                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1574                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1575                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Main$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1576                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Main$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1577                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1578                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Main$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1579                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1580                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1581                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1582                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1583                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1584                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1585                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1586                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1587                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1588                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1589                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1590                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1591                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1592                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1593                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1594                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1595                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1596                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1597                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1598                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1599                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1600                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1601                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1602                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1603                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1604                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1605                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1606                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1607                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1608                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1609                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1610                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1611                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1612                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1613                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1614                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1615                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1616                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1617                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1618                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1619                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1620                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1621                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1622                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1623                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1624                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1625                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1626                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1627                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1628                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1629                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1630                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1631                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1632                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1633                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1634                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1635                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1636                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1637                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1638                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1639                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1640                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1641                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1642                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1643                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1644                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1645                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1646                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1647                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1648                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1649                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1650                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1651                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1652                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1653                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1654                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1655                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1656                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1657                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1658                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1659                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1660                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1661                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1662                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1663                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1664                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1665                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1666                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Main$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1667                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Main$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1668                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Main$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1669                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1670                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1671                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Main$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1672                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1673                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1674                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1675                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1676                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1677                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1678                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1679                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1680                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1681                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1682                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1683                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1684                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1685                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1686                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1687                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1688                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1689                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1690                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1691                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1692                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1693                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1694                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1695                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1696                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1697                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1698                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1699                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1700                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1701                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1702                     	;Following is optimization info, 
1703                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1704                     	;--cdb--W:r0x108D:NULL+0:-1:1
1705                     	;--cdb--W:r0x108E:NULL+0:-1:1
1706                     	;--cdb--W:r0x1091:NULL+0:-1:1
1707                     	;--cdb--W:r0x108F:NULL+0:-1:1
1708                     	;--cdb--W:r0x1092:NULL+0:-1:1
1709                     	;--cdb--W:r0x1093:NULL+0:-1:1
1710                     	;--cdb--W:r0x108D:NULL+0:-1:0
1711                     	;--cdb--W:r0x1090:r0x108E+1:-1:0
1712                     	;--cdb--W:r0x108E:NULL+0:-1:0
1713                     	;--cdb--W:r0x108F:NULL+0:-1:0
1714                     	;--cdb--W:r0x1091:NULL+0:-1:0
1715                     	;--cdb--W:r0x1092:NULL+0:-1:0
1716                     	END
