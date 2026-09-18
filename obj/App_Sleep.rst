001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_Sleep.c"
009                     	.module App_Sleep
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Sleep$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Sleep$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Sleep$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Sleep$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Sleep$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Sleep$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Sleep$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Sleep$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Sleep$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Sleep$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Sleep$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Sleep$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Sleep$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Sleep$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Sleep$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Sleep$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Sleep$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Sleep$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Sleep$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Sleep$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Sleep:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Sleep$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Sleep$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Sleep$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
163                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:App_Sleep:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     ;--------------------------------------------------------
166                     ; overlayable items in internal ram 
167                     ;--------------------------------------------------------
168                     ;	udata_ovr
169                     .area CCODE (code,REL,CON) ; App_Sleep-code 
170                     .globl _Sleep_Mode
171                     
172                     ;--------------------------------------------------------
173                     	.FUNC _Sleep_Mode:$r:0:0:$C:_GPIO_Configuration:$C:_AccuracyModeADCOFF:$C:_Param_Init:$C:_LCD_Clear_Register\
174                     :$C:_LCD_Configuration:$C:_Delay_ms:$C:_ADCAccuracyMode\
175                     
176                     ;--------------------------------------------------------
177                     ;	;.line	24; ".\Source\App_Sleep.c"	switch(eSystem_Mode)
178                     _Sleep_Mode:	;Function start
179 129D [00] [2] 0604      	MVL	0x04
180 129E [00] [2] 6BC9      	CPSL	_eSystem_Mode,0
181 129F [00] [2] 786A      	JMP	_00118_DS_
182 12A0 [00] [2] 0612      	MVL	HIGHD2(_00144_DS_)
183 12A1 [00] [2] 661A      	MVF	_PCLATH,1,0
184 12A2 [00] [2] 65C9      	MVF	_eSystem_Mode,0,0
185 12A3 [00] [2] 04A7      	ADDL	D2(_00144_DS_)
186 12A4 [00] [2] A82B      	BTSZ	_STATUS,4
187 12A5 [00] [2] 3A1A      	INF	_PCLATH,1,0
188 12A6 [00] [2] 661B      	MVF	_PCLATL,1,0
189                     _00144_DS_:
190 12A7 [00] [2] 7803      	RJ	_00105_DS_
191 12A8 [00] [2] 7831      	RJ	_00111_DS_
192 12A9 [00] [2] 7832      	RJ	_00112_DS_
193 12AA [00] [2] 7858      	RJ	_00113_DS_
194                     _00105_DS_:
195                     ;	;.line	28; ".\Source\App_Sleep.c"	if(eBuzzer_Status == Buzzer_Silent)
196 12AB [00] [1] 0011 6F6A 	TFSZ	_eBuzzer_Status,0
197 12AD [00] [1] 785C      	JMP	_00118_DS_
198                     ;	;.line	31; ".\Source\App_Sleep.c"	if(sButton.Flag_Button_Lift_Transient || Enter_PrepareSleep_Flag)
199 12AE [00] [2] 0012 AD05 	BTSZ	_sButton,6
200 12B0 [00] [2] 7803      	JMP	_00106_DS_
201 12B1 [00] [2] 4D04      	RRF	_Enter_PrepareSleep_Flag,0,0
202 12B2 [00] [2] A02B      	BTSZ	_STATUS,0
203 12B3 [00] [2] 7856      	JMP	_00118_DS_
204                     _00106_DS_:
205                     ;	;.line	33; ".\Source\App_Sleep.c"	Enter_PrepareSleep_Flag = FALSE;
206 12B4 [00] [2] 0D04      	CLRF	_Enter_PrepareSleep_Flag,0
207                     ;	;.line	35; ".\Source\App_Sleep.c"	sButton.Flag_Button_Lift_Once = TRUE;
208 12B5 [00] [2] 9B05      	BSF	_sButton,5
209                     ;	;.line	37; ".\Source\App_Sleep.c"	eSystem_Mode = Sleep;
210 12B6 [00] [2] 0601      	MVL	0x01
211 12B7 [00] [2] 67C9      	MVF	_eSystem_Mode,1,0
212                     ;	;.line	39; ".\Source\App_Sleep.c"	GPIO_Configuration();
213 12B8 [00] [2] C8DB      	CALL	_GPIO_Configuration
214                     	.CHKPARA _GPIO_Configuration 0
215                     ;	;.line	41; ".\Source\App_Sleep.c"	BZ_Disable();
216 12B9 [00] [1] 8E39      	BCF	_WDTCN,7
217                     ;	;.line	43; ".\Source\App_Sleep.c"	TRISC1 |= 0x3C;
218 12BA [00] [1] 063C      	MVL	0x3c
219 12BB [00] [1] 2E54      	IORF	_TRISC1,1,0
220                     ;	;.line	44; ".\Source\App_Sleep.c"	PT1 &= 0xC3;
221 12BC [00] [1] 06C3      	MVL	0xc3
222 12BD [00] [1] 2A53      	ANDF	_PT1,1,0
223                     ;	;.line	45; ".\Source\App_Sleep.c"	TRISC8 |= 0xEF;
224 12BE [00] [1] 06EF      	MVL	0xef
225 12BF [00] [1] 2E6B      	IORF	_TRISC8,1,0
226                     ;	;.line	46; ".\Source\App_Sleep.c"	PT8 &= 0x11;
227 12C0 [00] [1] 0611      	MVL	0x11
228 12C1 [00] [1] 2A6A      	ANDF	_PT8,1,0
229                     ;	;.line	48; ".\Source\App_Sleep.c"	PT1PU &= 0x02;
230 12C2 [00] [1] 0602      	MVL	0x02
231 12C3 [00] [1] 2A56      	ANDF	_PT1PU,1,0
232                     ;	;.line	49; ".\Source\App_Sleep.c"	PT8PU &= 0x00;
233 12C4 [00] [1] 646D      	MVF	_PT8PU,0,0
234 12C5 [00] [1] 0C6D      	CLRF	_PT8PU,0
235                     ;	;.line	51; ".\Source\App_Sleep.c"	sBleStatus.F_Ble_En = FALSE;
236 12C6 [00] [1] 812E      	BCF	_sBleStatus,0
237                     ;	;.line	53; ".\Source\App_Sleep.c"	eBle_Sta = Ble_Disable;
238 12C7 [00] [1] 0602      	MVL	0x02
239 12C8 [00] [1] 672D      	MVF	_eBle_Sta,1,0
240                     ;	;.line	56; ".\Source\App_Sleep.c"	LCDCN1 &= 0x77;
241 12C9 [00] [1] 0677      	MVL	0x77
242 12CA [00] [1] 2B80      	ANDF	_LCDCN1,1,0
243                     ;	;.line	58; ".\Source\App_Sleep.c"	AccuracyModeADCOFF();
244 12CB [00] [1] C001 FA66 	CALL	_AccuracyModeADCOFF
245                     	.CHKPARA _AccuracyModeADCOFF 0
246                     ;	;.line	60; ".\Source\App_Sleep.c"	ADC_Disable();
247 12CD [00] [1] 8E3D      	BCF	_AD1CN0,7
248                     ;	;.line	62; ".\Source\App_Sleep.c"	PWR_LDODisable();
249 12CE [00] [1] 8233      	BCF	_PWRCN,1
250                     ;	;.line	64; ".\Source\App_Sleep.c"	LVD_Disable();
251 12CF [00] [1] 06E1      	MVL	0xe1
252 12D0 [00] [1] 2A43      	ANDF	_LVDCN,1,0
253                     ;	;.line	67; ".\Source\App_Sleep.c"	PWR_BGRDisable();
254 12D1 [00] [1] 8E33      	BCF	_PWRCN,7
255                     ;	;.line	71; ".\Source\App_Sleep.c"	AD1CN5 = 0x60;
256 12D2 [00] [1] 0660      	MVL	0x60
257 12D3 [00] [1] 6642      	MVF	_AD1CN5,1,0
258                     ;	;.line	73; ".\Source\App_Sleep.c"	TMA1Disable();
259 12D4 [00] [1] 8E44      	BCF	_TMA1CN,7
260                     ;	;.line	75; ".\Source\App_Sleep.c"	UART0Disable();
261 12D5 [00] [1] 8E79      	BCF	_UR0CN,7
262                     ;	;.line	78; ".\Source\App_Sleep.c"	INTE0 = 0x82;
263 12D6 [00] [1] 0682      	MVL	0x82
264 12D7 [00] [1] 6623      	MVF	_INTE0,1,0
265                     ;	;.line	79; ".\Source\App_Sleep.c"	INTE1 = 0x00;
266 12D8 [00] [1] 0C24      	CLRF	_INTE1,0
267                     ;	;.line	86; ".\Source\App_Sleep.c"	break;
268 12D9 [00] [1] 7830      	JMP	_00118_DS_
269                     _00111_DS_:
270                     ;	;.line	90; ".\Source\App_Sleep.c"	 ..asm
271 12DA [00] [2] 0002      	SLP
272                     ;	;.line	91; ".\Source\App_Sleep.c"	break;
273 12DB [00] [2] 782E      	JMP	_00118_DS_
274                     _00112_DS_:
275                     ;	;.line	95; ".\Source\App_Sleep.c"	GPIO_Configuration();
276 12DC [00] [2] C8B7      	CALL	_GPIO_Configuration
277                     ;	;.line	101; ".\Source\App_Sleep.c"	PT8PU &= 0x10;
278 12DD [00] [1] 0610      	MVL	0x10
279 12DE [00] [1] 2A6D      	ANDF	_PT8PU,1,0
280                     ;	;.line	103; ".\Source\App_Sleep.c"	PT1PU &= 0xDB;
281 12DF [00] [1] 06DB      	MVL	0xdb
282 12E0 [00] [1] 2A56      	ANDF	_PT1PU,1,0
283                     ;	;.line	106; ".\Source\App_Sleep.c"	TMA1_ClearTMA1();
284 12E1 [00] [1] 0C45      	CLRF	_TMA1R,0
285                     ;	;.line	108; ".\Source\App_Sleep.c"	TMA1Enable();
286 12E2 [00] [1] 9E44      	BSF	_TMA1CN,7
287                     ;	;.line	110; ".\Source\App_Sleep.c"	UART0Enable();
288 12E3 [00] [1] 9E79      	BSF	_UR0CN,7
289                     ;	;.line	112; ".\Source\App_Sleep.c"	ADIF_ClearFlag();
290 12E4 [00] [1] 8A26      	BCF	_INTF0,5
291                     ;	;.line	114; ".\Source\App_Sleep.c"	TA1IF_ClearFlag();
292 12E5 [00] [1] 8E27      	BCF	_INTF1,7
293                     ;	;.line	116; ".\Source\App_Sleep.c"	Param_Init();
294 12E6 [00] [1] CA06      	CALL	_Param_Init
295                     	.CHKPARA _Param_Init 0
296                     ;	;.line	125; ".\Source\App_Sleep.c"	LCD_Clear_Register();
297 12E7 [00] [1] C000 F2B5 	CALL	_LCD_Clear_Register
298                     	.CHKPARA _LCD_Clear_Register 0
299                     ;	;.line	127; ".\Source\App_Sleep.c"	LCD_Configuration();
300 12E9 [00] [1] C001 FB4C 	CALL	_LCD_Configuration
301                     	.CHKPARA _LCD_Configuration 0
302                     ;	;.line	130; ".\Source\App_Sleep.c"	INTE0 = 0xF0;
303 12EB [00] [1] 06F0      	MVL	0xf0
304 12EC [00] [1] 6623      	MVF	_INTE0,1,0
305                     ;	;.line	131; ".\Source\App_Sleep.c"	INTE1 = 0x10;
306 12ED [00] [1] 0610      	MVL	0x10
307 12EE [00] [1] 6624      	MVF	_INTE1,1,0
308                     ;	;.line	134; ".\Source\App_Sleep.c"	LVD_VolSelect(VLDX_26);
309 12EF [00] [1] 6443      	MVF	_LVDCN,0,0
310 12F0 [00] [1] 01E1      	ANDL	0xe1
311 12F1 [00] [1] 020E      	IORL	0x0e
312 12F2 [00] [1] 6643      	MVF	_LVDCN,1,0
313                     ;	;.line	137; ".\Source\App_Sleep.c"	PWR_BGREnable();
314 12F3 [00] [1] 9E33      	BSF	_PWRCN,7
315                     ;	;.line	139; ".\Source\App_Sleep.c"	PWR_LDOPLEnable();
316 12F4 [00] [1] 9842      	BSF	_AD1CN5,4
317                     ;	;.line	141; ".\Source\App_Sleep.c"	PWR_LDOEnable();
318 12F5 [00] [1] 9233      	BSF	_PWRCN,1
319                     ;	;.line	143; ".\Source\App_Sleep.c"	PWR_LDOSel(LDOC_2V4);
320 12F6 [00] [1] 068F      	MVL	0x8f
321 12F7 [00] [1] 2A33      	ANDF	_PWRCN,1,0
322                     ;	;.line	145; ".\Source\App_Sleep.c"	Delay_ms(10);
323 12F8 [00] [1] 060A      	MVL	0x0a
324 12F9 [00] [1] C811      	CALL	_Delay_ms
325                     	.CHKPARA _Delay_ms 1
326                     ;	;.line	147; ".\Source\App_Sleep.c"	AD1CN5 |= 0x80;
327 12FA [00] [1] 9E42      	BSF	_AD1CN5,7
328                     ;	;.line	149; ".\Source\App_Sleep.c"	ADCAccuracyMode();
329 12FB [00] [1] C001 FA6F 	CALL	_ADCAccuracyMode
330                     	.CHKPARA _ADCAccuracyMode 0
331                     ;	;.line	151; ".\Source\App_Sleep.c"	eSystem_Mode = Normal;
332 12FD [00] [1] 0603      	MVL	0x03
333 12FE [00] [2] 0012 67C9 	MVF	_eSystem_Mode,1,0
334                     ;	;.line	153; ".\Source\App_Sleep.c"	eDisplay_Interfaces = Display_PowerOn;
335 1300 [00] [2] 0D33      	CLRF	_eDisplay_Interfaces,0
336                     ;	;.line	155; ".\Source\App_Sleep.c"	eAutoBps_Status = AutoBps_Init;
337 1301 [00] [2] 0DED      	CLRF	_eAutoBps_Status,0
338                     ;	;.line	157; ".\Source\App_Sleep.c"	break;
339 1302 [00] [2] 7807      	JMP	_00118_DS_
340                     _00113_DS_:
341                     ;	;.line	161; ".\Source\App_Sleep.c"	eSystem_Mode = Prepare_Sleep;
342 1303 [00] [2] 0DC9      	CLRF	_eSystem_Mode,0
343                     ;	;.line	163; ".\Source\App_Sleep.c"	if(!Flag_No_Buzzer)
344 1304 [00] [1] 0011 6F6B 	TFSZ	_Flag_No_Buzzer,0
345 1306 [00] [1] 7802      	JMP	_00115_DS_
346                     ;	;.line	166; ".\Source\App_Sleep.c"	eBuzzer_Status = Buzzer_PowerOnOff;
347 1307 [00] [1] 0601      	MVL	0x01
348 1308 [00] [1] 676A      	MVF	_eBuzzer_Status,1,0
349                     _00115_DS_:
350                     ;	;.line	169; ".\Source\App_Sleep.c"	eBacklight_Status = No_Backlight;
351 1309 [00] [1] 0D2B      	CLRF	_eBacklight_Status,0
352                     _00118_DS_:
353                     ;	;.line	173; ".\Source\App_Sleep.c"	}
354 130A [00] [X] 000A      	RET	
355                     ; exit point of _Sleep_Mode
356                     	.ENDFUNC	_Sleep_Mode
357                     ;--------------------------------------------------------
358                     
359                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
360                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
361                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
362                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
363                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
364                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
365                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
366                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
367                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
368                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
369                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
370                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
371                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
372                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
373                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
374                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
375                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
376                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
377                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
378                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
379                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
380                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
381                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
382                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
383                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Sleep$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
384                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Sleep$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
385                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Sleep$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
386                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
387                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
388                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
389                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
390                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
391                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
392                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
393                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
394                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
395                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
396                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
397                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
398                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
399                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
400                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
401                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
402                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
403                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
404                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
405                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
406                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
407                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
408                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
409                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
410                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
411                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
412                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
413                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
414                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
415                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
416                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
417                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
418                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
419                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
420                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
421                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
422                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
423                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
424                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
425                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
426                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
427                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
428                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
429                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
430                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
431                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
432                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
433                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
434                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
435                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
436                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
437                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
438                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
439                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
440                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
441                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
442                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
443                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
444                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
445                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
446                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
447                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
448                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
449                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
450                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
451                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
452                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
453                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
454                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
455                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
456                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
457                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
458                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
459                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
460                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
461                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
462                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
463                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
464                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
465                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
466                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
467                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
468                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
469                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
470                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
471                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
472                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
473                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
474                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
475                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
476                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
477                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
478                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
479                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
480                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
481                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
482                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
483                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
484                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
485                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
486                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
487                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
488                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
489                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
490                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
491                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
492                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
493                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
494                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
495                     	;--cdb--S:LApp_Sleep.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
496                     	;--cdb--S:LApp_Sleep.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
497                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Sleep$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
498                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
499                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Sleep$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
500                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Sleep$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
501                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Sleep$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
502                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
503                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Sleep$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
504                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
505                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
506                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
507                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
508                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
509                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
510                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Sleep$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
511                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Sleep$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
512                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
513                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Sleep$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
514                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
515                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
516                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
517                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
518                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Sleep$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
519                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
520                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
521                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
522                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
523                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Sleep$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
524                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Sleep$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
525                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Sleep$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
526                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Sleep$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
527                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Sleep$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
528                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
529                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Sleep$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
530                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
531                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
532                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Sleep$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
533                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
534                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Sleep$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
535                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
536                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
537                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
538                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
539                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
540                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
541                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
542                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
543                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
544                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
545                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
546                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
547                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
548                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
549                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
550                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
551                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
552                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
553                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
554                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
555                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
556                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
557                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
558                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
559                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
560                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
561                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
562                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
563                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
564                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
565                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
566                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
567                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
568                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
569                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
570                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
571                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
572                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
573                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
574                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
575                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
576                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
577                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
578                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
579                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
580                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
581                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
582                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
583                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
584                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
585                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
586                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
587                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
588                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
589                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
590                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
591                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
592                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
593                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
594                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
595                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
596                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
597                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
598                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
599                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
600                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
601                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
602                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
603                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
604                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
605                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
606                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
607                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
608                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
609                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
610                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
611                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
612                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
613                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
614                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
615                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
616                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
617                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
618                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
619                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
620                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
621                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
622                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
623                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
624                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
625                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
626                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
627                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
628                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
629                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
630                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
631                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
632                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
633                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
634                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
635                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
636                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
637                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
638                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
639                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
640                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
641                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
642                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
643                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
644                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
645                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
646                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
647                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
648                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
649                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
650                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
651                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
652                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
653                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
654                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
655                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
656                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
657                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
658                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
659                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
660                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
661                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
662                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
663                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
664                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
665                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
666                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
667                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
668                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
669                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
670                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
671                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
672                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
673                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
674                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
675                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
676                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
677                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
678                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
679                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
680                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
681                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
682                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
683                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
684                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
685                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
686                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
687                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
688                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
689                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
690                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
691                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
692                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
693                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
694                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
695                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
696                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
697                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
698                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
699                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
700                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
701                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
702                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
703                     	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
704                     ;--------------------------------------------------------
705                     ; external declarations
706                     ;--------------------------------------------------------
707                     	.globl	_LCD_Clear_Register
708                     	.globl	_ADCAccuracyMode
709                     	.globl	_AccuracyModeADCOFF
710                     	.globl	_GPIO_Configuration
711                     	.globl	_Delay_ms
712                     	.globl	_Param_Init
713                     	.globl	_LCD_Configuration
714                     	.globl	_FSR0
715                     	.globl	_FSR1
716                     	.globl	_FSR2
717                     	.globl	_ADCR
718                     	.globl	_sIIC
719                     	.globl	_BIE_Available_Addr
720                     	.globl	_sTIMx
721                     	.globl	_sUARTx
722                     	.globl	_sAutoBps
723                     	.globl	_eAutoBps_Status
724                     	.globl	_sTest
725                     	.globl	_eTempUnit
726                     	.globl	_eBondingTempUnit
727                     	.globl	_eVersionCode
728                     	.globl	_eMeasureMode
729                     	.globl	_eBinding_Status
730                     	.globl	_Enter_PrepareSleep_Flag
731                     	.globl	_sButton
732                     	.globl	_sTimeStamp
733                     	.globl	_eButton_Status
734                     	.globl	_sLVD
735                     	.globl	_UnitExchangeCompleted
736                     	.globl	_ERR
737                     	.globl	_eErr
738                     	.globl	_eDisplay_Interfaces
739                     	.globl	_sADC
740                     	.globl	_eADCChannel
741                     	.globl	_eBuzzer_Status
742                     	.globl	_Flag_No_Buzzer
743                     	.globl	_sMemory
744                     	.globl	_sMemoryFlag
745                     	.globl	_sActual
746                     	.globl	_sForecast
747                     	.globl	_sTempCal
748                     	.globl	_eMeas_Status
749                     	.globl	_sActual_Forecast
750                     	.globl	_eTo_Actual_Ways
751                     	.globl	_eBle_Sta
752                     	.globl	_sBleStatus
753                     	.globl	_eBacklight_Status
754                     	.globl	_sBacklight
755                     	.globl	_NUM_CODE
756                     	.globl	_R_Table
757                     	.globl	_CloseTable
758                     
759                     	.globl STK07
760                     	.globl STK07_SAVE
761                     	.globl STK06
762                     	.globl STK06_SAVE
763                     	.globl STK05
764                     	.globl STK05_SAVE
765                     	.globl STK04
766                     	.globl STK04_SAVE
767                     	.globl STK03
768                     	.globl STK03_SAVE
769                     	.globl STK02
770                     	.globl STK02_SAVE
771                     	.globl STK01
772                     	.globl STK01_SAVE
773                     	.globl STK00
774                     	.globl STK00_SAVE
775                     ;--------------------------------------------------------
776                     ; global -1 declarations
777                     ;--------------------------------------------------------
778                     	.globl	_eSystem_Mode
779                     
780                     	.globl	_memcpy
781                     ;--------------------------------------------------------
782                     ; global -2 definitions
783                     ;--------------------------------------------------------
784                     	.area DSEG(DATA)
785 02C9 --             _eSystem_Mode:	.ds	1
786                     
787                     	.area DSEG(DATA)
788                     __SWTGTID	.equ	0xA6A6B2CF
789                     
790                     	.area DSEG(DATA)
791                     _INDF0	.equ	0x0
792                     
793                     	.area DSEG(DATA)
794                     _POINC0	.equ	0x1
795                     
796                     	.area DSEG(DATA)
797                     _PODEC0	.equ	0x2
798                     
799                     	.area DSEG(DATA)
800                     _PRINC0	.equ	0x3
801                     
802                     	.area DSEG(DATA)
803                     _PLUSW0	.equ	0x4
804                     
805                     	.area DSEG(DATA)
806                     _INDF1	.equ	0x5
807                     
808                     	.area DSEG(DATA)
809                     _POINC1	.equ	0x6
810                     
811                     	.area DSEG(DATA)
812                     _PODEC1	.equ	0x7
813                     
814                     	.area DSEG(DATA)
815                     _PRINC1	.equ	0x8
816                     
817                     	.area DSEG(DATA)
818                     _PLUSW1	.equ	0x9
819                     
820                     	.area DSEG(DATA)
821                     _INDF2	.equ	0xA
822                     
823                     	.area DSEG(DATA)
824                     _POINC2	.equ	0xB
825                     
826                     	.area DSEG(DATA)
827                     _PODEC2	.equ	0xC
828                     
829                     	.area DSEG(DATA)
830                     _PRINC2	.equ	0xD
831                     
832                     	.area DSEG(DATA)
833                     _PLUSW2	.equ	0xE
834                     
835                     	.area DSEG(DATA)
836                     _FSR0H	.equ	0xF
837                     
838                     	.area DSEG(DATA)
839                     _FSR0L	.equ	0x10
840                     
841                     	.area DSEG(DATA)
842                     _FSR1H	.equ	0x11
843                     
844                     	.area DSEG(DATA)
845                     _FSR1L	.equ	0x12
846                     
847                     	.area DSEG(DATA)
848                     _FSR2H	.equ	0x13
849                     
850                     	.area DSEG(DATA)
851                     _FSR2L	.equ	0x14
852                     
853                     	.area DSEG(DATA)
854                     _TOSH	.equ	0x16
855                     
856                     	.area DSEG(DATA)
857                     _TOSL	.equ	0x17
858                     
859                     	.area DSEG(DATA)
860                     _SKCN	.equ	0x18
861                     
862                     	.area DSEG(DATA)
863                     _PCLATH	.equ	0x1A
864                     
865                     	.area DSEG(DATA)
866                     _PCLATL	.equ	0x1B
867                     
868                     	.area DSEG(DATA)
869                     _TBLPTRH	.equ	0x1D
870                     
871                     	.area DSEG(DATA)
872                     _TBLPTRL	.equ	0x1E
873                     
874                     	.area DSEG(DATA)
875                     _TBLDH	.equ	0x1F
876                     
877                     	.area DSEG(DATA)
878                     _TBLDL	.equ	0x20
879                     
880                     	.area DSEG(DATA)
881                     _PRODH	.equ	0x21
882                     
883                     	.area DSEG(DATA)
884                     _PRODL	.equ	0x22
885                     
886                     	.area DSEG(DATA)
887                     _INTE0	.equ	0x23
888                     
889                     	.area DSEG(DATA)
890                     _INTE1	.equ	0x24
891                     
892                     	.area DSEG(DATA)
893                     _INTE2	.equ	0x25
894                     
895                     	.area DSEG(DATA)
896                     _INTF0	.equ	0x26
897                     
898                     	.area DSEG(DATA)
899                     _INTF1	.equ	0x27
900                     
901                     	.area DSEG(DATA)
902                     _INTF2	.equ	0x28
903                     
904                     	.area DSEG(DATA)
905                     _WREG	.equ	0x29
906                     
907                     	.area DSEG(DATA)
908                     _BSRCN	.equ	0x2A
909                     
910                     	.area DSEG(DATA)
911                     _STATUS	.equ	0x2B
912                     
913                     	.area DSEG(DATA)
914                     _MSTAT	.equ	0x2B
915                     
916                     	.area DSEG(DATA)
917                     _PSTAT	.equ	0x2C
918                     
919                     	.area DSEG(DATA)
920                     _BIECN	.equ	0x2E
921                     
922                     	.area DSEG(DATA)
923                     _BIEARH	.equ	0x2F
924                     
925                     	.area DSEG(DATA)
926                     _BIEARL	.equ	0x30
927                     
928                     	.area DSEG(DATA)
929                     _BIEDRH	.equ	0x31
930                     
931                     	.area DSEG(DATA)
932                     _BIEDRL	.equ	0x32
933                     
934                     	.area DSEG(DATA)
935                     _PWRCN	.equ	0x33
936                     
937                     	.area DSEG(DATA)
938                     _OSCCN0	.equ	0x34
939                     
940                     	.area DSEG(DATA)
941                     _OSCCN1	.equ	0x35
942                     
943                     	.area DSEG(DATA)
944                     _OSCCN2	.equ	0x36
945                     
946                     	.area DSEG(DATA)
947                     _CSFCN0	.equ	0x37
948                     
949                     	.area DSEG(DATA)
950                     _CSFCN1	.equ	0x38
951                     
952                     	.area DSEG(DATA)
953                     _WDTCN	.equ	0x39
954                     
955                     	.area DSEG(DATA)
956                     _AD1H	.equ	0x3A
957                     
958                     	.area DSEG(DATA)
959                     _AD1M	.equ	0x3B
960                     
961                     	.area DSEG(DATA)
962                     _AD1L	.equ	0x3C
963                     
964                     	.area DSEG(DATA)
965                     _AD1CN0	.equ	0x3D
966                     
967                     	.area DSEG(DATA)
968                     _AD1CN1	.equ	0x3E
969                     
970                     	.area DSEG(DATA)
971                     _AD1CN2	.equ	0x3F
972                     
973                     	.area DSEG(DATA)
974                     _AD1CN3	.equ	0x40
975                     
976                     	.area DSEG(DATA)
977                     _AD1CN4	.equ	0x41
978                     
979                     	.area DSEG(DATA)
980                     _AD1CN5	.equ	0x42
981                     
982                     	.area DSEG(DATA)
983                     _LVDCN	.equ	0x43
984                     
985                     	.area DSEG(DATA)
986                     _TMA1CN	.equ	0x44
987                     
988                     	.area DSEG(DATA)
989                     _TMA1R	.equ	0x45
990                     
991                     	.area DSEG(DATA)
992                     _TMA1C	.equ	0x46
993                     
994                     	.area DSEG(DATA)
995                     _TB1FLAG	.equ	0x47
996                     
997                     	.area DSEG(DATA)
998                     _TB1CN0	.equ	0x48
999                     
1000                     	.area DSEG(DATA)
1001                     _TB1CN1	.equ	0x49
1002                     
1003                     	.area DSEG(DATA)
1004                     _TB1RH	.equ	0x4A
1005                     
1006                     	.area DSEG(DATA)
1007                     _TB1RL	.equ	0x4B
1008                     
1009                     	.area DSEG(DATA)
1010                     _TB1C0H	.equ	0x4C
1011                     
1012                     	.area DSEG(DATA)
1013                     _TB1C0L	.equ	0x4D
1014                     
1015                     	.area DSEG(DATA)
1016                     _TB1C1H	.equ	0x4E
1017                     
1018                     	.area DSEG(DATA)
1019                     _TB1C1L	.equ	0x4F
1020                     
1021                     	.area DSEG(DATA)
1022                     _TB1C2H	.equ	0x50
1023                     
1024                     	.area DSEG(DATA)
1025                     _TB1C2L	.equ	0x51
1026                     
1027                     	.area DSEG(DATA)
1028                     _TC1CN0	.equ	0x52
1029                     
1030                     	.area DSEG(DATA)
1031                     _PT1	.equ	0x53
1032                     
1033                     	.area DSEG(DATA)
1034                     _TRISC1	.equ	0x54
1035                     
1036                     	.area DSEG(DATA)
1037                     _PT1DA	.equ	0x55
1038                     
1039                     	.area DSEG(DATA)
1040                     _PT1PU	.equ	0x56
1041                     
1042                     	.area DSEG(DATA)
1043                     _PT1M1	.equ	0x57
1044                     
1045                     	.area DSEG(DATA)
1046                     _PT1INT	.equ	0x58
1047                     
1048                     	.area DSEG(DATA)
1049                     _PT1INTE	.equ	0x59
1050                     
1051                     	.area DSEG(DATA)
1052                     _PT1INTF	.equ	0x5A
1053                     
1054                     	.area DSEG(DATA)
1055                     _PT2	.equ	0x5B
1056                     
1057                     	.area DSEG(DATA)
1058                     _TRISC2	.equ	0x5C
1059                     
1060                     	.area DSEG(DATA)
1061                     _PT2DA	.equ	0x5D
1062                     
1063                     	.area DSEG(DATA)
1064                     _PT2PU	.equ	0x5E
1065                     
1066                     	.area DSEG(DATA)
1067                     _PT2INT	.equ	0x5F
1068                     
1069                     	.area DSEG(DATA)
1070                     _PT2INTE	.equ	0x60
1071                     
1072                     	.area DSEG(DATA)
1073                     _PT2INTF	.equ	0x61
1074                     
1075                     	.area DSEG(DATA)
1076                     _PT6	.equ	0x62
1077                     
1078                     	.area DSEG(DATA)
1079                     _TRISC6	.equ	0x63
1080                     
1081                     	.area DSEG(DATA)
1082                     _PT6DA	.equ	0x64
1083                     
1084                     	.area DSEG(DATA)
1085                     _PT6PU	.equ	0x65
1086                     
1087                     	.area DSEG(DATA)
1088                     _PT7	.equ	0x66
1089                     
1090                     	.area DSEG(DATA)
1091                     _TRISC7	.equ	0x67
1092                     
1093                     	.area DSEG(DATA)
1094                     _PT7DA	.equ	0x68
1095                     
1096                     	.area DSEG(DATA)
1097                     _PT7PU	.equ	0x69
1098                     
1099                     	.area DSEG(DATA)
1100                     _PT8	.equ	0x6A
1101                     
1102                     	.area DSEG(DATA)
1103                     _TRISC8	.equ	0x6B
1104                     
1105                     	.area DSEG(DATA)
1106                     _PT8DA	.equ	0x6C
1107                     
1108                     	.area DSEG(DATA)
1109                     _PT8PU	.equ	0x6D
1110                     
1111                     	.area DSEG(DATA)
1112                     _SSPCN0	.equ	0x6E
1113                     
1114                     	.area DSEG(DATA)
1115                     _SSPSTA0	.equ	0x6F
1116                     
1117                     	.area DSEG(DATA)
1118                     _SSPBUF0	.equ	0x70
1119                     
1120                     	.area DSEG(DATA)
1121                     _CFG0	.equ	0x71
1122                     
1123                     	.area DSEG(DATA)
1124                     _ACT0	.equ	0x72
1125                     
1126                     	.area DSEG(DATA)
1127                     _STA0	.equ	0x73
1128                     
1129                     	.area DSEG(DATA)
1130                     _CRG0	.equ	0x74
1131                     
1132                     	.area DSEG(DATA)
1133                     _TOC0	.equ	0x75
1134                     
1135                     	.area DSEG(DATA)
1136                     _RDB0	.equ	0x76
1137                     
1138                     	.area DSEG(DATA)
1139                     _TDB0	.equ	0x77
1140                     
1141                     	.area DSEG(DATA)
1142                     _SID0	.equ	0x78
1143                     
1144                     	.area DSEG(DATA)
1145                     _UR0CN	.equ	0x79
1146                     
1147                     	.area DSEG(DATA)
1148                     _UR0STA	.equ	0x7A
1149                     
1150                     	.area DSEG(DATA)
1151                     _BA0CN	.equ	0x7B
1152                     
1153                     	.area DSEG(DATA)
1154                     _BG0RH	.equ	0x7C
1155                     
1156                     	.area DSEG(DATA)
1157                     _BG0RL	.equ	0x7D
1158                     
1159                     	.area DSEG(DATA)
1160                     _TX0R	.equ	0x7E
1161                     
1162                     	.area DSEG(DATA)
1163                     _RC0REG	.equ	0x7F
1164                     
1165                     	.area DSEG(DATA)
1166                     _LCDCN1	.equ	0x180
1167                     
1168                     	.area DSEG(DATA)
1169                     _LCDCN2	.equ	0x181
1170                     
1171                     	.area DSEG(DATA)
1172                     _LCDCN3	.equ	0x182
1173                     
1174                     	.area DSEG(DATA)
1175                     _LCDCN4	.equ	0x183
1176                     
1177                     	.area DSEG(DATA)
1178                     _LCDCN5	.equ	0x184
1179                     
1180                     	.area DSEG(DATA)
1181                     _LCDCN6	.equ	0x185
1182                     
1183                     	.area DSEG(DATA)
1184                     _LCDCN7	.equ	0x186
1185                     
1186                     	.area DSEG(DATA)
1187                     _LCDCN8	.equ	0x187
1188                     
1189                     	.area DSEG(DATA)
1190                     _LCD0	.equ	0x188
1191                     
1192                     	.area DSEG(DATA)
1193                     _LCD1	.equ	0x189
1194                     
1195                     	.area DSEG(DATA)
1196                     _LCD2	.equ	0x18A
1197                     
1198                     	.area DSEG(DATA)
1199                     _LCD3	.equ	0x18B
1200                     
1201                     	.area DSEG(DATA)
1202                     _LCD4	.equ	0x18C
1203                     
1204                     	.area DSEG(DATA)
1205                     _LCD5	.equ	0x18D
1206                     
1207                     	.area DSEG(DATA)
1208                     _LCD6	.equ	0x18E
1209                     
1210                     	.area DSEG(DATA)
1211                     _LCD7	.equ	0x18F
1212                     
1213                     	.area DSEG(DATA)
1214                     _LCD8	.equ	0x190
1215                     
1216                     	.area DSEG(DATA)
1217                     _LCD9	.equ	0x191
1218                     
1219                     	.area DSEG(DATA)
1220                     _UR2CN	.equ	0x192
1221                     
1222                     	.area DSEG(DATA)
1223                     _UR2STA	.equ	0x193
1224                     
1225                     	.area DSEG(DATA)
1226                     _BA2CN	.equ	0x194
1227                     
1228                     	.area DSEG(DATA)
1229                     _BG2RH	.equ	0x195
1230                     
1231                     	.area DSEG(DATA)
1232                     _BG2RL	.equ	0x196
1233                     
1234                     	.area DSEG(DATA)
1235                     _TX2R	.equ	0x197
1236                     
1237                     	.area DSEG(DATA)
1238                     _RC2REG	.equ	0x198
1239                     
1240                     	.area DSEG(DATA)
1241                     _TMA2R	.equ	0x1E8
1242                     
1243                     	.area DSEG(DATA)
1244                     _TMA2C	.equ	0x1E9
1245                     
1246                     	.area DSEG(DATA)
1247                     _LEDCN	.equ	0x1EA
1248                     
1249                     	.area DSEG(DATA)
1250                     _IQ0	.equ	0x1EB
1251                     
1252                     	.area DSEG(DATA)
1253                     _IQ1	.equ	0x1EC
1254                     
1255                     	.area DSEG(DATA)
1256                     _DGCON1	.equ	0x1ED
1257                     
1258                     	.area DSEG(DATA)
1259                     _DGCON2	.equ	0x1EE
1260                     
1261                     	.area DSEG(DATA)
1262                     _ADCRH	.equ	0x3A
1263                     
1264                     	.area DSEG(DATA)
1265                     _ADCRM	.equ	0x3B
1266                     
1267                     	.area DSEG(DATA)
1268                     _ADCRL	.equ	0x3C
1269                     
1270                     	.area DSEG(DATA)
1271                     _TEMDATA	.equ	0x2E0
1272                     
1273                     ;--------------------------------------------------------
1274                     ; absolute symbol definitions
1275                     ;--------------------------------------------------------
1276                     ;--------------------------------------------------------
1277                     ; compiler-defined variables
1278                     ;--------------------------------------------------------
1279                     	.area IDATA (DATA,REL,CON); pre-def
1280                     	.area IDATAROM (CODE,REL,CON); pre-def
1281                     	.area UDATA (DATA,REL,CON); pre-def
1282                     ;--------------------------------------------------------
1283                     ; initialized data
1284                     ;--------------------------------------------------------
1285                     ;--------------------------------------------------------
1286                     ; initialized data - mirror
1287                     ;--------------------------------------------------------
1288                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Sleep$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1289                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Sleep$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1290                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1291                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1292                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1293                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1294                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1295                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1296                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1297                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1298                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1299                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1300                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1301                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1302                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1303                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1304                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1305                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1306                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1307                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1308                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1309                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1310                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1311                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1312                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1313                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1314                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1315                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1316                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1317                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1318                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1319                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1320                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1321                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1322                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1323                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1324                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1325                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1326                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1327                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1328                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1329                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1330                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1331                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1332                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1333                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1334                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1335                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1336                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1337                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1338                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1339                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1340                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1341                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1342                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1343                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1344                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1345                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1346                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1347                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1348                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1349                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1350                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1351                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1352                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1353                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1354                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1355                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1356                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1357                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1358                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1359                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1360                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1361                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1362                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1363                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1364                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1365                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1366                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1367                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1368                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1369                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1370                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1371                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1372                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1373                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1374                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1375                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1376                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1377                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1378                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1379                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1380                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1381                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Sleep$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1382                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1383                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1384                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1385                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Sleep$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1386                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1387                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1388                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Sleep$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1389                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Sleep$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1390                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Sleep$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1391                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1392                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1393                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Sleep$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1394                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Sleep$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1395                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Sleep$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1396                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Sleep$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1397                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Sleep$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1398                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1399                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1400                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1401                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1402                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1403                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1404                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1405                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1406                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1407                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1408                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1409                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1410                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1411                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1412                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1413                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1414                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1415                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1416                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1417                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1418                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1419                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1420                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1421                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1422                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1423                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1424                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1425                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1426                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1427                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Sleep$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1428                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1429                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1430                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Sleep$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1431                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Sleep$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1432                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1433                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Sleep$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1434                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1435                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1436                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1437                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1438                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1439                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1440                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1441                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1442                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1443                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1444                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1445                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1446                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1447                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1448                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1449                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1450                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1451                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1452                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1453                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1454                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1455                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1456                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1457                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1458                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1459                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1460                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1461                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1462                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1463                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1464                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1465                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1466                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1467                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1468                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1469                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1470                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1471                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1472                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1473                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1474                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1475                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1476                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1477                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1478                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1479                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1480                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1481                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1482                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1483                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1484                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1485                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1486                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1487                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1488                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1489                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1490                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1491                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1492                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1493                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1494                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1495                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1496                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1497                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1498                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1499                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1500                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1501                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1502                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1503                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1504                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1505                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1506                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1507                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1508                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1509                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1510                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1511                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1512                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1513                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1514                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1515                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1516                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1517                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1518                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1519                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1520                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1521                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Sleep$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1522                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Sleep$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1523                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Sleep$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1524                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1525                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1526                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Sleep$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1527                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1528                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1529                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1530                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1531                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1532                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1533                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1534                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1535                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1536                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1537                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1538                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1539                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1540                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1541                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1542                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1543                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1544                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1545                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1546                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1547                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1548                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1549                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1550                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1551                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1552                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1553                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1554                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1555                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1556                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1557                     	;Following is optimization info, 
1558                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1559                     	;--cdb--W:r0x1093:NULL+0:-1:0
1560                     	;--cdb--W:r0x1094:NULL+0:-1:0
1561                     	;--cdb--W:r0x1093:NULL+0:-1:1
1562                     	;--cdb--W:r0x1094:NULL+0:-1:1
1563                     	END
