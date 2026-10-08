001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\Drv_UART.c"
009                     	.module Drv_UART
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_UART$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FDrv_UART$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_UART$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FDrv_UART$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_UART$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FDrv_UART$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_UART$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FDrv_UART$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FDrv_UART$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FDrv_UART$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_UART$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FDrv_UART$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FDrv_UART$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FDrv_UART$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FDrv_UART$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FDrv_UART$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_UART$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FDrv_UART$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FDrv_UART$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FDrv_UART$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:Drv_UART:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_UART$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_UART$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_UART$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
121                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
124                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
128                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
131                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
137                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
141                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
149                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
152                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
153                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
154                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
155                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
157                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--F:Drv_UART:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0,0,0,0
160                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
161                     	;--cdb--F:Drv_UART:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0,0,0,0
162                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
163                     	;--cdb--F:Drv_UART:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0,0,0,0
164                     	;--cdb--S:G$HexToBcd_2Byte$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:Drv_UART:G$HexToBcd_2Byte$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
167                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
168                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
169                     	;--cdb--S:G$HexToASCII$0$0({2}DF,SV:S),C,0,0
170                     	;--cdb--F:Drv_UART:G$HexToASCII$0$0({2}DF,SV:S),C,0,0,0,0,0
171                     	;--cdb--S:G$UART_Tx_String1$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--F:Drv_UART:G$UART_Tx_String1$0$0({2}DF,SV:S),C,0,0,0,0,0
173                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
174                     	;--cdb--F:Drv_UART:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0,0,0,0
175                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
176                     	;--cdb--F:Drv_UART:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0,0,0,0
177                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
178                     	;--cdb--F:Drv_UART:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0,0,0,0
179                     ;--------------------------------------------------------
180                     ; overlayable items in internal ram 
181                     ;--------------------------------------------------------
182                     ;	udata_ovr
183                     .area CCODE (code,REL,CON) ; Drv_UART-code 
184                     .globl _AutoBps_Configuration
185                     
186                     ;--------------------------------------------------------
187                     	.FUNC _AutoBps_Configuration:$r:0:0:$C:_UART0_Configuration\
188                     :$L:r0x10C2:$L:r0x10C3:$L:r0x10C4
189                     ;--------------------------------------------------------
190                     ;	;.line	167; ".\Source\Drv_UART.c"	if( sBleStatus.AutoBps_OnOff )
191 148E [00] [2] C483      _AutoBps_Configuration:	;Function start
192 148F [00] [1] 0011 BB2E 	BTSS	_sBleStatus,5
193 1491 [03] [1] 7856      	JMP	_00172_DS_
194                     ;	;.line	169; ".\Source\Drv_UART.c"	switch(eAutoBps_Status)
195 1492 [00] [2] 0012 4DED 	RRF	_eAutoBps_Status,0,0
196 1494 [03] [2] A02B      	BTSZ	_STATUS,0
197 1495 [03] [2] 7803      	JMP	_00150_DS_
198 1496 [03] [2] 45ED      	DCSUZ	_eAutoBps_Status,0,0
199 1497 [03] [2] 7808      	JMP	_00151_DS_
200 1498 [03] [2] 784F      	JMP	_00172_DS_
201                     _00150_DS_:
202                     ;	;.line	175; ".\Source\Drv_UART.c"	sAutoBps.BSP_Number = 0;
203 1499 [03] [2] 0DE9      	CLRF	(_sAutoBps + 1),0
204                     ;	;.line	177; ".\Source\Drv_UART.c"	sAutoBps.Cnt_DeviceInfoSend = 4;
205 149A [03] [2] 0604      	MVL	0x04
206 149B [03] [2] 67EA      	MVF	(_sAutoBps + 2),1,0
207                     ;	;.line	179; ".\Source\Drv_UART.c"	sAutoBps.Flag_AutoBps_Completed = FALSE;
208 149C [03] [2] 81E8      	BCF	_sAutoBps,0
209                     ;	;.line	181; ".\Source\Drv_UART.c"	eAutoBps_Status = AutoBps_Searching;
210 149D [03] [2] 0601      	MVL	0x01
211 149E [03] [2] 67ED      	MVF	_eAutoBps_Status,1,0
212                     ;	;.line	183; ".\Source\Drv_UART.c"	break;
213 149F [03] [2] 7848      	JMP	_00172_DS_
214                     _00151_DS_:
215                     ;	;.line	188; ".\Source\Drv_UART.c"	if(!sAutoBps.Flag_AutoBps_Completed)
216 14A0 [03] [2] A1E8      	BTSZ	_sAutoBps,0
217 14A1 [03] [2] 7846      	JMP	_00172_DS_
218                     ;	;.line	191; ".\Source\Drv_UART.c"	if(sAutoBps.Cnt_DeviceInfoSend > 3)
219 14A2 [03] [2] 0603      	MVL	0x03
220 14A3 [03] [2] 69EA      	CPSG	(_sAutoBps + 2),0
221 14A4 [03] [2] 7836      	JMP	_00163_DS_
222                     ;	;.line	194; ".\Source\Drv_UART.c"	sAutoBps.Cnt_DeviceInfoSend = 0;
223 14A5 [03] [2] 0DEA      	CLRF	(_sAutoBps + 2),0
224                     ;	;.line	196; ".\Source\Drv_UART.c"	UART0Disable();
225 14A6 [03] [2] 8E79      	BCF	_UR0CN,7
226                     ;	;.line	198; ".\Source\Drv_UART.c"	UART0_TXDisable();
227 14A7 [03] [2] 8C79      	BCF	_UR0CN,6
228                     ;	;.line	200; ".\Source\Drv_UART.c"	UART0_CRDisable();
229 14A8 [03] [2] 867B      	BCF	_BA0CN,3
230                     ;	;.line	202; ".\Source\Drv_UART.c"	RCIE_Disable();
231 14A9 [03] [2] 8824      	BCF	_INTE1,4
232                     ;	;.line	204; ".\Source\Drv_UART.c"	sAutoBps.BSP_Number++;
233 14AA [03] [2] 3BE9      	INF	(_sAutoBps + 1),1,0
234                     ;	;.line	206; ".\Source\Drv_UART.c"	if(sAutoBps.BSP_Number & 1)
235 14AB [03] [2] B1E9      	BTSS	(_sAutoBps + 1),0
236 14AC [03] [2] 7808      	JMP	_00153_DS_
237                     ;	;.line	208; ".\Source\Drv_UART.c"	sAutoBps.AutoBpsValue = Register_Value + (sAutoBps.BSP_Number>>1);
238 14AD [03] [2] 882B      	BCF	_STATUS,4
239 14AE [03] [2] 51E9      	RRFC	(_sAutoBps + 1),0,0
240 14AF [03] [2] 042F      	ADDL	0x2f
241 14B0 [03] [2] 67EB      	MVF	(_sAutoBps + 3),1,0
242 14B1 [03] [2] 0600      	MVL	0x00
243 14B2 [03] [2] 5429      	RLFC	_WREG,0,0
244 14B3 [03] [2] 67EC      	MVF	(_sAutoBps + 4),1,0
245 14B4 [03] [2] 780A      	JMP	_00154_DS_
246                     _00153_DS_:
247                     ;	;.line	212; ".\Source\Drv_UART.c"	sAutoBps.AutoBpsValue = Register_Value - (sAutoBps.BSP_Number>>1);
248 14B5 [03] [2] 882B      	BCF	_STATUS,4
249 14B6 [03] [2] 51E9      	RRFC	(_sAutoBps + 1),0,0
250 14B7 [03] [2] 0C80      	CLRF	r0x10C4,0
251 14B8 [03] [2] 2429      	COMF	_WREG,0,0
252 14B9 [03] [2] 0430      	ADDL	0x30
253 14BA [03] [2] 67EB      	MVF	(_sAutoBps + 3),1,0
254 14BB [03] [2] 2480      	COMF	r0x10C4,0,0
255 14BC [03] [2] 67EC      	MVF	(_sAutoBps + 4),1,0
256 14BD [03] [2] 0600      	MVL	0x00
257 14BE [03] [2] 17EC      	ADDC	(_sAutoBps + 4),1,0
258                     _00154_DS_:
259                     ;	;.line	215; ".\Source\Drv_UART.c"	if((sAutoBps.AutoBpsValue <= Register_Value - 10) || (sAutoBps.AutoBpsValue >= Register_Value + 10))
260 14BF [03] [2] 65EB      	MVF	(_sAutoBps + 3),0,0
261 14C0 [03] [2] 6682      	MVF	r0x10C2,1,0
262 14C1 [03] [2] 65EC      	MVF	(_sAutoBps + 4),0,0
263 14C2 [03] [2] 6681      	MVF	r0x10C3,1,0
264 14C3 [03] [2] 6482      	MVF	r0x10C2,0,0
265 14C4 [03] [2] 04DA      	ADDL	0xda
266 14C5 [03] [2] 06FF      	MVL	0xff
267 14C6 [03] [2] 1481      	ADDC	r0x10C3,0,0
268 14C7 [03] [2] B82B      	BTSS	_STATUS,4
269 14C8 [03] [2] 7806      	JMP	_00155_DS_
270 14C9 [03] [2] 6482      	MVF	r0x10C2,0,0
271 14CA [03] [2] 04C7      	ADDL	0xc7
272 14CB [03] [2] 06FF      	MVL	0xff
273 14CC [03] [2] 1481      	ADDC	r0x10C3,0,0
274 14CD [03] [2] B82B      	BTSS	_STATUS,4
275 14CE [03] [2] 7807      	JMP	_00156_DS_
276                     _00155_DS_:
277                     ;	;.line	218; ".\Source\Drv_UART.c"	eAutoBps_Status = AutoBps_Searched;
278 14CF [03] [2] 0602      	MVL	0x02
279 14D0 [03] [2] 67ED      	MVF	_eAutoBps_Status,1,0
280                     ;	;.line	219; ".\Source\Drv_UART.c"	sAutoBps.Flag_AutoBps_Completed = FALSE;
281 14D1 [03] [2] 81E8      	BCF	_sAutoBps,0
282                     ;	;.line	221; ".\Source\Drv_UART.c"	sAutoBps.BSP_Number = 0;
283 14D2 [03] [2] 0DE9      	CLRF	(_sAutoBps + 1),0
284                     ;	;.line	222; ".\Source\Drv_UART.c"	ERR[Err7] = TRUE;
285 14D3 [03] [2] 0601      	MVL	0x01
286 14D4 [03] [2] 673C      	MVF	(_ERR + 7),1,0
287 14D5 [03] [2] 7812      	JMP	_00172_DS_
288                     _00156_DS_:
289                     ;	;.line	227; ".\Source\Drv_UART.c"	UART0_Configuration(sAutoBps.AutoBpsValue);
290 14D6 [03] [2] 6482      	MVF	r0x10C2,0,0
291 14D7 [03] [2] 660D      	MVF	_UART0_Configuration_STK00,1,0
292 14D8 [04] [2] 6482      	MVF	r0x10C3,0,0
293 14D9 [04] [2] C810      	CALL	_UART0_Configuration
294                     	.CHKPARA _UART0_Configuration 2
295 14DA [03] [2] 780D      	JMP	_00172_DS_
296                     _00163_DS_:
297                     ;	;.line	233; ".\Source\Drv_UART.c"	if((eBle_Sta == Ble_Advertising) || (eBle_Sta == Ble_Idle))
298 14DB [00] [1] 0011 652D 	MVF	_eBle_Sta,0,0
299 14DD [03] [1] 0303      	XORL	0x03
300 14DE [03] [1] A02B      	BTSZ	_STATUS,0
301 14DF [03] [1] 7803      	JMP	_00159_DS_
302 14E0 [03] [1] 0604      	MVL	0x04
303 14E1 [03] [1] 6D2D      	CPSE	_eBle_Sta,0
304 14E2 [03] [1] 7805      	JMP	_00172_DS_
305                     _00159_DS_:
306                     ;	;.line	236; ".\Source\Drv_UART.c"	eAutoBps_Status = AutoBps_Searched;
307 14E3 [03] [1] 0602      	MVL	0x02
308 14E4 [00] [2] 0012 67ED 	MVF	_eAutoBps_Status,1,0
309                     ;	;.line	237; ".\Source\Drv_UART.c"	sAutoBps.Flag_AutoBps_Completed = TRUE;
310 14E6 [03] [2] 91E8      	BSF	_sAutoBps,0
311                     ;	;.line	239; ".\Source\Drv_UART.c"	sAutoBps.BSP_Number = 0;
312 14E7 [03] [2] 0DE9      	CLRF	(_sAutoBps + 1),0
313 14E8 [03] [X] C4BD      _00172_DS_:
314                     ;	;.line	259; ".\Source\Drv_UART.c"	}
315 14E9 [00] [X] 000A      	RET	
316                     ; exit point of _AutoBps_Configuration
317                     	.ENDFUNC	_AutoBps_Configuration
318                     ;--------------------------------------------------------
319                     
320                     .globl _UART0_Configuration
321                     
322                     ;--------------------------------------------------------
323                     	.FUNC _UART0_Configuration:$r:0:2:$C:_UART0_BGRSet\
324                     :$L:_UART0_Configuration_STK00
325                     ;--------------------------------------------------------
326                     ;	;.line	149; ".\Source\Drv_UART.c"	UART0_BGRSet(UartBps);
327                     _UART0_Configuration:	;Function start
328 14EA [00] [Y] C600 F00D 	MVSF	_UART0_Configuration_STK00,_UART0_BGRSet_STK00
329 14EC [01] [Y] CF9C      	CALL	_UART0_BGRSet
330                     	.CHKPARA _UART0_BGRSet 2
331                     ;	;.line	151; ".\Source\Drv_UART.c"	UART0Enable();
332 14ED [00] [Y] 9E79      	BSF	_UR0CN,7
333                     ;	;.line	153; ".\Source\Drv_UART.c"	UART0_TXEnable();
334 14EE [00] [Y] 9C79      	BSF	_UR0CN,6
335                     ;	;.line	155; ".\Source\Drv_UART.c"	UART0_CREnable();
336 14EF [00] [Y] 967B      	BSF	_BA0CN,3
337                     ;	;.line	157; ".\Source\Drv_UART.c"	RCIE_Enable();
338 14F0 [00] [Y] 9824      	BSF	_INTE1,4
339                     ;	;.line	158; ".\Source\Drv_UART.c"	}
340 14F1 [00] [Y] C4BF 000A 	RET	
341                     ; exit point of _UART0_Configuration
342                     	.ENDFUNC	_UART0_Configuration
343                     ;--------------------------------------------------------
344                     
345                     .globl _UART0_SendASCII
346                     
347                     ;--------------------------------------------------------
348                     	.FUNC _UART0_SendASCII:$r:0:2:$C:_HexToASCII:$C:_UART_Tx_String1\
349                     :$L:r0x10B7:$L:_UART0_SendASCII_STK00
350                     ;--------------------------------------------------------
351                     ;	;.line	132; ".\Source\Drv_UART.c"	void UART0_SendASCII(uint16 L_buf)
352                     _UART0_SendASCII:	;Function start
353                     	MVF	r0x10B7,1,0
354                     ;	;.line	134; ".\Source\Drv_UART.c"	HexToASCII(L_buf,sUARTx.StringArray);
355                     	MVL	(_sUARTx + 5)
356                     	MVF	_HexToASCII_STK02,1,0
357                     	MVL	high (_sUARTx + 5)
358                     	MVF	_HexToASCII_STK01,1,0
359                     	MVF	_UART0_SendASCII_STK00,0,0
360                     	MVF	_HexToASCII_STK00,1,0
361                     	MVF	r0x10B7,0,0
362                     	CALL	_HexToASCII
363                     	.CHKPARA _HexToASCII 4
364                     ;	;.line	135; ".\Source\Drv_UART.c"	UART_Tx_String1(sUARTx.StringArray);
365                     	MVL	(_sUARTx + 5)
366                     	MVF	_UART_Tx_String1_STK00,1,0
367                     	MVL	high (_sUARTx + 5)
368                     	CALL	_UART_Tx_String1
369                     	.CHKPARA _UART_Tx_String1 2
370                     ;	;.line	136; ".\Source\Drv_UART.c"	}
371                     	RET	
372                     ; exit point of _UART0_SendASCII
373                     	.ENDFUNC	_UART0_SendASCII
374                     ;--------------------------------------------------------
375                     
376                     .globl _UART_Tx_String1
377                     
378                     ;--------------------------------------------------------
379                     	.FUNC _UART_Tx_String1:$r:0:2:$C:__g2ptrget1:$C:_UART0_SendByte\
380                     :$L:r0x10B3:$L:_UART_Tx_String1_STK00:$L:r0x10B4
381                     ;--------------------------------------------------------
382                     ;	;.line	119; ".\Source\Drv_UART.c"	void UART_Tx_String1(uint8 *s)
383                     _UART_Tx_String1:	;Function start
384                     	MVF	r0x10B3,1,0
385                     _00134_DS_:
386                     ;	;.line	121; ".\Source\Drv_UART.c"	while(*s)
387                     	MVF	_UART_Tx_String1_STK00,0,0
388                     	MVF	__g2ptrget1_STK00,1,0
389                     	MVF	r0x10B3,0,0
390                     	CALL	__g2ptrget1
391                     	MVF	r0x10B4,1,0
392                     	IORL	0x00
393                     	BTSZ	_STATUS,0
394                     	JMP	_00137_DS_
395                     ;	;.line	123; ".\Source\Drv_UART.c"	UART0_SendByte(*s++);
396                     	INSUZ	_UART_Tx_String1_STK00,1,0
397                     	INF	r0x10B3,1,0
398                     	MVF	r0x10B4,0,0
399                     	CALL	_UART0_SendByte
400                     	JMP	_00134_DS_
401                     _00137_DS_:
402                     ;	;.line	125; ".\Source\Drv_UART.c"	}
403                     	RET	
404                     ; exit point of _UART_Tx_String1
405                     	.ENDFUNC	_UART_Tx_String1
406                     ;--------------------------------------------------------
407                     
408                     .globl _HexToASCII
409                     
410                     ;--------------------------------------------------------
411                     	.FUNC _HexToASCII:$r:0:4:$C:_HexToBcd_2Byte:$C:__g2ptrput1\
412                     :$L:r0x10A8:$L:_HexToASCII_STK00:$L:_HexToASCII_STK01:$L:_HexToASCII_STK02
413                     ;--------------------------------------------------------
414                     ;	;.line	105; ".\Source\Drv_UART.c"	HexToBcd_2Byte(L_buf);
415                     _HexToASCII:	;Function start
416                     	MVSF	_HexToASCII_STK00,_HexToBcd_2Byte_STK00
417                     	CALL	_HexToBcd_2Byte
418                     	.CHKPARA _HexToBcd_2Byte 2
419                     ;	;.line	106; ".\Source\Drv_UART.c"	s[0] = sUARTx.Num[4] + 0x30;
420                     	MVF	(_sUARTx + 4),0,0
421                     	ADDL	0x30
422                     	MVF	__g2ptrput1_STK01,1,0
423                     	MVF	_HexToASCII_STK02,0,0
424                     	MVF	__g2ptrput1_STK00,1,0
425                     	MVF	_HexToASCII_STK01,0,0
426                     	CALL	__g2ptrput1
427                     ;	;.line	107; ".\Source\Drv_UART.c"	s[1] = sUARTx.Num[3] + 0x30;
428                     	INF	_HexToASCII_STK02,0,0
429                     	MVF	_HexToASCII_STK00,1,0
430                     	MVL	0x00
431                     	ADDC	_HexToASCII_STK01,0,0
432                     	MVF	r0x10A8,1,0
433                     	MVF	(_sUARTx + 3),0,0
434                     	ADDL	0x30
435                     	MVF	__g2ptrput1_STK01,1,0
436                     	MVF	_HexToASCII_STK00,0,0
437                     	MVF	__g2ptrput1_STK00,1,0
438                     	MVF	r0x10A8,0,0
439                     	CALL	__g2ptrput1
440                     ;	;.line	108; ".\Source\Drv_UART.c"	s[2] = sUARTx.Num[2] + 0x30;
441                     	MVF	_HexToASCII_STK02,0,0
442                     	ADDL	0x02
443                     	MVF	_HexToASCII_STK00,1,0
444                     	MVL	0x00
445                     	ADDC	_HexToASCII_STK01,0,0
446                     	MVF	r0x10A8,1,0
447                     	MVF	(_sUARTx + 2),0,0
448                     	ADDL	0x30
449                     	MVF	__g2ptrput1_STK01,1,0
450                     	MVF	_HexToASCII_STK00,0,0
451                     	MVF	__g2ptrput1_STK00,1,0
452                     	MVF	r0x10A8,0,0
453                     	CALL	__g2ptrput1
454                     ;	;.line	109; ".\Source\Drv_UART.c"	s[3] = sUARTx.Num[1] + 0x30;
455                     	MVF	_HexToASCII_STK02,0,0
456                     	ADDL	0x03
457                     	MVF	_HexToASCII_STK00,1,0
458                     	MVL	0x00
459                     	ADDC	_HexToASCII_STK01,0,0
460                     	MVF	r0x10A8,1,0
461                     	MVF	(_sUARTx + 1),0,0
462                     	ADDL	0x30
463                     	MVF	__g2ptrput1_STK01,1,0
464                     	MVF	_HexToASCII_STK00,0,0
465                     	MVF	__g2ptrput1_STK00,1,0
466                     	MVF	r0x10A8,0,0
467                     	CALL	__g2ptrput1
468                     ;	;.line	110; ".\Source\Drv_UART.c"	s[4] = sUARTx.Num[0] + 0x30;
469                     	MVL	0x04
470                     	ADDF	_HexToASCII_STK02,1,0
471                     	BTSZ	_STATUS,4
472                     	INF	_HexToASCII_STK01,1,0
473                     	MVF	(_sUARTx + 0),0,0
474                     	ADDL	0x30
475                     	MVF	__g2ptrput1_STK01,1,0
476                     	MVF	_HexToASCII_STK02,0,0
477                     	MVF	__g2ptrput1_STK00,1,0
478                     	MVF	_HexToASCII_STK01,0,0
479                     	CALL	__g2ptrput1
480                     ;	;.line	111; ".\Source\Drv_UART.c"	}
481                     	RET	
482                     ; exit point of _HexToASCII
483                     	.ENDFUNC	_HexToASCII
484                     ;--------------------------------------------------------
485                     
486                     .globl _HexToBcd_2Byte
487                     
488                     ;--------------------------------------------------------
489                     	.FUNC _HexToBcd_2Byte:$r:0:2:$C:__divuint:$C:__moduchar:$C:__moduint\
490                     :$L:r0x109A:$L:_HexToBcd_2Byte_STK00:$L:r0x109C
491                     ;--------------------------------------------------------
492                     ;	;.line	89; ".\Source\Drv_UART.c"	void HexToBcd_2Byte(uint16 L_Hex_Value)
493                     _HexToBcd_2Byte:	;Function start
494                     	MVF	r0x109A,1,0
495                     ;	;.line	91; ".\Source\Drv_UART.c"	sUARTx.Num[4] = L_Hex_Value / 10000;
496                     	MVL	0x10
497                     	MVF	__divuint_STK02,1,0
498                     	MVL	0x27
499                     	MVF	__divuint_STK01,1,0
500                     	MVF	_HexToBcd_2Byte_STK00,0,0
501                     	MVF	__divuint_STK00,1,0
502                     	MVF	r0x109A,0,0
503                     	CALL	__divuint
504                     	.CHKPARA __divuint 4
505                     	MVF	STK00,0,0
506                     	MVF	(_sUARTx + 4),1,0
507                     ;	;.line	92; ".\Source\Drv_UART.c"	sUARTx.Num[3] = L_Hex_Value / 1000 % 10;
508                     	MVL	0xe8
509                     	MVF	__divuint_STK02,1,0
510                     	MVL	0x03
511                     	MVF	__divuint_STK01,1,0
512                     	MVF	_HexToBcd_2Byte_STK00,0,0
513                     	MVF	__divuint_STK00,1,0
514                     	MVF	r0x109A,0,0
515                     	CALL	__divuint
516                     	MVL	0x0a
517                     	MVF	__moduchar_STK00,1,0
518                     	MVF	STK00,0,0
519                     	CALL	__moduchar
520                     	.CHKPARA __moduchar 2
521                     	MVF	(_sUARTx + 3),1,0
522                     ;	;.line	93; ".\Source\Drv_UART.c"	sUARTx.Num[2] = L_Hex_Value / 100 % 10;
523                     	MVL	0x64
524                     	MVF	__divuint_STK02,1,0
525                     	CLRF	__divuint_STK01,0
526                     	MVF	_HexToBcd_2Byte_STK00,0,0
527                     	MVF	__divuint_STK00,1,0
528                     	MVF	r0x109A,0,0
529                     	CALL	__divuint
530                     	MVF	r0x109C,1,0
531                     	MVL	0x0a
532                     	MVF	__moduint_STK02,1,0
533                     	CLRF	__moduint_STK01,0
534                     	MVFF	STK00,__moduint_STK00
535                     	MVF	r0x109C,0,0
536                     	CALL	__moduint
537                     	.CHKPARA __moduint 4
538                     	MVF	STK00,0,0
539                     	MVF	(_sUARTx + 2),1,0
540                     ;	;.line	94; ".\Source\Drv_UART.c"	sUARTx.Num[1] = L_Hex_Value / 10 % 10;
541                     	MVL	0x0a
542                     	MVF	__divuint_STK02,1,0
543                     	CLRF	__divuint_STK01,0
544                     	MVF	_HexToBcd_2Byte_STK00,0,0
545                     	MVF	__divuint_STK00,1,0
546                     	MVF	r0x109A,0,0
547                     	CALL	__divuint
548                     	MVF	r0x109C,1,0
549                     	MVL	0x0a
550                     	MVF	__moduint_STK02,1,0
551                     	CLRF	__moduint_STK01,0
552                     	MVFF	STK00,__moduint_STK00
553                     	MVF	r0x109C,0,0
554                     	CALL	__moduint
555                     	MVF	STK00,0,0
556                     	MVF	(_sUARTx + 1),1,0
557                     ;	;.line	95; ".\Source\Drv_UART.c"	sUARTx.Num[0] = L_Hex_Value % 10;
558                     	MVL	0x0a
559                     	MVF	__moduint_STK02,1,0
560                     	CLRF	__moduint_STK01,0
561                     	MVF	_HexToBcd_2Byte_STK00,0,0
562                     	MVF	__moduint_STK00,1,0
563                     	MVF	r0x109A,0,0
564                     	CALL	__moduint
565                     	MVF	STK00,0,0
566                     	MVF	(_sUARTx + 0),1,0
567                     ;	;.line	96; ".\Source\Drv_UART.c"	}
568                     	RET	
569                     ; exit point of _HexToBcd_2Byte
570                     	.ENDFUNC	_HexToBcd_2Byte
571                     ;--------------------------------------------------------
572                     
573                     .globl _UART0_SendString
574                     
575                     ;--------------------------------------------------------
576                     	.FUNC _UART0_SendString:$r:0:2:$C:__g2ptrget1:$C:_UART0_SendByte\
577                     :$L:r0x1096:$L:_UART0_SendString_STK00:$L:r0x1097
578                     ;--------------------------------------------------------
579                     ;	;.line	75; ".\Source\Drv_UART.c"	void UART0_SendString(uint8 *p)
580                     _UART0_SendString:	;Function start
581                     	MVF	r0x1096,1,0
582                     _00118_DS_:
583                     ;	;.line	77; ".\Source\Drv_UART.c"	while(*p != '\0')
584                     	MVF	_UART0_SendString_STK00,0,0
585                     	MVF	__g2ptrget1_STK00,1,0
586                     	MVF	r0x1096,0,0
587                     	CALL	__g2ptrget1
588                     	MVF	r0x1097,1,0
589                     	IORL	0x00
590                     	BTSZ	_STATUS,0
591                     	JMP	_00121_DS_
592                     ;	;.line	79; ".\Source\Drv_UART.c"	UART0_SendByte(*p);
593                     	MVF	r0x1097,0,0
594                     	CALL	_UART0_SendByte
595                     ;	;.line	80; ".\Source\Drv_UART.c"	p++;
596                     	INSUZ	_UART0_SendString_STK00,1,0
597                     	INF	r0x1096,1,0
598                     	JMP	_00118_DS_
599                     _00121_DS_:
600                     ;	;.line	82; ".\Source\Drv_UART.c"	}
601                     	RET	
602                     ; exit point of _UART0_SendString
603                     	.ENDFUNC	_UART0_SendString
604                     ;--------------------------------------------------------
605                     
606                     .globl _UART0_SendBuffer
607                     
608                     ;--------------------------------------------------------
609                     	.FUNC _UART0_SendBuffer:$r:0:3:$C:__g2ptrget1:$C:_UART0_SendByte\
610                     :$L:r0x108F:$L:_UART0_SendBuffer_STK00:$L:_UART0_SendBuffer_STK01
611                     ;--------------------------------------------------------
612                     ;	;.line	61; ".\Source\Drv_UART.c"	void UART0_SendBuffer(uint8 *pBuffer, uint8 NumByte)
613                     _UART0_SendBuffer:	;Function start
614                     	MVF	r0x108F,1,0
615                     _00110_DS_:
616                     ;	;.line	63; ".\Source\Drv_UART.c"	while(NumByte)
617                     	RRF	_UART0_SendBuffer_STK01,0,0
618                     	BTSZ	_STATUS,0
619                     	JMP	_00113_DS_
620                     ;	;.line	65; ".\Source\Drv_UART.c"	UART0_SendByte(*pBuffer++);
621                     	MVF	_UART0_SendBuffer_STK00,0,0
622                     	MVF	__g2ptrget1_STK00,1,0
623                     	MVF	r0x108F,0,0
624                     	CALL	__g2ptrget1
625                     	INSUZ	_UART0_SendBuffer_STK00,1,0
626                     	INF	r0x108F,1,0
627                     	CALL	_UART0_SendByte
628                     	.CHKPARA _UART0_SendByte 1
629                     ;	;.line	66; ".\Source\Drv_UART.c"	NumByte--;
630                     	DCF	_UART0_SendBuffer_STK01,1,0
631                     	JMP	_00110_DS_
632                     _00113_DS_:
633                     ;	;.line	68; ".\Source\Drv_UART.c"	}
634                     	RET	
635                     ; exit point of _UART0_SendBuffer
636                     	.ENDFUNC	_UART0_SendBuffer
637                     ;--------------------------------------------------------
638                     
639                     .globl _UART0_SendByte
640                     
641                     ;--------------------------------------------------------
642                     	.FUNC _UART0_SendByte:$r:0:1:$L:r0x108C
643                     ;--------------------------------------------------------
644                     ;	;.line	21; ".\Source\Drv_UART.c"	void UART0_SendByte(uint8 Byte)
645                     _UART0_SendByte:	;Function start
646                     	MVF	r0x108C,1,0
647                     _00105_DS_:
648                     ;	;.line	23; ".\Source\Drv_UART.c"	while(!(INTF1 & 0x20));
649                     	BTSS	_INTF1,5
650                     	JMP	_00105_DS_
651                     ;	;.line	24; ".\Source\Drv_UART.c"	TX0R = Byte;
652                     	MVF	r0x108C,0,0
653                     	MVF	_TX0R,1,0
654                     ;	;.line	25; ".\Source\Drv_UART.c"	INTF1 = INTF1 & 0xDF;
655                     	BCF	_INTF1,5
656                     ;	;.line	26; ".\Source\Drv_UART.c"	}
657                     	RET	
658                     ; exit point of _UART0_SendByte
659                     	.ENDFUNC	_UART0_SendByte
660                     ;--------------------------------------------------------
661                     
662                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
663                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
664                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
665                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
666                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
667                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
668                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
669                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
670                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
671                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
672                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
673                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
674                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
675                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
676                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
677                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
678                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
679                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
680                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
681                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
682                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
683                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
684                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
685                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
686                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_UART$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
687                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_UART$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
688                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_UART$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
689                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
690                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
691                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
692                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
693                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
694                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
695                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
696                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
697                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
698                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
699                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
700                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
701                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
702                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
703                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
704                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
705                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
706                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
707                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
708                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
709                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
710                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
711                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
712                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
713                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
714                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
715                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
716                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
717                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
718                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
719                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
720                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
721                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
722                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
723                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
724                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
725                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
726                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
727                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
728                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
729                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
730                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
731                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
732                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
733                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
734                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
735                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
736                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
737                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
738                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
739                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
740                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
741                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
742                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
743                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
744                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
745                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
746                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
747                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
748                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
749                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
750                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
751                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
752                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
753                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
754                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
755                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
756                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
757                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
758                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
759                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
760                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
761                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
762                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
763                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
764                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
765                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
766                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
767                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
768                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
769                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
770                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
771                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
772                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
773                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
774                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
775                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
776                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
777                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
778                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
779                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
780                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
781                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
782                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
783                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
784                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
785                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
786                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
787                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
788                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
789                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
790                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
791                     	;--cdb--S:G$HexToBcd_2Byte$0$0({2}DF,SV:S),C,0,0
792                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
793                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
794                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
795                     	;--cdb--S:G$HexToASCII$0$0({2}DF,SV:S),C,0,0
796                     	;--cdb--S:G$UART_Tx_String1$0$0({2}DF,SV:S),C,0,0
797                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
798                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
799                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
800                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
801                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
802                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
803                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
804                     	;--cdb--S:LDrv_UART.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
805                     	;--cdb--S:LDrv_UART.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
806                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FDrv_UART$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
807                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
808                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FDrv_UART$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
809                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FDrv_UART$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
810                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FDrv_UART$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
811                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
812                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FDrv_UART$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
813                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
814                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
815                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
816                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
817                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
818                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
819                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FDrv_UART$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
820                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FDrv_UART$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
821                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
822                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FDrv_UART$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
823                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
824                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
825                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
826                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
827                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FDrv_UART$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
828                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
829                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
830                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
831                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
832                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FDrv_UART$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
833                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FDrv_UART$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
834                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FDrv_UART$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
835                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FDrv_UART$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
836                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FDrv_UART$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
837                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
838                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FDrv_UART$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
839                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
840                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
841                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FDrv_UART$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
842                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
843                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FDrv_UART$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
844                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
845                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
846                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
847                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
848                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
849                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
850                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
851                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
852                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
853                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
854                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
855                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
856                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
857                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
858                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
859                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
860                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
861                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
862                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
863                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
864                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
865                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
866                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
867                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
868                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
869                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
870                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
871                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
872                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
873                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
874                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
875                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
876                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
877                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
878                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
879                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
880                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
881                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
882                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
883                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
884                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
885                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
886                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
887                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
888                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
889                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
890                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
891                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
892                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
893                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
894                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
895                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
896                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
897                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
898                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
899                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
900                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
901                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
902                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
903                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
904                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
905                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
906                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
907                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
908                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
909                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
910                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
911                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
912                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
913                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
914                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
915                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
916                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
917                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
918                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
919                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
920                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
921                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
922                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
923                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
924                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
925                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
926                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
927                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
928                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
929                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
930                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
931                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
932                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
933                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
934                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
935                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
936                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
937                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
938                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
939                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
940                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
941                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
942                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
943                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
944                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
945                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
946                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
947                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
948                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
949                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
950                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
951                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
952                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
953                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
954                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
955                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
956                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
957                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
958                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
959                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
960                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
961                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
962                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
963                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
964                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
965                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
966                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
967                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
968                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
969                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
970                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
971                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
972                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
973                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
974                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
975                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
976                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
977                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
978                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
979                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
980                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
981                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
982                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
983                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
984                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
985                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
986                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
987                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
988                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
989                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
990                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
991                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
992                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
993                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
994                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
995                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
996                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
997                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
998                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
999                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
1000                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
1001                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
1002                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
1003                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
1004                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
1005                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
1006                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
1007                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
1008                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
1009                     	;--cdb--S:LDrv_UART.UART0_SendByte._UART0_SendByte_Byte_10000_412$Byte$2710$412({1}SC:U),R,0,0,[r0x108C]
1010                     	;--cdb--S:LDrv_UART.UART0_SendBuffer._UART0_SendBuffer_NumByte_10000_414$NumByte$2710$414({1}SC:U),R,0,0,[_UART0_SendBuffer_STK01]
1011                     	;--cdb--S:LDrv_UART.UART0_SendBuffer._UART0_SendBuffer_pBuffer_10000_414$pBuffer$2710$414({2}DT,SC:U),R,0,0,[_UART0_SendBuffer_STK00,r0x108F]
1012                     	;--cdb--S:LDrv_UART.UART0_SendString._UART0_SendString_p_10000_417$p$2710$417({2}DT,SC:U),R,0,0,[_UART0_SendString_STK00,r0x1096]
1013                     	;--cdb--S:LDrv_UART.HexToBcd_2Byte._HexToBcd_2Byte_L_Hex_Value_10000_420$L_Hex_Value$2710$420({2}SI:U),R,0,0,[_HexToBcd_2Byte_STK00,r0x109A]
1014                     	;--cdb--S:LDrv_UART.HexToASCII._HexToASCII_s_10000_422$s$2710$422({2}DT,SC:U),R,0,0,[_HexToASCII_STK02,_HexToASCII_STK01]
1015                     	;--cdb--S:LDrv_UART.HexToASCII._HexToASCII_L_buf_10000_422$L_buf$2710$422({2}SI:U),R,0,0,[_HexToASCII_STK00,r0x10A8]
1016                     	;--cdb--S:LDrv_UART.UART_Tx_String1._UART_Tx_String1_s_10000_424$s$2710$424({2}DT,SC:U),R,0,0,[_UART_Tx_String1_STK00,r0x10B3]
1017                     	;--cdb--S:LDrv_UART.UART0_SendASCII._UART0_SendASCII_L_buf_10000_427$L_buf$2710$427({2}SI:U),R,0,0,[_UART0_SendASCII_STK00,r0x10B7]
1018                     	;--cdb--S:LDrv_UART.UART0_Configuration._UART0_Configuration_UartBps_10000_429$UartBps$2710$429({2}SI:U),R,0,0,[_UART0_Configuration_STK00,r0x10BC]
1019                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
1020                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
1021                     ;--------------------------------------------------------
1022                     ; external declarations
1023                     ;--------------------------------------------------------
1024                     	.globl	_UART0_BGRSet
1025                     	.globl	__divuint
1026                     	.globl	__moduchar
1027                     	.globl	__moduint
1028                     	.globl	_FSR0
1029                     	.globl	_FSR1
1030                     	.globl	_FSR2
1031                     	.globl	_ADCR
1032                     	.globl	_sIIC
1033                     	.globl	_BIE_Available_Addr
1034                     	.globl	_sTIMx
1035                     	.globl	_sTest
1036                     	.globl	_eTempUnit
1037                     	.globl	_eBondingTempUnit
1038                     	.globl	_eVersionCode
1039                     	.globl	_eMeasureMode
1040                     	.globl	_eBinding_Status
1041                     	.globl	_Enter_PrepareSleep_Flag
1042                     	.globl	_sButton
1043                     	.globl	_sTimeStamp
1044                     	.globl	_eButton_Status
1045                     	.globl	_sLVD
1046                     	.globl	_UnitExchangeCompleted
1047                     	.globl	_ERR
1048                     	.globl	_eErr
1049                     	.globl	_eDisplay_Interfaces
1050                     	.globl	_sADC
1051                     	.globl	_eADCChannel
1052                     	.globl	_eSystem_Mode
1053                     	.globl	_eBuzzer_Status
1054                     	.globl	_Flag_No_Buzzer
1055                     	.globl	_sMemory
1056                     	.globl	_sMemoryFlag
1057                     	.globl	_sActual
1058                     	.globl	_sForecast
1059                     	.globl	_sTempCal
1060                     	.globl	_eMeas_Status
1061                     	.globl	_sActual_Forecast
1062                     	.globl	_eTo_Actual_Ways
1063                     	.globl	_eBle_Sta
1064                     	.globl	_sBleStatus
1065                     	.globl	_eBacklight_Status
1066                     	.globl	_sBacklight
1067                     	.globl	_NUM_CODE
1068                     	.globl	_R_Table
1069                     	.globl	_CloseTable
1070                     	.globl	__g2ptrget1
1071                     	.globl	__g2ptrput1
1072                     
1073                     	.globl STK07
1074                     	.globl STK07_SAVE
1075                     	.globl STK06
1076                     	.globl STK06_SAVE
1077                     	.globl STK05
1078                     	.globl STK05_SAVE
1079                     	.globl STK04
1080                     	.globl STK04_SAVE
1081                     	.globl STK03
1082                     	.globl STK03_SAVE
1083                     	.globl STK02
1084                     	.globl STK02_SAVE
1085                     	.globl STK01
1086                     	.globl STK01_SAVE
1087                     	.globl STK00
1088                     	.globl STK00_SAVE
1089                     ;--------------------------------------------------------
1090                     ; global -1 declarations
1091                     ;--------------------------------------------------------
1092                     	.globl	_UART0_SendByte
1093                     	.globl	_UART0_SendBuffer
1094                     	.globl	_UART0_SendString
1095                     	.globl	_HexToBcd_2Byte
1096                     	.globl	_HexToASCII
1097                     	.globl	_UART_Tx_String1
1098                     	.globl	_UART0_SendASCII
1099                     	.globl	_UART0_Configuration
1100                     	.globl	_sUARTx
1101                     	.globl	_sAutoBps
1102                     	.globl	_eAutoBps_Status
1103                     
1104                     	.globl	_memcpy
1105                     ;--------------------------------------------------------
1106                     ; global -2 definitions
1107                     ;--------------------------------------------------------
1108                     	.area DSEG(DATA)
1109 02D9 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sUARTx:	.ds	15
1110                     
1111                     	.area DSEG(DATA)
1112 02E8 -- -- -- -- -- _sAutoBps:	.ds	5
1113                     
1114                     	.area DSEG(DATA)
1115 02ED --             _eAutoBps_Status:	.ds	1
1116                     
1117                     	.area DSEG(DATA)
1118                     __SWTGTID	.equ	0xA6A6B2CF
1119                     
1120                     	.area DSEG(DATA)
1121                     _INDF0	.equ	0x0
1122                     
1123                     	.area DSEG(DATA)
1124                     _POINC0	.equ	0x1
1125                     
1126                     	.area DSEG(DATA)
1127                     _PODEC0	.equ	0x2
1128                     
1129                     	.area DSEG(DATA)
1130                     _PRINC0	.equ	0x3
1131                     
1132                     	.area DSEG(DATA)
1133                     _PLUSW0	.equ	0x4
1134                     
1135                     	.area DSEG(DATA)
1136                     _INDF1	.equ	0x5
1137                     
1138                     	.area DSEG(DATA)
1139                     _POINC1	.equ	0x6
1140                     
1141                     	.area DSEG(DATA)
1142                     _PODEC1	.equ	0x7
1143                     
1144                     	.area DSEG(DATA)
1145                     _PRINC1	.equ	0x8
1146                     
1147                     	.area DSEG(DATA)
1148                     _PLUSW1	.equ	0x9
1149                     
1150                     	.area DSEG(DATA)
1151                     _INDF2	.equ	0xA
1152                     
1153                     	.area DSEG(DATA)
1154                     _POINC2	.equ	0xB
1155                     
1156                     	.area DSEG(DATA)
1157                     _PODEC2	.equ	0xC
1158                     
1159                     	.area DSEG(DATA)
1160                     _PRINC2	.equ	0xD
1161                     
1162                     	.area DSEG(DATA)
1163                     _PLUSW2	.equ	0xE
1164                     
1165                     	.area DSEG(DATA)
1166                     _FSR0H	.equ	0xF
1167                     
1168                     	.area DSEG(DATA)
1169                     _FSR0L	.equ	0x10
1170                     
1171                     	.area DSEG(DATA)
1172                     _FSR1H	.equ	0x11
1173                     
1174                     	.area DSEG(DATA)
1175                     _FSR1L	.equ	0x12
1176                     
1177                     	.area DSEG(DATA)
1178                     _FSR2H	.equ	0x13
1179                     
1180                     	.area DSEG(DATA)
1181                     _FSR2L	.equ	0x14
1182                     
1183                     	.area DSEG(DATA)
1184                     _TOSH	.equ	0x16
1185                     
1186                     	.area DSEG(DATA)
1187                     _TOSL	.equ	0x17
1188                     
1189                     	.area DSEG(DATA)
1190                     _SKCN	.equ	0x18
1191                     
1192                     	.area DSEG(DATA)
1193                     _PCLATH	.equ	0x1A
1194                     
1195                     	.area DSEG(DATA)
1196                     _PCLATL	.equ	0x1B
1197                     
1198                     	.area DSEG(DATA)
1199                     _TBLPTRH	.equ	0x1D
1200                     
1201                     	.area DSEG(DATA)
1202                     _TBLPTRL	.equ	0x1E
1203                     
1204                     	.area DSEG(DATA)
1205                     _TBLDH	.equ	0x1F
1206                     
1207                     	.area DSEG(DATA)
1208                     _TBLDL	.equ	0x20
1209                     
1210                     	.area DSEG(DATA)
1211                     _PRODH	.equ	0x21
1212                     
1213                     	.area DSEG(DATA)
1214                     _PRODL	.equ	0x22
1215                     
1216                     	.area DSEG(DATA)
1217                     _INTE0	.equ	0x23
1218                     
1219                     	.area DSEG(DATA)
1220                     _INTE1	.equ	0x24
1221                     
1222                     	.area DSEG(DATA)
1223                     _INTE2	.equ	0x25
1224                     
1225                     	.area DSEG(DATA)
1226                     _INTF0	.equ	0x26
1227                     
1228                     	.area DSEG(DATA)
1229                     _INTF1	.equ	0x27
1230                     
1231                     	.area DSEG(DATA)
1232                     _INTF2	.equ	0x28
1233                     
1234                     	.area DSEG(DATA)
1235                     _WREG	.equ	0x29
1236                     
1237                     	.area DSEG(DATA)
1238                     _BSRCN	.equ	0x2A
1239                     
1240                     	.area DSEG(DATA)
1241                     _STATUS	.equ	0x2B
1242                     
1243                     	.area DSEG(DATA)
1244                     _MSTAT	.equ	0x2B
1245                     
1246                     	.area DSEG(DATA)
1247                     _PSTAT	.equ	0x2C
1248                     
1249                     	.area DSEG(DATA)
1250                     _BIECN	.equ	0x2E
1251                     
1252                     	.area DSEG(DATA)
1253                     _BIEARH	.equ	0x2F
1254                     
1255                     	.area DSEG(DATA)
1256                     _BIEARL	.equ	0x30
1257                     
1258                     	.area DSEG(DATA)
1259                     _BIEDRH	.equ	0x31
1260                     
1261                     	.area DSEG(DATA)
1262                     _BIEDRL	.equ	0x32
1263                     
1264                     	.area DSEG(DATA)
1265                     _PWRCN	.equ	0x33
1266                     
1267                     	.area DSEG(DATA)
1268                     _OSCCN0	.equ	0x34
1269                     
1270                     	.area DSEG(DATA)
1271                     _OSCCN1	.equ	0x35
1272                     
1273                     	.area DSEG(DATA)
1274                     _OSCCN2	.equ	0x36
1275                     
1276                     	.area DSEG(DATA)
1277                     _CSFCN0	.equ	0x37
1278                     
1279                     	.area DSEG(DATA)
1280                     _CSFCN1	.equ	0x38
1281                     
1282                     	.area DSEG(DATA)
1283                     _WDTCN	.equ	0x39
1284                     
1285                     	.area DSEG(DATA)
1286                     _AD1H	.equ	0x3A
1287                     
1288                     	.area DSEG(DATA)
1289                     _AD1M	.equ	0x3B
1290                     
1291                     	.area DSEG(DATA)
1292                     _AD1L	.equ	0x3C
1293                     
1294                     	.area DSEG(DATA)
1295                     _AD1CN0	.equ	0x3D
1296                     
1297                     	.area DSEG(DATA)
1298                     _AD1CN1	.equ	0x3E
1299                     
1300                     	.area DSEG(DATA)
1301                     _AD1CN2	.equ	0x3F
1302                     
1303                     	.area DSEG(DATA)
1304                     _AD1CN3	.equ	0x40
1305                     
1306                     	.area DSEG(DATA)
1307                     _AD1CN4	.equ	0x41
1308                     
1309                     	.area DSEG(DATA)
1310                     _AD1CN5	.equ	0x42
1311                     
1312                     	.area DSEG(DATA)
1313                     _LVDCN	.equ	0x43
1314                     
1315                     	.area DSEG(DATA)
1316                     _TMA1CN	.equ	0x44
1317                     
1318                     	.area DSEG(DATA)
1319                     _TMA1R	.equ	0x45
1320                     
1321                     	.area DSEG(DATA)
1322                     _TMA1C	.equ	0x46
1323                     
1324                     	.area DSEG(DATA)
1325                     _TB1FLAG	.equ	0x47
1326                     
1327                     	.area DSEG(DATA)
1328                     _TB1CN0	.equ	0x48
1329                     
1330                     	.area DSEG(DATA)
1331                     _TB1CN1	.equ	0x49
1332                     
1333                     	.area DSEG(DATA)
1334                     _TB1RH	.equ	0x4A
1335                     
1336                     	.area DSEG(DATA)
1337                     _TB1RL	.equ	0x4B
1338                     
1339                     	.area DSEG(DATA)
1340                     _TB1C0H	.equ	0x4C
1341                     
1342                     	.area DSEG(DATA)
1343                     _TB1C0L	.equ	0x4D
1344                     
1345                     	.area DSEG(DATA)
1346                     _TB1C1H	.equ	0x4E
1347                     
1348                     	.area DSEG(DATA)
1349                     _TB1C1L	.equ	0x4F
1350                     
1351                     	.area DSEG(DATA)
1352                     _TB1C2H	.equ	0x50
1353                     
1354                     	.area DSEG(DATA)
1355                     _TB1C2L	.equ	0x51
1356                     
1357                     	.area DSEG(DATA)
1358                     _TC1CN0	.equ	0x52
1359                     
1360                     	.area DSEG(DATA)
1361                     _PT1	.equ	0x53
1362                     
1363                     	.area DSEG(DATA)
1364                     _TRISC1	.equ	0x54
1365                     
1366                     	.area DSEG(DATA)
1367                     _PT1DA	.equ	0x55
1368                     
1369                     	.area DSEG(DATA)
1370                     _PT1PU	.equ	0x56
1371                     
1372                     	.area DSEG(DATA)
1373                     _PT1M1	.equ	0x57
1374                     
1375                     	.area DSEG(DATA)
1376                     _PT1INT	.equ	0x58
1377                     
1378                     	.area DSEG(DATA)
1379                     _PT1INTE	.equ	0x59
1380                     
1381                     	.area DSEG(DATA)
1382                     _PT1INTF	.equ	0x5A
1383                     
1384                     	.area DSEG(DATA)
1385                     _PT2	.equ	0x5B
1386                     
1387                     	.area DSEG(DATA)
1388                     _TRISC2	.equ	0x5C
1389                     
1390                     	.area DSEG(DATA)
1391                     _PT2DA	.equ	0x5D
1392                     
1393                     	.area DSEG(DATA)
1394                     _PT2PU	.equ	0x5E
1395                     
1396                     	.area DSEG(DATA)
1397                     _PT2INT	.equ	0x5F
1398                     
1399                     	.area DSEG(DATA)
1400                     _PT2INTE	.equ	0x60
1401                     
1402                     	.area DSEG(DATA)
1403                     _PT2INTF	.equ	0x61
1404                     
1405                     	.area DSEG(DATA)
1406                     _PT6	.equ	0x62
1407                     
1408                     	.area DSEG(DATA)
1409                     _TRISC6	.equ	0x63
1410                     
1411                     	.area DSEG(DATA)
1412                     _PT6DA	.equ	0x64
1413                     
1414                     	.area DSEG(DATA)
1415                     _PT6PU	.equ	0x65
1416                     
1417                     	.area DSEG(DATA)
1418                     _PT7	.equ	0x66
1419                     
1420                     	.area DSEG(DATA)
1421                     _TRISC7	.equ	0x67
1422                     
1423                     	.area DSEG(DATA)
1424                     _PT7DA	.equ	0x68
1425                     
1426                     	.area DSEG(DATA)
1427                     _PT7PU	.equ	0x69
1428                     
1429                     	.area DSEG(DATA)
1430                     _PT8	.equ	0x6A
1431                     
1432                     	.area DSEG(DATA)
1433                     _TRISC8	.equ	0x6B
1434                     
1435                     	.area DSEG(DATA)
1436                     _PT8DA	.equ	0x6C
1437                     
1438                     	.area DSEG(DATA)
1439                     _PT8PU	.equ	0x6D
1440                     
1441                     	.area DSEG(DATA)
1442                     _SSPCN0	.equ	0x6E
1443                     
1444                     	.area DSEG(DATA)
1445                     _SSPSTA0	.equ	0x6F
1446                     
1447                     	.area DSEG(DATA)
1448                     _SSPBUF0	.equ	0x70
1449                     
1450                     	.area DSEG(DATA)
1451                     _CFG0	.equ	0x71
1452                     
1453                     	.area DSEG(DATA)
1454                     _ACT0	.equ	0x72
1455                     
1456                     	.area DSEG(DATA)
1457                     _STA0	.equ	0x73
1458                     
1459                     	.area DSEG(DATA)
1460                     _CRG0	.equ	0x74
1461                     
1462                     	.area DSEG(DATA)
1463                     _TOC0	.equ	0x75
1464                     
1465                     	.area DSEG(DATA)
1466                     _RDB0	.equ	0x76
1467                     
1468                     	.area DSEG(DATA)
1469                     _TDB0	.equ	0x77
1470                     
1471                     	.area DSEG(DATA)
1472                     _SID0	.equ	0x78
1473                     
1474                     	.area DSEG(DATA)
1475                     _UR0CN	.equ	0x79
1476                     
1477                     	.area DSEG(DATA)
1478                     _UR0STA	.equ	0x7A
1479                     
1480                     	.area DSEG(DATA)
1481                     _BA0CN	.equ	0x7B
1482                     
1483                     	.area DSEG(DATA)
1484                     _BG0RH	.equ	0x7C
1485                     
1486                     	.area DSEG(DATA)
1487                     _BG0RL	.equ	0x7D
1488                     
1489                     	.area DSEG(DATA)
1490                     _TX0R	.equ	0x7E
1491                     
1492                     	.area DSEG(DATA)
1493                     _RC0REG	.equ	0x7F
1494                     
1495                     	.area DSEG(DATA)
1496                     _LCDCN1	.equ	0x180
1497                     
1498                     	.area DSEG(DATA)
1499                     _LCDCN2	.equ	0x181
1500                     
1501                     	.area DSEG(DATA)
1502                     _LCDCN3	.equ	0x182
1503                     
1504                     	.area DSEG(DATA)
1505                     _LCDCN4	.equ	0x183
1506                     
1507                     	.area DSEG(DATA)
1508                     _LCDCN5	.equ	0x184
1509                     
1510                     	.area DSEG(DATA)
1511                     _LCDCN6	.equ	0x185
1512                     
1513                     	.area DSEG(DATA)
1514                     _LCDCN7	.equ	0x186
1515                     
1516                     	.area DSEG(DATA)
1517                     _LCDCN8	.equ	0x187
1518                     
1519                     	.area DSEG(DATA)
1520                     _LCD0	.equ	0x188
1521                     
1522                     	.area DSEG(DATA)
1523                     _LCD1	.equ	0x189
1524                     
1525                     	.area DSEG(DATA)
1526                     _LCD2	.equ	0x18A
1527                     
1528                     	.area DSEG(DATA)
1529                     _LCD3	.equ	0x18B
1530                     
1531                     	.area DSEG(DATA)
1532                     _LCD4	.equ	0x18C
1533                     
1534                     	.area DSEG(DATA)
1535                     _LCD5	.equ	0x18D
1536                     
1537                     	.area DSEG(DATA)
1538                     _LCD6	.equ	0x18E
1539                     
1540                     	.area DSEG(DATA)
1541                     _LCD7	.equ	0x18F
1542                     
1543                     	.area DSEG(DATA)
1544                     _LCD8	.equ	0x190
1545                     
1546                     	.area DSEG(DATA)
1547                     _LCD9	.equ	0x191
1548                     
1549                     	.area DSEG(DATA)
1550                     _UR2CN	.equ	0x192
1551                     
1552                     	.area DSEG(DATA)
1553                     _UR2STA	.equ	0x193
1554                     
1555                     	.area DSEG(DATA)
1556                     _BA2CN	.equ	0x194
1557                     
1558                     	.area DSEG(DATA)
1559                     _BG2RH	.equ	0x195
1560                     
1561                     	.area DSEG(DATA)
1562                     _BG2RL	.equ	0x196
1563                     
1564                     	.area DSEG(DATA)
1565                     _TX2R	.equ	0x197
1566                     
1567                     	.area DSEG(DATA)
1568                     _RC2REG	.equ	0x198
1569                     
1570                     	.area DSEG(DATA)
1571                     _TMA2R	.equ	0x1E8
1572                     
1573                     	.area DSEG(DATA)
1574                     _TMA2C	.equ	0x1E9
1575                     
1576                     	.area DSEG(DATA)
1577                     _LEDCN	.equ	0x1EA
1578                     
1579                     	.area DSEG(DATA)
1580                     _IQ0	.equ	0x1EB
1581                     
1582                     	.area DSEG(DATA)
1583                     _IQ1	.equ	0x1EC
1584                     
1585                     	.area DSEG(DATA)
1586                     _DGCON1	.equ	0x1ED
1587                     
1588                     	.area DSEG(DATA)
1589                     _DGCON2	.equ	0x1EE
1590                     
1591                     	.area DSEG(DATA)
1592                     _ADCRH	.equ	0x3A
1593                     
1594                     	.area DSEG(DATA)
1595                     _ADCRM	.equ	0x3B
1596                     
1597                     	.area DSEG(DATA)
1598                     _ADCRL	.equ	0x3C
1599                     
1600                     	.area DSEG(DATA)
1601                     _TEMDATA	.equ	0x2E0
1602                     
1603                     ;--------------------------------------------------------
1604                     ; absolute symbol definitions
1605                     ;--------------------------------------------------------
1606                     ;--------------------------------------------------------
1607                     ; compiler-defined variables
1608                     ;--------------------------------------------------------
1609                     	.area IDATA (DATA,REL,CON); pre-def
1610                     	.area IDATAROM (CODE,REL,CON); pre-def
1611                     	.area UDATA (DATA,REL,CON); pre-def
1612                     	.area UDATA (DATA,REL,CON) ;UDL_Drv_UART_0	udata
1613 0000 --             r0x108C:	.ds	1
1614 0000 --             r0x108F:	.ds	1
1615 0000 --             r0x1096:	.ds	1
1616 0000 --             r0x1097:	.ds	1
1617 0000 --             r0x109A:	.ds	1
1618 0000 --             r0x109C:	.ds	1
1619 0000 --             r0x10A8:	.ds	1
1620 0000 --             r0x10B3:	.ds	1
1621 0000 --             r0x10B4:	.ds	1
1622 0000 --             r0x10B7:	.ds	1
1623 @FSR2-CurrentOffset+001 --         r0x10C2:	.ds	1
1624 @FSR2-CurrentOffset+002 --         r0x10C3:	.ds	1
1625 @FSR2-CurrentOffset+003 --         r0x10C4:	.ds	1
1626                     	.area LOCALSTK (STK); local stack var
1627 0000 --             _UART0_SendBuffer_STK00:	.ds	1
1628                     	.globl _UART0_SendBuffer_STK00
1629 0000 --             _UART0_SendBuffer_STK01:	.ds	1
1630                     	.globl _UART0_SendBuffer_STK01
1631                     	.globl __g2ptrget1_STK00
1632 0000 --             _UART0_SendString_STK00:	.ds	1
1633                     	.globl _UART0_SendString_STK00
1634 0000 --             _HexToBcd_2Byte_STK00:	.ds	1
1635                     	.globl _HexToBcd_2Byte_STK00
1636                     	.globl __divuint_STK02
1637                     	.globl __divuint_STK01
1638                     	.globl __divuint_STK00
1639                     	.globl __moduchar_STK00
1640                     	.globl __moduint_STK02
1641                     	.globl __moduint_STK01
1642                     	.globl __moduint_STK00
1643 0000 --             _HexToASCII_STK00:	.ds	1
1644                     	.globl _HexToASCII_STK00
1645 0000 --             _HexToASCII_STK01:	.ds	1
1646                     	.globl _HexToASCII_STK01
1647 0000 --             _HexToASCII_STK02:	.ds	1
1648                     	.globl _HexToASCII_STK02
1649                     	.globl __g2ptrput1_STK01
1650                     	.globl __g2ptrput1_STK00
1651 0000 --             _UART_Tx_String1_STK00:	.ds	1
1652                     	.globl _UART_Tx_String1_STK00
1653 0000 --             _UART0_SendASCII_STK00:	.ds	1
1654                     	.globl _UART0_SendASCII_STK00
1655 @FSR2-00 --         _UART0_Configuration_STK00:	.ds	1
1656                     	.globl _UART0_Configuration_STK00
1657                     	.globl _UART0_BGRSet_STK00
1658                     ;--------------------------------------------------------
1659                     ; initialized data
1660                     ;--------------------------------------------------------
1661                     ;--------------------------------------------------------
1662                     ; initialized data - mirror
1663                     ;--------------------------------------------------------
1664                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FDrv_UART$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1665                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FDrv_UART$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1666                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1667                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1668                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1669                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1670                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1671                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1672                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1673                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1674                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1675                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1676                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1677                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1678                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1679                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1680                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1681                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1682                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1683                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1684                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1685                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1686                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1687                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1688                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1689                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1690                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1691                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1692                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1693                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1694                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1695                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1696                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1697                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1698                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1699                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1700                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1701                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1702                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1703                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1704                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1705                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1706                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1707                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1708                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1709                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1710                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1711                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1712                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1713                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1714                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1715                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1716                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1717                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1718                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1719                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1720                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1721                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1722                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1723                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1724                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1725                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1726                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1727                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1728                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1729                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1730                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1731                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1732                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1733                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1734                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1735                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1736                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1737                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1738                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1739                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1740                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1741                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1742                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1743                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1744                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1745                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1746                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1747                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1748                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1749                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1750                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1751                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1752                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1753                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1754                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1755                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1756                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1757                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FDrv_UART$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1758                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1759                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1760                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1761                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FDrv_UART$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1762                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1763                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1764                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FDrv_UART$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1765                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FDrv_UART$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1766                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FDrv_UART$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1767                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1768                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1769                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FDrv_UART$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1770                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FDrv_UART$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1771                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FDrv_UART$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1772                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FDrv_UART$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1773                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FDrv_UART$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1774                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1775                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1776                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1777                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1778                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1779                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1780                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1781                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1782                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1783                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1784                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1785                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1786                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1787                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1788                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1789                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1790                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1791                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1792                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1793                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1794                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1795                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1796                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1797                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1798                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1799                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1800                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1801                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1802                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1803                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FDrv_UART$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1804                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1805                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1806                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FDrv_UART$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1807                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FDrv_UART$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1808                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1809                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FDrv_UART$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1810                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1811                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1812                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1813                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1814                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1815                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1816                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1817                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1818                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1819                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1820                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1821                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1822                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1823                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1824                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1825                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1826                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1827                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1828                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1829                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1830                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1831                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1832                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1833                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1834                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1835                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1836                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1837                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1838                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1839                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1840                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1841                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1842                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1843                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1844                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1845                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1846                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1847                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1848                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1849                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1850                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1851                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1852                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1853                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1854                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1855                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1856                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1857                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1858                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1859                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1860                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1861                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1862                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1863                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1864                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1865                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1866                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1867                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1868                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1869                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1870                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1871                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1872                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1873                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1874                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1875                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1876                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1877                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1878                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1879                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1880                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1881                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1882                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1883                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1884                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1885                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1886                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1887                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1888                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1889                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1890                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1891                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1892                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1893                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1894                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1895                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1896                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1897                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FDrv_UART$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1898                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FDrv_UART$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1899                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FDrv_UART$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1900                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1901                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1902                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FDrv_UART$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1903                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1904                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1905                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1906                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1907                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1908                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1909                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1910                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1911                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1912                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1913                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1914                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1915                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1916                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1917                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1918                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1919                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1920                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1921                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1922                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1923                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1924                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1925                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1926                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1927                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1928                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1929                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1930                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1931                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1932                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1933                     	;Following is optimization info, 
1934                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1935                     	;--cdb--W:r0x10C2:NULL+0:-1:1
1936                     	;--cdb--W:r0x10C3:NULL+0:-1:1
1937                     	;--cdb--W:r0x10C4:NULL+0:-1:1
1938                     	;--cdb--W:r0x10C0:NULL+0:-1:0
1939                     	;--cdb--W:r0x10C1:NULL+0:-1:0
1940                     	;--cdb--W:r0x10C4:NULL+0:-1:0
1941                     	;--cdb--W:r0x10C5:NULL+0:-1:0
1942                     	;--cdb--W:r0x10C0:NULL+0:-1:1
1943                     	;--cdb--W:r0x10C1:NULL+0:-1:1
1944                     	;--cdb--W:r0x10C5:NULL+0:-1:1
1945                     	;--cdb--W:_UART0_Configuration_STK00:NULL+0:-1:1
1946                     	;--cdb--W:r0x10BC:NULL+0:-1:1
1947                     	;--cdb--W:r0x10B7:NULL+0:-1:0
1948                     	;--cdb--W:_UART0_SendASCII_STK00:NULL+0:-1:0
1949                     	;--cdb--W:r0x10B8:NULL+0:-1:0
1950                     	;--cdb--W:r0x10B9:NULL+0:-1:0
1951                     	;--cdb--W:r0x10B8:NULL+0:-1:1
1952                     	;--cdb--W:r0x10B9:NULL+0:-1:1
1953                     	;--cdb--W:_UART0_SendASCII_STK00:NULL+0:-1:1
1954                     	;--cdb--W:r0x10B7:NULL+0:-1:1
1955                     	;--cdb--W:_HexToASCII_STK00:NULL+0:-1:1
1956                     	;--cdb--W:r0x10AB:NULL+0:-1:1
1957                     	;--cdb--W:r0x10A8:NULL+0:-1:1
1958                     	;--cdb--W:r0x10AC:NULL+0:-1:1
1959                     	;--cdb--W:r0x109C:NULL+0:-1:1
1960                     	;--cdb--W:r0x109B:NULL+0:-1:1
1961                     	;--cdb--W:r0x109A:NULL+0:-1:1
1962                     	;--cdb--W:_HexToBcd_2Byte_STK00:NULL+0:-1:1
1963                     	;--cdb--W:r0x109C:NULL+0:-1:0
1964                     	;--cdb--W:r0x109B:STK00+0:-1:0
1965                     	;--cdb--W:r0x109B:NULL+0:-1:0
1966                     	;--cdb--W:r0x109D:STK00+0:-1:0
1967                     	;--cdb--W:r0x1091:NULL+0:-1:1
1968                     	;--cdb--W:r0x108D:NULL+0:-1:1
1969                     	;--cdb--W:r0x108C:NULL+0:-1:1
1970                     	;--c2db--RNG$_UART0_SendByte_Byte_10000_412$648$653
1971                     	;--c2db--RNG$_UART0_SendBuffer_NumByte_10000_414$616$632
1972                     	;--c2db--RNG$_UART0_SendBuffer_pBuffer_10000_414$616$632
1973                     	;--c2db--RNG$_UART0_SendString_p_10000_417$583$599
1974                     	;--c2db--RNG$_HexToBcd_2Byte_L_Hex_Value_10000_420$495$566
1975                     	;--c2db--RNG$_HexToASCII_s_10000_422$414$479
1976                     	;--c2db--RNG$_HexToASCII_L_buf_10000_422$414$418
1977                     	;--c2db--RNG$_UART_Tx_String1_s_10000_424$386$401
1978                     	;--c2db--RNG$_UART0_SendASCII_L_buf_10000_427$354$363
1979                     	;--c2db--RNG$_UART0_Configuration_UartBps_10000_429$326$330
1980                     	END
