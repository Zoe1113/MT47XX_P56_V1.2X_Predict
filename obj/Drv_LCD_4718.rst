001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\Drv_LCD_4718.c"
009                     	.module Drv_LCD_4718
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FDrv_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FDrv_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FDrv_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FDrv_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FDrv_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FDrv_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FDrv_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FDrv_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FDrv_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FDrv_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FDrv_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FDrv_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FDrv_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FDrv_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
031                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
032                     	;--cdb--F:Drv_LCD_4718:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0,0,0,0
033                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
034                     	;--cdb--F:Drv_LCD_4718:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0,0,0,0
035                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
036                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
037                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
038                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
039                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
040                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
041                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
042                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
043                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
044                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
045                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
046                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
047                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
048                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
049                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
050                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
051                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
052                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
053                     	;--cdb--F:Drv_LCD_4718:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
054                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
055                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
056                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
057                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
058                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
059                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
060                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
061                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
062                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
063                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
064                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
065                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
066                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
067                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
068                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
069                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
070                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
071                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
072                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
073                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
074                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
075                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
076                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
077                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
078                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
079                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
080                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
081                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
082                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
083                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
084                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
085                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
086                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
087                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
088                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
089                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
090                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
091                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
092                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
093                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
095                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
096                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
097                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
100                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
101                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
102                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
103                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
104                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
105                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
106                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
107                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
108                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
109                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
110                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
111                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
112                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
113                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
116                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
119                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
123                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
128                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
140                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
141                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--F:Drv_LCD_4718:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0,0,0,0
151                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
152                     	;--cdb--F:Drv_LCD_4718:G$Disp_Low$0$0({2}DF,SV:S),C,0,0,0,0,0
153                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
154                     	;--cdb--F:Drv_LCD_4718:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0,0,0,0
155                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--F:Drv_LCD_4718:G$Disp_All$0$0({2}DF,SV:S),C,0,0,0,0,0
157                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--F:Drv_LCD_4718:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0,0,0,0
159                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--F:Drv_LCD_4718:G$Disp_Err$0$0({2}DF,SV:S),C,0,0,0,0,0
161                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--F:Drv_LCD_4718:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0,0,0,0
163                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:Drv_LCD_4718:G$Disp_Version$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     	;--cdb--S:G$_divuchar$0$0({2}DF,SC:U),C,0,0
166                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
167                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
168                     	;--cdb--F:Drv_LCD_4718:G$Disp_Code$0$0({2}DF,SV:S),C,0,0,0,0,0
169                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
170                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
171                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--F:Drv_LCD_4718:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0,0,0,0
173                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
174                     	;--cdb--F:Drv_LCD_4718:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0,0,0,0
175                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
176                     	;--cdb--F:Drv_LCD_4718:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0,0,0,0
177                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
178                     	;--cdb--F:Drv_LCD_4718:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0,0,0,0
179                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
180                     	;--cdb--F:Drv_LCD_4718:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0,0,0,0
181                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
182                     	;--cdb--F:Drv_LCD_4718:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0,0,0,0
183                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
184                     	;--cdb--F:Drv_LCD_4718:G$Disp_End$0$0({2}DF,SV:S),C,0,0,0,0,0
185                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
186                     	;--cdb--F:Drv_LCD_4718:G$Disp_Off$0$0({2}DF,SV:S),C,0,0,0,0,0
187                     ;--------------------------------------------------------
188                     ; overlayable items in internal ram 
189                     ;--------------------------------------------------------
190                     ;	udata_ovr
191                     .area CCODE (code,REL,CON) ; Drv_LCD_4718-code 
192                     .globl _Disp_Off
193                     
194                     ;--------------------------------------------------------
195                     	.FUNC _Disp_Off:$r:0:0
196                     ;--------------------------------------------------------
197                     ;	;.line	521; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x53;
198                     _Disp_Off:	;Function start
199 0328 [00] [2] 0653      	MVL	0x53
200 0329 [00] [1] 0011 6788 	MVF	_LCD0,1,0
201                     ;	;.line	523; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x33;
202 032B [00] [1] 0633      	MVL	0x33
203 032C [00] [1] 6789      	MVF	_LCD1,1,0
204                     ;	;.line	525; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x03;
205 032D [00] [1] 0603      	MVL	0x03
206 032E [00] [1] 678A      	MVF	_LCD2,1,0
207                     ;	;.line	527; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x33;
208 032F [00] [1] 0633      	MVL	0x33
209 0330 [00] [1] 678B      	MVF	_LCD3,1,0
210                     ;	;.line	529; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
211 0331 [00] [1] 0D8C      	CLRF	_LCD4,0
212                     ;	;.line	531; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
213 0332 [00] [1] 0D8D      	CLRF	_LCD5,0
214                     ;	;.line	533; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
215 0333 [00] [1] 0D8E      	CLRF	_LCD6,0
216                     ;	;.line	534; ".\Source\Drv_LCD_4718.c"	}
217 0334 [00] [1] 000A      	RET	
218                     ; exit point of _Disp_Off
219                     	.ENDFUNC	_Disp_Off
220                     ;--------------------------------------------------------
221                     
222                     .globl _Disp_End
223                     
224                     ;--------------------------------------------------------
225                     	.FUNC _Disp_End:$r:0:0
226                     ;--------------------------------------------------------
227                     ;	;.line	498; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x73;
228                     _Disp_End:	;Function start
229 04C9 [00] [2] 0673      	MVL	0x73
230 04CA [00] [1] 0011 6788 	MVF	_LCD0,1,0
231                     ;	;.line	500; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x20;
232 04CC [00] [1] 0620      	MVL	0x20
233 04CD [00] [1] 6789      	MVF	_LCD1,1,0
234                     ;	;.line	502; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x22;
235 04CE [00] [1] 0622      	MVL	0x22
236 04CF [00] [1] 678A      	MVF	_LCD2,1,0
237                     ;	;.line	504; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x62;
238 04D0 [00] [1] 0662      	MVL	0x62
239 04D1 [00] [1] 678B      	MVF	_LCD3,1,0
240                     ;	;.line	506; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x03;
241 04D2 [00] [1] 0603      	MVL	0x03
242 04D3 [00] [1] 678C      	MVF	_LCD4,1,0
243                     ;	;.line	508; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
244 04D4 [00] [1] 0D8D      	CLRF	_LCD5,0
245                     ;	;.line	510; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
246 04D5 [00] [1] 0D8E      	CLRF	_LCD6,0
247                     ;	;.line	511; ".\Source\Drv_LCD_4718.c"	}
248 04D6 [00] [1] 000A      	RET	
249                     ; exit point of _Disp_End
250                     	.ENDFUNC	_Disp_End
251                     ;--------------------------------------------------------
252                     
253                     .globl _Disp_BrownOut
254                     
255                     ;--------------------------------------------------------
256                     	.FUNC _Disp_BrownOut:$r:0:0
257                     ;--------------------------------------------------------
258                     ;	;.line	475; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x00;
259                     _Disp_BrownOut:	;Function start
260 031E [00] [1] 0011 0D88 	CLRF	_LCD0,0
261                     ;	;.line	477; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x00;
262 0320 [00] [1] 0D89      	CLRF	_LCD1,0
263                     ;	;.line	479; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x00;
264 0321 [00] [1] 0D8A      	CLRF	_LCD2,0
265                     ;	;.line	481; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x00;
266 0322 [00] [1] 0D8B      	CLRF	_LCD3,0
267                     ;	;.line	483; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x04;
268 0323 [00] [1] 0604      	MVL	0x04
269 0324 [00] [1] 678C      	MVF	_LCD4,1,0
270                     ;	;.line	485; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
271 0325 [00] [1] 0D8D      	CLRF	_LCD5,0
272                     ;	;.line	487; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
273 0326 [00] [1] 0D8E      	CLRF	_LCD6,0
274                     ;	;.line	488; ".\Source\Drv_LCD_4718.c"	}
275 0327 [00] [1] 000A      	RET	
276                     ; exit point of _Disp_BrownOut
277                     	.ENDFUNC	_Disp_BrownOut
278                     ;--------------------------------------------------------
279                     
280                     .globl _Disp_CAL
281                     
282                     ;--------------------------------------------------------
283                     	.FUNC _Disp_CAL:$r:0:0
284                     ;--------------------------------------------------------
285                     ;	;.line	452; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x53;
286                     _Disp_CAL:	;Function start
287 0311 [00] [2] 0653      	MVL	0x53
288 0312 [00] [1] 0011 6788 	MVF	_LCD0,1,0
289                     ;	;.line	454; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x30;
290 0314 [00] [1] 0630      	MVL	0x30
291 0315 [00] [1] 6789      	MVF	_LCD1,1,0
292                     ;	;.line	456; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x33;
293 0316 [00] [1] 0633      	MVL	0x33
294 0317 [00] [1] 678A      	MVF	_LCD2,1,0
295                     ;	;.line	458; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x43;
296 0318 [00] [1] 0643      	MVL	0x43
297 0319 [00] [1] 678B      	MVF	_LCD3,1,0
298                     ;	;.line	460; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
299 031A [00] [1] 0D8C      	CLRF	_LCD4,0
300                     ;	;.line	462; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
301 031B [00] [1] 0D8D      	CLRF	_LCD5,0
302                     ;	;.line	464; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
303 031C [00] [1] 0D8E      	CLRF	_LCD6,0
304                     ;	;.line	465; ".\Source\Drv_LCD_4718.c"	}
305 031D [00] [1] 000A      	RET	
306                     ; exit point of _Disp_CAL
307                     	.ENDFUNC	_Disp_CAL
308                     ;--------------------------------------------------------
309                     
310                     .globl _Disp_Bth
311                     
312                     ;--------------------------------------------------------
313                     	.FUNC _Disp_Bth:$r:0:0
314                     ;--------------------------------------------------------
315                     ;	;.line	429; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x63;
316                     _Disp_Bth:	;Function start
317 13DB [00] [2] 0663      	MVL	0x63
318 13DC [00] [1] 0011 6788 	MVF	_LCD0,1,0
319                     ;	;.line	431; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x32;
320 13DE [00] [1] 0632      	MVL	0x32
321 13DF [00] [1] 6789      	MVF	_LCD1,1,0
322                     ;	;.line	433; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x06;
323 13E0 [00] [1] 0606      	MVL	0x06
324 13E1 [00] [1] 678A      	MVF	_LCD2,1,0
325                     ;	;.line	435; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x23;
326 13E2 [00] [1] 0623      	MVL	0x23
327 13E3 [00] [1] 678B      	MVF	_LCD3,1,0
328                     ;	;.line	437; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x02;
329 13E4 [00] [1] 0602      	MVL	0x02
330 13E5 [00] [1] 678C      	MVF	_LCD4,1,0
331                     ;	;.line	439; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
332 13E6 [00] [1] 0D8D      	CLRF	_LCD5,0
333                     ;	;.line	441; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
334 13E7 [00] [1] 0D8E      	CLRF	_LCD6,0
335                     ;	;.line	442; ".\Source\Drv_LCD_4718.c"	}
336 13E8 [00] [1] 000A      	RET	
337                     ; exit point of _Disp_Bth
338                     	.ENDFUNC	_Disp_Bth
339                     ;--------------------------------------------------------
340                     
341                     .globl _Disp_Rct
342                     
343                     ;--------------------------------------------------------
344                     	.FUNC _Disp_Rct:$r:0:0
345                     ;--------------------------------------------------------
346                     ;	;.line	406; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x22;
347                     _Disp_Rct:	;Function start
348 13E9 [00] [2] 0622      	MVL	0x22
349 13EA [00] [1] 0011 6788 	MVF	_LCD0,1,0
350                     ;	;.line	408; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x20;
351 13EC [00] [1] 0620      	MVL	0x20
352 13ED [00] [1] 6789      	MVF	_LCD1,1,0
353                     ;	;.line	410; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x06;
354 13EE [00] [1] 0606      	MVL	0x06
355 13EF [00] [1] 678A      	MVF	_LCD2,1,0
356                     ;	;.line	412; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x63;
357 13F0 [00] [1] 0663      	MVL	0x63
358 13F1 [00] [1] 678B      	MVF	_LCD3,1,0
359                     ;	;.line	414; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
360 13F2 [00] [1] 0D8C      	CLRF	_LCD4,0
361                     ;	;.line	416; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
362 13F3 [00] [1] 0D8D      	CLRF	_LCD5,0
363                     ;	;.line	418; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
364 13F4 [00] [1] 0D8E      	CLRF	_LCD6,0
365                     ;	;.line	419; ".\Source\Drv_LCD_4718.c"	}
366 13F5 [00] [1] 000A      	RET	
367                     ; exit point of _Disp_Rct
368                     	.ENDFUNC	_Disp_Rct
369                     ;--------------------------------------------------------
370                     
371                     .globl _Disp_Udr
372                     
373                     ;--------------------------------------------------------
374                     	.FUNC _Disp_Udr:$r:0:0
375                     ;--------------------------------------------------------
376                     ;	;.line	383; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x42;
377                     _Disp_Udr:	;Function start
378 13F6 [00] [2] 0642      	MVL	0x42
379 13F7 [00] [1] 0011 6788 	MVF	_LCD0,1,0
380                     ;	;.line	385; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x22;
381 13F9 [00] [1] 0622      	MVL	0x22
382 13FA [00] [1] 6789      	MVF	_LCD1,1,0
383                     ;	;.line	387; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x36;
384 13FB [00] [1] 0636      	MVL	0x36
385 13FC [00] [1] 678A      	MVF	_LCD2,1,0
386                     ;	;.line	389; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x22;
387 13FD [00] [1] 0622      	MVL	0x22
388 13FE [00] [1] 678B      	MVF	_LCD3,1,0
389                     ;	;.line	391; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
390 13FF [00] [1] 0D8C      	CLRF	_LCD4,0
391                     ;	;.line	393; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
392 1400 [00] [1] 0D8D      	CLRF	_LCD5,0
393                     ;	;.line	395; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
394 1401 [00] [1] 0D8E      	CLRF	_LCD6,0
395                     ;	;.line	396; ".\Source\Drv_LCD_4718.c"	}
396 1402 [00] [1] 000A      	RET	
397                     ; exit point of _Disp_Udr
398                     	.ENDFUNC	_Disp_Udr
399                     ;--------------------------------------------------------
400                     
401                     .globl _Disp_Orl
402                     
403                     ;--------------------------------------------------------
404                     	.FUNC _Disp_Orl:$r:0:0
405                     ;--------------------------------------------------------
406                     ;	;.line	360; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x62;
407                     _Disp_Orl:	;Function start
408 1403 [00] [2] 0662      	MVL	0x62
409 1404 [00] [1] 0011 6788 	MVF	_LCD0,1,0
410                     ;	;.line	362; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x22;
411 1406 [00] [1] 0622      	MVL	0x22
412 1407 [00] [1] 6789      	MVF	_LCD1,1,0
413                     ;	;.line	364; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x02;
414 1408 [00] [1] 0602      	MVL	0x02
415 1409 [00] [1] 678A      	MVF	_LCD2,1,0
416                     ;	;.line	366; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x43;
417 140A [00] [1] 0643      	MVL	0x43
418 140B [00] [1] 678B      	MVF	_LCD3,1,0
419                     ;	;.line	368; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
420 140C [00] [1] 0D8C      	CLRF	_LCD4,0
421                     ;	;.line	370; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
422 140D [00] [1] 0D8D      	CLRF	_LCD5,0
423                     ;	;.line	372; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
424 140E [00] [1] 0D8E      	CLRF	_LCD6,0
425                     ;	;.line	373; ".\Source\Drv_LCD_4718.c"	}
426 140F [00] [1] 000A      	RET	
427                     ; exit point of _Disp_Orl
428                     	.ENDFUNC	_Disp_Orl
429                     ;--------------------------------------------------------
430                     
431                     .globl _Disp_Code
432                     
433                     ;--------------------------------------------------------
434                     	.FUNC _Disp_Code:$r:0:2:$C:__divuint:$C:__moduint:$C:__divuchar:$C:__g2ptrget1\
435                     :$C:__g2ptrget2\
436                     :$L:r0x10A1:$L:_Disp_Code_STK00:$L:r0x10A3:$L:r0x10A2:$L:_Disp_Code_NumDisp_10000_421\
437                     :$L:r0x10A5:$L:r0x10A6
438                     ;--------------------------------------------------------
439                     ;	;.line	324; ".\Source\Drv_LCD_4718.c"	void Disp_Code(uint16 num)
440 1564 [00] [2] C488      _Disp_Code:	;Function start
441 1565 [08] [2] 6687      	MVF	r0x10A1,1,0
442                     ;	;.line	330; ".\Source\Drv_LCD_4718.c"	NumDisp[2] = num / 100;
443 1566 [08] [2] 0664      	MVL	0x64
444 1567 [08] [2] 660D      	MVF	__divuint_STK02,1,0
445 1568 [09] [2] 0C0D      	CLRF	__divuint_STK01,0
446 1569 [10] [2] 648A      	MVF	_Disp_Code_STK00,0,0
447 156A [10] [2] 660D      	MVF	__divuint_STK00,1,0
448 156B [11] [2] 648A      	MVF	r0x10A1,0,0
449 156C [11] [2] C875      	CALL	__divuint
450                     	.CHKPARA __divuint 4
451 156D [08] [2] 6420      	MVF	STK00,0,0
452 156E [08] [2] 6682      	MVF	(_Disp_Code_NumDisp_10000_421 + 2),1,0
453                     ;	;.line	332; ".\Source\Drv_LCD_4718.c"	NumDisp[1] = num % 100 / 10;
454 156F [08] [2] 0664      	MVL	0x64
455 1570 [08] [2] 660D      	MVF	__moduint_STK02,1,0
456 1571 [09] [2] 0C0D      	CLRF	__moduint_STK01,0
457 1572 [10] [2] 648A      	MVF	_Disp_Code_STK00,0,0
458 1573 [10] [2] 660D      	MVF	__moduint_STK00,1,0
459 1574 [11] [2] 648A      	MVF	r0x10A1,0,0
460 1575 [11] [2] C8A7      	CALL	__moduint
461                     	.CHKPARA __moduint 4
462 1576 [08] [2] 060A      	MVL	0x0a
463 1577 [08] [2] 660D      	MVF	__divuchar_STK00,1,0
464 1578 [09] [2] 6420      	MVF	STK00,0,0
465 1579 [09] [2] CE32      	CALL	__divuchar
466 157A [08] [2] 6683      	MVF	(_Disp_Code_NumDisp_10000_421 + 1),1,0
467                     ;	;.line	334; ".\Source\Drv_LCD_4718.c"	NumDisp[0] = num % 10;
468 157B [08] [2] 060A      	MVL	0x0a
469 157C [08] [2] 660D      	MVF	__moduint_STK02,1,0
470 157D [09] [2] 0C0D      	CLRF	__moduint_STK01,0
471 157E [10] [2] 648A      	MVF	_Disp_Code_STK00,0,0
472 157F [10] [2] 660D      	MVF	__moduint_STK00,1,0
473 1580 [11] [2] 648A      	MVF	r0x10A1,0,0
474 1581 [11] [2] C89B      	CALL	__moduint
475 1582 [08] [2] 6420      	MVF	STK00,0,0
476 1583 [08] [2] 6685      	MVF	r0x10A2,1,0
477 1584 [08] [2] 6684      	MVF	(_Disp_Code_NumDisp_10000_421 + 0),1,0
478                     ;	;.line	337; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[2]];
479 1585 [08] [2] 6482      	MVF	(_Disp_Code_NumDisp_10000_421 + 2),0,0
480 1586 [08] [2] 0702      	MULL	0x02
481 1587 [08] [2] 6422      	MVF	_PRODL,0,0
482 1588 [08] [2] 04CE      	ADDL	(_NUM_CODE + 0)
483 1589 [08] [2] 660D      	MVF	__g2ptrget1_STK00,1,0
484 158A [09] [2] 0636      	MVL	high (_NUM_CODE + 0)
485 158B [09] [2] 1421      	ADDC	_PRODH,0,0
486 158C [09] [2] 0280      	IORL	0x80
487 158D [09] [2] C000 F6CE 	CALL	__g2ptrget1
488 158F [00] [1] 0011 6788 	MVF	_LCD0,1,0
489                     ;	;.line	339; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = (NUM_CODE[NumDisp[2]] >> 8) + (NUM_CODE[NumDisp[1]] << 4);
490 1591 [08] [1] 6482      	MVF	(_Disp_Code_NumDisp_10000_421 + 2),0,0
491 1592 [08] [1] 0702      	MULL	0x02
492 1593 [08] [1] 6422      	MVF	_PRODL,0,0
493 1594 [08] [1] 04CE      	ADDL	(_NUM_CODE + 0)
494 1595 [08] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
495 1596 [09] [1] 0636      	MVL	high (_NUM_CODE + 0)
496 1597 [09] [1] 1421      	ADDC	_PRODH,0,0
497 1598 [09] [1] 0280      	IORL	0x80
498 1599 [09] [1] C8FD      	CALL	__g2ptrget2
499 159A [08] [1] 6686      	MVF	r0x10A3,1,0
500 159B [08] [1] 6483      	MVF	(_Disp_Code_NumDisp_10000_421 + 1),0,0
501 159C [08] [1] 0702      	MULL	0x02
502 159D [08] [1] 6422      	MVF	_PRODL,0,0
503 159E [08] [1] 04CE      	ADDL	(_NUM_CODE + 0)
504 159F [08] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
505 15A0 [09] [1] 0636      	MVL	high (_NUM_CODE + 0)
506 15A1 [09] [1] 1421      	ADDC	_PRODH,0,0
507 15A2 [09] [1] 0280      	IORL	0x80
508 15A3 [09] [1] C000 F6CE 	CALL	__g2ptrget1
509 15A5 [08] [1] 6681      	MVF	r0x10A5,1,0
510 15A6 [08] [1] 6081      	SWPF	r0x10A5,0,0
511 15A7 [08] [1] 01F0      	ANDL	0xf0
512 15A8 [08] [1] 1086      	ADDF	r0x10A3,0,0
513 15A9 [08] [1] 6789      	MVF	_LCD1,1,0
514                     ;	;.line	341; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[1]] >> 4;
515 15AA [08] [1] 6483      	MVF	(_Disp_Code_NumDisp_10000_421 + 1),0,0
516 15AB [08] [1] 0702      	MULL	0x02
517 15AC [08] [1] 6422      	MVF	_PRODL,0,0
518 15AD [08] [1] 04CE      	ADDL	(_NUM_CODE + 0)
519 15AE [08] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
520 15AF [09] [1] 0636      	MVL	high (_NUM_CODE + 0)
521 15B0 [09] [1] 1421      	ADDC	_PRODH,0,0
522 15B1 [09] [1] 0280      	IORL	0x80
523 15B2 [09] [1] C8E4      	CALL	__g2ptrget2
524 15B3 [08] [1] 6681      	MVF	r0x10A5,1,0
525 15B4 [08] [1] 6020      	SWPF	STK00,0,0
526 15B5 [08] [1] 010F      	ANDL	0x0f
527 15B6 [08] [1] 6688      	MVF	_Disp_Code_STK00,1,0
528 15B7 [08] [1] 6081      	SWPF	r0x10A5,0,0
529 15B8 [08] [1] 6680      	MVF	r0x10A6,1,0
530 15B9 [08] [1] 01F0      	ANDL	0xf0
531 15BA [08] [1] 2E88      	IORF	_Disp_Code_STK00,1,0
532 15BB [08] [1] 2280      	XORF	r0x10A6,1,0
533 15BC [08] [1] 6488      	MVF	_Disp_Code_STK00,0,0
534 15BD [08] [1] 678A      	MVF	_LCD2,1,0
535                     ;	;.line	343; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[0]];
536 15BE [08] [1] 6485      	MVF	r0x10A2,0,0
537 15BF [08] [1] 0702      	MULL	0x02
538 15C0 [08] [1] 6422      	MVF	_PRODL,0,0
539 15C1 [08] [1] 04CE      	ADDL	(_NUM_CODE + 0)
540 15C2 [08] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
541 15C3 [09] [1] 0636      	MVL	high (_NUM_CODE + 0)
542 15C4 [09] [1] 1421      	ADDC	_PRODH,0,0
543 15C5 [09] [1] 0280      	IORL	0x80
544 15C6 [09] [1] C8D0      	CALL	__g2ptrget2
545                     ;	;.line	345; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = NUM_CODE[NumDisp[0]] >> 8;
546 15C7 [08] [1] D020 F18B 	MVFF	STK00,_LCD3
547 15C9 [08] [1] 678C      	MVF	_LCD4,1,0
548                     ;	;.line	347; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
549 15CA [08] [1] 0D8D      	CLRF	_LCD5,0
550                     ;	;.line	349; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
551 15CB [08] [1] 0D8E      	CLRF	_LCD6,0
552                     ;	;.line	350; ".\Source\Drv_LCD_4718.c"	}
553 15CC [08] [1] C4B7 000A 	RET	
554                     ; exit point of _Disp_Code
555                     	.ENDFUNC	_Disp_Code
556                     ;--------------------------------------------------------
557                     
558                     .globl _Disp_Version
559                     
560                     ;--------------------------------------------------------
561                     	.FUNC _Disp_Version:$r:0:1:$C:__divuchar:$C:__moduchar:$C:__g2ptrget1:$C:__g2ptrget2\
562                     :$L:r0x1094:$L:r0x1095:$L:_Disp_Version_NumDisp_10000_419:$L:r0x1096:$L:r0x1099\
563                     :$L:r0x1097
564                     ;--------------------------------------------------------
565                     ;	;.line	299; ".\Source\Drv_LCD_4718.c"	NumDisp[1] = num / 10;
566 02BE [00] [2] C487      _Disp_Version:	;Function start
567 02BF [07] [2] 6685      	MVF	r0x1095,1,0
568 02C0 [07] [2] 6686      	MVF	r0x1094,1,0
569 02C1 [07] [2] 060A      	MVL	0x0a
570 02C2 [07] [2] 660D      	MVF	__divuchar_STK00,1,0
571 02C3 [08] [2] 6487      	MVF	r0x1094,0,0
572 02C4 [08] [2] C001 F3AC 	CALL	__divuchar
573                     	.CHKPARA __divuchar 2
574 02C6 [07] [2] 6683      	MVF	(_Disp_Version_NumDisp_10000_419 + 1),1,0
575                     ;	;.line	301; ".\Source\Drv_LCD_4718.c"	NumDisp[0] = num % 10;
576 02C7 [07] [2] 060A      	MVL	0x0a
577 02C8 [07] [2] 660D      	MVF	__moduchar_STK00,1,0
578 02C9 [08] [2] 6486      	MVF	r0x1095,0,0
579 02CA [08] [2] C001 F602 	CALL	__moduchar
580                     	.CHKPARA __moduchar 2
581 02CC [07] [2] 6685      	MVF	r0x1095,1,0
582 02CD [07] [2] 6684      	MVF	(_Disp_Version_NumDisp_10000_419 + 0),1,0
583                     ;	;.line	304; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x00;
584 02CE [00] [1] 0011 0D88 	CLRF	_LCD0,0
585                     ;	;.line	306; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = NUM_CODE[NumDisp[1]] << 4;
586 02D0 [07] [1] 6483      	MVF	(_Disp_Version_NumDisp_10000_419 + 1),0,0
587 02D1 [07] [1] 0702      	MULL	0x02
588 02D2 [07] [1] 6422      	MVF	_PRODL,0,0
589 02D3 [07] [1] 04CE      	ADDL	(_NUM_CODE + 0)
590 02D4 [07] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
591 02D5 [08] [1] 0636      	MVL	high (_NUM_CODE + 0)
592 02D6 [08] [1] 1421      	ADDC	_PRODH,0,0
593 02D7 [08] [1] 0280      	IORL	0x80
594 02D8 [08] [1] CBF5      	CALL	__g2ptrget1
595 02D9 [07] [1] 6682      	MVF	r0x1096,1,0
596 02DA [07] [1] 6082      	SWPF	r0x1096,0,0
597 02DB [07] [1] 01F0      	ANDL	0xf0
598 02DC [07] [1] 6789      	MVF	_LCD1,1,0
599                     ;	;.line	308; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = (NUM_CODE[NumDisp[1]] >> 4) + 0x40;
600 02DD [07] [1] 6483      	MVF	(_Disp_Version_NumDisp_10000_419 + 1),0,0
601 02DE [07] [1] 0702      	MULL	0x02
602 02DF [07] [1] 6422      	MVF	_PRODL,0,0
603 02E0 [07] [1] 04CE      	ADDL	(_NUM_CODE + 0)
604 02E1 [07] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
605 02E2 [08] [1] 0636      	MVL	high (_NUM_CODE + 0)
606 02E3 [08] [1] 1421      	ADDC	_PRODH,0,0
607 02E4 [08] [1] 0280      	IORL	0x80
608 02E5 [08] [1] C001 F697 	CALL	__g2ptrget2
609 02E7 [07] [1] 6680      	MVF	r0x1097,1,0
610 02E8 [07] [1] 6020      	SWPF	STK00,0,0
611 02E9 [07] [1] 010F      	ANDL	0x0f
612 02EA [07] [1] 6686      	MVF	r0x1094,1,0
613 02EB [07] [1] 6080      	SWPF	r0x1097,0,0
614 02EC [07] [1] 6681      	MVF	r0x1099,1,0
615 02ED [07] [1] 01F0      	ANDL	0xf0
616 02EE [07] [1] 2E86      	IORF	r0x1094,1,0
617 02EF [07] [1] 2281      	XORF	r0x1099,1,0
618 02F0 [07] [1] 6486      	MVF	r0x1094,0,0
619 02F1 [07] [1] 0440      	ADDL	0x40
620 02F2 [07] [1] 678A      	MVF	_LCD2,1,0
621                     ;	;.line	310; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[0]];
622 02F3 [07] [1] 6485      	MVF	r0x1095,0,0
623 02F4 [07] [1] 0702      	MULL	0x02
624 02F5 [07] [1] 6422      	MVF	_PRODL,0,0
625 02F6 [07] [1] 04CE      	ADDL	(_NUM_CODE + 0)
626 02F7 [07] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
627 02F8 [08] [1] 0636      	MVL	high (_NUM_CODE + 0)
628 02F9 [08] [1] 1421      	ADDC	_PRODH,0,0
629 02FA [08] [1] 0280      	IORL	0x80
630 02FB [08] [1] C001 F697 	CALL	__g2ptrget2
631                     ;	;.line	312; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = NUM_CODE[NumDisp[0]] >> 8;
632 02FD [07] [1] D020 F18B 	MVFF	STK00,_LCD3
633 02FF [07] [1] 678C      	MVF	_LCD4,1,0
634                     ;	;.line	314; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
635 0300 [07] [1] 0D8D      	CLRF	_LCD5,0
636                     ;	;.line	316; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
637 0301 [07] [1] 0D8E      	CLRF	_LCD6,0
638                     ;	;.line	317; ".\Source\Drv_LCD_4718.c"	}
639 0302 [07] [1] C4B9 000A 	RET	
640                     ; exit point of _Disp_Version
641                     	.ENDFUNC	_Disp_Version
642                     ;--------------------------------------------------------
643                     
644                     .globl _Disp_StaticDash
645                     
646                     ;--------------------------------------------------------
647                     	.FUNC _Disp_StaticDash:$r:0:0
648                     ;--------------------------------------------------------
649                     ;	;.line	273; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x20;
650                     _Disp_StaticDash:	;Function start
651 04BD [00] [2] 0620      	MVL	0x20
652 04BE [00] [1] 0011 6788 	MVF	_LCD0,1,0
653                     ;	;.line	275; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x00;
654 04C0 [00] [1] 0D89      	CLRF	_LCD1,0
655                     ;	;.line	277; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x02;
656 04C1 [00] [1] 0602      	MVL	0x02
657 04C2 [00] [1] 678A      	MVF	_LCD2,1,0
658                     ;	;.line	279; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x20;
659 04C3 [00] [1] 0620      	MVL	0x20
660 04C4 [00] [1] 678B      	MVF	_LCD3,1,0
661                     ;	;.line	281; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
662 04C5 [00] [1] 0D8C      	CLRF	_LCD4,0
663                     ;	;.line	283; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
664 04C6 [00] [1] 0D8D      	CLRF	_LCD5,0
665                     ;	;.line	285; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
666 04C7 [00] [1] 0D8E      	CLRF	_LCD6,0
667                     ;	;.line	286; ".\Source\Drv_LCD_4718.c"	}
668 04C8 [00] [1] 000A      	RET	
669                     ; exit point of _Disp_StaticDash
670                     	.ENDFUNC	_Disp_StaticDash
671                     ;--------------------------------------------------------
672                     
673                     .globl _Disp_Err
674                     
675                     ;--------------------------------------------------------
676                     	.FUNC _Disp_Err:$r:0:0
677                     ;--------------------------------------------------------
678                     ;	;.line	250; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x73;
679                     _Disp_Err:	;Function start
680 1445 [00] [2] 0673      	MVL	0x73
681 1446 [00] [1] 0011 6788 	MVF	_LCD0,1,0
682                     ;	;.line	252; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x20;
683 1448 [00] [1] 0620      	MVL	0x20
684 1449 [00] [1] 6789      	MVF	_LCD1,1,0
685                     ;	;.line	254; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x02;
686 144A [00] [1] 0602      	MVL	0x02
687 144B [00] [1] 678A      	MVF	_LCD2,1,0
688                     ;	;.line	256; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x22;
689 144C [00] [1] 0622      	MVL	0x22
690 144D [00] [1] 678B      	MVF	_LCD3,1,0
691                     ;	;.line	258; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
692 144E [00] [1] 0D8C      	CLRF	_LCD4,0
693                     ;	;.line	260; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
694 144F [00] [1] 0D8D      	CLRF	_LCD5,0
695                     ;	;.line	262; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
696 1450 [00] [1] 0D8E      	CLRF	_LCD6,0
697                     ;	;.line	263; ".\Source\Drv_LCD_4718.c"	}
698 1451 [00] [1] 000A      	RET	
699                     ; exit point of _Disp_Err
700                     	.ENDFUNC	_Disp_Err
701                     ;--------------------------------------------------------
702                     
703                     .globl _Disp_ErrNo
704                     
705                     ;--------------------------------------------------------
706                     	.FUNC _Disp_ErrNo:$r:0:1:$C:__g2ptrget2\
707                     :$L:r0x108D
708                     ;--------------------------------------------------------
709                     ;	;.line	224; ".\Source\Drv_LCD_4718.c"	void Disp_ErrNo(uint8 No)
710 1452 [00] [2] C481      _Disp_ErrNo:	;Function start
711 1453 [01] [2] 6680      	MVF	r0x108D,1,0
712                     ;	;.line	227; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x73;
713 1454 [01] [2] 0673      	MVL	0x73
714 1455 [00] [1] 0011 6788 	MVF	_LCD0,1,0
715                     ;	;.line	229; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x20;
716 1457 [01] [1] 0620      	MVL	0x20
717 1458 [01] [1] 6789      	MVF	_LCD1,1,0
718                     ;	;.line	231; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x02;
719 1459 [01] [1] 0602      	MVL	0x02
720 145A [01] [1] 678A      	MVF	_LCD2,1,0
721                     ;	;.line	233; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = NUM_CODE[No];
722 145B [01] [1] 6480      	MVF	r0x108D,0,0
723 145C [01] [1] 0702      	MULL	0x02
724 145D [01] [1] 6422      	MVF	_PRODL,0,0
725 145E [01] [1] 04CE      	ADDL	(_NUM_CODE + 0)
726 145F [01] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
727 1460 [02] [1] 0636      	MVL	high (_NUM_CODE + 0)
728 1461 [02] [1] 1421      	ADDC	_PRODH,0,0
729 1462 [02] [1] 0280      	IORL	0x80
730 1463 [02] [1] CA33      	CALL	__g2ptrget2
731                     ;	;.line	235; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = NUM_CODE[No] >> 8;
732 1464 [01] [1] D020 F18B 	MVFF	STK00,_LCD3
733 1466 [01] [1] 678C      	MVF	_LCD4,1,0
734                     ;	;.line	237; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
735 1467 [01] [1] 0D8D      	CLRF	_LCD5,0
736                     ;	;.line	239; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
737 1468 [01] [1] 0D8E      	CLRF	_LCD6,0
738                     ;	;.line	240; ".\Source\Drv_LCD_4718.c"	}
739 1469 [01] [1] C4BF 000A 	RET	
740                     ; exit point of _Disp_ErrNo
741                     	.ENDFUNC	_Disp_ErrNo
742                     ;--------------------------------------------------------
743                     
744                     .globl _Disp_Nothing
745                     
746                     ;--------------------------------------------------------
747                     	.FUNC _Disp_Nothing:$r:0:0
748                     ;--------------------------------------------------------
749                     ;	;.line	204; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x00;
750                     _Disp_Nothing:	;Function start
751 05DA [00] [1] 0011 0D88 	CLRF	_LCD0,0
752                     ;	;.line	206; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x00;
753 05DC [00] [1] 0D89      	CLRF	_LCD1,0
754                     ;	;.line	208; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x00;
755 05DD [00] [1] 0D8A      	CLRF	_LCD2,0
756                     ;	;.line	210; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x00;
757 05DE [00] [1] 0D8B      	CLRF	_LCD3,0
758                     ;	;.line	212; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
759 05DF [00] [1] 0D8C      	CLRF	_LCD4,0
760                     ;	;.line	214; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
761 05E0 [00] [1] 0D8D      	CLRF	_LCD5,0
762                     ;	;.line	216; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
763 05E1 [00] [1] 0D8E      	CLRF	_LCD6,0
764                     ;	;.line	217; ".\Source\Drv_LCD_4718.c"	}
765 05E2 [00] [1] 000A      	RET	
766                     ; exit point of _Disp_Nothing
767                     	.ENDFUNC	_Disp_Nothing
768                     ;--------------------------------------------------------
769                     
770                     .globl _Disp_All
771                     
772                     ;--------------------------------------------------------
773                     	.FUNC _Disp_All:$r:0:0
774                     ;--------------------------------------------------------
775                     ;	;.line	173; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x77;
776                     _Disp_All:	;Function start
777 0304 [00] [2] 0677      	MVL	0x77
778 0305 [00] [1] 0011 6788 	MVF	_LCD0,1,0
779                     ;	;.line	175; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x33;
780 0307 [00] [1] 0633      	MVL	0x33
781 0308 [00] [1] 6789      	MVF	_LCD1,1,0
782                     ;	;.line	177; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x77;
783 0309 [00] [1] 0677      	MVL	0x77
784 030A [00] [1] 678A      	MVF	_LCD2,1,0
785                     ;	;.line	179; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x77;
786 030B [00] [1] 678B      	MVF	_LCD3,1,0
787                     ;	;.line	184; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x77;
788 030C [00] [1] 678C      	MVF	_LCD4,1,0
789                     ;	;.line	191; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x07;
790 030D [00] [1] 0607      	MVL	0x07
791 030E [00] [1] 678D      	MVF	_LCD5,1,0
792                     ;	;.line	193; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
793 030F [00] [1] 0D8E      	CLRF	_LCD6,0
794                     ;	;.line	194; ".\Source\Drv_LCD_4718.c"	}
795 0310 [00] [1] 000A      	RET	
796                     ; exit point of _Disp_All
797                     	.ENDFUNC	_Disp_All
798                     ;--------------------------------------------------------
799                     
800                     .globl _Disp_Hi
801                     
802                     ;--------------------------------------------------------
803                     	.FUNC _Disp_Hi:$r:0:0
804                     ;--------------------------------------------------------
805                     ;	;.line	150; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x00;
806                     _Disp_Hi:	;Function start
807 04B1 [00] [1] 0011 0D88 	CLRF	_LCD0,0
808                     ;	;.line	152; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x30;
809 04B3 [00] [1] 0630      	MVL	0x30
810 04B4 [00] [1] 6789      	MVF	_LCD1,1,0
811                     ;	;.line	154; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x32;
812 04B5 [00] [1] 0632      	MVL	0x32
813 04B6 [00] [1] 678A      	MVF	_LCD2,1,0
814                     ;	;.line	156; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x02;
815 04B7 [00] [1] 0602      	MVL	0x02
816 04B8 [00] [1] 678B      	MVF	_LCD3,1,0
817                     ;	;.line	158; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x00;
818 04B9 [00] [1] 0D8C      	CLRF	_LCD4,0
819                     ;	;.line	160; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
820 04BA [00] [1] 0D8D      	CLRF	_LCD5,0
821                     ;	;.line	162; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
822 04BB [00] [1] 0D8E      	CLRF	_LCD6,0
823                     ;	;.line	163; ".\Source\Drv_LCD_4718.c"	}
824 04BC [00] [1] 000A      	RET	
825                     ; exit point of _Disp_Hi
826                     	.ENDFUNC	_Disp_Hi
827                     ;--------------------------------------------------------
828                     
829                     .globl _Disp_Low
830                     
831                     ;--------------------------------------------------------
832                     	.FUNC _Disp_Low:$r:0:0
833                     ;--------------------------------------------------------
834                     ;	;.line	127; ".\Source\Drv_LCD_4718.c"	LCD0_Macro = 0x00;
835                     _Disp_Low:	;Function start
836                     	CLRF	_LCD0,0
837                     ;	;.line	129; ".\Source\Drv_LCD_4718.c"	LCD1_Macro = 0x30;
838                     	MVL	0x30
839                     	MVF	_LCD1,1,0
840                     ;	;.line	131; ".\Source\Drv_LCD_4718.c"	LCD2_Macro = 0x04;
841                     	MVL	0x04
842                     	MVF	_LCD2,1,0
843                     ;	;.line	133; ".\Source\Drv_LCD_4718.c"	LCD3_Macro = 0x62;
844                     	MVL	0x62
845                     	MVF	_LCD3,1,0
846                     ;	;.line	135; ".\Source\Drv_LCD_4718.c"	LCD4_Macro = 0x02;
847                     	MVL	0x02
848                     	MVF	_LCD4,1,0
849                     ;	;.line	137; ".\Source\Drv_LCD_4718.c"	LCD5_Macro = 0x00;
850                     	CLRF	_LCD5,0
851                     ;	;.line	139; ".\Source\Drv_LCD_4718.c"	LCD6_Macro = 0x00;
852                     	CLRF	_LCD6,0
853                     ;	;.line	140; ".\Source\Drv_LCD_4718.c"	}
854                     	RET	
855                     ; exit point of _Disp_Low
856                     	.ENDFUNC	_Disp_Low
857                     ;--------------------------------------------------------
858                     
859                     .globl _LCD_Clear_Register
860                     
861                     ;--------------------------------------------------------
862                     	.FUNC _LCD_Clear_Register:$r:0:0
863                     ;--------------------------------------------------------
864                     ;	;.line	92; ".\Source\Drv_LCD_4718.c"	LCDCN1 = 0x00;
865                     _LCD_Clear_Register:	;Function start
866 02B5 [00] [1] 0011 0D80 	CLRF	_LCDCN1,0
867                     ;	;.line	96; ".\Source\Drv_LCD_4718.c"	LCDCN2 = 0x00;
868 02B7 [00] [1] 0D81      	CLRF	_LCDCN2,0
869                     ;	;.line	100; ".\Source\Drv_LCD_4718.c"	LCDCN3 = 0x00;
870 02B8 [00] [1] 0D82      	CLRF	_LCDCN3,0
871                     ;	;.line	104; ".\Source\Drv_LCD_4718.c"	LCDCN4 = 0x00;
872 02B9 [00] [1] 0D83      	CLRF	_LCDCN4,0
873                     ;	;.line	108; ".\Source\Drv_LCD_4718.c"	LCDCN6 = 0x00;
874 02BA [00] [1] 0D85      	CLRF	_LCDCN6,0
875                     ;	;.line	112; ".\Source\Drv_LCD_4718.c"	LCDCN7 = 0x00;
876 02BB [00] [1] 0D86      	CLRF	_LCDCN7,0
877                     ;	;.line	116; ".\Source\Drv_LCD_4718.c"	LCDCN8 = 0x00;
878 02BC [00] [1] 0D87      	CLRF	_LCDCN8,0
879                     ;	;.line	117; ".\Source\Drv_LCD_4718.c"	}
880 02BD [00] [1] 000A      	RET	
881                     ; exit point of _LCD_Clear_Register
882                     	.ENDFUNC	_LCD_Clear_Register
883                     ;--------------------------------------------------------
884                     
885                     .globl _LCD_Configuration
886                     
887                     ;--------------------------------------------------------
888                     	.FUNC _LCD_Configuration:$r:0:0:$C:_Disp_Nothing\
889                     
890                     ;--------------------------------------------------------
891                     ;	;.line	27; ".\Source\Drv_LCD_4718.c"	LCD_Enable();
892                     _LCD_Configuration:	;Function start
893 1B4C [00] [1] 9F80      	BSF	_LCDCN1,7
894                     ;	;.line	29; ".\Source\Drv_LCD_4718.c"	LCD_ChargePumpSelect(LCDV_4V05);
895 1B4D [00] [1] 6580      	MVF	_LCDCN1,0,0
896 1B4E [00] [1] 018F      	ANDL	0x8f
897 1B4F [00] [1] 0220      	IORL	0x20
898 1B50 [00] [1] 6780      	MVF	_LCDCN1,1,0
899                     ;	;.line	31; ".\Source\Drv_LCD_4718.c"	LCD_OutBufferEnable();
900 1B51 [00] [1] 9780      	BSF	_LCDCN1,3
901                     ;	;.line	33; ".\Source\Drv_LCD_4718.c"	LCD_ChargePumpClk(SELPCLK_7KHZ);
902 1B52 [00] [1] 6580      	MVF	_LCDCN1,0,0
903 1B53 [00] [1] 01FB      	ANDL	0xfb
904 1B54 [00] [1] 0204      	IORL	0x04
905 1B55 [00] [1] 6780      	MVF	_LCDCN1,1,0
906                     ;	;.line	37; ".\Source\Drv_LCD_4718.c"	LCD_CLK_ClkSelect(LCDS_LPCCK);
907 1B56 [00] [1] 8035      	BCF	_OSCCN1,0
908                     ;	;.line	40; ".\Source\Drv_LCD_4718.c"	LCD_CLK_DivSelect(DLCD_LCDCKDIV2);
909 1B57 [00] [1] 063F      	MVL	0x3f
910 1B58 [00] [1] 2A36      	ANDF	_OSCCN2,1,0
911                     ;	;.line	54; ".\Source\Drv_LCD_4718.c"	LCDCN1 |= 0x01;
912 1B59 [00] [1] 9180      	BSF	_LCDCN1,0
913                     ;	;.line	58; ".\Source\Drv_LCD_4718.c"	LCD_DisplayOn();
914 1B5A [00] [1] 8381      	BCF	_LCDCN2,1
915                     ;	;.line	62; ".\Source\Drv_LCD_4718.c"	LCDCN3 = 0xFF;
916 1B5B [00] [1] 0B82      	SETF	_LCDCN3,0
917                     ;	;.line	66; ".\Source\Drv_LCD_4718.c"	LCDCN6 = 0xFF;
918 1B5C [00] [1] 0B85      	SETF	_LCDCN6,0
919                     ;	;.line	70; ".\Source\Drv_LCD_4718.c"	LCDCN7 = 0xFF;
920 1B5D [00] [1] 0B86      	SETF	_LCDCN7,0
921                     ;	;.line	74; ".\Source\Drv_LCD_4718.c"	LCDCN8 = 0xFF;
922 1B5E [00] [1] 0B87      	SETF	_LCDCN8,0
923                     ;	;.line	78; ".\Source\Drv_LCD_4718.c"	LCDCN4 = 0x01;
924 1B5F [00] [1] 0601      	MVL	0x01
925 1B60 [00] [1] 6783      	MVF	_LCDCN4,1,0
926                     ;	;.line	80; ".\Source\Drv_LCD_4718.c"	Disp_Nothing();
927 1B61 [00] [1] C200 F5DA 	CALL	_Disp_Nothing
928                     	.CHKPARA _Disp_Nothing 0
929                     ;	;.line	81; ".\Source\Drv_LCD_4718.c"	}
930                     	RET	
931                     ; exit point of _LCD_Configuration
932                     	.ENDFUNC	_LCD_Configuration
933                     ;--------------------------------------------------------
934                     
935                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
936                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
937                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
938                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
939                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
940                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
941                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
942                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
943                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
944                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
945                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
946                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
947                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
948                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
949                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
950                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
951                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
952                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
953                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
954                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
955                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
956                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
957                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
958                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
959                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
960                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
961                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FDrv_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
962                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FDrv_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
963                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FDrv_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
964                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
965                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
966                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
967                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
968                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
969                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
970                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
971                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
972                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
973                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
974                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
975                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
976                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
977                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
978                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
979                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
980                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
981                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
982                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
983                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
984                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
985                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
986                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
987                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
988                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
989                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
990                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
991                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
992                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
993                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
994                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
995                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
996                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
997                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
998                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
999                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
1000                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
1001                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
1002                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
1003                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
1004                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
1005                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
1006                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
1007                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
1008                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
1009                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
1010                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
1011                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
1012                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
1013                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
1014                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
1015                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
1016                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
1017                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
1018                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
1019                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
1020                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
1021                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
1022                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
1023                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
1024                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
1025                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
1026                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
1027                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
1028                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
1029                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
1030                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
1031                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
1032                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
1033                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
1034                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
1035                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
1036                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
1037                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
1038                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
1039                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
1040                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
1041                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
1042                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
1043                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
1044                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
1045                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
1046                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
1047                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
1048                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
1049                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
1050                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
1051                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
1052                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
1053                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
1054                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
1055                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
1056                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
1057                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
1058                     	;--cdb--S:G$_divuchar$0$0({2}DF,SC:U),C,0,0
1059                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
1060                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
1061                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
1062                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
1063                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
1064                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
1065                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
1066                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
1067                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
1068                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
1069                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
1070                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
1071                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
1072                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
1073                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
1074                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
1075                     	;--cdb--S:LDrv_LCD_4718.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
1076                     	;--cdb--S:LDrv_LCD_4718.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
1077                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FDrv_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
1078                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
1079                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FDrv_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1080                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FDrv_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
1081                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FDrv_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1082                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
1083                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FDrv_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1084                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
1085                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
1086                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
1087                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
1088                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
1089                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
1090                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FDrv_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
1091                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FDrv_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1092                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
1093                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FDrv_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
1094                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
1095                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
1096                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
1097                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
1098                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FDrv_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
1099                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
1100                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
1101                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
1102                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
1103                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FDrv_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
1104                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FDrv_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
1105                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FDrv_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1106                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FDrv_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
1107                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FDrv_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
1108                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
1109                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FDrv_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
1110                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
1111                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
1112                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FDrv_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
1113                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
1114                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FDrv_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
1115                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
1116                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
1117                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
1118                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
1119                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
1120                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
1121                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
1122                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
1123                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
1124                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
1125                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
1126                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
1127                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
1128                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
1129                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
1130                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
1131                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
1132                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
1133                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
1134                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
1135                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
1136                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
1137                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
1138                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
1139                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
1140                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
1141                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
1142                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
1143                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
1144                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
1145                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
1146                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
1147                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
1148                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
1149                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
1150                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
1151                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
1152                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
1153                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
1154                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
1155                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
1156                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
1157                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
1158                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
1159                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
1160                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
1161                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
1162                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
1163                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
1164                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
1165                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
1166                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
1167                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
1168                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
1169                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
1170                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
1171                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
1172                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
1173                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
1174                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
1175                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
1176                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
1177                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
1178                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
1179                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
1180                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
1181                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
1182                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
1183                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
1184                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
1185                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
1186                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
1187                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
1188                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
1189                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
1190                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
1191                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
1192                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
1193                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
1194                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
1195                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
1196                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
1197                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
1198                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
1199                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
1200                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
1201                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
1202                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
1203                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
1204                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
1205                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
1206                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
1207                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
1208                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
1209                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
1210                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
1211                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
1212                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
1213                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
1214                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
1215                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
1216                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
1217                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
1218                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
1219                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
1220                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
1221                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
1222                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
1223                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
1224                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
1225                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
1226                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
1227                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
1228                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
1229                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
1230                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
1231                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
1232                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
1233                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
1234                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
1235                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
1236                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
1237                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
1238                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
1239                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
1240                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
1241                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
1242                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
1243                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
1244                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
1245                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
1246                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
1247                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
1248                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
1249                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
1250                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
1251                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
1252                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
1253                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
1254                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
1255                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
1256                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
1257                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
1258                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
1259                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
1260                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
1261                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
1262                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
1263                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
1264                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
1265                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
1266                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
1267                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
1268                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
1269                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
1270                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
1271                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
1272                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
1273                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
1274                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
1275                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
1276                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
1277                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
1278                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
1279                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
1280                     	;--cdb--S:LDrv_LCD_4718.Disp_ErrNo._Disp_ErrNo_No_10000_412$No$2710$412({1}SC:U),R,0,0,[r0x108D]
1281                     	;--cdb--S:LDrv_LCD_4718.Disp_Version._Disp_Version_num_10000_418$num$2710$418({1}SC:U),R,0,0,[r0x1094]
1282                     	;--cdb--S:LDrv_LCD_4718.Disp_Version._Disp_Version_NumDisp_10000_419$NumDisp$2710$419({2}DA2d,SC:U),E,0,0
1283                     	;--cdb--S:LDrv_LCD_4718.Disp_Code._Disp_Code_num_10000_420$num$2710$420({2}SI:U),R,0,0,[_Disp_Code_STK00,r0x10A1]
1284                     	;--cdb--S:LDrv_LCD_4718.Disp_Code._Disp_Code_NumDisp_10000_421$NumDisp$2710$421({3}DA3d,SC:U),E,0,0
1285                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
1286                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
1287                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
1288                     	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
1289                     ;--------------------------------------------------------
1290                     ; external declarations
1291                     ;--------------------------------------------------------
1292                     	.globl	__divuchar
1293                     	.globl	__moduchar
1294                     	.globl	__divuint
1295                     	.globl	__moduint
1296                     	.globl	_FSR0
1297                     	.globl	_FSR1
1298                     	.globl	_FSR2
1299                     	.globl	_ADCR
1300                     	.globl	_sIIC
1301                     	.globl	_BIE_Available_Addr
1302                     	.globl	_sTIMx
1303                     	.globl	_sUARTx
1304                     	.globl	_sAutoBps
1305                     	.globl	_eAutoBps_Status
1306                     	.globl	_sTest
1307                     	.globl	_eTempUnit
1308                     	.globl	_eBondingTempUnit
1309                     	.globl	_eVersionCode
1310                     	.globl	_eMeasureMode
1311                     	.globl	_eBinding_Status
1312                     	.globl	_Enter_PrepareSleep_Flag
1313                     	.globl	_sButton
1314                     	.globl	_sTimeStamp
1315                     	.globl	_eButton_Status
1316                     	.globl	_sLVD
1317                     	.globl	_UnitExchangeCompleted
1318                     	.globl	_ERR
1319                     	.globl	_eErr
1320                     	.globl	_eDisplay_Interfaces
1321                     	.globl	_sADC
1322                     	.globl	_eADCChannel
1323                     	.globl	_eSystem_Mode
1324                     	.globl	_eBuzzer_Status
1325                     	.globl	_Flag_No_Buzzer
1326                     	.globl	_sMemory
1327                     	.globl	_sMemoryFlag
1328                     	.globl	_sActual
1329                     	.globl	_sForecast
1330                     	.globl	_sTempCal
1331                     	.globl	_eMeas_Status
1332                     	.globl	_sActual_Forecast
1333                     	.globl	_eTo_Actual_Ways
1334                     	.globl	_eBle_Sta
1335                     	.globl	_sBleStatus
1336                     	.globl	_eBacklight_Status
1337                     	.globl	_sBacklight
1338                     	.globl	_NUM_CODE
1339                     	.globl	_R_Table
1340                     	.globl	_CloseTable
1341                     	.globl	__g2ptrget2
1342                     	.globl	__g2ptrget1
1343                     
1344                     	.globl STK07
1345                     	.globl STK07_SAVE
1346                     	.globl STK06
1347                     	.globl STK06_SAVE
1348                     	.globl STK05
1349                     	.globl STK05_SAVE
1350                     	.globl STK04
1351                     	.globl STK04_SAVE
1352                     	.globl STK03
1353                     	.globl STK03_SAVE
1354                     	.globl STK02
1355                     	.globl STK02_SAVE
1356                     	.globl STK01
1357                     	.globl STK01_SAVE
1358                     	.globl STK00
1359                     	.globl STK00_SAVE
1360                     ;--------------------------------------------------------
1361                     ; global -1 declarations
1362                     ;--------------------------------------------------------
1363                     	.globl	_Disp_ErrNo
1364                     	.globl	_Disp_Version
1365                     	.globl	_Disp_Code
1366                     
1367                     	.globl	_memcpy
1368                     ;--------------------------------------------------------
1369                     ; global -2 definitions
1370                     ;--------------------------------------------------------
1371                     	.area DSEG(DATA)
1372                     __SWTGTID	.equ	0xA6A6B2CF
1373                     
1374                     	.area DSEG(DATA)
1375                     _INDF0	.equ	0x0
1376                     
1377                     	.area DSEG(DATA)
1378                     _POINC0	.equ	0x1
1379                     
1380                     	.area DSEG(DATA)
1381                     _PODEC0	.equ	0x2
1382                     
1383                     	.area DSEG(DATA)
1384                     _PRINC0	.equ	0x3
1385                     
1386                     	.area DSEG(DATA)
1387                     _PLUSW0	.equ	0x4
1388                     
1389                     	.area DSEG(DATA)
1390                     _INDF1	.equ	0x5
1391                     
1392                     	.area DSEG(DATA)
1393                     _POINC1	.equ	0x6
1394                     
1395                     	.area DSEG(DATA)
1396                     _PODEC1	.equ	0x7
1397                     
1398                     	.area DSEG(DATA)
1399                     _PRINC1	.equ	0x8
1400                     
1401                     	.area DSEG(DATA)
1402                     _PLUSW1	.equ	0x9
1403                     
1404                     	.area DSEG(DATA)
1405                     _INDF2	.equ	0xA
1406                     
1407                     	.area DSEG(DATA)
1408                     _POINC2	.equ	0xB
1409                     
1410                     	.area DSEG(DATA)
1411                     _PODEC2	.equ	0xC
1412                     
1413                     	.area DSEG(DATA)
1414                     _PRINC2	.equ	0xD
1415                     
1416                     	.area DSEG(DATA)
1417                     _PLUSW2	.equ	0xE
1418                     
1419                     	.area DSEG(DATA)
1420                     _FSR0H	.equ	0xF
1421                     
1422                     	.area DSEG(DATA)
1423                     _FSR0L	.equ	0x10
1424                     
1425                     	.area DSEG(DATA)
1426                     _FSR1H	.equ	0x11
1427                     
1428                     	.area DSEG(DATA)
1429                     _FSR1L	.equ	0x12
1430                     
1431                     	.area DSEG(DATA)
1432                     _FSR2H	.equ	0x13
1433                     
1434                     	.area DSEG(DATA)
1435                     _FSR2L	.equ	0x14
1436                     
1437                     	.area DSEG(DATA)
1438                     _TOSH	.equ	0x16
1439                     
1440                     	.area DSEG(DATA)
1441                     _TOSL	.equ	0x17
1442                     
1443                     	.area DSEG(DATA)
1444                     _SKCN	.equ	0x18
1445                     
1446                     	.area DSEG(DATA)
1447                     _PCLATH	.equ	0x1A
1448                     
1449                     	.area DSEG(DATA)
1450                     _PCLATL	.equ	0x1B
1451                     
1452                     	.area DSEG(DATA)
1453                     _TBLPTRH	.equ	0x1D
1454                     
1455                     	.area DSEG(DATA)
1456                     _TBLPTRL	.equ	0x1E
1457                     
1458                     	.area DSEG(DATA)
1459                     _TBLDH	.equ	0x1F
1460                     
1461                     	.area DSEG(DATA)
1462                     _TBLDL	.equ	0x20
1463                     
1464                     	.area DSEG(DATA)
1465                     _PRODH	.equ	0x21
1466                     
1467                     	.area DSEG(DATA)
1468                     _PRODL	.equ	0x22
1469                     
1470                     	.area DSEG(DATA)
1471                     _INTE0	.equ	0x23
1472                     
1473                     	.area DSEG(DATA)
1474                     _INTE1	.equ	0x24
1475                     
1476                     	.area DSEG(DATA)
1477                     _INTE2	.equ	0x25
1478                     
1479                     	.area DSEG(DATA)
1480                     _INTF0	.equ	0x26
1481                     
1482                     	.area DSEG(DATA)
1483                     _INTF1	.equ	0x27
1484                     
1485                     	.area DSEG(DATA)
1486                     _INTF2	.equ	0x28
1487                     
1488                     	.area DSEG(DATA)
1489                     _WREG	.equ	0x29
1490                     
1491                     	.area DSEG(DATA)
1492                     _BSRCN	.equ	0x2A
1493                     
1494                     	.area DSEG(DATA)
1495                     _STATUS	.equ	0x2B
1496                     
1497                     	.area DSEG(DATA)
1498                     _MSTAT	.equ	0x2B
1499                     
1500                     	.area DSEG(DATA)
1501                     _PSTAT	.equ	0x2C
1502                     
1503                     	.area DSEG(DATA)
1504                     _BIECN	.equ	0x2E
1505                     
1506                     	.area DSEG(DATA)
1507                     _BIEARH	.equ	0x2F
1508                     
1509                     	.area DSEG(DATA)
1510                     _BIEARL	.equ	0x30
1511                     
1512                     	.area DSEG(DATA)
1513                     _BIEDRH	.equ	0x31
1514                     
1515                     	.area DSEG(DATA)
1516                     _BIEDRL	.equ	0x32
1517                     
1518                     	.area DSEG(DATA)
1519                     _PWRCN	.equ	0x33
1520                     
1521                     	.area DSEG(DATA)
1522                     _OSCCN0	.equ	0x34
1523                     
1524                     	.area DSEG(DATA)
1525                     _OSCCN1	.equ	0x35
1526                     
1527                     	.area DSEG(DATA)
1528                     _OSCCN2	.equ	0x36
1529                     
1530                     	.area DSEG(DATA)
1531                     _CSFCN0	.equ	0x37
1532                     
1533                     	.area DSEG(DATA)
1534                     _CSFCN1	.equ	0x38
1535                     
1536                     	.area DSEG(DATA)
1537                     _WDTCN	.equ	0x39
1538                     
1539                     	.area DSEG(DATA)
1540                     _AD1H	.equ	0x3A
1541                     
1542                     	.area DSEG(DATA)
1543                     _AD1M	.equ	0x3B
1544                     
1545                     	.area DSEG(DATA)
1546                     _AD1L	.equ	0x3C
1547                     
1548                     	.area DSEG(DATA)
1549                     _AD1CN0	.equ	0x3D
1550                     
1551                     	.area DSEG(DATA)
1552                     _AD1CN1	.equ	0x3E
1553                     
1554                     	.area DSEG(DATA)
1555                     _AD1CN2	.equ	0x3F
1556                     
1557                     	.area DSEG(DATA)
1558                     _AD1CN3	.equ	0x40
1559                     
1560                     	.area DSEG(DATA)
1561                     _AD1CN4	.equ	0x41
1562                     
1563                     	.area DSEG(DATA)
1564                     _AD1CN5	.equ	0x42
1565                     
1566                     	.area DSEG(DATA)
1567                     _LVDCN	.equ	0x43
1568                     
1569                     	.area DSEG(DATA)
1570                     _TMA1CN	.equ	0x44
1571                     
1572                     	.area DSEG(DATA)
1573                     _TMA1R	.equ	0x45
1574                     
1575                     	.area DSEG(DATA)
1576                     _TMA1C	.equ	0x46
1577                     
1578                     	.area DSEG(DATA)
1579                     _TB1FLAG	.equ	0x47
1580                     
1581                     	.area DSEG(DATA)
1582                     _TB1CN0	.equ	0x48
1583                     
1584                     	.area DSEG(DATA)
1585                     _TB1CN1	.equ	0x49
1586                     
1587                     	.area DSEG(DATA)
1588                     _TB1RH	.equ	0x4A
1589                     
1590                     	.area DSEG(DATA)
1591                     _TB1RL	.equ	0x4B
1592                     
1593                     	.area DSEG(DATA)
1594                     _TB1C0H	.equ	0x4C
1595                     
1596                     	.area DSEG(DATA)
1597                     _TB1C0L	.equ	0x4D
1598                     
1599                     	.area DSEG(DATA)
1600                     _TB1C1H	.equ	0x4E
1601                     
1602                     	.area DSEG(DATA)
1603                     _TB1C1L	.equ	0x4F
1604                     
1605                     	.area DSEG(DATA)
1606                     _TB1C2H	.equ	0x50
1607                     
1608                     	.area DSEG(DATA)
1609                     _TB1C2L	.equ	0x51
1610                     
1611                     	.area DSEG(DATA)
1612                     _TC1CN0	.equ	0x52
1613                     
1614                     	.area DSEG(DATA)
1615                     _PT1	.equ	0x53
1616                     
1617                     	.area DSEG(DATA)
1618                     _TRISC1	.equ	0x54
1619                     
1620                     	.area DSEG(DATA)
1621                     _PT1DA	.equ	0x55
1622                     
1623                     	.area DSEG(DATA)
1624                     _PT1PU	.equ	0x56
1625                     
1626                     	.area DSEG(DATA)
1627                     _PT1M1	.equ	0x57
1628                     
1629                     	.area DSEG(DATA)
1630                     _PT1INT	.equ	0x58
1631                     
1632                     	.area DSEG(DATA)
1633                     _PT1INTE	.equ	0x59
1634                     
1635                     	.area DSEG(DATA)
1636                     _PT1INTF	.equ	0x5A
1637                     
1638                     	.area DSEG(DATA)
1639                     _PT2	.equ	0x5B
1640                     
1641                     	.area DSEG(DATA)
1642                     _TRISC2	.equ	0x5C
1643                     
1644                     	.area DSEG(DATA)
1645                     _PT2DA	.equ	0x5D
1646                     
1647                     	.area DSEG(DATA)
1648                     _PT2PU	.equ	0x5E
1649                     
1650                     	.area DSEG(DATA)
1651                     _PT2INT	.equ	0x5F
1652                     
1653                     	.area DSEG(DATA)
1654                     _PT2INTE	.equ	0x60
1655                     
1656                     	.area DSEG(DATA)
1657                     _PT2INTF	.equ	0x61
1658                     
1659                     	.area DSEG(DATA)
1660                     _PT6	.equ	0x62
1661                     
1662                     	.area DSEG(DATA)
1663                     _TRISC6	.equ	0x63
1664                     
1665                     	.area DSEG(DATA)
1666                     _PT6DA	.equ	0x64
1667                     
1668                     	.area DSEG(DATA)
1669                     _PT6PU	.equ	0x65
1670                     
1671                     	.area DSEG(DATA)
1672                     _PT7	.equ	0x66
1673                     
1674                     	.area DSEG(DATA)
1675                     _TRISC7	.equ	0x67
1676                     
1677                     	.area DSEG(DATA)
1678                     _PT7DA	.equ	0x68
1679                     
1680                     	.area DSEG(DATA)
1681                     _PT7PU	.equ	0x69
1682                     
1683                     	.area DSEG(DATA)
1684                     _PT8	.equ	0x6A
1685                     
1686                     	.area DSEG(DATA)
1687                     _TRISC8	.equ	0x6B
1688                     
1689                     	.area DSEG(DATA)
1690                     _PT8DA	.equ	0x6C
1691                     
1692                     	.area DSEG(DATA)
1693                     _PT8PU	.equ	0x6D
1694                     
1695                     	.area DSEG(DATA)
1696                     _SSPCN0	.equ	0x6E
1697                     
1698                     	.area DSEG(DATA)
1699                     _SSPSTA0	.equ	0x6F
1700                     
1701                     	.area DSEG(DATA)
1702                     _SSPBUF0	.equ	0x70
1703                     
1704                     	.area DSEG(DATA)
1705                     _CFG0	.equ	0x71
1706                     
1707                     	.area DSEG(DATA)
1708                     _ACT0	.equ	0x72
1709                     
1710                     	.area DSEG(DATA)
1711                     _STA0	.equ	0x73
1712                     
1713                     	.area DSEG(DATA)
1714                     _CRG0	.equ	0x74
1715                     
1716                     	.area DSEG(DATA)
1717                     _TOC0	.equ	0x75
1718                     
1719                     	.area DSEG(DATA)
1720                     _RDB0	.equ	0x76
1721                     
1722                     	.area DSEG(DATA)
1723                     _TDB0	.equ	0x77
1724                     
1725                     	.area DSEG(DATA)
1726                     _SID0	.equ	0x78
1727                     
1728                     	.area DSEG(DATA)
1729                     _UR0CN	.equ	0x79
1730                     
1731                     	.area DSEG(DATA)
1732                     _UR0STA	.equ	0x7A
1733                     
1734                     	.area DSEG(DATA)
1735                     _BA0CN	.equ	0x7B
1736                     
1737                     	.area DSEG(DATA)
1738                     _BG0RH	.equ	0x7C
1739                     
1740                     	.area DSEG(DATA)
1741                     _BG0RL	.equ	0x7D
1742                     
1743                     	.area DSEG(DATA)
1744                     _TX0R	.equ	0x7E
1745                     
1746                     	.area DSEG(DATA)
1747                     _RC0REG	.equ	0x7F
1748                     
1749                     	.area DSEG(DATA)
1750                     _LCDCN1	.equ	0x180
1751                     
1752                     	.area DSEG(DATA)
1753                     _LCDCN2	.equ	0x181
1754                     
1755                     	.area DSEG(DATA)
1756                     _LCDCN3	.equ	0x182
1757                     
1758                     	.area DSEG(DATA)
1759                     _LCDCN4	.equ	0x183
1760                     
1761                     	.area DSEG(DATA)
1762                     _LCDCN5	.equ	0x184
1763                     
1764                     	.area DSEG(DATA)
1765                     _LCDCN6	.equ	0x185
1766                     
1767                     	.area DSEG(DATA)
1768                     _LCDCN7	.equ	0x186
1769                     
1770                     	.area DSEG(DATA)
1771                     _LCDCN8	.equ	0x187
1772                     
1773                     	.area DSEG(DATA)
1774                     _LCD0	.equ	0x188
1775                     
1776                     	.area DSEG(DATA)
1777                     _LCD1	.equ	0x189
1778                     
1779                     	.area DSEG(DATA)
1780                     _LCD2	.equ	0x18A
1781                     
1782                     	.area DSEG(DATA)
1783                     _LCD3	.equ	0x18B
1784                     
1785                     	.area DSEG(DATA)
1786                     _LCD4	.equ	0x18C
1787                     
1788                     	.area DSEG(DATA)
1789                     _LCD5	.equ	0x18D
1790                     
1791                     	.area DSEG(DATA)
1792                     _LCD6	.equ	0x18E
1793                     
1794                     	.area DSEG(DATA)
1795                     _LCD7	.equ	0x18F
1796                     
1797                     	.area DSEG(DATA)
1798                     _LCD8	.equ	0x190
1799                     
1800                     	.area DSEG(DATA)
1801                     _LCD9	.equ	0x191
1802                     
1803                     	.area DSEG(DATA)
1804                     _UR2CN	.equ	0x192
1805                     
1806                     	.area DSEG(DATA)
1807                     _UR2STA	.equ	0x193
1808                     
1809                     	.area DSEG(DATA)
1810                     _BA2CN	.equ	0x194
1811                     
1812                     	.area DSEG(DATA)
1813                     _BG2RH	.equ	0x195
1814                     
1815                     	.area DSEG(DATA)
1816                     _BG2RL	.equ	0x196
1817                     
1818                     	.area DSEG(DATA)
1819                     _TX2R	.equ	0x197
1820                     
1821                     	.area DSEG(DATA)
1822                     _RC2REG	.equ	0x198
1823                     
1824                     	.area DSEG(DATA)
1825                     _TMA2R	.equ	0x1E8
1826                     
1827                     	.area DSEG(DATA)
1828                     _TMA2C	.equ	0x1E9
1829                     
1830                     	.area DSEG(DATA)
1831                     _LEDCN	.equ	0x1EA
1832                     
1833                     	.area DSEG(DATA)
1834                     _IQ0	.equ	0x1EB
1835                     
1836                     	.area DSEG(DATA)
1837                     _IQ1	.equ	0x1EC
1838                     
1839                     	.area DSEG(DATA)
1840                     _DGCON1	.equ	0x1ED
1841                     
1842                     	.area DSEG(DATA)
1843                     _DGCON2	.equ	0x1EE
1844                     
1845                     	.area DSEG(DATA)
1846                     _ADCRH	.equ	0x3A
1847                     
1848                     	.area DSEG(DATA)
1849                     _ADCRM	.equ	0x3B
1850                     
1851                     	.area DSEG(DATA)
1852                     _ADCRL	.equ	0x3C
1853                     
1854                     	.area DSEG(DATA)
1855                     _TEMDATA	.equ	0x2E0
1856                     
1857                     ;--------------------------------------------------------
1858                     ; absolute symbol definitions
1859                     ;--------------------------------------------------------
1860                     ;--------------------------------------------------------
1861                     ; compiler-defined variables
1862                     ;--------------------------------------------------------
1863                     	.area IDATA (DATA,REL,CON); pre-def
1864                     	.area IDATAROM (CODE,REL,CON); pre-def
1865                     	.area UDATA (DATA,REL,CON); pre-def
1866                     	.area UDATA (DATA,REL,CON) ;UDL_Drv_LCD_4718_0	udata
1867 @FSR2-CurrentOffset+001 --         r0x108D:	.ds	1
1868 @FSR2-CurrentOffset+001 --         r0x1094:	.ds	1
1869 @FSR2-CurrentOffset+002 --         r0x1095:	.ds	1
1870 @FSR2-CurrentOffset+005 --         r0x1096:	.ds	1
1871 @FSR2-CurrentOffset+007 --         r0x1097:	.ds	1
1872 @FSR2-CurrentOffset+006 --         r0x1099:	.ds	1
1873 @FSR2-CurrentOffset+001 --         r0x10A1:	.ds	1
1874 @FSR2-CurrentOffset+003 --         r0x10A2:	.ds	1
1875 @FSR2-CurrentOffset+002 --         r0x10A3:	.ds	1
1876 @FSR2-CurrentOffset+007 --         r0x10A5:	.ds	1
1877 @FSR2-CurrentOffset+008 --         r0x10A6:	.ds	1
1878                     	.area LOCALSTK (STK); local stack var
1879                     	.globl __g2ptrget2_STK00
1880                     	.globl __divuchar_STK00
1881 @FSR2-CurrentOffset+003 -- --      _Disp_Version_NumDisp_10000_419:	.ds	2
1882                     	.globl __moduchar_STK00
1883                     	.globl __g2ptrget1_STK00
1884 @FSR2-00 --         _Disp_Code_STK00:	.ds	1
1885                     	.globl _Disp_Code_STK00
1886                     	.globl __divuint_STK02
1887                     	.globl __divuint_STK01
1888                     	.globl __divuint_STK00
1889 @FSR2-CurrentOffset+004 -- -- --   _Disp_Code_NumDisp_10000_421:	.ds	3
1890                     	.globl __moduint_STK02
1891                     	.globl __moduint_STK01
1892                     	.globl __moduint_STK00
1893                     ;--------------------------------------------------------
1894                     ; initialized data
1895                     ;--------------------------------------------------------
1896                     ;--------------------------------------------------------
1897                     ; initialized data - mirror
1898                     ;--------------------------------------------------------
1899                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FDrv_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1900                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FDrv_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1901                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1902                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1903                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1904                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1905                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1906                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1907                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1908                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1909                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1910                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1911                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1912                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1913                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1914                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1915                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1916                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1917                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1918                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1919                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1920                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1921                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1922                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1923                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1924                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1925                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1926                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1927                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1928                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1929                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1930                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1931                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1932                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1933                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1934                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1935                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1936                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1937                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1938                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1939                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1940                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1941                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1942                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1943                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1944                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1945                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1946                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1947                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1948                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1949                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1950                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1951                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1952                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1953                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1954                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1955                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1956                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1957                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1958                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1959                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1960                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1961                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1962                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1963                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1964                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1965                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1966                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1967                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1968                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1969                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1970                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1971                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1972                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1973                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1974                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1975                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1976                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1977                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1978                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1979                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1980                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1981                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1982                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1983                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1984                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1985                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1986                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1987                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1988                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1989                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1990                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1991                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1992                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FDrv_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1993                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1994                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1995                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1996                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FDrv_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1997                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1998                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1999                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FDrv_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
2000                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FDrv_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
2001                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FDrv_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
2002                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
2003                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
2004                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FDrv_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2005                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FDrv_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
2006                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FDrv_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
2007                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FDrv_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
2008                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FDrv_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
2009                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2010                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2011                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2012                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2013                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2014                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2015                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2016                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2017                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2018                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2019                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2020                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2021                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2022                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2023                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2024                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2025                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2026                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2027                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2028                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2029                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2030                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2031                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2032                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2033                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2034                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2035                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2036                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2037                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
2038                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FDrv_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
2039                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
2040                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
2041                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FDrv_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2042                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FDrv_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
2043                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
2044                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FDrv_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
2045                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2046                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2047                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2048                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2049                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2050                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2051                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2052                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2053                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2054                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2055                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2056                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2057                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2058                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2059                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2060                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2061                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2062                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2063                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2064                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2065                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2066                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2067                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2068                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2069                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2070                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2071                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2072                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2073                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
2074                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2075                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2076                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2077                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2078                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2079                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2080                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2081                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2082                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2083                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2084                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2085                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2086                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2087                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2088                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2089                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2090                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2091                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2092                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2093                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2094                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2095                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2096                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2097                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2098                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2099                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2100                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2101                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2102                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
2103                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2104                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2105                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2106                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2107                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2108                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2109                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2110                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2111                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2112                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2113                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2114                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2115                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2116                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2117                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2118                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2119                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2120                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2121                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2122                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2123                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2124                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2125                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2126                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2127                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2128                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2129                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2130                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2131                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
2132                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FDrv_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
2133                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FDrv_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
2134                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FDrv_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
2135                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
2136                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
2137                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FDrv_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
2138                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2139                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2140                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2141                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2142                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2143                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2144                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2145                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2146                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2147                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2148                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2149                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2150                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2151                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2152                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2153                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2154                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2155                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2156                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2157                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2158                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2159                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2160                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2161                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2162                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2163                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2164                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2165                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2166                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
2167                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
2168                     	;Following is optimization info, 
2169                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
2170                     	;--cdb--W:r0x10A3:NULL+0:-1:1
2171                     	;--cdb--W:r0x10A2:NULL+0:-1:1
2172                     	;--cdb--W:r0x10A1:NULL+0:-1:1
2173                     	;--cdb--W:_Disp_Code_STK00:NULL+0:-1:1
2174                     	;--cdb--W:r0x10A4:NULL+0:-1:1
2175                     	;--cdb--W:r0x10A8:NULL+0:-1:1
2176                     	;--cdb--W:r0x10A1:r0x10A3+1:-1:0
2177                     	;--cdb--W:r0x10A1:STK00+0:-1:0
2178                     	;--cdb--W:r0x10A4:STK00+0:-1:0
2179                     	;--cdb--W:r0x10A7:NULL+0:-1:1
2180                     	;--cdb--W:r0x10A6:NULL+0:-1:1
2181                     	;--cdb--W:r0x1094:NULL+0:-1:1
2182                     	;--cdb--W:r0x1096:NULL+0:-1:1
2183                     	;--cdb--W:r0x1095:NULL+0:-1:1
2184                     	;--cdb--W:r0x109B:NULL+0:-1:1
2185                     	;--cdb--W:r0x1094:r0x1095+0:-1:0
2186                     	;--cdb--W:r0x1096:STK00+0:-1:0
2187                     	;--cdb--W:r0x1098:NULL+0:-1:1
2188                     	;--cdb--W:r0x1099:NULL+0:-1:1
2189                     	;--cdb--W:r0x109A:NULL+0:-1:1
2190                     	;--cdb--W:r0x108E:NULL+0:-1:1
2191                     	;--cdb--W:r0x108D:NULL+0:-1:1
2192                     	;--cdb--W:r0x1091:NULL+0:-1:1
2193                     	;--cdb--W:r0x1090:NULL+0:-1:1
2194                     	;--cdb--W:r0x108F:NULL+0:-1:1
2195                     	;--cdb--W:r0x108C:NULL+0:-1:1
2196                     	;--c2db--RNG$_Disp_ErrNo_No_10000_412$712$730
2197                     	;--c2db--RNG$_Disp_Version_num_10000_418$565$574
2198                     	;--c2db--RNG$_Disp_Code_num_10000_420$442$477
2199                     	END
