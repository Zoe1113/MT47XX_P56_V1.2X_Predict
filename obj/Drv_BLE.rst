001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
008                     ;;	.file	".\Source\Drv_BLE.c"
009                     	.module Drv_BLE
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_BLE$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FDrv_BLE$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_BLE$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FDrv_BLE$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_BLE$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FDrv_BLE$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_BLE$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FDrv_BLE$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FDrv_BLE$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FDrv_BLE$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_BLE$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FDrv_BLE$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FDrv_BLE$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FDrv_BLE$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FDrv_BLE$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FDrv_BLE$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_BLE$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FDrv_BLE$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FDrv_BLE$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FDrv_BLE$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:Drv_BLE:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_BLE$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_BLE$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_BLE$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
090                     	;--cdb--S:G$HY17P56WR3_Delay$0$0({2}DF,SC:U),C,0,0
091                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
092                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
093                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
095                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
096                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
097                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
100                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
101                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
102                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
103                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
104                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
105                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
106                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
107                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
108                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
109                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
110                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
111                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
112                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
113                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
116                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
119                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
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
162                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
163                     	;--cdb--F:Drv_BLE:G$BIE_Read$0$0({2}DF,SI:U),C,0,0,0,0,0
164                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
165                     	;--cdb--F:Drv_BLE:G$BIE_Write$0$0({2}DF,SC:U),C,0,0,0,0,0
166                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
167                     	;--cdb--F:Drv_BLE:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0,0,0,0
168                     ;--------------------------------------------------------
169                     ; overlayable items in internal ram 
170                     ;--------------------------------------------------------
171                     ;	udata_ovr
172                     .area CCODE (code,REL,CON) ; Drv_BLE-code 
173                     .globl _BIE_Polling
174                     
175                     ;--------------------------------------------------------
176                     	.FUNC _BIE_Polling:$r:1:0:$C:_BIE_Read\
177                     :$L:r0x109B
178                     ;--------------------------------------------------------
179                     ;	;.line	133; ".\Source\Drv_BLE.c"	for(BIE_Addr = 0;BIE_Addr < 64;BIE_Addr++)
180 0D75 [00] [1] C481      _BIE_Polling:	;Function start
181 0D76 [01] [1] 0C80      	CLRF	r0x109B,0
182                     _00134_DS_:
183                     ;	;.line	135; ".\Source\Drv_BLE.c"	if(BIE_Read(BIE_Addr) == 0xFFFF)
184 0D77 [01] [X] 6480      	MVF	r0x109B,0,0
185 0D78 [01] [X] C80C      	CALL	_BIE_Read
186                     	.CHKPARA _BIE_Read 1
187 0D79 [01] [2] 2820      	ANDF	STK00,0,0
188 0D7A [01] [2] 3C29      	INSZ	_WREG,0,0
189 0D7B [01] [2] 7802      	JMP	_00135_DS_
190                     ;	;.line	137; ".\Source\Drv_BLE.c"	return BIE_Addr;
191 0D7C [01] [2] 6480      	MVF	r0x109B,0,0
192 0D7D [01] [2] 7805      	JMP	_00136_DS_
193                     _00135_DS_:
194                     ;	;.line	133; ".\Source\Drv_BLE.c"	for(BIE_Addr = 0;BIE_Addr < 64;BIE_Addr++)
195 0D7E [01] [2] 3A80      	INF	r0x109B,1,0
196 0D7F [01] [2] 063F      	MVL	0x3f
197 0D80 [01] [2] 6880      	CPSG	r0x109B,0
198 0D81 [01] [2] 7FF5      	JMP	_00134_DS_
199                     ;	;.line	140; ".\Source\Drv_BLE.c"	return 0xFF;
200 0D82 [01] [2] 06FF      	MVL	0xff
201 0D83 [01] [2] C4BF      _00136_DS_:
202                     ;	;.line	141; ".\Source\Drv_BLE.c"	}
203 0D84 [00] [2] 000A      	RET	
204                     ; exit point of _BIE_Polling
205                     	.ENDFUNC	_BIE_Polling
206                     ;--------------------------------------------------------
207                     
208                     .globl _BIE_Write
209                     
210                     ;--------------------------------------------------------
211                     	.FUNC _BIE_Write:$r:1:3:$C:_AccuracyModeADCOFF:$C:_HY17P56WR3_Delay:$C:_Delay_ms:$C:_ADCAccuracyMode\
212                     :$L:r0x1093:$L:_BIE_Write_STK00:$L:_BIE_Write_STK01
213                     ;--------------------------------------------------------
214                     ;	;.line	77; ".\Source\Drv_BLE.c"	uint8 BIE_Write(uint8 Addr,uint8 DH,uint8 DL)
215 14AD [00] [2] C481      _BIE_Write:	;Function start
216 14AE [01] [2] 6680      	MVF	r0x1093,1,0
217                     ;	;.line	87; ".\Source\Drv_BLE.c"	AccuracyModeADCOFF();
218 14AF [01] [2] C81E      	CALL	_AccuracyModeADCOFF
219                     	.CHKPARA _AccuracyModeADCOFF 0
220                     ;	;.line	90; ".\Source\Drv_BLE.c"	tmp = HY17P56WR3_Delay(Addr,DH,DL,5);
221 14B0 [01] [2] 0605      	MVL	0x05
222 14B1 [01] [2] 660D      	MVF	_HY17P56WR3_Delay_STK02,1,0
223 14B2 [02] [2] 6483      	MVF	_BIE_Write_STK01,0,0
224 14B3 [02] [2] 660D      	MVF	_HY17P56WR3_Delay_STK01,1,0
225 14B4 [03] [2] 6483      	MVF	_BIE_Write_STK00,0,0
226 14B5 [03] [2] 660D      	MVF	_HY17P56WR3_Delay_STK00,1,0
227 14B6 [04] [2] 6483      	MVF	r0x1093,0,0
228 14B7 [04] [2] C852      	CALL	_HY17P56WR3_Delay
229                     	.CHKPARA _HY17P56WR3_Delay 4
230 14B8 [01] [X] 6680      	MVF	r0x1093,1,0
231                     ;	;.line	92; ".\Source\Drv_BLE.c"	Delay_ms(10);
232 14B9 [01] [X] 060A      	MVL	0x0a
233 14BA [01] [X] C000 FCC5 	CALL	_Delay_ms
234                     ;	;.line	95; ".\Source\Drv_BLE.c"	ADCAccuracyMode();
235 14BC [01] [X] C81A      	CALL	_ADCAccuracyMode
236                     	.CHKPARA _ADCAccuracyMode 0
237                     ;	;.line	99; ".\Source\Drv_BLE.c"	GIE_Enable();
238 14BD [01] [X] 9E23      	BSF	_INTE0,7
239                     ;	;.line	101; ".\Source\Drv_BLE.c"	ADC_Enable();
240 14BE [01] [X] 9E3D      	BSF	_AD1CN0,7
241                     ;	;.line	103; ".\Source\Drv_BLE.c"	ADC_CMFREnable();
242 14BF [01] [X] 903D      	BSF	_AD1CN0,0
243                     ;	;.line	107; ".\Source\Drv_BLE.c"	ADC_OSRSelect(OSR_2048);
244 14C0 [01] [X] 643D      	MVF	_AD1CN0,0,0
245 14C1 [01] [X] 01E1      	ANDL	0xe1
246 14C2 [01] [X] 6681      	MVF	_BIE_Write_STK00,1,0
247 14C3 [01] [X] 9681      	BSF	_BIE_Write_STK00,3
248 14C4 [01] [X] 6481      	MVF	_BIE_Write_STK00,0,0
249 14C5 [01] [X] 663D      	MVF	_AD1CN0,1,0
250                     ;	;.line	116; ".\Source\Drv_BLE.c"	sADC.ADCCounts = 0;
251 14C6 [00] [2] 0012 0D45 	CLRF	(_sADC + 2),0
252                     ;	;.line	118; ".\Source\Drv_BLE.c"	Delay_ms(10);
253 14C8 [01] [2] 060A      	MVL	0x0a
254 14C9 [01] [2] C000 FCC5 	CALL	_Delay_ms
255                     ;	;.line	120; ".\Source\Drv_BLE.c"	return tmp;
256 14CB [01] [2] 6480      	MVF	r0x1093,0,0
257                     ;	;.line	121; ".\Source\Drv_BLE.c"	}
258 14CC [01] [2] C4BD 000A 	RET	
259                     ; exit point of _BIE_Write
260                     	.ENDFUNC	_BIE_Write
261                     ;--------------------------------------------------------
262                     
263                     .globl _BIE_Read
264                     
265                     ;--------------------------------------------------------
266                     	.FUNC _BIE_Read:$r:2:1:$C:_Delay_ms\
267                     :$L:r0x108C:$L:r0x108F:$L:r0x108E
268                     ;--------------------------------------------------------
269                     ;	;.line	24; ".\Source\Drv_BLE.c"	uint16 BIE_Read(uint8 Addr)
270 0D85 [00] [X] C483      _BIE_Read:	;Function start
271 0D86 [03] [X] 6682      	MVF	r0x108C,1,0
272                     ;	;.line	33; ".\Source\Drv_BLE.c"	GIE_Disable();
273 0D87 [03] [X] 8E23      	BCF	_INTE0,7
274                     ;	;.line	35; ".\Source\Drv_BLE.c"	ADC_Disable();
275 0D88 [03] [X] 8E3D      	BCF	_AD1CN0,7
276                     ;	;.line	37; ".\Source\Drv_BLE.c"	BIEARL = Addr;
277 0D89 [03] [X] 6482      	MVF	r0x108C,0,0
278 0D8A [03] [X] 6630      	MVF	_BIEARL,1,0
279                     ;	;.line	39; ".\Source\Drv_BLE.c"	BIECN=BIECN | 0x01;
280 0D8B [03] [X] 902E      	BSF	_BIECN,0
281                     _00105_DS_:
282                     ;	;.line	41; ".\Source\Drv_BLE.c"	while((BIECN& 0x01)==1);
283 0D8C [03] [X] 642E      	MVF	_BIECN,0,0
284 0D8D [03] [X] 0101      	ANDL	0x01
285 0D8E [03] [X] 4429      	DCSUZ	_WREG,0,0
286 0D8F [03] [X] 7FFC      	JMP	_00105_DS_
287                     ;	;.line	43; ".\Source\Drv_BLE.c"	BIE_Data = (BIEDRH << 8) | BIEDRL;
288 0D90 [03] [X] 6431      	MVF	_BIEDRH,0,0
289 0D91 [03] [X] 6681      	MVF	r0x108F,1,0
290 0D92 [03] [X] 6432      	MVF	_BIEDRL,0,0
291 0D93 [03] [X] 6680      	MVF	r0x108E,1,0
292                     ;	;.line	45; ".\Source\Drv_BLE.c"	GIE_Enable();
293 0D94 [03] [X] 9E23      	BSF	_INTE0,7
294                     ;	;.line	47; ".\Source\Drv_BLE.c"	ADC_Enable();
295 0D95 [03] [X] 9E3D      	BSF	_AD1CN0,7
296                     ;	;.line	49; ".\Source\Drv_BLE.c"	ADC_CMFREnable();
297 0D96 [03] [X] 903D      	BSF	_AD1CN0,0
298                     ;	;.line	53; ".\Source\Drv_BLE.c"	ADC_OSRSelect(OSR_2048);
299 0D97 [03] [X] 643D      	MVF	_AD1CN0,0,0
300 0D98 [03] [X] 01E1      	ANDL	0xe1
301 0D99 [03] [X] 0208      	IORL	0x08
302 0D9A [03] [X] 663D      	MVF	_AD1CN0,1,0
303                     ;	;.line	64; ".\Source\Drv_BLE.c"	sADC.ADCCounts = 0;
304 0D9B [00] [2] 0012 0D45 	CLRF	(_sADC + 2),0
305                     ;	;.line	66; ".\Source\Drv_BLE.c"	Delay_ms(10);
306 0D9D [03] [2] 060A      	MVL	0x0a
307 0D9E [03] [2] CF26      	CALL	_Delay_ms
308                     	.CHKPARA _Delay_ms 1
309                     ;	;.line	67; ".\Source\Drv_BLE.c"	return BIE_Data;
310 0D9F [03] [2] 6480      	MVF	r0x108E,0,0
311 0DA0 [03] [2] 6620      	MVF	STK00,1,0
312 0DA1 [03] [2] 6481      	MVF	r0x108F,0,0
313                     ;	;.line	68; ".\Source\Drv_BLE.c"	}
314 0DA2 [03] [2] C4BD 000A 	RET	
315                     ; exit point of _BIE_Read
316                     	.ENDFUNC	_BIE_Read
317                     ;--------------------------------------------------------
318                     
319                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
320                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
321                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
322                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
323                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
324                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
325                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
326                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
327                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
328                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
329                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
330                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
331                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
332                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
333                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
334                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
335                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
336                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
337                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
338                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
339                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
340                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
341                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
342                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
343                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_BLE$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
344                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_BLE$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
345                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_BLE$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
346                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
347                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
348                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
349                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
350                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
351                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
352                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
353                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
354                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
355                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
356                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
357                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
358                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
359                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
360                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
361                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
362                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
363                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
364                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
365                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
366                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
367                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
368                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
369                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
370                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
371                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
372                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
373                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
374                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
375                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
376                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
377                     	;--cdb--S:G$HY17P56WR3_Delay$0$0({2}DF,SC:U),C,0,0
378                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
379                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
380                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
381                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
382                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
383                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
384                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
385                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
386                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
387                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
388                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
389                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
390                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
391                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
392                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
393                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
394                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
395                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
396                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
397                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
398                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
399                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
400                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
401                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
402                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
403                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
404                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
405                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
406                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
407                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
408                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
409                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
410                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
411                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
412                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
413                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
414                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
415                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
416                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
417                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
418                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
419                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
420                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
421                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
422                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
423                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
424                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
425                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
426                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
427                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
428                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
429                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
430                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
431                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
432                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
433                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
434                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
435                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
436                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
437                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
438                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
439                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
440                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
441                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
442                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
443                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
444                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
445                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
446                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
447                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
448                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
449                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
450                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
451                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
452                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
453                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
454                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
455                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
456                     	;--cdb--S:LDrv_BLE.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
457                     	;--cdb--S:LDrv_BLE.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
458                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FDrv_BLE$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
459                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
460                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FDrv_BLE$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
461                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FDrv_BLE$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
462                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FDrv_BLE$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
463                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
464                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FDrv_BLE$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
465                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
466                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
467                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
468                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
469                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
470                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
471                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FDrv_BLE$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
472                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FDrv_BLE$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
473                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
474                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FDrv_BLE$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
475                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
476                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
477                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
478                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
479                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FDrv_BLE$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
480                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
481                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
482                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
483                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
484                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FDrv_BLE$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
485                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FDrv_BLE$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
486                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FDrv_BLE$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
487                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FDrv_BLE$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
488                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FDrv_BLE$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
489                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
490                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FDrv_BLE$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
491                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
492                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
493                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FDrv_BLE$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
494                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
495                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FDrv_BLE$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
496                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
497                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
498                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
499                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
500                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
501                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
502                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
503                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
504                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
505                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
506                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
507                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
508                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
509                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
510                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
511                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
512                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
513                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
514                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
515                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
516                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
517                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
518                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
519                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
520                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
521                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
522                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
523                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
524                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
525                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
526                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
527                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
528                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
529                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
530                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
531                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
532                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
533                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
534                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
535                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
536                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
537                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
538                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
539                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
540                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
541                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
542                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
543                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
544                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
545                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
546                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
547                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
548                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
549                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
550                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
551                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
552                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
553                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
554                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
555                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
556                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
557                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
558                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
559                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
560                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
561                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
562                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
563                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
564                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
565                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
566                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
567                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
568                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
569                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
570                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
571                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
572                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
573                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
574                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
575                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
576                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
577                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
578                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
579                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
580                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
581                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
582                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
583                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
584                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
585                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
586                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
587                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
588                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
589                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
590                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
591                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
592                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
593                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
594                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
595                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
596                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
597                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
598                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
599                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
600                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
601                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
602                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
603                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
604                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
605                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
606                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
607                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
608                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
609                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
610                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
611                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
612                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
613                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
614                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
615                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
616                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
617                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
618                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
619                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
620                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
621                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
622                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
623                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
624                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
625                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
626                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
627                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
628                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
629                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
630                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
631                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
632                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
633                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
634                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
635                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
636                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
637                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
638                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
639                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
640                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
641                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
642                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
643                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
644                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
645                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
646                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
647                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
648                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
649                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
650                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
651                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
652                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
653                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
654                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
655                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
656                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
657                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
658                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
659                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
660                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
661                     	;--cdb--S:LDrv_BLE.BIE_Read._BIE_Read_Addr_10000_416$Addr$2710$416({1}SC:U),R,0,0,[r0x108C]
662                     	;--cdb--S:LDrv_BLE.BIE_Read._BIE_Read_BIE_Data_10000_417$BIE_Data$2710$417({2}SI:U),R,0,0,[r0x108E,r0x108F]
663                     	;--cdb--S:LDrv_BLE.BIE_Write._BIE_Write_DL_10000_418$DL$2710$418({1}SC:U),R,0,0,[_BIE_Write_STK01]
664                     	;--cdb--S:LDrv_BLE.BIE_Write._BIE_Write_DH_10000_418$DH$2710$418({1}SC:U),R,0,0,[_BIE_Write_STK00]
665                     	;--cdb--S:LDrv_BLE.BIE_Write._BIE_Write_Addr_10000_418$Addr$2710$418({1}SC:U),R,0,0,[r0x1093]
666                     	;--cdb--S:LDrv_BLE.BIE_Write._BIE_Write_tmp_10000_419$tmp$2710$419({1}SC:U),R,0,0,[r0x1093]
667                     	;--cdb--S:LDrv_BLE.BIE_Polling._BIE_Polling_BIE_Addr_10000_421$BIE_Addr$2710$421({1}SC:U),R,0,0,[r0x109B]
668                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
669                     	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
670                     ;--------------------------------------------------------
671                     ; external declarations
672                     ;--------------------------------------------------------
673                     	.globl	_HY17P56WR3_Delay
674                     	.globl	_ADCAccuracyMode
675                     	.globl	_AccuracyModeADCOFF
676                     	.globl	_Delay_ms
677                     	.globl	_FSR0
678                     	.globl	_FSR1
679                     	.globl	_FSR2
680                     	.globl	_ADCR
681                     	.globl	_sIIC
682                     	.globl	_sTIMx
683                     	.globl	_sUARTx
684                     	.globl	_sAutoBps
685                     	.globl	_eAutoBps_Status
686                     	.globl	_sTest
687                     	.globl	_eTempUnit
688                     	.globl	_eBondingTempUnit
689                     	.globl	_eVersionCode
690                     	.globl	_eMeasureMode
691                     	.globl	_eBinding_Status
692                     	.globl	_Enter_PrepareSleep_Flag
693                     	.globl	_sButton
694                     	.globl	_sTimeStamp
695                     	.globl	_eButton_Status
696                     	.globl	_sLVD
697                     	.globl	_UnitExchangeCompleted
698                     	.globl	_ERR
699                     	.globl	_eErr
700                     	.globl	_eDisplay_Interfaces
701                     	.globl	_sADC
702                     	.globl	_eADCChannel
703                     	.globl	_eSystem_Mode
704                     	.globl	_eBuzzer_Status
705                     	.globl	_Flag_No_Buzzer
706                     	.globl	_sMemory
707                     	.globl	_sMemoryFlag
708                     	.globl	_sActual
709                     	.globl	_sForecast
710                     	.globl	_sTempCal
711                     	.globl	_eMeas_Status
712                     	.globl	_sActual_Forecast
713                     	.globl	_eTo_Actual_Ways
714                     	.globl	_eBle_Sta
715                     	.globl	_sBleStatus
716                     	.globl	_eBacklight_Status
717                     	.globl	_sBacklight
718                     	.globl	_NUM_CODE
719                     	.globl	_R_Table
720                     	.globl	_CloseTable
721                     
722                     	.globl STK07
723                     	.globl STK07_SAVE
724                     	.globl STK06
725                     	.globl STK06_SAVE
726                     	.globl STK05
727                     	.globl STK05_SAVE
728                     	.globl STK04
729                     	.globl STK04_SAVE
730                     	.globl STK03
731                     	.globl STK03_SAVE
732                     	.globl STK02
733                     	.globl STK02_SAVE
734                     	.globl STK01
735                     	.globl STK01_SAVE
736                     	.globl STK00
737                     	.globl STK00_SAVE
738                     ;--------------------------------------------------------
739                     ; global -1 declarations
740                     ;--------------------------------------------------------
741                     	.globl	_BIE_Read
742                     	.globl	_BIE_Write
743                     	.globl	_BIE_Available_Addr
744                     
745                     	.globl	_memcpy
746                     ;--------------------------------------------------------
747                     ; global -2 definitions
748                     ;--------------------------------------------------------
749                     	.area DSEG(DATA)
750 02CA --             _BIE_Available_Addr:	.ds	1
751                     
752                     	.area DSEG(DATA)
753                     __SWTGTID	.equ	0xA6A6B2CF
754                     
755                     	.area DSEG(DATA)
756                     _INDF0	.equ	0x0
757                     
758                     	.area DSEG(DATA)
759                     _POINC0	.equ	0x1
760                     
761                     	.area DSEG(DATA)
762                     _PODEC0	.equ	0x2
763                     
764                     	.area DSEG(DATA)
765                     _PRINC0	.equ	0x3
766                     
767                     	.area DSEG(DATA)
768                     _PLUSW0	.equ	0x4
769                     
770                     	.area DSEG(DATA)
771                     _INDF1	.equ	0x5
772                     
773                     	.area DSEG(DATA)
774                     _POINC1	.equ	0x6
775                     
776                     	.area DSEG(DATA)
777                     _PODEC1	.equ	0x7
778                     
779                     	.area DSEG(DATA)
780                     _PRINC1	.equ	0x8
781                     
782                     	.area DSEG(DATA)
783                     _PLUSW1	.equ	0x9
784                     
785                     	.area DSEG(DATA)
786                     _INDF2	.equ	0xA
787                     
788                     	.area DSEG(DATA)
789                     _POINC2	.equ	0xB
790                     
791                     	.area DSEG(DATA)
792                     _PODEC2	.equ	0xC
793                     
794                     	.area DSEG(DATA)
795                     _PRINC2	.equ	0xD
796                     
797                     	.area DSEG(DATA)
798                     _PLUSW2	.equ	0xE
799                     
800                     	.area DSEG(DATA)
801                     _FSR0H	.equ	0xF
802                     
803                     	.area DSEG(DATA)
804                     _FSR0L	.equ	0x10
805                     
806                     	.area DSEG(DATA)
807                     _FSR1H	.equ	0x11
808                     
809                     	.area DSEG(DATA)
810                     _FSR1L	.equ	0x12
811                     
812                     	.area DSEG(DATA)
813                     _FSR2H	.equ	0x13
814                     
815                     	.area DSEG(DATA)
816                     _FSR2L	.equ	0x14
817                     
818                     	.area DSEG(DATA)
819                     _TOSH	.equ	0x16
820                     
821                     	.area DSEG(DATA)
822                     _TOSL	.equ	0x17
823                     
824                     	.area DSEG(DATA)
825                     _SKCN	.equ	0x18
826                     
827                     	.area DSEG(DATA)
828                     _PCLATH	.equ	0x1A
829                     
830                     	.area DSEG(DATA)
831                     _PCLATL	.equ	0x1B
832                     
833                     	.area DSEG(DATA)
834                     _TBLPTRH	.equ	0x1D
835                     
836                     	.area DSEG(DATA)
837                     _TBLPTRL	.equ	0x1E
838                     
839                     	.area DSEG(DATA)
840                     _TBLDH	.equ	0x1F
841                     
842                     	.area DSEG(DATA)
843                     _TBLDL	.equ	0x20
844                     
845                     	.area DSEG(DATA)
846                     _PRODH	.equ	0x21
847                     
848                     	.area DSEG(DATA)
849                     _PRODL	.equ	0x22
850                     
851                     	.area DSEG(DATA)
852                     _INTE0	.equ	0x23
853                     
854                     	.area DSEG(DATA)
855                     _INTE1	.equ	0x24
856                     
857                     	.area DSEG(DATA)
858                     _INTE2	.equ	0x25
859                     
860                     	.area DSEG(DATA)
861                     _INTF0	.equ	0x26
862                     
863                     	.area DSEG(DATA)
864                     _INTF1	.equ	0x27
865                     
866                     	.area DSEG(DATA)
867                     _INTF2	.equ	0x28
868                     
869                     	.area DSEG(DATA)
870                     _WREG	.equ	0x29
871                     
872                     	.area DSEG(DATA)
873                     _BSRCN	.equ	0x2A
874                     
875                     	.area DSEG(DATA)
876                     _STATUS	.equ	0x2B
877                     
878                     	.area DSEG(DATA)
879                     _MSTAT	.equ	0x2B
880                     
881                     	.area DSEG(DATA)
882                     _PSTAT	.equ	0x2C
883                     
884                     	.area DSEG(DATA)
885                     _BIECN	.equ	0x2E
886                     
887                     	.area DSEG(DATA)
888                     _BIEARH	.equ	0x2F
889                     
890                     	.area DSEG(DATA)
891                     _BIEARL	.equ	0x30
892                     
893                     	.area DSEG(DATA)
894                     _BIEDRH	.equ	0x31
895                     
896                     	.area DSEG(DATA)
897                     _BIEDRL	.equ	0x32
898                     
899                     	.area DSEG(DATA)
900                     _PWRCN	.equ	0x33
901                     
902                     	.area DSEG(DATA)
903                     _OSCCN0	.equ	0x34
904                     
905                     	.area DSEG(DATA)
906                     _OSCCN1	.equ	0x35
907                     
908                     	.area DSEG(DATA)
909                     _OSCCN2	.equ	0x36
910                     
911                     	.area DSEG(DATA)
912                     _CSFCN0	.equ	0x37
913                     
914                     	.area DSEG(DATA)
915                     _CSFCN1	.equ	0x38
916                     
917                     	.area DSEG(DATA)
918                     _WDTCN	.equ	0x39
919                     
920                     	.area DSEG(DATA)
921                     _AD1H	.equ	0x3A
922                     
923                     	.area DSEG(DATA)
924                     _AD1M	.equ	0x3B
925                     
926                     	.area DSEG(DATA)
927                     _AD1L	.equ	0x3C
928                     
929                     	.area DSEG(DATA)
930                     _AD1CN0	.equ	0x3D
931                     
932                     	.area DSEG(DATA)
933                     _AD1CN1	.equ	0x3E
934                     
935                     	.area DSEG(DATA)
936                     _AD1CN2	.equ	0x3F
937                     
938                     	.area DSEG(DATA)
939                     _AD1CN3	.equ	0x40
940                     
941                     	.area DSEG(DATA)
942                     _AD1CN4	.equ	0x41
943                     
944                     	.area DSEG(DATA)
945                     _AD1CN5	.equ	0x42
946                     
947                     	.area DSEG(DATA)
948                     _LVDCN	.equ	0x43
949                     
950                     	.area DSEG(DATA)
951                     _TMA1CN	.equ	0x44
952                     
953                     	.area DSEG(DATA)
954                     _TMA1R	.equ	0x45
955                     
956                     	.area DSEG(DATA)
957                     _TMA1C	.equ	0x46
958                     
959                     	.area DSEG(DATA)
960                     _TB1FLAG	.equ	0x47
961                     
962                     	.area DSEG(DATA)
963                     _TB1CN0	.equ	0x48
964                     
965                     	.area DSEG(DATA)
966                     _TB1CN1	.equ	0x49
967                     
968                     	.area DSEG(DATA)
969                     _TB1RH	.equ	0x4A
970                     
971                     	.area DSEG(DATA)
972                     _TB1RL	.equ	0x4B
973                     
974                     	.area DSEG(DATA)
975                     _TB1C0H	.equ	0x4C
976                     
977                     	.area DSEG(DATA)
978                     _TB1C0L	.equ	0x4D
979                     
980                     	.area DSEG(DATA)
981                     _TB1C1H	.equ	0x4E
982                     
983                     	.area DSEG(DATA)
984                     _TB1C1L	.equ	0x4F
985                     
986                     	.area DSEG(DATA)
987                     _TB1C2H	.equ	0x50
988                     
989                     	.area DSEG(DATA)
990                     _TB1C2L	.equ	0x51
991                     
992                     	.area DSEG(DATA)
993                     _TC1CN0	.equ	0x52
994                     
995                     	.area DSEG(DATA)
996                     _PT1	.equ	0x53
997                     
998                     	.area DSEG(DATA)
999                     _TRISC1	.equ	0x54
1000                     
1001                     	.area DSEG(DATA)
1002                     _PT1DA	.equ	0x55
1003                     
1004                     	.area DSEG(DATA)
1005                     _PT1PU	.equ	0x56
1006                     
1007                     	.area DSEG(DATA)
1008                     _PT1M1	.equ	0x57
1009                     
1010                     	.area DSEG(DATA)
1011                     _PT1INT	.equ	0x58
1012                     
1013                     	.area DSEG(DATA)
1014                     _PT1INTE	.equ	0x59
1015                     
1016                     	.area DSEG(DATA)
1017                     _PT1INTF	.equ	0x5A
1018                     
1019                     	.area DSEG(DATA)
1020                     _PT2	.equ	0x5B
1021                     
1022                     	.area DSEG(DATA)
1023                     _TRISC2	.equ	0x5C
1024                     
1025                     	.area DSEG(DATA)
1026                     _PT2DA	.equ	0x5D
1027                     
1028                     	.area DSEG(DATA)
1029                     _PT2PU	.equ	0x5E
1030                     
1031                     	.area DSEG(DATA)
1032                     _PT2INT	.equ	0x5F
1033                     
1034                     	.area DSEG(DATA)
1035                     _PT2INTE	.equ	0x60
1036                     
1037                     	.area DSEG(DATA)
1038                     _PT2INTF	.equ	0x61
1039                     
1040                     	.area DSEG(DATA)
1041                     _PT6	.equ	0x62
1042                     
1043                     	.area DSEG(DATA)
1044                     _TRISC6	.equ	0x63
1045                     
1046                     	.area DSEG(DATA)
1047                     _PT6DA	.equ	0x64
1048                     
1049                     	.area DSEG(DATA)
1050                     _PT6PU	.equ	0x65
1051                     
1052                     	.area DSEG(DATA)
1053                     _PT7	.equ	0x66
1054                     
1055                     	.area DSEG(DATA)
1056                     _TRISC7	.equ	0x67
1057                     
1058                     	.area DSEG(DATA)
1059                     _PT7DA	.equ	0x68
1060                     
1061                     	.area DSEG(DATA)
1062                     _PT7PU	.equ	0x69
1063                     
1064                     	.area DSEG(DATA)
1065                     _PT8	.equ	0x6A
1066                     
1067                     	.area DSEG(DATA)
1068                     _TRISC8	.equ	0x6B
1069                     
1070                     	.area DSEG(DATA)
1071                     _PT8DA	.equ	0x6C
1072                     
1073                     	.area DSEG(DATA)
1074                     _PT8PU	.equ	0x6D
1075                     
1076                     	.area DSEG(DATA)
1077                     _SSPCN0	.equ	0x6E
1078                     
1079                     	.area DSEG(DATA)
1080                     _SSPSTA0	.equ	0x6F
1081                     
1082                     	.area DSEG(DATA)
1083                     _SSPBUF0	.equ	0x70
1084                     
1085                     	.area DSEG(DATA)
1086                     _CFG0	.equ	0x71
1087                     
1088                     	.area DSEG(DATA)
1089                     _ACT0	.equ	0x72
1090                     
1091                     	.area DSEG(DATA)
1092                     _STA0	.equ	0x73
1093                     
1094                     	.area DSEG(DATA)
1095                     _CRG0	.equ	0x74
1096                     
1097                     	.area DSEG(DATA)
1098                     _TOC0	.equ	0x75
1099                     
1100                     	.area DSEG(DATA)
1101                     _RDB0	.equ	0x76
1102                     
1103                     	.area DSEG(DATA)
1104                     _TDB0	.equ	0x77
1105                     
1106                     	.area DSEG(DATA)
1107                     _SID0	.equ	0x78
1108                     
1109                     	.area DSEG(DATA)
1110                     _UR0CN	.equ	0x79
1111                     
1112                     	.area DSEG(DATA)
1113                     _UR0STA	.equ	0x7A
1114                     
1115                     	.area DSEG(DATA)
1116                     _BA0CN	.equ	0x7B
1117                     
1118                     	.area DSEG(DATA)
1119                     _BG0RH	.equ	0x7C
1120                     
1121                     	.area DSEG(DATA)
1122                     _BG0RL	.equ	0x7D
1123                     
1124                     	.area DSEG(DATA)
1125                     _TX0R	.equ	0x7E
1126                     
1127                     	.area DSEG(DATA)
1128                     _RC0REG	.equ	0x7F
1129                     
1130                     	.area DSEG(DATA)
1131                     _LCDCN1	.equ	0x180
1132                     
1133                     	.area DSEG(DATA)
1134                     _LCDCN2	.equ	0x181
1135                     
1136                     	.area DSEG(DATA)
1137                     _LCDCN3	.equ	0x182
1138                     
1139                     	.area DSEG(DATA)
1140                     _LCDCN4	.equ	0x183
1141                     
1142                     	.area DSEG(DATA)
1143                     _LCDCN5	.equ	0x184
1144                     
1145                     	.area DSEG(DATA)
1146                     _LCDCN6	.equ	0x185
1147                     
1148                     	.area DSEG(DATA)
1149                     _LCDCN7	.equ	0x186
1150                     
1151                     	.area DSEG(DATA)
1152                     _LCDCN8	.equ	0x187
1153                     
1154                     	.area DSEG(DATA)
1155                     _LCD0	.equ	0x188
1156                     
1157                     	.area DSEG(DATA)
1158                     _LCD1	.equ	0x189
1159                     
1160                     	.area DSEG(DATA)
1161                     _LCD2	.equ	0x18A
1162                     
1163                     	.area DSEG(DATA)
1164                     _LCD3	.equ	0x18B
1165                     
1166                     	.area DSEG(DATA)
1167                     _LCD4	.equ	0x18C
1168                     
1169                     	.area DSEG(DATA)
1170                     _LCD5	.equ	0x18D
1171                     
1172                     	.area DSEG(DATA)
1173                     _LCD6	.equ	0x18E
1174                     
1175                     	.area DSEG(DATA)
1176                     _LCD7	.equ	0x18F
1177                     
1178                     	.area DSEG(DATA)
1179                     _LCD8	.equ	0x190
1180                     
1181                     	.area DSEG(DATA)
1182                     _LCD9	.equ	0x191
1183                     
1184                     	.area DSEG(DATA)
1185                     _UR2CN	.equ	0x192
1186                     
1187                     	.area DSEG(DATA)
1188                     _UR2STA	.equ	0x193
1189                     
1190                     	.area DSEG(DATA)
1191                     _BA2CN	.equ	0x194
1192                     
1193                     	.area DSEG(DATA)
1194                     _BG2RH	.equ	0x195
1195                     
1196                     	.area DSEG(DATA)
1197                     _BG2RL	.equ	0x196
1198                     
1199                     	.area DSEG(DATA)
1200                     _TX2R	.equ	0x197
1201                     
1202                     	.area DSEG(DATA)
1203                     _RC2REG	.equ	0x198
1204                     
1205                     	.area DSEG(DATA)
1206                     _TMA2R	.equ	0x1E8
1207                     
1208                     	.area DSEG(DATA)
1209                     _TMA2C	.equ	0x1E9
1210                     
1211                     	.area DSEG(DATA)
1212                     _LEDCN	.equ	0x1EA
1213                     
1214                     	.area DSEG(DATA)
1215                     _IQ0	.equ	0x1EB
1216                     
1217                     	.area DSEG(DATA)
1218                     _IQ1	.equ	0x1EC
1219                     
1220                     	.area DSEG(DATA)
1221                     _DGCON1	.equ	0x1ED
1222                     
1223                     	.area DSEG(DATA)
1224                     _DGCON2	.equ	0x1EE
1225                     
1226                     	.area DSEG(DATA)
1227                     _ADCRH	.equ	0x3A
1228                     
1229                     	.area DSEG(DATA)
1230                     _ADCRM	.equ	0x3B
1231                     
1232                     	.area DSEG(DATA)
1233                     _ADCRL	.equ	0x3C
1234                     
1235                     	.area DSEG(DATA)
1236                     _TEMDATA	.equ	0x2E0
1237                     
1238                     ;--------------------------------------------------------
1239                     ; absolute symbol definitions
1240                     ;--------------------------------------------------------
1241                     ;--------------------------------------------------------
1242                     ; compiler-defined variables
1243                     ;--------------------------------------------------------
1244                     	.area IDATA (DATA,REL,CON); pre-def
1245                     	.area IDATAROM (CODE,REL,CON); pre-def
1246                     	.area UDATA (DATA,REL,CON); pre-def
1247                     	.area UDATA (DATA,REL,CON) ;UDL_Drv_BLE_0	udata
1248 @FSR2-CurrentOffset+001 --         r0x108C:	.ds	1
1249 @FSR2-CurrentOffset+003 --         r0x108E:	.ds	1
1250 @FSR2-CurrentOffset+002 --         r0x108F:	.ds	1
1251 @FSR2-CurrentOffset+001 --         r0x1093:	.ds	1
1252 @FSR2-CurrentOffset+001 --         r0x109B:	.ds	1
1253                     	.area LOCALSTK (STK); local stack var
1254 @FSR2-00 --         _BIE_Write_STK00:	.ds	1
1255                     	.globl _BIE_Write_STK00
1256 @FSR2+01 --         _BIE_Write_STK01:	.ds	1
1257                     	.globl _BIE_Write_STK01
1258                     	.globl _HY17P56WR3_Delay_STK02
1259                     	.globl _HY17P56WR3_Delay_STK01
1260                     	.globl _HY17P56WR3_Delay_STK00
1261                     ;--------------------------------------------------------
1262                     ; initialized data
1263                     ;--------------------------------------------------------
1264                     ;--------------------------------------------------------
1265                     ; initialized data - mirror
1266                     ;--------------------------------------------------------
1267                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FDrv_BLE$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1268                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FDrv_BLE$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1269                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1270                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1271                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1272                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1273                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1274                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1275                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1276                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1277                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1278                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1279                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1280                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1281                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1282                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1283                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1284                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1285                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1286                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1287                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1288                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1289                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1290                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1291                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1292                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1293                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1294                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1295                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1296                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1297                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1298                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1299                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1300                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1301                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1302                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1303                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1304                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1305                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1306                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1307                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1308                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1309                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1310                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1311                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1312                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1313                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1314                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1315                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1316                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1317                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1318                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1319                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1320                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1321                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1322                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1323                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1324                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1325                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1326                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1327                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1328                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1329                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1330                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1331                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1332                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1333                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1334                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1335                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1336                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1337                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1338                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1339                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1340                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1341                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1342                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1343                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1344                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1345                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1346                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1347                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1348                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1349                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1350                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1351                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1352                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1353                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1354                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1355                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1356                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1357                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1358                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1359                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1360                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FDrv_BLE$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1361                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1362                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1363                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1364                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FDrv_BLE$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1365                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1366                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1367                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FDrv_BLE$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1368                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FDrv_BLE$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1369                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FDrv_BLE$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1370                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1371                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1372                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FDrv_BLE$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1373                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FDrv_BLE$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1374                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FDrv_BLE$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1375                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FDrv_BLE$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1376                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FDrv_BLE$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1377                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1378                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1379                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1380                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1381                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1382                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1383                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1384                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1385                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1386                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1387                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1388                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1389                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1390                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1391                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1392                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1393                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1394                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1395                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1396                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1397                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1398                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1399                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1400                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1401                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1402                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1403                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1404                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1405                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1406                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FDrv_BLE$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1407                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1408                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1409                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FDrv_BLE$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1410                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FDrv_BLE$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1411                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1412                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FDrv_BLE$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1413                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1414                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1415                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1416                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1417                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1418                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1419                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1420                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1421                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1422                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1423                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1424                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1425                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1426                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1427                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1428                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1429                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1430                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1431                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1432                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1433                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1434                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1435                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1436                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1437                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1438                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1439                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1440                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1441                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1442                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1443                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1444                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1445                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1446                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1447                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1448                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1449                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1450                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1451                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1452                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1453                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1454                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1455                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1456                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1457                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1458                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1459                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1460                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1461                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1462                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1463                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1464                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1465                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1466                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1467                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1468                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1469                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1470                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1471                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1472                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1473                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1474                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1475                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1476                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1477                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1478                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1479                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1480                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1481                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1482                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1483                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1484                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1485                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1486                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1487                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1488                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1489                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1490                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1491                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1492                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1493                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1494                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1495                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1496                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1497                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1498                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1499                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1500                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FDrv_BLE$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1501                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FDrv_BLE$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1502                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FDrv_BLE$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1503                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1504                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1505                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FDrv_BLE$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1506                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1507                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1508                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1509                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1510                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1511                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1512                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1513                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1514                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1515                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1516                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1517                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1518                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1519                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1520                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1521                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1522                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1523                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1524                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1525                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1526                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1527                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1528                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1529                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1530                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1531                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1532                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1533                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1534                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1535                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1536                     	;Following is optimization info, 
1537                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1538                     	;--cdb--W:r0x109C:NULL+0:-1:1
1539                     	;--cdb--W:r0x109D:NULL+0:-1:1
1540                     	;--cdb--W:r0x108C:NULL+0:-1:1
1541                     	;--cdb--W:r0x108D:NULL+0:-1:1
1542                     	;--cdb--W:r0x108E:NULL+0:-1:1
1543                     	;--cdb--W:r0x108D:NULL+0:0:0
1544                     	;--c2db--RNG$_BIE_Read_Addr_10000_416$272$278
1545                     	;--c2db--RNG$_BIE_Read_BIE_Data_10000_417$292$312
1546                     	;--c2db--RNG$_BIE_Write_DL_10000_418$217$230
1547                     	;--c2db--RNG$_BIE_Write_DH_10000_418$217$230
1548                     	;--c2db--RNG$_BIE_Write_Addr_10000_418$217$230
1549                     	;--c2db--RNG$_BIE_Write_tmp_10000_419$231$256
1550                     	;--c2db--RNG$_BIE_Polling_BIE_Addr_10000_421$179$198
1551                     	END
