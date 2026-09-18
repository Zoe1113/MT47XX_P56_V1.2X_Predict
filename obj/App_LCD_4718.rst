001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_LCD_4718.c"
009                     	.module App_LCD_4718
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_LCD_4718:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
113                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
116                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
119                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
128                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
129                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
131                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
138                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
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
162                     	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
163                     	;--cdb--F:App_LCD_4718:G$DispUnit$0$0({2}DF,SV:S),C,0,0,0,0,0
164                     	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:App_LCD_4718:G$DispDelta$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
167                     	;--cdb--F:App_LCD_4718:G$DispNum$0$0({2}DF,SV:S),C,0,0,0,0,0
168                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
169                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
170                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
171                     	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
172                     	;--cdb--F:App_LCD_4718:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
173                     	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
174                     	;--cdb--F:App_LCD_4718:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
175                     	;--cdb--S:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0
176                     	;--cdb--F:App_LCD_4718:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
177                     	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
178                     	;--cdb--F:App_LCD_4718:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0,0,0,0
179                     	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
180                     	;--cdb--F:App_LCD_4718:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0,0,0,0
181                     	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
182                     	;--cdb--F:App_LCD_4718:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
183                     	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
184                     	;--cdb--F:App_LCD_4718:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
185                     	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
186                     	;--cdb--F:App_LCD_4718:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
187                     	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
188                     	;--cdb--F:App_LCD_4718:G$Off_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
189                     	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
190                     	;--cdb--F:App_LCD_4718:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
191                     	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
192                     	;--cdb--F:App_LCD_4718:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
193                     	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
194                     	;--cdb--F:App_LCD_4718:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
195                     	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
196                     	;--cdb--F:App_LCD_4718:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
197                     	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
198                     	;--cdb--F:App_LCD_4718:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
199                     	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
200                     	;--cdb--F:App_LCD_4718:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
201                     	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
202                     	;--cdb--F:App_LCD_4718:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
203                     	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
204                     	;--cdb--F:App_LCD_4718:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
205                     	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
206                     	;--cdb--F:App_LCD_4718:G$Binding_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
207                     	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
208                     	;--cdb--F:App_LCD_4718:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0,0,0,0
209                     	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
210                     	;--cdb--F:App_LCD_4718:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
211                     	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
212                     	;--cdb--F:App_LCD_4718:G$Err_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
213                     	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
214                     	;--cdb--F:App_LCD_4718:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
215                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
216                     	;--cdb--F:App_LCD_4718:G$LCD_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
217                     ;--------------------------------------------------------
218                     ; overlayable items in internal ram 
219                     ;--------------------------------------------------------
220                     ;	udata_ovr
221                     .area CCODE (code,REL,CON) ; App_LCD_4718-code 
222                     .globl _LCD_Display
223                     
224                     ;--------------------------------------------------------
225                     	.FUNC _LCD_Display:$r:0:0:$C:_Disp_BrownOut:$C:_Disp_All:$C:_UnitExchange_Display:$C:_Disp_Bat\
226                     :$C:_Disp_Version:$C:_Disp_BleSymbol:$C:_Disp_Code:$C:_Off_Display:$C:_PreCalibration_Display\
227                     :$C:_Calibration_Display:$C:_CalibrationOK_Display:$C:_RecentTemp_Display:$C:_MemTempNumber_Display:$C:_MemTempValue_Display\
228                     :$C:_CurrentMode_Display:$C:_ModeExchange_Display:$C:_Binding_Display:$C:_TempDetecting_Display:$C:_Err_Disp\
229                     :$C:_MeasedTemp_Disp:$C:_Disp_Nothing\
230                     
231                     ;--------------------------------------------------------
232                     ;	;.line	1254; ".\Source\App_LCD_4718.c"	if(sTIMx.LCDRefreshFlag)
233                     _LCD_Display:	;Function start
234 0245 [00] [2] 0012 B3CC 	BTSS	_sTIMx,1
235 0247 [00] [2] 786C      	JMP	_00563_DS_
236                     ;	;.line	1257; ".\Source\App_LCD_4718.c"	sTIMx.LCDRefreshFlag = FALSE;
237 0248 [00] [2] 83CC      	BCF	_sTIMx,1
238                     ;	;.line	1258; ".\Source\App_LCD_4718.c"	switch(eDisplay_Interfaces)
239 0249 [00] [2] 0614      	MVL	0x14
240 024A [00] [2] 6B33      	CPSL	_eDisplay_Interfaces,0
241 024B [00] [2] 7868      	JMP	_00563_DS_
242 024C [00] [2] 0602      	MVL	HIGHD2(_00590_DS_)
243 024D [00] [2] 661A      	MVF	_PCLATH,1,0
244 024E [00] [2] 6533      	MVF	_eDisplay_Interfaces,0,0
245 024F [00] [2] 0453      	ADDL	D2(_00590_DS_)
246 0250 [00] [2] A82B      	BTSZ	_STATUS,4
247 0251 [00] [2] 3A1A      	INF	_PCLATH,1,0
248 0252 [00] [2] 661B      	MVF	_PCLATL,1,0
249                     _00590_DS_:
250 0253 [00] [2] 7860      	RJ	_00563_DS_
251 0254 [00] [2] 7812      	RJ	_00536_DS_
252 0255 [00] [2] 7813      	RJ	_00537_DS_
253 0256 [00] [2] 7819      	RJ	_00540_DS_
254 0257 [00] [2] 781C      	RJ	_00541_DS_
255 0258 [00] [2] 781F      	RJ	_00542_DS_
256 0259 [00] [2] 7825      	RJ	_00543_DS_
257 025A [00] [2] 7829      	RJ	_00545_DS_
258 025B [00] [2] 782A      	RJ	_00546_DS_
259 025C [00] [2] 782D      	RJ	_00547_DS_
260 025D [00] [2] 7830      	RJ	_00548_DS_
261 025E [00] [2] 7837      	RJ	_00551_DS_
262 025F [00] [2] 783A      	RJ	_00552_DS_
263 0260 [00] [2] 783E      	RJ	_00553_DS_
264 0261 [00] [2] 7841      	RJ	_00554_DS_
265 0262 [00] [2] 7843      	RJ	_00555_DS_
266 0263 [00] [2] 7846      	RJ	_00556_DS_
267 0264 [00] [2] 784A      	RJ	_00557_DS_
268 0265 [00] [2] 784D      	RJ	_00558_DS_
269 0266 [00] [2] 781A      	RJ	_00544_DS_
270                     _00536_DS_:
271                     ;	;.line	1268; ".\Source\App_LCD_4718.c"	Disp_BrownOut();
272 0267 [00] [2] C8B6      	CALL	_Disp_BrownOut
273                     	.CHKPARA _Disp_BrownOut 0
274                     ;	;.line	1269; ".\Source\App_LCD_4718.c"	break;
275 0268 [00] [1] 784B      	JMP	_00563_DS_
276                     _00537_DS_:
277                     ;	;.line	1274; ".\Source\App_LCD_4718.c"	Disp_All();
278 0269 [00] [2] C89A      	CALL	_Disp_All
279                     	.CHKPARA _Disp_All 0
280                     ;	;.line	1276; ".\Source\App_LCD_4718.c"	if(!sBacklight.Backlight2SFlag)
281 026A [00] [1] A12C      	BTSZ	_sBacklight,0
282 026B [00] [1] 7848      	JMP	_00563_DS_
283                     ;	;.line	1278; ".\Source\App_LCD_4718.c"	sBacklight.Backlight2SFlag = TRUE;
284 026C [00] [1] 912C      	BSF	_sBacklight,0
285                     ;	;.line	1280; ".\Source\App_LCD_4718.c"	eBacklight_Status = All_Backlight;
286 026D [00] [1] 0601      	MVL	0x01
287 026E [00] [1] 672B      	MVF	_eBacklight_Status,1,0
288                     ;	;.line	1282; ".\Source\App_LCD_4718.c"	break;
289 026F [00] [1] 7844      	JMP	_00563_DS_
290                     _00540_DS_:
291                     ;	;.line	1287; ".\Source\App_LCD_4718.c"	UnitExchange_Display();
292 0270 [00] [2] C001 F6B6 	CALL	_UnitExchange_Display
293                     	.CHKPARA _UnitExchange_Display 0
294                     ;	;.line	1291; ".\Source\App_LCD_4718.c"	Disp_Bat();
295 0272 [00] [1] C943      	CALL	_Disp_Bat
296                     	.CHKPARA _Disp_Bat 0
297                     ;	;.line	1294; ".\Source\App_LCD_4718.c"	break;
298 0273 [00] [1] 7840      	JMP	_00563_DS_
299                     _00541_DS_:
300                     ;	;.line	1299; ".\Source\App_LCD_4718.c"	Disp_Version(Soft_External_Version);
301 0274 [00] [2] 060B      	MVL	0x0b
302 0275 [00] [2] C848      	CALL	_Disp_Version
303                     ;	;.line	1301; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
304 0276 [00] [1] C93E      	CALL	_Disp_BleSymbol
305                     ;	;.line	1302; ".\Source\App_LCD_4718.c"	break;
306 0277 [00] [1] 783C      	JMP	_00563_DS_
307                     _00542_DS_:
308                     ;	;.line	1307; ".\Source\App_LCD_4718.c"	Disp_Code(Soft_Code);
309 0278 [00] [2] 06AA      	MVL	0xaa
310 0279 [00] [2] 660D      	MVF	_Disp_Code_STK00,1,0
311 027A [01] [2] 0601      	MVL	0x01
312 027B [01] [2] C001 F564 	CALL	_Disp_Code
313                     ;	;.line	1309; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
314 027D [00] [1] C937      	CALL	_Disp_BleSymbol
315                     ;	;.line	1310; ".\Source\App_LCD_4718.c"	break;
316 027E [00] [1] 7835      	JMP	_00563_DS_
317                     _00543_DS_:
318                     ;	;.line	1315; ".\Source\App_LCD_4718.c"	Off_Display();
319 027F [00] [2] C8BD      	CALL	_Off_Display
320                     	.CHKPARA _Off_Display 0
321                     ;	;.line	1316; ".\Source\App_LCD_4718.c"	break;
322 0280 [00] [1] 7833      	JMP	_00563_DS_
323                     _00544_DS_:
324                     ;	;.line	1321; ".\Source\App_LCD_4718.c"	PreCalibration_Display();
325 0281 [00] [2] C001 F46B 	CALL	_PreCalibration_Display
326                     	.CHKPARA _PreCalibration_Display 0
327                     ;	;.line	1322; ".\Source\App_LCD_4718.c"	break;
328 0283 [00] [1] 7830      	JMP	_00563_DS_
329                     _00545_DS_:
330                     ;	;.line	1327; ".\Source\App_LCD_4718.c"	Calibration_Display();
331 0284 [00] [2] C8BF      	CALL	_Calibration_Display
332                     	.CHKPARA _Calibration_Display 0
333                     ;	;.line	1328; ".\Source\App_LCD_4718.c"	break;
334 0285 [00] [X] 782E      	JMP	_00563_DS_
335                     _00546_DS_:
336                     ;	;.line	1333; ".\Source\App_LCD_4718.c"	CalibrationOK_Display();
337 0286 [00] [2] C001 FB63 	CALL	_CalibrationOK_Display
338                     	.CHKPARA _CalibrationOK_Display 0
339                     ;	;.line	1337; ".\Source\App_LCD_4718.c"	Disp_Bat();
340 0288 [00] [1] C92D      	CALL	_Disp_Bat
341                     ;	;.line	1340; ".\Source\App_LCD_4718.c"	break;
342 0289 [00] [1] 782A      	JMP	_00563_DS_
343                     _00547_DS_:
344                     ;	;.line	1345; ".\Source\App_LCD_4718.c"	RecentTemp_Display();
345 028A [00] [2] C001 F642 	CALL	_RecentTemp_Display
346                     	.CHKPARA _RecentTemp_Display 0
347                     ;	;.line	1349; ".\Source\App_LCD_4718.c"	Disp_Bat();
348 028C [00] [1] C929      	CALL	_Disp_Bat
349                     ;	;.line	1352; ".\Source\App_LCD_4718.c"	break;
350 028D [00] [1] 7826      	JMP	_00563_DS_
351                     _00548_DS_:
352                     ;	;.line	1357; ".\Source\App_LCD_4718.c"	MemTempNumber_Display();
353 028E [00] [2] C8E4      	CALL	_MemTempNumber_Display
354                     	.CHKPARA _MemTempNumber_Display 0
355                     ;	;.line	1359; ".\Source\App_LCD_4718.c"	if(!sBacklight.Backlight2SFlag)
356 028F [00] [1] A12C      	BTSZ	_sBacklight,0
357 0290 [00] [1] 7803      	JMP	_00550_DS_
358                     ;	;.line	1362; ".\Source\App_LCD_4718.c"	sBacklight.Backlight2SFlag = TRUE;
359 0291 [00] [1] 912C      	BSF	_sBacklight,0
360                     ;	;.line	1364; ".\Source\App_LCD_4718.c"	eBacklight_Status = MemTemp_Backlight;
361 0292 [00] [1] 0602      	MVL	0x02
362 0293 [00] [1] 672B      	MVF	_eBacklight_Status,1,0
363                     _00550_DS_:
364                     ;	;.line	1369; ".\Source\App_LCD_4718.c"	Disp_Bat();
365 0294 [00] [1] C921      	CALL	_Disp_Bat
366                     ;	;.line	1372; ".\Source\App_LCD_4718.c"	break;
367 0295 [00] [1] 781E      	JMP	_00563_DS_
368                     _00551_DS_:
369                     ;	;.line	1377; ".\Source\App_LCD_4718.c"	MemTempValue_Display();
370 0296 [00] [2] C001 FA0C 	CALL	_MemTempValue_Display
371                     	.CHKPARA _MemTempValue_Display 0
372                     ;	;.line	1381; ".\Source\App_LCD_4718.c"	Disp_Bat();
373 0298 [00] [1] C91D      	CALL	_Disp_Bat
374                     ;	;.line	1384; ".\Source\App_LCD_4718.c"	break;
375 0299 [00] [1] 781A      	JMP	_00563_DS_
376                     _00552_DS_:
377                     ;	;.line	1390; ".\Source\App_LCD_4718.c"	CurrentMode_Display();
378 029A [00] [2] C001 F3C9 	CALL	_CurrentMode_Display
379                     ;	;.line	1392; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
380 029C [00] [X] C918      	CALL	_Disp_BleSymbol
381                     ;	;.line	1396; ".\Source\App_LCD_4718.c"	Disp_Bat();
382 029D [00] [X] C918      	CALL	_Disp_Bat
383                     ;	;.line	1399; ".\Source\App_LCD_4718.c"	break;
384 029E [00] [1] 7815      	JMP	_00563_DS_
385                     _00553_DS_:
386                     ;	;.line	1404; ".\Source\App_LCD_4718.c"	ModeExchange_Display();
387 029F [00] [2] C8FE      	CALL	_ModeExchange_Display
388                     	.CHKPARA _ModeExchange_Display 0
389                     ;	;.line	1406; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
390 02A0 [00] [X] C914      	CALL	_Disp_BleSymbol
391                     ;	;.line	1410; ".\Source\App_LCD_4718.c"	Disp_Bat();
392 02A1 [00] [X] C914      	CALL	_Disp_Bat
393                     ;	;.line	1413; ".\Source\App_LCD_4718.c"	break;
394 02A2 [00] [1] 7811      	JMP	_00563_DS_
395                     _00554_DS_:
396                     ;	;.line	1418; ".\Source\App_LCD_4718.c"	Binding_Display();
397 02A3 [00] [2] C903      	CALL	_Binding_Display
398                     	.CHKPARA _Binding_Display 0
399                     ;	;.line	1420; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
400 02A4 [00] [X] C910      	CALL	_Disp_BleSymbol
401                     ;	;.line	1421; ".\Source\App_LCD_4718.c"	break;
402 02A5 [00] [X] 780E      	JMP	_00563_DS_
403                     _00555_DS_:
404                     ;	;.line	1426; ".\Source\App_LCD_4718.c"	TempDetecting_Display();
405 02A6 [00] [2] C000 F6E0 	CALL	_TempDetecting_Display
406                     	.CHKPARA _TempDetecting_Display 0
407                     ;	;.line	1438; ".\Source\App_LCD_4718.c"	Disp_Bat();
408 02A8 [00] [1] C90D      	CALL	_Disp_Bat
409                     ;	;.line	1441; ".\Source\App_LCD_4718.c"	break;
410 02A9 [00] [1] 780A      	JMP	_00563_DS_
411                     _00556_DS_:
412                     ;	;.line	1446; ".\Source\App_LCD_4718.c"	Err_Disp();
413 02AA [00] [2] C001 F410 	CALL	_Err_Disp
414                     	.CHKPARA _Err_Disp 0
415                     ;	;.line	1448; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
416 02AC [00] [X] C908      	CALL	_Disp_BleSymbol
417                     ;	;.line	1452; ".\Source\App_LCD_4718.c"	Disp_Bat();
418 02AD [00] [X] C908      	CALL	_Disp_Bat
419                     ;	;.line	1455; ".\Source\App_LCD_4718.c"	break;
420 02AE [00] [1] 7805      	JMP	_00563_DS_
421                     _00557_DS_:
422                     ;	;.line	1460; ".\Source\App_LCD_4718.c"	MeasedTemp_Disp();
423 02AF [00] [2] C95A      	CALL	_MeasedTemp_Disp
424                     	.CHKPARA _MeasedTemp_Disp 0
425                     ;	;.line	1462; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
426 02B0 [00] [1] C904      	CALL	_Disp_BleSymbol
427                     ;	;.line	1466; ".\Source\App_LCD_4718.c"	Disp_Bat();
428 02B1 [00] [1] C904      	CALL	_Disp_Bat
429                     ;	;.line	1469; ".\Source\App_LCD_4718.c"	break;
430 02B2 [00] [1] 7801      	JMP	_00563_DS_
431                     _00558_DS_:
432                     ;	;.line	1474; ".\Source\App_LCD_4718.c"	Disp_Nothing();
433 02B3 [00] [2] CB26      	CALL	_Disp_Nothing
434                     _00563_DS_:
435                     ;	;.line	1480; ".\Source\App_LCD_4718.c"	}
436 02B4 [00] [X] 000A      	RET	
437                     ; exit point of _LCD_Display
438                     	.ENDFUNC	_LCD_Display
439                     ;--------------------------------------------------------
440                     
441                     .globl _MeasedTemp_Disp
442                     
443                     ;--------------------------------------------------------
444                     	.FUNC _MeasedTemp_Disp:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_DispNum:$C:_DispDelta\
445                     :$C:_DispUnit\
446                     :$L:r0x10DC:$L:r0x10DD
447                     ;--------------------------------------------------------
448                     ;	;.line	1048; ".\Source\App_LCD_4718.c"	if(sTempCal.Reset_From_CalOK)
449 040A [00] [2] C482      _MeasedTemp_Disp:	;Function start
450 040B [02] [2] BB90      	BTSS	_sTempCal,5
451 040C [02] [2] 786E      	JMP	_00524_DS_
452                     ;	;.line	1051; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
453 040D [02] [2] 065A      	MVL	0x5a
454 040E [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
455 0410 [02] [1] 7833      	JMP	_00508_DS_
456                     ;	;.line	1054; ".\Source\App_LCD_4718.c"	if(sTIMx.ForecastJudgeOKTempFlash)
457 0411 [00] [2] 0012 BDCC 	BTSS	_sTIMx,6
458 0413 [02] [2] 7818      	JMP	_00494_DS_
459                     ;	;.line	1056; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
460 0414 [02] [2] 65AC      	MVF	(_sActual_Forecast + 13),0,0
461 0415 [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
462 0416 [03] [2] 65AD      	MVF	(_sActual_Forecast + 14),0,0
463 0417 [03] [2] CA10      	CALL	_Centigrade_Convert_Fahrenheit
464 0418 [02] [1] 6680      	MVF	r0x10DD,1,0
465 0419 [02] [1] 6420      	MVF	STK00,0,0
466 041A [02] [1] 6681      	MVF	r0x10DC,1,0
467                     ;	;.line	1058; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Centigrade)
468 041B [02] [1] 04D9      	ADDL	0xd9
469 041C [02] [1] 06EE      	MVL	0xee
470 041D [02] [1] 1480      	ADDC	r0x10DD,0,0
471 041E [02] [1] B82B      	BTSS	_STATUS,4
472 041F [02] [1] 7802      	JMP	_00488_DS_
473                     ;	;.line	1061; ".\Source\App_LCD_4718.c"	Disp_Hi();
474 0420 [02] [1] C890      	CALL	_Disp_Hi
475 0421 [02] [1] 7805      	JMP	_00489_DS_
476                     _00488_DS_:
477                     ;	;.line	1066; ".\Source\App_LCD_4718.c"	DispNum(tmp);
478 0422 [02] [1] 6481      	MVF	r0x10DC,0,0
479 0423 [02] [1] 660D      	MVF	_DispNum_STK00,1,0
480 0424 [03] [1] 6481      	MVF	r0x10DD,0,0
481 0425 [03] [1] C8B1      	CALL	_DispNum
482                     ;	;.line	1068; ".\Source\App_LCD_4718.c"	LCD_Point_En();
483 0426 [02] [1] 9D8A      	BSF	_LCD2,6
484                     _00489_DS_:
485                     ;	;.line	1074; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
486 0427 [02] [1] 6481      	MVF	r0x10DC,0,0
487 0428 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
488 0429 [03] [1] 6481      	MVF	r0x10DD,0,0
489 042A [03] [1] C9B8      	CALL	_DispDelta
490 042B [02] [1] 784D      	JMP	_00509_DS_
491                     _00494_DS_:
492                     ;	;.line	1084; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
493 042C [02] [2] 658A      	MVF	(_sForecast + 20),0,0
494 042D [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
495 042E [03] [2] 658B      	MVF	(_sForecast + 21),0,0
496 042F [03] [2] C9F8      	CALL	_Centigrade_Convert_Fahrenheit
497 0430 [02] [1] 6680      	MVF	r0x10DD,1,0
498 0431 [02] [1] 6420      	MVF	STK00,0,0
499 0432 [02] [1] 6681      	MVF	r0x10DC,1,0
500                     ;	;.line	1086; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Centigrade)
501 0433 [02] [1] 04D9      	ADDL	0xd9
502 0434 [02] [1] 06EE      	MVL	0xee
503 0435 [02] [1] 1480      	ADDC	r0x10DD,0,0
504 0436 [02] [1] B82B      	BTSS	_STATUS,4
505 0437 [02] [1] 7802      	JMP	_00491_DS_
506                     ;	;.line	1089; ".\Source\App_LCD_4718.c"	Disp_Hi();
507 0438 [02] [1] C878      	CALL	_Disp_Hi
508 0439 [02] [1] 7805      	JMP	_00492_DS_
509                     _00491_DS_:
510                     ;	;.line	1094; ".\Source\App_LCD_4718.c"	DispNum(tmp);
511 043A [02] [1] 6481      	MVF	r0x10DC,0,0
512 043B [02] [1] 660D      	MVF	_DispNum_STK00,1,0
513 043C [03] [1] 6481      	MVF	r0x10DD,0,0
514 043D [03] [1] C899      	CALL	_DispNum
515                     ;	;.line	1096; ".\Source\App_LCD_4718.c"	LCD_Point_En();
516 043E [02] [1] 9D8A      	BSF	_LCD2,6
517                     _00492_DS_:
518                     ;	;.line	1102; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
519 043F [02] [1] 6481      	MVF	r0x10DC,0,0
520 0440 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
521 0441 [03] [1] 6481      	MVF	r0x10DD,0,0
522 0442 [03] [1] C9A0      	CALL	_DispDelta
523 0443 [02] [1] 7835      	JMP	_00509_DS_
524                     _00508_DS_:
525                     ;	;.line	1112; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
526 0444 [02] [1] 06A5      	MVL	0xa5
527 0445 [02] [1] 6D7F      	CPSE	_eTempUnit,0
528 0446 [02] [1] 7832      	JMP	_00509_DS_
529                     ;	;.line	1115; ".\Source\App_LCD_4718.c"	if(sTIMx.ForecastJudgeOKTempFlash)
530 0447 [00] [2] 0012 BDCC 	BTSS	_sTIMx,6
531 0449 [02] [2] 7818      	JMP	_00503_DS_
532                     ;	;.line	1117; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
533 044A [02] [2] 65AC      	MVF	(_sActual_Forecast + 13),0,0
534 044B [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
535 044C [03] [2] 65AD      	MVF	(_sActual_Forecast + 14),0,0
536 044D [03] [2] C9DA      	CALL	_Centigrade_Convert_Fahrenheit
537 044E [02] [1] 6680      	MVF	r0x10DD,1,0
538 044F [02] [1] 6420      	MVF	STK00,0,0
539 0450 [02] [1] 6681      	MVF	r0x10DC,1,0
540                     ;	;.line	1119; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Fahrenheit)
541 0451 [02] [1] 04A3      	ADDL	0xa3
542 0452 [02] [1] 06D4      	MVL	0xd4
543 0453 [02] [1] 1480      	ADDC	r0x10DD,0,0
544 0454 [02] [1] B82B      	BTSS	_STATUS,4
545 0455 [02] [1] 7802      	JMP	_00497_DS_
546                     ;	;.line	1122; ".\Source\App_LCD_4718.c"	Disp_Hi();
547 0456 [02] [1] C85A      	CALL	_Disp_Hi
548 0457 [02] [1] 7805      	JMP	_00498_DS_
549                     _00497_DS_:
550                     ;	;.line	1127; ".\Source\App_LCD_4718.c"	DispNum(tmp);
551 0458 [02] [1] 6481      	MVF	r0x10DC,0,0
552 0459 [02] [1] 660D      	MVF	_DispNum_STK00,1,0
553 045A [03] [1] 6481      	MVF	r0x10DD,0,0
554 045B [03] [1] C87B      	CALL	_DispNum
555                     ;	;.line	1129; ".\Source\App_LCD_4718.c"	LCD_Point_En();
556 045C [02] [1] 9D8A      	BSF	_LCD2,6
557                     _00498_DS_:
558                     ;	;.line	1135; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
559 045D [02] [1] 6481      	MVF	r0x10DC,0,0
560 045E [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
561 045F [03] [1] 6481      	MVF	r0x10DD,0,0
562 0460 [03] [1] C982      	CALL	_DispDelta
563 0461 [02] [1] 7817      	JMP	_00509_DS_
564                     _00503_DS_:
565                     ;	;.line	1145; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
566 0462 [02] [2] 658A      	MVF	(_sForecast + 20),0,0
567 0463 [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
568 0464 [03] [2] 658B      	MVF	(_sForecast + 21),0,0
569 0465 [03] [2] C9C2      	CALL	_Centigrade_Convert_Fahrenheit
570 0466 [02] [1] 6680      	MVF	r0x10DD,1,0
571 0467 [02] [1] 6420      	MVF	STK00,0,0
572 0468 [02] [1] 6681      	MVF	r0x10DC,1,0
573                     ;	;.line	1147; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Fahrenheit)
574 0469 [02] [1] 04A3      	ADDL	0xa3
575 046A [02] [1] 06D4      	MVL	0xd4
576 046B [02] [1] 1480      	ADDC	r0x10DD,0,0
577 046C [02] [1] B82B      	BTSS	_STATUS,4
578 046D [02] [1] 7802      	JMP	_00500_DS_
579                     ;	;.line	1150; ".\Source\App_LCD_4718.c"	Disp_Hi();
580 046E [02] [1] C842      	CALL	_Disp_Hi
581 046F [02] [1] 7805      	JMP	_00501_DS_
582                     _00500_DS_:
583                     ;	;.line	1155; ".\Source\App_LCD_4718.c"	DispNum(tmp);
584 0470 [02] [1] 6481      	MVF	r0x10DC,0,0
585 0471 [02] [1] 660D      	MVF	_DispNum_STK00,1,0
586 0472 [03] [1] 6481      	MVF	r0x10DD,0,0
587 0473 [03] [1] C863      	CALL	_DispNum
588                     ;	;.line	1157; ".\Source\App_LCD_4718.c"	LCD_Point_En();
589 0474 [02] [1] 9D8A      	BSF	_LCD2,6
590                     _00501_DS_:
591                     ;	;.line	1163; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
592 0475 [02] [1] 6481      	MVF	r0x10DC,0,0
593 0476 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
594 0477 [03] [1] 6481      	MVF	r0x10DD,0,0
595 0478 [03] [1] C96A      	CALL	_DispDelta
596                     _00509_DS_:
597                     ;	;.line	1173; ".\Source\App_LCD_4718.c"	DispUnit();
598 0479 [02] [1] C9A2      	CALL	_DispUnit
599 047A [02] [1] 7834      	JMP	_00530_DS_
600                     _00524_DS_:
601                     ;	;.line	1178; ".\Source\App_LCD_4718.c"	if(!sADC.UnRefreshTemp)
602 047B [02] [2] A943      	BTSZ	_sADC,4
603 047C [02] [2] 7808      	JMP	_00511_DS_
604                     ;	;.line	1181; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
605 047D [02] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
606 047E [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
607 047F [03] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
608 0480 [03] [2] C9A7      	CALL	_Centigrade_Convert_Fahrenheit
609 0481 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
610 0483 [02] [2] 6420      	MVF	STK00,0,0
611 0484 [02] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
612                     _00511_DS_:
613                     ;	;.line	1185; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
614 0485 [02] [2] 065A      	MVL	0x5a
615 0486 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
616 0488 [02] [1] 780F      	JMP	_00521_DS_
617                     ;	;.line	1188; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
618 0489 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
619 048B [02] [2] 04D9      	ADDL	0xd9
620 048C [02] [2] 06EE      	MVL	0xee
621 048D [02] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
622 048E [02] [2] B82B      	BTSS	_STATUS,4
623 048F [02] [2] 7802      	JMP	_00513_DS_
624                     ;	;.line	1191; ".\Source\App_LCD_4718.c"	Disp_Hi();
625 0490 [02] [2] C820      	CALL	_Disp_Hi
626 0491 [02] [1] 7817      	JMP	_00522_DS_
627                     _00513_DS_:
628                     ;	;.line	1196; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
629 0492 [02] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
630 0493 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
631 0494 [03] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
632 0495 [03] [2] C841      	CALL	_DispNum
633                     ;	;.line	1198; ".\Source\App_LCD_4718.c"	LCD_Point_En();
634 0496 [02] [1] 9D8A      	BSF	_LCD2,6
635 0497 [02] [1] 7811      	JMP	_00522_DS_
636                     _00521_DS_:
637                     ;	;.line	1202; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
638 0498 [02] [1] 06A5      	MVL	0xa5
639 0499 [02] [1] 6D7F      	CPSE	_eTempUnit,0
640 049A [02] [1] 780E      	JMP	_00522_DS_
641                     ;	;.line	1205; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
642 049B [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
643 049D [02] [2] 04A3      	ADDL	0xa3
644 049E [02] [2] 06D4      	MVL	0xd4
645 049F [02] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
646 04A0 [02] [2] B82B      	BTSS	_STATUS,4
647 04A1 [02] [2] 7802      	JMP	_00516_DS_
648                     ;	;.line	1208; ".\Source\App_LCD_4718.c"	Disp_Hi();
649 04A2 [02] [2] C80E      	CALL	_Disp_Hi
650 04A3 [02] [1] 7805      	JMP	_00522_DS_
651                     _00516_DS_:
652                     ;	;.line	1213; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
653 04A4 [02] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
654 04A5 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
655 04A6 [03] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
656 04A7 [03] [2] C82F      	CALL	_DispNum
657                     ;	;.line	1215; ".\Source\App_LCD_4718.c"	LCD_Point_En();
658 04A8 [02] [1] 9D8A      	BSF	_LCD2,6
659                     _00522_DS_:
660                     ;	;.line	1220; ".\Source\App_LCD_4718.c"	DispUnit();
661 04A9 [02] [1] C972      	CALL	_DispUnit
662                     ;	;.line	1225; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
663 04AA [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
664 04AC [02] [2] 660D      	MVF	_DispDelta_STK00,1,0
665 04AD [03] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
666 04AE [03] [2] C934      	CALL	_DispDelta
667 04AF [02] [1] C4BE      _00530_DS_:
668                     ;	;.line	1244; ".\Source\App_LCD_4718.c"	}
669 04B0 [00] [1] 000A      	RET	
670                     ; exit point of _MeasedTemp_Disp
671                     	.ENDFUNC	_MeasedTemp_Disp
672                     ;--------------------------------------------------------
673                     
674                     .globl _Err_Disp
675                     
676                     ;--------------------------------------------------------
677                     	.FUNC _Err_Disp:$r:0:0:$C:_Disp_ErrNo:$C:_Disp_Err\
678                     
679                     ;--------------------------------------------------------
680                     ;	;.line	988; ".\Source\App_LCD_4718.c"	if(ERR[Err4])
681                     _Err_Disp:	;Function start
682 1410 [00] [2] 4D39      	RRF	(_ERR + 4),0,0
683 1411 [00] [2] A02B      	BTSZ	_STATUS,0
684 1412 [00] [2] 7803      	JMP	_00480_DS_
685                     ;	;.line	992; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err4);
686 1413 [00] [2] 0604      	MVL	0x04
687 1414 [00] [2] C83D      	CALL	_Disp_ErrNo
688                     	.CHKPARA _Disp_ErrNo 1
689 1415 [00] [1] 782E      	JMP	_00482_DS_
690                     _00480_DS_:
691                     ;	;.line	994; ".\Source\App_LCD_4718.c"	else if(ERR[Err0])
692 1416 [00] [2] 4D35      	RRF	(_ERR + 0),0,0
693 1417 [00] [2] A02B      	BTSZ	_STATUS,0
694 1418 [00] [2] 7803      	JMP	_00477_DS_
695                     ;	;.line	998; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err0);
696 1419 [00] [2] 0600      	MVL	0x00
697 141A [00] [2] C837      	CALL	_Disp_ErrNo
698 141B [00] [1] 7828      	JMP	_00482_DS_
699                     _00477_DS_:
700                     ;	;.line	1000; ".\Source\App_LCD_4718.c"	else if(ERR[Err5])
701 141C [00] [2] 4D3A      	RRF	(_ERR + 5),0,0
702 141D [00] [2] A02B      	BTSZ	_STATUS,0
703 141E [00] [2] 7803      	JMP	_00474_DS_
704                     ;	;.line	1004; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err5);
705 141F [00] [2] 0605      	MVL	0x05
706 1420 [00] [2] C831      	CALL	_Disp_ErrNo
707 1421 [00] [1] 7822      	JMP	_00482_DS_
708                     _00474_DS_:
709                     ;	;.line	1006; ".\Source\App_LCD_4718.c"	else if(ERR[Err1])
710 1422 [00] [2] 4D36      	RRF	(_ERR + 1),0,0
711 1423 [00] [2] A02B      	BTSZ	_STATUS,0
712 1424 [00] [2] 7803      	JMP	_00471_DS_
713                     ;	;.line	1009; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err1);
714 1425 [00] [2] 0601      	MVL	0x01
715 1426 [00] [2] C82B      	CALL	_Disp_ErrNo
716 1427 [00] [1] 781C      	JMP	_00482_DS_
717                     _00471_DS_:
718                     ;	;.line	1011; ".\Source\App_LCD_4718.c"	else if(ERR[Err6])
719 1428 [00] [2] 4D3B      	RRF	(_ERR + 6),0,0
720 1429 [00] [2] A02B      	BTSZ	_STATUS,0
721 142A [00] [2] 7803      	JMP	_00468_DS_
722                     ;	;.line	1014; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err6);
723 142B [00] [2] 0606      	MVL	0x06
724 142C [00] [2] C825      	CALL	_Disp_ErrNo
725 142D [00] [1] 7816      	JMP	_00482_DS_
726                     _00468_DS_:
727                     ;	;.line	1016; ".\Source\App_LCD_4718.c"	else if(ERR[Err2])
728 142E [00] [2] 4D37      	RRF	(_ERR + 2),0,0
729 142F [00] [2] A02B      	BTSZ	_STATUS,0
730 1430 [00] [2] 7803      	JMP	_00465_DS_
731                     ;	;.line	1019; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err2);
732 1431 [00] [2] 0602      	MVL	0x02
733 1432 [00] [2] C81F      	CALL	_Disp_ErrNo
734 1433 [00] [1] 7810      	JMP	_00482_DS_
735                     _00465_DS_:
736                     ;	;.line	1021; ".\Source\App_LCD_4718.c"	else if(ERR[Err3])
737 1434 [00] [2] 4D38      	RRF	(_ERR + 3),0,0
738 1435 [00] [2] A02B      	BTSZ	_STATUS,0
739 1436 [00] [2] 7803      	JMP	_00462_DS_
740                     ;	;.line	1024; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err3);
741 1437 [00] [2] 0603      	MVL	0x03
742 1438 [00] [2] C819      	CALL	_Disp_ErrNo
743 1439 [00] [1] 780A      	JMP	_00482_DS_
744                     _00462_DS_:
745                     ;	;.line	1026; ".\Source\App_LCD_4718.c"	else if(ERR[Err])
746 143A [00] [2] 4D3D      	RRF	(_ERR + 8),0,0
747 143B [00] [2] A02B      	BTSZ	_STATUS,0
748 143C [00] [2] 7802      	JMP	_00459_DS_
749                     ;	;.line	1029; ".\Source\App_LCD_4718.c"	Disp_Err();
750 143D [00] [2] C807      	CALL	_Disp_Err
751                     	.CHKPARA _Disp_Err 0
752 143E [00] [1] 7805      	JMP	_00482_DS_
753                     _00459_DS_:
754                     ;	;.line	1031; ".\Source\App_LCD_4718.c"	else if(ERR[Err7])
755 143F [00] [2] 4D3C      	RRF	(_ERR + 7),0,0
756 1440 [00] [2] A02B      	BTSZ	_STATUS,0
757 1441 [00] [2] 7802      	JMP	_00482_DS_
758                     ;	;.line	1034; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err7);
759 1442 [00] [2] 0607      	MVL	0x07
760 1443 [00] [2] C80E      	CALL	_Disp_ErrNo
761                     _00482_DS_:
762                     ;	;.line	1036; ".\Source\App_LCD_4718.c"	}
763 1444 [00] [X] 000A      	RET	
764                     ; exit point of _Err_Disp
765                     	.ENDFUNC	_Err_Disp
766                     ;--------------------------------------------------------
767                     
768                     .globl _TempDetecting_Display
769                     
770                     ;--------------------------------------------------------
771                     	.FUNC _TempDetecting_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_EMC_Update_Temp_Fast:$C:_Disp_StaticDash\
772                     :$C:_DispNum:$C:_Disp_UnitFlash:$C:_Disp_DynamicDash:$C:_Disp_DynamicForecastSymbol:$C:_DispUnit\
773                     :$C:_Disp_BleSymbol\
774                     
775                     ;--------------------------------------------------------
776                     ;	;.line	873; ".\Source\App_LCD_4718.c"	if((eMeasureMode == Bath_Mode) || sActual.Actual_Start)
777                     _TempDetecting_Display:	;Function start
778 06E0 [00] [2] 6502      	MVF	_eMeasureMode,0,0
779 06E1 [00] [2] 0303      	XORL	0x03
780 06E2 [00] [2] A02B      	BTSZ	_STATUS,0
781 06E3 [00] [2] 7802      	JMP	_00391_DS_
782 06E4 [00] [2] B171      	BTSS	_sActual,0
783 06E5 [00] [2] 7841      	JMP	_00392_DS_
784                     _00391_DS_:
785                     ;	;.line	879; ".\Source\App_LCD_4718.c"	if(!sADC.UnRefreshTemp)
786 06E6 [00] [2] A943      	BTSZ	_sADC,4
787 06E7 [00] [2] 783D      	JMP	_00387_DS_
788                     ;	;.line	885; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
789 06E8 [00] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
790 06E9 [00] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
791 06EA [01] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
792 06EB [01] [2] CF3C      	CALL	_Centigrade_Convert_Fahrenheit
793 06EC [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
794 06EE [00] [2] 6420      	MVF	STK00,0,0
795 06EF [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
796                     ;	;.line	888; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
797 06F0 [00] [2] 065A      	MVL	0x5a
798 06F1 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
799 06F3 [00] [1] 7819      	JMP	_00384_DS_
800                     ;	;.line	891; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
801 06F4 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
802 06F6 [00] [2] 04D9      	ADDL	0xd9
803 06F7 [00] [2] 06EE      	MVL	0xee
804 06F8 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
805 06F9 [00] [2] B82B      	BTSS	_STATUS,4
806 06FA [00] [2] 7803      	JMP	_00373_DS_
807                     ;	;.line	894; ".\Source\App_LCD_4718.c"	Disp_Hi();
808 06FB [00] [2] CDB5      	CALL	_Disp_Hi
809                     ;	;.line	896; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
810 06FC [00] [1] CD0C      	CALL	_EMC_Update_Temp_Fast
811                     	.CHKPARA _EMC_Update_Temp_Fast 0
812 06FD [00] [1] 7827      	JMP	_00387_DS_
813                     _00373_DS_:
814                     ;	;.line	899; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
815 06FE [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
816 06FF [00] [2] 0480      	ADDL	0x80
817 0700 [00] [2] 06F3      	MVL	0xf3
818 0701 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
819 0702 [00] [2] A82B      	BTSZ	_STATUS,4
820 0703 [00] [2] 7802      	JMP	_00370_DS_
821                     ;	;.line	909; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
822 0704 [00] [2] CDB8      	CALL	_Disp_StaticDash
823 0705 [00] [1] 781F      	JMP	_00387_DS_
824                     _00370_DS_:
825                     ;	;.line	915; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
826 0706 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
827 0707 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
828 0708 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
829 0709 [01] [2] CDCD      	CALL	_DispNum
830                     ;	;.line	917; ".\Source\App_LCD_4718.c"	LCD_Point_En();
831 070A [00] [1] 9D8A      	BSF	_LCD2,6
832                     ;	;.line	919; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
833 070B [00] [1] CCFD      	CALL	_EMC_Update_Temp_Fast
834 070C [00] [1] 7818      	JMP	_00387_DS_
835                     _00384_DS_:
836                     ;	;.line	923; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
837 070D [00] [1] 06A5      	MVL	0xa5
838 070E [00] [1] 6D7F      	CPSE	_eTempUnit,0
839 070F [00] [1] 7815      	JMP	_00387_DS_
840                     ;	;.line	926; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
841 0710 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
842 0712 [00] [2] 04A3      	ADDL	0xa3
843 0713 [00] [2] 06D4      	MVL	0xd4
844 0714 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
845 0715 [00] [2] B82B      	BTSS	_STATUS,4
846 0716 [00] [2] 7803      	JMP	_00379_DS_
847                     ;	;.line	929; ".\Source\App_LCD_4718.c"	Disp_Hi();
848 0717 [00] [2] CD99      	CALL	_Disp_Hi
849                     ;	;.line	931; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
850 0718 [00] [1] CCF0      	CALL	_EMC_Update_Temp_Fast
851 0719 [00] [1] 780B      	JMP	_00387_DS_
852                     _00379_DS_:
853                     ;	;.line	934; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
854 071A [00] [2] 0623      	MVL	0x23
855 071B [00] [2] 6BA5      	CPSL	(_sActual_Forecast + 6),0
856 071C [00] [2] 7802      	JMP	_00376_DS_
857                     ;	;.line	944; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
858 071D [00] [2] CD9F      	CALL	_Disp_StaticDash
859 071E [00] [1] 7806      	JMP	_00387_DS_
860                     _00376_DS_:
861                     ;	;.line	950; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
862 071F [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
863 0720 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
864 0721 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
865 0722 [01] [2] CDB4      	CALL	_DispNum
866                     ;	;.line	952; ".\Source\App_LCD_4718.c"	LCD_Point_En();
867 0723 [00] [1] 9D8A      	BSF	_LCD2,6
868                     ;	;.line	954; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
869 0724 [00] [1] CCE4      	CALL	_EMC_Update_Temp_Fast
870                     _00387_DS_:
871                     ;	;.line	959; ".\Source\App_LCD_4718.c"	Disp_UnitFlash();
872 0725 [00] [X] CCB2      	CALL	_Disp_UnitFlash
873 0726 [00] [1] 7807      	JMP	_00393_DS_
874                     _00392_DS_:
875                     ;	;.line	963; ".\Source\App_LCD_4718.c"	if(sForecast.Forecast_Start)
876 0727 [00] [2] B176      	BTSS	_sForecast,0
877 0728 [00] [2] 7803      	JMP	_00389_DS_
878                     ;	;.line	965; ".\Source\App_LCD_4718.c"	Disp_DynamicDash();
879 0729 [00] [2] CCCB      	CALL	_Disp_DynamicDash
880                     	.CHKPARA _Disp_DynamicDash 0
881                     ;	;.line	966; ".\Source\App_LCD_4718.c"	Disp_DynamicForecastSymbol();
882 072A [00] [1] CCDD      	CALL	_Disp_DynamicForecastSymbol
883                     	.CHKPARA _Disp_DynamicForecastSymbol 0
884 072B [00] [1] 7801      	JMP	_00390_DS_
885                     _00389_DS_:
886                     ;	;.line	971; ".\Source\App_LCD_4718.c"	Disp_StaticDash();
887 072C [00] [2] CD90      	CALL	_Disp_StaticDash
888                     _00390_DS_:
889                     ;	;.line	975; ".\Source\App_LCD_4718.c"	DispUnit();
890 072D [00] [1] CEEE      	CALL	_DispUnit
891                     _00393_DS_:
892                     ;	;.line	978; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
893 072E [00] [1] 7C86      	CALL	_Disp_BleSymbol
894                     ;	;.line	979; ".\Source\App_LCD_4718.c"	}
895                     	RET	
896                     ; exit point of _TempDetecting_Display
897                     	.ENDFUNC	_TempDetecting_Display
898                     ;--------------------------------------------------------
899                     
900                     .globl _EMC_Update_Temp_Fast
901                     
902                     ;--------------------------------------------------------
903                     	.FUNC _EMC_Update_Temp_Fast:$r:0:0
904                     ;--------------------------------------------------------
905                     ;	;.line	862; ".\Source\App_LCD_4718.c"	}
906                     _EMC_Update_Temp_Fast:	;Function start
907 0409 [00] [Y] 000A      	RET	
908                     ; exit point of _EMC_Update_Temp_Fast
909                     	.ENDFUNC	_EMC_Update_Temp_Fast
910                     ;--------------------------------------------------------
911                     
912                     .globl _Binding_Display
913                     
914                     ;--------------------------------------------------------
915                     	.FUNC _Binding_Display:$r:0:0:$C:_Disp_Version:$C:_Disp_Code\
916                     
917                     ;--------------------------------------------------------
918                     ;	;.line	827; ".\Source\App_LCD_4718.c"	if(eVersionCode == VC_DispOn)
919                     _Binding_Display:	;Function start
920 03A7 [00] [2] 4D01      	RRF	_eVersionCode,0,0
921 03A8 [00] [2] A02B      	BTSZ	_STATUS,0
922 03A9 [00] [2] 780A      	JMP	_00360_DS_
923                     ;	;.line	829; ".\Source\App_LCD_4718.c"	if(sTIMx.BindingSymbolFlash)
924 03AA [00] [2] BFCC      	BTSS	_sTIMx,7
925 03AB [00] [2] 7803      	JMP	_00356_DS_
926                     ;	;.line	832; ".\Source\App_LCD_4718.c"	Disp_Version(Soft_External_Version);
927 03AC [00] [2] 060B      	MVL	0x0b
928 03AD [00] [2] CF10      	CALL	_Disp_Version
929                     	.CHKPARA _Disp_Version 1
930 03AE [00] [1] 7805      	JMP	_00360_DS_
931                     _00356_DS_:
932                     ;	;.line	837; ".\Source\App_LCD_4718.c"	Disp_Code(Soft_Code);
933 03AF [00] [2] 06AA      	MVL	0xaa
934 03B0 [00] [2] 660D      	MVF	_Disp_Code_STK00,1,0
935 03B1 [01] [2] 0601      	MVL	0x01
936 03B2 [01] [2] C001 F564 	CALL	_Disp_Code
937                     	.CHKPARA _Disp_Code 2
938                     _00360_DS_:
939                     ;	;.line	840; ".\Source\App_LCD_4718.c"	}
940 03B4 [00] [X] 000A      	RET	
941                     ; exit point of _Binding_Display
942                     	.ENDFUNC	_Binding_Display
943                     ;--------------------------------------------------------
944                     
945                     .globl _ModeExchange_Display
946                     
947                     ;--------------------------------------------------------
948                     	.FUNC _ModeExchange_Display:$r:0:0:$C:_CurrentMode_Display:$C:_Disp_Nothing\
949                     
950                     ;--------------------------------------------------------
951                     ;	;.line	807; ".\Source\App_LCD_4718.c"	if(sTIMx.ModeSymbolFlash || sTIMx.EnableModeSymbolFlash)
952                     _ModeExchange_Display:	;Function start
953 039E [00] [2] A7CC      	BTSZ	_sTIMx,3
954 039F [00] [2] 7802      	JMP	_00346_DS_
955 03A0 [00] [2] B9CC      	BTSS	_sTIMx,4
956 03A1 [00] [2] 7803      	JMP	_00347_DS_
957                     _00346_DS_:
958                     ;	;.line	810; ".\Source\App_LCD_4718.c"	CurrentMode_Display();
959 03A2 [00] [2] C001 F3C9 	CALL	_CurrentMode_Display
960                     	.CHKPARA _CurrentMode_Display 0
961 03A4 [00] [X] 7801      	JMP	_00350_DS_
962                     _00347_DS_:
963                     ;	;.line	815; ".\Source\App_LCD_4718.c"	Disp_Nothing();
964 03A5 [00] [2] CA34      	CALL	_Disp_Nothing
965                     _00350_DS_:
966                     ;	;.line	817; ".\Source\App_LCD_4718.c"	}
967 03A6 [00] [X] 000A      	RET	
968                     ; exit point of _ModeExchange_Display
969                     	.ENDFUNC	_ModeExchange_Display
970                     ;--------------------------------------------------------
971                     
972                     .globl _CurrentMode_Display
973                     
974                     ;--------------------------------------------------------
975                     	.FUNC _CurrentMode_Display:$r:0:0:$C:_Disp_Orl:$C:_Disp_Udr:$C:_Disp_Rct:$C:_Disp_Bth\
976                     
977                     ;--------------------------------------------------------
978                     ;	;.line	765; ".\Source\App_LCD_4718.c"	if(eMeasureMode == Oral_Mode)
979                     _CurrentMode_Display:	;Function start
980 13C9 [00] [2] 6F02      	TFSZ	_eMeasureMode,0
981 13CA [00] [2] 7802      	JMP	_00339_DS_
982                     ;	;.line	768; ".\Source\App_LCD_4718.c"	Disp_Orl();
983 13CB [00] [2] C837      	CALL	_Disp_Orl
984                     	.CHKPARA _Disp_Orl 0
985 13CC [00] [1] 780D      	JMP	_00341_DS_
986                     _00339_DS_:
987                     ;	;.line	771; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Underarm_Mode)
988 13CD [00] [2] 3502      	DCSZ	_eMeasureMode,0,0
989 13CE [00] [2] 7802      	JMP	_00336_DS_
990                     ;	;.line	774; ".\Source\App_LCD_4718.c"	Disp_Udr();
991 13CF [00] [2] C826      	CALL	_Disp_Udr
992                     	.CHKPARA _Disp_Udr 0
993 13D0 [00] [1] 7809      	JMP	_00341_DS_
994                     _00336_DS_:
995                     ;	;.line	777; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Rectal_Mode)
996 13D1 [00] [2] 0602      	MVL	0x02
997 13D2 [00] [2] 6D02      	CPSE	_eMeasureMode,0
998 13D3 [00] [2] 7802      	JMP	_00333_DS_
999                     ;	;.line	780; ".\Source\App_LCD_4718.c"	Disp_Rct();
1000 13D4 [00] [2] C814      	CALL	_Disp_Rct
1001                     	.CHKPARA _Disp_Rct 0
1002 13D5 [00] [1] 7804      	JMP	_00341_DS_
1003                     _00333_DS_:
1004                     ;	;.line	783; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Bath_Mode)
1005 13D6 [00] [2] 0603      	MVL	0x03
1006 13D7 [00] [2] 6D02      	CPSE	_eMeasureMode,0
1007 13D8 [00] [2] 7801      	JMP	_00341_DS_
1008                     ;	;.line	786; ".\Source\App_LCD_4718.c"	Disp_Bth();
1009 13D9 [00] [2] C801      	CALL	_Disp_Bth
1010                     	.CHKPARA _Disp_Bth 0
1011                     _00341_DS_:
1012                     ;	;.line	788; ".\Source\App_LCD_4718.c"	}
1013 13DA [00] [X] 000A      	RET	
1014                     ; exit point of _CurrentMode_Display
1015                     	.ENDFUNC	_CurrentMode_Display
1016                     ;--------------------------------------------------------
1017                     
1018                     .globl _MemTempValue_Display
1019                     
1020                     ;--------------------------------------------------------
1021                     	.FUNC _MemTempValue_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
1022                     :$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\
1023                     
1024                     ;--------------------------------------------------------
1025                     ;	;.line	667; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
1026                     _MemTempValue_Display:	;Function start
1027 1A0C [00] [2] 65C8      	MVF	(_sMemoryFlag + 2),0,0
1028 1A0D [00] [2] 0702      	MULL	0x02
1029 1A0E [00] [2] 000C F2B2 	LDPR	(_sMemory + 3),0
1030 1A10 [00] [2] 6422      	MVF	_PRODL,0,0
1031 1A11 [00] [2] D004 F020 	MVFF	_PLUSW0,STK00
1032 1A13 [00] [2] 3829      	INF	_WREG,0,0
1033 1A14 [00] [2] D004 F01F 	MVFF	_PLUSW0,STK01
1034 1A16 [00] [2] D020 F00D 	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
1035 1A18 [01] [2] 641F      	MVF	STK01,0,0
1036 1A19 [01] [2] C000 F628 	CALL	_Centigrade_Convert_Fahrenheit
1037 1A1B [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
1038 1A1D [00] [2] 6420      	MVF	STK00,0,0
1039 1A1E [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
1040                     ;	;.line	668; ".\Source\App_LCD_4718.c"	if(!sMemory.MemTempSum)
1041 1A1F [00] [2] 6FB1      	TFSZ	(_sMemory + 2),0
1042 1A20 [00] [2] 7803      	JMP	_00324_DS_
1043                     ;	;.line	675; ".\Source\App_LCD_4718.c"	Disp_StaticDash();
1044 1A21 [00] [2] C000 F4BD 	CALL	_Disp_StaticDash
1045 1A23 [00] [1] 783D      	JMP	_00325_DS_
1046                     _00324_DS_:
1047                     ;	;.line	681; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1048 1A24 [00] [2] 065A      	MVL	0x5a
1049 1A25 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1050 1A27 [00] [1] 781A      	JMP	_00321_DS_
1051                     ;	;.line	683; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
1052 1A28 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1053 1A2A [00] [2] 04D9      	ADDL	0xd9
1054 1A2B [00] [2] 06EE      	MVL	0xee
1055 1A2C [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1056 1A2D [00] [2] B82B      	BTSS	_STATUS,4
1057 1A2E [00] [2] 7803      	JMP	_00310_DS_
1058                     ;	;.line	685; ".\Source\App_LCD_4718.c"	Disp_Hi();
1059 1A2F [00] [2] C000 F4B1 	CALL	_Disp_Hi
1060 1A31 [00] [1] 7829      	JMP	_00322_DS_
1061                     _00310_DS_:
1062                     ;	;.line	687; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
1063 1A32 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1064 1A33 [00] [2] 0480      	ADDL	0x80
1065 1A34 [00] [2] 06F3      	MVL	0xf3
1066 1A35 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1067 1A36 [00] [2] A82B      	BTSZ	_STATUS,4
1068 1A37 [00] [2] 7803      	JMP	_00307_DS_
1069                     ;	;.line	697; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1070 1A38 [00] [2] C000 F4BD 	CALL	_Disp_StaticDash
1071 1A3A [00] [1] 7820      	JMP	_00322_DS_
1072                     _00307_DS_:
1073                     ;	;.line	703; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1074 1A3B [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1075 1A3C [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1076 1A3D [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1077 1A3E [01] [2] C000 F4D7 	CALL	_DispNum
1078                     ;	;.line	705; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1079 1A40 [00] [1] 9D8A      	BSF	_LCD2,6
1080 1A41 [00] [1] 7819      	JMP	_00322_DS_
1081                     _00321_DS_:
1082                     ;	;.line	709; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1083 1A42 [00] [1] 06A5      	MVL	0xa5
1084 1A43 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1085 1A44 [00] [1] 7816      	JMP	_00322_DS_
1086                     ;	;.line	711; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
1087 1A45 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1088 1A47 [00] [2] 04A3      	ADDL	0xa3
1089 1A48 [00] [2] 06D4      	MVL	0xd4
1090 1A49 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1091 1A4A [00] [2] B82B      	BTSS	_STATUS,4
1092 1A4B [00] [2] 7803      	JMP	_00316_DS_
1093                     ;	;.line	713; ".\Source\App_LCD_4718.c"	Disp_Hi();
1094 1A4C [00] [2] C000 F4B1 	CALL	_Disp_Hi
1095 1A4E [00] [1] 780C      	JMP	_00322_DS_
1096                     _00316_DS_:
1097                     ;	;.line	715; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
1098 1A4F [00] [2] 0623      	MVL	0x23
1099 1A50 [00] [2] 6BA5      	CPSL	(_sActual_Forecast + 6),0
1100 1A51 [00] [2] 7803      	JMP	_00313_DS_
1101                     ;	;.line	725; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1102 1A52 [00] [2] C000 F4BD 	CALL	_Disp_StaticDash
1103 1A54 [00] [1] 7806      	JMP	_00322_DS_
1104                     _00313_DS_:
1105                     ;	;.line	731; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1106 1A55 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1107 1A56 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1108 1A57 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1109 1A58 [01] [2] C000 F4D7 	CALL	_DispNum
1110                     ;	;.line	733; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1111 1A5A [00] [1] 9D8A      	BSF	_LCD2,6
1112                     _00322_DS_:
1113                     ;	;.line	740; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
1114 1A5B [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1115 1A5D [00] [2] 660D      	MVF	_DispDelta_STK00,1,0
1116 1A5E [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1117 1A5F [01] [2] C000 F5E3 	CALL	_DispDelta
1118                     _00325_DS_:
1119                     ;	;.line	750; ".\Source\App_LCD_4718.c"	DispUnit();
1120 1A61 [00] [1] C000 F61C 	CALL	_DispUnit
1121                     ;	;.line	752; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
1122 1A63 [00] [1] 958B      	BSF	_LCD3,2
1123                     ;	;.line	754; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1124 1A64 [00] [1] C200 F3B5 	CALL	_Disp_BleSymbol
1125                     ;	;.line	755; ".\Source\App_LCD_4718.c"	}
1126                     	RET	
1127                     ; exit point of _MemTempValue_Display
1128                     	.ENDFUNC	_MemTempValue_Display
1129                     ;--------------------------------------------------------
1130                     
1131                     .globl _MemTempNumber_Display
1132                     
1133                     ;--------------------------------------------------------
1134                     	.FUNC _MemTempNumber_Display:$r:0:0:$C:_DispNum:$C:_Disp_BleSymbol\
1135                     :$L:r0x10C7
1136                     ;--------------------------------------------------------
1137                     ;	;.line	615; ".\Source\App_LCD_4718.c"	if(sMemoryFlag.Update_MemTempDispNo)
1138 0373 [00] [2] C481      _MemTempNumber_Display:	;Function start
1139 0374 [01] [2] B9C6      	BTSS	_sMemoryFlag,4
1140 0375 [01] [2] 7807      	JMP	_00290_DS_
1141                     ;	;.line	617; ".\Source\App_LCD_4718.c"	sMemoryFlag.Update_MemTempDispNo = FALSE;
1142 0376 [01] [2] 89C6      	BCF	_sMemoryFlag,4
1143                     ;	;.line	619; ".\Source\App_LCD_4718.c"	if(++sMemoryFlag.MemTempDispNo > sMemory.MemTempSum)
1144 0377 [01] [2] 3BC7      	INF	(_sMemoryFlag + 1),1,0
1145 0378 [01] [2] 65C7      	MVF	(_sMemoryFlag + 1),0,0
1146 0379 [01] [2] 6BB1      	CPSL	(_sMemory + 2),0
1147 037A [01] [2] 7802      	JMP	_00290_DS_
1148                     ;	;.line	621; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispNo = 1;
1149 037B [01] [2] 0601      	MVL	0x01
1150 037C [01] [2] 67C7      	MVF	(_sMemoryFlag + 1),1,0
1151                     _00290_DS_:
1152                     ;	;.line	625; ".\Source\App_LCD_4718.c"	if(sMemoryFlag.Update_MemTempDispVlaue)
1153 037D [01] [2] BBC6      	BTSS	_sMemoryFlag,5
1154 037E [01] [2] 7817      	JMP	_00301_DS_
1155                     ;	;.line	627; ".\Source\App_LCD_4718.c"	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
1156 037F [01] [2] 8BC6      	BCF	_sMemoryFlag,5
1157                     ;	;.line	628; ".\Source\App_LCD_4718.c"	if(sMemory.MemTempSum == MemTempNum/*10*/)
1158 0380 [01] [2] 060A      	MVL	0x0a
1159 0381 [01] [2] 6DB1      	CPSE	(_sMemory + 2),0
1160 0382 [01] [2] 780A      	JMP	_00298_DS_
1161                     ;	;.line	630; ".\Source\App_LCD_4718.c"	if(!sMemoryFlag.MemTempDispValue)
1162 0383 [01] [2] 65C8      	MVF	(_sMemoryFlag + 2),0,0
1163 0384 [01] [2] 6680      	MVF	r0x10C7,1,0
1164 0385 [01] [2] 6E29      	TFSZ	_WREG,0
1165 0386 [01] [2] 7803      	JMP	_00292_DS_
1166                     ;	;.line	632; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispValue = MemTempNum - 1/*9*/;
1167 0387 [01] [2] 0609      	MVL	0x09
1168 0388 [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1169 0389 [01] [2] 780C      	JMP	_00301_DS_
1170                     _00292_DS_:
1171                     ;	;.line	636; ".\Source\App_LCD_4718.c"	--sMemoryFlag.MemTempDispValue;
1172 038A [01] [2] 3080      	DCF	r0x10C7,0,0
1173 038B [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1174 038C [01] [2] 7809      	JMP	_00301_DS_
1175                     _00298_DS_:
1176                     ;	;.line	641; ".\Source\App_LCD_4718.c"	if(!sMemoryFlag.MemTempDispValue)
1177 038D [01] [2] 65C8      	MVF	(_sMemoryFlag + 2),0,0
1178 038E [01] [2] 6680      	MVF	r0x10C7,1,0
1179 038F [01] [2] 6E29      	TFSZ	_WREG,0
1180 0390 [01] [2] 7803      	JMP	_00295_DS_
1181                     ;	;.line	643; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
1182 0391 [01] [2] 65B0      	MVF	(_sMemory + 1),0,0
1183 0392 [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1184 0393 [01] [2] 7802      	JMP	_00301_DS_
1185                     _00295_DS_:
1186                     ;	;.line	647; ".\Source\App_LCD_4718.c"	--sMemoryFlag.MemTempDispValue;
1187 0394 [01] [2] 3080      	DCF	r0x10C7,0,0
1188 0395 [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1189                     _00301_DS_:
1190                     ;	;.line	653; ".\Source\App_LCD_4718.c"	DispNum(sMemoryFlag.MemTempDispNo);
1191 0396 [01] [2] 65C7      	MVF	(_sMemoryFlag + 1),0,0
1192 0397 [01] [2] 660D      	MVF	_DispNum_STK00,1,0
1193 0398 [02] [2] 0600      	MVL	0x00
1194 0399 [02] [2] C93D      	CALL	_DispNum
1195                     ;	;.line	655; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
1196 039A [01] [1] 958B      	BSF	_LCD3,2
1197                     ;	;.line	657; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1198 039B [01] [1] C819      	CALL	_Disp_BleSymbol
1199                     ;	;.line	658; ".\Source\App_LCD_4718.c"	}
1200 039C [01] [1] C4BF 000A 	RET	
1201                     ; exit point of _MemTempNumber_Display
1202                     	.ENDFUNC	_MemTempNumber_Display
1203                     ;--------------------------------------------------------
1204                     
1205                     .globl _RecentTemp_Display
1206                     
1207                     ;--------------------------------------------------------
1208                     	.FUNC _RecentTemp_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
1209                     :$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\
1210                     
1211                     ;--------------------------------------------------------
1212                     ;	;.line	525; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemory.pMemTempBuf]);
1213                     _RecentTemp_Display:	;Function start
1214 1642 [00] [2] 65B0      	MVF	(_sMemory + 1),0,0
1215 1643 [00] [2] 0702      	MULL	0x02
1216 1644 [00] [2] 000C F2B2 	LDPR	(_sMemory + 3),0
1217 1646 [00] [2] 6422      	MVF	_PRODL,0,0
1218 1647 [00] [2] D004 F020 	MVFF	_PLUSW0,STK00
1219 1649 [00] [2] 3829      	INF	_WREG,0,0
1220 164A [00] [2] D004 F01F 	MVFF	_PLUSW0,STK01
1221 164C [00] [2] D020 F00D 	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
1222 164E [01] [2] 641F      	MVF	STK01,0,0
1223 164F [01] [2] C000 F628 	CALL	_Centigrade_Convert_Fahrenheit
1224                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1225 1651 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
1226 1653 [00] [2] 6420      	MVF	STK00,0,0
1227 1654 [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
1228                     ;	;.line	527; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1229 1655 [00] [2] 065A      	MVL	0x5a
1230 1656 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1231 1658 [00] [1] 781A      	JMP	_00281_DS_
1232                     ;	;.line	530; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
1233 1659 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1234 165B [00] [2] 0480      	ADDL	0x80
1235 165C [00] [2] 06F3      	MVL	0xf3
1236 165D [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1237 165E [00] [2] A82B      	BTSZ	_STATUS,4
1238 165F [00] [2] 7803      	JMP	_00270_DS_
1239                     ;	;.line	540; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1240 1660 [00] [2] C000 F4BD 	CALL	_Disp_StaticDash
1241                     	.CHKPARA _Disp_StaticDash 0
1242 1662 [00] [1] 7829      	JMP	_00282_DS_
1243                     _00270_DS_:
1244                     ;	;.line	545; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
1245 1663 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1246 1664 [00] [2] 04D9      	ADDL	0xd9
1247 1665 [00] [2] 06EE      	MVL	0xee
1248 1666 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1249 1667 [00] [2] B82B      	BTSS	_STATUS,4
1250 1668 [00] [2] 7803      	JMP	_00267_DS_
1251                     ;	;.line	547; ".\Source\App_LCD_4718.c"	Disp_Hi();
1252 1669 [00] [2] C000 F4B1 	CALL	_Disp_Hi
1253                     	.CHKPARA _Disp_Hi 0
1254 166B [00] [1] 7820      	JMP	_00282_DS_
1255                     _00267_DS_:
1256                     ;	;.line	552; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1257 166C [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1258 166D [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1259 166E [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1260 166F [01] [2] C000 F4D7 	CALL	_DispNum
1261                     	.CHKPARA _DispNum 2
1262                     ;	;.line	554; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1263 1671 [00] [1] 9D8A      	BSF	_LCD2,6
1264 1672 [00] [1] 7819      	JMP	_00282_DS_
1265                     _00281_DS_:
1266                     ;	;.line	558; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1267 1673 [00] [1] 06A5      	MVL	0xa5
1268 1674 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1269 1675 [00] [1] 7816      	JMP	_00282_DS_
1270                     ;	;.line	561; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
1271 1676 [00] [1] 0623      	MVL	0x23
1272 1677 [00] [2] 0012 6BA5 	CPSL	(_sActual_Forecast + 6),0
1273 1679 [00] [2] 7803      	JMP	_00276_DS_
1274                     ;	;.line	571; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1275 167A [00] [2] C000 F4BD 	CALL	_Disp_StaticDash
1276 167C [00] [1] 780F      	JMP	_00282_DS_
1277                     _00276_DS_:
1278                     ;	;.line	575; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
1279 167D [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1280 167E [00] [2] 04A3      	ADDL	0xa3
1281 167F [00] [2] 06D4      	MVL	0xd4
1282 1680 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1283 1681 [00] [2] B82B      	BTSS	_STATUS,4
1284 1682 [00] [2] 7803      	JMP	_00273_DS_
1285                     ;	;.line	577; ".\Source\App_LCD_4718.c"	Disp_Hi();
1286 1683 [00] [2] C000 F4B1 	CALL	_Disp_Hi
1287 1685 [00] [1] 7806      	JMP	_00282_DS_
1288                     _00273_DS_:
1289                     ;	;.line	582; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1290 1686 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1291 1687 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1292 1688 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1293 1689 [01] [2] C000 F4D7 	CALL	_DispNum
1294                     ;	;.line	584; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1295 168B [00] [1] 9D8A      	BSF	_LCD2,6
1296                     _00282_DS_:
1297                     ;	;.line	591; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
1298 168C [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1299 168E [00] [2] 660D      	MVF	_DispDelta_STK00,1,0
1300 168F [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1301 1690 [01] [2] C000 F5E3 	CALL	_DispDelta
1302                     	.CHKPARA _DispDelta 2
1303                     ;	;.line	600; ".\Source\App_LCD_4718.c"	DispUnit();
1304 1692 [00] [1] C000 F61C 	CALL	_DispUnit
1305                     	.CHKPARA _DispUnit 0
1306                     ;	;.line	602; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
1307 1694 [00] [1] 958B      	BSF	_LCD3,2
1308                     ;	;.line	604; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1309 1695 [00] [1] C200 F3B5 	CALL	_Disp_BleSymbol
1310                     ;	;.line	605; ".\Source\App_LCD_4718.c"	}
1311                     	RET	
1312                     ; exit point of _RecentTemp_Display
1313                     	.ENDFUNC	_RecentTemp_Display
1314                     ;--------------------------------------------------------
1315                     
1316                     .globl _CalibrationOK_Display
1317                     
1318                     ;--------------------------------------------------------
1319                     	.FUNC _CalibrationOK_Display:$r:0:0:$C:_Disp_End:$C:_Disp_BleSymbol\
1320                     
1321                     ;--------------------------------------------------------
1322                     ;	;.line	513; ".\Source\App_LCD_4718.c"	Disp_End();
1323                     _CalibrationOK_Display:	;Function start
1324 1B63 [00] [2] C000 F4C9 	CALL	_Disp_End
1325                     	.CHKPARA _Disp_End 0
1326                     ;	;.line	515; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1327 1B65 [00] [1] C200 F3B5 	CALL	_Disp_BleSymbol
1328                     ;	;.line	516; ".\Source\App_LCD_4718.c"	}
1329                     	RET	
1330                     ; exit point of _CalibrationOK_Display
1331                     	.ENDFUNC	_CalibrationOK_Display
1332                     ;--------------------------------------------------------
1333                     
1334                     .globl _Calibration_Display
1335                     
1336                     ;--------------------------------------------------------
1337                     	.FUNC _Calibration_Display:$r:0:0:$C:_memchrn:$C:_Disp_CAL:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
1338                     :$C:_LCD_Clear_Register:$C:_LCD_Configuration\
1339                     
1340                     ;--------------------------------------------------------
1341                     ;	;.line	460; ".\Source\App_LCD_4718.c"	if(!memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
1342                     _Calibration_Display:	;Function start
1343 0344 [00] [2] 0609      	MVL	0x09
1344 0345 [00] [2] 660D      	MVF	_memchrn_STK02,1,0
1345 0346 [01] [2] 0601      	MVL	0x01
1346 0347 [01] [2] 660D      	MVF	_memchrn_STK01,1,0
1347 0348 [02] [2] 0635      	MVL	(_ERR + 0)
1348 0349 [02] [2] 660D      	MVF	_memchrn_STK00,1,0
1349 034A [03] [2] 0602      	MVL	high (_ERR + 0)
1350 034B [03] [2] C001 F01E 	CALL	_memchrn
1351                     	.CHKPARA _memchrn 4
1352 034D [00] [2] 6E29      	TFSZ	_WREG,0
1353 034E [00] [2] 7804      	JMP	_00252_DS_
1354 034F [00] [2] B390      	BTSS	_sTempCal,1
1355 0350 [00] [2] 7802      	JMP	_00252_DS_
1356                     ;	;.line	465; ".\Source\App_LCD_4718.c"	sTempCal.Enable_BIE_Write = TRUE;
1357 0351 [00] [2] 9590      	BSF	_sTempCal,2
1358 0352 [00] [2] 7816      	JMP	_00253_DS_
1359                     _00252_DS_:
1360                     ;	;.line	467; ".\Source\App_LCD_4718.c"	else if(memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
1361 0353 [00] [2] 0609      	MVL	0x09
1362 0354 [00] [2] 660D      	MVF	_memchrn_STK02,1,0
1363 0355 [01] [2] 0601      	MVL	0x01
1364 0356 [01] [2] 660D      	MVF	_memchrn_STK01,1,0
1365 0357 [02] [2] 0635      	MVL	(_ERR + 0)
1366 0358 [02] [2] 660D      	MVF	_memchrn_STK00,1,0
1367 0359 [03] [2] 0602      	MVL	high (_ERR + 0)
1368 035A [03] [2] C001 F01E 	CALL	_memchrn
1369 035C [00] [2] 0200      	IORL	0x00
1370 035D [00] [2] A02B      	BTSZ	_STATUS,0
1371 035E [00] [2] 7804      	JMP	_00248_DS_
1372 035F [00] [2] B390      	BTSS	_sTempCal,1
1373 0360 [00] [2] 7802      	JMP	_00248_DS_
1374                     ;	;.line	470; ".\Source\App_LCD_4718.c"	sTempCal.BIE_Write_Action = TRUE;
1375 0361 [00] [2] 9790      	BSF	_sTempCal,3
1376 0362 [00] [2] 7806      	JMP	_00253_DS_
1377                     _00248_DS_:
1378                     ;	;.line	475; ".\Source\App_LCD_4718.c"	if(sTIMx.CalSymbolFlash)
1379 0363 [00] [2] BBCC      	BTSS	_sTIMx,5
1380 0364 [00] [2] 7802      	JMP	_00245_DS_
1381                     ;	;.line	478; ".\Source\App_LCD_4718.c"	Disp_CAL();
1382 0365 [00] [2] CFAB      	CALL	_Disp_CAL
1383                     	.CHKPARA _Disp_CAL 0
1384 0366 [00] [1] 7801      	JMP	_00246_DS_
1385                     _00245_DS_:
1386                     ;	;.line	483; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1387 0367 [00] [2] CA72      	CALL	_Disp_Nothing
1388                     _00246_DS_:
1389                     ;	;.line	486; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1390 0368 [00] [1] C84C      	CALL	_Disp_BleSymbol
1391                     _00253_DS_:
1392                     ;	;.line	490; ".\Source\App_LCD_4718.c"	if(sTempCal.BIE_Write_Action)
1393 0369 [00] [2] 0012 B790 	BTSS	_sTempCal,3
1394 036B [00] [2] 7806      	JMP	_00257_DS_
1395                     ;	;.line	496; ".\Source\App_LCD_4718.c"	LCD_Clear_Register();
1396 036C [00] [2] CF48      	CALL	_LCD_Clear_Register
1397                     	.CHKPARA _LCD_Clear_Register 0
1398                     ;	;.line	499; ".\Source\App_LCD_4718.c"	LCD_Configuration();
1399 036D [00] [1] C001 FB4C 	CALL	_LCD_Configuration
1400                     	.CHKPARA _LCD_Configuration 0
1401                     ;	;.line	501; ".\Source\App_LCD_4718.c"	sTempCal.Reopen_LCD = TRUE;
1402 036F [00] [1] 000C F290 	LDPR	(_sTempCal + 0),0x00
1403 0371 [00] [1] 9800      	BSF	_INDF0,4
1404                     _00257_DS_:
1405                     ;	;.line	503; ".\Source\App_LCD_4718.c"	}
1406 0372 [00] [X] 000A      	RET	
1407                     ; exit point of _Calibration_Display
1408                     	.ENDFUNC	_Calibration_Display
1409                     ;--------------------------------------------------------
1410                     
1411                     .globl _PreCalibration_Display
1412                     
1413                     ;--------------------------------------------------------
1414                     	.FUNC _PreCalibration_Display:$r:0:0:$C:_Disp_UnitFlash\
1415                     
1416                     ;--------------------------------------------------------
1417                     ;	;.line	446; ".\Source\App_LCD_4718.c"	Disp_UnitFlash();
1418                     _PreCalibration_Display:	;Function start
1419 146B [00] [2] C200 F3D8 	CALL	_Disp_UnitFlash
1420                     	.CHKPARA _Disp_UnitFlash 0
1421                     ;	;.line	448; ".\Source\App_LCD_4718.c"	}
1422                     	RET	
1423                     ; exit point of _PreCalibration_Display
1424                     	.ENDFUNC	_PreCalibration_Display
1425                     ;--------------------------------------------------------
1426                     
1427                     .globl _Off_Display
1428                     
1429                     ;--------------------------------------------------------
1430                     	.FUNC _Off_Display:$r:0:0:$C:_Disp_Nothing:$C:_Disp_Off:$C:_Disp_BleSymbol\
1431                     
1432                     ;--------------------------------------------------------
1433                     ;	;.line	426; ".\Source\App_LCD_4718.c"	if(sButton.Flag_Button_Lift_Once)
1434                     _Off_Display:	;Function start
1435 033D [00] [2] BB05      	BTSS	_sButton,5
1436 033E [00] [2] 7802      	JMP	_00233_DS_
1437                     ;	;.line	429; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1438 033F [00] [2] CA9A      	CALL	_Disp_Nothing
1439 0340 [00] [1] 7802      	JMP	_00235_DS_
1440                     _00233_DS_:
1441                     ;	;.line	433; ".\Source\App_LCD_4718.c"	Disp_Off();
1442 0341 [00] [2] CFE6      	CALL	_Disp_Off
1443                     	.CHKPARA _Disp_Off 0
1444                     ;	;.line	435; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1445 0342 [00] [1] C872      	CALL	_Disp_BleSymbol
1446                     _00235_DS_:
1447                     ;	;.line	437; ".\Source\App_LCD_4718.c"	}
1448 0343 [00] [1] 000A      	RET	
1449                     ; exit point of _Off_Display
1450                     	.ENDFUNC	_Off_Display
1451                     ;--------------------------------------------------------
1452                     
1453                     .globl _UnitExchange_Display
1454                     
1455                     ;--------------------------------------------------------
1456                     	.FUNC _UnitExchange_Display:$r:0:0:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
1457                     
1458                     ;--------------------------------------------------------
1459                     ;	;.line	371; ".\Source\App_LCD_4718.c"	if(!UnitExchangeCompleted)
1460                     _UnitExchange_Display:	;Function start
1461 16B6 [00] [2] 6F34      	TFSZ	_UnitExchangeCompleted,0
1462 16B7 [00] [2] 7816      	JMP	_00226_DS_
1463                     ;	;.line	374; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1464 16B8 [00] [2] C000 F5DA 	CALL	_Disp_Nothing
1465                     ;	;.line	376; ".\Source\App_LCD_4718.c"	UnitExchangeCompleted = TRUE;
1466 16BA [00] [1] 0601      	MVL	0x01
1467 16BB [00] [2] 0012 6734 	MVF	_UnitExchangeCompleted,1,0
1468                     ;	;.line	378; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1469 16BD [00] [2] 065A      	MVL	0x5a
1470 16BE [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1471 16C0 [00] [1] 7805      	JMP	_00218_DS_
1472                     ;	;.line	381; ".\Source\App_LCD_4718.c"	eTempUnit = Fahrenheit;
1473 16C1 [00] [1] 06A5      	MVL	0xa5
1474 16C2 [00] [1] 677F      	MVF	_eTempUnit,1,0
1475                     ;	;.line	383; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
1476 16C3 [00] [1] 0603      	MVL	0x03
1477 16C4 [00] [1] 2F8D      	IORF	_LCD5,1,0
1478 16C5 [00] [1] 7815      	JMP	_00227_DS_
1479                     _00218_DS_:
1480                     ;	;.line	386; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1481 16C6 [00] [1] 06A5      	MVL	0xa5
1482 16C7 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1483 16C8 [00] [1] 7812      	JMP	_00227_DS_
1484                     ;	;.line	389; ".\Source\App_LCD_4718.c"	eTempUnit = Centigrade;
1485 16C9 [00] [1] 065A      	MVL	0x5a
1486 16CA [00] [1] 677F      	MVF	_eTempUnit,1,0
1487                     ;	;.line	391; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
1488 16CB [00] [1] 0605      	MVL	0x05
1489 16CC [00] [1] 2F8D      	IORF	_LCD5,1,0
1490 16CD [00] [1] 780D      	JMP	_00227_DS_
1491                     _00226_DS_:
1492                     ;	;.line	397; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1493 16CE [00] [2] C000 F5DA 	CALL	_Disp_Nothing
1494                     ;	;.line	400; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1495 16D0 [00] [1] 065A      	MVL	0x5a
1496 16D1 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1497 16D2 [00] [1] 7803      	JMP	_00223_DS_
1498                     ;	;.line	403; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
1499 16D3 [00] [1] 0605      	MVL	0x05
1500 16D4 [00] [1] 2F8D      	IORF	_LCD5,1,0
1501 16D5 [00] [1] 7805      	JMP	_00227_DS_
1502                     _00223_DS_:
1503                     ;	;.line	406; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1504 16D6 [00] [1] 06A5      	MVL	0xa5
1505 16D7 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1506 16D8 [00] [1] 7802      	JMP	_00227_DS_
1507                     ;	;.line	409; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
1508 16D9 [00] [1] 0603      	MVL	0x03
1509 16DA [00] [1] 2F8D      	IORF	_LCD5,1,0
1510                     _00227_DS_:
1511                     ;	;.line	416; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1512 16DB [00] [1] C200 F3B5 	CALL	_Disp_BleSymbol
1513                     	.CHKPARA _Disp_BleSymbol 0
1514                     ;	;.line	417; ".\Source\App_LCD_4718.c"	}
1515                     	RET	
1516                     ; exit point of _UnitExchange_Display
1517                     	.ENDFUNC	_UnitExchange_Display
1518                     ;--------------------------------------------------------
1519                     
1520                     .globl _Disp_BleSymbol
1521                     
1522                     ;--------------------------------------------------------
1523                     	.FUNC _Disp_BleSymbol:$r:0:0
1524                     ;--------------------------------------------------------
1525                     ;	;.line	361; ".\Source\App_LCD_4718.c"	}
1526                     _Disp_BleSymbol:	;Function start
1527 03B5 [00] [Y] 000A      	RET	
1528                     ; exit point of _Disp_BleSymbol
1529                     	.ENDFUNC	_Disp_BleSymbol
1530                     ;--------------------------------------------------------
1531                     
1532                     .globl _Disp_DynamicForecastSymbol
1533                     
1534                     ;--------------------------------------------------------
1535                     	.FUNC _Disp_DynamicForecastSymbol:$r:0:0
1536                     ;--------------------------------------------------------
1537                     ;	;.line	337; ".\Source\App_LCD_4718.c"	}
1538                     _Disp_DynamicForecastSymbol:	;Function start
1539 0408 [00] [Y] 000A      	RET	
1540                     ; exit point of _Disp_DynamicForecastSymbol
1541                     	.ENDFUNC	_Disp_DynamicForecastSymbol
1542                     ;--------------------------------------------------------
1543                     
1544                     .globl _Disp_DynamicDash
1545                     
1546                     ;--------------------------------------------------------
1547                     	.FUNC _Disp_DynamicDash:$r:0:0:$C:_Disp_Nothing\
1548                     :$L:r0x10B2
1549                     ;--------------------------------------------------------
1550                     ;	;.line	309; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1551 03F5 [00] [2] C481      _Disp_DynamicDash:	;Function start
1552 03F6 [01] [2] C9E3      	CALL	_Disp_Nothing
1553                     	.CHKPARA _Disp_Nothing 0
1554                     ;	;.line	311; ".\Source\App_LCD_4718.c"	if(sTIMx.TempDetectingSymFlash1Hz == 0)
1555 03F7 [00] [2] 0012 65CE 	MVF	(_sTIMx + 2),0,0
1556 03F9 [01] [2] 6680      	MVF	r0x10B2,1,0
1557 03FA [01] [2] 6E29      	TFSZ	_WREG,0
1558 03FB [01] [2] 7803      	JMP	_00200_DS_
1559                     ;	;.line	314; ".\Source\App_LCD_4718.c"	LCD_Dash1_En();
1560 03FC [00] [1] 0011 9B88 	BSF	_LCD0,5
1561 03FE [01] [1] 7807      	JMP	_00202_DS_
1562                     _00200_DS_:
1563                     ;	;.line	317; ".\Source\App_LCD_4718.c"	else if(sTIMx.TempDetectingSymFlash1Hz == 1)
1564 03FF [01] [2] 3480      	DCSZ	r0x10B2,0,0
1565 0400 [01] [2] 7803      	JMP	_00197_DS_
1566                     ;	;.line	320; ".\Source\App_LCD_4718.c"	LCD_Dash2_En();
1567 0401 [00] [1] 0011 938A 	BSF	_LCD2,1
1568 0403 [01] [1] 7802      	JMP	_00202_DS_
1569                     _00197_DS_:
1570                     ;	;.line	325; ".\Source\App_LCD_4718.c"	LCD_Dash3_En();
1571 0404 [00] [1] 0011 9B8B 	BSF	_LCD3,5
1572 0406 [01] [1] C4BF      _00202_DS_:
1573                     ;	;.line	327; ".\Source\App_LCD_4718.c"	}
1574 0407 [00] [1] 000A      	RET	
1575                     ; exit point of _Disp_DynamicDash
1576                     	.ENDFUNC	_Disp_DynamicDash
1577                     ;--------------------------------------------------------
1578                     
1579                     .globl _Disp_Bat
1580                     
1581                     ;--------------------------------------------------------
1582                     	.FUNC _Disp_Bat:$r:0:0:$C:_Disp_BatFlash\
1583                     
1584                     ;--------------------------------------------------------
1585                     ;	;.line	287; ".\Source\App_LCD_4718.c"	if (sLVD.LVD_Low)
1586                     _Disp_Bat:	;Function start
1587 03B6 [00] [2] 0012 B33E 	BTSS	_sLVD,1
1588 03B8 [00] [2] 7802      	JMP	_00189_DS_
1589                     ;	;.line	290; ".\Source\App_LCD_4718.c"	Disp_BatFlash();
1590 03B9 [00] [2] CF7B      	CALL	_Disp_BatFlash
1591                     	.CHKPARA _Disp_BatFlash 0
1592 03BA [00] [1] 7802      	JMP	_00191_DS_
1593                     _00189_DS_:
1594                     ;	;.line	295; ".\Source\App_LCD_4718.c"	LCD_Bat_En();
1595 03BB [00] [1] 0011 958C 	BSF	_LCD4,2
1596                     _00191_DS_:
1597                     ;	;.line	297; ".\Source\App_LCD_4718.c"	}
1598 03BD [00] [1] 000A      	RET	
1599                     ; exit point of _Disp_Bat
1600                     	.ENDFUNC	_Disp_Bat
1601                     ;--------------------------------------------------------
1602                     
1603                     .globl _Disp_BatFlash
1604                     
1605                     ;--------------------------------------------------------
1606                     	.FUNC _Disp_BatFlash:$r:0:0
1607                     ;--------------------------------------------------------
1608                     ;	;.line	268; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
1609                     _Disp_BatFlash:	;Function start
1610 0335 [00] [2] B1CD      	BTSS	(_sTIMx+1),0
1611 0336 [00] [2] 7803      	JMP	_00181_DS_
1612                     ;	;.line	271; ".\Source\App_LCD_4718.c"	LCD_Bat_En();
1613 0337 [00] [1] 0011 958C 	BSF	_LCD4,2
1614 0339 [00] [1] 7802      	JMP	_00183_DS_
1615                     _00181_DS_:
1616                     ;	;.line	276; ".\Source\App_LCD_4718.c"	LCD_Bat_Clr();
1617 033A [00] [1] 0011 858C 	BCF	_LCD4,2
1618                     _00183_DS_:
1619                     ;	;.line	278; ".\Source\App_LCD_4718.c"	}
1620 033C [00] [1] 000A      	RET	
1621                     ; exit point of _Disp_BatFlash
1622                     	.ENDFUNC	_Disp_BatFlash
1623                     ;--------------------------------------------------------
1624                     
1625                     .globl _Disp_UnitFlash
1626                     
1627                     ;--------------------------------------------------------
1628                     	.FUNC _Disp_UnitFlash:$r:0:0
1629                     ;--------------------------------------------------------
1630                     ;	;.line	228; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1631                     _Disp_UnitFlash:	;Function start
1632 03D8 [00] [X] 065A      	MVL	0x5a
1633 03D9 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1634 03DB [00] [1] 780B      	JMP	_00173_DS_
1635                     ;	;.line	231; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
1636 03DC [00] [2] 0012 B1CD 	BTSS	(_sTIMx+1),0
1637 03DE [00] [2] 7804      	JMP	_00165_DS_
1638                     ;	;.line	234; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
1639 03DF [00] [2] 0605      	MVL	0x05
1640 03E0 [00] [1] 0011 2F8D 	IORF	_LCD5,1,0
1641 03E2 [00] [1] 7811      	JMP	_00175_DS_
1642                     _00165_DS_:
1643                     ;	;.line	239; ".\Source\App_LCD_4718.c"	LCD_Unit_C_Clr();
1644 03E3 [00] [2] 06FA      	MVL	0xfa
1645 03E4 [00] [1] 0011 2B8D 	ANDF	_LCD5,1,0
1646 03E6 [00] [1] 780D      	JMP	_00175_DS_
1647                     _00173_DS_:
1648                     ;	;.line	243; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1649 03E7 [00] [1] 06A5      	MVL	0xa5
1650 03E8 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1651 03E9 [00] [1] 780A      	JMP	_00175_DS_
1652                     ;	;.line	246; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
1653 03EA [00] [2] 0012 B1CD 	BTSS	(_sTIMx+1),0
1654 03EC [00] [2] 7804      	JMP	_00168_DS_
1655                     ;	;.line	249; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
1656 03ED [00] [2] 0603      	MVL	0x03
1657 03EE [00] [1] 0011 2F8D 	IORF	_LCD5,1,0
1658 03F0 [00] [1] 7803      	JMP	_00175_DS_
1659                     _00168_DS_:
1660                     ;	;.line	254; ".\Source\App_LCD_4718.c"	LCD_Unit_F_Clr();
1661 03F1 [00] [2] 06FC      	MVL	0xfc
1662 03F2 [00] [1] 0011 2B8D 	ANDF	_LCD5,1,0
1663                     _00175_DS_:
1664                     ;	;.line	257; ".\Source\App_LCD_4718.c"	}
1665 03F4 [00] [1] 000A      	RET	
1666                     ; exit point of _Disp_UnitFlash
1667                     	.ENDFUNC	_Disp_UnitFlash
1668                     ;--------------------------------------------------------
1669                     
1670                     .globl _Disp_BLEFlash
1671                     
1672                     ;--------------------------------------------------------
1673                     	.FUNC _Disp_BLEFlash:$r:0:0
1674                     ;--------------------------------------------------------
1675                     ;	;.line	208; ".\Source\App_LCD_4718.c"	if(sTIMx.BLESymbolFlash)
1676                     _Disp_BLEFlash:	;Function start
1677                     	BTSS	(_sTIMx+1),1
1678                     	JMP	_00157_DS_
1679                     ;	;.line	211; ".\Source\App_LCD_4718.c"	LCD_BLE_En();
1680                     	BSF	_LCD1,3
1681                     	JMP	_00159_DS_
1682                     _00157_DS_:
1683                     ;	;.line	216; ".\Source\App_LCD_4718.c"	LCD_BLE_Clr();
1684                     	BCF	_LCD1,3
1685                     _00159_DS_:
1686                     ;	;.line	218; ".\Source\App_LCD_4718.c"	}
1687                     	RET	
1688                     ; exit point of _Disp_BLEFlash
1689                     	.ENDFUNC	_Disp_BLEFlash
1690                     ;--------------------------------------------------------
1691                     
1692                     .globl _DispNum
1693                     
1694                     ;--------------------------------------------------------
1695                     	.FUNC _DispNum:$r:0:2:$C:__divuint:$C:__moduchar:$C:__moduint:$C:__g2ptrget1\
1696                     :$C:__g2ptrget2\
1697                     :$L:r0x1093:$L:_DispNum_STK00:$L:r0x1095:$L:r0x1094:$L:_DispNum_NumDisp_10000_448\
1698                     :$L:r0x1096:$L:r0x1099:$L:r0x109C
1699                     ;--------------------------------------------------------
1700                     ;	;.line	101; ".\Source\App_LCD_4718.c"	void DispNum(uint16 num)
1701 04D7 [00] [X] C48B      _DispNum:	;Function start
1702 04D8 [11] [X] 668A      	MVF	r0x1093,1,0
1703                     ;	;.line	107; ".\Source\App_LCD_4718.c"	NumDisp[4] = num / 10000;
1704 04D9 [11] [X] 0610      	MVL	0x10
1705 04DA [11] [X] 660D      	MVF	__divuint_STK02,1,0
1706 04DB [12] [X] 0627      	MVL	0x27
1707 04DC [12] [X] 660D      	MVF	__divuint_STK01,1,0
1708 04DD [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1709 04DE [13] [X] 660D      	MVF	__divuint_STK00,1,0
1710 04DF [14] [X] 648D      	MVF	r0x1093,0,0
1711 04E0 [14] [X] C001 F5E2 	CALL	__divuint
1712                     	.CHKPARA __divuint 4
1713 04E2 [11] [X] 6420      	MVF	STK00,0,0
1714 04E3 [11] [X] 6683      	MVF	(_DispNum_NumDisp_10000_448 + 4),1,0
1715                     ;	;.line	109; ".\Source\App_LCD_4718.c"	NumDisp[3] = num / 1000 % 10;
1716 04E4 [11] [X] 06E8      	MVL	0xe8
1717 04E5 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1718 04E6 [12] [X] 0603      	MVL	0x03
1719 04E7 [12] [X] 660D      	MVF	__divuint_STK01,1,0
1720 04E8 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1721 04E9 [13] [X] 660D      	MVF	__divuint_STK00,1,0
1722 04EA [14] [X] 648D      	MVF	r0x1093,0,0
1723 04EB [14] [X] C001 F5E2 	CALL	__divuint
1724 04ED [11] [X] 060A      	MVL	0x0a
1725 04EE [11] [X] 660D      	MVF	__moduchar_STK00,1,0
1726 04EF [12] [X] 6420      	MVF	STK00,0,0
1727 04F0 [12] [X] C001 F602 	CALL	__moduchar
1728                     	.CHKPARA __moduchar 2
1729 04F2 [11] [X] 6684      	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
1730                     ;	;.line	111; ".\Source\App_LCD_4718.c"	NumDisp[2] = num / 100 % 10;
1731 04F3 [11] [X] 0664      	MVL	0x64
1732 04F4 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1733 04F5 [12] [X] 0C0D      	CLRF	__divuint_STK01,0
1734 04F6 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1735 04F7 [13] [X] 660D      	MVF	__divuint_STK00,1,0
1736 04F8 [14] [X] 648D      	MVF	r0x1093,0,0
1737 04F9 [14] [X] C001 F5E2 	CALL	__divuint
1738 04FB [11] [X] 6689      	MVF	r0x1095,1,0
1739 04FC [11] [X] 060A      	MVL	0x0a
1740 04FD [11] [X] 660D      	MVF	__moduint_STK02,1,0
1741 04FE [12] [X] 0C0D      	CLRF	__moduint_STK01,0
1742 04FF [13] [X] D020 F00D 	MVFF	STK00,__moduint_STK00
1743 0501 [14] [X] 648C      	MVF	r0x1095,0,0
1744 0502 [14] [X] C001 F61D 	CALL	__moduint
1745                     	.CHKPARA __moduint 4
1746 0504 [11] [X] 6420      	MVF	STK00,0,0
1747 0505 [11] [X] 6685      	MVF	(_DispNum_NumDisp_10000_448 + 2),1,0
1748                     ;	;.line	113; ".\Source\App_LCD_4718.c"	NumDisp[1] = num / 10 % 10;
1749 0506 [11] [X] 060A      	MVL	0x0a
1750 0507 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1751 0508 [12] [X] 0C0D      	CLRF	__divuint_STK01,0
1752 0509 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1753 050A [13] [X] 660D      	MVF	__divuint_STK00,1,0
1754 050B [14] [X] 648D      	MVF	r0x1093,0,0
1755 050C [14] [X] C001 F5E2 	CALL	__divuint
1756 050E [11] [X] 6689      	MVF	r0x1095,1,0
1757 050F [11] [X] 060A      	MVL	0x0a
1758 0510 [11] [X] 660D      	MVF	__moduint_STK02,1,0
1759 0511 [12] [X] 0C0D      	CLRF	__moduint_STK01,0
1760 0512 [13] [X] D020 F00D 	MVFF	STK00,__moduint_STK00
1761 0514 [14] [X] 648C      	MVF	r0x1095,0,0
1762 0515 [14] [X] C001 F61D 	CALL	__moduint
1763 0517 [11] [X] 6420      	MVF	STK00,0,0
1764 0518 [11] [X] 6686      	MVF	(_DispNum_NumDisp_10000_448 + 1),1,0
1765                     ;	;.line	115; ".\Source\App_LCD_4718.c"	NumDisp[0] = num % 10;
1766 0519 [11] [X] 060A      	MVL	0x0a
1767 051A [11] [X] 660D      	MVF	__moduint_STK02,1,0
1768 051B [12] [X] 0C0D      	CLRF	__moduint_STK01,0
1769 051C [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1770 051D [13] [X] 660D      	MVF	__moduint_STK00,1,0
1771 051E [14] [X] 648D      	MVF	r0x1093,0,0
1772 051F [14] [X] C001 F61D 	CALL	__moduint
1773 0521 [11] [X] 6420      	MVF	STK00,0,0
1774 0522 [11] [X] 6687      	MVF	(_DispNum_NumDisp_10000_448 + 0),1,0
1775                     ;	;.line	118; ".\Source\App_LCD_4718.c"	if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
1776 0523 [11] [X] 060A      	MVL	0x0a
1777 0524 [00] [2] 0012 6D33 	CPSE	_eDisplay_Interfaces,0
1778 0526 [11] [2] 7845      	JMP	_00149_DS_
1779                     ;	;.line	120; ".\Source\App_LCD_4718.c"	NumDisp[4]	= 10;
1780 0527 [11] [2] 060A      	MVL	0x0a
1781 0528 [11] [2] 6683      	MVF	(_DispNum_NumDisp_10000_448 + 4),1,0
1782                     ;	;.line	121; ".\Source\App_LCD_4718.c"	NumDisp[3]	= 10;
1783 0529 [11] [2] 6684      	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
1784                     ;	;.line	122; ".\Source\App_LCD_4718.c"	NumDisp[2]	= 10;
1785 052A [11] [2] 6685      	MVF	(_DispNum_NumDisp_10000_448 + 2),1,0
1786                     ;	;.line	125; ".\Source\App_LCD_4718.c"	if(NumDisp[1] == 0)
1787 052B [11] [2] 6E86      	TFSZ	(_DispNum_NumDisp_10000_448 + 1),0
1788 052C [11] [2] 7802      	JMP	_00142_DS_
1789                     ;	;.line	127; ".\Source\App_LCD_4718.c"	NumDisp[1] = 10;
1790 052D [11] [2] 060A      	MVL	0x0a
1791 052E [11] [2] 6686      	MVF	(_DispNum_NumDisp_10000_448 + 1),1,0
1792                     _00142_DS_:
1793                     ;	;.line	130; ".\Source\App_LCD_4718.c"	LCD0_Macro = 0x00;
1794 052F [00] [1] 0011 0D88 	CLRF	_LCD0,0
1795                     ;	;.line	132; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[1]] << 4) & 0x30;
1796 0531 [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1797 0532 [11] [1] 0702      	MULL	0x02
1798 0533 [11] [1] 6422      	MVF	_PRODL,0,0
1799 0534 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1800 0535 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1801 0536 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1802 0537 [12] [1] 1421      	ADDC	_PRODH,0,0
1803 0538 [12] [1] 0280      	IORL	0x80
1804 0539 [12] [1] C994      	CALL	__g2ptrget1
1805 053A [11] [1] 668A      	MVF	r0x1093,1,0
1806 053B [11] [1] 608A      	SWPF	r0x1093,0,0
1807 053C [11] [1] 0130      	ANDL	0x30
1808                     ;	;.line	134; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1809 053D [11] [1] 6789      	MVF	_LCD1,1,0
1810                     ;	;.line	136; ".\Source\App_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[1]]  >> 4;
1811 053E [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1812 053F [11] [1] 0702      	MULL	0x02
1813 0540 [11] [1] 6422      	MVF	_PRODL,0,0
1814 0541 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1815 0542 [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1816 0543 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1817 0544 [12] [1] 1421      	ADDC	_PRODH,0,0
1818 0545 [12] [1] 0280      	IORL	0x80
1819 0546 [12] [1] C001 F697 	CALL	__g2ptrget2
1820 0548 [11] [1] 6688      	MVF	r0x1094,1,0
1821 0549 [11] [1] 6020      	SWPF	STK00,0,0
1822 054A [11] [1] 010F      	ANDL	0x0f
1823 054B [11] [1] 668B      	MVF	_DispNum_STK00,1,0
1824 054C [11] [1] 6088      	SWPF	r0x1094,0,0
1825 054D [11] [1] 6682      	MVF	r0x1096,1,0
1826 054E [11] [1] 01F0      	ANDL	0xf0
1827 054F [11] [1] 2E8B      	IORF	_DispNum_STK00,1,0
1828 0550 [11] [1] 2282      	XORF	r0x1096,1,0
1829 0551 [11] [1] 648B      	MVF	_DispNum_STK00,0,0
1830 0552 [11] [1] 678A      	MVF	_LCD2,1,0
1831                     ;	;.line	138; ".\Source\App_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[0]];
1832 0553 [11] [1] 6487      	MVF	(_DispNum_NumDisp_10000_448 + 0),0,0
1833 0554 [11] [1] 0702      	MULL	0x02
1834 0555 [11] [1] 6422      	MVF	_PRODL,0,0
1835 0556 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1836 0557 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1837 0558 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1838 0559 [12] [1] 1421      	ADDC	_PRODH,0,0
1839 055A [12] [1] 0280      	IORL	0x80
1840 055B [12] [1] C972      	CALL	__g2ptrget1
1841 055C [11] [1] 678B      	MVF	_LCD3,1,0
1842                     ;	;.line	140; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[0]] >> 8) & 0x03;
1843 055D [11] [1] 6487      	MVF	(_DispNum_NumDisp_10000_448 + 0),0,0
1844 055E [11] [1] 0702      	MULL	0x02
1845 055F [11] [1] 6422      	MVF	_PRODL,0,0
1846 0560 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1847 0561 [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1848 0562 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1849 0563 [12] [1] 1421      	ADDC	_PRODH,0,0
1850 0564 [12] [1] 0280      	IORL	0x80
1851 0565 [12] [1] C001 F697 	CALL	__g2ptrget2
1852 0567 [11] [1] 0103      	ANDL	0x03
1853                     ;	;.line	142; ".\Source\App_LCD_4718.c"	LCD4_Macro = tmp;
1854 0568 [11] [1] 678C      	MVF	_LCD4,1,0
1855                     ;	;.line	144; ".\Source\App_LCD_4718.c"	LCD5_Macro = 0x00;
1856 0569 [11] [1] 0D8D      	CLRF	_LCD5,0
1857                     ;	;.line	146; ".\Source\App_LCD_4718.c"	LCD6_Macro = 0x00;
1858 056A [11] [1] 0D8E      	CLRF	_LCD6,0
1859 056B [11] [1] 786C      	JMP	_00151_DS_
1860                     _00149_DS_:
1861                     ;	;.line	151; ".\Source\App_LCD_4718.c"	if(NumDisp[4] == 0)
1862 056C [11] [2] 6E83      	TFSZ	(_DispNum_NumDisp_10000_448 + 4),0
1863 056D [11] [2] 781E      	JMP	_00146_DS_
1864                     ;	;.line	154; ".\Source\App_LCD_4718.c"	if(NumDisp[3] == 0)
1865 056E [11] [2] 6E84      	TFSZ	(_DispNum_NumDisp_10000_448 + 3),0
1866 056F [11] [2] 7802      	JMP	_00144_DS_
1867                     ;	;.line	156; ".\Source\App_LCD_4718.c"	NumDisp[3] = 10;
1868 0570 [11] [2] 060A      	MVL	0x0a
1869 0571 [11] [2] 6684      	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
1870                     _00144_DS_:
1871                     ;	;.line	159; ".\Source\App_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
1872 0572 [11] [2] 6484      	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
1873 0573 [11] [2] 0702      	MULL	0x02
1874 0574 [11] [2] 6422      	MVF	_PRODL,0,0
1875 0575 [11] [2] 04CE      	ADDL	(_NUM_CODE + 0)
1876 0576 [11] [2] 660D      	MVF	__g2ptrget1_STK00,1,0
1877 0577 [12] [2] 0636      	MVL	high (_NUM_CODE + 0)
1878 0578 [12] [2] 1421      	ADDC	_PRODH,0,0
1879 0579 [12] [2] 0280      	IORL	0x80
1880 057A [12] [2] C953      	CALL	__g2ptrget1
1881 057B [00] [1] 0011 6788 	MVF	_LCD0,1,0
1882                     ;	;.line	161; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[3]] >> 8) & 0x03;
1883 057D [11] [1] 6484      	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
1884 057E [11] [1] 0702      	MULL	0x02
1885 057F [11] [1] 6422      	MVF	_PRODL,0,0
1886 0580 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1887 0581 [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1888 0582 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1889 0583 [12] [1] 1421      	ADDC	_PRODH,0,0
1890 0584 [12] [1] 0280      	IORL	0x80
1891 0585 [12] [1] C001 F697 	CALL	__g2ptrget2
1892 0587 [11] [1] 0103      	ANDL	0x03
1893 0588 [11] [1] 668B      	MVF	_DispNum_STK00,1,0
1894                     ;	;.line	163; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1895 0589 [11] [1] 6789      	MVF	_LCD1,1,0
1896                     ;	;.line	165; ".\Source\App_LCD_4718.c"	LCD_Hundred_Clr();
1897 058A [11] [1] 8588      	BCF	_LCD0,2
1898 058B [11] [1] 7811      	JMP	_00147_DS_
1899                     _00146_DS_:
1900                     ;	;.line	171; ".\Source\App_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
1901 058C [11] [2] 6484      	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
1902 058D [11] [2] 0702      	MULL	0x02
1903 058E [11] [2] 6422      	MVF	_PRODL,0,0
1904 058F [11] [2] 04CE      	ADDL	(_NUM_CODE + 0)
1905 0590 [11] [2] 660D      	MVF	__g2ptrget2_STK00,1,0
1906 0591 [12] [2] 0636      	MVL	high (_NUM_CODE + 0)
1907 0592 [12] [2] 1421      	ADDC	_PRODH,0,0
1908 0593 [12] [2] 0280      	IORL	0x80
1909 0594 [12] [2] C001 F697 	CALL	__g2ptrget2
1910                     ;	;.line	173; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[3]] >> 8) & 0x03;
1911 0596 [11] [2] D020 F188 	MVFF	STK00,_LCD0
1912 0598 [11] [2] 0103      	ANDL	0x03
1913 0599 [11] [2] 668B      	MVF	_DispNum_STK00,1,0
1914                     ;	;.line	175; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1915 059A [00] [1] 0011 6789 	MVF	_LCD1,1,0
1916                     ;	;.line	177; ".\Source\App_LCD_4718.c"	LCD_Hundred_En();
1917 059C [11] [1] 9588      	BSF	_LCD0,2
1918                     _00147_DS_:
1919                     ;	;.line	179; ".\Source\App_LCD_4718.c"	tmp = tmp | (NUM_CODE[NumDisp[2]] << 4 & 0x30);
1920 059D [11] [1] 6485      	MVF	(_DispNum_NumDisp_10000_448 + 2),0,0
1921 059E [11] [1] 0702      	MULL	0x02
1922 059F [11] [1] 6422      	MVF	_PRODL,0,0
1923 05A0 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1924 05A1 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1925 05A2 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1926 05A3 [12] [1] 1421      	ADDC	_PRODH,0,0
1927 05A4 [12] [1] 0280      	IORL	0x80
1928 05A5 [12] [1] C928      	CALL	__g2ptrget1
1929 05A6 [11] [1] 6681      	MVF	r0x1099,1,0
1930 05A7 [11] [1] 6081      	SWPF	r0x1099,0,0
1931 05A8 [11] [1] 0130      	ANDL	0x30
1932 05A9 [11] [1] 2C8B      	IORF	_DispNum_STK00,0,0
1933                     ;	;.line	182; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1934 05AA [11] [1] 6789      	MVF	_LCD1,1,0
1935                     ;	;.line	184; ".\Source\App_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[2]]  >> 4;
1936 05AB [11] [1] 6485      	MVF	(_DispNum_NumDisp_10000_448 + 2),0,0
1937 05AC [11] [1] 0702      	MULL	0x02
1938 05AD [11] [1] 6422      	MVF	_PRODL,0,0
1939 05AE [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1940 05AF [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1941 05B0 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1942 05B1 [12] [1] 1421      	ADDC	_PRODH,0,0
1943 05B2 [12] [1] 0280      	IORL	0x80
1944 05B3 [12] [1] C001 F697 	CALL	__g2ptrget2
1945 05B5 [11] [1] 6681      	MVF	r0x1099,1,0
1946 05B6 [11] [1] 6020      	SWPF	STK00,0,0
1947 05B7 [11] [1] 010F      	ANDL	0x0f
1948 05B8 [11] [1] 668B      	MVF	_DispNum_STK00,1,0
1949 05B9 [11] [1] 6081      	SWPF	r0x1099,0,0
1950 05BA [11] [1] 6680      	MVF	r0x109C,1,0
1951 05BB [11] [1] 01F0      	ANDL	0xf0
1952 05BC [11] [1] 2E8B      	IORF	_DispNum_STK00,1,0
1953 05BD [11] [1] 2280      	XORF	r0x109C,1,0
1954 05BE [11] [1] 648B      	MVF	_DispNum_STK00,0,0
1955 05BF [11] [1] 678A      	MVF	_LCD2,1,0
1956                     ;	;.line	187; ".\Source\App_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[1]];
1957 05C0 [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1958 05C1 [11] [1] 0702      	MULL	0x02
1959 05C2 [11] [1] 6422      	MVF	_PRODL,0,0
1960 05C3 [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1961 05C4 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1962 05C5 [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1963 05C6 [12] [1] 1421      	ADDC	_PRODH,0,0
1964 05C7 [12] [1] 0280      	IORL	0x80
1965 05C8 [12] [1] C905      	CALL	__g2ptrget1
1966 05C9 [11] [1] 678B      	MVF	_LCD3,1,0
1967                     ;	;.line	189; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[1]] >> 8) & 0x03;
1968 05CA [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1969 05CB [11] [1] 0702      	MULL	0x02
1970 05CC [11] [1] 6422      	MVF	_PRODL,0,0
1971 05CD [11] [1] 04CE      	ADDL	(_NUM_CODE + 0)
1972 05CE [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1973 05CF [12] [1] 0636      	MVL	high (_NUM_CODE + 0)
1974 05D0 [12] [1] 1421      	ADDC	_PRODH,0,0
1975 05D1 [12] [1] 0280      	IORL	0x80
1976 05D2 [12] [1] C001 F697 	CALL	__g2ptrget2
1977 05D4 [11] [1] 0103      	ANDL	0x03
1978                     ;	;.line	191; ".\Source\App_LCD_4718.c"	LCD4_Macro = tmp;
1979 05D5 [11] [1] 678C      	MVF	_LCD4,1,0
1980                     ;	;.line	193; ".\Source\App_LCD_4718.c"	LCD5_Macro = 0x00;
1981 05D6 [11] [1] 0D8D      	CLRF	_LCD5,0
1982                     ;	;.line	195; ".\Source\App_LCD_4718.c"	LCD6_Macro = 0x00;
1983 05D7 [11] [1] 0D8E      	CLRF	_LCD6,0
1984 05D8 [11] [1] C4B4      _00151_DS_:
1985                     ;	;.line	197; ".\Source\App_LCD_4718.c"	}
1986 05D9 [00] [1] 000A      	RET	
1987                     ; exit point of _DispNum
1988                     	.ENDFUNC	_DispNum
1989                     ;--------------------------------------------------------
1990                     
1991                     .globl _DispDelta
1992                     
1993                     ;--------------------------------------------------------
1994                     	.FUNC _DispDelta:$r:0:2:$L:r0x108F:$L:_DispDelta_STK00
1995                     ;--------------------------------------------------------
1996                     ;	;.line	44; ".\Source\App_LCD_4718.c"	void DispDelta(uint16 temp)
1997 05E3 [00] [X] C481      _DispDelta:	;Function start
1998 05E4 [01] [X] 6680      	MVF	r0x108F,1,0
1999 05E5 [01] [X] 065A      	MVL	0x5a
2000                     ;	;.line	49; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
2001 05E6 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
2002 05E8 [01] [1] 7818      	JMP	_00134_DS_
2003                     ;	;.line	52; ".\Source\App_LCD_4718.c"	if(temp >= Fever_Temp_Centigrade)
2004 05E9 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2005 05EA [01] [1] 043C      	ADDL	0x3c
2006 05EB [01] [1] 06F1      	MVL	0xf1
2007 05EC [01] [1] 1480      	ADDC	r0x108F,0,0
2008 05ED [01] [1] B82B      	BTSS	_STATUS,4
2009 05EE [01] [1] 7802      	JMP	_00121_DS_
2010                     ;	;.line	55; ".\Source\App_LCD_4718.c"	LCD_Delta3_En();
2011 05EF [01] [1] 998C      	BSF	_LCD4,4
2012 05F0 [01] [1] 7829      	JMP	_00136_DS_
2013                     _00121_DS_:
2014                     ;	;.line	58; ".\Source\App_LCD_4718.c"	else if(temp >= Warn_Temp_Centigrade)
2015 05F1 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2016 05F2 [01] [1] 046E      	ADDL	0x6e
2017 05F3 [01] [1] 06F1      	MVL	0xf1
2018 05F4 [01] [1] 1480      	ADDC	r0x108F,0,0
2019 05F5 [01] [1] B82B      	BTSS	_STATUS,4
2020 05F6 [01] [1] 7802      	JMP	_00118_DS_
2021                     ;	;.line	61; ".\Source\App_LCD_4718.c"	LCD_Delta2_En();
2022 05F7 [01] [1] 9B8C      	BSF	_LCD4,5
2023 05F8 [01] [1] 7821      	JMP	_00136_DS_
2024                     _00118_DS_:
2025                     ;	;.line	64; ".\Source\App_LCD_4718.c"	else if(temp >= Noamal_Temp_Centigrade)
2026 05F9 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2027 05FA [01] [1] 0404      	ADDL	0x04
2028 05FB [01] [1] 06F2      	MVL	0xf2
2029 05FC [01] [1] 1480      	ADDC	r0x108F,0,0
2030 05FD [01] [1] B82B      	BTSS	_STATUS,4
2031 05FE [01] [1] 781B      	JMP	_00136_DS_
2032                     ;	;.line	67; ".\Source\App_LCD_4718.c"	LCD_Delta1_En();
2033 05FF [01] [1] 9D8C      	BSF	_LCD4,6
2034 0600 [01] [1] 7819      	JMP	_00136_DS_
2035                     _00134_DS_:
2036                     ;	;.line	71; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
2037 0601 [01] [1] 06A5      	MVL	0xa5
2038 0602 [01] [1] 6D7F      	CPSE	_eTempUnit,0
2039 0603 [01] [1] 7816      	JMP	_00136_DS_
2040                     ;	;.line	74; ".\Source\App_LCD_4718.c"	if(temp >= Fever_Temp_Fahrenheit)
2041 0604 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2042 0605 [01] [1] 04F0      	ADDL	0xf0
2043 0606 [01] [1] 06D8      	MVL	0xd8
2044 0607 [01] [1] 1480      	ADDC	r0x108F,0,0
2045 0608 [01] [1] B82B      	BTSS	_STATUS,4
2046 0609 [01] [1] 7802      	JMP	_00129_DS_
2047                     ;	;.line	77; ".\Source\App_LCD_4718.c"	LCD_Delta3_En();
2048 060A [01] [1] 998C      	BSF	_LCD4,4
2049 060B [01] [1] 780E      	JMP	_00136_DS_
2050                     _00129_DS_:
2051                     ;	;.line	80; ".\Source\App_LCD_4718.c"	else if(temp >= Warn_Temp_Fahrenheit)
2052 060C [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2053 060D [01] [1] 044A      	ADDL	0x4a
2054 060E [01] [1] 06D9      	MVL	0xd9
2055 060F [01] [1] 1480      	ADDC	r0x108F,0,0
2056 0610 [01] [1] B82B      	BTSS	_STATUS,4
2057 0611 [01] [1] 7802      	JMP	_00126_DS_
2058                     ;	;.line	83; ".\Source\App_LCD_4718.c"	LCD_Delta2_En();
2059 0612 [01] [1] 9B8C      	BSF	_LCD4,5
2060 0613 [01] [1] 7806      	JMP	_00136_DS_
2061                     _00126_DS_:
2062                     ;	;.line	86; ".\Source\App_LCD_4718.c"	else if(temp >= Noamal_Temp_Fahrenheit)
2063 0614 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2064 0615 [01] [1] 0458      	ADDL	0x58
2065 0616 [01] [1] 06DA      	MVL	0xda
2066 0617 [01] [1] 1480      	ADDC	r0x108F,0,0
2067 0618 [01] [1] A82B      	BTSZ	_STATUS,4
2068                     ;	;.line	89; ".\Source\App_LCD_4718.c"	LCD_Delta1_En();
2069 0619 [01] [1] 9D8C      	BSF	_LCD4,6
2070 061A [01] [1] C4BE      _00136_DS_:
2071                     ;	;.line	93; ".\Source\App_LCD_4718.c"	}
2072 061B [00] [1] 000A      	RET	
2073                     ; exit point of _DispDelta
2074                     	.ENDFUNC	_DispDelta
2075                     ;--------------------------------------------------------
2076                     
2077                     .globl _DispUnit
2078                     
2079                     ;--------------------------------------------------------
2080                     	.FUNC _DispUnit:$r:0:0
2081                     ;--------------------------------------------------------
2082                     ;	;.line	26; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
2083                     _DispUnit:	;Function start
2084 061C [00] [1] 065A      	MVL	0x5a
2085 061D [00] [1] 6D7F      	CPSE	_eTempUnit,0
2086 061E [00] [1] 7803      	JMP	_00108_DS_
2087                     ;	;.line	29; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
2088 061F [00] [1] 0605      	MVL	0x05
2089 0620 [00] [1] 2F8D      	IORF	_LCD5,1,0
2090 0621 [00] [1] 7805      	JMP	_00110_DS_
2091                     _00108_DS_:
2092                     ;	;.line	32; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
2093 0622 [00] [1] 06A5      	MVL	0xa5
2094 0623 [00] [1] 6D7F      	CPSE	_eTempUnit,0
2095 0624 [00] [1] 7802      	JMP	_00110_DS_
2096                     ;	;.line	35; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
2097 0625 [00] [1] 0603      	MVL	0x03
2098 0626 [00] [1] 2F8D      	IORF	_LCD5,1,0
2099                     _00110_DS_:
2100                     ;	;.line	37; ".\Source\App_LCD_4718.c"	}
2101 0627 [00] [1] 000A      	RET	
2102                     ; exit point of _DispUnit
2103                     	.ENDFUNC	_DispUnit
2104                     ;--------------------------------------------------------
2105                     
2106                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
2107                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
2108                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
2109                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
2110                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
2111                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
2112                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
2113                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
2114                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
2115                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
2116                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
2117                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
2118                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
2119                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
2120                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
2121                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
2122                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
2123                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
2124                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
2125                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
2126                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
2127                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
2128                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
2129                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
2130                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
2131                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
2132                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
2133                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
2134                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
2135                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
2136                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
2137                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
2138                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
2139                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
2140                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
2141                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
2142                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
2143                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
2144                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
2145                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
2146                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
2147                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
2148                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
2149                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
2150                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
2151                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
2152                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
2153                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
2154                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
2155                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
2156                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
2157                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
2158                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
2159                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
2160                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
2161                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
2162                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
2163                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
2164                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
2165                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
2166                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
2167                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
2168                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
2169                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
2170                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
2171                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
2172                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
2173                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
2174                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
2175                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
2176                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
2177                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
2178                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
2179                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
2180                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
2181                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
2182                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
2183                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
2184                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
2185                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
2186                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
2187                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
2188                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
2189                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
2190                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
2191                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
2192                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
2193                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
2194                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
2195                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
2196                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
2197                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
2198                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
2199                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
2200                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
2201                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
2202                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
2203                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
2204                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
2205                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
2206                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
2207                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
2208                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
2209                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
2210                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
2211                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
2212                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
2213                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
2214                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
2215                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
2216                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
2217                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
2218                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
2219                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
2220                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
2221                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
2222                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
2223                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
2224                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
2225                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
2226                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
2227                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
2228                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
2229                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
2230                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
2231                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
2232                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
2233                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
2234                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
2235                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
2236                     	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
2237                     	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
2238                     	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
2239                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
2240                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
2241                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
2242                     	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
2243                     	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
2244                     	;--cdb--S:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0
2245                     	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
2246                     	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
2247                     	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
2248                     	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
2249                     	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
2250                     	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
2251                     	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
2252                     	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
2253                     	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
2254                     	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
2255                     	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
2256                     	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
2257                     	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
2258                     	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
2259                     	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
2260                     	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
2261                     	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
2262                     	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
2263                     	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
2264                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
2265                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
2266                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
2267                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
2268                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
2269                     	;--cdb--S:LApp_LCD_4718.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
2270                     	;--cdb--S:LApp_LCD_4718.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
2271                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
2272                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
2273                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2274                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
2275                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2276                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
2277                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2278                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2279                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2280                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
2281                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
2282                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
2283                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
2284                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2285                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2286                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
2287                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
2288                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
2289                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
2290                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
2291                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
2292                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2293                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
2294                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
2295                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
2296                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
2297                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2298                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
2299                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2300                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2301                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
2302                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
2303                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2304                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
2305                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
2306                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
2307                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
2308                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2309                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
2310                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
2311                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
2312                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
2313                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
2314                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
2315                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
2316                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
2317                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
2318                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
2319                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
2320                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
2321                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
2322                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
2323                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
2324                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
2325                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
2326                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
2327                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
2328                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
2329                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
2330                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
2331                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
2332                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
2333                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
2334                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
2335                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
2336                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
2337                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
2338                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
2339                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
2340                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
2341                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
2342                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
2343                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
2344                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
2345                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
2346                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
2347                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
2348                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
2349                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
2350                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
2351                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
2352                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
2353                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
2354                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
2355                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
2356                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
2357                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
2358                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
2359                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
2360                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
2361                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
2362                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
2363                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
2364                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
2365                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
2366                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
2367                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
2368                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
2369                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
2370                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
2371                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
2372                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
2373                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
2374                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
2375                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
2376                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
2377                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
2378                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
2379                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
2380                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
2381                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
2382                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
2383                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
2384                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
2385                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
2386                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
2387                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
2388                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
2389                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
2390                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
2391                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
2392                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
2393                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
2394                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
2395                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
2396                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
2397                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
2398                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
2399                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
2400                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
2401                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
2402                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
2403                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
2404                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
2405                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
2406                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
2407                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
2408                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
2409                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
2410                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
2411                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
2412                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
2413                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
2414                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
2415                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
2416                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
2417                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
2418                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
2419                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
2420                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
2421                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
2422                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
2423                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
2424                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
2425                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
2426                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
2427                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
2428                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
2429                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
2430                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
2431                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
2432                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
2433                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
2434                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
2435                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
2436                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
2437                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
2438                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
2439                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
2440                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
2441                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
2442                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
2443                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
2444                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
2445                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
2446                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
2447                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
2448                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
2449                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
2450                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
2451                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
2452                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
2453                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
2454                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
2455                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
2456                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
2457                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
2458                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
2459                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
2460                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
2461                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
2462                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
2463                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
2464                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
2465                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
2466                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
2467                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
2468                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
2469                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
2470                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
2471                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
2472                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
2473                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
2474                     	;--cdb--S:LApp_LCD_4718.DispDelta._DispDelta_temp_10000_423$temp$2710$423({2}SI:U),R,0,0,[_DispDelta_STK00,r0x108F]
2475                     	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_num_10000_447$num$2710$447({2}SI:U),R,0,0,[_DispNum_STK00,r0x1093]
2476                     	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_NumDisp_10000_448$NumDisp$2710$448({5}DA5d,SC:U),E,0,0
2477                     	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_tmp_10000_448$tmp$2710$448({1}SC:U),R,0,0,[r0x1092]
2478                     	;--cdb--S:LApp_LCD_4718.MeasedTemp_Disp._MeasedTemp_Disp_tmp_10000_682$tmp$2710$682({2}SI:U),R,0,0,[r0x10DC,r0x10DD]
2479                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
2480                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
2481                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
2482                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
2483                     	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
2484                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
2485                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
2486                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
2487                     ;--------------------------------------------------------
2488                     ; external declarations
2489                     ;--------------------------------------------------------
2490                     	.globl	_Disp_Off
2491                     	.globl	_Disp_Hi
2492                     	.globl	_Disp_All
2493                     	.globl	_Disp_Orl
2494                     	.globl	_Disp_Udr
2495                     	.globl	_Disp_Rct
2496                     	.globl	_Disp_Bth
2497                     	.globl	_Disp_End
2498                     	.globl	_Disp_CAL
2499                     	.globl	_Disp_Code
2500                     	.globl	_Disp_Version
2501                     	.globl	_Disp_Nothing
2502                     	.globl	_Disp_BrownOut
2503                     	.globl	_Disp_Err
2504                     	.globl	_Disp_ErrNo
2505                     	.globl	_Disp_StaticDash
2506                     	.globl	_LCD_Configuration
2507                     	.globl	_LCD_Clear_Register
2508                     	.globl	_memchrn
2509                     	.globl	_Centigrade_Convert_Fahrenheit
2510                     	.globl	__divuint
2511                     	.globl	__moduchar
2512                     	.globl	__moduint
2513                     	.globl	_FSR0
2514                     	.globl	_FSR1
2515                     	.globl	_FSR2
2516                     	.globl	_ADCR
2517                     	.globl	_sIIC
2518                     	.globl	_BIE_Available_Addr
2519                     	.globl	_sTIMx
2520                     	.globl	_sUARTx
2521                     	.globl	_sAutoBps
2522                     	.globl	_eAutoBps_Status
2523                     	.globl	_sTest
2524                     	.globl	_eTempUnit
2525                     	.globl	_eBondingTempUnit
2526                     	.globl	_eVersionCode
2527                     	.globl	_eMeasureMode
2528                     	.globl	_eBinding_Status
2529                     	.globl	_Enter_PrepareSleep_Flag
2530                     	.globl	_sButton
2531                     	.globl	_sTimeStamp
2532                     	.globl	_eButton_Status
2533                     	.globl	_sLVD
2534                     	.globl	_sADC
2535                     	.globl	_eADCChannel
2536                     	.globl	_eSystem_Mode
2537                     	.globl	_eBuzzer_Status
2538                     	.globl	_Flag_No_Buzzer
2539                     	.globl	_sMemory
2540                     	.globl	_sMemoryFlag
2541                     	.globl	_sActual
2542                     	.globl	_sForecast
2543                     	.globl	_sTempCal
2544                     	.globl	_eMeas_Status
2545                     	.globl	_sActual_Forecast
2546                     	.globl	_eTo_Actual_Ways
2547                     	.globl	_eBle_Sta
2548                     	.globl	_sBleStatus
2549                     	.globl	_eBacklight_Status
2550                     	.globl	_sBacklight
2551                     	.globl	_R_Table
2552                     	.globl	_CloseTable
2553                     	.globl	__g2ptrget1
2554                     	.globl	__g2ptrget2
2555                     
2556                     	.globl STK07
2557                     	.globl STK07_SAVE
2558                     	.globl STK06
2559                     	.globl STK06_SAVE
2560                     	.globl STK05
2561                     	.globl STK05_SAVE
2562                     	.globl STK04
2563                     	.globl STK04_SAVE
2564                     	.globl STK03
2565                     	.globl STK03_SAVE
2566                     	.globl STK02
2567                     	.globl STK02_SAVE
2568                     	.globl STK01
2569                     	.globl STK01_SAVE
2570                     	.globl STK00
2571                     	.globl STK00_SAVE
2572                     ;--------------------------------------------------------
2573                     ; global -1 declarations
2574                     ;--------------------------------------------------------
2575                     	.globl	_DispUnit
2576                     	.globl	_DispDelta
2577                     	.globl	_DispNum
2578                     	.globl	_Disp_UnitFlash
2579                     	.globl	_Disp_BatFlash
2580                     	.globl	_Disp_Bat
2581                     	.globl	_Disp_DynamicDash
2582                     	.globl	_Disp_DynamicForecastSymbol
2583                     	.globl	_Disp_BleSymbol
2584                     	.globl	_UnitExchange_Display
2585                     	.globl	_Off_Display
2586                     	.globl	_PreCalibration_Display
2587                     	.globl	_Calibration_Display
2588                     	.globl	_CalibrationOK_Display
2589                     	.globl	_RecentTemp_Display
2590                     	.globl	_MemTempNumber_Display
2591                     	.globl	_MemTempValue_Display
2592                     	.globl	_CurrentMode_Display
2593                     	.globl	_ModeExchange_Display
2594                     	.globl	_Binding_Display
2595                     	.globl	_EMC_Update_Temp_Fast
2596                     	.globl	_TempDetecting_Display
2597                     	.globl	_Err_Disp
2598                     	.globl	_MeasedTemp_Disp
2599                     	.globl	_eErr
2600                     	.globl	_eDisplay_Interfaces
2601                     	.globl	_UnitExchangeCompleted
2602                     	.globl	_ERR
2603                     	.globl	_NUM_CODE
2604                     
2605                     	.globl	_memcpy
2606                     ;--------------------------------------------------------
2607                     ; global -2 definitions
2608                     ;--------------------------------------------------------
2609                     	.area DSEG(DATA)
2610 0232 --             _eErr:	.ds	1
2611                     
2612                     	.area DSEG(DATA)
2613 0233 --             _eDisplay_Interfaces:	.ds	1
2614                     
2615                     	.area DSEG(DATA)
2616 0234 --             _UnitExchangeCompleted:	.ds	1
2617                     
2618                     	.area DSEG(DATA)
2619 0235 -- -- -- -- -- -- -- -- -- _ERR:	.ds	9
2620                     
2621                     	.area DSEG(DATA)
2622                     __SWTGTID	.equ	0xA6A6B2CF
2623                     
2624                     	.area DSEG(DATA)
2625                     _INDF0	.equ	0x0
2626                     
2627                     	.area DSEG(DATA)
2628                     _POINC0	.equ	0x1
2629                     
2630                     	.area DSEG(DATA)
2631                     _PODEC0	.equ	0x2
2632                     
2633                     	.area DSEG(DATA)
2634                     _PRINC0	.equ	0x3
2635                     
2636                     	.area DSEG(DATA)
2637                     _PLUSW0	.equ	0x4
2638                     
2639                     	.area DSEG(DATA)
2640                     _INDF1	.equ	0x5
2641                     
2642                     	.area DSEG(DATA)
2643                     _POINC1	.equ	0x6
2644                     
2645                     	.area DSEG(DATA)
2646                     _PODEC1	.equ	0x7
2647                     
2648                     	.area DSEG(DATA)
2649                     _PRINC1	.equ	0x8
2650                     
2651                     	.area DSEG(DATA)
2652                     _PLUSW1	.equ	0x9
2653                     
2654                     	.area DSEG(DATA)
2655                     _INDF2	.equ	0xA
2656                     
2657                     	.area DSEG(DATA)
2658                     _POINC2	.equ	0xB
2659                     
2660                     	.area DSEG(DATA)
2661                     _PODEC2	.equ	0xC
2662                     
2663                     	.area DSEG(DATA)
2664                     _PRINC2	.equ	0xD
2665                     
2666                     	.area DSEG(DATA)
2667                     _PLUSW2	.equ	0xE
2668                     
2669                     	.area DSEG(DATA)
2670                     _FSR0H	.equ	0xF
2671                     
2672                     	.area DSEG(DATA)
2673                     _FSR0L	.equ	0x10
2674                     
2675                     	.area DSEG(DATA)
2676                     _FSR1H	.equ	0x11
2677                     
2678                     	.area DSEG(DATA)
2679                     _FSR1L	.equ	0x12
2680                     
2681                     	.area DSEG(DATA)
2682                     _FSR2H	.equ	0x13
2683                     
2684                     	.area DSEG(DATA)
2685                     _FSR2L	.equ	0x14
2686                     
2687                     	.area DSEG(DATA)
2688                     _TOSH	.equ	0x16
2689                     
2690                     	.area DSEG(DATA)
2691                     _TOSL	.equ	0x17
2692                     
2693                     	.area DSEG(DATA)
2694                     _SKCN	.equ	0x18
2695                     
2696                     	.area DSEG(DATA)
2697                     _PCLATH	.equ	0x1A
2698                     
2699                     	.area DSEG(DATA)
2700                     _PCLATL	.equ	0x1B
2701                     
2702                     	.area DSEG(DATA)
2703                     _TBLPTRH	.equ	0x1D
2704                     
2705                     	.area DSEG(DATA)
2706                     _TBLPTRL	.equ	0x1E
2707                     
2708                     	.area DSEG(DATA)
2709                     _TBLDH	.equ	0x1F
2710                     
2711                     	.area DSEG(DATA)
2712                     _TBLDL	.equ	0x20
2713                     
2714                     	.area DSEG(DATA)
2715                     _PRODH	.equ	0x21
2716                     
2717                     	.area DSEG(DATA)
2718                     _PRODL	.equ	0x22
2719                     
2720                     	.area DSEG(DATA)
2721                     _INTE0	.equ	0x23
2722                     
2723                     	.area DSEG(DATA)
2724                     _INTE1	.equ	0x24
2725                     
2726                     	.area DSEG(DATA)
2727                     _INTE2	.equ	0x25
2728                     
2729                     	.area DSEG(DATA)
2730                     _INTF0	.equ	0x26
2731                     
2732                     	.area DSEG(DATA)
2733                     _INTF1	.equ	0x27
2734                     
2735                     	.area DSEG(DATA)
2736                     _INTF2	.equ	0x28
2737                     
2738                     	.area DSEG(DATA)
2739                     _WREG	.equ	0x29
2740                     
2741                     	.area DSEG(DATA)
2742                     _BSRCN	.equ	0x2A
2743                     
2744                     	.area DSEG(DATA)
2745                     _STATUS	.equ	0x2B
2746                     
2747                     	.area DSEG(DATA)
2748                     _MSTAT	.equ	0x2B
2749                     
2750                     	.area DSEG(DATA)
2751                     _PSTAT	.equ	0x2C
2752                     
2753                     	.area DSEG(DATA)
2754                     _BIECN	.equ	0x2E
2755                     
2756                     	.area DSEG(DATA)
2757                     _BIEARH	.equ	0x2F
2758                     
2759                     	.area DSEG(DATA)
2760                     _BIEARL	.equ	0x30
2761                     
2762                     	.area DSEG(DATA)
2763                     _BIEDRH	.equ	0x31
2764                     
2765                     	.area DSEG(DATA)
2766                     _BIEDRL	.equ	0x32
2767                     
2768                     	.area DSEG(DATA)
2769                     _PWRCN	.equ	0x33
2770                     
2771                     	.area DSEG(DATA)
2772                     _OSCCN0	.equ	0x34
2773                     
2774                     	.area DSEG(DATA)
2775                     _OSCCN1	.equ	0x35
2776                     
2777                     	.area DSEG(DATA)
2778                     _OSCCN2	.equ	0x36
2779                     
2780                     	.area DSEG(DATA)
2781                     _CSFCN0	.equ	0x37
2782                     
2783                     	.area DSEG(DATA)
2784                     _CSFCN1	.equ	0x38
2785                     
2786                     	.area DSEG(DATA)
2787                     _WDTCN	.equ	0x39
2788                     
2789                     	.area DSEG(DATA)
2790                     _AD1H	.equ	0x3A
2791                     
2792                     	.area DSEG(DATA)
2793                     _AD1M	.equ	0x3B
2794                     
2795                     	.area DSEG(DATA)
2796                     _AD1L	.equ	0x3C
2797                     
2798                     	.area DSEG(DATA)
2799                     _AD1CN0	.equ	0x3D
2800                     
2801                     	.area DSEG(DATA)
2802                     _AD1CN1	.equ	0x3E
2803                     
2804                     	.area DSEG(DATA)
2805                     _AD1CN2	.equ	0x3F
2806                     
2807                     	.area DSEG(DATA)
2808                     _AD1CN3	.equ	0x40
2809                     
2810                     	.area DSEG(DATA)
2811                     _AD1CN4	.equ	0x41
2812                     
2813                     	.area DSEG(DATA)
2814                     _AD1CN5	.equ	0x42
2815                     
2816                     	.area DSEG(DATA)
2817                     _LVDCN	.equ	0x43
2818                     
2819                     	.area DSEG(DATA)
2820                     _TMA1CN	.equ	0x44
2821                     
2822                     	.area DSEG(DATA)
2823                     _TMA1R	.equ	0x45
2824                     
2825                     	.area DSEG(DATA)
2826                     _TMA1C	.equ	0x46
2827                     
2828                     	.area DSEG(DATA)
2829                     _TB1FLAG	.equ	0x47
2830                     
2831                     	.area DSEG(DATA)
2832                     _TB1CN0	.equ	0x48
2833                     
2834                     	.area DSEG(DATA)
2835                     _TB1CN1	.equ	0x49
2836                     
2837                     	.area DSEG(DATA)
2838                     _TB1RH	.equ	0x4A
2839                     
2840                     	.area DSEG(DATA)
2841                     _TB1RL	.equ	0x4B
2842                     
2843                     	.area DSEG(DATA)
2844                     _TB1C0H	.equ	0x4C
2845                     
2846                     	.area DSEG(DATA)
2847                     _TB1C0L	.equ	0x4D
2848                     
2849                     	.area DSEG(DATA)
2850                     _TB1C1H	.equ	0x4E
2851                     
2852                     	.area DSEG(DATA)
2853                     _TB1C1L	.equ	0x4F
2854                     
2855                     	.area DSEG(DATA)
2856                     _TB1C2H	.equ	0x50
2857                     
2858                     	.area DSEG(DATA)
2859                     _TB1C2L	.equ	0x51
2860                     
2861                     	.area DSEG(DATA)
2862                     _TC1CN0	.equ	0x52
2863                     
2864                     	.area DSEG(DATA)
2865                     _PT1	.equ	0x53
2866                     
2867                     	.area DSEG(DATA)
2868                     _TRISC1	.equ	0x54
2869                     
2870                     	.area DSEG(DATA)
2871                     _PT1DA	.equ	0x55
2872                     
2873                     	.area DSEG(DATA)
2874                     _PT1PU	.equ	0x56
2875                     
2876                     	.area DSEG(DATA)
2877                     _PT1M1	.equ	0x57
2878                     
2879                     	.area DSEG(DATA)
2880                     _PT1INT	.equ	0x58
2881                     
2882                     	.area DSEG(DATA)
2883                     _PT1INTE	.equ	0x59
2884                     
2885                     	.area DSEG(DATA)
2886                     _PT1INTF	.equ	0x5A
2887                     
2888                     	.area DSEG(DATA)
2889                     _PT2	.equ	0x5B
2890                     
2891                     	.area DSEG(DATA)
2892                     _TRISC2	.equ	0x5C
2893                     
2894                     	.area DSEG(DATA)
2895                     _PT2DA	.equ	0x5D
2896                     
2897                     	.area DSEG(DATA)
2898                     _PT2PU	.equ	0x5E
2899                     
2900                     	.area DSEG(DATA)
2901                     _PT2INT	.equ	0x5F
2902                     
2903                     	.area DSEG(DATA)
2904                     _PT2INTE	.equ	0x60
2905                     
2906                     	.area DSEG(DATA)
2907                     _PT2INTF	.equ	0x61
2908                     
2909                     	.area DSEG(DATA)
2910                     _PT6	.equ	0x62
2911                     
2912                     	.area DSEG(DATA)
2913                     _TRISC6	.equ	0x63
2914                     
2915                     	.area DSEG(DATA)
2916                     _PT6DA	.equ	0x64
2917                     
2918                     	.area DSEG(DATA)
2919                     _PT6PU	.equ	0x65
2920                     
2921                     	.area DSEG(DATA)
2922                     _PT7	.equ	0x66
2923                     
2924                     	.area DSEG(DATA)
2925                     _TRISC7	.equ	0x67
2926                     
2927                     	.area DSEG(DATA)
2928                     _PT7DA	.equ	0x68
2929                     
2930                     	.area DSEG(DATA)
2931                     _PT7PU	.equ	0x69
2932                     
2933                     	.area DSEG(DATA)
2934                     _PT8	.equ	0x6A
2935                     
2936                     	.area DSEG(DATA)
2937                     _TRISC8	.equ	0x6B
2938                     
2939                     	.area DSEG(DATA)
2940                     _PT8DA	.equ	0x6C
2941                     
2942                     	.area DSEG(DATA)
2943                     _PT8PU	.equ	0x6D
2944                     
2945                     	.area DSEG(DATA)
2946                     _SSPCN0	.equ	0x6E
2947                     
2948                     	.area DSEG(DATA)
2949                     _SSPSTA0	.equ	0x6F
2950                     
2951                     	.area DSEG(DATA)
2952                     _SSPBUF0	.equ	0x70
2953                     
2954                     	.area DSEG(DATA)
2955                     _CFG0	.equ	0x71
2956                     
2957                     	.area DSEG(DATA)
2958                     _ACT0	.equ	0x72
2959                     
2960                     	.area DSEG(DATA)
2961                     _STA0	.equ	0x73
2962                     
2963                     	.area DSEG(DATA)
2964                     _CRG0	.equ	0x74
2965                     
2966                     	.area DSEG(DATA)
2967                     _TOC0	.equ	0x75
2968                     
2969                     	.area DSEG(DATA)
2970                     _RDB0	.equ	0x76
2971                     
2972                     	.area DSEG(DATA)
2973                     _TDB0	.equ	0x77
2974                     
2975                     	.area DSEG(DATA)
2976                     _SID0	.equ	0x78
2977                     
2978                     	.area DSEG(DATA)
2979                     _UR0CN	.equ	0x79
2980                     
2981                     	.area DSEG(DATA)
2982                     _UR0STA	.equ	0x7A
2983                     
2984                     	.area DSEG(DATA)
2985                     _BA0CN	.equ	0x7B
2986                     
2987                     	.area DSEG(DATA)
2988                     _BG0RH	.equ	0x7C
2989                     
2990                     	.area DSEG(DATA)
2991                     _BG0RL	.equ	0x7D
2992                     
2993                     	.area DSEG(DATA)
2994                     _TX0R	.equ	0x7E
2995                     
2996                     	.area DSEG(DATA)
2997                     _RC0REG	.equ	0x7F
2998                     
2999                     	.area DSEG(DATA)
3000                     _LCDCN1	.equ	0x180
3001                     
3002                     	.area DSEG(DATA)
3003                     _LCDCN2	.equ	0x181
3004                     
3005                     	.area DSEG(DATA)
3006                     _LCDCN3	.equ	0x182
3007                     
3008                     	.area DSEG(DATA)
3009                     _LCDCN4	.equ	0x183
3010                     
3011                     	.area DSEG(DATA)
3012                     _LCDCN5	.equ	0x184
3013                     
3014                     	.area DSEG(DATA)
3015                     _LCDCN6	.equ	0x185
3016                     
3017                     	.area DSEG(DATA)
3018                     _LCDCN7	.equ	0x186
3019                     
3020                     	.area DSEG(DATA)
3021                     _LCDCN8	.equ	0x187
3022                     
3023                     	.area DSEG(DATA)
3024                     _LCD0	.equ	0x188
3025                     
3026                     	.area DSEG(DATA)
3027                     _LCD1	.equ	0x189
3028                     
3029                     	.area DSEG(DATA)
3030                     _LCD2	.equ	0x18A
3031                     
3032                     	.area DSEG(DATA)
3033                     _LCD3	.equ	0x18B
3034                     
3035                     	.area DSEG(DATA)
3036                     _LCD4	.equ	0x18C
3037                     
3038                     	.area DSEG(DATA)
3039                     _LCD5	.equ	0x18D
3040                     
3041                     	.area DSEG(DATA)
3042                     _LCD6	.equ	0x18E
3043                     
3044                     	.area DSEG(DATA)
3045                     _LCD7	.equ	0x18F
3046                     
3047                     	.area DSEG(DATA)
3048                     _LCD8	.equ	0x190
3049                     
3050                     	.area DSEG(DATA)
3051                     _LCD9	.equ	0x191
3052                     
3053                     	.area DSEG(DATA)
3054                     _UR2CN	.equ	0x192
3055                     
3056                     	.area DSEG(DATA)
3057                     _UR2STA	.equ	0x193
3058                     
3059                     	.area DSEG(DATA)
3060                     _BA2CN	.equ	0x194
3061                     
3062                     	.area DSEG(DATA)
3063                     _BG2RH	.equ	0x195
3064                     
3065                     	.area DSEG(DATA)
3066                     _BG2RL	.equ	0x196
3067                     
3068                     	.area DSEG(DATA)
3069                     _TX2R	.equ	0x197
3070                     
3071                     	.area DSEG(DATA)
3072                     _RC2REG	.equ	0x198
3073                     
3074                     	.area DSEG(DATA)
3075                     _TMA2R	.equ	0x1E8
3076                     
3077                     	.area DSEG(DATA)
3078                     _TMA2C	.equ	0x1E9
3079                     
3080                     	.area DSEG(DATA)
3081                     _LEDCN	.equ	0x1EA
3082                     
3083                     	.area DSEG(DATA)
3084                     _IQ0	.equ	0x1EB
3085                     
3086                     	.area DSEG(DATA)
3087                     _IQ1	.equ	0x1EC
3088                     
3089                     	.area DSEG(DATA)
3090                     _DGCON1	.equ	0x1ED
3091                     
3092                     	.area DSEG(DATA)
3093                     _DGCON2	.equ	0x1EE
3094                     
3095                     	.area DSEG(DATA)
3096                     _ADCRH	.equ	0x3A
3097                     
3098                     	.area DSEG(DATA)
3099                     _ADCRM	.equ	0x3B
3100                     
3101                     	.area DSEG(DATA)
3102                     _ADCRL	.equ	0x3C
3103                     
3104                     	.area DSEG(DATA)
3105                     _TEMDATA	.equ	0x2E0
3106                     
3107                     ;--------------------------------------------------------
3108                     ; absolute symbol definitions
3109                     ;--------------------------------------------------------
3110                     ;--------------------------------------------------------
3111                     ; compiler-defined variables
3112                     ;--------------------------------------------------------
3113                     	.area IDATA (DATA,REL,CON); pre-def
3114                     	.area IDATAROM (CODE,REL,CON); pre-def
3115                     	.area UDATA (DATA,REL,CON); pre-def
3116                     	.area UDATA (DATA,REL,CON) ;UDL_App_LCD_4718_0	udata
3117 @FSR2-CurrentOffset+001 --         r0x108F:	.ds	1
3118 @FSR2-CurrentOffset+001 --         r0x1093:	.ds	1
3119 @FSR2-CurrentOffset+003 --         r0x1094:	.ds	1
3120 @FSR2-CurrentOffset+002 --         r0x1095:	.ds	1
3121 @FSR2-CurrentOffset+009 --         r0x1096:	.ds	1
3122 @FSR2-CurrentOffset+010 --         r0x1099:	.ds	1
3123 @FSR2-CurrentOffset+011 --         r0x109C:	.ds	1
3124 @FSR2-CurrentOffset+001 --         r0x10B2:	.ds	1
3125 @FSR2-CurrentOffset+001 --         r0x10C7:	.ds	1
3126 @FSR2-CurrentOffset+001 --         r0x10DC:	.ds	1
3127 @FSR2-CurrentOffset+002 --         r0x10DD:	.ds	1
3128                     	.area LOCALSTK (STK); local stack var
3129 @FSR2-00 --         _DispDelta_STK00:	.ds	1
3130                     	.globl _DispDelta_STK00
3131 @FSR2-00 --         _DispNum_STK00:	.ds	1
3132                     	.globl _DispNum_STK00
3133                     	.globl __divuint_STK02
3134                     	.globl __divuint_STK01
3135                     	.globl __divuint_STK00
3136 @FSR2-CurrentOffset+004 -- -- -- -- -- _DispNum_NumDisp_10000_448:	.ds	5
3137                     	.globl __moduchar_STK00
3138                     	.globl __moduint_STK02
3139                     	.globl __moduint_STK01
3140                     	.globl __moduint_STK00
3141                     	.globl __g2ptrget1_STK00
3142                     	.globl __g2ptrget2_STK00
3143                     	.globl _memchrn_STK02
3144                     	.globl _memchrn_STK01
3145                     	.globl _memchrn_STK00
3146                     	.globl _Centigrade_Convert_Fahrenheit_STK00
3147                     	.globl _Disp_Code_STK00
3148                     ;--------------------------------------------------------
3149                     ; initialized data
3150                     ;--------------------------------------------------------
3151                     
3152                     	.area	CONST   (CODE)	 ;App_LCD_4718-0-code, const
3153                     
3154                     _NUM_CODE:
3155 1B67 5303           	.byte #0x53, #0x03	; 851
3156 1B68 0003           	.byte #0x00, #0x03	; 768
3157 1B69 7201           	.byte #0x72, #0x01	; 370
3158 1B6A 7003           	.byte #0x70, #0x03	; 880
3159 1B6B 2103           	.byte #0x21, #0x03	; 801
3160 1B6C 7102           	.byte #0x71, #0x02	; 625
3161 1B6D 7302           	.byte #0x73, #0x02	; 627
3162 1B6E 1003           	.byte #0x10, #0x03	; 784
3163 1B6F 7303           	.byte #0x73, #0x03	; 883
3164 1B70 7103           	.byte #0x71, #0x03	; 881
3165 1B71 0000           	.byte #0x00, #0x00	; 0
3166                     
3167                     ;--------------------------------------------------------
3168                     ; initialized data - mirror
3169                     ;--------------------------------------------------------
3170                     
3171                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3172                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
3173                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
3174                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
3175                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3176                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3177                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3178                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3179                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3180                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3181                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3182                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3183                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3184                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3185                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3186                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3187                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3188                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
3189                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3190                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3191                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3192                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3193                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3194                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3195                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3196                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3197                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3198                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3199                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3200                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3201                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3202                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3203                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3204                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3205                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3206                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3207                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3208                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3209                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3210                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3211                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3212                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3213                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3214                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3215                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3216                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3217                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3218                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3219                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3220                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3221                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3222                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3223                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3224                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3225                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3226                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3227                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3228                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3229                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3230                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3231                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3232                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3233                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3234                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
3235                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3236                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3237                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3238                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3239                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3240                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3241                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3242                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3243                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3244                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3245                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3246                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3247                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3248                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3249                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3250                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3251                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3252                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3253                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3254                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3255                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3256                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3257                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3258                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3259                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3260                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3261                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3262                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3263                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3264                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3265                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
3266                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
3267                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
3268                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3269                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
3270                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
3271                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3272                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3273                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3274                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
3275                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
3276                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3277                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
3278                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3279                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
3280                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
3281                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3282                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3283                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3284                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3285                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3286                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3287                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3288                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3289                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3290                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3291                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3292                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3293                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3294                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3295                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3296                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3297                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3298                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3299                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3300                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3301                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3302                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3303                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3304                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3305                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3306                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3307                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3308                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3309                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3310                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
3311                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
3312                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
3313                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3314                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3315                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
3316                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
3317                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3318                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3319                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3320                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3321                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3322                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3323                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3324                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3325                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3326                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3327                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3328                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3329                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3330                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3331                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3332                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3333                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3334                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3335                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3336                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3337                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3338                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3339                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3340                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3341                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3342                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3343                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3344                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3345                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3346                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3347                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3348                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3349                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3350                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3351                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3352                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3353                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3354                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3355                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3356                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3357                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3358                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3359                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3360                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3361                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3362                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3363                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3364                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3365                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3366                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3367                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3368                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3369                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3370                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3371                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3372                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3373                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3374                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3375                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3376                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3377                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3378                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3379                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3380                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3381                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3382                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3383                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3384                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3385                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3386                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3387                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3388                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3389                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3390                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3391                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3392                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3393                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3394                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3395                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3396                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3397                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3398                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3399                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3400                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3401                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3402                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3403                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3404                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
3405                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3406                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
3407                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
3408                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
3409                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
3410                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3411                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3412                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3413                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3414                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3415                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3416                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3417                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3418                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3419                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3420                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3421                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3422                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3423                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3424                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3425                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3426                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3427                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3428                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3429                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3430                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3431                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3432                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3433                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3434                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3435                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3436                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3437                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3438                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3439                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
3440                     	;Following is optimization info, 
3441                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
3442                     	;--cdb--W:r0x10DC:NULL+0:-1:0
3443                     	;--cdb--W:r0x10DD:NULL+0:-1:0
3444                     	;--cdb--W:r0x10D6:NULL+0:-1:0
3445                     	;--cdb--W:r0x10D7:NULL+0:-1:0
3446                     	;--cdb--W:r0x10D0:NULL+0:-1:0
3447                     	;--cdb--W:r0x10D1:NULL+0:-1:0
3448                     	;--cdb--W:r0x10D0:NULL+0:-1:1
3449                     	;--cdb--W:r0x10D1:NULL+0:-1:1
3450                     	;--cdb--W:r0x10CC:STK00+0:-1:0
3451                     	;--cdb--W:r0x10CC:NULL+0:-1:0
3452                     	;--cdb--W:r0x10CE:STK01+0:-1:0
3453                     	;--cdb--W:r0x10CB:NULL+0:-1:0
3454                     	;--cdb--W:r0x10C7:NULL+0:-1:1
3455                     	;--cdb--W:r0x10C8:NULL+0:-1:1
3456                     	;--cdb--W:r0x10C7:NULL+0:-1:0
3457                     	;--cdb--W:r0x10C8:NULL+0:-1:0
3458                     	;--cdb--W:r0x10C9:NULL+0:0:0
3459                     	;--cdb--W:r0x10C9:NULL+0:-1:1
3460                     	;--cdb--W:r0x10C1:STK00+0:-1:0
3461                     	;--cdb--W:r0x10C1:NULL+0:-1:0
3462                     	;--cdb--W:r0x10C3:STK01+0:-1:0
3463                     	;--cdb--W:r0x10C0:NULL+0:-1:0
3464                     	;--cdb--W:r0x10B8:NULL+0:-1:1
3465                     	;--cdb--W:r0x10B8:NULL+0:-1:0
3466                     	;--cdb--W:r0x10B9:NULL+0:-1:0
3467                     	;--cdb--W:r0x10B9:NULL+0:-1:1
3468                     	;--cdb--W:r0x1095:NULL+0:-1:1
3469                     	;--cdb--W:r0x1094:NULL+0:-1:1
3470                     	;--cdb--W:r0x1093:NULL+0:-1:1
3471                     	;--cdb--W:_DispNum_STK00:NULL+0:-1:1
3472                     	;--cdb--W:r0x1097:NULL+0:-1:1
3473                     	;--cdb--W:r0x1099:NULL+0:-1:1
3474                     	;--cdb--W:r0x109C:NULL+0:-1:1
3475                     	;--cdb--W:r0x109E:NULL+0:-1:1
3476                     	;--cdb--W:r0x1093:STK00+0:-1:0
3477                     	;--cdb--W:r0x1093:r0x1096+1:-1:0
3478                     	;--cdb--W:r0x1093:r0x1098+1:-1:0
3479                     	;--cdb--W:r0x1093:r0x109C+1:-1:0
3480                     	;--cdb--W:r0x1094:STK00+0:-1:0
3481                     	;--cdb--W:r0x1096:STK00+0:-1:0
3482                     	;--cdb--W:r0x1099:r0x109A+1:-1:0
3483                     	;--cdb--W:r0x1096:NULL+0:-1:1
3484                     	;--cdb--W:r0x1098:NULL+0:-1:1
3485                     	;--cdb--W:r0x109A:NULL+0:-1:1
3486                     	;--cdb--W:r0x109B:NULL+0:-1:1
3487                     	;--cdb--W:r0x109D:NULL+0:-1:1
3488                     	;--c2db--RNG$_DispDelta_temp_10000_423$2000$2067
3489                     	;--c2db--RNG$_DispNum_num_10000_447$1703$1774
3490                     	;--c2db--RNG$_DispNum_tmp_10000_448$1894$1932
3491                     	;--c2db--RNG$_MeasedTemp_Disp_tmp_10000_682$540$564
3492                     	END
