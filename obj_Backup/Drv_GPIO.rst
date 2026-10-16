001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
008                     ;;	.file	".\Source\Drv_GPIO.c"
009                     	.module Drv_GPIO
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_GPIO$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FDrv_GPIO$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_GPIO$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FDrv_GPIO$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_GPIO$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FDrv_GPIO$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_GPIO$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FDrv_GPIO$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FDrv_GPIO$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FDrv_GPIO$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_GPIO$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FDrv_GPIO$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FDrv_GPIO$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FDrv_GPIO$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FDrv_GPIO$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FDrv_GPIO$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_GPIO$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FDrv_GPIO$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FDrv_GPIO$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FDrv_GPIO$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:Drv_GPIO:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_GPIO$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_GPIO$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_GPIO$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
119                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
128                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
129                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
136                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
141                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
142                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
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
163                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:Drv_GPIO:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     ;--------------------------------------------------------
166                     ; overlayable items in internal ram 
167                     ;--------------------------------------------------------
168                     ;	udata_ovr
169                     .area CCODE (code,REL,CON) ; Drv_GPIO-code 
170                     .globl _GPIO_Configuration
171                     
172                     ;--------------------------------------------------------
173                     	.FUNC _GPIO_Configuration:$r:0:0
174                     ;--------------------------------------------------------
175                     ;	;.line	27; ".\Source\Drv_GPIO.c"	PT1PU = 0xFF;
176                     _GPIO_Configuration:	;Function start
177 0DB1 [00] [2] 0A56      	SETF	_PT1PU,0
178                     ;	;.line	33; ".\Source\Drv_GPIO.c"	TRISC1 = 0xD1;
179 0DB2 [00] [2] 06D1      	MVL	0xd1
180 0DB3 [00] [2] 6654      	MVF	_TRISC1,1,0
181                     ;	;.line	35; ".\Source\Drv_GPIO.c"	PT1 &= 0x2E;
182 0DB4 [00] [2] 062E      	MVL	0x2e
183 0DB5 [00] [2] 2A53      	ANDF	_PT1,1,0
184                     ;	;.line	38; ".\Source\Drv_GPIO.c"	PT2PU = 0xFF;
185 0DB6 [00] [2] 0A5E      	SETF	_PT2PU,0
186                     ;	;.line	45; ".\Source\Drv_GPIO.c"	TRISC2 = 0x00;
187 0DB7 [00] [2] 0C5C      	CLRF	_TRISC2,0
188                     ;	;.line	49; ".\Source\Drv_GPIO.c"	LCDCN3 = 0x00;
189 0DB8 [00] [1] 0011 0D82 	CLRF	_LCDCN3,0
190                     ;	;.line	52; ".\Source\Drv_GPIO.c"	LCDCN6 = 0x00;
191 0DBA [00] [1] 0D85      	CLRF	_LCDCN6,0
192                     ;	;.line	55; ".\Source\Drv_GPIO.c"	PT6PU = 0xFF;
193 0DBB [00] [1] 0A65      	SETF	_PT6PU,0
194                     ;	;.line	61; ".\Source\Drv_GPIO.c"	LCDCN7 = 0x00;
195 0DBC [00] [1] 0D86      	CLRF	_LCDCN7,0
196                     ;	;.line	64; ".\Source\Drv_GPIO.c"	LCDCN8 = 0x00;
197 0DBD [00] [1] 0D87      	CLRF	_LCDCN8,0
198                     ;	;.line	66; ".\Source\Drv_GPIO.c"	PT7PU = 0xFF;
199 0DBE [00] [1] 0A69      	SETF	_PT7PU,0
200                     ;	;.line	72; ".\Source\Drv_GPIO.c"	LCDCN4 = 0x00;
201 0DBF [00] [1] 0D83      	CLRF	_LCDCN4,0
202                     ;	;.line	74; ".\Source\Drv_GPIO.c"	PT8DA &= 0x00;
203 0DC0 [00] [1] 646C      	MVF	_PT8DA,0,0
204 0DC1 [00] [1] 0C6C      	CLRF	_PT8DA,0
205                     ;	;.line	80; ".\Source\Drv_GPIO.c"	TRISC8 = 0x11;
206 0DC2 [00] [1] 0611      	MVL	0x11
207 0DC3 [00] [1] 666B      	MVF	_TRISC8,1,0
208                     ;	;.line	81; ".\Source\Drv_GPIO.c"	PT8PU = 0xFE;
209 0DC4 [00] [1] 06FE      	MVL	0xfe
210 0DC5 [00] [1] 666D      	MVF	_PT8PU,1,0
211                     ;	;.line	83; ".\Source\Drv_GPIO.c"	PT8 &= 	0xEF;
212 0DC6 [00] [1] 886A      	BCF	_PT8,4
213                     ;	;.line	85; ".\Source\Drv_GPIO.c"	PT8 |= 	0x01;
214 0DC7 [00] [1] 906A      	BSF	_PT8,0
215                     ;	;.line	86; ".\Source\Drv_GPIO.c"	}
216 0DC8 [00] [1] 000A      	RET	
217                     ; exit point of _GPIO_Configuration
218                     	.ENDFUNC	_GPIO_Configuration
219                     ;--------------------------------------------------------
220                     
221                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
222                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
223                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
224                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
225                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
226                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
227                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
228                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
229                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
230                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
231                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
232                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
233                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
234                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
235                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
236                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
237                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
238                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
239                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
240                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
241                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
242                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
243                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
244                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
245                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_GPIO$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
246                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_GPIO$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
247                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_GPIO$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
248                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
249                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
250                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
251                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
252                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
253                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
254                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
255                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
256                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
257                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
258                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
259                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
260                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
261                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
262                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
263                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
264                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
265                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
266                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
267                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
268                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
269                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
270                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
271                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
272                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
273                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
274                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
275                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
276                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
277                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
278                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
279                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
280                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
281                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
282                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
283                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
284                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
285                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
286                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
287                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
288                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
289                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
290                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
291                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
292                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
293                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
294                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
295                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
296                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
297                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
298                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
299                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
300                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
301                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
302                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
303                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
304                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
305                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
306                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
307                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
308                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
309                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
310                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
311                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
312                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
313                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
314                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
315                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
316                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
317                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
318                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
319                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
320                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
321                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
322                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
323                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
324                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
325                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
326                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
327                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
328                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
329                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
330                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
331                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
332                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
333                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
334                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
335                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
336                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
337                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
338                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
339                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
340                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
341                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
342                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
343                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
344                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
345                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
346                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
347                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
348                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
349                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
350                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
351                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
352                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
353                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
354                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
355                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
356                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
357                     	;--cdb--S:LDrv_GPIO.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
358                     	;--cdb--S:LDrv_GPIO.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
359                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FDrv_GPIO$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
360                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
361                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FDrv_GPIO$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
362                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FDrv_GPIO$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
363                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FDrv_GPIO$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
364                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
365                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FDrv_GPIO$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
366                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
367                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
368                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
369                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
370                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
371                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
372                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FDrv_GPIO$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
373                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FDrv_GPIO$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
374                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
375                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FDrv_GPIO$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
376                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
377                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
378                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
379                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
380                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FDrv_GPIO$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
381                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
382                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
383                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
384                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
385                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FDrv_GPIO$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
386                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FDrv_GPIO$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
387                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FDrv_GPIO$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
388                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FDrv_GPIO$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
389                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FDrv_GPIO$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
390                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
391                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FDrv_GPIO$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
392                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
393                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
394                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FDrv_GPIO$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
395                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
396                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FDrv_GPIO$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
397                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
398                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
399                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
400                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
401                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
402                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
403                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
404                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
405                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
406                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
407                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
408                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
409                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
410                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
411                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
412                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
413                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
414                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
415                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
416                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
417                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
418                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
419                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
420                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
421                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
422                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
423                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
424                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
425                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
426                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
427                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
428                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
429                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
430                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
431                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
432                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
433                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
434                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
435                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
436                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
437                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
438                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
439                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
440                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
441                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
442                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
443                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
444                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
445                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
446                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
447                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
448                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
449                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
450                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
451                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
452                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
453                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
454                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
455                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
456                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
457                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
458                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
459                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
460                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
461                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
462                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
463                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
464                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
465                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
466                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
467                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
468                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
469                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
470                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
471                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
472                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
473                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
474                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
475                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
476                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
477                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
478                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
479                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
480                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
481                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
482                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
483                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
484                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
485                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
486                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
487                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
488                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
489                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
490                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
491                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
492                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
493                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
494                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
495                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
496                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
497                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
498                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
499                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
500                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
501                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
502                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
503                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
504                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
505                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
506                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
507                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
508                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
509                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
510                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
511                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
512                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
513                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
514                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
515                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
516                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
517                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
518                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
519                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
520                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
521                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
522                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
523                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
524                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
525                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
526                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
527                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
528                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
529                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
530                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
531                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
532                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
533                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
534                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
535                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
536                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
537                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
538                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
539                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
540                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
541                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
542                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
543                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
544                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
545                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
546                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
547                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
548                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
549                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
550                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
551                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
552                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
553                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
554                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
555                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
556                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
557                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
558                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
559                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
560                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
561                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
562                     ;--------------------------------------------------------
563                     ; external declarations
564                     ;--------------------------------------------------------
565                     	.globl	_FSR0
566                     	.globl	_FSR1
567                     	.globl	_FSR2
568                     	.globl	_ADCR
569                     	.globl	_sIIC
570                     	.globl	_BIE_Available_Addr
571                     	.globl	_sTIMx
572                     	.globl	_sUARTx
573                     	.globl	_sAutoBps
574                     	.globl	_eAutoBps_Status
575                     	.globl	_sTest
576                     	.globl	_eTempUnit
577                     	.globl	_eBondingTempUnit
578                     	.globl	_eVersionCode
579                     	.globl	_eMeasureMode
580                     	.globl	_eBinding_Status
581                     	.globl	_Enter_PrepareSleep_Flag
582                     	.globl	_sButton
583                     	.globl	_sTimeStamp
584                     	.globl	_eButton_Status
585                     	.globl	_sLVD
586                     	.globl	_UnitExchangeCompleted
587                     	.globl	_ERR
588                     	.globl	_eErr
589                     	.globl	_eDisplay_Interfaces
590                     	.globl	_sADC
591                     	.globl	_eADCChannel
592                     	.globl	_eSystem_Mode
593                     	.globl	_eBuzzer_Status
594                     	.globl	_Flag_No_Buzzer
595                     	.globl	_sMemory
596                     	.globl	_sMemoryFlag
597                     	.globl	_sActual
598                     	.globl	_sForecast
599                     	.globl	_sTempCal
600                     	.globl	_eMeas_Status
601                     	.globl	_sActual_Forecast
602                     	.globl	_eTo_Actual_Ways
603                     	.globl	_eBle_Sta
604                     	.globl	_sBleStatus
605                     	.globl	_eBacklight_Status
606                     	.globl	_sBacklight
607                     	.globl	_NUM_CODE
608                     	.globl	_R_Table
609                     	.globl	_CloseTable
610                     
611                     	.globl STK07
612                     	.globl STK07_SAVE
613                     	.globl STK06
614                     	.globl STK06_SAVE
615                     	.globl STK05
616                     	.globl STK05_SAVE
617                     	.globl STK04
618                     	.globl STK04_SAVE
619                     	.globl STK03
620                     	.globl STK03_SAVE
621                     	.globl STK02
622                     	.globl STK02_SAVE
623                     	.globl STK01
624                     	.globl STK01_SAVE
625                     	.globl STK00
626                     	.globl STK00_SAVE
627                     ;--------------------------------------------------------
628                     ; global -1 declarations
629                     ;--------------------------------------------------------
630                     
631                     	.globl	_memcpy
632                     ;--------------------------------------------------------
633                     ; global -2 definitions
634                     ;--------------------------------------------------------
635                     	.area DSEG(DATA)
636                     __SWTGTID	.equ	0xA6A6B2CF
637                     
638                     	.area DSEG(DATA)
639                     _INDF0	.equ	0x0
640                     
641                     	.area DSEG(DATA)
642                     _POINC0	.equ	0x1
643                     
644                     	.area DSEG(DATA)
645                     _PODEC0	.equ	0x2
646                     
647                     	.area DSEG(DATA)
648                     _PRINC0	.equ	0x3
649                     
650                     	.area DSEG(DATA)
651                     _PLUSW0	.equ	0x4
652                     
653                     	.area DSEG(DATA)
654                     _INDF1	.equ	0x5
655                     
656                     	.area DSEG(DATA)
657                     _POINC1	.equ	0x6
658                     
659                     	.area DSEG(DATA)
660                     _PODEC1	.equ	0x7
661                     
662                     	.area DSEG(DATA)
663                     _PRINC1	.equ	0x8
664                     
665                     	.area DSEG(DATA)
666                     _PLUSW1	.equ	0x9
667                     
668                     	.area DSEG(DATA)
669                     _INDF2	.equ	0xA
670                     
671                     	.area DSEG(DATA)
672                     _POINC2	.equ	0xB
673                     
674                     	.area DSEG(DATA)
675                     _PODEC2	.equ	0xC
676                     
677                     	.area DSEG(DATA)
678                     _PRINC2	.equ	0xD
679                     
680                     	.area DSEG(DATA)
681                     _PLUSW2	.equ	0xE
682                     
683                     	.area DSEG(DATA)
684                     _FSR0H	.equ	0xF
685                     
686                     	.area DSEG(DATA)
687                     _FSR0L	.equ	0x10
688                     
689                     	.area DSEG(DATA)
690                     _FSR1H	.equ	0x11
691                     
692                     	.area DSEG(DATA)
693                     _FSR1L	.equ	0x12
694                     
695                     	.area DSEG(DATA)
696                     _FSR2H	.equ	0x13
697                     
698                     	.area DSEG(DATA)
699                     _FSR2L	.equ	0x14
700                     
701                     	.area DSEG(DATA)
702                     _TOSH	.equ	0x16
703                     
704                     	.area DSEG(DATA)
705                     _TOSL	.equ	0x17
706                     
707                     	.area DSEG(DATA)
708                     _SKCN	.equ	0x18
709                     
710                     	.area DSEG(DATA)
711                     _PCLATH	.equ	0x1A
712                     
713                     	.area DSEG(DATA)
714                     _PCLATL	.equ	0x1B
715                     
716                     	.area DSEG(DATA)
717                     _TBLPTRH	.equ	0x1D
718                     
719                     	.area DSEG(DATA)
720                     _TBLPTRL	.equ	0x1E
721                     
722                     	.area DSEG(DATA)
723                     _TBLDH	.equ	0x1F
724                     
725                     	.area DSEG(DATA)
726                     _TBLDL	.equ	0x20
727                     
728                     	.area DSEG(DATA)
729                     _PRODH	.equ	0x21
730                     
731                     	.area DSEG(DATA)
732                     _PRODL	.equ	0x22
733                     
734                     	.area DSEG(DATA)
735                     _INTE0	.equ	0x23
736                     
737                     	.area DSEG(DATA)
738                     _INTE1	.equ	0x24
739                     
740                     	.area DSEG(DATA)
741                     _INTE2	.equ	0x25
742                     
743                     	.area DSEG(DATA)
744                     _INTF0	.equ	0x26
745                     
746                     	.area DSEG(DATA)
747                     _INTF1	.equ	0x27
748                     
749                     	.area DSEG(DATA)
750                     _INTF2	.equ	0x28
751                     
752                     	.area DSEG(DATA)
753                     _WREG	.equ	0x29
754                     
755                     	.area DSEG(DATA)
756                     _BSRCN	.equ	0x2A
757                     
758                     	.area DSEG(DATA)
759                     _STATUS	.equ	0x2B
760                     
761                     	.area DSEG(DATA)
762                     _MSTAT	.equ	0x2B
763                     
764                     	.area DSEG(DATA)
765                     _PSTAT	.equ	0x2C
766                     
767                     	.area DSEG(DATA)
768                     _BIECN	.equ	0x2E
769                     
770                     	.area DSEG(DATA)
771                     _BIEARH	.equ	0x2F
772                     
773                     	.area DSEG(DATA)
774                     _BIEARL	.equ	0x30
775                     
776                     	.area DSEG(DATA)
777                     _BIEDRH	.equ	0x31
778                     
779                     	.area DSEG(DATA)
780                     _BIEDRL	.equ	0x32
781                     
782                     	.area DSEG(DATA)
783                     _PWRCN	.equ	0x33
784                     
785                     	.area DSEG(DATA)
786                     _OSCCN0	.equ	0x34
787                     
788                     	.area DSEG(DATA)
789                     _OSCCN1	.equ	0x35
790                     
791                     	.area DSEG(DATA)
792                     _OSCCN2	.equ	0x36
793                     
794                     	.area DSEG(DATA)
795                     _CSFCN0	.equ	0x37
796                     
797                     	.area DSEG(DATA)
798                     _CSFCN1	.equ	0x38
799                     
800                     	.area DSEG(DATA)
801                     _WDTCN	.equ	0x39
802                     
803                     	.area DSEG(DATA)
804                     _AD1H	.equ	0x3A
805                     
806                     	.area DSEG(DATA)
807                     _AD1M	.equ	0x3B
808                     
809                     	.area DSEG(DATA)
810                     _AD1L	.equ	0x3C
811                     
812                     	.area DSEG(DATA)
813                     _AD1CN0	.equ	0x3D
814                     
815                     	.area DSEG(DATA)
816                     _AD1CN1	.equ	0x3E
817                     
818                     	.area DSEG(DATA)
819                     _AD1CN2	.equ	0x3F
820                     
821                     	.area DSEG(DATA)
822                     _AD1CN3	.equ	0x40
823                     
824                     	.area DSEG(DATA)
825                     _AD1CN4	.equ	0x41
826                     
827                     	.area DSEG(DATA)
828                     _AD1CN5	.equ	0x42
829                     
830                     	.area DSEG(DATA)
831                     _LVDCN	.equ	0x43
832                     
833                     	.area DSEG(DATA)
834                     _TMA1CN	.equ	0x44
835                     
836                     	.area DSEG(DATA)
837                     _TMA1R	.equ	0x45
838                     
839                     	.area DSEG(DATA)
840                     _TMA1C	.equ	0x46
841                     
842                     	.area DSEG(DATA)
843                     _TB1FLAG	.equ	0x47
844                     
845                     	.area DSEG(DATA)
846                     _TB1CN0	.equ	0x48
847                     
848                     	.area DSEG(DATA)
849                     _TB1CN1	.equ	0x49
850                     
851                     	.area DSEG(DATA)
852                     _TB1RH	.equ	0x4A
853                     
854                     	.area DSEG(DATA)
855                     _TB1RL	.equ	0x4B
856                     
857                     	.area DSEG(DATA)
858                     _TB1C0H	.equ	0x4C
859                     
860                     	.area DSEG(DATA)
861                     _TB1C0L	.equ	0x4D
862                     
863                     	.area DSEG(DATA)
864                     _TB1C1H	.equ	0x4E
865                     
866                     	.area DSEG(DATA)
867                     _TB1C1L	.equ	0x4F
868                     
869                     	.area DSEG(DATA)
870                     _TB1C2H	.equ	0x50
871                     
872                     	.area DSEG(DATA)
873                     _TB1C2L	.equ	0x51
874                     
875                     	.area DSEG(DATA)
876                     _TC1CN0	.equ	0x52
877                     
878                     	.area DSEG(DATA)
879                     _PT1	.equ	0x53
880                     
881                     	.area DSEG(DATA)
882                     _TRISC1	.equ	0x54
883                     
884                     	.area DSEG(DATA)
885                     _PT1DA	.equ	0x55
886                     
887                     	.area DSEG(DATA)
888                     _PT1PU	.equ	0x56
889                     
890                     	.area DSEG(DATA)
891                     _PT1M1	.equ	0x57
892                     
893                     	.area DSEG(DATA)
894                     _PT1INT	.equ	0x58
895                     
896                     	.area DSEG(DATA)
897                     _PT1INTE	.equ	0x59
898                     
899                     	.area DSEG(DATA)
900                     _PT1INTF	.equ	0x5A
901                     
902                     	.area DSEG(DATA)
903                     _PT2	.equ	0x5B
904                     
905                     	.area DSEG(DATA)
906                     _TRISC2	.equ	0x5C
907                     
908                     	.area DSEG(DATA)
909                     _PT2DA	.equ	0x5D
910                     
911                     	.area DSEG(DATA)
912                     _PT2PU	.equ	0x5E
913                     
914                     	.area DSEG(DATA)
915                     _PT2INT	.equ	0x5F
916                     
917                     	.area DSEG(DATA)
918                     _PT2INTE	.equ	0x60
919                     
920                     	.area DSEG(DATA)
921                     _PT2INTF	.equ	0x61
922                     
923                     	.area DSEG(DATA)
924                     _PT6	.equ	0x62
925                     
926                     	.area DSEG(DATA)
927                     _TRISC6	.equ	0x63
928                     
929                     	.area DSEG(DATA)
930                     _PT6DA	.equ	0x64
931                     
932                     	.area DSEG(DATA)
933                     _PT6PU	.equ	0x65
934                     
935                     	.area DSEG(DATA)
936                     _PT7	.equ	0x66
937                     
938                     	.area DSEG(DATA)
939                     _TRISC7	.equ	0x67
940                     
941                     	.area DSEG(DATA)
942                     _PT7DA	.equ	0x68
943                     
944                     	.area DSEG(DATA)
945                     _PT7PU	.equ	0x69
946                     
947                     	.area DSEG(DATA)
948                     _PT8	.equ	0x6A
949                     
950                     	.area DSEG(DATA)
951                     _TRISC8	.equ	0x6B
952                     
953                     	.area DSEG(DATA)
954                     _PT8DA	.equ	0x6C
955                     
956                     	.area DSEG(DATA)
957                     _PT8PU	.equ	0x6D
958                     
959                     	.area DSEG(DATA)
960                     _SSPCN0	.equ	0x6E
961                     
962                     	.area DSEG(DATA)
963                     _SSPSTA0	.equ	0x6F
964                     
965                     	.area DSEG(DATA)
966                     _SSPBUF0	.equ	0x70
967                     
968                     	.area DSEG(DATA)
969                     _CFG0	.equ	0x71
970                     
971                     	.area DSEG(DATA)
972                     _ACT0	.equ	0x72
973                     
974                     	.area DSEG(DATA)
975                     _STA0	.equ	0x73
976                     
977                     	.area DSEG(DATA)
978                     _CRG0	.equ	0x74
979                     
980                     	.area DSEG(DATA)
981                     _TOC0	.equ	0x75
982                     
983                     	.area DSEG(DATA)
984                     _RDB0	.equ	0x76
985                     
986                     	.area DSEG(DATA)
987                     _TDB0	.equ	0x77
988                     
989                     	.area DSEG(DATA)
990                     _SID0	.equ	0x78
991                     
992                     	.area DSEG(DATA)
993                     _UR0CN	.equ	0x79
994                     
995                     	.area DSEG(DATA)
996                     _UR0STA	.equ	0x7A
997                     
998                     	.area DSEG(DATA)
999                     _BA0CN	.equ	0x7B
1000                     
1001                     	.area DSEG(DATA)
1002                     _BG0RH	.equ	0x7C
1003                     
1004                     	.area DSEG(DATA)
1005                     _BG0RL	.equ	0x7D
1006                     
1007                     	.area DSEG(DATA)
1008                     _TX0R	.equ	0x7E
1009                     
1010                     	.area DSEG(DATA)
1011                     _RC0REG	.equ	0x7F
1012                     
1013                     	.area DSEG(DATA)
1014                     _LCDCN1	.equ	0x180
1015                     
1016                     	.area DSEG(DATA)
1017                     _LCDCN2	.equ	0x181
1018                     
1019                     	.area DSEG(DATA)
1020                     _LCDCN3	.equ	0x182
1021                     
1022                     	.area DSEG(DATA)
1023                     _LCDCN4	.equ	0x183
1024                     
1025                     	.area DSEG(DATA)
1026                     _LCDCN5	.equ	0x184
1027                     
1028                     	.area DSEG(DATA)
1029                     _LCDCN6	.equ	0x185
1030                     
1031                     	.area DSEG(DATA)
1032                     _LCDCN7	.equ	0x186
1033                     
1034                     	.area DSEG(DATA)
1035                     _LCDCN8	.equ	0x187
1036                     
1037                     	.area DSEG(DATA)
1038                     _LCD0	.equ	0x188
1039                     
1040                     	.area DSEG(DATA)
1041                     _LCD1	.equ	0x189
1042                     
1043                     	.area DSEG(DATA)
1044                     _LCD2	.equ	0x18A
1045                     
1046                     	.area DSEG(DATA)
1047                     _LCD3	.equ	0x18B
1048                     
1049                     	.area DSEG(DATA)
1050                     _LCD4	.equ	0x18C
1051                     
1052                     	.area DSEG(DATA)
1053                     _LCD5	.equ	0x18D
1054                     
1055                     	.area DSEG(DATA)
1056                     _LCD6	.equ	0x18E
1057                     
1058                     	.area DSEG(DATA)
1059                     _LCD7	.equ	0x18F
1060                     
1061                     	.area DSEG(DATA)
1062                     _LCD8	.equ	0x190
1063                     
1064                     	.area DSEG(DATA)
1065                     _LCD9	.equ	0x191
1066                     
1067                     	.area DSEG(DATA)
1068                     _UR2CN	.equ	0x192
1069                     
1070                     	.area DSEG(DATA)
1071                     _UR2STA	.equ	0x193
1072                     
1073                     	.area DSEG(DATA)
1074                     _BA2CN	.equ	0x194
1075                     
1076                     	.area DSEG(DATA)
1077                     _BG2RH	.equ	0x195
1078                     
1079                     	.area DSEG(DATA)
1080                     _BG2RL	.equ	0x196
1081                     
1082                     	.area DSEG(DATA)
1083                     _TX2R	.equ	0x197
1084                     
1085                     	.area DSEG(DATA)
1086                     _RC2REG	.equ	0x198
1087                     
1088                     	.area DSEG(DATA)
1089                     _TMA2R	.equ	0x1E8
1090                     
1091                     	.area DSEG(DATA)
1092                     _TMA2C	.equ	0x1E9
1093                     
1094                     	.area DSEG(DATA)
1095                     _LEDCN	.equ	0x1EA
1096                     
1097                     	.area DSEG(DATA)
1098                     _IQ0	.equ	0x1EB
1099                     
1100                     	.area DSEG(DATA)
1101                     _IQ1	.equ	0x1EC
1102                     
1103                     	.area DSEG(DATA)
1104                     _DGCON1	.equ	0x1ED
1105                     
1106                     	.area DSEG(DATA)
1107                     _DGCON2	.equ	0x1EE
1108                     
1109                     	.area DSEG(DATA)
1110                     _ADCRH	.equ	0x3A
1111                     
1112                     	.area DSEG(DATA)
1113                     _ADCRM	.equ	0x3B
1114                     
1115                     	.area DSEG(DATA)
1116                     _ADCRL	.equ	0x3C
1117                     
1118                     	.area DSEG(DATA)
1119                     _TEMDATA	.equ	0x2E0
1120                     
1121                     ;--------------------------------------------------------
1122                     ; absolute symbol definitions
1123                     ;--------------------------------------------------------
1124                     ;--------------------------------------------------------
1125                     ; compiler-defined variables
1126                     ;--------------------------------------------------------
1127                     	.area IDATA (DATA,REL,CON); pre-def
1128                     	.area IDATAROM (CODE,REL,CON); pre-def
1129                     	.area UDATA (DATA,REL,CON); pre-def
1130                     ;--------------------------------------------------------
1131                     ; initialized data
1132                     ;--------------------------------------------------------
1133                     ;--------------------------------------------------------
1134                     ; initialized data - mirror
1135                     ;--------------------------------------------------------
1136                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FDrv_GPIO$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1137                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FDrv_GPIO$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1138                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1139                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1140                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1141                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1142                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1143                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1144                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1145                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1146                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1147                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1148                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1149                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1150                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1151                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1152                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1153                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1154                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1155                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1156                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1157                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1158                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1159                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1160                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1161                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1162                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1163                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1164                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1165                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1166                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1167                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1168                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1169                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1170                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1171                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1172                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1173                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1174                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1175                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1176                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1177                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1178                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1179                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1180                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1181                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1182                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1183                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1184                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1185                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1186                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1187                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1188                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1189                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1190                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1191                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1192                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1193                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1194                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1195                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1196                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1197                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1198                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1199                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1200                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1201                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1202                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1203                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1204                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1205                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1206                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1207                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1208                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1209                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1210                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1211                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1212                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1213                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1214                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1215                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1216                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1217                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1218                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1219                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1220                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1221                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1222                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1223                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1224                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1225                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1226                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1227                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1228                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1229                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FDrv_GPIO$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1230                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1231                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1232                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1233                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FDrv_GPIO$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1234                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1235                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1236                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FDrv_GPIO$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1237                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FDrv_GPIO$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1238                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FDrv_GPIO$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1239                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1240                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1241                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FDrv_GPIO$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1242                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FDrv_GPIO$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1243                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FDrv_GPIO$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1244                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FDrv_GPIO$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1245                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FDrv_GPIO$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1246                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1247                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1248                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1249                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1250                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1251                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1252                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1253                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1254                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1255                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1256                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1257                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1258                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1259                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1260                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1261                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1262                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1263                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1264                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1265                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1266                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1267                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1268                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1269                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1270                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1271                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1272                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1273                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1274                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1275                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FDrv_GPIO$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1276                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1277                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1278                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FDrv_GPIO$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1279                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FDrv_GPIO$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1280                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1281                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FDrv_GPIO$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1282                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1283                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1284                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1285                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1286                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1287                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1288                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1289                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1290                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1291                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1292                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1293                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1294                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1295                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1296                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1297                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1298                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1299                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1300                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1301                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1302                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1303                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1304                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1305                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1306                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1307                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1308                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1309                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1310                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1311                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1312                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1313                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1314                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1315                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1316                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1317                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1318                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1319                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1320                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1321                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1322                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1323                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1324                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1325                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1326                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1327                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1328                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1329                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1330                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1331                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1332                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1333                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1334                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1335                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1336                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1337                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1338                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1339                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1340                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1341                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1342                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1343                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1344                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1345                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1346                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1347                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1348                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1349                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1350                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1351                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1352                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1353                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1354                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1355                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1356                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1357                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1358                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1359                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1360                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1361                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1362                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1363                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1364                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1365                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1366                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1367                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1368                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1369                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FDrv_GPIO$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1370                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FDrv_GPIO$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1371                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FDrv_GPIO$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1372                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1373                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1374                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FDrv_GPIO$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1375                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1376                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1377                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1378                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1379                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1380                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1381                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1382                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1383                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1384                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1385                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1386                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1387                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1388                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1389                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1390                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1391                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1392                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1393                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1394                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1395                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1396                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1397                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1398                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1399                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1400                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1401                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1402                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1403                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1404                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1405                     	;Following is optimization info, 
1406                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1407                     	;--cdb--W:r0x108C:NULL+0:-1:1
1408                     	END
