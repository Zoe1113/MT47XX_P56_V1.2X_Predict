001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\Drv_LCD_4726.c"
009                     	.module Drv_LCD_4726
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_LCD_4726$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FDrv_LCD_4726$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_LCD_4726$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FDrv_LCD_4726$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_LCD_4726$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FDrv_LCD_4726$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_LCD_4726$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FDrv_LCD_4726$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FDrv_LCD_4726$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FDrv_LCD_4726$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_LCD_4726$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FDrv_LCD_4726$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FDrv_LCD_4726$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FDrv_LCD_4726$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FDrv_LCD_4726$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FDrv_LCD_4726$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_LCD_4726$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FDrv_LCD_4726$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FDrv_LCD_4726$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FDrv_LCD_4726$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:Drv_LCD_4726:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_LCD_4726$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_LCD_4726$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_LCD_4726$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
164                     ;--------------------------------------------------------
165                     ; overlayable items in internal ram 
166                     ;--------------------------------------------------------
167                     ;	udata_ovr
168                     .area CCODE (code,REL,CON) ; Drv_LCD_4726-code 
169                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
170                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
171                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
172                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
173                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
174                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
175                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
176                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
177                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
178                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
179                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
180                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
181                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
182                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
183                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
184                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
185                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
186                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
187                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
188                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
189                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
190                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
191                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
192                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
193                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_LCD_4726$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
194                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_LCD_4726$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
195                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_LCD_4726$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
196                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
197                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
198                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
199                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
200                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
201                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
202                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
203                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
204                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
205                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
206                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
207                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
208                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
209                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
210                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
211                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
212                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
213                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
214                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
215                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
216                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
217                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
218                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
219                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
220                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
221                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
222                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
223                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
224                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
225                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
226                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
227                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
228                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
229                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
230                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
231                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
232                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
233                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
234                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
235                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
236                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
237                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
238                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
239                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
240                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
241                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
242                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
243                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
244                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
245                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
246                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
247                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
248                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
249                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
250                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
251                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
252                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
253                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
254                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
255                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
256                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
257                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
258                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
259                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
260                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
261                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
262                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
263                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
264                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
265                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
266                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
267                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
268                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
269                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
270                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
271                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
272                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
273                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
274                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
275                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
276                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
277                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
278                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
279                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
280                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
281                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
282                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
283                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
284                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
285                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
286                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
287                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
288                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
289                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
290                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
291                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
292                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
293                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
294                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
295                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
296                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
297                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
298                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
299                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
300                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
301                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
302                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
303                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
304                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
305                     	;--cdb--S:LDrv_LCD_4726.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
306                     	;--cdb--S:LDrv_LCD_4726.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
307                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FDrv_LCD_4726$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
308                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
309                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FDrv_LCD_4726$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
310                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FDrv_LCD_4726$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
311                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FDrv_LCD_4726$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
312                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
313                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FDrv_LCD_4726$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
314                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
315                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
316                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
317                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
318                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
319                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
320                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FDrv_LCD_4726$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
321                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FDrv_LCD_4726$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
322                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
323                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FDrv_LCD_4726$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
324                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
325                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
326                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
327                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
328                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FDrv_LCD_4726$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
329                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
330                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
331                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
332                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
333                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FDrv_LCD_4726$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
334                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FDrv_LCD_4726$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
335                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FDrv_LCD_4726$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
336                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FDrv_LCD_4726$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
337                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FDrv_LCD_4726$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
338                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
339                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FDrv_LCD_4726$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
340                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
341                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
342                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FDrv_LCD_4726$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
343                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
344                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FDrv_LCD_4726$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
345                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
346                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
347                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
348                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
349                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
350                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
351                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
352                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
353                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
354                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
355                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
356                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
357                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
358                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
359                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
360                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
361                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
362                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
363                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
364                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
365                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
366                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
367                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
368                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
369                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
370                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
371                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
372                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
373                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
374                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
375                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
376                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
377                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
378                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
379                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
380                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
381                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
382                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
383                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
384                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
385                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
386                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
387                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
388                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
389                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
390                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
391                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
392                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
393                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
394                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
395                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
396                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
397                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
398                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
399                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
400                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
401                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
402                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
403                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
404                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
405                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
406                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
407                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
408                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
409                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
410                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
411                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
412                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
413                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
414                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
415                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
416                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
417                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
418                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
419                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
420                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
421                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
422                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
423                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
424                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
425                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
426                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
427                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
428                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
429                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
430                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
431                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
432                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
433                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
434                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
435                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
436                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
437                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
438                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
439                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
440                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
441                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
442                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
443                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
444                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
445                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
446                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
447                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
448                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
449                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
450                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
451                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
452                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
453                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
454                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
455                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
456                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
457                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
458                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
459                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
460                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
461                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
462                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
463                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
464                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
465                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
466                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
467                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
468                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
469                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
470                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
471                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
472                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
473                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
474                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
475                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
476                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
477                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
478                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
479                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
480                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
481                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
482                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
483                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
484                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
485                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
486                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
487                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
488                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
489                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
490                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
491                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
492                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
493                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
494                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
495                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
496                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
497                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
498                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
499                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
500                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
501                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
502                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
503                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
504                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
505                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
506                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
507                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
508                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
509                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
510                     ;--------------------------------------------------------
511                     ; external declarations
512                     ;--------------------------------------------------------
513                     	.globl	_FSR0
514                     	.globl	_FSR1
515                     	.globl	_FSR2
516                     	.globl	_ADCR
517                     	.globl	_sIIC
518                     	.globl	_BIE_Available_Addr
519                     	.globl	_sTIMx
520                     	.globl	_sUARTx
521                     	.globl	_sAutoBps
522                     	.globl	_eAutoBps_Status
523                     	.globl	_sTest
524                     	.globl	_eTempUnit
525                     	.globl	_eBondingTempUnit
526                     	.globl	_eVersionCode
527                     	.globl	_eMeasureMode
528                     	.globl	_eBinding_Status
529                     	.globl	_Enter_PrepareSleep_Flag
530                     	.globl	_sButton
531                     	.globl	_sTimeStamp
532                     	.globl	_eButton_Status
533                     	.globl	_sLVD
534                     	.globl	_UnitExchangeCompleted
535                     	.globl	_ERR
536                     	.globl	_eErr
537                     	.globl	_eDisplay_Interfaces
538                     	.globl	_sADC
539                     	.globl	_eADCChannel
540                     	.globl	_eSystem_Mode
541                     	.globl	_eBuzzer_Status
542                     	.globl	_Flag_No_Buzzer
543                     	.globl	_sMemory
544                     	.globl	_sMemoryFlag
545                     	.globl	_sActual
546                     	.globl	_sForecast
547                     	.globl	_sTempCal
548                     	.globl	_eMeas_Status
549                     	.globl	_sActual_Forecast
550                     	.globl	_eTo_Actual_Ways
551                     	.globl	_eBle_Sta
552                     	.globl	_sBleStatus
553                     	.globl	_eBacklight_Status
554                     	.globl	_sBacklight
555                     	.globl	_NUM_CODE
556                     	.globl	_R_Table
557                     	.globl	_CloseTable
558                     
559                     	.globl STK07
560                     	.globl STK07_SAVE
561                     	.globl STK06
562                     	.globl STK06_SAVE
563                     	.globl STK05
564                     	.globl STK05_SAVE
565                     	.globl STK04
566                     	.globl STK04_SAVE
567                     	.globl STK03
568                     	.globl STK03_SAVE
569                     	.globl STK02
570                     	.globl STK02_SAVE
571                     	.globl STK01
572                     	.globl STK01_SAVE
573                     	.globl STK00
574                     	.globl STK00_SAVE
575                     ;--------------------------------------------------------
576                     ; global -1 declarations
577                     ;--------------------------------------------------------
578                     
579                     	.globl	_memcpy
580                     ;--------------------------------------------------------
581                     ; global -2 definitions
582                     ;--------------------------------------------------------
583                     	.area DSEG(DATA)
584                     __SWTGTID	.equ	0xA6A6B2CF
585                     
586                     	.area DSEG(DATA)
587                     _INDF0	.equ	0x0
588                     
589                     	.area DSEG(DATA)
590                     _POINC0	.equ	0x1
591                     
592                     	.area DSEG(DATA)
593                     _PODEC0	.equ	0x2
594                     
595                     	.area DSEG(DATA)
596                     _PRINC0	.equ	0x3
597                     
598                     	.area DSEG(DATA)
599                     _PLUSW0	.equ	0x4
600                     
601                     	.area DSEG(DATA)
602                     _INDF1	.equ	0x5
603                     
604                     	.area DSEG(DATA)
605                     _POINC1	.equ	0x6
606                     
607                     	.area DSEG(DATA)
608                     _PODEC1	.equ	0x7
609                     
610                     	.area DSEG(DATA)
611                     _PRINC1	.equ	0x8
612                     
613                     	.area DSEG(DATA)
614                     _PLUSW1	.equ	0x9
615                     
616                     	.area DSEG(DATA)
617                     _INDF2	.equ	0xA
618                     
619                     	.area DSEG(DATA)
620                     _POINC2	.equ	0xB
621                     
622                     	.area DSEG(DATA)
623                     _PODEC2	.equ	0xC
624                     
625                     	.area DSEG(DATA)
626                     _PRINC2	.equ	0xD
627                     
628                     	.area DSEG(DATA)
629                     _PLUSW2	.equ	0xE
630                     
631                     	.area DSEG(DATA)
632                     _FSR0H	.equ	0xF
633                     
634                     	.area DSEG(DATA)
635                     _FSR0L	.equ	0x10
636                     
637                     	.area DSEG(DATA)
638                     _FSR1H	.equ	0x11
639                     
640                     	.area DSEG(DATA)
641                     _FSR1L	.equ	0x12
642                     
643                     	.area DSEG(DATA)
644                     _FSR2H	.equ	0x13
645                     
646                     	.area DSEG(DATA)
647                     _FSR2L	.equ	0x14
648                     
649                     	.area DSEG(DATA)
650                     _TOSH	.equ	0x16
651                     
652                     	.area DSEG(DATA)
653                     _TOSL	.equ	0x17
654                     
655                     	.area DSEG(DATA)
656                     _SKCN	.equ	0x18
657                     
658                     	.area DSEG(DATA)
659                     _PCLATH	.equ	0x1A
660                     
661                     	.area DSEG(DATA)
662                     _PCLATL	.equ	0x1B
663                     
664                     	.area DSEG(DATA)
665                     _TBLPTRH	.equ	0x1D
666                     
667                     	.area DSEG(DATA)
668                     _TBLPTRL	.equ	0x1E
669                     
670                     	.area DSEG(DATA)
671                     _TBLDH	.equ	0x1F
672                     
673                     	.area DSEG(DATA)
674                     _TBLDL	.equ	0x20
675                     
676                     	.area DSEG(DATA)
677                     _PRODH	.equ	0x21
678                     
679                     	.area DSEG(DATA)
680                     _PRODL	.equ	0x22
681                     
682                     	.area DSEG(DATA)
683                     _INTE0	.equ	0x23
684                     
685                     	.area DSEG(DATA)
686                     _INTE1	.equ	0x24
687                     
688                     	.area DSEG(DATA)
689                     _INTE2	.equ	0x25
690                     
691                     	.area DSEG(DATA)
692                     _INTF0	.equ	0x26
693                     
694                     	.area DSEG(DATA)
695                     _INTF1	.equ	0x27
696                     
697                     	.area DSEG(DATA)
698                     _INTF2	.equ	0x28
699                     
700                     	.area DSEG(DATA)
701                     _WREG	.equ	0x29
702                     
703                     	.area DSEG(DATA)
704                     _BSRCN	.equ	0x2A
705                     
706                     	.area DSEG(DATA)
707                     _STATUS	.equ	0x2B
708                     
709                     	.area DSEG(DATA)
710                     _MSTAT	.equ	0x2B
711                     
712                     	.area DSEG(DATA)
713                     _PSTAT	.equ	0x2C
714                     
715                     	.area DSEG(DATA)
716                     _BIECN	.equ	0x2E
717                     
718                     	.area DSEG(DATA)
719                     _BIEARH	.equ	0x2F
720                     
721                     	.area DSEG(DATA)
722                     _BIEARL	.equ	0x30
723                     
724                     	.area DSEG(DATA)
725                     _BIEDRH	.equ	0x31
726                     
727                     	.area DSEG(DATA)
728                     _BIEDRL	.equ	0x32
729                     
730                     	.area DSEG(DATA)
731                     _PWRCN	.equ	0x33
732                     
733                     	.area DSEG(DATA)
734                     _OSCCN0	.equ	0x34
735                     
736                     	.area DSEG(DATA)
737                     _OSCCN1	.equ	0x35
738                     
739                     	.area DSEG(DATA)
740                     _OSCCN2	.equ	0x36
741                     
742                     	.area DSEG(DATA)
743                     _CSFCN0	.equ	0x37
744                     
745                     	.area DSEG(DATA)
746                     _CSFCN1	.equ	0x38
747                     
748                     	.area DSEG(DATA)
749                     _WDTCN	.equ	0x39
750                     
751                     	.area DSEG(DATA)
752                     _AD1H	.equ	0x3A
753                     
754                     	.area DSEG(DATA)
755                     _AD1M	.equ	0x3B
756                     
757                     	.area DSEG(DATA)
758                     _AD1L	.equ	0x3C
759                     
760                     	.area DSEG(DATA)
761                     _AD1CN0	.equ	0x3D
762                     
763                     	.area DSEG(DATA)
764                     _AD1CN1	.equ	0x3E
765                     
766                     	.area DSEG(DATA)
767                     _AD1CN2	.equ	0x3F
768                     
769                     	.area DSEG(DATA)
770                     _AD1CN3	.equ	0x40
771                     
772                     	.area DSEG(DATA)
773                     _AD1CN4	.equ	0x41
774                     
775                     	.area DSEG(DATA)
776                     _AD1CN5	.equ	0x42
777                     
778                     	.area DSEG(DATA)
779                     _LVDCN	.equ	0x43
780                     
781                     	.area DSEG(DATA)
782                     _TMA1CN	.equ	0x44
783                     
784                     	.area DSEG(DATA)
785                     _TMA1R	.equ	0x45
786                     
787                     	.area DSEG(DATA)
788                     _TMA1C	.equ	0x46
789                     
790                     	.area DSEG(DATA)
791                     _TB1FLAG	.equ	0x47
792                     
793                     	.area DSEG(DATA)
794                     _TB1CN0	.equ	0x48
795                     
796                     	.area DSEG(DATA)
797                     _TB1CN1	.equ	0x49
798                     
799                     	.area DSEG(DATA)
800                     _TB1RH	.equ	0x4A
801                     
802                     	.area DSEG(DATA)
803                     _TB1RL	.equ	0x4B
804                     
805                     	.area DSEG(DATA)
806                     _TB1C0H	.equ	0x4C
807                     
808                     	.area DSEG(DATA)
809                     _TB1C0L	.equ	0x4D
810                     
811                     	.area DSEG(DATA)
812                     _TB1C1H	.equ	0x4E
813                     
814                     	.area DSEG(DATA)
815                     _TB1C1L	.equ	0x4F
816                     
817                     	.area DSEG(DATA)
818                     _TB1C2H	.equ	0x50
819                     
820                     	.area DSEG(DATA)
821                     _TB1C2L	.equ	0x51
822                     
823                     	.area DSEG(DATA)
824                     _TC1CN0	.equ	0x52
825                     
826                     	.area DSEG(DATA)
827                     _PT1	.equ	0x53
828                     
829                     	.area DSEG(DATA)
830                     _TRISC1	.equ	0x54
831                     
832                     	.area DSEG(DATA)
833                     _PT1DA	.equ	0x55
834                     
835                     	.area DSEG(DATA)
836                     _PT1PU	.equ	0x56
837                     
838                     	.area DSEG(DATA)
839                     _PT1M1	.equ	0x57
840                     
841                     	.area DSEG(DATA)
842                     _PT1INT	.equ	0x58
843                     
844                     	.area DSEG(DATA)
845                     _PT1INTE	.equ	0x59
846                     
847                     	.area DSEG(DATA)
848                     _PT1INTF	.equ	0x5A
849                     
850                     	.area DSEG(DATA)
851                     _PT2	.equ	0x5B
852                     
853                     	.area DSEG(DATA)
854                     _TRISC2	.equ	0x5C
855                     
856                     	.area DSEG(DATA)
857                     _PT2DA	.equ	0x5D
858                     
859                     	.area DSEG(DATA)
860                     _PT2PU	.equ	0x5E
861                     
862                     	.area DSEG(DATA)
863                     _PT2INT	.equ	0x5F
864                     
865                     	.area DSEG(DATA)
866                     _PT2INTE	.equ	0x60
867                     
868                     	.area DSEG(DATA)
869                     _PT2INTF	.equ	0x61
870                     
871                     	.area DSEG(DATA)
872                     _PT6	.equ	0x62
873                     
874                     	.area DSEG(DATA)
875                     _TRISC6	.equ	0x63
876                     
877                     	.area DSEG(DATA)
878                     _PT6DA	.equ	0x64
879                     
880                     	.area DSEG(DATA)
881                     _PT6PU	.equ	0x65
882                     
883                     	.area DSEG(DATA)
884                     _PT7	.equ	0x66
885                     
886                     	.area DSEG(DATA)
887                     _TRISC7	.equ	0x67
888                     
889                     	.area DSEG(DATA)
890                     _PT7DA	.equ	0x68
891                     
892                     	.area DSEG(DATA)
893                     _PT7PU	.equ	0x69
894                     
895                     	.area DSEG(DATA)
896                     _PT8	.equ	0x6A
897                     
898                     	.area DSEG(DATA)
899                     _TRISC8	.equ	0x6B
900                     
901                     	.area DSEG(DATA)
902                     _PT8DA	.equ	0x6C
903                     
904                     	.area DSEG(DATA)
905                     _PT8PU	.equ	0x6D
906                     
907                     	.area DSEG(DATA)
908                     _SSPCN0	.equ	0x6E
909                     
910                     	.area DSEG(DATA)
911                     _SSPSTA0	.equ	0x6F
912                     
913                     	.area DSEG(DATA)
914                     _SSPBUF0	.equ	0x70
915                     
916                     	.area DSEG(DATA)
917                     _CFG0	.equ	0x71
918                     
919                     	.area DSEG(DATA)
920                     _ACT0	.equ	0x72
921                     
922                     	.area DSEG(DATA)
923                     _STA0	.equ	0x73
924                     
925                     	.area DSEG(DATA)
926                     _CRG0	.equ	0x74
927                     
928                     	.area DSEG(DATA)
929                     _TOC0	.equ	0x75
930                     
931                     	.area DSEG(DATA)
932                     _RDB0	.equ	0x76
933                     
934                     	.area DSEG(DATA)
935                     _TDB0	.equ	0x77
936                     
937                     	.area DSEG(DATA)
938                     _SID0	.equ	0x78
939                     
940                     	.area DSEG(DATA)
941                     _UR0CN	.equ	0x79
942                     
943                     	.area DSEG(DATA)
944                     _UR0STA	.equ	0x7A
945                     
946                     	.area DSEG(DATA)
947                     _BA0CN	.equ	0x7B
948                     
949                     	.area DSEG(DATA)
950                     _BG0RH	.equ	0x7C
951                     
952                     	.area DSEG(DATA)
953                     _BG0RL	.equ	0x7D
954                     
955                     	.area DSEG(DATA)
956                     _TX0R	.equ	0x7E
957                     
958                     	.area DSEG(DATA)
959                     _RC0REG	.equ	0x7F
960                     
961                     	.area DSEG(DATA)
962                     _LCDCN1	.equ	0x180
963                     
964                     	.area DSEG(DATA)
965                     _LCDCN2	.equ	0x181
966                     
967                     	.area DSEG(DATA)
968                     _LCDCN3	.equ	0x182
969                     
970                     	.area DSEG(DATA)
971                     _LCDCN4	.equ	0x183
972                     
973                     	.area DSEG(DATA)
974                     _LCDCN5	.equ	0x184
975                     
976                     	.area DSEG(DATA)
977                     _LCDCN6	.equ	0x185
978                     
979                     	.area DSEG(DATA)
980                     _LCDCN7	.equ	0x186
981                     
982                     	.area DSEG(DATA)
983                     _LCDCN8	.equ	0x187
984                     
985                     	.area DSEG(DATA)
986                     _LCD0	.equ	0x188
987                     
988                     	.area DSEG(DATA)
989                     _LCD1	.equ	0x189
990                     
991                     	.area DSEG(DATA)
992                     _LCD2	.equ	0x18A
993                     
994                     	.area DSEG(DATA)
995                     _LCD3	.equ	0x18B
996                     
997                     	.area DSEG(DATA)
998                     _LCD4	.equ	0x18C
999                     
1000                     	.area DSEG(DATA)
1001                     _LCD5	.equ	0x18D
1002                     
1003                     	.area DSEG(DATA)
1004                     _LCD6	.equ	0x18E
1005                     
1006                     	.area DSEG(DATA)
1007                     _LCD7	.equ	0x18F
1008                     
1009                     	.area DSEG(DATA)
1010                     _LCD8	.equ	0x190
1011                     
1012                     	.area DSEG(DATA)
1013                     _LCD9	.equ	0x191
1014                     
1015                     	.area DSEG(DATA)
1016                     _UR2CN	.equ	0x192
1017                     
1018                     	.area DSEG(DATA)
1019                     _UR2STA	.equ	0x193
1020                     
1021                     	.area DSEG(DATA)
1022                     _BA2CN	.equ	0x194
1023                     
1024                     	.area DSEG(DATA)
1025                     _BG2RH	.equ	0x195
1026                     
1027                     	.area DSEG(DATA)
1028                     _BG2RL	.equ	0x196
1029                     
1030                     	.area DSEG(DATA)
1031                     _TX2R	.equ	0x197
1032                     
1033                     	.area DSEG(DATA)
1034                     _RC2REG	.equ	0x198
1035                     
1036                     	.area DSEG(DATA)
1037                     _TMA2R	.equ	0x1E8
1038                     
1039                     	.area DSEG(DATA)
1040                     _TMA2C	.equ	0x1E9
1041                     
1042                     	.area DSEG(DATA)
1043                     _LEDCN	.equ	0x1EA
1044                     
1045                     	.area DSEG(DATA)
1046                     _IQ0	.equ	0x1EB
1047                     
1048                     	.area DSEG(DATA)
1049                     _IQ1	.equ	0x1EC
1050                     
1051                     	.area DSEG(DATA)
1052                     _DGCON1	.equ	0x1ED
1053                     
1054                     	.area DSEG(DATA)
1055                     _DGCON2	.equ	0x1EE
1056                     
1057                     	.area DSEG(DATA)
1058                     _ADCRH	.equ	0x3A
1059                     
1060                     	.area DSEG(DATA)
1061                     _ADCRM	.equ	0x3B
1062                     
1063                     	.area DSEG(DATA)
1064                     _ADCRL	.equ	0x3C
1065                     
1066                     	.area DSEG(DATA)
1067                     _TEMDATA	.equ	0x2E0
1068                     
1069                     ;--------------------------------------------------------
1070                     ; absolute symbol definitions
1071                     ;--------------------------------------------------------
1072                     ;--------------------------------------------------------
1073                     ; compiler-defined variables
1074                     ;--------------------------------------------------------
1075                     	.area IDATA (DATA,REL,CON); pre-def
1076                     	.area IDATAROM (CODE,REL,CON); pre-def
1077                     	.area UDATA (DATA,REL,CON); pre-def
1078                     ;--------------------------------------------------------
1079                     ; initialized data
1080                     ;--------------------------------------------------------
1081                     ;--------------------------------------------------------
1082                     ; initialized data - mirror
1083                     ;--------------------------------------------------------
1084                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FDrv_LCD_4726$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1085                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FDrv_LCD_4726$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1086                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1087                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1088                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1089                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1090                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1091                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1092                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1093                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1094                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1095                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1096                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1097                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1098                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1099                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1100                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1101                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1102                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1103                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1104                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1105                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1106                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1107                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1108                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1109                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1110                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1111                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1112                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1113                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1114                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1115                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1116                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1117                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1118                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1119                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1120                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1121                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1122                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1123                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1124                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1125                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1126                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1127                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1128                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1129                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1130                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1131                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1132                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1133                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1134                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1135                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1136                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1137                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1138                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1139                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1140                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1141                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1142                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1143                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1144                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1145                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1146                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1147                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1148                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1149                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1150                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1151                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1152                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1153                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1154                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1155                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1156                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1157                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1158                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1159                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1160                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1161                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1162                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1163                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1164                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1165                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1166                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1167                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1168                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1169                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1170                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1171                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1172                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1173                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1174                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1175                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1176                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1177                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FDrv_LCD_4726$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1178                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1179                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1180                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1181                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FDrv_LCD_4726$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1182                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1183                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1184                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FDrv_LCD_4726$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1185                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FDrv_LCD_4726$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1186                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FDrv_LCD_4726$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1187                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1188                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1189                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FDrv_LCD_4726$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1190                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FDrv_LCD_4726$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1191                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FDrv_LCD_4726$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1192                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FDrv_LCD_4726$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1193                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FDrv_LCD_4726$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1194                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1195                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1196                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1197                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1198                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1199                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1200                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1201                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1202                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1203                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1204                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1205                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1206                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1207                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1208                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1209                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1210                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1211                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1212                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1213                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1214                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1215                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1216                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1217                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1218                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1219                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1220                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1221                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1222                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1223                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FDrv_LCD_4726$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1224                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1225                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1226                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FDrv_LCD_4726$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1227                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FDrv_LCD_4726$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1228                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1229                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FDrv_LCD_4726$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1230                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1231                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1232                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1233                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1234                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1235                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1236                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1237                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1238                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1239                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1240                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1241                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1242                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1243                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1244                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1245                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1246                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1247                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1248                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1249                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1250                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1251                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1252                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1253                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1254                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1255                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1256                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1257                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1258                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1259                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1260                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1261                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1262                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1263                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1264                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1265                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1266                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1267                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1268                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1269                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1270                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1271                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1272                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1273                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1274                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1275                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1276                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1277                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1278                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1279                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1280                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1281                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1282                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1283                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1284                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1285                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1286                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1287                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1288                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1289                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1290                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1291                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1292                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1293                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1294                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1295                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1296                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1297                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1298                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1299                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1300                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1301                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1302                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1303                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1304                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1305                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1306                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1307                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1308                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1309                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1310                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1311                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1312                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1313                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1314                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1315                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1316                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1317                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FDrv_LCD_4726$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1318                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FDrv_LCD_4726$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1319                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FDrv_LCD_4726$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1320                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1321                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1322                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FDrv_LCD_4726$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1323                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1324                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1325                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1326                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1327                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1328                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1329                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1330                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1331                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1332                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1333                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1334                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1335                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1336                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1337                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1338                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1339                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1340                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1341                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1342                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1343                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1344                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1345                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1346                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1347                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1348                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1349                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1350                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1351                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1352                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1353                     	END
