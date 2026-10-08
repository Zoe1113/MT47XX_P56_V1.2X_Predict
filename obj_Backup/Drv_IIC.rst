001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\Drv_IIC.c"
009                     	.module Drv_IIC
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_IIC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FDrv_IIC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_IIC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FDrv_IIC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_IIC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FDrv_IIC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_IIC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FDrv_IIC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FDrv_IIC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FDrv_IIC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_IIC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FDrv_IIC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FDrv_IIC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FDrv_IIC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FDrv_IIC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FDrv_IIC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_IIC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FDrv_IIC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FDrv_IIC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FDrv_IIC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:Drv_IIC:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_IIC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_IIC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_IIC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
087                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
088                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
089                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
090                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
091                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
092                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
093                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
095                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
096                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
097                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
100                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
101                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
102                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
103                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
104                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
105                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
106                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
107                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
108                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
109                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
110                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
111                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
112                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
113                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
116                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
119                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
127                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
128                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
134                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
140                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
141                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
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
161                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--F:Drv_IIC:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0,0,0,0
163                     	;--cdb--S:G$I2C_Start$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:Drv_IIC:G$I2C_Start$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     	;--cdb--S:G$I2C_RespeatStart$0$0({2}DF,SV:S),C,0,0
166                     	;--cdb--F:Drv_IIC:G$I2C_RespeatStart$0$0({2}DF,SV:S),C,0,0,0,0,0
167                     	;--cdb--S:G$I2C_Stop$0$0({2}DF,SV:S),C,0,0
168                     	;--cdb--F:Drv_IIC:G$I2C_Stop$0$0({2}DF,SV:S),C,0,0,0,0,0
169                     	;--cdb--S:G$I2C_ACK$0$0({2}DF,SV:S),C,0,0
170                     	;--cdb--F:Drv_IIC:G$I2C_ACK$0$0({2}DF,SV:S),C,0,0,0,0,0
171                     	;--cdb--S:G$I2C_Wait_ACK$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--F:Drv_IIC:G$I2C_Wait_ACK$0$0({2}DF,SV:S),C,0,0,0,0,0
173                     	;--cdb--S:G$I2C_No_ACK$0$0({2}DF,SV:S),C,0,0
174                     	;--cdb--F:Drv_IIC:G$I2C_No_ACK$0$0({2}DF,SV:S),C,0,0,0,0,0
175                     	;--cdb--S:G$Write$0$0({2}DF,SV:S),C,0,0
176                     	;--cdb--F:Drv_IIC:G$Write$0$0({2}DF,SV:S),C,0,0,0,0,0
177                     	;--cdb--S:G$Read$0$0({2}DF,SC:U),C,0,0
178                     	;--cdb--F:Drv_IIC:G$Read$0$0({2}DF,SC:U),C,0,0,0,0,0
179                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
180                     	;--cdb--F:Drv_IIC:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0,0,0,0
181                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
182                     	;--cdb--F:Drv_IIC:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0,0,0,0
183                     ;--------------------------------------------------------
184                     ; overlayable items in internal ram 
185                     ;--------------------------------------------------------
186                     ;	udata_ovr
187                     .area CCODE (code,REL,CON) ; Drv_IIC-code 
188                     .globl _I2C_ReadByte
189                     
190                     ;--------------------------------------------------------
191                     	.FUNC _I2C_ReadByte:$r:1:1:$C:_I2C_Start:$C:_Write:$C:_I2C_Wait_ACK:$C:_I2C_RespeatStart\
192                     :$C:_Read:$C:_I2C_No_ACK:$C:_I2C_Stop\
193                     :$L:r0x109D
194                     ;--------------------------------------------------------
195                     ;	;.line	251; ".\Source\Drv_IIC.c"	uint8 I2C_ReadByte(uint8 R_E2Address)
196                     _I2C_ReadByte:	;Function start
197                     	MVF	r0x109D,1,0
198                     ;	;.line	254; ".\Source\Drv_IIC.c"	I2C_Start();
199                     	CALL	_I2C_Start
200                     ;	;.line	255; ".\Source\Drv_IIC.c"	Write(ADDRW);
201                     	MVL	0xa0
202                     	CALL	_Write
203                     ;	;.line	256; ".\Source\Drv_IIC.c"	I2C_Wait_ACK();
204                     	CALL	_I2C_Wait_ACK
205                     ;	;.line	257; ".\Source\Drv_IIC.c"	Write(R_E2Address);
206                     	MVF	r0x109D,0,0
207                     	CALL	_Write
208                     ;	;.line	258; ".\Source\Drv_IIC.c"	I2C_Wait_ACK();
209                     	CALL	_I2C_Wait_ACK
210                     ;	;.line	259; ".\Source\Drv_IIC.c"	I2C_RespeatStart();
211                     	CALL	_I2C_RespeatStart
212                     	.CHKPARA _I2C_RespeatStart 0
213                     ;	;.line	260; ".\Source\Drv_IIC.c"	Write(ADDRR);
214                     	MVL	0xa1
215                     	CALL	_Write
216                     ;	;.line	261; ".\Source\Drv_IIC.c"	I2C_Wait_ACK();
217                     	CALL	_I2C_Wait_ACK
218                     ;	;.line	262; ".\Source\Drv_IIC.c"	IIC_RcvData = Read();
219                     	CALL	_Read
220                     	.CHKPARA _Read 0
221                     	MVF	r0x109D,1,0
222                     ;	;.line	263; ".\Source\Drv_IIC.c"	I2C_No_ACK();
223                     	CALL	_I2C_No_ACK
224                     	.CHKPARA _I2C_No_ACK 0
225                     ;	;.line	264; ".\Source\Drv_IIC.c"	I2C_Stop();
226                     	CALL	_I2C_Stop
227                     ;	;.line	265; ".\Source\Drv_IIC.c"	return 	IIC_RcvData;
228                     	MVF	r0x109D,0,0
229                     ;	;.line	266; ".\Source\Drv_IIC.c"	}
230                     	RET	
231                     ; exit point of _I2C_ReadByte
232                     	.ENDFUNC	_I2C_ReadByte
233                     ;--------------------------------------------------------
234                     
235                     .globl _I2C_WriteByte
236                     
237                     ;--------------------------------------------------------
238                     	.FUNC _I2C_WriteByte:$r:0:2:$C:_I2C_Start:$C:_Write:$C:_I2C_Wait_ACK:$C:_I2C_Stop\
239                     :$L:r0x109A:$L:_I2C_WriteByte_STK00
240                     ;--------------------------------------------------------
241                     ;	;.line	228; ".\Source\Drv_IIC.c"	void I2C_WriteByte(uint8 R_E2Address, uint8 R_I2C_TXDATA)
242                     _I2C_WriteByte:	;Function start
243                     	MVF	r0x109A,1,0
244                     ;	;.line	231; ".\Source\Drv_IIC.c"	I2C_Start();
245                     	CALL	_I2C_Start
246                     	.CHKPARA _I2C_Start 0
247                     ;	;.line	233; ".\Source\Drv_IIC.c"	Write(ADDRW);
248                     	MVL	0xa0
249                     	CALL	_Write
250                     	.CHKPARA _Write 1
251                     ;	;.line	235; ".\Source\Drv_IIC.c"	I2C_Wait_ACK();
252                     	CALL	_I2C_Wait_ACK
253                     	.CHKPARA _I2C_Wait_ACK 0
254                     ;	;.line	237; ".\Source\Drv_IIC.c"	Write(R_E2Address);
255                     	MVF	r0x109A,0,0
256                     	CALL	_Write
257                     ;	;.line	238; ".\Source\Drv_IIC.c"	I2C_Wait_ACK();
258                     	CALL	_I2C_Wait_ACK
259                     ;	;.line	240; ".\Source\Drv_IIC.c"	Write(R_I2C_TXDATA);
260                     	MVF	_I2C_WriteByte_STK00,0,0
261                     	CALL	_Write
262                     ;	;.line	241; ".\Source\Drv_IIC.c"	I2C_Wait_ACK();
263                     	CALL	_I2C_Wait_ACK
264                     ;	;.line	243; ".\Source\Drv_IIC.c"	I2C_Stop();
265                     	CALL	_I2C_Stop
266                     ;	;.line	244; ".\Source\Drv_IIC.c"	}
267                     	RET	
268                     ; exit point of _I2C_WriteByte
269                     	.ENDFUNC	_I2C_WriteByte
270                     ;--------------------------------------------------------
271                     
272                     .globl _Read
273                     
274                     ;--------------------------------------------------------
275                     	.FUNC _Read:$r:1:0:$L:r0x1097:$L:r0x1098
276                     ;--------------------------------------------------------
277                     ;	;.line	197; ".\Source\Drv_IIC.c"	unsigned char i,RData = 0;
278                     _Read:	;Function start
279                     	CLRF	r0x1097,0
280                     ;	;.line	199; ".\Source\Drv_IIC.c"	SDA_READ;
281                     	BCF	_TRISC1,6
282                     ;	;.line	200; ".\Source\Drv_IIC.c"	for(i=0;i<8;i++)
283                     	CLRF	r0x1098,0
284                     _00147_DS_:
285                     ;	;.line	203; ".\Source\Drv_IIC.c"	RData = RData << 1;
286                     	BCF	_STATUS,4
287                     	RLFC	r0x1097,1,0
288                     ;	;.line	204; ".\Source\Drv_IIC.c"	Set_SCL;
289                     	BSF	_PT1,0
290                     ;	;.line	205; ".\Source\Drv_IIC.c"	 ..asm
291                     	NOP
292                     ;	;.line	206; ".\Source\Drv_IIC.c"	 ..asm
293                     	NOP
294                     ;	;.line	207; ".\Source\Drv_IIC.c"	 ..asm
295                     	NOP
296                     ;	;.line	208; ".\Source\Drv_IIC.c"	if(Get_SDA)
297                     	BTSZ	_PT1,6
298                     ;	;.line	210; ".\Source\Drv_IIC.c"	RData |= 0x01;
299                     	BSF	r0x1097,0
300                     ;	;.line	211; ".\Source\Drv_IIC.c"	Reset_SCL;
301                     	BCF	_PT1,0
302                     ;	;.line	212; ".\Source\Drv_IIC.c"	 ..asm
303                     	NOP
304                     ;	;.line	213; ".\Source\Drv_IIC.c"	 ..asm
305                     	NOP
306                     ;	;.line	214; ".\Source\Drv_IIC.c"	 ..asm
307                     	NOP
308                     ;	;.line	200; ".\Source\Drv_IIC.c"	for(i=0;i<8;i++)
309                     	INF	r0x1098,1,0
310                     	MVL	0x07
311                     	CPSG	r0x1098,0
312                     	JMP	_00147_DS_
313                     ;	;.line	217; ".\Source\Drv_IIC.c"	SDA_WRITE;
314                     	BSF	_TRISC1,6
315                     ;	;.line	219; ".\Source\Drv_IIC.c"	return RData;
316                     	MVF	r0x1097,0,0
317                     ;	;.line	220; ".\Source\Drv_IIC.c"	}
318                     	RET	
319                     ; exit point of _Read
320                     	.ENDFUNC	_Read
321                     ;--------------------------------------------------------
322                     
323                     .globl _Write
324                     
325                     ;--------------------------------------------------------
326                     	.FUNC _Write:$r:0:1:$L:r0x1094:$L:r0x1095
327                     ;--------------------------------------------------------
328                     ;	;.line	158; ".\Source\Drv_IIC.c"	void Write(unsigned char WData)
329                     _Write:	;Function start
330                     	MVF	r0x1094,1,0
331                     ;	;.line	161; ".\Source\Drv_IIC.c"	for(i=0;i<8;i++)
332                     	CLRF	r0x1095,0
333                     _00139_DS_:
334                     ;	;.line	163; ".\Source\Drv_IIC.c"	Reset_SCL;
335                     	BCF	_PT1,0
336                     ;	;.line	164; ".\Source\Drv_IIC.c"	 ..asm
337                     	NOP
338                     ;	;.line	165; ".\Source\Drv_IIC.c"	 ..asm
339                     	NOP
340                     ;	;.line	166; ".\Source\Drv_IIC.c"	 ..asm
341                     	NOP
342                     ;	;.line	167; ".\Source\Drv_IIC.c"	if(WData & 0x80)
343                     	BTSS	r0x1094,7
344                     	JMP	_00136_DS_
345                     ;	;.line	169; ".\Source\Drv_IIC.c"	Set_SDA;
346                     	BSF	_PT1,6
347                     	JMP	_00137_DS_
348                     _00136_DS_:
349                     ;	;.line	173; ".\Source\Drv_IIC.c"	Reset_SDA;
350                     	BCF	_PT1,6
351                     _00137_DS_:
352                     ;	;.line	175; ".\Source\Drv_IIC.c"	 ..asm
353                     	NOP
354                     ;	;.line	176; ".\Source\Drv_IIC.c"	 ..asm
355                     	NOP
356                     ;	;.line	177; ".\Source\Drv_IIC.c"	 ..asm
357                     	NOP
358                     ;	;.line	178; ".\Source\Drv_IIC.c"	Set_SCL;
359                     	BSF	_PT1,0
360                     ;	;.line	179; ".\Source\Drv_IIC.c"	 ..asm
361                     	NOP
362                     ;	;.line	180; ".\Source\Drv_IIC.c"	 ..asm
363                     	NOP
364                     ;	;.line	181; ".\Source\Drv_IIC.c"	 ..asm
365                     	NOP
366                     ;	;.line	182; ".\Source\Drv_IIC.c"	WData = WData << 1;
367                     	BCF	_STATUS,4
368                     	RLFC	r0x1094,1,0
369                     ;	;.line	161; ".\Source\Drv_IIC.c"	for(i=0;i<8;i++)
370                     	INF	r0x1095,1,0
371                     	MVL	0x07
372                     	CPSG	r0x1095,0
373                     	JMP	_00139_DS_
374                     ;	;.line	184; ".\Source\Drv_IIC.c"	Reset_SCL;
375                     	BCF	_PT1,0
376                     ;	;.line	185; ".\Source\Drv_IIC.c"	 ..asm
377                     	NOP
378                     ;	;.line	186; ".\Source\Drv_IIC.c"	 ..asm
379                     	NOP
380                     ;	;.line	187; ".\Source\Drv_IIC.c"	 ..asm
381                     	NOP
382                     ;	;.line	188; ".\Source\Drv_IIC.c"	}
383                     	RET	
384                     ; exit point of _Write
385                     	.ENDFUNC	_Write
386                     ;--------------------------------------------------------
387                     
388                     .globl _I2C_No_ACK
389                     
390                     ;--------------------------------------------------------
391                     	.FUNC _I2C_No_ACK:$r:0:0
392                     ;--------------------------------------------------------
393                     ;	;.line	142; ".\Source\Drv_IIC.c"	Set_SDA;
394                     _I2C_No_ACK:	;Function start
395                     	BSF	_PT1,6
396                     ;	;.line	143; ".\Source\Drv_IIC.c"	Reset_SCL;
397                     	BCF	_PT1,0
398                     ;	;.line	144; ".\Source\Drv_IIC.c"	 ..asm
399                     	NOP
400                     ;	;.line	145; ".\Source\Drv_IIC.c"	 ..asm
401                     	NOP
402                     ;	;.line	146; ".\Source\Drv_IIC.c"	 ..asm
403                     	NOP
404                     ;	;.line	147; ".\Source\Drv_IIC.c"	Set_SCL;
405                     	BSF	_PT1,0
406                     ;	;.line	148; ".\Source\Drv_IIC.c"	 ..asm
407                     	NOP
408                     ;	;.line	149; ".\Source\Drv_IIC.c"	 ..asm
409                     	NOP
410                     ;	;.line	150; ".\Source\Drv_IIC.c"	 ..asm
411                     	NOP
412                     ;	;.line	151; ".\Source\Drv_IIC.c"	}
413                     	RET	
414                     ; exit point of _I2C_No_ACK
415                     	.ENDFUNC	_I2C_No_ACK
416                     ;--------------------------------------------------------
417                     
418                     .globl _I2C_Wait_ACK
419                     
420                     ;--------------------------------------------------------
421                     	.FUNC _I2C_Wait_ACK:$r:0:0:$C:_I2C_Stop\
422                     
423                     ;--------------------------------------------------------
424                     ;	;.line	114; ".\Source\Drv_IIC.c"	SDA_READ;
425                     _I2C_Wait_ACK:	;Function start
426                     	BCF	_TRISC1,6
427                     ;	;.line	115; ".\Source\Drv_IIC.c"	Set_SCL;
428                     	BSF	_PT1,0
429                     ;	;.line	116; ".\Source\Drv_IIC.c"	 ..asm
430                     	NOP
431                     ;	;.line	117; ".\Source\Drv_IIC.c"	 ..asm
432                     	NOP
433                     ;	;.line	118; ".\Source\Drv_IIC.c"	 ..asm
434                     	NOP
435                     ;	;.line	120; ".\Source\Drv_IIC.c"	if(Get_SDA != 0)
436                     	BTSS	_PT1,6
437                     	JMP	_00126_DS_
438                     ;	;.line	122; ".\Source\Drv_IIC.c"	SDA_WRITE;
439                     	BSF	_TRISC1,6
440                     ;	;.line	123; ".\Source\Drv_IIC.c"	I2C_Stop();
441                     	CALL	_I2C_Stop
442                     	.CHKPARA _I2C_Stop 0
443                     ;	;.line	124; ".\Source\Drv_IIC.c"	sIIC.IICErr = TRUE;
444                     	BSF	_sIIC,0
445                     ;	;.line	125; ".\Source\Drv_IIC.c"	SDA_READ;
446                     	BCF	_TRISC1,6
447                     _00126_DS_:
448                     ;	;.line	127; ".\Source\Drv_IIC.c"	Reset_SCL;
449                     	BCF	_PT1,0
450                     ;	;.line	128; ".\Source\Drv_IIC.c"	 ..asm
451                     	NOP
452                     ;	;.line	129; ".\Source\Drv_IIC.c"	 ..asm
453                     	NOP
454                     ;	;.line	130; ".\Source\Drv_IIC.c"	 ..asm
455                     	NOP
456                     ;	;.line	132; ".\Source\Drv_IIC.c"	SDA_WRITE;
457                     	BSF	_TRISC1,6
458                     ;	;.line	133; ".\Source\Drv_IIC.c"	}
459                     	RET	
460                     ; exit point of _I2C_Wait_ACK
461                     	.ENDFUNC	_I2C_Wait_ACK
462                     ;--------------------------------------------------------
463                     
464                     .globl _I2C_ACK
465                     
466                     ;--------------------------------------------------------
467                     	.FUNC _I2C_ACK:$r:0:0
468                     ;--------------------------------------------------------
469                     ;	;.line	94; ".\Source\Drv_IIC.c"	Set_SDA;
470                     _I2C_ACK:	;Function start
471                     	BSF	_PT1,6
472                     ;	;.line	95; ".\Source\Drv_IIC.c"	Reset_SDA;
473                     	BCF	_PT1,6
474                     ;	;.line	96; ".\Source\Drv_IIC.c"	Set_SCL;
475                     	BSF	_PT1,0
476                     ;	;.line	97; ".\Source\Drv_IIC.c"	 ..asm
477                     	NOP
478                     ;	;.line	98; ".\Source\Drv_IIC.c"	 ..asm
479                     	NOP
480                     ;	;.line	99; ".\Source\Drv_IIC.c"	 ..asm
481                     	NOP
482                     ;	;.line	100; ".\Source\Drv_IIC.c"	Reset_SCL;
483                     	BCF	_PT1,0
484                     ;	;.line	101; ".\Source\Drv_IIC.c"	 ..asm
485                     	NOP
486                     ;	;.line	102; ".\Source\Drv_IIC.c"	 ..asm
487                     	NOP
488                     ;	;.line	103; ".\Source\Drv_IIC.c"	 ..asm
489                     	NOP
490                     ;	;.line	104; ".\Source\Drv_IIC.c"	}
491                     	RET	
492                     ; exit point of _I2C_ACK
493                     	.ENDFUNC	_I2C_ACK
494                     ;--------------------------------------------------------
495                     
496                     .globl _I2C_Stop
497                     
498                     ;--------------------------------------------------------
499                     	.FUNC _I2C_Stop:$r:0:0
500                     ;--------------------------------------------------------
501                     ;	;.line	75; ".\Source\Drv_IIC.c"	Reset_SDA;
502                     _I2C_Stop:	;Function start
503                     	BCF	_PT1,6
504                     ;	;.line	76; ".\Source\Drv_IIC.c"	Reset_SCL;
505                     	BCF	_PT1,0
506                     ;	;.line	77; ".\Source\Drv_IIC.c"	Set_SCL;
507                     	BSF	_PT1,0
508                     ;	;.line	78; ".\Source\Drv_IIC.c"	 ..asm
509                     	NOP
510                     ;	;.line	79; ".\Source\Drv_IIC.c"	 ..asm
511                     	NOP
512                     ;	;.line	80; ".\Source\Drv_IIC.c"	 ..asm
513                     	NOP
514                     ;	;.line	81; ".\Source\Drv_IIC.c"	Set_SDA;
515                     	BSF	_PT1,6
516                     ;	;.line	82; ".\Source\Drv_IIC.c"	 ..asm
517                     	NOP
518                     ;	;.line	83; ".\Source\Drv_IIC.c"	 ..asm
519                     	NOP
520                     ;	;.line	84; ".\Source\Drv_IIC.c"	 ..asm
521                     	NOP
522                     ;	;.line	85; ".\Source\Drv_IIC.c"	}
523                     	RET	
524                     ; exit point of _I2C_Stop
525                     	.ENDFUNC	_I2C_Stop
526                     ;--------------------------------------------------------
527                     
528                     .globl _I2C_RespeatStart
529                     
530                     ;--------------------------------------------------------
531                     	.FUNC _I2C_RespeatStart:$r:0:0
532                     ;--------------------------------------------------------
533                     ;	;.line	56; ".\Source\Drv_IIC.c"	Set_SCL;
534                     _I2C_RespeatStart:	;Function start
535                     	BSF	_PT1,0
536                     ;	;.line	57; ".\Source\Drv_IIC.c"	Set_SDA;
537                     	BSF	_PT1,6
538                     ;	;.line	58; ".\Source\Drv_IIC.c"	Reset_SDA;
539                     	BCF	_PT1,6
540                     ;	;.line	59; ".\Source\Drv_IIC.c"	 ..asm
541                     	NOP
542                     ;	;.line	60; ".\Source\Drv_IIC.c"	 ..asm
543                     	NOP
544                     ;	;.line	61; ".\Source\Drv_IIC.c"	 ..asm
545                     	NOP
546                     ;	;.line	62; ".\Source\Drv_IIC.c"	Reset_SCL;
547                     	BCF	_PT1,0
548                     ;	;.line	63; ".\Source\Drv_IIC.c"	 ..asm
549                     	NOP
550                     ;	;.line	64; ".\Source\Drv_IIC.c"	 ..asm
551                     	NOP
552                     ;	;.line	65; ".\Source\Drv_IIC.c"	 ..asm
553                     	NOP
554                     ;	;.line	66; ".\Source\Drv_IIC.c"	}
555                     	RET	
556                     ; exit point of _I2C_RespeatStart
557                     	.ENDFUNC	_I2C_RespeatStart
558                     ;--------------------------------------------------------
559                     
560                     .globl _I2C_Start
561                     
562                     ;--------------------------------------------------------
563                     	.FUNC _I2C_Start:$r:0:0
564                     ;--------------------------------------------------------
565                     ;	;.line	37; ".\Source\Drv_IIC.c"	Set_SCL;
566                     _I2C_Start:	;Function start
567                     	BSF	_PT1,0
568                     ;	;.line	38; ".\Source\Drv_IIC.c"	Set_SDA;
569                     	BSF	_PT1,6
570                     ;	;.line	39; ".\Source\Drv_IIC.c"	Reset_SDA;
571                     	BCF	_PT1,6
572                     ;	;.line	40; ".\Source\Drv_IIC.c"	 ..asm
573                     	NOP
574                     ;	;.line	41; ".\Source\Drv_IIC.c"	 ..asm
575                     	NOP
576                     ;	;.line	42; ".\Source\Drv_IIC.c"	 ..asm
577                     	NOP
578                     ;	;.line	43; ".\Source\Drv_IIC.c"	Reset_SCL;
579                     	BCF	_PT1,0
580                     ;	;.line	44; ".\Source\Drv_IIC.c"	 ..asm
581                     	NOP
582                     ;	;.line	45; ".\Source\Drv_IIC.c"	 ..asm
583                     	NOP
584                     ;	;.line	46; ".\Source\Drv_IIC.c"	 ..asm
585                     	NOP
586                     ;	;.line	47; ".\Source\Drv_IIC.c"	}
587                     	RET	
588                     ; exit point of _I2C_Start
589                     	.ENDFUNC	_I2C_Start
590                     ;--------------------------------------------------------
591                     
592                     .globl _IIC_Configuration
593                     
594                     ;--------------------------------------------------------
595                     	.FUNC _IIC_Configuration:$r:0:0
596                     ;--------------------------------------------------------
597                     ;	;.line	26; ".\Source\Drv_IIC.c"	Set_SCL_OUT;
598                     _IIC_Configuration:	;Function start
599                     	BSF	_TRISC1,0
600                     ;	;.line	27; ".\Source\Drv_IIC.c"	Set_SDA_OUT;
601                     	BSF	_TRISC1,6
602                     ;	;.line	28; ".\Source\Drv_IIC.c"	}
603                     	RET	
604                     ; exit point of _IIC_Configuration
605                     	.ENDFUNC	_IIC_Configuration
606                     ;--------------------------------------------------------
607                     
608                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
609                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
610                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
611                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
612                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
613                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
614                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
615                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
616                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
617                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
618                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
619                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
620                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
621                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
622                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
623                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
624                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
625                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
626                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
627                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
628                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
629                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
630                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
631                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
632                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_IIC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
633                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_IIC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
634                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_IIC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
635                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
636                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
637                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
638                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
639                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
640                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
641                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
642                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
643                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
644                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
645                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
646                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
647                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
648                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
649                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
650                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
651                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
652                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
653                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
654                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
655                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
656                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
657                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
658                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
659                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
660                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
661                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
662                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
663                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
664                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
665                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
666                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
667                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
668                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
669                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
670                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
671                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
672                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
673                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
674                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
675                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
676                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
677                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
678                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
679                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
680                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
681                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
682                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
683                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
684                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
685                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
686                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
687                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
688                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
689                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
690                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
691                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
692                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
693                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
694                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
695                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
696                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
697                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
698                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
699                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
700                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
701                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
702                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
703                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
704                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
705                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
706                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
707                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
708                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
709                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
710                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
711                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
712                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
713                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
714                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
715                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
716                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
717                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
718                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
719                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
720                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
721                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
722                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
723                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
724                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
725                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
726                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
727                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
728                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
729                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
730                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
731                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
732                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
733                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
734                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
735                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
736                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
737                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
738                     	;--cdb--S:G$I2C_Start$0$0({2}DF,SV:S),C,0,0
739                     	;--cdb--S:G$I2C_RespeatStart$0$0({2}DF,SV:S),C,0,0
740                     	;--cdb--S:G$I2C_Stop$0$0({2}DF,SV:S),C,0,0
741                     	;--cdb--S:G$I2C_ACK$0$0({2}DF,SV:S),C,0,0
742                     	;--cdb--S:G$I2C_Wait_ACK$0$0({2}DF,SV:S),C,0,0
743                     	;--cdb--S:G$I2C_No_ACK$0$0({2}DF,SV:S),C,0,0
744                     	;--cdb--S:G$Write$0$0({2}DF,SV:S),C,0,0
745                     	;--cdb--S:G$Read$0$0({2}DF,SC:U),C,0,0
746                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
747                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
748                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
749                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
750                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
751                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
752                     	;--cdb--S:LDrv_IIC.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
753                     	;--cdb--S:LDrv_IIC.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
754                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FDrv_IIC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
755                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
756                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FDrv_IIC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
757                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FDrv_IIC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
758                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FDrv_IIC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
759                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
760                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FDrv_IIC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
761                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
762                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
763                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
764                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
765                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
766                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
767                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FDrv_IIC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
768                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FDrv_IIC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
769                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
770                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FDrv_IIC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
771                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
772                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
773                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
774                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
775                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FDrv_IIC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
776                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
777                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
778                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
779                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
780                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FDrv_IIC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
781                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FDrv_IIC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
782                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FDrv_IIC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
783                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FDrv_IIC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
784                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FDrv_IIC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
785                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
786                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FDrv_IIC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
787                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
788                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
789                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FDrv_IIC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
790                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
791                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FDrv_IIC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
792                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
793                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
794                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
795                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
796                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
797                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
798                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
799                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
800                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
801                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
802                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
803                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
804                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
805                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
806                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
807                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
808                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
809                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
810                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
811                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
812                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
813                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
814                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
815                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
816                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
817                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
818                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
819                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
820                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
821                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
822                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
823                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
824                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
825                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
826                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
827                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
828                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
829                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
830                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
831                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
832                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
833                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
834                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
835                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
836                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
837                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
838                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
839                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
840                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
841                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
842                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
843                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
844                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
845                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
846                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
847                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
848                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
849                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
850                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
851                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
852                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
853                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
854                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
855                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
856                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
857                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
858                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
859                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
860                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
861                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
862                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
863                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
864                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
865                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
866                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
867                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
868                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
869                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
870                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
871                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
872                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
873                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
874                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
875                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
876                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
877                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
878                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
879                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
880                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
881                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
882                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
883                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
884                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
885                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
886                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
887                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
888                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
889                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
890                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
891                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
892                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
893                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
894                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
895                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
896                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
897                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
898                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
899                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
900                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
901                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
902                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
903                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
904                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
905                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
906                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
907                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
908                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
909                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
910                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
911                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
912                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
913                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
914                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
915                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
916                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
917                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
918                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
919                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
920                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
921                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
922                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
923                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
924                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
925                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
926                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
927                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
928                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
929                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
930                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
931                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
932                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
933                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
934                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
935                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
936                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
937                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
938                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
939                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
940                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
941                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
942                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
943                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
944                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
945                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
946                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
947                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
948                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
949                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
950                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
951                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
952                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
953                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
954                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
955                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
956                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
957                     	;--cdb--S:LDrv_IIC.Write._Write_WData_10000_431$WData$2710$431({1}SC:U),R,0,0,[r0x1094]
958                     	;--cdb--S:LDrv_IIC.Write._Write_i_10000_432$i$2710$432({1}SC:U),R,0,0,[r0x1095]
959                     	;--cdb--S:LDrv_IIC.Read._Read_i_10000_439$i$2710$439({1}SC:U),R,0,0,[r0x1098]
960                     	;--cdb--S:LDrv_IIC.Read._Read_RData_10000_439$RData$2710$439({1}SC:U),R,0,0,[r0x1097]
961                     	;--cdb--S:LDrv_IIC.I2C_WriteByte._I2C_WriteByte_R_I2C_TXDATA_10000_443$R_I2C_TXDATA$2710$443({1}SC:U),R,0,0,[_I2C_WriteByte_STK00]
962                     	;--cdb--S:LDrv_IIC.I2C_WriteByte._I2C_WriteByte_R_E2Address_10000_443$R_E2Address$2710$443({1}SC:U),R,0,0,[r0x109A]
963                     	;--cdb--S:LDrv_IIC.I2C_ReadByte._I2C_ReadByte_R_E2Address_10000_445$R_E2Address$2710$445({1}SC:U),R,0,0,[r0x109D]
964                     	;--cdb--S:LDrv_IIC.I2C_ReadByte._I2C_ReadByte_IIC_RcvData_10000_446$IIC_RcvData$2710$446({1}SC:U),R,0,0,[r0x109D]
965                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
966                     ;--------------------------------------------------------
967                     ; external declarations
968                     ;--------------------------------------------------------
969                     	.globl	_FSR0
970                     	.globl	_FSR1
971                     	.globl	_FSR2
972                     	.globl	_ADCR
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
996                     	.globl	_eBuzzer_Status
997                     	.globl	_Flag_No_Buzzer
998                     	.globl	_sMemory
999                     	.globl	_sMemoryFlag
1000                     	.globl	_sActual
1001                     	.globl	_sForecast
1002                     	.globl	_sTempCal
1003                     	.globl	_eMeas_Status
1004                     	.globl	_sActual_Forecast
1005                     	.globl	_eTo_Actual_Ways
1006                     	.globl	_eBle_Sta
1007                     	.globl	_sBleStatus
1008                     	.globl	_eBacklight_Status
1009                     	.globl	_sBacklight
1010                     	.globl	_NUM_CODE
1011                     	.globl	_R_Table
1012                     	.globl	_CloseTable
1013                     
1014                     	.globl STK07
1015                     	.globl STK07_SAVE
1016                     	.globl STK06
1017                     	.globl STK06_SAVE
1018                     	.globl STK05
1019                     	.globl STK05_SAVE
1020                     	.globl STK04
1021                     	.globl STK04_SAVE
1022                     	.globl STK03
1023                     	.globl STK03_SAVE
1024                     	.globl STK02
1025                     	.globl STK02_SAVE
1026                     	.globl STK01
1027                     	.globl STK01_SAVE
1028                     	.globl STK00
1029                     	.globl STK00_SAVE
1030                     ;--------------------------------------------------------
1031                     ; global -1 declarations
1032                     ;--------------------------------------------------------
1033                     	.globl	_I2C_Start
1034                     	.globl	_I2C_RespeatStart
1035                     	.globl	_I2C_Stop
1036                     	.globl	_I2C_Wait_ACK
1037                     	.globl	_I2C_No_ACK
1038                     	.globl	_Write
1039                     	.globl	_Read
1040                     	.globl	_I2C_WriteByte
1041                     	.globl	_I2C_ReadByte
1042                     	.globl	_sIIC
1043                     
1044                     	.globl	_memcpy
1045                     ;--------------------------------------------------------
1046                     ; global -2 definitions
1047                     ;--------------------------------------------------------
1048                     	.area DSEG(DATA)
1049 02CB --             _sIIC:	.ds	1
1050                     
1051                     	.area DSEG(DATA)
1052                     __SWTGTID	.equ	0xA6A6B2CF
1053                     
1054                     	.area DSEG(DATA)
1055                     _INDF0	.equ	0x0
1056                     
1057                     	.area DSEG(DATA)
1058                     _POINC0	.equ	0x1
1059                     
1060                     	.area DSEG(DATA)
1061                     _PODEC0	.equ	0x2
1062                     
1063                     	.area DSEG(DATA)
1064                     _PRINC0	.equ	0x3
1065                     
1066                     	.area DSEG(DATA)
1067                     _PLUSW0	.equ	0x4
1068                     
1069                     	.area DSEG(DATA)
1070                     _INDF1	.equ	0x5
1071                     
1072                     	.area DSEG(DATA)
1073                     _POINC1	.equ	0x6
1074                     
1075                     	.area DSEG(DATA)
1076                     _PODEC1	.equ	0x7
1077                     
1078                     	.area DSEG(DATA)
1079                     _PRINC1	.equ	0x8
1080                     
1081                     	.area DSEG(DATA)
1082                     _PLUSW1	.equ	0x9
1083                     
1084                     	.area DSEG(DATA)
1085                     _INDF2	.equ	0xA
1086                     
1087                     	.area DSEG(DATA)
1088                     _POINC2	.equ	0xB
1089                     
1090                     	.area DSEG(DATA)
1091                     _PODEC2	.equ	0xC
1092                     
1093                     	.area DSEG(DATA)
1094                     _PRINC2	.equ	0xD
1095                     
1096                     	.area DSEG(DATA)
1097                     _PLUSW2	.equ	0xE
1098                     
1099                     	.area DSEG(DATA)
1100                     _FSR0H	.equ	0xF
1101                     
1102                     	.area DSEG(DATA)
1103                     _FSR0L	.equ	0x10
1104                     
1105                     	.area DSEG(DATA)
1106                     _FSR1H	.equ	0x11
1107                     
1108                     	.area DSEG(DATA)
1109                     _FSR1L	.equ	0x12
1110                     
1111                     	.area DSEG(DATA)
1112                     _FSR2H	.equ	0x13
1113                     
1114                     	.area DSEG(DATA)
1115                     _FSR2L	.equ	0x14
1116                     
1117                     	.area DSEG(DATA)
1118                     _TOSH	.equ	0x16
1119                     
1120                     	.area DSEG(DATA)
1121                     _TOSL	.equ	0x17
1122                     
1123                     	.area DSEG(DATA)
1124                     _SKCN	.equ	0x18
1125                     
1126                     	.area DSEG(DATA)
1127                     _PCLATH	.equ	0x1A
1128                     
1129                     	.area DSEG(DATA)
1130                     _PCLATL	.equ	0x1B
1131                     
1132                     	.area DSEG(DATA)
1133                     _TBLPTRH	.equ	0x1D
1134                     
1135                     	.area DSEG(DATA)
1136                     _TBLPTRL	.equ	0x1E
1137                     
1138                     	.area DSEG(DATA)
1139                     _TBLDH	.equ	0x1F
1140                     
1141                     	.area DSEG(DATA)
1142                     _TBLDL	.equ	0x20
1143                     
1144                     	.area DSEG(DATA)
1145                     _PRODH	.equ	0x21
1146                     
1147                     	.area DSEG(DATA)
1148                     _PRODL	.equ	0x22
1149                     
1150                     	.area DSEG(DATA)
1151                     _INTE0	.equ	0x23
1152                     
1153                     	.area DSEG(DATA)
1154                     _INTE1	.equ	0x24
1155                     
1156                     	.area DSEG(DATA)
1157                     _INTE2	.equ	0x25
1158                     
1159                     	.area DSEG(DATA)
1160                     _INTF0	.equ	0x26
1161                     
1162                     	.area DSEG(DATA)
1163                     _INTF1	.equ	0x27
1164                     
1165                     	.area DSEG(DATA)
1166                     _INTF2	.equ	0x28
1167                     
1168                     	.area DSEG(DATA)
1169                     _WREG	.equ	0x29
1170                     
1171                     	.area DSEG(DATA)
1172                     _BSRCN	.equ	0x2A
1173                     
1174                     	.area DSEG(DATA)
1175                     _STATUS	.equ	0x2B
1176                     
1177                     	.area DSEG(DATA)
1178                     _MSTAT	.equ	0x2B
1179                     
1180                     	.area DSEG(DATA)
1181                     _PSTAT	.equ	0x2C
1182                     
1183                     	.area DSEG(DATA)
1184                     _BIECN	.equ	0x2E
1185                     
1186                     	.area DSEG(DATA)
1187                     _BIEARH	.equ	0x2F
1188                     
1189                     	.area DSEG(DATA)
1190                     _BIEARL	.equ	0x30
1191                     
1192                     	.area DSEG(DATA)
1193                     _BIEDRH	.equ	0x31
1194                     
1195                     	.area DSEG(DATA)
1196                     _BIEDRL	.equ	0x32
1197                     
1198                     	.area DSEG(DATA)
1199                     _PWRCN	.equ	0x33
1200                     
1201                     	.area DSEG(DATA)
1202                     _OSCCN0	.equ	0x34
1203                     
1204                     	.area DSEG(DATA)
1205                     _OSCCN1	.equ	0x35
1206                     
1207                     	.area DSEG(DATA)
1208                     _OSCCN2	.equ	0x36
1209                     
1210                     	.area DSEG(DATA)
1211                     _CSFCN0	.equ	0x37
1212                     
1213                     	.area DSEG(DATA)
1214                     _CSFCN1	.equ	0x38
1215                     
1216                     	.area DSEG(DATA)
1217                     _WDTCN	.equ	0x39
1218                     
1219                     	.area DSEG(DATA)
1220                     _AD1H	.equ	0x3A
1221                     
1222                     	.area DSEG(DATA)
1223                     _AD1M	.equ	0x3B
1224                     
1225                     	.area DSEG(DATA)
1226                     _AD1L	.equ	0x3C
1227                     
1228                     	.area DSEG(DATA)
1229                     _AD1CN0	.equ	0x3D
1230                     
1231                     	.area DSEG(DATA)
1232                     _AD1CN1	.equ	0x3E
1233                     
1234                     	.area DSEG(DATA)
1235                     _AD1CN2	.equ	0x3F
1236                     
1237                     	.area DSEG(DATA)
1238                     _AD1CN3	.equ	0x40
1239                     
1240                     	.area DSEG(DATA)
1241                     _AD1CN4	.equ	0x41
1242                     
1243                     	.area DSEG(DATA)
1244                     _AD1CN5	.equ	0x42
1245                     
1246                     	.area DSEG(DATA)
1247                     _LVDCN	.equ	0x43
1248                     
1249                     	.area DSEG(DATA)
1250                     _TMA1CN	.equ	0x44
1251                     
1252                     	.area DSEG(DATA)
1253                     _TMA1R	.equ	0x45
1254                     
1255                     	.area DSEG(DATA)
1256                     _TMA1C	.equ	0x46
1257                     
1258                     	.area DSEG(DATA)
1259                     _TB1FLAG	.equ	0x47
1260                     
1261                     	.area DSEG(DATA)
1262                     _TB1CN0	.equ	0x48
1263                     
1264                     	.area DSEG(DATA)
1265                     _TB1CN1	.equ	0x49
1266                     
1267                     	.area DSEG(DATA)
1268                     _TB1RH	.equ	0x4A
1269                     
1270                     	.area DSEG(DATA)
1271                     _TB1RL	.equ	0x4B
1272                     
1273                     	.area DSEG(DATA)
1274                     _TB1C0H	.equ	0x4C
1275                     
1276                     	.area DSEG(DATA)
1277                     _TB1C0L	.equ	0x4D
1278                     
1279                     	.area DSEG(DATA)
1280                     _TB1C1H	.equ	0x4E
1281                     
1282                     	.area DSEG(DATA)
1283                     _TB1C1L	.equ	0x4F
1284                     
1285                     	.area DSEG(DATA)
1286                     _TB1C2H	.equ	0x50
1287                     
1288                     	.area DSEG(DATA)
1289                     _TB1C2L	.equ	0x51
1290                     
1291                     	.area DSEG(DATA)
1292                     _TC1CN0	.equ	0x52
1293                     
1294                     	.area DSEG(DATA)
1295                     _PT1	.equ	0x53
1296                     
1297                     	.area DSEG(DATA)
1298                     _TRISC1	.equ	0x54
1299                     
1300                     	.area DSEG(DATA)
1301                     _PT1DA	.equ	0x55
1302                     
1303                     	.area DSEG(DATA)
1304                     _PT1PU	.equ	0x56
1305                     
1306                     	.area DSEG(DATA)
1307                     _PT1M1	.equ	0x57
1308                     
1309                     	.area DSEG(DATA)
1310                     _PT1INT	.equ	0x58
1311                     
1312                     	.area DSEG(DATA)
1313                     _PT1INTE	.equ	0x59
1314                     
1315                     	.area DSEG(DATA)
1316                     _PT1INTF	.equ	0x5A
1317                     
1318                     	.area DSEG(DATA)
1319                     _PT2	.equ	0x5B
1320                     
1321                     	.area DSEG(DATA)
1322                     _TRISC2	.equ	0x5C
1323                     
1324                     	.area DSEG(DATA)
1325                     _PT2DA	.equ	0x5D
1326                     
1327                     	.area DSEG(DATA)
1328                     _PT2PU	.equ	0x5E
1329                     
1330                     	.area DSEG(DATA)
1331                     _PT2INT	.equ	0x5F
1332                     
1333                     	.area DSEG(DATA)
1334                     _PT2INTE	.equ	0x60
1335                     
1336                     	.area DSEG(DATA)
1337                     _PT2INTF	.equ	0x61
1338                     
1339                     	.area DSEG(DATA)
1340                     _PT6	.equ	0x62
1341                     
1342                     	.area DSEG(DATA)
1343                     _TRISC6	.equ	0x63
1344                     
1345                     	.area DSEG(DATA)
1346                     _PT6DA	.equ	0x64
1347                     
1348                     	.area DSEG(DATA)
1349                     _PT6PU	.equ	0x65
1350                     
1351                     	.area DSEG(DATA)
1352                     _PT7	.equ	0x66
1353                     
1354                     	.area DSEG(DATA)
1355                     _TRISC7	.equ	0x67
1356                     
1357                     	.area DSEG(DATA)
1358                     _PT7DA	.equ	0x68
1359                     
1360                     	.area DSEG(DATA)
1361                     _PT7PU	.equ	0x69
1362                     
1363                     	.area DSEG(DATA)
1364                     _PT8	.equ	0x6A
1365                     
1366                     	.area DSEG(DATA)
1367                     _TRISC8	.equ	0x6B
1368                     
1369                     	.area DSEG(DATA)
1370                     _PT8DA	.equ	0x6C
1371                     
1372                     	.area DSEG(DATA)
1373                     _PT8PU	.equ	0x6D
1374                     
1375                     	.area DSEG(DATA)
1376                     _SSPCN0	.equ	0x6E
1377                     
1378                     	.area DSEG(DATA)
1379                     _SSPSTA0	.equ	0x6F
1380                     
1381                     	.area DSEG(DATA)
1382                     _SSPBUF0	.equ	0x70
1383                     
1384                     	.area DSEG(DATA)
1385                     _CFG0	.equ	0x71
1386                     
1387                     	.area DSEG(DATA)
1388                     _ACT0	.equ	0x72
1389                     
1390                     	.area DSEG(DATA)
1391                     _STA0	.equ	0x73
1392                     
1393                     	.area DSEG(DATA)
1394                     _CRG0	.equ	0x74
1395                     
1396                     	.area DSEG(DATA)
1397                     _TOC0	.equ	0x75
1398                     
1399                     	.area DSEG(DATA)
1400                     _RDB0	.equ	0x76
1401                     
1402                     	.area DSEG(DATA)
1403                     _TDB0	.equ	0x77
1404                     
1405                     	.area DSEG(DATA)
1406                     _SID0	.equ	0x78
1407                     
1408                     	.area DSEG(DATA)
1409                     _UR0CN	.equ	0x79
1410                     
1411                     	.area DSEG(DATA)
1412                     _UR0STA	.equ	0x7A
1413                     
1414                     	.area DSEG(DATA)
1415                     _BA0CN	.equ	0x7B
1416                     
1417                     	.area DSEG(DATA)
1418                     _BG0RH	.equ	0x7C
1419                     
1420                     	.area DSEG(DATA)
1421                     _BG0RL	.equ	0x7D
1422                     
1423                     	.area DSEG(DATA)
1424                     _TX0R	.equ	0x7E
1425                     
1426                     	.area DSEG(DATA)
1427                     _RC0REG	.equ	0x7F
1428                     
1429                     	.area DSEG(DATA)
1430                     _LCDCN1	.equ	0x180
1431                     
1432                     	.area DSEG(DATA)
1433                     _LCDCN2	.equ	0x181
1434                     
1435                     	.area DSEG(DATA)
1436                     _LCDCN3	.equ	0x182
1437                     
1438                     	.area DSEG(DATA)
1439                     _LCDCN4	.equ	0x183
1440                     
1441                     	.area DSEG(DATA)
1442                     _LCDCN5	.equ	0x184
1443                     
1444                     	.area DSEG(DATA)
1445                     _LCDCN6	.equ	0x185
1446                     
1447                     	.area DSEG(DATA)
1448                     _LCDCN7	.equ	0x186
1449                     
1450                     	.area DSEG(DATA)
1451                     _LCDCN8	.equ	0x187
1452                     
1453                     	.area DSEG(DATA)
1454                     _LCD0	.equ	0x188
1455                     
1456                     	.area DSEG(DATA)
1457                     _LCD1	.equ	0x189
1458                     
1459                     	.area DSEG(DATA)
1460                     _LCD2	.equ	0x18A
1461                     
1462                     	.area DSEG(DATA)
1463                     _LCD3	.equ	0x18B
1464                     
1465                     	.area DSEG(DATA)
1466                     _LCD4	.equ	0x18C
1467                     
1468                     	.area DSEG(DATA)
1469                     _LCD5	.equ	0x18D
1470                     
1471                     	.area DSEG(DATA)
1472                     _LCD6	.equ	0x18E
1473                     
1474                     	.area DSEG(DATA)
1475                     _LCD7	.equ	0x18F
1476                     
1477                     	.area DSEG(DATA)
1478                     _LCD8	.equ	0x190
1479                     
1480                     	.area DSEG(DATA)
1481                     _LCD9	.equ	0x191
1482                     
1483                     	.area DSEG(DATA)
1484                     _UR2CN	.equ	0x192
1485                     
1486                     	.area DSEG(DATA)
1487                     _UR2STA	.equ	0x193
1488                     
1489                     	.area DSEG(DATA)
1490                     _BA2CN	.equ	0x194
1491                     
1492                     	.area DSEG(DATA)
1493                     _BG2RH	.equ	0x195
1494                     
1495                     	.area DSEG(DATA)
1496                     _BG2RL	.equ	0x196
1497                     
1498                     	.area DSEG(DATA)
1499                     _TX2R	.equ	0x197
1500                     
1501                     	.area DSEG(DATA)
1502                     _RC2REG	.equ	0x198
1503                     
1504                     	.area DSEG(DATA)
1505                     _TMA2R	.equ	0x1E8
1506                     
1507                     	.area DSEG(DATA)
1508                     _TMA2C	.equ	0x1E9
1509                     
1510                     	.area DSEG(DATA)
1511                     _LEDCN	.equ	0x1EA
1512                     
1513                     	.area DSEG(DATA)
1514                     _IQ0	.equ	0x1EB
1515                     
1516                     	.area DSEG(DATA)
1517                     _IQ1	.equ	0x1EC
1518                     
1519                     	.area DSEG(DATA)
1520                     _DGCON1	.equ	0x1ED
1521                     
1522                     	.area DSEG(DATA)
1523                     _DGCON2	.equ	0x1EE
1524                     
1525                     	.area DSEG(DATA)
1526                     _ADCRH	.equ	0x3A
1527                     
1528                     	.area DSEG(DATA)
1529                     _ADCRM	.equ	0x3B
1530                     
1531                     	.area DSEG(DATA)
1532                     _ADCRL	.equ	0x3C
1533                     
1534                     	.area DSEG(DATA)
1535                     _TEMDATA	.equ	0x2E0
1536                     
1537                     ;--------------------------------------------------------
1538                     ; absolute symbol definitions
1539                     ;--------------------------------------------------------
1540                     ;--------------------------------------------------------
1541                     ; compiler-defined variables
1542                     ;--------------------------------------------------------
1543                     	.area IDATA (DATA,REL,CON); pre-def
1544                     	.area IDATAROM (CODE,REL,CON); pre-def
1545                     	.area UDATA (DATA,REL,CON); pre-def
1546                     	.area UDATA (DATA,REL,CON) ;UDL_Drv_IIC_0	udata
1547 0000 --             r0x1094:	.ds	1
1548 0000 --             r0x1095:	.ds	1
1549 0000 --             r0x1097:	.ds	1
1550 0000 --             r0x1098:	.ds	1
1551 0000 --             r0x109A:	.ds	1
1552 0000 --             r0x109D:	.ds	1
1553                     	.area LOCALSTK (STK); local stack var
1554 0000 --             _I2C_WriteByte_STK00:	.ds	1
1555                     	.globl _I2C_WriteByte_STK00
1556                     ;--------------------------------------------------------
1557                     ; initialized data
1558                     ;--------------------------------------------------------
1559                     ;--------------------------------------------------------
1560                     ; initialized data - mirror
1561                     ;--------------------------------------------------------
1562                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FDrv_IIC$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1563                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FDrv_IIC$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1564                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1565                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
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
1576                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1577                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1578                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1579                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
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
1593                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1594                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1595                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
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
1622                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1623                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1624                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1625                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
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
1652                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1653                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1654                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1655                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FDrv_IIC$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1656                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1657                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1658                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1659                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FDrv_IIC$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1660                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1661                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1662                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FDrv_IIC$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1663                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FDrv_IIC$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1664                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FDrv_IIC$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1665                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1666                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1667                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FDrv_IIC$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1668                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FDrv_IIC$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1669                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FDrv_IIC$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1670                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FDrv_IIC$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1671                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FDrv_IIC$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
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
1698                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1699                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1700                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1701                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FDrv_IIC$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1702                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1703                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1704                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FDrv_IIC$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1705                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FDrv_IIC$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1706                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1707                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FDrv_IIC$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
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
1734                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1735                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1736                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
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
1763                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1764                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1765                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
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
1792                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1793                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1794                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1795                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FDrv_IIC$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1796                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FDrv_IIC$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1797                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FDrv_IIC$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1798                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1799                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1800                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FDrv_IIC$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
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
1827                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1828                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1829                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1830                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1831                     	;Following is optimization info, 
1832                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1833                     	;--cdb--W:r0x1096:NULL+0:-1:1
1834                     	;--c2db--RNG$_Write_WData_10000_431$331$373
1835                     	;--c2db--RNG$_Write_i_10000_432$331$373
1836                     	;--c2db--RNG$_Read_i_10000_439$282$312
1837                     	;--c2db--RNG$_Read_RData_10000_439$277$316
1838                     	;--c2db--RNG$_I2C_WriteByte_R_I2C_TXDATA_10000_443$244$261
1839                     	;--c2db--RNG$_I2C_WriteByte_R_E2Address_10000_443$244$256
1840                     	;--c2db--RNG$_I2C_ReadByte_R_E2Address_10000_445$198$207
1841                     	;--c2db--RNG$_I2C_ReadByte_IIC_RcvData_10000_446$218$228
1842                     	END
