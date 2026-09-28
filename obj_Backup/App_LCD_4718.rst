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
234 0228 [00] [2] 0012 B3CC 	BTSS	_sTIMx,1
235 022A [00] [2] 786C      	JMP	_00563_DS_
236                     ;	;.line	1257; ".\Source\App_LCD_4718.c"	sTIMx.LCDRefreshFlag = FALSE;
237 022B [00] [2] 83CC      	BCF	_sTIMx,1
238                     ;	;.line	1258; ".\Source\App_LCD_4718.c"	switch(eDisplay_Interfaces)
239 022C [00] [2] 0614      	MVL	0x14
240 022D [00] [2] 6B33      	CPSL	_eDisplay_Interfaces,0
241 022E [00] [2] 7868      	JMP	_00563_DS_
242 022F [00] [2] 0602      	MVL	HIGHD2(_00590_DS_)
243 0230 [00] [2] 661A      	MVF	_PCLATH,1,0
244 0231 [00] [2] 6533      	MVF	_eDisplay_Interfaces,0,0
245 0232 [00] [2] 0436      	ADDL	D2(_00590_DS_)
246 0233 [00] [2] A82B      	BTSZ	_STATUS,4
247 0234 [00] [2] 3A1A      	INF	_PCLATH,1,0
248 0235 [00] [2] 661B      	MVF	_PCLATL,1,0
249                     _00590_DS_:
250 0236 [00] [2] 7860      	RJ	_00563_DS_
251 0237 [00] [2] 7812      	RJ	_00536_DS_
252 0238 [00] [2] 7813      	RJ	_00537_DS_
253 0239 [00] [2] 7819      	RJ	_00540_DS_
254 023A [00] [2] 781C      	RJ	_00541_DS_
255 023B [00] [2] 781F      	RJ	_00542_DS_
256 023C [00] [2] 7825      	RJ	_00543_DS_
257 023D [00] [2] 7829      	RJ	_00545_DS_
258 023E [00] [2] 782A      	RJ	_00546_DS_
259 023F [00] [2] 782D      	RJ	_00547_DS_
260 0240 [00] [2] 7830      	RJ	_00548_DS_
261 0241 [00] [2] 7837      	RJ	_00551_DS_
262 0242 [00] [2] 783A      	RJ	_00552_DS_
263 0243 [00] [2] 783E      	RJ	_00553_DS_
264 0244 [00] [2] 7841      	RJ	_00554_DS_
265 0245 [00] [2] 7843      	RJ	_00555_DS_
266 0246 [00] [2] 7846      	RJ	_00556_DS_
267 0247 [00] [2] 784A      	RJ	_00557_DS_
268 0248 [00] [2] 784D      	RJ	_00558_DS_
269 0249 [00] [2] 781A      	RJ	_00544_DS_
270                     _00536_DS_:
271                     ;	;.line	1268; ".\Source\App_LCD_4718.c"	Disp_BrownOut();
272 024A [00] [2] C8B6      	CALL	_Disp_BrownOut
273                     	.CHKPARA _Disp_BrownOut 0
274                     ;	;.line	1269; ".\Source\App_LCD_4718.c"	break;
275 024B [00] [1] 784B      	JMP	_00563_DS_
276                     _00537_DS_:
277                     ;	;.line	1274; ".\Source\App_LCD_4718.c"	Disp_All();
278 024C [00] [2] C89A      	CALL	_Disp_All
279                     	.CHKPARA _Disp_All 0
280                     ;	;.line	1276; ".\Source\App_LCD_4718.c"	if(!sBacklight.Backlight2SFlag)
281 024D [00] [1] A12C      	BTSZ	_sBacklight,0
282 024E [00] [1] 7848      	JMP	_00563_DS_
283                     ;	;.line	1278; ".\Source\App_LCD_4718.c"	sBacklight.Backlight2SFlag = TRUE;
284 024F [00] [1] 912C      	BSF	_sBacklight,0
285                     ;	;.line	1280; ".\Source\App_LCD_4718.c"	eBacklight_Status = All_Backlight;
286 0250 [00] [1] 0601      	MVL	0x01
287 0251 [00] [1] 672B      	MVF	_eBacklight_Status,1,0
288                     ;	;.line	1282; ".\Source\App_LCD_4718.c"	break;
289 0252 [00] [1] 7844      	JMP	_00563_DS_
290                     _00540_DS_:
291                     ;	;.line	1287; ".\Source\App_LCD_4718.c"	UnitExchange_Display();
292 0253 [00] [2] C001 F627 	CALL	_UnitExchange_Display
293                     	.CHKPARA _UnitExchange_Display 0
294                     ;	;.line	1291; ".\Source\App_LCD_4718.c"	Disp_Bat();
295 0255 [00] [Y] C941      	CALL	_Disp_Bat
296                     	.CHKPARA _Disp_Bat 0
297                     ;	;.line	1294; ".\Source\App_LCD_4718.c"	break;
298 0256 [00] [1] 7840      	JMP	_00563_DS_
299                     _00541_DS_:
300                     ;	;.line	1299; ".\Source\App_LCD_4718.c"	Disp_Version(Soft_External_Version);
301 0257 [00] [2] 060A      	MVL	0x0a
302 0258 [00] [2] C848      	CALL	_Disp_Version
303                     ;	;.line	1301; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
304 0259 [00] [1] C93C      	CALL	_Disp_BleSymbol
305                     ;	;.line	1302; ".\Source\App_LCD_4718.c"	break;
306 025A [00] [1] 783C      	JMP	_00563_DS_
307                     _00542_DS_:
308                     ;	;.line	1307; ".\Source\App_LCD_4718.c"	Disp_Code(Soft_Code);
309 025B [00] [2] 06AA      	MVL	0xaa
310 025C [00] [2] 660D      	MVF	_Disp_Code_STK00,1,0
311 025D [01] [2] 0601      	MVL	0x01
312 025E [01] [2] C001 F508 	CALL	_Disp_Code
313                     ;	;.line	1309; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
314 0260 [00] [1] C935      	CALL	_Disp_BleSymbol
315                     ;	;.line	1310; ".\Source\App_LCD_4718.c"	break;
316 0261 [00] [1] 7835      	JMP	_00563_DS_
317                     _00543_DS_:
318                     ;	;.line	1315; ".\Source\App_LCD_4718.c"	Off_Display();
319 0262 [00] [2] C8BD      	CALL	_Off_Display
320                     	.CHKPARA _Off_Display 0
321                     ;	;.line	1316; ".\Source\App_LCD_4718.c"	break;
322 0263 [00] [1] 7833      	JMP	_00563_DS_
323                     _00544_DS_:
324                     ;	;.line	1321; ".\Source\App_LCD_4718.c"	PreCalibration_Display();
325 0264 [00] [2] C001 F3DF 	CALL	_PreCalibration_Display
326                     	.CHKPARA _PreCalibration_Display 0
327                     ;	;.line	1322; ".\Source\App_LCD_4718.c"	break;
328 0266 [00] [Y] 7830      	JMP	_00563_DS_
329                     _00545_DS_:
330                     ;	;.line	1327; ".\Source\App_LCD_4718.c"	Calibration_Display();
331 0267 [00] [2] C8BF      	CALL	_Calibration_Display
332                     	.CHKPARA _Calibration_Display 0
333                     ;	;.line	1328; ".\Source\App_LCD_4718.c"	break;
334 0268 [00] [X] 782E      	JMP	_00563_DS_
335                     _00546_DS_:
336                     ;	;.line	1333; ".\Source\App_LCD_4718.c"	CalibrationOK_Display();
337 0269 [00] [2] C001 FABE 	CALL	_CalibrationOK_Display
338                     	.CHKPARA _CalibrationOK_Display 0
339                     ;	;.line	1337; ".\Source\App_LCD_4718.c"	Disp_Bat();
340 026B [00] [Y] C92B      	CALL	_Disp_Bat
341                     ;	;.line	1340; ".\Source\App_LCD_4718.c"	break;
342 026C [00] [1] 782A      	JMP	_00563_DS_
343                     _00547_DS_:
344                     ;	;.line	1345; ".\Source\App_LCD_4718.c"	RecentTemp_Display();
345 026D [00] [2] C001 F5B4 	CALL	_RecentTemp_Display
346                     	.CHKPARA _RecentTemp_Display 0
347                     ;	;.line	1349; ".\Source\App_LCD_4718.c"	Disp_Bat();
348 026F [00] [Y] C927      	CALL	_Disp_Bat
349                     ;	;.line	1352; ".\Source\App_LCD_4718.c"	break;
350 0270 [00] [1] 7826      	JMP	_00563_DS_
351                     _00548_DS_:
352                     ;	;.line	1357; ".\Source\App_LCD_4718.c"	MemTempNumber_Display();
353 0271 [00] [2] C8E3      	CALL	_MemTempNumber_Display
354                     	.CHKPARA _MemTempNumber_Display 0
355                     ;	;.line	1359; ".\Source\App_LCD_4718.c"	if(!sBacklight.Backlight2SFlag)
356 0272 [00] [1] A12C      	BTSZ	_sBacklight,0
357 0273 [00] [1] 7803      	JMP	_00550_DS_
358                     ;	;.line	1362; ".\Source\App_LCD_4718.c"	sBacklight.Backlight2SFlag = TRUE;
359 0274 [00] [1] 912C      	BSF	_sBacklight,0
360                     ;	;.line	1364; ".\Source\App_LCD_4718.c"	eBacklight_Status = MemTemp_Backlight;
361 0275 [00] [1] 0602      	MVL	0x02
362 0276 [00] [1] 672B      	MVF	_eBacklight_Status,1,0
363                     _00550_DS_:
364                     ;	;.line	1369; ".\Source\App_LCD_4718.c"	Disp_Bat();
365 0277 [00] [1] C91F      	CALL	_Disp_Bat
366                     ;	;.line	1372; ".\Source\App_LCD_4718.c"	break;
367 0278 [00] [1] 781E      	JMP	_00563_DS_
368                     _00551_DS_:
369                     ;	;.line	1377; ".\Source\App_LCD_4718.c"	MemTempValue_Display();
370 0279 [00] [2] C001 F96E 	CALL	_MemTempValue_Display
371                     	.CHKPARA _MemTempValue_Display 0
372                     ;	;.line	1381; ".\Source\App_LCD_4718.c"	Disp_Bat();
373 027B [00] [Y] C91B      	CALL	_Disp_Bat
374                     ;	;.line	1384; ".\Source\App_LCD_4718.c"	break;
375 027C [00] [1] 781A      	JMP	_00563_DS_
376                     _00552_DS_:
377                     ;	;.line	1390; ".\Source\App_LCD_4718.c"	CurrentMode_Display();
378 027D [00] [2] C001 F346 	CALL	_CurrentMode_Display
379                     ;	;.line	1392; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
380 027F [00] [X] C916      	CALL	_Disp_BleSymbol
381                     ;	;.line	1396; ".\Source\App_LCD_4718.c"	Disp_Bat();
382 0280 [00] [X] C916      	CALL	_Disp_Bat
383                     ;	;.line	1399; ".\Source\App_LCD_4718.c"	break;
384 0281 [00] [1] 7815      	JMP	_00563_DS_
385                     _00553_DS_:
386                     ;	;.line	1404; ".\Source\App_LCD_4718.c"	ModeExchange_Display();
387 0282 [00] [2] C8FD      	CALL	_ModeExchange_Display
388                     	.CHKPARA _ModeExchange_Display 0
389                     ;	;.line	1406; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
390 0283 [00] [X] C912      	CALL	_Disp_BleSymbol
391                     ;	;.line	1410; ".\Source\App_LCD_4718.c"	Disp_Bat();
392 0284 [00] [X] C912      	CALL	_Disp_Bat
393                     ;	;.line	1413; ".\Source\App_LCD_4718.c"	break;
394 0285 [00] [1] 7811      	JMP	_00563_DS_
395                     _00554_DS_:
396                     ;	;.line	1418; ".\Source\App_LCD_4718.c"	Binding_Display();
397 0286 [00] [2] C902      	CALL	_Binding_Display
398                     	.CHKPARA _Binding_Display 0
399                     ;	;.line	1420; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
400 0287 [00] [X] C90E      	CALL	_Disp_BleSymbol
401                     ;	;.line	1421; ".\Source\App_LCD_4718.c"	break;
402 0288 [00] [X] 780E      	JMP	_00563_DS_
403                     _00555_DS_:
404                     ;	;.line	1426; ".\Source\App_LCD_4718.c"	TempDetecting_Display();
405 0289 [00] [2] C000 F6B5 	CALL	_TempDetecting_Display
406                     	.CHKPARA _TempDetecting_Display 0
407                     ;	;.line	1438; ".\Source\App_LCD_4718.c"	Disp_Bat();
408 028B [00] [Y] C90B      	CALL	_Disp_Bat
409                     ;	;.line	1441; ".\Source\App_LCD_4718.c"	break;
410 028C [00] [1] 780A      	JMP	_00563_DS_
411                     _00556_DS_:
412                     ;	;.line	1446; ".\Source\App_LCD_4718.c"	Err_Disp();
413 028D [00] [2] C001 F38D 	CALL	_Err_Disp
414                     	.CHKPARA _Err_Disp 0
415                     ;	;.line	1448; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
416 028F [00] [X] C906      	CALL	_Disp_BleSymbol
417                     ;	;.line	1452; ".\Source\App_LCD_4718.c"	Disp_Bat();
418 0290 [00] [X] C906      	CALL	_Disp_Bat
419                     ;	;.line	1455; ".\Source\App_LCD_4718.c"	break;
420 0291 [00] [1] 7805      	JMP	_00563_DS_
421                     _00557_DS_:
422                     ;	;.line	1460; ".\Source\App_LCD_4718.c"	MeasedTemp_Disp();
423 0292 [00] [2] C959      	CALL	_MeasedTemp_Disp
424                     	.CHKPARA _MeasedTemp_Disp 0
425                     ;	;.line	1462; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
426 0293 [00] [1] C902      	CALL	_Disp_BleSymbol
427                     ;	;.line	1466; ".\Source\App_LCD_4718.c"	Disp_Bat();
428 0294 [00] [1] C902      	CALL	_Disp_Bat
429                     ;	;.line	1469; ".\Source\App_LCD_4718.c"	break;
430 0295 [00] [1] 7801      	JMP	_00563_DS_
431                     _00558_DS_:
432                     ;	;.line	1474; ".\Source\App_LCD_4718.c"	Disp_Nothing();
433 0296 [00] [2] CB1F      	CALL	_Disp_Nothing
434                     _00563_DS_:
435                     ;	;.line	1480; ".\Source\App_LCD_4718.c"	}
436 0297 [00] [X] 000A      	RET	
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
449 03EC [00] [2] C482      _MeasedTemp_Disp:	;Function start
450 03ED [02] [2] BB90      	BTSS	_sTempCal,5
451 03EE [02] [2] 786A      	JMP	_00524_DS_
452                     ;	;.line	1051; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
453 03EF [02] [2] 065A      	MVL	0x5a
454 03F0 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
455 03F2 [02] [1] 7831      	JMP	_00508_DS_
456                     ;	;.line	1054; ".\Source\App_LCD_4718.c"	if(sTIMx.ForecastJudgeOKTempFlash)
457 03F3 [00] [2] 0012 BDCC 	BTSS	_sTIMx,6
458 03F5 [02] [2] 7817      	JMP	_00494_DS_
459                     ;	;.line	1056; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
460 03F6 [02] [2] 65AC      	MVF	(_sActual_Forecast + 13),0,0
461 03F7 [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
462 03F8 [03] [2] 65AD      	MVF	(_sActual_Forecast + 14),0,0
463 03F9 [03] [2] CA05      	CALL	_Centigrade_Convert_Fahrenheit
464 03FA [02] [1] 6680      	MVF	r0x10DD,1,0
465 03FB [02] [1] 6420      	MVF	STK00,0,0
466 03FC [02] [1] 6681      	MVF	r0x10DC,1,0
467                     ;	;.line	1058; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Centigrade)
468 03FD [02] [1] 04D9      	ADDL	0xd9
469 03FE [02] [1] 06EE      	MVL	0xee
470 03FF [02] [1] 1480      	ADDC	r0x10DD,0,0
471 0400 [02] [1] 74        	BTSS	_STATUS,4
472 0400 [02] 02        	JMP	_00488_DS_
473                     ;	;.line	1061; ".\Source\App_LCD_4718.c"	Disp_Hi();
474 0401 [02] [1] C88B      	CALL	_Disp_Hi
475 0402 [02] [1] 7805      	JMP	_00489_DS_
476                     _00488_DS_:
477                     ;	;.line	1066; ".\Source\App_LCD_4718.c"	DispNum(tmp);
478 0403 [02] [1] 6481      	MVF	r0x10DC,0,0
479 0404 [02] [1] 660D      	MVF	_DispNum_STK00,1,0
480 0405 [03] [1] 6481      	MVF	r0x10DD,0,0
481 0406 [03] [1] C8AC      	CALL	_DispNum
482                     ;	;.line	1068; ".\Source\App_LCD_4718.c"	LCD_Point_En();
483 0407 [02] [1] 9D8A      	BSF	_LCD2,6
484                     _00489_DS_:
485                     ;	;.line	1074; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
486 0408 [02] [1] 6481      	MVF	r0x10DC,0,0
487 0409 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
488 040A [03] [1] 6481      	MVF	r0x10DD,0,0
489 040B [03] [1] C9B3      	CALL	_DispDelta
490 040C [02] [1] 784A      	JMP	_00509_DS_
491                     _00494_DS_:
492                     ;	;.line	1084; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
493 040D [02] [2] 658A      	MVF	(_sForecast + 20),0,0
494 040E [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
495 040F [03] [2] 658B      	MVF	(_sForecast + 21),0,0
496 0410 [03] [2] C9EE      	CALL	_Centigrade_Convert_Fahrenheit
497 0411 [02] [1] 6680      	MVF	r0x10DD,1,0
498 0412 [02] [1] 6420      	MVF	STK00,0,0
499 0413 [02] [1] 6681      	MVF	r0x10DC,1,0
500                     ;	;.line	1086; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Centigrade)
501 0414 [02] [1] 04D9      	ADDL	0xd9
502 0415 [02] [1] 06EE      	MVL	0xee
503 0416 [02] [1] 1480      	ADDC	r0x10DD,0,0
504 0417 [02] [1] 74        	BTSS	_STATUS,4
505 0417 [02] 02        	JMP	_00491_DS_
506                     ;	;.line	1089; ".\Source\App_LCD_4718.c"	Disp_Hi();
507 0418 [02] [1] C874      	CALL	_Disp_Hi
508 0419 [02] [1] 7805      	JMP	_00492_DS_
509                     _00491_DS_:
510                     ;	;.line	1094; ".\Source\App_LCD_4718.c"	DispNum(tmp);
511 041A [02] [1] 6481      	MVF	r0x10DC,0,0
512 041B [02] [1] 660D      	MVF	_DispNum_STK00,1,0
513 041C [03] [1] 6481      	MVF	r0x10DD,0,0
514 041D [03] [1] C895      	CALL	_DispNum
515                     ;	;.line	1096; ".\Source\App_LCD_4718.c"	LCD_Point_En();
516 041E [02] [1] 9D8A      	BSF	_LCD2,6
517                     _00492_DS_:
518                     ;	;.line	1102; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
519 041F [02] [1] 6481      	MVF	r0x10DC,0,0
520 0420 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
521 0421 [03] [1] 6481      	MVF	r0x10DD,0,0
522 0422 [03] [1] C99C      	CALL	_DispDelta
523 0423 [02] [1] 7833      	JMP	_00509_DS_
524                     _00508_DS_:
525                     ;	;.line	1112; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
526 0424 [02] [1] 06A5      	MVL	0xa5
527 0425 [02] [1] 6D7F      	CPSE	_eTempUnit,0
528 0426 [02] [1] 7830      	JMP	_00509_DS_
529                     ;	;.line	1115; ".\Source\App_LCD_4718.c"	if(sTIMx.ForecastJudgeOKTempFlash)
530 0427 [00] [2] 0012 BDCC 	BTSS	_sTIMx,6
531 0429 [02] [2] 7817      	JMP	_00503_DS_
532                     ;	;.line	1117; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
533 042A [02] [2] 65AC      	MVF	(_sActual_Forecast + 13),0,0
534 042B [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
535 042C [03] [2] 65AD      	MVF	(_sActual_Forecast + 14),0,0
536 042D [03] [2] C9D1      	CALL	_Centigrade_Convert_Fahrenheit
537 042E [02] [1] 6680      	MVF	r0x10DD,1,0
538 042F [02] [1] 6420      	MVF	STK00,0,0
539 0430 [02] [1] 6681      	MVF	r0x10DC,1,0
540                     ;	;.line	1119; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Fahrenheit)
541 0431 [02] [1] 04A3      	ADDL	0xa3
542 0432 [02] [1] 06D4      	MVL	0xd4
543 0433 [02] [1] 1480      	ADDC	r0x10DD,0,0
544 0434 [02] [1] 74        	BTSS	_STATUS,4
545 0434 [02] 02        	JMP	_00497_DS_
546                     ;	;.line	1122; ".\Source\App_LCD_4718.c"	Disp_Hi();
547 0435 [02] [1] C857      	CALL	_Disp_Hi
548 0436 [02] [1] 7805      	JMP	_00498_DS_
549                     _00497_DS_:
550                     ;	;.line	1127; ".\Source\App_LCD_4718.c"	DispNum(tmp);
551 0437 [02] [1] 6481      	MVF	r0x10DC,0,0
552 0438 [02] [1] 660D      	MVF	_DispNum_STK00,1,0
553 0439 [03] [1] 6481      	MVF	r0x10DD,0,0
554 043A [03] [1] C878      	CALL	_DispNum
555                     ;	;.line	1129; ".\Source\App_LCD_4718.c"	LCD_Point_En();
556 043B [02] [1] 9D8A      	BSF	_LCD2,6
557                     _00498_DS_:
558                     ;	;.line	1135; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
559 043C [02] [1] 6481      	MVF	r0x10DC,0,0
560 043D [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
561 043E [03] [1] 6481      	MVF	r0x10DD,0,0
562 043F [03] [1] C97F      	CALL	_DispDelta
563 0440 [02] [1] 7816      	JMP	_00509_DS_
564                     _00503_DS_:
565                     ;	;.line	1145; ".\Source\App_LCD_4718.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
566 0441 [02] [2] 658A      	MVF	(_sForecast + 20),0,0
567 0442 [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
568 0443 [03] [2] 658B      	MVF	(_sForecast + 21),0,0
569 0444 [03] [2] C9BA      	CALL	_Centigrade_Convert_Fahrenheit
570 0445 [02] [1] 6680      	MVF	r0x10DD,1,0
571 0446 [02] [1] 6420      	MVF	STK00,0,0
572 0447 [02] [1] 6681      	MVF	r0x10DC,1,0
573                     ;	;.line	1147; ".\Source\App_LCD_4718.c"	if(tmp > High_Temp_Fahrenheit)
574 0448 [02] [1] 04A3      	ADDL	0xa3
575 0449 [02] [1] 06D4      	MVL	0xd4
576 044A [02] [1] 1480      	ADDC	r0x10DD,0,0
577 044B [02] [1] 74        	BTSS	_STATUS,4
578 044B [02] 02        	JMP	_00500_DS_
579                     ;	;.line	1150; ".\Source\App_LCD_4718.c"	Disp_Hi();
580 044C [02] [1] C840      	CALL	_Disp_Hi
581 044D [02] [1] 7805      	JMP	_00501_DS_
582                     _00500_DS_:
583                     ;	;.line	1155; ".\Source\App_LCD_4718.c"	DispNum(tmp);
584 044E [02] [1] 6481      	MVF	r0x10DC,0,0
585 044F [02] [1] 660D      	MVF	_DispNum_STK00,1,0
586 0450 [03] [1] 6481      	MVF	r0x10DD,0,0
587 0451 [03] [1] C861      	CALL	_DispNum
588                     ;	;.line	1157; ".\Source\App_LCD_4718.c"	LCD_Point_En();
589 0452 [02] [1] 9D8A      	BSF	_LCD2,6
590                     _00501_DS_:
591                     ;	;.line	1163; ".\Source\App_LCD_4718.c"	DispDelta(tmp);
592 0453 [02] [1] 6481      	MVF	r0x10DC,0,0
593 0454 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
594 0455 [03] [1] 6481      	MVF	r0x10DD,0,0
595 0456 [03] [1] C968      	CALL	_DispDelta
596                     _00509_DS_:
597                     ;	;.line	1173; ".\Source\App_LCD_4718.c"	DispUnit();
598 0457 [02] [1] C99B      	CALL	_DispUnit
599 0458 [02] [1] 7832      	JMP	_00530_DS_
600                     _00524_DS_:
601                     ;	;.line	1178; ".\Source\App_LCD_4718.c"	if(!sADC.UnRefreshTemp)
602 0459 [02] [2] A943      	BTSZ	_sADC,4
603 045A [02] [2] 7808      	JMP	_00511_DS_
604                     ;	;.line	1181; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
605 045B [02] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
606 045C [02] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
607 045D [03] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
608 045E [03] [2] C9A0      	CALL	_Centigrade_Convert_Fahrenheit
609 045F [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
610 0461 [02] [2] 6420      	MVF	STK00,0,0
611 0462 [02] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
612                     _00511_DS_:
613                     ;	;.line	1185; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
614 0463 [02] [2] 065A      	MVL	0x5a
615 0464 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
616 0466 [02] [1] 780E      	JMP	_00521_DS_
617                     ;	;.line	1188; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
618 0467 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
619 0469 [02] [2] 04D9      	ADDL	0xd9
620 046A [02] [2] 06EE      	MVL	0xee
621 046B [02] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
622 046C [02] [2] 74        	BTSS	_STATUS,4
623 046C [02] 02        	JMP	_00513_DS_
624                     ;	;.line	1191; ".\Source\App_LCD_4718.c"	Disp_Hi();
625 046D [02] [2] C81F      	CALL	_Disp_Hi
626 046E [02] [1] 7816      	JMP	_00522_DS_
627                     _00513_DS_:
628                     ;	;.line	1196; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
629 046F [02] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
630 0470 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
631 0471 [03] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
632 0472 [03] [2] C840      	CALL	_DispNum
633                     ;	;.line	1198; ".\Source\App_LCD_4718.c"	LCD_Point_En();
634 0473 [02] [1] 9D8A      	BSF	_LCD2,6
635 0474 [02] [1] 7810      	JMP	_00522_DS_
636                     _00521_DS_:
637                     ;	;.line	1202; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
638 0475 [02] [1] 06A5      	MVL	0xa5
639 0476 [02] [1] 6D7F      	CPSE	_eTempUnit,0
640 0477 [02] [1] 780D      	JMP	_00522_DS_
641                     ;	;.line	1205; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
642 0478 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
643 047A [02] [2] 04A3      	ADDL	0xa3
644 047B [02] [2] 06D4      	MVL	0xd4
645 047C [02] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
646 047D [02] [2] 74        	BTSS	_STATUS,4
647 047D [02] 02        	JMP	_00516_DS_
648                     ;	;.line	1208; ".\Source\App_LCD_4718.c"	Disp_Hi();
649 047E [02] [2] C80E      	CALL	_Disp_Hi
650 047F [02] [1] 7805      	JMP	_00522_DS_
651                     _00516_DS_:
652                     ;	;.line	1213; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
653 0480 [02] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
654 0481 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
655 0482 [03] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
656 0483 [03] [2] C82F      	CALL	_DispNum
657                     ;	;.line	1215; ".\Source\App_LCD_4718.c"	LCD_Point_En();
658 0484 [02] [1] 9D8A      	BSF	_LCD2,6
659                     _00522_DS_:
660                     ;	;.line	1220; ".\Source\App_LCD_4718.c"	DispUnit();
661 0485 [02] [1] C96D      	CALL	_DispUnit
662                     ;	;.line	1225; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
663 0486 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
664 0488 [02] [2] 660D      	MVF	_DispDelta_STK00,1,0
665 0489 [03] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
666 048A [03] [2] C934      	CALL	_DispDelta
667 048B [02] [1] C4BE      _00530_DS_:
668                     ;	;.line	1244; ".\Source\App_LCD_4718.c"	}
669 048C [00] [1] 000A      	RET	
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
682 138D [00] [2] 4D39      	RRF	(_ERR + 4),0,0
683 138E [00] [2] 71        	BTSZ	_STATUS,0
684 138E [00] 03        	JMP	_00480_DS_
685                     ;	;.line	992; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err4);
686 138F [00] [2] 0604      	MVL	0x04
687 1390 [00] [2] C835      	CALL	_Disp_ErrNo
688                     	.CHKPARA _Disp_ErrNo 1
689 1391 [00] [1] 7826      	JMP	_00482_DS_
690                     _00480_DS_:
691                     ;	;.line	994; ".\Source\App_LCD_4718.c"	else if(ERR[Err0])
692 1392 [00] [2] 4D35      	RRF	(_ERR + 0),0,0
693 1393 [00] [2] 71        	BTSZ	_STATUS,0
694 1393 [00] 03        	JMP	_00477_DS_
695                     ;	;.line	998; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err0);
696 1394 [00] [2] 0600      	MVL	0x00
697 1395 [00] [2] C830      	CALL	_Disp_ErrNo
698 1396 [00] [1] 7821      	JMP	_00482_DS_
699                     _00477_DS_:
700                     ;	;.line	1000; ".\Source\App_LCD_4718.c"	else if(ERR[Err5])
701 1397 [00] [2] 4D3A      	RRF	(_ERR + 5),0,0
702 1398 [00] [2] 71        	BTSZ	_STATUS,0
703 1398 [00] 03        	JMP	_00474_DS_
704                     ;	;.line	1004; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err5);
705 1399 [00] [2] 0605      	MVL	0x05
706 139A [00] [2] C82B      	CALL	_Disp_ErrNo
707 139B [00] [1] 781C      	JMP	_00482_DS_
708                     _00474_DS_:
709                     ;	;.line	1006; ".\Source\App_LCD_4718.c"	else if(ERR[Err1])
710 139C [00] [2] 4D36      	RRF	(_ERR + 1),0,0
711 139D [00] [2] 71        	BTSZ	_STATUS,0
712 139D [00] 03        	JMP	_00471_DS_
713                     ;	;.line	1009; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err1);
714 139E [00] [2] 0601      	MVL	0x01
715 139F [00] [2] C826      	CALL	_Disp_ErrNo
716 13A0 [00] [1] 7817      	JMP	_00482_DS_
717                     _00471_DS_:
718                     ;	;.line	1011; ".\Source\App_LCD_4718.c"	else if(ERR[Err6])
719 13A1 [00] [2] 4D3B      	RRF	(_ERR + 6),0,0
720 13A2 [00] [2] 71        	BTSZ	_STATUS,0
721 13A2 [00] 03        	JMP	_00468_DS_
722                     ;	;.line	1014; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err6);
723 13A3 [00] [2] 0606      	MVL	0x06
724 13A4 [00] [2] C821      	CALL	_Disp_ErrNo
725 13A5 [00] [1] 7812      	JMP	_00482_DS_
726                     _00468_DS_:
727                     ;	;.line	1016; ".\Source\App_LCD_4718.c"	else if(ERR[Err2])
728 13A6 [00] [2] 4D37      	RRF	(_ERR + 2),0,0
729 13A7 [00] [2] 71        	BTSZ	_STATUS,0
730 13A7 [00] 03        	JMP	_00465_DS_
731                     ;	;.line	1019; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err2);
732 13A8 [00] [2] 0602      	MVL	0x02
733 13A9 [00] [2] C81C      	CALL	_Disp_ErrNo
734 13AA [00] [1] 780D      	JMP	_00482_DS_
735                     _00465_DS_:
736                     ;	;.line	1021; ".\Source\App_LCD_4718.c"	else if(ERR[Err3])
737 13AB [00] [2] 4D38      	RRF	(_ERR + 3),0,0
738 13AC [00] [2] 71        	BTSZ	_STATUS,0
739 13AC [00] 03        	JMP	_00462_DS_
740                     ;	;.line	1024; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err3);
741 13AD [00] [2] 0603      	MVL	0x03
742 13AE [00] [2] C817      	CALL	_Disp_ErrNo
743 13AF [00] [1] 7808      	JMP	_00482_DS_
744                     _00462_DS_:
745                     ;	;.line	1026; ".\Source\App_LCD_4718.c"	else if(ERR[Err])
746 13B0 [00] [2] 4D3D      	RRF	(_ERR + 8),0,0
747 13B1 [00] [2] 71        	BTSZ	_STATUS,0
748 13B1 [00] 02        	JMP	_00459_DS_
749                     ;	;.line	1029; ".\Source\App_LCD_4718.c"	Disp_Err();
750 13B2 [00] [2] C806      	CALL	_Disp_Err
751                     	.CHKPARA _Disp_Err 0
752 13B3 [00] [1] 7804      	JMP	_00482_DS_
753                     _00459_DS_:
754                     ;	;.line	1031; ".\Source\App_LCD_4718.c"	else if(ERR[Err7])
755 13B4 [00] [2] 4D3C      	RRF	(_ERR + 7),0,0
756 13B5 [00] [2] 71        	BTSZ	_STATUS,0
757 13B5 [00] 02        	JMP	_00482_DS_
758                     ;	;.line	1034; ".\Source\App_LCD_4718.c"	Disp_ErrNo(Err7);
759 13B6 [00] [2] 0607      	MVL	0x07
760 13B7 [00] [2] C80E      	CALL	_Disp_ErrNo
761                     _00482_DS_:
762                     ;	;.line	1036; ".\Source\App_LCD_4718.c"	}
763 13B8 [00] [X] 000A      	RET	
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
778 06B5 [00] [2] 6502      	MVF	_eMeasureMode,0,0
779 06B6 [00] [2] 0303      	XORL	0x03
780 06B7 [00] [2] 71        	BTSZ	_STATUS,0
781 06B7 [00] 02        	JMP	_00391_DS_
782 06B8 [00] [2] B171      	BTSS	_sActual,0
783 06B9 [00] [2] 7840      	JMP	_00392_DS_
784                     _00391_DS_:
785                     ;	;.line	879; ".\Source\App_LCD_4718.c"	if(!sADC.UnRefreshTemp)
786 06BA [00] [2] A943      	BTSZ	_sADC,4
787 06BB [00] [2] 783C      	JMP	_00387_DS_
788                     ;	;.line	885; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
789 06BC [00] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
790 06BD [00] [2] 660D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
791 06BE [01] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
792 06BF [01] [2] CF3F      	CALL	_Centigrade_Convert_Fahrenheit
793 06C0 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
794 06C2 [00] [2] 6420      	MVF	STK00,0,0
795 06C3 [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
796                     ;	;.line	888; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
797 06C4 [00] [2] 065A      	MVL	0x5a
798 06C5 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
799 06C7 [00] [1] 7817      	JMP	_00384_DS_
800                     ;	;.line	891; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
801 06C8 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
802 06CA [00] [2] 04D9      	ADDL	0xd9
803 06CB [00] [2] 06EE      	MVL	0xee
804 06CC [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
805 06CD [00] [2] 74        	BTSS	_STATUS,4
806 06CD [00] 03        	JMP	_00373_DS_
807                     ;	;.line	894; ".\Source\App_LCD_4718.c"	Disp_Hi();
808 06CE [00] [2] CDBE      	CALL	_Disp_Hi
809                     ;	;.line	896; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
810 06CF [00] [1] CD1B      	CALL	_EMC_Update_Temp_Fast
811                     	.CHKPARA _EMC_Update_Temp_Fast 0
812 06D0 [00] [1] 7827      	JMP	_00387_DS_
813                     _00373_DS_:
814                     ;	;.line	899; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
815 06D1 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
816 06D2 [00] [2] 04D8      	ADDL	0xd8
817 06D3 [00] [2] 06F5      	MVL	0xf5
818 06D4 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
819 06D5 [00] [2] 70        	BTSZ	_STATUS,4
820 06D5 [00] 02        	JMP	_00370_DS_
821                     ;	;.line	909; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
822 06D6 [00] [2] CDC2      	CALL	_Disp_StaticDash
823 06D7 [00] [1] 7820      	JMP	_00387_DS_
824                     _00370_DS_:
825                     ;	;.line	915; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
826 06D8 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
827 06D9 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
828 06DA [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
829 06DB [01] [2] CDD7      	CALL	_DispNum
830                     ;	;.line	917; ".\Source\App_LCD_4718.c"	LCD_Point_En();
831 06DC [00] [1] 9D8A      	BSF	_LCD2,6
832                     ;	;.line	919; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
833 06DD [00] [1] CD0D      	CALL	_EMC_Update_Temp_Fast
834 06DE [00] [1] 7819      	JMP	_00387_DS_
835                     _00384_DS_:
836                     ;	;.line	923; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
837 06DF [00] [1] 06A5      	MVL	0xa5
838 06E0 [00] [1] 6D7F      	CPSE	_eTempUnit,0
839 06E1 [00] [1] 7816      	JMP	_00387_DS_
840                     ;	;.line	926; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
841 06E2 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
842 06E4 [00] [2] 04A3      	ADDL	0xa3
843 06E5 [00] [2] 06D4      	MVL	0xd4
844 06E6 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
845 06E7 [00] [2] 74        	BTSS	_STATUS,4
846 06E7 [00] 03        	JMP	_00379_DS_
847                     ;	;.line	929; ".\Source\App_LCD_4718.c"	Disp_Hi();
848 06E8 [00] [2] CDA4      	CALL	_Disp_Hi
849                     ;	;.line	931; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
850 06E9 [00] [1] CD01      	CALL	_EMC_Update_Temp_Fast
851 06EA [00] [1] 780D      	JMP	_00387_DS_
852                     _00379_DS_:
853                     ;	;.line	934; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
854 06EB [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
855 06EC [00] [2] 0438      	ADDL	0x38
856 06ED [00] [2] 06E1      	MVL	0xe1
857 06EE [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
858 06EF [00] [2] 70        	BTSZ	_STATUS,4
859 06EF [00] 02        	JMP	_00376_DS_
860                     ;	;.line	944; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
861 06F0 [00] [2] CDA8      	CALL	_Disp_StaticDash
862 06F1 [00] [1] 7806      	JMP	_00387_DS_
863                     _00376_DS_:
864                     ;	;.line	950; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
865 06F2 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
866 06F3 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
867 06F4 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
868 06F5 [01] [2] CDBD      	CALL	_DispNum
869                     ;	;.line	952; ".\Source\App_LCD_4718.c"	LCD_Point_En();
870 06F6 [00] [1] 9D8A      	BSF	_LCD2,6
871                     ;	;.line	954; ".\Source\App_LCD_4718.c"	EMC_Update_Temp_Fast();
872 06F7 [00] [1] CCF3      	CALL	_EMC_Update_Temp_Fast
873                     _00387_DS_:
874                     ;	;.line	959; ".\Source\App_LCD_4718.c"	Disp_UnitFlash();
875 06F8 [00] [X] CCC1      	CALL	_Disp_UnitFlash
876 06F9 [00] [1] 7807      	JMP	_00393_DS_
877                     _00392_DS_:
878                     ;	;.line	963; ".\Source\App_LCD_4718.c"	if(sForecast.Forecast_Start)
879 06FA [00] [2] B176      	BTSS	_sForecast,0
880 06FB [00] [2] 7803      	JMP	_00389_DS_
881                     ;	;.line	965; ".\Source\App_LCD_4718.c"	Disp_DynamicDash();
882 06FC [00] [2] CCDA      	CALL	_Disp_DynamicDash
883                     	.CHKPARA _Disp_DynamicDash 0
884                     ;	;.line	966; ".\Source\App_LCD_4718.c"	Disp_DynamicForecastSymbol();
885 06FD [00] [1] CCEC      	CALL	_Disp_DynamicForecastSymbol
886                     	.CHKPARA _Disp_DynamicForecastSymbol 0
887 06FE [00] [1] 7801      	JMP	_00390_DS_
888                     _00389_DS_:
889                     ;	;.line	971; ".\Source\App_LCD_4718.c"	Disp_StaticDash();
890 06FF [00] [2] CD99      	CALL	_Disp_StaticDash
891                     _00390_DS_:
892                     ;	;.line	975; ".\Source\App_LCD_4718.c"	DispUnit();
893 0700 [00] [1] CEF2      	CALL	_DispUnit
894                     _00393_DS_:
895                     ;	;.line	978; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
896 0701 [00] [1] 7C94      	CALL	_Disp_BleSymbol
897                     ;	;.line	979; ".\Source\App_LCD_4718.c"	}
898                     	RET	
899                     ; exit point of _TempDetecting_Display
900                     	.ENDFUNC	_TempDetecting_Display
901                     ;--------------------------------------------------------
902                     
903                     .globl _EMC_Update_Temp_Fast
904                     
905                     ;--------------------------------------------------------
906                     	.FUNC _EMC_Update_Temp_Fast:$r:0:0
907                     ;--------------------------------------------------------
908                     ;	;.line	862; ".\Source\App_LCD_4718.c"	}
909                     _EMC_Update_Temp_Fast:	;Function start
910 03EB [00] [Y] 000A      	RET	
911                     ; exit point of _EMC_Update_Temp_Fast
912                     	.ENDFUNC	_EMC_Update_Temp_Fast
913                     ;--------------------------------------------------------
914                     
915                     .globl _Binding_Display
916                     
917                     ;--------------------------------------------------------
918                     	.FUNC _Binding_Display:$r:0:0:$C:_Disp_Version:$C:_Disp_Code\
919                     
920                     ;--------------------------------------------------------
921                     ;	;.line	827; ".\Source\App_LCD_4718.c"	if(eVersionCode == VC_DispOn)
922                     _Binding_Display:	;Function start
923 0389 [00] [2] 4D01      	RRF	_eVersionCode,0,0
924 038A [00] [2] 71        	BTSZ	_STATUS,0
925 038A [00] 0A        	JMP	_00360_DS_
926                     ;	;.line	829; ".\Source\App_LCD_4718.c"	if(sTIMx.BindingSymbolFlash)
927 038B [00] [2] BFCC      	BTSS	_sTIMx,7
928 038C [00] [2] 7803      	JMP	_00356_DS_
929                     ;	;.line	832; ".\Source\App_LCD_4718.c"	Disp_Version(Soft_External_Version);
930 038D [00] [2] 060A      	MVL	0x0a
931 038E [00] [2] CF12      	CALL	_Disp_Version
932                     	.CHKPARA _Disp_Version 1
933 038F [00] [1] 7805      	JMP	_00360_DS_
934                     _00356_DS_:
935                     ;	;.line	837; ".\Source\App_LCD_4718.c"	Disp_Code(Soft_Code);
936 0390 [00] [2] 06AA      	MVL	0xaa
937 0391 [00] [2] 660D      	MVF	_Disp_Code_STK00,1,0
938 0392 [01] [2] 0601      	MVL	0x01
939 0393 [01] [2] C001 F508 	CALL	_Disp_Code
940                     	.CHKPARA _Disp_Code 2
941                     _00360_DS_:
942                     ;	;.line	840; ".\Source\App_LCD_4718.c"	}
943 0395 [00] [X] 000A      	RET	
944                     ; exit point of _Binding_Display
945                     	.ENDFUNC	_Binding_Display
946                     ;--------------------------------------------------------
947                     
948                     .globl _ModeExchange_Display
949                     
950                     ;--------------------------------------------------------
951                     	.FUNC _ModeExchange_Display:$r:0:0:$C:_CurrentMode_Display:$C:_Disp_Nothing\
952                     
953                     ;--------------------------------------------------------
954                     ;	;.line	807; ".\Source\App_LCD_4718.c"	if(sTIMx.ModeSymbolFlash || sTIMx.EnableModeSymbolFlash)
955                     _ModeExchange_Display:	;Function start
956 0380 [00] [2] A7CC      	BTSZ	_sTIMx,3
957 0381 [00] [2] 7802      	JMP	_00346_DS_
958 0382 [00] [2] B9CC      	BTSS	_sTIMx,4
959 0383 [00] [2] 7803      	JMP	_00347_DS_
960                     _00346_DS_:
961                     ;	;.line	810; ".\Source\App_LCD_4718.c"	CurrentMode_Display();
962 0384 [00] [2] C001 F346 	CALL	_CurrentMode_Display
963                     	.CHKPARA _CurrentMode_Display 0
964 0386 [00] [X] 7801      	JMP	_00350_DS_
965                     _00347_DS_:
966                     ;	;.line	815; ".\Source\App_LCD_4718.c"	Disp_Nothing();
967 0387 [00] [2] CA2E      	CALL	_Disp_Nothing
968                     _00350_DS_:
969                     ;	;.line	817; ".\Source\App_LCD_4718.c"	}
970 0388 [00] [X] 000A      	RET	
971                     ; exit point of _ModeExchange_Display
972                     	.ENDFUNC	_ModeExchange_Display
973                     ;--------------------------------------------------------
974                     
975                     .globl _CurrentMode_Display
976                     
977                     ;--------------------------------------------------------
978                     	.FUNC _CurrentMode_Display:$r:0:0:$C:_Disp_Orl:$C:_Disp_Udr:$C:_Disp_Rct:$C:_Disp_Bth\
979                     
980                     ;--------------------------------------------------------
981                     ;	;.line	765; ".\Source\App_LCD_4718.c"	if(eMeasureMode == Oral_Mode)
982                     _CurrentMode_Display:	;Function start
983 1346 [00] [2] 6F02      	TFSZ	_eMeasureMode,0
984 1347 [00] [2] 7802      	JMP	_00339_DS_
985                     ;	;.line	768; ".\Source\App_LCD_4718.c"	Disp_Orl();
986 1348 [00] [2] C837      	CALL	_Disp_Orl
987                     	.CHKPARA _Disp_Orl 0
988 1349 [00] [1] 780D      	JMP	_00341_DS_
989                     _00339_DS_:
990                     ;	;.line	771; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Underarm_Mode)
991 134A [00] [2] 3502      	DCSZ	_eMeasureMode,0,0
992 134B [00] [2] 7802      	JMP	_00336_DS_
993                     ;	;.line	774; ".\Source\App_LCD_4718.c"	Disp_Udr();
994 134C [00] [2] C826      	CALL	_Disp_Udr
995                     	.CHKPARA _Disp_Udr 0
996 134D [00] [1] 7809      	JMP	_00341_DS_
997                     _00336_DS_:
998                     ;	;.line	777; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Rectal_Mode)
999 134E [00] [2] 0602      	MVL	0x02
1000 134F [00] [2] 6D02      	CPSE	_eMeasureMode,0
1001 1350 [00] [2] 7802      	JMP	_00333_DS_
1002                     ;	;.line	780; ".\Source\App_LCD_4718.c"	Disp_Rct();
1003 1351 [00] [2] C814      	CALL	_Disp_Rct
1004                     	.CHKPARA _Disp_Rct 0
1005 1352 [00] [1] 7804      	JMP	_00341_DS_
1006                     _00333_DS_:
1007                     ;	;.line	783; ".\Source\App_LCD_4718.c"	else if(eMeasureMode == Bath_Mode)
1008 1353 [00] [2] 0603      	MVL	0x03
1009 1354 [00] [2] 6D02      	CPSE	_eMeasureMode,0
1010 1355 [00] [2] 7801      	JMP	_00341_DS_
1011                     ;	;.line	786; ".\Source\App_LCD_4718.c"	Disp_Bth();
1012 1356 [00] [2] C801      	CALL	_Disp_Bth
1013                     	.CHKPARA _Disp_Bth 0
1014                     _00341_DS_:
1015                     ;	;.line	788; ".\Source\App_LCD_4718.c"	}
1016 1357 [00] [X] 000A      	RET	
1017                     ; exit point of _CurrentMode_Display
1018                     	.ENDFUNC	_CurrentMode_Display
1019                     ;--------------------------------------------------------
1020                     
1021                     .globl _MemTempValue_Display
1022                     
1023                     ;--------------------------------------------------------
1024                     	.FUNC _MemTempValue_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
1025                     :$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\
1026                     
1027                     ;--------------------------------------------------------
1028                     ;	;.line	667; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
1029                     _MemTempValue_Display:	;Function start
1030 196E [00] [2] 65C8      	MVF	(_sMemoryFlag + 2),0,0
1031 196F [00] [2] 0702      	MULL	0x02
1032 1970 [00] [2] 000C F2B2 	LDPR	(_sMemory + 3),0
1033 1972 [00] [2] 6422      	MVF	_PRODL,0,0
1034 1973 [00] [2] D004 F020 	MVFF	_PLUSW0,STK00
1035 1975 [00] [2] 3829      	INF	_WREG,0,0
1036 1976 [00] [2] D004 F01F 	MVFF	_PLUSW0,STK01
1037 1978 [00] [2] D020 F00D 	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
1038 197A [01] [2] 641F      	MVF	STK01,0,0
1039 197B [01] [2] C000 F5FF 	CALL	_Centigrade_Convert_Fahrenheit
1040 197D [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
1041 197F [00] [2] 6420      	MVF	STK00,0,0
1042 1980 [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
1043                     ;	;.line	668; ".\Source\App_LCD_4718.c"	if(!sMemory.MemTempSum)
1044 1981 [00] [2] 6FB1      	TFSZ	(_sMemory + 2),0
1045 1982 [00] [2] 7803      	JMP	_00324_DS_
1046                     ;	;.line	675; ".\Source\App_LCD_4718.c"	Disp_StaticDash();
1047 1983 [00] [2] C000 F499 	CALL	_Disp_StaticDash
1048 1985 [00] [1] 783C      	JMP	_00325_DS_
1049                     _00324_DS_:
1050                     ;	;.line	681; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1051 1986 [00] [2] 065A      	MVL	0x5a
1052 1987 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1053 1989 [00] [1] 7818      	JMP	_00321_DS_
1054                     ;	;.line	683; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
1055 198A [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1056 198C [00] [2] 04D9      	ADDL	0xd9
1057 198D [00] [2] 06EE      	MVL	0xee
1058 198E [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1059 198F [00] [2] 74        	BTSS	_STATUS,4
1060 198F [00] 03        	JMP	_00310_DS_
1061                     ;	;.line	685; ".\Source\App_LCD_4718.c"	Disp_Hi();
1062 1990 [00] [2] C000 F48D 	CALL	_Disp_Hi
1063 1992 [00] [1] 7829      	JMP	_00322_DS_
1064                     _00310_DS_:
1065                     ;	;.line	687; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
1066 1993 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1067 1994 [00] [2] 04D8      	ADDL	0xd8
1068 1995 [00] [2] 06F5      	MVL	0xf5
1069 1996 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1070 1997 [00] [2] 70        	BTSZ	_STATUS,4
1071 1997 [00] 03        	JMP	_00307_DS_
1072                     ;	;.line	697; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1073 1998 [00] [2] C000 F499 	CALL	_Disp_StaticDash
1074 199A [00] [1] 7821      	JMP	_00322_DS_
1075                     _00307_DS_:
1076                     ;	;.line	703; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1077 199B [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1078 199C [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1079 199D [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1080 199E [01] [2] C000 F4B3 	CALL	_DispNum
1081                     ;	;.line	705; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1082 19A0 [00] [1] 9D8A      	BSF	_LCD2,6
1083 19A1 [00] [1] 781A      	JMP	_00322_DS_
1084                     _00321_DS_:
1085                     ;	;.line	709; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1086 19A2 [00] [1] 06A5      	MVL	0xa5
1087 19A3 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1088 19A4 [00] [1] 7817      	JMP	_00322_DS_
1089                     ;	;.line	711; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
1090 19A5 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1091 19A7 [00] [2] 04A3      	ADDL	0xa3
1092 19A8 [00] [2] 06D4      	MVL	0xd4
1093 19A9 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1094 19AA [00] [2] 74        	BTSS	_STATUS,4
1095 19AA [00] 03        	JMP	_00316_DS_
1096                     ;	;.line	713; ".\Source\App_LCD_4718.c"	Disp_Hi();
1097 19AB [00] [2] C000 F48D 	CALL	_Disp_Hi
1098 19AD [00] [1] 780E      	JMP	_00322_DS_
1099                     _00316_DS_:
1100                     ;	;.line	715; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
1101 19AE [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1102 19AF [00] [2] 0438      	ADDL	0x38
1103 19B0 [00] [2] 06E1      	MVL	0xe1
1104 19B1 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1105 19B2 [00] [2] 70        	BTSZ	_STATUS,4
1106 19B2 [00] 03        	JMP	_00313_DS_
1107                     ;	;.line	725; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1108 19B3 [00] [2] C000 F499 	CALL	_Disp_StaticDash
1109 19B5 [00] [1] 7806      	JMP	_00322_DS_
1110                     _00313_DS_:
1111                     ;	;.line	731; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1112 19B6 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1113 19B7 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1114 19B8 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1115 19B9 [01] [2] C000 F4B3 	CALL	_DispNum
1116                     ;	;.line	733; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1117 19BB [00] [1] 9D8A      	BSF	_LCD2,6
1118                     _00322_DS_:
1119                     ;	;.line	740; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
1120 19BC [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1121 19BE [00] [2] 660D      	MVF	_DispDelta_STK00,1,0
1122 19BF [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1123 19C0 [01] [2] C000 F5BF 	CALL	_DispDelta
1124                     _00325_DS_:
1125                     ;	;.line	750; ".\Source\App_LCD_4718.c"	DispUnit();
1126 19C2 [00] [1] C000 F5F3 	CALL	_DispUnit
1127                     ;	;.line	752; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
1128 19C4 [00] [1] 958B      	BSF	_LCD3,2
1129                     ;	;.line	754; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1130 19C5 [00] [1] C200 F396 	CALL	_Disp_BleSymbol
1131                     ;	;.line	755; ".\Source\App_LCD_4718.c"	}
1132                     	RET	
1133                     ; exit point of _MemTempValue_Display
1134                     	.ENDFUNC	_MemTempValue_Display
1135                     ;--------------------------------------------------------
1136                     
1137                     .globl _MemTempNumber_Display
1138                     
1139                     ;--------------------------------------------------------
1140                     	.FUNC _MemTempNumber_Display:$r:0:0:$C:_DispNum:$C:_Disp_BleSymbol\
1141                     :$L:r0x10C7
1142                     ;--------------------------------------------------------
1143                     ;	;.line	615; ".\Source\App_LCD_4718.c"	if(sMemoryFlag.Update_MemTempDispNo)
1144 0355 [00] [2] C481      _MemTempNumber_Display:	;Function start
1145 0356 [01] [2] B9C6      	BTSS	_sMemoryFlag,4
1146 0357 [01] [2] 7807      	JMP	_00290_DS_
1147                     ;	;.line	617; ".\Source\App_LCD_4718.c"	sMemoryFlag.Update_MemTempDispNo = FALSE;
1148 0358 [01] [2] 89C6      	BCF	_sMemoryFlag,4
1149                     ;	;.line	619; ".\Source\App_LCD_4718.c"	if(++sMemoryFlag.MemTempDispNo > sMemory.MemTempSum)
1150 0359 [01] [2] 3BC7      	INF	(_sMemoryFlag + 1),1,0
1151 035A [01] [2] 65C7      	MVF	(_sMemoryFlag + 1),0,0
1152 035B [01] [2] 6BB1      	CPSL	(_sMemory + 2),0
1153 035C [01] [2] 7802      	JMP	_00290_DS_
1154                     ;	;.line	621; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispNo = 1;
1155 035D [01] [2] 0601      	MVL	0x01
1156 035E [01] [2] 67C7      	MVF	(_sMemoryFlag + 1),1,0
1157                     _00290_DS_:
1158                     ;	;.line	625; ".\Source\App_LCD_4718.c"	if(sMemoryFlag.Update_MemTempDispVlaue)
1159 035F [01] [2] BBC6      	BTSS	_sMemoryFlag,5
1160 0360 [01] [2] 7817      	JMP	_00301_DS_
1161                     ;	;.line	627; ".\Source\App_LCD_4718.c"	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
1162 0361 [01] [2] 8BC6      	BCF	_sMemoryFlag,5
1163                     ;	;.line	628; ".\Source\App_LCD_4718.c"	if(sMemory.MemTempSum == MemTempNum/*10*/)
1164 0362 [01] [2] 060A      	MVL	0x0a
1165 0363 [01] [2] 6DB1      	CPSE	(_sMemory + 2),0
1166 0364 [01] [2] 780A      	JMP	_00298_DS_
1167                     ;	;.line	630; ".\Source\App_LCD_4718.c"	if(!sMemoryFlag.MemTempDispValue)
1168 0365 [01] [2] 65C8      	MVF	(_sMemoryFlag + 2),0,0
1169 0366 [01] [2] 6680      	MVF	r0x10C7,1,0
1170 0367 [01] [2] 6E29      	TFSZ	_WREG,0
1171 0368 [01] [2] 7803      	JMP	_00292_DS_
1172                     ;	;.line	632; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispValue = MemTempNum - 1/*9*/;
1173 0369 [01] [2] 0609      	MVL	0x09
1174 036A [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1175 036B [01] [2] 780C      	JMP	_00301_DS_
1176                     _00292_DS_:
1177                     ;	;.line	636; ".\Source\App_LCD_4718.c"	--sMemoryFlag.MemTempDispValue;
1178 036C [01] [2] 3080      	DCF	r0x10C7,0,0
1179 036D [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1180 036E [01] [2] 7809      	JMP	_00301_DS_
1181                     _00298_DS_:
1182                     ;	;.line	641; ".\Source\App_LCD_4718.c"	if(!sMemoryFlag.MemTempDispValue)
1183 036F [01] [2] 65C8      	MVF	(_sMemoryFlag + 2),0,0
1184 0370 [01] [2] 6680      	MVF	r0x10C7,1,0
1185 0371 [01] [2] 6E29      	TFSZ	_WREG,0
1186 0372 [01] [2] 7803      	JMP	_00295_DS_
1187                     ;	;.line	643; ".\Source\App_LCD_4718.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
1188 0373 [01] [2] 65B0      	MVF	(_sMemory + 1),0,0
1189 0374 [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1190 0375 [01] [2] 7802      	JMP	_00301_DS_
1191                     _00295_DS_:
1192                     ;	;.line	647; ".\Source\App_LCD_4718.c"	--sMemoryFlag.MemTempDispValue;
1193 0376 [01] [2] 3080      	DCF	r0x10C7,0,0
1194 0377 [01] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
1195                     _00301_DS_:
1196                     ;	;.line	653; ".\Source\App_LCD_4718.c"	DispNum(sMemoryFlag.MemTempDispNo);
1197 0378 [01] [2] 65C7      	MVF	(_sMemoryFlag + 1),0,0
1198 0379 [01] [2] 660D      	MVF	_DispNum_STK00,1,0
1199 037A [02] [2] 0600      	MVL	0x00
1200 037B [02] [2] C937      	CALL	_DispNum
1201                     ;	;.line	655; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
1202 037C [01] [1] 958B      	BSF	_LCD3,2
1203                     ;	;.line	657; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1204 037D [01] [1] C818      	CALL	_Disp_BleSymbol
1205                     ;	;.line	658; ".\Source\App_LCD_4718.c"	}
1206 037E [01] [1] C4BF 000A 	RET	
1207                     ; exit point of _MemTempNumber_Display
1208                     	.ENDFUNC	_MemTempNumber_Display
1209                     ;--------------------------------------------------------
1210                     
1211                     .globl _RecentTemp_Display
1212                     
1213                     ;--------------------------------------------------------
1214                     	.FUNC _RecentTemp_Display:$r:0:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
1215                     :$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\
1216                     
1217                     ;--------------------------------------------------------
1218                     ;	;.line	525; ".\Source\App_LCD_4718.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemory.pMemTempBuf]);
1219                     _RecentTemp_Display:	;Function start
1220 15B4 [00] [2] 65B0      	MVF	(_sMemory + 1),0,0
1221 15B5 [00] [2] 0702      	MULL	0x02
1222 15B6 [00] [2] 000C F2B2 	LDPR	(_sMemory + 3),0
1223 15B8 [00] [2] 6422      	MVF	_PRODL,0,0
1224 15B9 [00] [2] D004 F020 	MVFF	_PLUSW0,STK00
1225 15BB [00] [2] 3829      	INF	_WREG,0,0
1226 15BC [00] [2] D004 F01F 	MVFF	_PLUSW0,STK01
1227 15BE [00] [2] D020 F00D 	MVFF	STK00,_Centigrade_Convert_Fahrenheit_STK00
1228 15C0 [01] [2] 641F      	MVF	STK01,0,0
1229 15C1 [01] [2] C000 F5FF 	CALL	_Centigrade_Convert_Fahrenheit
1230                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1231 15C3 [00] [2] 0012 67A5 	MVF	(_sActual_Forecast + 6),1,0
1232 15C5 [00] [2] 6420      	MVF	STK00,0,0
1233 15C6 [00] [2] 67A4      	MVF	(_sActual_Forecast + 5),1,0
1234                     ;	;.line	527; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1235 15C7 [00] [2] 065A      	MVL	0x5a
1236 15C8 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1237 15CA [00] [1] 7818      	JMP	_00281_DS_
1238                     ;	;.line	530; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
1239 15CB [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1240 15CD [00] [2] 04D8      	ADDL	0xd8
1241 15CE [00] [2] 06F5      	MVL	0xf5
1242 15CF [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1243 15D0 [00] [2] 70        	BTSZ	_STATUS,4
1244 15D0 [00] 03        	JMP	_00270_DS_
1245                     ;	;.line	540; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1246 15D1 [00] [2] C000 F499 	CALL	_Disp_StaticDash
1247                     	.CHKPARA _Disp_StaticDash 0
1248 15D3 [00] [1] 7829      	JMP	_00282_DS_
1249                     _00270_DS_:
1250                     ;	;.line	545; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
1251 15D4 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1252 15D5 [00] [2] 04D9      	ADDL	0xd9
1253 15D6 [00] [2] 06EE      	MVL	0xee
1254 15D7 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1255 15D8 [00] [2] 74        	BTSS	_STATUS,4
1256 15D8 [00] 03        	JMP	_00267_DS_
1257                     ;	;.line	547; ".\Source\App_LCD_4718.c"	Disp_Hi();
1258 15D9 [00] [2] C000 F48D 	CALL	_Disp_Hi
1259                     	.CHKPARA _Disp_Hi 0
1260 15DB [00] [1] 7821      	JMP	_00282_DS_
1261                     _00267_DS_:
1262                     ;	;.line	552; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1263 15DC [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1264 15DD [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1265 15DE [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1266 15DF [01] [2] C000 F4B3 	CALL	_DispNum
1267                     	.CHKPARA _DispNum 2
1268                     ;	;.line	554; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1269 15E1 [00] [1] 9D8A      	BSF	_LCD2,6
1270 15E2 [00] [1] 781A      	JMP	_00282_DS_
1271                     _00281_DS_:
1272                     ;	;.line	558; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1273 15E3 [00] [1] 06A5      	MVL	0xa5
1274 15E4 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1275 15E5 [00] [1] 7817      	JMP	_00282_DS_
1276                     ;	;.line	561; ".\Source\App_LCD_4718.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
1277 15E6 [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1278 15E8 [00] [2] 0438      	ADDL	0x38
1279 15E9 [00] [2] 06E1      	MVL	0xe1
1280 15EA [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1281 15EB [00] [2] 70        	BTSZ	_STATUS,4
1282 15EB [00] 03        	JMP	_00276_DS_
1283                     ;	;.line	571; ".\Source\App_LCD_4718.c"	Disp_StaticDash(); /*20210319改*/
1284 15EC [00] [2] C000 F499 	CALL	_Disp_StaticDash
1285 15EE [00] [1] 780E      	JMP	_00282_DS_
1286                     _00276_DS_:
1287                     ;	;.line	575; ".\Source\App_LCD_4718.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
1288 15EF [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1289 15F0 [00] [2] 04A3      	ADDL	0xa3
1290 15F1 [00] [2] 06D4      	MVL	0xd4
1291 15F2 [00] [2] 15A5      	ADDC	(_sActual_Forecast + 6),0,0
1292 15F3 [00] [2] 74        	BTSS	_STATUS,4
1293 15F3 [00] 03        	JMP	_00273_DS_
1294                     ;	;.line	577; ".\Source\App_LCD_4718.c"	Disp_Hi();
1295 15F4 [00] [2] C000 F48D 	CALL	_Disp_Hi
1296 15F6 [00] [1] 7806      	JMP	_00282_DS_
1297                     _00273_DS_:
1298                     ;	;.line	582; ".\Source\App_LCD_4718.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1299 15F7 [00] [2] 65A4      	MVF	(_sActual_Forecast + 5),0,0
1300 15F8 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1301 15F9 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1302 15FA [01] [2] C000 F4B3 	CALL	_DispNum
1303                     ;	;.line	584; ".\Source\App_LCD_4718.c"	LCD_Point_En();
1304 15FC [00] [1] 9D8A      	BSF	_LCD2,6
1305                     _00282_DS_:
1306                     ;	;.line	591; ".\Source\App_LCD_4718.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
1307 15FD [00] [2] 0012 65A4 	MVF	(_sActual_Forecast + 5),0,0
1308 15FF [00] [2] 660D      	MVF	_DispDelta_STK00,1,0
1309 1600 [01] [2] 65A5      	MVF	(_sActual_Forecast + 6),0,0
1310 1601 [01] [2] C000 F5BF 	CALL	_DispDelta
1311                     	.CHKPARA _DispDelta 2
1312                     ;	;.line	600; ".\Source\App_LCD_4718.c"	DispUnit();
1313 1603 [00] [1] C000 F5F3 	CALL	_DispUnit
1314                     	.CHKPARA _DispUnit 0
1315                     ;	;.line	602; ".\Source\App_LCD_4718.c"	LCD_Mem_En();
1316 1605 [00] [1] 958B      	BSF	_LCD3,2
1317                     ;	;.line	604; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1318 1606 [00] [1] C200 F396 	CALL	_Disp_BleSymbol
1319                     ;	;.line	605; ".\Source\App_LCD_4718.c"	}
1320                     	RET	
1321                     ; exit point of _RecentTemp_Display
1322                     	.ENDFUNC	_RecentTemp_Display
1323                     ;--------------------------------------------------------
1324                     
1325                     .globl _CalibrationOK_Display
1326                     
1327                     ;--------------------------------------------------------
1328                     	.FUNC _CalibrationOK_Display:$r:0:0:$C:_Disp_End:$C:_Disp_BleSymbol\
1329                     
1330                     ;--------------------------------------------------------
1331                     ;	;.line	513; ".\Source\App_LCD_4718.c"	Disp_End();
1332                     _CalibrationOK_Display:	;Function start
1333 1ABE [00] [2] C000 F4A5 	CALL	_Disp_End
1334                     	.CHKPARA _Disp_End 0
1335                     ;	;.line	515; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1336 1AC0 [00] [1] C200 F396 	CALL	_Disp_BleSymbol
1337                     ;	;.line	516; ".\Source\App_LCD_4718.c"	}
1338                     	RET	
1339                     ; exit point of _CalibrationOK_Display
1340                     	.ENDFUNC	_CalibrationOK_Display
1341                     ;--------------------------------------------------------
1342                     
1343                     .globl _Calibration_Display
1344                     
1345                     ;--------------------------------------------------------
1346                     	.FUNC _Calibration_Display:$r:0:0:$C:_memchrn:$C:_Disp_CAL:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
1347                     :$C:_LCD_Clear_Register:$C:_LCD_Configuration\
1348                     
1349                     ;--------------------------------------------------------
1350                     ;	;.line	460; ".\Source\App_LCD_4718.c"	if(!memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
1351                     _Calibration_Display:	;Function start
1352 0327 [00] [2] 0609      	MVL	0x09
1353 0328 [00] [2] 660D      	MVF	_memchrn_STK02,1,0
1354 0329 [01] [2] 0601      	MVL	0x01
1355 032A [01] [2] 660D      	MVF	_memchrn_STK01,1,0
1356 032B [02] [2] 0635      	MVL	(_ERR + 0)
1357 032C [02] [2] 660D      	MVF	_memchrn_STK00,1,0
1358 032D [03] [2] 0602      	MVL	high (_ERR + 0)
1359 032E [03] [2] C000 FFAE 	CALL	_memchrn
1360                     	.CHKPARA _memchrn 4
1361 0330 [00] [2] 6E29      	TFSZ	_WREG,0
1362 0331 [00] [2] 7804      	JMP	_00252_DS_
1363 0332 [00] [2] B390      	BTSS	_sTempCal,1
1364 0333 [00] [2] 7802      	JMP	_00252_DS_
1365                     ;	;.line	465; ".\Source\App_LCD_4718.c"	sTempCal.Enable_BIE_Write = TRUE;
1366 0334 [00] [2] 9590      	BSF	_sTempCal,2
1367 0335 [00] [2] 7815      	JMP	_00253_DS_
1368                     _00252_DS_:
1369                     ;	;.line	467; ".\Source\App_LCD_4718.c"	else if(memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
1370 0336 [00] [2] 0609      	MVL	0x09
1371 0337 [00] [2] 660D      	MVF	_memchrn_STK02,1,0
1372 0338 [01] [2] 0601      	MVL	0x01
1373 0339 [01] [2] 660D      	MVF	_memchrn_STK01,1,0
1374 033A [02] [2] 0635      	MVL	(_ERR + 0)
1375 033B [02] [2] 660D      	MVF	_memchrn_STK00,1,0
1376 033C [03] [2] 0602      	MVL	high (_ERR + 0)
1377 033D [03] [2] C000 FFAE 	CALL	_memchrn
1378 033F [00] [2] 0200      	IORL	0x00
1379 0340 [00] [2] 71        	BTSZ	_STATUS,0
1380 0340 [00] 04        	JMP	_00248_DS_
1381 0341 [00] [2] B390      	BTSS	_sTempCal,1
1382 0342 [00] [2] 7802      	JMP	_00248_DS_
1383                     ;	;.line	470; ".\Source\App_LCD_4718.c"	sTempCal.BIE_Write_Action = TRUE;
1384 0343 [00] [2] 9790      	BSF	_sTempCal,3
1385 0344 [00] [2] 7806      	JMP	_00253_DS_
1386                     _00248_DS_:
1387                     ;	;.line	475; ".\Source\App_LCD_4718.c"	if(sTIMx.CalSymbolFlash)
1388 0345 [00] [2] BBCC      	BTSS	_sTIMx,5
1389 0346 [00] [2] 7802      	JMP	_00245_DS_
1390                     ;	;.line	478; ".\Source\App_LCD_4718.c"	Disp_CAL();
1391 0347 [00] [2] CFAC      	CALL	_Disp_CAL
1392                     	.CHKPARA _Disp_CAL 0
1393 0348 [00] [1] 7801      	JMP	_00246_DS_
1394                     _00245_DS_:
1395                     ;	;.line	483; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1396 0349 [00] [2] CA6C      	CALL	_Disp_Nothing
1397                     _00246_DS_:
1398                     ;	;.line	486; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1399 034A [00] [1] C84B      	CALL	_Disp_BleSymbol
1400                     _00253_DS_:
1401                     ;	;.line	490; ".\Source\App_LCD_4718.c"	if(sTempCal.BIE_Write_Action)
1402 034B [00] [2] 0012 B790 	BTSS	_sTempCal,3
1403 034D [00] [2] 7806      	JMP	_00257_DS_
1404                     ;	;.line	496; ".\Source\App_LCD_4718.c"	LCD_Clear_Register();
1405 034E [00] [2] CF49      	CALL	_LCD_Clear_Register
1406                     	.CHKPARA _LCD_Clear_Register 0
1407                     ;	;.line	499; ".\Source\App_LCD_4718.c"	LCD_Configuration();
1408 034F [00] [1] C001 FAA7 	CALL	_LCD_Configuration
1409                     	.CHKPARA _LCD_Configuration 0
1410                     ;	;.line	501; ".\Source\App_LCD_4718.c"	sTempCal.Reopen_LCD = TRUE;
1411 0351 [00] [Y] 000C F290 	LDPR	(_sTempCal + 0),0x00
1412 0353 [00] [Y] 9800      	BSF	_INDF0,4
1413                     _00257_DS_:
1414                     ;	;.line	503; ".\Source\App_LCD_4718.c"	}
1415 0354 [00] [X] 000A      	RET	
1416                     ; exit point of _Calibration_Display
1417                     	.ENDFUNC	_Calibration_Display
1418                     ;--------------------------------------------------------
1419                     
1420                     .globl _PreCalibration_Display
1421                     
1422                     ;--------------------------------------------------------
1423                     	.FUNC _PreCalibration_Display:$r:0:0:$C:_Disp_UnitFlash\
1424                     
1425                     ;--------------------------------------------------------
1426                     ;	;.line	446; ".\Source\App_LCD_4718.c"	Disp_UnitFlash();
1427                     _PreCalibration_Display:	;Function start
1428 13DF [00] [2] C200 F3BA 	CALL	_Disp_UnitFlash
1429                     	.CHKPARA _Disp_UnitFlash 0
1430                     ;	;.line	448; ".\Source\App_LCD_4718.c"	}
1431                     	RET	
1432                     ; exit point of _PreCalibration_Display
1433                     	.ENDFUNC	_PreCalibration_Display
1434                     ;--------------------------------------------------------
1435                     
1436                     .globl _Off_Display
1437                     
1438                     ;--------------------------------------------------------
1439                     	.FUNC _Off_Display:$r:0:0:$C:_Disp_Nothing:$C:_Disp_Off:$C:_Disp_BleSymbol\
1440                     
1441                     ;--------------------------------------------------------
1442                     ;	;.line	426; ".\Source\App_LCD_4718.c"	if(sButton.Flag_Button_Lift_Once)
1443                     _Off_Display:	;Function start
1444 0320 [00] [2] BB05      	BTSS	_sButton,5
1445 0321 [00] [2] 7802      	JMP	_00233_DS_
1446                     ;	;.line	429; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1447 0322 [00] [2] CA93      	CALL	_Disp_Nothing
1448 0323 [00] [1] 7802      	JMP	_00235_DS_
1449                     _00233_DS_:
1450                     ;	;.line	433; ".\Source\App_LCD_4718.c"	Disp_Off();
1451 0324 [00] [2] CFE6      	CALL	_Disp_Off
1452                     	.CHKPARA _Disp_Off 0
1453                     ;	;.line	435; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1454 0325 [00] [1] C870      	CALL	_Disp_BleSymbol
1455                     _00235_DS_:
1456                     ;	;.line	437; ".\Source\App_LCD_4718.c"	}
1457 0326 [00] [1] 000A      	RET	
1458                     ; exit point of _Off_Display
1459                     	.ENDFUNC	_Off_Display
1460                     ;--------------------------------------------------------
1461                     
1462                     .globl _UnitExchange_Display
1463                     
1464                     ;--------------------------------------------------------
1465                     	.FUNC _UnitExchange_Display:$r:0:0:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
1466                     
1467                     ;--------------------------------------------------------
1468                     ;	;.line	371; ".\Source\App_LCD_4718.c"	if(!UnitExchangeCompleted)
1469                     _UnitExchange_Display:	;Function start
1470 1627 [00] [2] 6F34      	TFSZ	_UnitExchangeCompleted,0
1471 1628 [00] [2] 7816      	JMP	_00226_DS_
1472                     ;	;.line	374; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1473 1629 [00] [2] C000 F5B6 	CALL	_Disp_Nothing
1474                     ;	;.line	376; ".\Source\App_LCD_4718.c"	UnitExchangeCompleted = TRUE;
1475 162B [00] [1] 0601      	MVL	0x01
1476 162C [00] [2] 0012 6734 	MVF	_UnitExchangeCompleted,1,0
1477                     ;	;.line	378; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1478 162E [00] [2] 065A      	MVL	0x5a
1479 162F [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1480 1631 [00] [1] 7805      	JMP	_00218_DS_
1481                     ;	;.line	381; ".\Source\App_LCD_4718.c"	eTempUnit = Fahrenheit;
1482 1632 [00] [1] 06A5      	MVL	0xa5
1483 1633 [00] [1] 677F      	MVF	_eTempUnit,1,0
1484                     ;	;.line	383; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
1485 1634 [00] [1] 0603      	MVL	0x03
1486 1635 [00] [1] 2F8D      	IORF	_LCD5,1,0
1487 1636 [00] [1] 7815      	JMP	_00227_DS_
1488                     _00218_DS_:
1489                     ;	;.line	386; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1490 1637 [00] [1] 06A5      	MVL	0xa5
1491 1638 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1492 1639 [00] [1] 7812      	JMP	_00227_DS_
1493                     ;	;.line	389; ".\Source\App_LCD_4718.c"	eTempUnit = Centigrade;
1494 163A [00] [1] 065A      	MVL	0x5a
1495 163B [00] [1] 677F      	MVF	_eTempUnit,1,0
1496                     ;	;.line	391; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
1497 163C [00] [1] 0605      	MVL	0x05
1498 163D [00] [1] 2F8D      	IORF	_LCD5,1,0
1499 163E [00] [1] 780D      	JMP	_00227_DS_
1500                     _00226_DS_:
1501                     ;	;.line	397; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1502 163F [00] [2] C000 F5B6 	CALL	_Disp_Nothing
1503                     ;	;.line	400; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1504 1641 [00] [1] 065A      	MVL	0x5a
1505 1642 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1506 1643 [00] [1] 7803      	JMP	_00223_DS_
1507                     ;	;.line	403; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
1508 1644 [00] [1] 0605      	MVL	0x05
1509 1645 [00] [1] 2F8D      	IORF	_LCD5,1,0
1510 1646 [00] [1] 7805      	JMP	_00227_DS_
1511                     _00223_DS_:
1512                     ;	;.line	406; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1513 1647 [00] [1] 06A5      	MVL	0xa5
1514 1648 [00] [1] 6D7F      	CPSE	_eTempUnit,0
1515 1649 [00] [1] 7802      	JMP	_00227_DS_
1516                     ;	;.line	409; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
1517 164A [00] [1] 0603      	MVL	0x03
1518 164B [00] [1] 2F8D      	IORF	_LCD5,1,0
1519                     _00227_DS_:
1520                     ;	;.line	416; ".\Source\App_LCD_4718.c"	Disp_BleSymbol();
1521 164C [00] [1] C200 F396 	CALL	_Disp_BleSymbol
1522                     	.CHKPARA _Disp_BleSymbol 0
1523                     ;	;.line	417; ".\Source\App_LCD_4718.c"	}
1524                     	RET	
1525                     ; exit point of _UnitExchange_Display
1526                     	.ENDFUNC	_UnitExchange_Display
1527                     ;--------------------------------------------------------
1528                     
1529                     .globl _Disp_BleSymbol
1530                     
1531                     ;--------------------------------------------------------
1532                     	.FUNC _Disp_BleSymbol:$r:0:0
1533                     ;--------------------------------------------------------
1534                     ;	;.line	361; ".\Source\App_LCD_4718.c"	}
1535                     _Disp_BleSymbol:	;Function start
1536 0396 [00] [Y] 000A      	RET	
1537                     ; exit point of _Disp_BleSymbol
1538                     	.ENDFUNC	_Disp_BleSymbol
1539                     ;--------------------------------------------------------
1540                     
1541                     .globl _Disp_DynamicForecastSymbol
1542                     
1543                     ;--------------------------------------------------------
1544                     	.FUNC _Disp_DynamicForecastSymbol:$r:0:0
1545                     ;--------------------------------------------------------
1546                     ;	;.line	337; ".\Source\App_LCD_4718.c"	}
1547                     _Disp_DynamicForecastSymbol:	;Function start
1548 03EA [00] [Y] 000A      	RET	
1549                     ; exit point of _Disp_DynamicForecastSymbol
1550                     	.ENDFUNC	_Disp_DynamicForecastSymbol
1551                     ;--------------------------------------------------------
1552                     
1553                     .globl _Disp_DynamicDash
1554                     
1555                     ;--------------------------------------------------------
1556                     	.FUNC _Disp_DynamicDash:$r:0:0:$C:_Disp_Nothing\
1557                     :$L:r0x10B2
1558                     ;--------------------------------------------------------
1559                     ;	;.line	309; ".\Source\App_LCD_4718.c"	Disp_Nothing();
1560 03D7 [00] [2] C481      _Disp_DynamicDash:	;Function start
1561 03D8 [01] [2] C9DD      	CALL	_Disp_Nothing
1562                     	.CHKPARA _Disp_Nothing 0
1563                     ;	;.line	311; ".\Source\App_LCD_4718.c"	if(sTIMx.TempDetectingSymFlash1Hz == 0)
1564 03D9 [00] [2] 0012 65CE 	MVF	(_sTIMx + 2),0,0
1565 03DB [01] [2] 6680      	MVF	r0x10B2,1,0
1566 03DC [01] [2] 6E29      	TFSZ	_WREG,0
1567 03DD [01] [2] 7803      	JMP	_00200_DS_
1568                     ;	;.line	314; ".\Source\App_LCD_4718.c"	LCD_Dash1_En();
1569 03DE [00] [1] 0011 9B88 	BSF	_LCD0,5
1570 03E0 [01] [1] 7807      	JMP	_00202_DS_
1571                     _00200_DS_:
1572                     ;	;.line	317; ".\Source\App_LCD_4718.c"	else if(sTIMx.TempDetectingSymFlash1Hz == 1)
1573 03E1 [01] [2] 3480      	DCSZ	r0x10B2,0,0
1574 03E2 [01] [2] 7803      	JMP	_00197_DS_
1575                     ;	;.line	320; ".\Source\App_LCD_4718.c"	LCD_Dash2_En();
1576 03E3 [00] [1] 0011 938A 	BSF	_LCD2,1
1577 03E5 [01] [1] 7802      	JMP	_00202_DS_
1578                     _00197_DS_:
1579                     ;	;.line	325; ".\Source\App_LCD_4718.c"	LCD_Dash3_En();
1580 03E6 [00] [1] 0011 9B8B 	BSF	_LCD3,5
1581 03E8 [01] [1] C4BF      _00202_DS_:
1582                     ;	;.line	327; ".\Source\App_LCD_4718.c"	}
1583 03E9 [00] [1] 000A      	RET	
1584                     ; exit point of _Disp_DynamicDash
1585                     	.ENDFUNC	_Disp_DynamicDash
1586                     ;--------------------------------------------------------
1587                     
1588                     .globl _Disp_Bat
1589                     
1590                     ;--------------------------------------------------------
1591                     	.FUNC _Disp_Bat:$r:0:0:$C:_Disp_BatFlash\
1592                     
1593                     ;--------------------------------------------------------
1594                     ;	;.line	287; ".\Source\App_LCD_4718.c"	if (sLVD.LVD_Low)
1595                     _Disp_Bat:	;Function start
1596 0397 [00] [2] 0012 B33E 	BTSS	_sLVD,1
1597 0399 [00] [2] 7802      	JMP	_00189_DS_
1598                     ;	;.line	290; ".\Source\App_LCD_4718.c"	Disp_BatFlash();
1599 039A [00] [2] CF7D      	CALL	_Disp_BatFlash
1600                     	.CHKPARA _Disp_BatFlash 0
1601 039B [00] [1] 7802      	JMP	_00191_DS_
1602                     _00189_DS_:
1603                     ;	;.line	295; ".\Source\App_LCD_4718.c"	LCD_Bat_En();
1604 039C [00] [1] 0011 958C 	BSF	_LCD4,2
1605                     _00191_DS_:
1606                     ;	;.line	297; ".\Source\App_LCD_4718.c"	}
1607 039E [00] [1] 000A      	RET	
1608                     ; exit point of _Disp_Bat
1609                     	.ENDFUNC	_Disp_Bat
1610                     ;--------------------------------------------------------
1611                     
1612                     .globl _Disp_BatFlash
1613                     
1614                     ;--------------------------------------------------------
1615                     	.FUNC _Disp_BatFlash:$r:0:0
1616                     ;--------------------------------------------------------
1617                     ;	;.line	268; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
1618                     _Disp_BatFlash:	;Function start
1619 0318 [00] [2] B1CD      	BTSS	(_sTIMx+1),0
1620 0319 [00] [2] 7803      	JMP	_00181_DS_
1621                     ;	;.line	271; ".\Source\App_LCD_4718.c"	LCD_Bat_En();
1622 031A [00] [1] 0011 958C 	BSF	_LCD4,2
1623 031C [00] [1] 7802      	JMP	_00183_DS_
1624                     _00181_DS_:
1625                     ;	;.line	276; ".\Source\App_LCD_4718.c"	LCD_Bat_Clr();
1626 031D [00] [1] 0011 858C 	BCF	_LCD4,2
1627                     _00183_DS_:
1628                     ;	;.line	278; ".\Source\App_LCD_4718.c"	}
1629 031F [00] [1] 000A      	RET	
1630                     ; exit point of _Disp_BatFlash
1631                     	.ENDFUNC	_Disp_BatFlash
1632                     ;--------------------------------------------------------
1633                     
1634                     .globl _Disp_UnitFlash
1635                     
1636                     ;--------------------------------------------------------
1637                     	.FUNC _Disp_UnitFlash:$r:0:0
1638                     ;--------------------------------------------------------
1639                     ;	;.line	228; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
1640                     _Disp_UnitFlash:	;Function start
1641 03BA [00] [X] 065A      	MVL	0x5a
1642 03BB [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
1643 03BD [00] [1] 780B      	JMP	_00173_DS_
1644                     ;	;.line	231; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
1645 03BE [00] [2] 0012 B1CD 	BTSS	(_sTIMx+1),0
1646 03C0 [00] [2] 7804      	JMP	_00165_DS_
1647                     ;	;.line	234; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
1648 03C1 [00] [2] 0605      	MVL	0x05
1649 03C2 [00] [1] 0011 2F8D 	IORF	_LCD5,1,0
1650 03C4 [00] [1] 7811      	JMP	_00175_DS_
1651                     _00165_DS_:
1652                     ;	;.line	239; ".\Source\App_LCD_4718.c"	LCD_Unit_C_Clr();
1653 03C5 [00] [2] 06FA      	MVL	0xfa
1654 03C6 [00] [1] 0011 2B8D 	ANDF	_LCD5,1,0
1655 03C8 [00] [1] 780D      	JMP	_00175_DS_
1656                     _00173_DS_:
1657                     ;	;.line	243; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
1658 03C9 [00] [1] 06A5      	MVL	0xa5
1659 03CA [00] [1] 6D7F      	CPSE	_eTempUnit,0
1660 03CB [00] [1] 780A      	JMP	_00175_DS_
1661                     ;	;.line	246; ".\Source\App_LCD_4718.c"	if(sTIMx.UnitSymbolFlash)
1662 03CC [00] [2] 0012 B1CD 	BTSS	(_sTIMx+1),0
1663 03CE [00] [2] 7804      	JMP	_00168_DS_
1664                     ;	;.line	249; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
1665 03CF [00] [2] 0603      	MVL	0x03
1666 03D0 [00] [1] 0011 2F8D 	IORF	_LCD5,1,0
1667 03D2 [00] [1] 7803      	JMP	_00175_DS_
1668                     _00168_DS_:
1669                     ;	;.line	254; ".\Source\App_LCD_4718.c"	LCD_Unit_F_Clr();
1670 03D3 [00] [2] 06FC      	MVL	0xfc
1671 03D4 [00] [1] 0011 2B8D 	ANDF	_LCD5,1,0
1672                     _00175_DS_:
1673                     ;	;.line	257; ".\Source\App_LCD_4718.c"	}
1674 03D6 [00] [1] 000A      	RET	
1675                     ; exit point of _Disp_UnitFlash
1676                     	.ENDFUNC	_Disp_UnitFlash
1677                     ;--------------------------------------------------------
1678                     
1679                     .globl _Disp_BLEFlash
1680                     
1681                     ;--------------------------------------------------------
1682                     	.FUNC _Disp_BLEFlash:$r:0:0
1683                     ;--------------------------------------------------------
1684                     ;	;.line	208; ".\Source\App_LCD_4718.c"	if(sTIMx.BLESymbolFlash)
1685                     _Disp_BLEFlash:	;Function start
1686                     	BTSS	(_sTIMx+1),1
1687                     	JMP	_00157_DS_
1688                     ;	;.line	211; ".\Source\App_LCD_4718.c"	LCD_BLE_En();
1689                     	BSF	_LCD1,3
1690                     	JMP	_00159_DS_
1691                     _00157_DS_:
1692                     ;	;.line	216; ".\Source\App_LCD_4718.c"	LCD_BLE_Clr();
1693                     	BCF	_LCD1,3
1694                     _00159_DS_:
1695                     ;	;.line	218; ".\Source\App_LCD_4718.c"	}
1696                     	RET	
1697                     ; exit point of _Disp_BLEFlash
1698                     	.ENDFUNC	_Disp_BLEFlash
1699                     ;--------------------------------------------------------
1700                     
1701                     .globl _DispNum
1702                     
1703                     ;--------------------------------------------------------
1704                     	.FUNC _DispNum:$r:0:2:$C:__divuint:$C:__moduchar:$C:__moduint:$C:__g2ptrget1\
1705                     :$C:__g2ptrget2\
1706                     :$L:r0x1093:$L:_DispNum_STK00:$L:r0x1095:$L:r0x1094:$L:_DispNum_NumDisp_10000_448\
1707                     :$L:r0x1096:$L:r0x1099:$L:r0x109C
1708                     ;--------------------------------------------------------
1709                     ;	;.line	101; ".\Source\App_LCD_4718.c"	void DispNum(uint16 num)
1710 04B3 [00] [X] C48B      _DispNum:	;Function start
1711 04B4 [11] [X] 668A      	MVF	r0x1093,1,0
1712                     ;	;.line	107; ".\Source\App_LCD_4718.c"	NumDisp[4] = num / 10000;
1713 04B5 [11] [X] 0610      	MVL	0x10
1714 04B6 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1715 04B7 [12] [X] 0627      	MVL	0x27
1716 04B8 [12] [X] 660D      	MVF	__divuint_STK01,1,0
1717 04B9 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1718 04BA [13] [X] 660D      	MVF	__divuint_STK00,1,0
1719 04BB [14] [X] 648D      	MVF	r0x1093,0,0
1720 04BC [14] [X] C001 F572 	CALL	__divuint
1721                     	.CHKPARA __divuint 4
1722 04BE [11] [X] 6420      	MVF	STK00,0,0
1723 04BF [11] [X] 6683      	MVF	(_DispNum_NumDisp_10000_448 + 4),1,0
1724                     ;	;.line	109; ".\Source\App_LCD_4718.c"	NumDisp[3] = num / 1000 % 10;
1725 04C0 [11] [X] 06E8      	MVL	0xe8
1726 04C1 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1727 04C2 [12] [X] 0603      	MVL	0x03
1728 04C3 [12] [X] 660D      	MVF	__divuint_STK01,1,0
1729 04C4 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1730 04C5 [13] [X] 660D      	MVF	__divuint_STK00,1,0
1731 04C6 [14] [X] 648D      	MVF	r0x1093,0,0
1732 04C7 [14] [X] C001 F572 	CALL	__divuint
1733 04C9 [11] [X] 060A      	MVL	0x0a
1734 04CA [11] [X] 660D      	MVF	__moduchar_STK00,1,0
1735 04CB [12] [X] 6420      	MVF	STK00,0,0
1736 04CC [12] [X] C001 F4EF 	CALL	__moduchar
1737                     	.CHKPARA __moduchar 2
1738 04CE [11] [X] 6684      	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
1739                     ;	;.line	111; ".\Source\App_LCD_4718.c"	NumDisp[2] = num / 100 % 10;
1740 04CF [11] [X] 0664      	MVL	0x64
1741 04D0 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1742 04D1 [12] [X] 0C0D      	CLRF	__divuint_STK01,0
1743 04D2 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1744 04D3 [13] [X] 660D      	MVF	__divuint_STK00,1,0
1745 04D4 [14] [X] 648D      	MVF	r0x1093,0,0
1746 04D5 [14] [X] C001 F572 	CALL	__divuint
1747 04D7 [11] [X] 6689      	MVF	r0x1095,1,0
1748 04D8 [11] [X] 060A      	MVL	0x0a
1749 04D9 [11] [X] 660D      	MVF	__moduint_STK02,1,0
1750 04DA [12] [X] 0C0D      	CLRF	__moduint_STK01,0
1751 04DB [13] [X] D020 F00D 	MVFF	STK00,__moduint_STK00
1752 04DD [14] [X] 648C      	MVF	r0x1095,0,0
1753 04DE [14] [X] C001 F591 	CALL	__moduint
1754                     	.CHKPARA __moduint 4
1755 04E0 [11] [X] 6420      	MVF	STK00,0,0
1756 04E1 [11] [X] 6685      	MVF	(_DispNum_NumDisp_10000_448 + 2),1,0
1757                     ;	;.line	113; ".\Source\App_LCD_4718.c"	NumDisp[1] = num / 10 % 10;
1758 04E2 [11] [X] 060A      	MVL	0x0a
1759 04E3 [11] [X] 660D      	MVF	__divuint_STK02,1,0
1760 04E4 [12] [X] 0C0D      	CLRF	__divuint_STK01,0
1761 04E5 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1762 04E6 [13] [X] 660D      	MVF	__divuint_STK00,1,0
1763 04E7 [14] [X] 648D      	MVF	r0x1093,0,0
1764 04E8 [14] [X] C001 F572 	CALL	__divuint
1765 04EA [11] [X] 6689      	MVF	r0x1095,1,0
1766 04EB [11] [X] 060A      	MVL	0x0a
1767 04EC [11] [X] 660D      	MVF	__moduint_STK02,1,0
1768 04ED [12] [X] 0C0D      	CLRF	__moduint_STK01,0
1769 04EE [13] [X] D020 F00D 	MVFF	STK00,__moduint_STK00
1770 04F0 [14] [X] 648C      	MVF	r0x1095,0,0
1771 04F1 [14] [X] C001 F591 	CALL	__moduint
1772 04F3 [11] [X] 6420      	MVF	STK00,0,0
1773 04F4 [11] [X] 6686      	MVF	(_DispNum_NumDisp_10000_448 + 1),1,0
1774                     ;	;.line	115; ".\Source\App_LCD_4718.c"	NumDisp[0] = num % 10;
1775 04F5 [11] [X] 060A      	MVL	0x0a
1776 04F6 [11] [X] 660D      	MVF	__moduint_STK02,1,0
1777 04F7 [12] [X] 0C0D      	CLRF	__moduint_STK01,0
1778 04F8 [13] [X] 648D      	MVF	_DispNum_STK00,0,0
1779 04F9 [13] [X] 660D      	MVF	__moduint_STK00,1,0
1780 04FA [14] [X] 648D      	MVF	r0x1093,0,0
1781 04FB [14] [X] C001 F591 	CALL	__moduint
1782 04FD [11] [X] 6420      	MVF	STK00,0,0
1783 04FE [11] [X] 6687      	MVF	(_DispNum_NumDisp_10000_448 + 0),1,0
1784                     ;	;.line	118; ".\Source\App_LCD_4718.c"	if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
1785 04FF [11] [X] 060A      	MVL	0x0a
1786 0500 [00] [2] 0012 6D33 	CPSE	_eDisplay_Interfaces,0
1787 0502 [11] [2] 7845      	JMP	_00149_DS_
1788                     ;	;.line	120; ".\Source\App_LCD_4718.c"	NumDisp[4]	= 10;
1789 0503 [11] [2] 060A      	MVL	0x0a
1790 0504 [11] [2] 6683      	MVF	(_DispNum_NumDisp_10000_448 + 4),1,0
1791                     ;	;.line	121; ".\Source\App_LCD_4718.c"	NumDisp[3]	= 10;
1792 0505 [11] [2] 6684      	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
1793                     ;	;.line	122; ".\Source\App_LCD_4718.c"	NumDisp[2]	= 10;
1794 0506 [11] [2] 6685      	MVF	(_DispNum_NumDisp_10000_448 + 2),1,0
1795                     ;	;.line	125; ".\Source\App_LCD_4718.c"	if(NumDisp[1] == 0)
1796 0507 [11] [2] 6E86      	TFSZ	(_DispNum_NumDisp_10000_448 + 1),0
1797 0508 [11] [2] 7802      	JMP	_00142_DS_
1798                     ;	;.line	127; ".\Source\App_LCD_4718.c"	NumDisp[1] = 10;
1799 0509 [11] [2] 060A      	MVL	0x0a
1800 050A [11] [2] 6686      	MVF	(_DispNum_NumDisp_10000_448 + 1),1,0
1801                     _00142_DS_:
1802                     ;	;.line	130; ".\Source\App_LCD_4718.c"	LCD0_Macro = 0x00;
1803 050B [00] [1] 0011 0D88 	CLRF	_LCD0,0
1804                     ;	;.line	132; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[1]] << 4) & 0x30;
1805 050D [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1806 050E [11] [1] 0702      	MULL	0x02
1807 050F [11] [1] 6422      	MVF	_PRODL,0,0
1808 0510 [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1809 0511 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1810 0512 [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1811 0513 [12] [1] 1421      	ADDC	_PRODH,0,0
1812 0514 [12] [1] 0280      	IORL	0x80
1813 0515 [12] [1] C98D      	CALL	__g2ptrget1
1814 0516 [11] [1] 668A      	MVF	r0x1093,1,0
1815 0517 [11] [1] 608A      	SWPF	r0x1093,0,0
1816 0518 [11] [1] 0130      	ANDL	0x30
1817                     ;	;.line	134; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1818 0519 [11] [1] 6789      	MVF	_LCD1,1,0
1819                     ;	;.line	136; ".\Source\App_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[1]]  >> 4;
1820 051A [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1821 051B [11] [1] 0702      	MULL	0x02
1822 051C [11] [1] 6422      	MVF	_PRODL,0,0
1823 051D [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1824 051E [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1825 051F [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1826 0520 [12] [1] 1421      	ADDC	_PRODH,0,0
1827 0521 [12] [1] 0280      	IORL	0x80
1828 0522 [12] [1] C001 F608 	CALL	__g2ptrget2
1829 0524 [11] [1] 6688      	MVF	r0x1094,1,0
1830 0525 [11] [1] 6020      	SWPF	STK00,0,0
1831 0526 [11] [1] 010F      	ANDL	0x0f
1832 0527 [11] [1] 668B      	MVF	_DispNum_STK00,1,0
1833 0528 [11] [1] 6088      	SWPF	r0x1094,0,0
1834 0529 [11] [1] 6682      	MVF	r0x1096,1,0
1835 052A [11] [1] 01F0      	ANDL	0xf0
1836 052B [11] [1] 2E8B      	IORF	_DispNum_STK00,1,0
1837 052C [11] [1] 2282      	XORF	r0x1096,1,0
1838 052D [11] [1] 648B      	MVF	_DispNum_STK00,0,0
1839 052E [11] [1] 678A      	MVF	_LCD2,1,0
1840                     ;	;.line	138; ".\Source\App_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[0]];
1841 052F [11] [1] 6487      	MVF	(_DispNum_NumDisp_10000_448 + 0),0,0
1842 0530 [11] [1] 0702      	MULL	0x02
1843 0531 [11] [1] 6422      	MVF	_PRODL,0,0
1844 0532 [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1845 0533 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1846 0534 [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1847 0535 [12] [1] 1421      	ADDC	_PRODH,0,0
1848 0536 [12] [1] 0280      	IORL	0x80
1849 0537 [12] [1] C96B      	CALL	__g2ptrget1
1850 0538 [11] [1] 678B      	MVF	_LCD3,1,0
1851                     ;	;.line	140; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[0]] >> 8) & 0x03;
1852 0539 [11] [1] 6487      	MVF	(_DispNum_NumDisp_10000_448 + 0),0,0
1853 053A [11] [1] 0702      	MULL	0x02
1854 053B [11] [1] 6422      	MVF	_PRODL,0,0
1855 053C [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1856 053D [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1857 053E [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1858 053F [12] [1] 1421      	ADDC	_PRODH,0,0
1859 0540 [12] [1] 0280      	IORL	0x80
1860 0541 [12] [1] C001 F608 	CALL	__g2ptrget2
1861 0543 [11] [1] 0103      	ANDL	0x03
1862                     ;	;.line	142; ".\Source\App_LCD_4718.c"	LCD4_Macro = tmp;
1863 0544 [11] [1] 678C      	MVF	_LCD4,1,0
1864                     ;	;.line	144; ".\Source\App_LCD_4718.c"	LCD5_Macro = 0x00;
1865 0545 [11] [1] 0D8D      	CLRF	_LCD5,0
1866                     ;	;.line	146; ".\Source\App_LCD_4718.c"	LCD6_Macro = 0x00;
1867 0546 [11] [1] 0D8E      	CLRF	_LCD6,0
1868 0547 [11] [1] 786C      	JMP	_00151_DS_
1869                     _00149_DS_:
1870                     ;	;.line	151; ".\Source\App_LCD_4718.c"	if(NumDisp[4] == 0)
1871 0548 [11] [2] 6E83      	TFSZ	(_DispNum_NumDisp_10000_448 + 4),0
1872 0549 [11] [2] 781E      	JMP	_00146_DS_
1873                     ;	;.line	154; ".\Source\App_LCD_4718.c"	if(NumDisp[3] == 0)
1874 054A [11] [2] 6E84      	TFSZ	(_DispNum_NumDisp_10000_448 + 3),0
1875 054B [11] [2] 7802      	JMP	_00144_DS_
1876                     ;	;.line	156; ".\Source\App_LCD_4718.c"	NumDisp[3] = 10;
1877 054C [11] [2] 060A      	MVL	0x0a
1878 054D [11] [2] 6684      	MVF	(_DispNum_NumDisp_10000_448 + 3),1,0
1879                     _00144_DS_:
1880                     ;	;.line	159; ".\Source\App_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
1881 054E [11] [2] 6484      	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
1882 054F [11] [2] 0702      	MULL	0x02
1883 0550 [11] [2] 6422      	MVF	_PRODL,0,0
1884 0551 [11] [2] 0484      	ADDL	(_NUM_CODE + 0)
1885 0552 [11] [2] 660D      	MVF	__g2ptrget1_STK00,1,0
1886 0553 [12] [2] 0635      	MVL	high (_NUM_CODE + 0)
1887 0554 [12] [2] 1421      	ADDC	_PRODH,0,0
1888 0555 [12] [2] 0280      	IORL	0x80
1889 0556 [12] [2] C94C      	CALL	__g2ptrget1
1890 0557 [00] [1] 0011 6788 	MVF	_LCD0,1,0
1891                     ;	;.line	161; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[3]] >> 8) & 0x03;
1892 0559 [11] [1] 6484      	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
1893 055A [11] [1] 0702      	MULL	0x02
1894 055B [11] [1] 6422      	MVF	_PRODL,0,0
1895 055C [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1896 055D [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1897 055E [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1898 055F [12] [1] 1421      	ADDC	_PRODH,0,0
1899 0560 [12] [1] 0280      	IORL	0x80
1900 0561 [12] [1] C001 F608 	CALL	__g2ptrget2
1901 0563 [11] [1] 0103      	ANDL	0x03
1902 0564 [11] [1] 668B      	MVF	_DispNum_STK00,1,0
1903                     ;	;.line	163; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1904 0565 [11] [1] 6789      	MVF	_LCD1,1,0
1905                     ;	;.line	165; ".\Source\App_LCD_4718.c"	LCD_Hundred_Clr();
1906 0566 [11] [1] 8588      	BCF	_LCD0,2
1907 0567 [11] [1] 7811      	JMP	_00147_DS_
1908                     _00146_DS_:
1909                     ;	;.line	171; ".\Source\App_LCD_4718.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
1910 0568 [11] [2] 6484      	MVF	(_DispNum_NumDisp_10000_448 + 3),0,0
1911 0569 [11] [2] 0702      	MULL	0x02
1912 056A [11] [2] 6422      	MVF	_PRODL,0,0
1913 056B [11] [2] 0484      	ADDL	(_NUM_CODE + 0)
1914 056C [11] [2] 660D      	MVF	__g2ptrget2_STK00,1,0
1915 056D [12] [2] 0635      	MVL	high (_NUM_CODE + 0)
1916 056E [12] [2] 1421      	ADDC	_PRODH,0,0
1917 056F [12] [2] 0280      	IORL	0x80
1918 0570 [12] [2] C001 F608 	CALL	__g2ptrget2
1919                     ;	;.line	173; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[3]] >> 8) & 0x03;
1920 0572 [11] [2] D020 F188 	MVFF	STK00,_LCD0
1921 0574 [11] [2] 0103      	ANDL	0x03
1922 0575 [11] [2] 668B      	MVF	_DispNum_STK00,1,0
1923                     ;	;.line	175; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1924 0576 [00] [1] 0011 6789 	MVF	_LCD1,1,0
1925                     ;	;.line	177; ".\Source\App_LCD_4718.c"	LCD_Hundred_En();
1926 0578 [11] [1] 9588      	BSF	_LCD0,2
1927                     _00147_DS_:
1928                     ;	;.line	179; ".\Source\App_LCD_4718.c"	tmp = tmp | (NUM_CODE[NumDisp[2]] << 4 & 0x30);
1929 0579 [11] [1] 6485      	MVF	(_DispNum_NumDisp_10000_448 + 2),0,0
1930 057A [11] [1] 0702      	MULL	0x02
1931 057B [11] [1] 6422      	MVF	_PRODL,0,0
1932 057C [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1933 057D [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1934 057E [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1935 057F [12] [1] 1421      	ADDC	_PRODH,0,0
1936 0580 [12] [1] 0280      	IORL	0x80
1937 0581 [12] [1] C921      	CALL	__g2ptrget1
1938 0582 [11] [1] 6681      	MVF	r0x1099,1,0
1939 0583 [11] [1] 6081      	SWPF	r0x1099,0,0
1940 0584 [11] [1] 0130      	ANDL	0x30
1941 0585 [11] [1] 2C8B      	IORF	_DispNum_STK00,0,0
1942                     ;	;.line	182; ".\Source\App_LCD_4718.c"	LCD1_Macro = tmp;
1943 0586 [11] [1] 6789      	MVF	_LCD1,1,0
1944                     ;	;.line	184; ".\Source\App_LCD_4718.c"	LCD2_Macro = NUM_CODE[NumDisp[2]]  >> 4;
1945 0587 [11] [1] 6485      	MVF	(_DispNum_NumDisp_10000_448 + 2),0,0
1946 0588 [11] [1] 0702      	MULL	0x02
1947 0589 [11] [1] 6422      	MVF	_PRODL,0,0
1948 058A [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1949 058B [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1950 058C [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1951 058D [12] [1] 1421      	ADDC	_PRODH,0,0
1952 058E [12] [1] 0280      	IORL	0x80
1953 058F [12] [1] C001 F608 	CALL	__g2ptrget2
1954 0591 [11] [1] 6681      	MVF	r0x1099,1,0
1955 0592 [11] [1] 6020      	SWPF	STK00,0,0
1956 0593 [11] [1] 010F      	ANDL	0x0f
1957 0594 [11] [1] 668B      	MVF	_DispNum_STK00,1,0
1958 0595 [11] [1] 6081      	SWPF	r0x1099,0,0
1959 0596 [11] [1] 6680      	MVF	r0x109C,1,0
1960 0597 [11] [1] 01F0      	ANDL	0xf0
1961 0598 [11] [1] 2E8B      	IORF	_DispNum_STK00,1,0
1962 0599 [11] [1] 2280      	XORF	r0x109C,1,0
1963 059A [11] [1] 648B      	MVF	_DispNum_STK00,0,0
1964 059B [11] [1] 678A      	MVF	_LCD2,1,0
1965                     ;	;.line	187; ".\Source\App_LCD_4718.c"	LCD3_Macro = NUM_CODE[NumDisp[1]];
1966 059C [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1967 059D [11] [1] 0702      	MULL	0x02
1968 059E [11] [1] 6422      	MVF	_PRODL,0,0
1969 059F [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1970 05A0 [11] [1] 660D      	MVF	__g2ptrget1_STK00,1,0
1971 05A1 [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1972 05A2 [12] [1] 1421      	ADDC	_PRODH,0,0
1973 05A3 [12] [1] 0280      	IORL	0x80
1974 05A4 [12] [1] C8FE      	CALL	__g2ptrget1
1975 05A5 [11] [1] 678B      	MVF	_LCD3,1,0
1976                     ;	;.line	189; ".\Source\App_LCD_4718.c"	tmp = (NUM_CODE[NumDisp[1]] >> 8) & 0x03;
1977 05A6 [11] [1] 6486      	MVF	(_DispNum_NumDisp_10000_448 + 1),0,0
1978 05A7 [11] [1] 0702      	MULL	0x02
1979 05A8 [11] [1] 6422      	MVF	_PRODL,0,0
1980 05A9 [11] [1] 0484      	ADDL	(_NUM_CODE + 0)
1981 05AA [11] [1] 660D      	MVF	__g2ptrget2_STK00,1,0
1982 05AB [12] [1] 0635      	MVL	high (_NUM_CODE + 0)
1983 05AC [12] [1] 1421      	ADDC	_PRODH,0,0
1984 05AD [12] [1] 0280      	IORL	0x80
1985 05AE [12] [1] C001 F608 	CALL	__g2ptrget2
1986 05B0 [11] [1] 0103      	ANDL	0x03
1987                     ;	;.line	191; ".\Source\App_LCD_4718.c"	LCD4_Macro = tmp;
1988 05B1 [11] [1] 678C      	MVF	_LCD4,1,0
1989                     ;	;.line	193; ".\Source\App_LCD_4718.c"	LCD5_Macro = 0x00;
1990 05B2 [11] [1] 0D8D      	CLRF	_LCD5,0
1991                     ;	;.line	195; ".\Source\App_LCD_4718.c"	LCD6_Macro = 0x00;
1992 05B3 [11] [1] 0D8E      	CLRF	_LCD6,0
1993 05B4 [11] [1] C4B4      _00151_DS_:
1994                     ;	;.line	197; ".\Source\App_LCD_4718.c"	}
1995 05B5 [00] [1] 000A      	RET	
1996                     ; exit point of _DispNum
1997                     	.ENDFUNC	_DispNum
1998                     ;--------------------------------------------------------
1999                     
2000                     .globl _DispDelta
2001                     
2002                     ;--------------------------------------------------------
2003                     	.FUNC _DispDelta:$r:0:2:$L:r0x108F:$L:_DispDelta_STK00
2004                     ;--------------------------------------------------------
2005                     ;	;.line	44; ".\Source\App_LCD_4718.c"	void DispDelta(uint16 temp)
2006 05BF [00] [X] C481      _DispDelta:	;Function start
2007 05C0 [01] [X] 6680      	MVF	r0x108F,1,0
2008 05C1 [01] [X] 065A      	MVL	0x5a
2009                     ;	;.line	49; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
2010 05C2 [00] [1] 0011 6D7F 	CPSE	_eTempUnit,0
2011 05C4 [01] [1] 7815      	JMP	_00134_DS_
2012                     ;	;.line	52; ".\Source\App_LCD_4718.c"	if(temp >= Fever_Temp_Centigrade)
2013 05C5 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2014 05C6 [01] [1] 043C      	ADDL	0x3c
2015 05C7 [01] [1] 06F1      	MVL	0xf1
2016 05C8 [01] [1] 1480      	ADDC	r0x108F,0,0
2017 05C9 [01] [1] 74        	BTSS	_STATUS,4
2018 05C9 [01] 02        	JMP	_00121_DS_
2019                     ;	;.line	55; ".\Source\App_LCD_4718.c"	LCD_Delta3_En();
2020 05CA [01] [1] 998C      	BSF	_LCD4,4
2021 05CB [01] [1] 7825      	JMP	_00136_DS_
2022                     _00121_DS_:
2023                     ;	;.line	58; ".\Source\App_LCD_4718.c"	else if(temp >= Warn_Temp_Centigrade)
2024 05CC [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2025 05CD [01] [1] 046E      	ADDL	0x6e
2026 05CE [01] [1] 06F1      	MVL	0xf1
2027 05CF [01] [1] 1480      	ADDC	r0x108F,0,0
2028 05D0 [01] [1] 74        	BTSS	_STATUS,4
2029 05D0 [01] 02        	JMP	_00118_DS_
2030                     ;	;.line	61; ".\Source\App_LCD_4718.c"	LCD_Delta2_En();
2031 05D1 [01] [1] 9B8C      	BSF	_LCD4,5
2032 05D2 [01] [1] 781E      	JMP	_00136_DS_
2033                     _00118_DS_:
2034                     ;	;.line	64; ".\Source\App_LCD_4718.c"	else if(temp >= Noamal_Temp_Centigrade)
2035 05D3 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2036 05D4 [01] [1] 0404      	ADDL	0x04
2037 05D5 [01] [1] 06F2      	MVL	0xf2
2038 05D6 [01] [1] 1480      	ADDC	r0x108F,0,0
2039 05D7 [01] [1] 74        	BTSS	_STATUS,4
2040 05D7 [01] 19        	JMP	_00136_DS_
2041                     ;	;.line	67; ".\Source\App_LCD_4718.c"	LCD_Delta1_En();
2042 05D8 [01] [1] 9D8C      	BSF	_LCD4,6
2043 05D9 [01] [1] 7817      	JMP	_00136_DS_
2044                     _00134_DS_:
2045                     ;	;.line	71; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
2046 05DA [01] [1] 06A5      	MVL	0xa5
2047 05DB [01] [1] 6D7F      	CPSE	_eTempUnit,0
2048 05DC [01] [1] 7814      	JMP	_00136_DS_
2049                     ;	;.line	74; ".\Source\App_LCD_4718.c"	if(temp >= Fever_Temp_Fahrenheit)
2050 05DD [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2051 05DE [01] [1] 04F0      	ADDL	0xf0
2052 05DF [01] [1] 06D8      	MVL	0xd8
2053 05E0 [01] [1] 1480      	ADDC	r0x108F,0,0
2054 05E1 [01] [1] 74        	BTSS	_STATUS,4
2055 05E1 [01] 02        	JMP	_00129_DS_
2056                     ;	;.line	77; ".\Source\App_LCD_4718.c"	LCD_Delta3_En();
2057 05E2 [01] [1] 998C      	BSF	_LCD4,4
2058 05E3 [01] [1] 780D      	JMP	_00136_DS_
2059                     _00129_DS_:
2060                     ;	;.line	80; ".\Source\App_LCD_4718.c"	else if(temp >= Warn_Temp_Fahrenheit)
2061 05E4 [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2062 05E5 [01] [1] 044A      	ADDL	0x4a
2063 05E6 [01] [1] 06D9      	MVL	0xd9
2064 05E7 [01] [1] 1480      	ADDC	r0x108F,0,0
2065 05E8 [01] [1] 74        	BTSS	_STATUS,4
2066 05E8 [01] 02        	JMP	_00126_DS_
2067                     ;	;.line	83; ".\Source\App_LCD_4718.c"	LCD_Delta2_En();
2068 05E9 [01] [1] 9B8C      	BSF	_LCD4,5
2069 05EA [01] [1] 7806      	JMP	_00136_DS_
2070                     _00126_DS_:
2071                     ;	;.line	86; ".\Source\App_LCD_4718.c"	else if(temp >= Noamal_Temp_Fahrenheit)
2072 05EB [01] [1] 6481      	MVF	_DispDelta_STK00,0,0
2073 05EC [01] [1] 0458      	ADDL	0x58
2074 05ED [01] [1] 06DA      	MVL	0xda
2075 05EE [01] [1] 1480      	ADDC	r0x108F,0,0
2076 05EF [01] [1] A82B      	BTSZ	_STATUS,4
2077                     ;	;.line	89; ".\Source\App_LCD_4718.c"	LCD_Delta1_En();
2078 05F0 [01] [1] 9D8C      	BSF	_LCD4,6
2079 05F1 [01] [1] C4BE      _00136_DS_:
2080                     ;	;.line	93; ".\Source\App_LCD_4718.c"	}
2081 05F2 [00] [1] 000A      	RET	
2082                     ; exit point of _DispDelta
2083                     	.ENDFUNC	_DispDelta
2084                     ;--------------------------------------------------------
2085                     
2086                     .globl _DispUnit
2087                     
2088                     ;--------------------------------------------------------
2089                     	.FUNC _DispUnit:$r:0:0
2090                     ;--------------------------------------------------------
2091                     ;	;.line	26; ".\Source\App_LCD_4718.c"	if(eTempUnit == Centigrade)
2092                     _DispUnit:	;Function start
2093 05F3 [00] [1] 065A      	MVL	0x5a
2094 05F4 [00] [1] 6D7F      	CPSE	_eTempUnit,0
2095 05F5 [00] [1] 7803      	JMP	_00108_DS_
2096                     ;	;.line	29; ".\Source\App_LCD_4718.c"	LCD_Unit_C_En();
2097 05F6 [00] [1] 0605      	MVL	0x05
2098 05F7 [00] [1] 2F8D      	IORF	_LCD5,1,0
2099 05F8 [00] [1] 7805      	JMP	_00110_DS_
2100                     _00108_DS_:
2101                     ;	;.line	32; ".\Source\App_LCD_4718.c"	else if(eTempUnit == Fahrenheit)
2102 05F9 [00] [1] 06A5      	MVL	0xa5
2103 05FA [00] [1] 6D7F      	CPSE	_eTempUnit,0
2104 05FB [00] [1] 7802      	JMP	_00110_DS_
2105                     ;	;.line	35; ".\Source\App_LCD_4718.c"	LCD_Unit_F_En();
2106 05FC [00] [1] 0603      	MVL	0x03
2107 05FD [00] [1] 2F8D      	IORF	_LCD5,1,0
2108                     _00110_DS_:
2109                     ;	;.line	37; ".\Source\App_LCD_4718.c"	}
2110 05FE [00] [1] 000A      	RET	
2111                     ; exit point of _DispUnit
2112                     	.ENDFUNC	_DispUnit
2113                     ;--------------------------------------------------------
2114                     
2115                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
2116                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
2117                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
2118                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
2119                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
2120                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
2121                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
2122                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
2123                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
2124                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
2125                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
2126                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
2127                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
2128                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
2129                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
2130                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
2131                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
2132                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
2133                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
2134                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
2135                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
2136                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
2137                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
2138                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
2139                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
2140                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
2141                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
2142                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
2143                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
2144                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
2145                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
2146                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
2147                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
2148                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
2149                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
2150                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
2151                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
2152                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
2153                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
2154                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
2155                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
2156                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
2157                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
2158                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
2159                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
2160                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
2161                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
2162                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
2163                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
2164                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
2165                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
2166                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
2167                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
2168                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
2169                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
2170                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
2171                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
2172                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
2173                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
2174                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
2175                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
2176                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
2177                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
2178                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
2179                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
2180                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
2181                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
2182                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
2183                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
2184                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
2185                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
2186                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
2187                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
2188                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
2189                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
2190                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
2191                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
2192                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
2193                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
2194                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
2195                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
2196                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
2197                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
2198                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
2199                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
2200                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
2201                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
2202                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
2203                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
2204                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
2205                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
2206                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
2207                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
2208                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
2209                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
2210                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
2211                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
2212                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
2213                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
2214                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
2215                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
2216                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
2217                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
2218                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
2219                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
2220                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
2221                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
2222                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
2223                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
2224                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
2225                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
2226                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
2227                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
2228                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
2229                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
2230                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
2231                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
2232                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
2233                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
2234                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
2235                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
2236                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
2237                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
2238                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
2239                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
2240                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
2241                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
2242                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
2243                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
2244                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
2245                     	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
2246                     	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
2247                     	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
2248                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
2249                     	;--cdb--S:G$_moduchar$0$0({2}DF,SC:U),C,0,0
2250                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
2251                     	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
2252                     	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
2253                     	;--cdb--S:G$Disp_BatFlash$0$0({2}DF,SV:S),C,0,0
2254                     	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
2255                     	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
2256                     	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
2257                     	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
2258                     	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
2259                     	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
2260                     	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
2261                     	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
2262                     	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
2263                     	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
2264                     	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
2265                     	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
2266                     	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
2267                     	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
2268                     	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
2269                     	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
2270                     	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
2271                     	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
2272                     	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
2273                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
2274                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
2275                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
2276                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
2277                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
2278                     	;--cdb--S:LApp_LCD_4718.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
2279                     	;--cdb--S:LApp_LCD_4718.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
2280                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
2281                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
2282                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2283                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
2284                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2285                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
2286                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2287                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2288                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
2289                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
2290                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
2291                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
2292                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
2293                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2294                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2295                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
2296                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
2297                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
2298                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
2299                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
2300                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
2301                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2302                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
2303                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
2304                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
2305                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
2306                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
2307                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
2308                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2309                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
2310                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
2311                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
2312                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
2313                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
2314                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
2315                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
2316                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
2317                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
2318                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
2319                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
2320                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
2321                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
2322                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
2323                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
2324                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
2325                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
2326                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
2327                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
2328                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
2329                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
2330                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
2331                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
2332                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
2333                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
2334                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
2335                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
2336                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
2337                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
2338                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
2339                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
2340                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
2341                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
2342                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
2343                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
2344                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
2345                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
2346                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
2347                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
2348                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
2349                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
2350                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
2351                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
2352                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
2353                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
2354                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
2355                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
2356                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
2357                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
2358                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
2359                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
2360                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
2361                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
2362                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
2363                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
2364                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
2365                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
2366                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
2367                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
2368                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
2369                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
2370                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
2371                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
2372                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
2373                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
2374                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
2375                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
2376                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
2377                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
2378                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
2379                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
2380                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
2381                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
2382                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
2383                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
2384                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
2385                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
2386                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
2387                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
2388                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
2389                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
2390                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
2391                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
2392                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
2393                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
2394                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
2395                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
2396                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
2397                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
2398                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
2399                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
2400                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
2401                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
2402                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
2403                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
2404                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
2405                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
2406                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
2407                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
2408                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
2409                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
2410                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
2411                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
2412                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
2413                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
2414                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
2415                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
2416                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
2417                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
2418                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
2419                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
2420                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
2421                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
2422                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
2423                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
2424                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
2425                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
2426                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
2427                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
2428                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
2429                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
2430                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
2431                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
2432                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
2433                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
2434                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
2435                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
2436                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
2437                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
2438                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
2439                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
2440                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
2441                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
2442                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
2443                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
2444                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
2445                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
2446                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
2447                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
2448                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
2449                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
2450                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
2451                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
2452                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
2453                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
2454                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
2455                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
2456                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
2457                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
2458                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
2459                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
2460                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
2461                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
2462                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
2463                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
2464                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
2465                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
2466                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
2467                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
2468                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
2469                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
2470                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
2471                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
2472                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
2473                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
2474                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
2475                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
2476                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
2477                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
2478                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
2479                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
2480                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
2481                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
2482                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
2483                     	;--cdb--S:LApp_LCD_4718.DispDelta._DispDelta_temp_10000_423$temp$2710$423({2}SI:U),R,0,0,[_DispDelta_STK00,r0x108F]
2484                     	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_num_10000_447$num$2710$447({2}SI:U),R,0,0,[_DispNum_STK00,r0x1093]
2485                     	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_NumDisp_10000_448$NumDisp$2710$448({5}DA5d,SC:U),E,0,0
2486                     	;--cdb--S:LApp_LCD_4718.DispNum._DispNum_tmp_10000_448$tmp$2710$448({1}SC:U),R,0,0,[r0x1092]
2487                     	;--cdb--S:LApp_LCD_4718.MeasedTemp_Disp._MeasedTemp_Disp_tmp_10000_682$tmp$2710$682({2}SI:U),R,0,0,[r0x10DC,r0x10DD]
2488                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
2489                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
2490                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
2491                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
2492                     	;--cdb--S:G$_PRODH$0$0({0}:U),Z,0,0
2493                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
2494                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
2495                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
2496                     ;--------------------------------------------------------
2497                     ; external declarations
2498                     ;--------------------------------------------------------
2499                     	.globl	_Disp_Off
2500                     	.globl	_Disp_Hi
2501                     	.globl	_Disp_All
2502                     	.globl	_Disp_Orl
2503                     	.globl	_Disp_Udr
2504                     	.globl	_Disp_Rct
2505                     	.globl	_Disp_Bth
2506                     	.globl	_Disp_End
2507                     	.globl	_Disp_CAL
2508                     	.globl	_Disp_Code
2509                     	.globl	_Disp_Version
2510                     	.globl	_Disp_Nothing
2511                     	.globl	_Disp_BrownOut
2512                     	.globl	_Disp_Err
2513                     	.globl	_Disp_ErrNo
2514                     	.globl	_Disp_StaticDash
2515                     	.globl	_LCD_Configuration
2516                     	.globl	_LCD_Clear_Register
2517                     	.globl	_memchrn
2518                     	.globl	_Centigrade_Convert_Fahrenheit
2519                     	.globl	__divuint
2520                     	.globl	__moduchar
2521                     	.globl	__moduint
2522                     	.globl	_FSR0
2523                     	.globl	_FSR1
2524                     	.globl	_FSR2
2525                     	.globl	_ADCR
2526                     	.globl	_sIIC
2527                     	.globl	_BIE_Available_Addr
2528                     	.globl	_sTIMx
2529                     	.globl	_sUARTx
2530                     	.globl	_sAutoBps
2531                     	.globl	_eAutoBps_Status
2532                     	.globl	_sTest
2533                     	.globl	_eTempUnit
2534                     	.globl	_eBondingTempUnit
2535                     	.globl	_eVersionCode
2536                     	.globl	_eMeasureMode
2537                     	.globl	_eBinding_Status
2538                     	.globl	_Enter_PrepareSleep_Flag
2539                     	.globl	_sButton
2540                     	.globl	_sTimeStamp
2541                     	.globl	_eButton_Status
2542                     	.globl	_sLVD
2543                     	.globl	_sADC
2544                     	.globl	_eADCChannel
2545                     	.globl	_eSystem_Mode
2546                     	.globl	_eBuzzer_Status
2547                     	.globl	_Flag_No_Buzzer
2548                     	.globl	_sMemory
2549                     	.globl	_sMemoryFlag
2550                     	.globl	_sActual
2551                     	.globl	_sForecast
2552                     	.globl	_sTempCal
2553                     	.globl	_eMeas_Status
2554                     	.globl	_sActual_Forecast
2555                     	.globl	_eTo_Actual_Ways
2556                     	.globl	_eBle_Sta
2557                     	.globl	_sBleStatus
2558                     	.globl	_eBacklight_Status
2559                     	.globl	_sBacklight
2560                     	.globl	_R_Table
2561                     	.globl	_CloseTable
2562                     	.globl	__g2ptrget1
2563                     	.globl	__g2ptrget2
2564                     
2565                     	.globl STK07
2566                     	.globl STK07_SAVE
2567                     	.globl STK06
2568                     	.globl STK06_SAVE
2569                     	.globl STK05
2570                     	.globl STK05_SAVE
2571                     	.globl STK04
2572                     	.globl STK04_SAVE
2573                     	.globl STK03
2574                     	.globl STK03_SAVE
2575                     	.globl STK02
2576                     	.globl STK02_SAVE
2577                     	.globl STK01
2578                     	.globl STK01_SAVE
2579                     	.globl STK00
2580                     	.globl STK00_SAVE
2581                     ;--------------------------------------------------------
2582                     ; global -1 declarations
2583                     ;--------------------------------------------------------
2584                     	.globl	_DispUnit
2585                     	.globl	_DispDelta
2586                     	.globl	_DispNum
2587                     	.globl	_Disp_UnitFlash
2588                     	.globl	_Disp_BatFlash
2589                     	.globl	_Disp_Bat
2590                     	.globl	_Disp_DynamicDash
2591                     	.globl	_Disp_DynamicForecastSymbol
2592                     	.globl	_Disp_BleSymbol
2593                     	.globl	_UnitExchange_Display
2594                     	.globl	_Off_Display
2595                     	.globl	_PreCalibration_Display
2596                     	.globl	_Calibration_Display
2597                     	.globl	_CalibrationOK_Display
2598                     	.globl	_RecentTemp_Display
2599                     	.globl	_MemTempNumber_Display
2600                     	.globl	_MemTempValue_Display
2601                     	.globl	_CurrentMode_Display
2602                     	.globl	_ModeExchange_Display
2603                     	.globl	_Binding_Display
2604                     	.globl	_EMC_Update_Temp_Fast
2605                     	.globl	_TempDetecting_Display
2606                     	.globl	_Err_Disp
2607                     	.globl	_MeasedTemp_Disp
2608                     	.globl	_eErr
2609                     	.globl	_eDisplay_Interfaces
2610                     	.globl	_UnitExchangeCompleted
2611                     	.globl	_ERR
2612                     	.globl	_NUM_CODE
2613                     
2614                     	.globl	_memcpy
2615                     ;--------------------------------------------------------
2616                     ; global -2 definitions
2617                     ;--------------------------------------------------------
2618                     	.area DSEG(DATA)
2619 0232 --             _eErr:	.ds	1
2620                     
2621                     	.area DSEG(DATA)
2622 0233 --             _eDisplay_Interfaces:	.ds	1
2623                     
2624                     	.area DSEG(DATA)
2625 0234 --             _UnitExchangeCompleted:	.ds	1
2626                     
2627                     	.area DSEG(DATA)
2628 0235 -- -- -- -- -- -- -- -- -- _ERR:	.ds	9
2629                     
2630                     	.area DSEG(DATA)
2631                     __SWTGTID	.equ	0xA6A6B2CF
2632                     
2633                     	.area DSEG(DATA)
2634                     _INDF0	.equ	0x0
2635                     
2636                     	.area DSEG(DATA)
2637                     _POINC0	.equ	0x1
2638                     
2639                     	.area DSEG(DATA)
2640                     _PODEC0	.equ	0x2
2641                     
2642                     	.area DSEG(DATA)
2643                     _PRINC0	.equ	0x3
2644                     
2645                     	.area DSEG(DATA)
2646                     _PLUSW0	.equ	0x4
2647                     
2648                     	.area DSEG(DATA)
2649                     _INDF1	.equ	0x5
2650                     
2651                     	.area DSEG(DATA)
2652                     _POINC1	.equ	0x6
2653                     
2654                     	.area DSEG(DATA)
2655                     _PODEC1	.equ	0x7
2656                     
2657                     	.area DSEG(DATA)
2658                     _PRINC1	.equ	0x8
2659                     
2660                     	.area DSEG(DATA)
2661                     _PLUSW1	.equ	0x9
2662                     
2663                     	.area DSEG(DATA)
2664                     _INDF2	.equ	0xA
2665                     
2666                     	.area DSEG(DATA)
2667                     _POINC2	.equ	0xB
2668                     
2669                     	.area DSEG(DATA)
2670                     _PODEC2	.equ	0xC
2671                     
2672                     	.area DSEG(DATA)
2673                     _PRINC2	.equ	0xD
2674                     
2675                     	.area DSEG(DATA)
2676                     _PLUSW2	.equ	0xE
2677                     
2678                     	.area DSEG(DATA)
2679                     _FSR0H	.equ	0xF
2680                     
2681                     	.area DSEG(DATA)
2682                     _FSR0L	.equ	0x10
2683                     
2684                     	.area DSEG(DATA)
2685                     _FSR1H	.equ	0x11
2686                     
2687                     	.area DSEG(DATA)
2688                     _FSR1L	.equ	0x12
2689                     
2690                     	.area DSEG(DATA)
2691                     _FSR2H	.equ	0x13
2692                     
2693                     	.area DSEG(DATA)
2694                     _FSR2L	.equ	0x14
2695                     
2696                     	.area DSEG(DATA)
2697                     _TOSH	.equ	0x16
2698                     
2699                     	.area DSEG(DATA)
2700                     _TOSL	.equ	0x17
2701                     
2702                     	.area DSEG(DATA)
2703                     _SKCN	.equ	0x18
2704                     
2705                     	.area DSEG(DATA)
2706                     _PCLATH	.equ	0x1A
2707                     
2708                     	.area DSEG(DATA)
2709                     _PCLATL	.equ	0x1B
2710                     
2711                     	.area DSEG(DATA)
2712                     _TBLPTRH	.equ	0x1D
2713                     
2714                     	.area DSEG(DATA)
2715                     _TBLPTRL	.equ	0x1E
2716                     
2717                     	.area DSEG(DATA)
2718                     _TBLDH	.equ	0x1F
2719                     
2720                     	.area DSEG(DATA)
2721                     _TBLDL	.equ	0x20
2722                     
2723                     	.area DSEG(DATA)
2724                     _PRODH	.equ	0x21
2725                     
2726                     	.area DSEG(DATA)
2727                     _PRODL	.equ	0x22
2728                     
2729                     	.area DSEG(DATA)
2730                     _INTE0	.equ	0x23
2731                     
2732                     	.area DSEG(DATA)
2733                     _INTE1	.equ	0x24
2734                     
2735                     	.area DSEG(DATA)
2736                     _INTE2	.equ	0x25
2737                     
2738                     	.area DSEG(DATA)
2739                     _INTF0	.equ	0x26
2740                     
2741                     	.area DSEG(DATA)
2742                     _INTF1	.equ	0x27
2743                     
2744                     	.area DSEG(DATA)
2745                     _INTF2	.equ	0x28
2746                     
2747                     	.area DSEG(DATA)
2748                     _WREG	.equ	0x29
2749                     
2750                     	.area DSEG(DATA)
2751                     _BSRCN	.equ	0x2A
2752                     
2753                     	.area DSEG(DATA)
2754                     _STATUS	.equ	0x2B
2755                     
2756                     	.area DSEG(DATA)
2757                     _MSTAT	.equ	0x2B
2758                     
2759                     	.area DSEG(DATA)
2760                     _PSTAT	.equ	0x2C
2761                     
2762                     	.area DSEG(DATA)
2763                     _BIECN	.equ	0x2E
2764                     
2765                     	.area DSEG(DATA)
2766                     _BIEARH	.equ	0x2F
2767                     
2768                     	.area DSEG(DATA)
2769                     _BIEARL	.equ	0x30
2770                     
2771                     	.area DSEG(DATA)
2772                     _BIEDRH	.equ	0x31
2773                     
2774                     	.area DSEG(DATA)
2775                     _BIEDRL	.equ	0x32
2776                     
2777                     	.area DSEG(DATA)
2778                     _PWRCN	.equ	0x33
2779                     
2780                     	.area DSEG(DATA)
2781                     _OSCCN0	.equ	0x34
2782                     
2783                     	.area DSEG(DATA)
2784                     _OSCCN1	.equ	0x35
2785                     
2786                     	.area DSEG(DATA)
2787                     _OSCCN2	.equ	0x36
2788                     
2789                     	.area DSEG(DATA)
2790                     _CSFCN0	.equ	0x37
2791                     
2792                     	.area DSEG(DATA)
2793                     _CSFCN1	.equ	0x38
2794                     
2795                     	.area DSEG(DATA)
2796                     _WDTCN	.equ	0x39
2797                     
2798                     	.area DSEG(DATA)
2799                     _AD1H	.equ	0x3A
2800                     
2801                     	.area DSEG(DATA)
2802                     _AD1M	.equ	0x3B
2803                     
2804                     	.area DSEG(DATA)
2805                     _AD1L	.equ	0x3C
2806                     
2807                     	.area DSEG(DATA)
2808                     _AD1CN0	.equ	0x3D
2809                     
2810                     	.area DSEG(DATA)
2811                     _AD1CN1	.equ	0x3E
2812                     
2813                     	.area DSEG(DATA)
2814                     _AD1CN2	.equ	0x3F
2815                     
2816                     	.area DSEG(DATA)
2817                     _AD1CN3	.equ	0x40
2818                     
2819                     	.area DSEG(DATA)
2820                     _AD1CN4	.equ	0x41
2821                     
2822                     	.area DSEG(DATA)
2823                     _AD1CN5	.equ	0x42
2824                     
2825                     	.area DSEG(DATA)
2826                     _LVDCN	.equ	0x43
2827                     
2828                     	.area DSEG(DATA)
2829                     _TMA1CN	.equ	0x44
2830                     
2831                     	.area DSEG(DATA)
2832                     _TMA1R	.equ	0x45
2833                     
2834                     	.area DSEG(DATA)
2835                     _TMA1C	.equ	0x46
2836                     
2837                     	.area DSEG(DATA)
2838                     _TB1FLAG	.equ	0x47
2839                     
2840                     	.area DSEG(DATA)
2841                     _TB1CN0	.equ	0x48
2842                     
2843                     	.area DSEG(DATA)
2844                     _TB1CN1	.equ	0x49
2845                     
2846                     	.area DSEG(DATA)
2847                     _TB1RH	.equ	0x4A
2848                     
2849                     	.area DSEG(DATA)
2850                     _TB1RL	.equ	0x4B
2851                     
2852                     	.area DSEG(DATA)
2853                     _TB1C0H	.equ	0x4C
2854                     
2855                     	.area DSEG(DATA)
2856                     _TB1C0L	.equ	0x4D
2857                     
2858                     	.area DSEG(DATA)
2859                     _TB1C1H	.equ	0x4E
2860                     
2861                     	.area DSEG(DATA)
2862                     _TB1C1L	.equ	0x4F
2863                     
2864                     	.area DSEG(DATA)
2865                     _TB1C2H	.equ	0x50
2866                     
2867                     	.area DSEG(DATA)
2868                     _TB1C2L	.equ	0x51
2869                     
2870                     	.area DSEG(DATA)
2871                     _TC1CN0	.equ	0x52
2872                     
2873                     	.area DSEG(DATA)
2874                     _PT1	.equ	0x53
2875                     
2876                     	.area DSEG(DATA)
2877                     _TRISC1	.equ	0x54
2878                     
2879                     	.area DSEG(DATA)
2880                     _PT1DA	.equ	0x55
2881                     
2882                     	.area DSEG(DATA)
2883                     _PT1PU	.equ	0x56
2884                     
2885                     	.area DSEG(DATA)
2886                     _PT1M1	.equ	0x57
2887                     
2888                     	.area DSEG(DATA)
2889                     _PT1INT	.equ	0x58
2890                     
2891                     	.area DSEG(DATA)
2892                     _PT1INTE	.equ	0x59
2893                     
2894                     	.area DSEG(DATA)
2895                     _PT1INTF	.equ	0x5A
2896                     
2897                     	.area DSEG(DATA)
2898                     _PT2	.equ	0x5B
2899                     
2900                     	.area DSEG(DATA)
2901                     _TRISC2	.equ	0x5C
2902                     
2903                     	.area DSEG(DATA)
2904                     _PT2DA	.equ	0x5D
2905                     
2906                     	.area DSEG(DATA)
2907                     _PT2PU	.equ	0x5E
2908                     
2909                     	.area DSEG(DATA)
2910                     _PT2INT	.equ	0x5F
2911                     
2912                     	.area DSEG(DATA)
2913                     _PT2INTE	.equ	0x60
2914                     
2915                     	.area DSEG(DATA)
2916                     _PT2INTF	.equ	0x61
2917                     
2918                     	.area DSEG(DATA)
2919                     _PT6	.equ	0x62
2920                     
2921                     	.area DSEG(DATA)
2922                     _TRISC6	.equ	0x63
2923                     
2924                     	.area DSEG(DATA)
2925                     _PT6DA	.equ	0x64
2926                     
2927                     	.area DSEG(DATA)
2928                     _PT6PU	.equ	0x65
2929                     
2930                     	.area DSEG(DATA)
2931                     _PT7	.equ	0x66
2932                     
2933                     	.area DSEG(DATA)
2934                     _TRISC7	.equ	0x67
2935                     
2936                     	.area DSEG(DATA)
2937                     _PT7DA	.equ	0x68
2938                     
2939                     	.area DSEG(DATA)
2940                     _PT7PU	.equ	0x69
2941                     
2942                     	.area DSEG(DATA)
2943                     _PT8	.equ	0x6A
2944                     
2945                     	.area DSEG(DATA)
2946                     _TRISC8	.equ	0x6B
2947                     
2948                     	.area DSEG(DATA)
2949                     _PT8DA	.equ	0x6C
2950                     
2951                     	.area DSEG(DATA)
2952                     _PT8PU	.equ	0x6D
2953                     
2954                     	.area DSEG(DATA)
2955                     _SSPCN0	.equ	0x6E
2956                     
2957                     	.area DSEG(DATA)
2958                     _SSPSTA0	.equ	0x6F
2959                     
2960                     	.area DSEG(DATA)
2961                     _SSPBUF0	.equ	0x70
2962                     
2963                     	.area DSEG(DATA)
2964                     _CFG0	.equ	0x71
2965                     
2966                     	.area DSEG(DATA)
2967                     _ACT0	.equ	0x72
2968                     
2969                     	.area DSEG(DATA)
2970                     _STA0	.equ	0x73
2971                     
2972                     	.area DSEG(DATA)
2973                     _CRG0	.equ	0x74
2974                     
2975                     	.area DSEG(DATA)
2976                     _TOC0	.equ	0x75
2977                     
2978                     	.area DSEG(DATA)
2979                     _RDB0	.equ	0x76
2980                     
2981                     	.area DSEG(DATA)
2982                     _TDB0	.equ	0x77
2983                     
2984                     	.area DSEG(DATA)
2985                     _SID0	.equ	0x78
2986                     
2987                     	.area DSEG(DATA)
2988                     _UR0CN	.equ	0x79
2989                     
2990                     	.area DSEG(DATA)
2991                     _UR0STA	.equ	0x7A
2992                     
2993                     	.area DSEG(DATA)
2994                     _BA0CN	.equ	0x7B
2995                     
2996                     	.area DSEG(DATA)
2997                     _BG0RH	.equ	0x7C
2998                     
2999                     	.area DSEG(DATA)
3000                     _BG0RL	.equ	0x7D
3001                     
3002                     	.area DSEG(DATA)
3003                     _TX0R	.equ	0x7E
3004                     
3005                     	.area DSEG(DATA)
3006                     _RC0REG	.equ	0x7F
3007                     
3008                     	.area DSEG(DATA)
3009                     _LCDCN1	.equ	0x180
3010                     
3011                     	.area DSEG(DATA)
3012                     _LCDCN2	.equ	0x181
3013                     
3014                     	.area DSEG(DATA)
3015                     _LCDCN3	.equ	0x182
3016                     
3017                     	.area DSEG(DATA)
3018                     _LCDCN4	.equ	0x183
3019                     
3020                     	.area DSEG(DATA)
3021                     _LCDCN5	.equ	0x184
3022                     
3023                     	.area DSEG(DATA)
3024                     _LCDCN6	.equ	0x185
3025                     
3026                     	.area DSEG(DATA)
3027                     _LCDCN7	.equ	0x186
3028                     
3029                     	.area DSEG(DATA)
3030                     _LCDCN8	.equ	0x187
3031                     
3032                     	.area DSEG(DATA)
3033                     _LCD0	.equ	0x188
3034                     
3035                     	.area DSEG(DATA)
3036                     _LCD1	.equ	0x189
3037                     
3038                     	.area DSEG(DATA)
3039                     _LCD2	.equ	0x18A
3040                     
3041                     	.area DSEG(DATA)
3042                     _LCD3	.equ	0x18B
3043                     
3044                     	.area DSEG(DATA)
3045                     _LCD4	.equ	0x18C
3046                     
3047                     	.area DSEG(DATA)
3048                     _LCD5	.equ	0x18D
3049                     
3050                     	.area DSEG(DATA)
3051                     _LCD6	.equ	0x18E
3052                     
3053                     	.area DSEG(DATA)
3054                     _LCD7	.equ	0x18F
3055                     
3056                     	.area DSEG(DATA)
3057                     _LCD8	.equ	0x190
3058                     
3059                     	.area DSEG(DATA)
3060                     _LCD9	.equ	0x191
3061                     
3062                     	.area DSEG(DATA)
3063                     _UR2CN	.equ	0x192
3064                     
3065                     	.area DSEG(DATA)
3066                     _UR2STA	.equ	0x193
3067                     
3068                     	.area DSEG(DATA)
3069                     _BA2CN	.equ	0x194
3070                     
3071                     	.area DSEG(DATA)
3072                     _BG2RH	.equ	0x195
3073                     
3074                     	.area DSEG(DATA)
3075                     _BG2RL	.equ	0x196
3076                     
3077                     	.area DSEG(DATA)
3078                     _TX2R	.equ	0x197
3079                     
3080                     	.area DSEG(DATA)
3081                     _RC2REG	.equ	0x198
3082                     
3083                     	.area DSEG(DATA)
3084                     _TMA2R	.equ	0x1E8
3085                     
3086                     	.area DSEG(DATA)
3087                     _TMA2C	.equ	0x1E9
3088                     
3089                     	.area DSEG(DATA)
3090                     _LEDCN	.equ	0x1EA
3091                     
3092                     	.area DSEG(DATA)
3093                     _IQ0	.equ	0x1EB
3094                     
3095                     	.area DSEG(DATA)
3096                     _IQ1	.equ	0x1EC
3097                     
3098                     	.area DSEG(DATA)
3099                     _DGCON1	.equ	0x1ED
3100                     
3101                     	.area DSEG(DATA)
3102                     _DGCON2	.equ	0x1EE
3103                     
3104                     	.area DSEG(DATA)
3105                     _ADCRH	.equ	0x3A
3106                     
3107                     	.area DSEG(DATA)
3108                     _ADCRM	.equ	0x3B
3109                     
3110                     	.area DSEG(DATA)
3111                     _ADCRL	.equ	0x3C
3112                     
3113                     	.area DSEG(DATA)
3114                     _TEMDATA	.equ	0x2E0
3115                     
3116                     ;--------------------------------------------------------
3117                     ; absolute symbol definitions
3118                     ;--------------------------------------------------------
3119                     ;--------------------------------------------------------
3120                     ; compiler-defined variables
3121                     ;--------------------------------------------------------
3122                     	.area IDATA (DATA,REL,CON); pre-def
3123                     	.area IDATAROM (CODE,REL,CON); pre-def
3124                     	.area UDATA (DATA,REL,CON); pre-def
3125                     	.area UDATA (DATA,REL,CON) ;UDL_App_LCD_4718_0	udata
3126 @FSR2-CurrentOffset+001 --         r0x108F:	.ds	1
3127 @FSR2-CurrentOffset+001 --         r0x1093:	.ds	1
3128 @FSR2-CurrentOffset+003 --         r0x1094:	.ds	1
3129 @FSR2-CurrentOffset+002 --         r0x1095:	.ds	1
3130 @FSR2-CurrentOffset+009 --         r0x1096:	.ds	1
3131 @FSR2-CurrentOffset+010 --         r0x1099:	.ds	1
3132 @FSR2-CurrentOffset+011 --         r0x109C:	.ds	1
3133 @FSR2-CurrentOffset+001 --         r0x10B2:	.ds	1
3134 @FSR2-CurrentOffset+001 --         r0x10C7:	.ds	1
3135 @FSR2-CurrentOffset+001 --         r0x10DC:	.ds	1
3136 @FSR2-CurrentOffset+002 --         r0x10DD:	.ds	1
3137                     	.area LOCALSTK (STK); local stack var
3138 @FSR2-00 --         _DispDelta_STK00:	.ds	1
3139                     	.globl _DispDelta_STK00
3140 @FSR2-00 --         _DispNum_STK00:	.ds	1
3141                     	.globl _DispNum_STK00
3142                     	.globl __divuint_STK02
3143                     	.globl __divuint_STK01
3144                     	.globl __divuint_STK00
3145 @FSR2-CurrentOffset+004 -- -- -- -- -- _DispNum_NumDisp_10000_448:	.ds	5
3146                     	.globl __moduchar_STK00
3147                     	.globl __moduint_STK02
3148                     	.globl __moduint_STK01
3149                     	.globl __moduint_STK00
3150                     	.globl __g2ptrget1_STK00
3151                     	.globl __g2ptrget2_STK00
3152                     	.globl _memchrn_STK02
3153                     	.globl _memchrn_STK01
3154                     	.globl _memchrn_STK00
3155                     	.globl _Centigrade_Convert_Fahrenheit_STK00
3156                     	.globl _Disp_Code_STK00
3157                     ;--------------------------------------------------------
3158                     ; initialized data
3159                     ;--------------------------------------------------------
3160                     
3161                     	.area	CONST   (CODE)	 ;App_LCD_4718-0-code, const
3162                     
3163                     _NUM_CODE:
3164 1AC2 5303           	.byte #0x53, #0x03	; 851
3165 1AC3 0003           	.byte #0x00, #0x03	; 768
3166 1AC4 7201           	.byte #0x72, #0x01	; 370
3167 1AC5 7003           	.byte #0x70, #0x03	; 880
3168 1AC6 2103           	.byte #0x21, #0x03	; 801
3169 1AC7 7102           	.byte #0x71, #0x02	; 625
3170 1AC8 7302           	.byte #0x73, #0x02	; 627
3171 1AC9 1003           	.byte #0x10, #0x03	; 784
3172 1ACA 7303           	.byte #0x73, #0x03	; 883
3173 1ACB 7103           	.byte #0x71, #0x03	; 881
3174 1ACC 0000           	.byte #0x00, #0x00	; 0
3175                     
3176                     ;--------------------------------------------------------
3177                     ; initialized data - mirror
3178                     ;--------------------------------------------------------
3179                     
3180                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_LCD_4718$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3181                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_LCD_4718$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
3182                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
3183                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
3184                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3185                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3186                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3187                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3188                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3189                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3190                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3191                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3192                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3193                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3194                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3195                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3196                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3197                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
3198                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3199                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3200                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3201                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3202                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3203                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3204                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3205                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3206                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3207                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3208                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3209                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3210                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3211                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3212                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
3213                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
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
3234                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3235                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3236                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3237                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3238                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3239                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3240                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3241                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3242                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
3243                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
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
3264                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3265                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3266                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3267                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3268                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3269                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3270                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3271                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3272                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
3273                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_LCD_4718$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3274                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
3275                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
3276                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
3277                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_LCD_4718$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3278                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
3279                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
3280                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_LCD_4718$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3281                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_LCD_4718$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3282                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_LCD_4718$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
3283                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
3284                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
3285                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_LCD_4718$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3286                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_LCD_4718$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
3287                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_LCD_4718$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
3288                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_LCD_4718$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
3289                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_LCD_4718$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
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
3310                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3311                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3312                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3313                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3314                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3315                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3316                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3317                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3318                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
3319                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_LCD_4718$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
3320                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
3321                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
3322                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_LCD_4718$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3323                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_LCD_4718$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
3324                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
3325                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_LCD_4718$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
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
3346                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3347                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3348                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3349                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3350                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3351                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3352                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3353                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
3354                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
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
3375                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3376                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3377                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3378                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3379                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3380                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3381                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3382                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
3383                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
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
3404                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3405                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3406                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3407                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3408                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3409                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3410                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3411                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3412                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
3413                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_LCD_4718$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
3414                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_LCD_4718$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
3415                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_LCD_4718$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
3416                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
3417                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
3418                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_LCD_4718$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
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
3439                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3440                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3441                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3442                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3443                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3444                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3445                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3446                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3447                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
3448                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
3449                     	;Following is optimization info, 
3450                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
3451                     	;--cdb--W:r0x10DC:NULL+0:-1:0
3452                     	;--cdb--W:r0x10DD:NULL+0:-1:0
3453                     	;--cdb--W:r0x10D6:NULL+0:-1:0
3454                     	;--cdb--W:r0x10D7:NULL+0:-1:0
3455                     	;--cdb--W:r0x10D0:NULL+0:-1:0
3456                     	;--cdb--W:r0x10D1:NULL+0:-1:0
3457                     	;--cdb--W:r0x10D0:NULL+0:-1:1
3458                     	;--cdb--W:r0x10D1:NULL+0:-1:1
3459                     	;--cdb--W:r0x10CC:STK00+0:-1:0
3460                     	;--cdb--W:r0x10CC:NULL+0:-1:0
3461                     	;--cdb--W:r0x10CE:STK01+0:-1:0
3462                     	;--cdb--W:r0x10CB:NULL+0:-1:0
3463                     	;--cdb--W:r0x10C7:NULL+0:-1:1
3464                     	;--cdb--W:r0x10C8:NULL+0:-1:1
3465                     	;--cdb--W:r0x10C7:NULL+0:-1:0
3466                     	;--cdb--W:r0x10C8:NULL+0:-1:0
3467                     	;--cdb--W:r0x10C9:NULL+0:0:0
3468                     	;--cdb--W:r0x10C9:NULL+0:-1:1
3469                     	;--cdb--W:r0x10C1:STK00+0:-1:0
3470                     	;--cdb--W:r0x10C1:NULL+0:-1:0
3471                     	;--cdb--W:r0x10C3:STK01+0:-1:0
3472                     	;--cdb--W:r0x10C0:NULL+0:-1:0
3473                     	;--cdb--W:r0x10B8:NULL+0:-1:1
3474                     	;--cdb--W:r0x10B8:NULL+0:-1:0
3475                     	;--cdb--W:r0x10B9:NULL+0:-1:0
3476                     	;--cdb--W:r0x10B9:NULL+0:-1:1
3477                     	;--cdb--W:r0x1095:NULL+0:-1:1
3478                     	;--cdb--W:r0x1094:NULL+0:-1:1
3479                     	;--cdb--W:r0x1093:NULL+0:-1:1
3480                     	;--cdb--W:_DispNum_STK00:NULL+0:-1:1
3481                     	;--cdb--W:r0x1097:NULL+0:-1:1
3482                     	;--cdb--W:r0x1099:NULL+0:-1:1
3483                     	;--cdb--W:r0x109C:NULL+0:-1:1
3484                     	;--cdb--W:r0x109E:NULL+0:-1:1
3485                     	;--cdb--W:r0x1093:STK00+0:-1:0
3486                     	;--cdb--W:r0x1093:r0x1096+1:-1:0
3487                     	;--cdb--W:r0x1093:r0x1098+1:-1:0
3488                     	;--cdb--W:r0x1093:r0x109C+1:-1:0
3489                     	;--cdb--W:r0x1094:STK00+0:-1:0
3490                     	;--cdb--W:r0x1096:STK00+0:-1:0
3491                     	;--cdb--W:r0x1099:r0x109A+1:-1:0
3492                     	;--cdb--W:r0x1096:NULL+0:-1:1
3493                     	;--cdb--W:r0x1098:NULL+0:-1:1
3494                     	;--cdb--W:r0x109A:NULL+0:-1:1
3495                     	;--cdb--W:r0x109B:NULL+0:-1:1
3496                     	;--cdb--W:r0x109D:NULL+0:-1:1
3497                     	;--c2db--RNG$_DispDelta_temp_10000_423$2009$2076
3498                     	;--c2db--RNG$_DispNum_num_10000_447$1712$1783
3499                     	;--c2db--RNG$_DispNum_tmp_10000_448$1903$1941
3500                     	;--c2db--RNG$_MeasedTemp_Disp_tmp_10000_682$540$564
3501                     	END
