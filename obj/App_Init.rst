001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_Init.c"
009                     	.module App_Init
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Init$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Init$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Init$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Init$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Init$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Init$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Init$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Init$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Init$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Init$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Init$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Init$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Init$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Init$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Init$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Init$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Init$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Init$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Init$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Init$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Init:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Init$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Init$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Init$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
130                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
132                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
138                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
141                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
150                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
152                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
153                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
154                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
155                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
156                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
157                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
158                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
160                     	;--cdb--F:App_Init:G$Param_Init$0$0({2}DF,SV:S),C,0,0,0,0,0
161                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
162                     	;--cdb--F:App_Init:G$BIE_Init$0$0({2}DF,SV:S),C,0,0,0,0,0
163                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
164                     	;--cdb--F:App_Init:G$Binding_Init$0$0({2}DF,SV:S),C,0,0,0,0,0
165                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
166                     	;--cdb--F:App_Init:G$E2_Init$0$0({2}DF,SV:S),C,0,0,0,0,0
167                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
168                     	;--cdb--F:App_Init:G$System_Init$0$0({2}DF,SV:S),C,0,0,0,0,0
169                     ;--------------------------------------------------------
170                     ; overlayable items in internal ram 
171                     ;--------------------------------------------------------
172                     ;	udata_ovr
173                     .area CCODE (code,REL,CON) ; App_Init-code 
174                     .globl _System_Init
175                     
176                     ;--------------------------------------------------------
177                     	.FUNC _System_Init:$r:0:0:$C:_GPIO_Configuration:$C:_CLK_Configuration:$C:_PWR_Configuration:$C:_LVD_Configuration\
178                     :$C:_TMA1_Configuration:$C:_BZ_Configuration:$C:_ADC_Configuration:$C:_WDT_Configuration:$C:_BIE_Init\
179                     :$C:_Binding_Init\
180                     
181                     ;--------------------------------------------------------
182                     ;	;.line	430; ".\Source\App_Init.c"	PWRCN = 0x01;
183                     _System_Init:	;Function start
184 03BE [00] [X] 0601      	MVL	0x01
185 03BF [00] [X] 6633      	MVF	_PWRCN,1,0
186                     ;	;.line	432; ".\Source\App_Init.c"	CSFCN1 = 0x00;
187 03C0 [00] [X] 0C38      	CLRF	_CSFCN1,0
188                     ;	;.line	435; ".\Source\App_Init.c"	Enter_PrepareSleep_Flag = TRUE;
189 03C1 [00] [2] 0012 6704 	MVF	_Enter_PrepareSleep_Flag,1,0
190                     ;	;.line	438; ".\Source\App_Init.c"	eSystem_Mode = Prepare_Sleep;
191 03C3 [00] [2] 0DC9      	CLRF	_eSystem_Mode,0
192                     ;	;.line	441; ".\Source\App_Init.c"	eDisplay_Interfaces = Display_SleepMode;
193 03C4 [00] [2] 0612      	MVL	0x12
194 03C5 [00] [2] 6733      	MVF	_eDisplay_Interfaces,1,0
195                     ;	;.line	444; ".\Source\App_Init.c"	GPIO_Configuration();
196 03C6 [00] [2] C001 F394 	CALL	_GPIO_Configuration
197                     	.CHKPARA _GPIO_Configuration 0
198                     ;	;.line	447; ".\Source\App_Init.c"	CLK_Configuration();
199 03C8 [00] [1] C001 F389 	CALL	_CLK_Configuration
200                     	.CHKPARA _CLK_Configuration 0
201                     ;	;.line	450; ".\Source\App_Init.c"	PWR_Configuration();
202 03CA [00] [1] C001 F473 	CALL	_PWR_Configuration
203                     	.CHKPARA _PWR_Configuration 0
204                     ;	;.line	453; ".\Source\App_Init.c"	LVD_Configuration();
205 03CC [00] [1] C001 F46D 	CALL	_LVD_Configuration
206                     	.CHKPARA _LVD_Configuration 0
207                     ;	;.line	456; ".\Source\App_Init.c"	TMA1_Configuration();
208 03CE [00] [1] C001 F479 	CALL	_TMA1_Configuration
209                     	.CHKPARA _TMA1_Configuration 0
210                     ;	;.line	459; ".\Source\App_Init.c"	BZ_Configuration();
211 03D0 [00] [1] C001 F387 	CALL	_BZ_Configuration
212                     	.CHKPARA _BZ_Configuration 0
213                     ;	;.line	462; ".\Source\App_Init.c"	ADC_Configuration();
214 03D2 [00] [1] C001 F339 	CALL	_ADC_Configuration
215                     	.CHKPARA _ADC_Configuration 0
216                     ;	;.line	476; ".\Source\App_Init.c"	WDT_Configuration();
217 03D4 [00] [1] CCE1      	CALL	_WDT_Configuration
218                     	.CHKPARA _WDT_Configuration 0
219                     ;	;.line	479; ".\Source\App_Init.c"	BIE_Init();
220 03D5 [00] [1] C001 F31D 	CALL	_BIE_Init
221                     	.CHKPARA _BIE_Init 0
222                     ;	;.line	482; ".\Source\App_Init.c"	Binding_Init();
223 03D7 [00] [2] 7E19      	CALL	_Binding_Init
224                     	.CHKPARA _Binding_Init 0
225                     ;	;.line	490; ".\Source\App_Init.c"	}
226                     	RET	
227                     ; exit point of _System_Init
228                     	.ENDFUNC	_System_Init
229                     ;--------------------------------------------------------
230                     
231                     .globl _E2_Init
232                     
233                     ;--------------------------------------------------------
234                     	.FUNC _E2_Init:$r:0:0:$C:_I2C_ReadByte\
235                     :$L:r0x10AE:$L:r0x10AF:$L:r0x10B0:$L:r0x10B1
236                     ;--------------------------------------------------------
237                     ;	;.line	379; ".\Source\App_Init.c"	sMemory.HeadNo = I2C_ReadByte(E2_HeadNo_Addr);
238                     _E2_Init:	;Function start
239                     	MVL	0x01
240                     	CALL	_I2C_ReadByte
241                     	.CHKPARA _I2C_ReadByte 1
242                     	MVF	(_sMemory + 0),1,0
243                     ;	;.line	381; ".\Source\App_Init.c"	if(sMemory.HeadNo == 0xFF)
244                     	INSZ	_WREG,0,0
245                     	JMP	_00153_DS_
246                     ;	;.line	383; ".\Source\App_Init.c"	sMemory.HeadNo = 0;
247                     	LDPR	(_sMemory + 0),0x00
248                     	CLRF	_INDF0,0
249                     _00153_DS_:
250                     ;	;.line	387; ".\Source\App_Init.c"	sMemory.pMemTempBuf = I2C_ReadByte(E2_pMemTempBuf_Addr);
251                     	MVL	0x02
252                     	CALL	_I2C_ReadByte
253                     	MVF	(_sMemory + 1),1,0
254                     ;	;.line	389; ".\Source\App_Init.c"	if(sMemory.pMemTempBuf == 0xFF)
255                     	INSUZ	_WREG,0,0
256                     ;	;.line	391; ".\Source\App_Init.c"	sMemory.pMemTempBuf = 0;
257                     	CLRF	(_sMemory + 1),0
258                     ;	;.line	395; ".\Source\App_Init.c"	sMemory.MemTempSum = I2C_ReadByte(E2_MemTempSum_Addr);
259                     	MVL	0x03
260                     	CALL	_I2C_ReadByte
261                     	MVF	(_sMemory + 2),1,0
262                     ;	;.line	397; ".\Source\App_Init.c"	if(sMemory.MemTempSum == 0xFF)
263                     	INSZ	_WREG,0,0
264                     	JMP	_00160_DS_
265                     ;	;.line	399; ".\Source\App_Init.c"	sMemory.MemTempSum = 0;
266                     	CLRF	(_sMemory + 2),0
267                     	JMP	_00165_DS_
268                     _00160_DS_:
269                     ;	;.line	404; ".\Source\App_Init.c"	if(sMemory.MemTempSum > MemTempNum)
270                     	MVL	0x0a
271                     	CPSG	(_sMemory + 2),0
272                     	JMP	_00157_DS_
273                     ;	;.line	406; ".\Source\App_Init.c"	sMemory.MemTempSum = MemTempNum;
274                     	MVL	0x0a
275                     	MVF	(_sMemory + 2),1,0
276                     _00157_DS_:
277                     ;	;.line	409; ".\Source\App_Init.c"	for(i = 0;i < sMemory.MemTempSum;i++)
278                     	CLRF	r0x10AE,0
279                     _00163_DS_:
280                     	MVF	(_sMemory + 2),0,0
281                     	CPSL	r0x10AE,0
282                     	JMP	_00165_DS_
283                     ;	;.line	411; ".\Source\App_Init.c"	addr = E2_MemTempBuf_Addr + i * 2;
284                     	MVF	r0x10AE,0,0
285                     	MULL	0x02
286                     	MVF	_PRODL,0,0
287                     	ADDL	0x04
288                     ;	;.line	412; ".\Source\App_Init.c"	DH = I2C_ReadByte(addr);
289                     	CALL	_I2C_ReadByte
290                     	MVF	r0x10AF,1,0
291                     ;	;.line	414; ".\Source\App_Init.c"	addr = E2_MemTempBuf_Addr + i * 2 + 1;
292                     	MVF	_PRODL,0,0
293                     	ADDL	0x05
294                     ;	;.line	415; ".\Source\App_Init.c"	DL = I2C_ReadByte(addr);
295                     	CALL	_I2C_ReadByte
296                     	MVF	r0x10B0,1,0
297                     ;	;.line	417; ".\Source\App_Init.c"	sMemory.MemTempBuf[i] = (DH << 8) + DL;
298                     	MVF	r0x10AE,0,0
299                     	MULL	0x02
300                     	MVF	_PRODL,0,0
301                     	ADDL	(_sMemory + 3)
302                     	MVF	r0x10B1,1,0
303                     	MVL	high (_sMemory + 3)
304                     	BTSZ	_STATUS,4
305                     	ADDL	0x01
306                     	MVSF	r0x10B1,_FSR0L
307                     	MVF	_FSR0H,1,0
308                     	MVF	r0x10B0,0,0
309                     	MVF	_POINC0,1,0
310                     	MVF	r0x10AF,0,0
311                     	MVF	_INDF0,1,0
312                     ;	;.line	409; ".\Source\App_Init.c"	for(i = 0;i < sMemory.MemTempSum;i++)
313                     	INF	r0x10AE,1,0
314                     	JMP	_00163_DS_
315                     _00165_DS_:
316                     ;	;.line	420; ".\Source\App_Init.c"	}
317                     	RET	
318                     ; exit point of _E2_Init
319                     	.ENDFUNC	_E2_Init
320                     ;--------------------------------------------------------
321                     
322                     .globl _Binding_Init
323                     
324                     ;--------------------------------------------------------
325                     	.FUNC _Binding_Init:$r:0:0:$L:r0x10AB
326                     ;--------------------------------------------------------
327                     ;	;.line	274; ".\Source\App_Init.c"	tmp = PT1 &  0x24;
328 01F1 [00] [2] C481      _Binding_Init:	;Function start
329 01F2 [01] [2] 6453      	MVF	_PT1,0,0
330 01F3 [01] [2] 0124      	ANDL	0x24
331 01F4 [01] [2] 6680      	MVF	r0x10AB,1,0
332                     ;	;.line	276; ".\Source\App_Init.c"	if(tmp== 0x24)
333 01F5 [01] [2] 0324      	XORL	0x24
334 01F6 [01] [2] B02B      	BTSS	_STATUS,0
335 01F7 [01] [2] 7807      	JMP	_00129_DS_
336                     ;	;.line	279; ".\Source\App_Init.c"	eBinding_Status = CentigradeFirst_Switchable;
337 01F8 [01] [2] 0D03      	CLRF	_eBinding_Status,0
338                     ;	;.line	281; ".\Source\App_Init.c"	eTempUnit = Centigrade;
339 01F9 [01] [2] 065A      	MVL	0x5a
340 01FA [00] [1] 0011 677F 	MVF	_eTempUnit,1,0
341                     ;	;.line	283; ".\Source\App_Init.c"	eBondingTempUnit = Centigrade;
342 01FC [00] [2] 0012 6700 	MVF	_eBondingTempUnit,1,0
343 01FE [01] [2] 781F      	JMP	_00130_DS_
344                     _00129_DS_:
345                     ;	;.line	285; ".\Source\App_Init.c"	else if(tmp == 0x20)
346 01FF [01] [2] 0620      	MVL	0x20
347 0200 [01] [2] 6C80      	CPSE	r0x10AB,0
348 0201 [01] [2] 7808      	JMP	_00126_DS_
349                     ;	;.line	288; ".\Source\App_Init.c"	eBinding_Status = CentigradeFirst_NonSwitchable;
350 0202 [01] [2] 0601      	MVL	0x01
351 0203 [01] [2] 6703      	MVF	_eBinding_Status,1,0
352                     ;	;.line	290; ".\Source\App_Init.c"	eTempUnit = Centigrade;
353 0204 [01] [2] 065A      	MVL	0x5a
354 0205 [00] [1] 0011 677F 	MVF	_eTempUnit,1,0
355                     ;	;.line	292; ".\Source\App_Init.c"	eBondingTempUnit = Centigrade;
356 0207 [00] [2] 0012 6700 	MVF	_eBondingTempUnit,1,0
357 0209 [01] [2] 7814      	JMP	_00130_DS_
358                     _00126_DS_:
359                     ;	;.line	294; ".\Source\App_Init.c"	else if(tmp == 0x04)
360 020A [01] [2] 0604      	MVL	0x04
361 020B [01] [2] 6C80      	CPSE	r0x10AB,0
362 020C [01] [2] 7808      	JMP	_00123_DS_
363                     ;	;.line	297; ".\Source\App_Init.c"	eBinding_Status = FahrenheitFirst_Switchable;
364 020D [01] [2] 0602      	MVL	0x02
365 020E [01] [2] 6703      	MVF	_eBinding_Status,1,0
366                     ;	;.line	299; ".\Source\App_Init.c"	eTempUnit = Fahrenheit;
367 020F [01] [2] 06A5      	MVL	0xa5
368 0210 [00] [1] 0011 677F 	MVF	_eTempUnit,1,0
369                     ;	;.line	301; ".\Source\App_Init.c"	eBondingTempUnit = Fahrenheit;
370 0212 [00] [2] 0012 6700 	MVF	_eBondingTempUnit,1,0
371 0214 [01] [2] 7809      	JMP	_00130_DS_
372                     _00123_DS_:
373                     ;	;.line	303; ".\Source\App_Init.c"	else if(tmp == 0x00)
374 0215 [01] [2] 6E80      	TFSZ	r0x10AB,0
375 0216 [01] [2] 7807      	JMP	_00130_DS_
376                     ;	;.line	306; ".\Source\App_Init.c"	eBinding_Status = FahrenheitFirst_NonSwitchable;
377 0217 [01] [2] 0603      	MVL	0x03
378 0218 [01] [2] 6703      	MVF	_eBinding_Status,1,0
379                     ;	;.line	308; ".\Source\App_Init.c"	eTempUnit = Fahrenheit;
380 0219 [01] [2] 06A5      	MVL	0xa5
381 021A [00] [1] 0011 677F 	MVF	_eTempUnit,1,0
382                     ;	;.line	310; ".\Source\App_Init.c"	eBondingTempUnit = Fahrenheit;
383 021C [00] [2] 0012 6700 	MVF	_eBondingTempUnit,1,0
384                     _00130_DS_:
385                     ;	;.line	322; ".\Source\App_Init.c"	tmp = PT8 & 0xC0;
386 021E [01] [2] 646A      	MVF	_PT8,0,0
387 021F [01] [2] 01C0      	ANDL	0xc0
388 0220 [01] [2] 6680      	MVF	r0x10AB,1,0
389                     ;	;.line	324; ".\Source\App_Init.c"	if(tmp == 0xC0)
390 0221 [01] [2] 03C0      	XORL	0xc0
391 0222 [01] [2] B02B      	BTSS	_STATUS,0
392 0223 [01] [2] 7803      	JMP	_00140_DS_
393                     ;	;.line	328; ".\Source\App_Init.c"	sActual.StableTime = 4;
394 0224 [01] [2] 0604      	MVL	0x04
395 0225 [01] [2] 6772      	MVF	(_sActual + 1),1,0
396 0226 [01] [2] 7810      	JMP	_00141_DS_
397                     _00140_DS_:
398                     ;	;.line	330; ".\Source\App_Init.c"	else if(tmp == 0x80)
399 0227 [01] [2] 3080      	DCF	r0x10AB,0,0
400 0228 [01] [2] B22B      	BTSS	_STATUS,1
401 0229 [01] [2] 7803      	JMP	_00137_DS_
402                     ;	;.line	334; ".\Source\App_Init.c"	sActual.StableTime = 8;
403 022A [01] [2] 0608      	MVL	0x08
404 022B [01] [2] 6772      	MVF	(_sActual + 1),1,0
405 022C [01] [2] 780A      	JMP	_00141_DS_
406                     _00137_DS_:
407                     ;	;.line	336; ".\Source\App_Init.c"	else if(tmp == 0x40)
408 022D [01] [2] 0640      	MVL	0x40
409 022E [01] [2] 6C80      	CPSE	r0x10AB,0
410 022F [01] [2] 7803      	JMP	_00134_DS_
411                     ;	;.line	340; ".\Source\App_Init.c"	sActual.StableTime = 16;
412 0230 [01] [2] 0610      	MVL	0x10
413 0231 [01] [2] 6772      	MVF	(_sActual + 1),1,0
414 0232 [01] [2] 7804      	JMP	_00141_DS_
415                     _00134_DS_:
416                     ;	;.line	342; ".\Source\App_Init.c"	else if(tmp == 0x00)
417 0233 [01] [2] 6E80      	TFSZ	r0x10AB,0
418 0234 [01] [2] 7802      	JMP	_00141_DS_
419                     ;	;.line	348; ".\Source\App_Init.c"	sActual.StableTime = 16;
420 0235 [01] [2] 0610      	MVL	0x10
421 0236 [01] [2] 6772      	MVF	(_sActual + 1),1,0
422                     _00141_DS_:
423                     ;	;.line	355; ".\Source\App_Init.c"	tmp = PT8 & 0x20;
424 0237 [01] [2] 646A      	MVF	_PT8,0,0
425 0238 [01] [2] 0120      	ANDL	0x20
426 0239 [01] [2] 6680      	MVF	r0x10AB,1,0
427                     ;	;.line	357; ".\Source\App_Init.c"	if(tmp == 0x20)
428 023A [01] [2] 0320      	XORL	0x20
429 023B [01] [2] B02B      	BTSS	_STATUS,0
430 023C [01] [2] 7802      	JMP	_00145_DS_
431                     ;	;.line	360; ".\Source\App_Init.c"	eVersionCode = VC_DispOff;
432 023D [01] [2] 0D01      	CLRF	_eVersionCode,0
433 023E [01] [2] 7804      	JMP	_00147_DS_
434                     _00145_DS_:
435                     ;	;.line	362; ".\Source\App_Init.c"	else if(tmp == 0x00)
436 023F [01] [2] 6E80      	TFSZ	r0x10AB,0
437 0240 [01] [2] 7802      	JMP	_00147_DS_
438                     ;	;.line	365; ".\Source\App_Init.c"	eVersionCode = VC_DispOn;
439 0241 [01] [2] 0601      	MVL	0x01
440 0242 [01] [2] 6701      	MVF	_eVersionCode,1,0
441 0243 [01] [2] C4BF      _00147_DS_:
442                     ;	;.line	367; ".\Source\App_Init.c"	}
443 0244 [00] [2] 000A      	RET	
444                     ; exit point of _Binding_Init
445                     	.ENDFUNC	_Binding_Init
446                     ;--------------------------------------------------------
447                     
448                     .globl _BIE_Init
449                     
450                     ;--------------------------------------------------------
451                     	.FUNC _BIE_Init:$r:0:0:$C:_BIE_Polling:$C:_BIE_Read\
452                     
453                     ;--------------------------------------------------------
454                     ;	;.line	238; ".\Source\App_Init.c"	BIE_Available_Addr = BIE_Polling();
455                     _BIE_Init:	;Function start
456 131D [00] [1] C83A      	CALL	_BIE_Polling
457                     	.CHKPARA _BIE_Polling 0
458 131E [00] [2] 67CA      	MVF	_BIE_Available_Addr,1,0
459                     ;	;.line	240; ".\Source\App_Init.c"	if(BIE_Available_Addr == 0)
460 131F [00] [2] 6E29      	TFSZ	_WREG,0
461 1320 [00] [2] 7806      	JMP	_00113_DS_
462                     ;	;.line	243; ".\Source\App_Init.c"	sTempCal.Temp_Ratio = 10000;
463 1321 [00] [2] 0610      	MVL	0x10
464 1322 [00] [2] 6792      	MVF	(_sTempCal + 2),1,0
465 1323 [00] [2] 0627      	MVL	0x27
466 1324 [00] [2] 6793      	MVF	(_sTempCal + 3),1,0
467                     ;	;.line	245; ".\Source\App_Init.c"	sTempCal.BIE_Writed = FALSE;
468 1325 [00] [2] 8190      	BCF	_sTempCal,0
469 1326 [00] [2] 7811      	JMP	_00115_DS_
470                     _00113_DS_:
471                     ;	;.line	248; ".\Source\App_Init.c"	else if(BIE_Available_Addr == 0xFF)
472 1327 [00] [2] 3DCA      	INSZ	_BIE_Available_Addr,0,0
473 1328 [00] [2] 7807      	JMP	_00110_DS_
474                     ;	;.line	250; ".\Source\App_Init.c"	sTempCal.Temp_Ratio = BIE_Read(0x3F);
475 1329 [00] [2] 063F      	MVL	0x3f
476 132A [00] [2] C83D      	CALL	_BIE_Read
477                     	.CHKPARA _BIE_Read 1
478 132B [00] [2] 6793      	MVF	(_sTempCal + 3),1,0
479 132C [00] [2] 6420      	MVF	STK00,0,0
480 132D [00] [2] 6792      	MVF	(_sTempCal + 2),1,0
481                     ;	;.line	252; ".\Source\App_Init.c"	sTempCal.BIE_Writed = TRUE;
482 132E [00] [2] 9190      	BSF	_sTempCal,0
483 132F [00] [2] 7808      	JMP	_00115_DS_
484                     _00110_DS_:
485                     ;	;.line	257; ".\Source\App_Init.c"	sTempCal.Temp_Ratio = BIE_Read(BIE_Available_Addr - 1);
486 1330 [00] [2] 31CA      	DCF	_BIE_Available_Addr,0,0
487 1331 [00] [2] C836      	CALL	_BIE_Read
488 1332 [00] [2] 6793      	MVF	(_sTempCal + 3),1,0
489 1333 [00] [2] 6420      	MVF	STK00,0,0
490 1334 [00] [2] 6792      	MVF	(_sTempCal + 2),1,0
491                     ;	;.line	259; ".\Source\App_Init.c"	sTempCal.BIE_Writed = TRUE;
492 1335 [00] [2] 000C F290 	LDPR	(_sTempCal + 0),0x00
493 1337 [00] [2] 9000      	BSF	_INDF0,0
494                     _00115_DS_:
495                     ;	;.line	261; ".\Source\App_Init.c"	}
496 1338 [00] [2] 000A      	RET	
497                     ; exit point of _BIE_Init
498                     	.ENDFUNC	_BIE_Init
499                     ;--------------------------------------------------------
500                     
501                     .globl _Param_Init
502                     
503                     ;--------------------------------------------------------
504                     	.FUNC _Param_Init:$r:0:0:$C:_memset\
505                     
506                     ;--------------------------------------------------------
507                     ;	;.line	24; ".\Source\App_Init.c"	eButton_Status = Button_Debouncing;
508                     _Param_Init:	;Function start
509 14ED [00] [2] 0012 0D31 	CLRF	_eButton_Status,0
510                     ;	;.line	26; ".\Source\App_Init.c"	sBleStatus.TempUploadTimes_Cnt = 0;
511 14EF [00] [1] 0011 0D30 	CLRF	(_sBleStatus + 2),0
512                     ;	;.line	27; ".\Source\App_Init.c"	sBleStatus.pBleRxBuf = 0;
513 14F1 [00] [1] 0D31      	CLRF	(_sBleStatus + 3),0
514                     ;	;.line	28; ".\Source\App_Init.c"	memset(sBleStatus.g_Ble_RxData,0,sizeof(sBleStatus.g_Ble_RxData));
515 14F2 [00] [1] 0612      	MVL	0x12
516 14F3 [00] [1] 660D      	MVF	_memset_STK03,1,0
517 14F4 [01] [1] 0C0D      	CLRF	_memset_STK02,0
518 14F5 [02] [1] 0C0D      	CLRF	_memset_STK01,0
519 14F6 [03] [1] 0632      	MVL	(_sBleStatus + 4)
520 14F7 [03] [1] 660D      	MVF	_memset_STK00,1,0
521 14F8 [04] [1] 0601      	MVL	high (_sBleStatus + 4)
522 14F9 [04] [1] C8D4      	CALL	_memset
523                     	.CHKPARA _memset 5
524                     ;	;.line	30; ".\Source\App_Init.c"	sBleStatus.F_Uart_Receive = 0;
525 14FA [00] [1] 832E      	BCF	_sBleStatus,1
526                     ;	;.line	31; ".\Source\App_Init.c"	sBleStatus.F_Temp_Upload = FALSE;
527 14FB [00] [1] 872E      	BCF	_sBleStatus,3
528                     ;	;.line	32; ".\Source\App_Init.c"	sBleStatus.F_Temp_Updated = FALSE;
529 14FC [00] [1] 892E      	BCF	_sBleStatus,4
530                     ;	;.line	34; ".\Source\App_Init.c"	sMemoryFlag.MemTemp_Updated = FALSE;
531 14FD [00] [2] 0012 81C6 	BCF	_sMemoryFlag,0
532                     ;	;.line	36; ".\Source\App_Init.c"	sTempCal.BIE_Write_Action = FALSE;
533 14FF [00] [2] 8790      	BCF	_sTempCal,3
534                     ;	;.line	39; ".\Source\App_Init.c"	sTIMx.LVDSampleFlag = 0;
535 1500 [00] [2] 81CC      	BCF	_sTIMx,0
536                     ;	;.line	40; ".\Source\App_Init.c"	sTIMx.Cnt50ms = 0;
537 1501 [00] [2] 0DD0      	CLRF	(_sTIMx + 4),0
538                     ;	;.line	42; ".\Source\App_Init.c"	sLVD.pLVDBuf = 0;
539 1502 [00] [2] 0D3F      	CLRF	(_sLVD + 1),0
540                     ;	;.line	44; ".\Source\App_Init.c"	sLVD.LVD_Test_Completed = FALSE;
541 1503 [00] [2] 813E      	BCF	_sLVD,0
542                     ;	;.line	46; ".\Source\App_Init.c"	sLVD.LVD_Low = FALSE;
543 1504 [00] [2] 833E      	BCF	_sLVD,1
544                     ;	;.line	50; ".\Source\App_Init.c"	sTimeStamp.Get_DispCOM_Start_Time_Flag = FALSE;
545 1505 [00] [2] 8307      	BCF	_sTimeStamp,1
546                     ;	;.line	55; ".\Source\App_Init.c"	sButton.Flag_Button_Lift_Once = FALSE;
547 1506 [00] [2] 8B05      	BCF	_sButton,5
548                     ;	;.line	58; ".\Source\App_Init.c"	sButton.Flag_Button_Press_Once = FALSE;
549 1507 [00] [2] 8105      	BCF	_sButton,0
550                     ;	;.line	62; ".\Source\App_Init.c"	eButton_Status = Button_Debouncing;
551 1508 [00] [2] 0D31      	CLRF	_eButton_Status,0
552                     ;	;.line	64; ".\Source\App_Init.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
553 1509 [00] [2] 8B07      	BCF	_sTimeStamp,5
554                     ;	;.line	66; ".\Source\App_Init.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
555 150A [00] [2] 8907      	BCF	_sTimeStamp,4
556                     ;	;.line	70; ".\Source\App_Init.c"	sTimeStamp.Get_BleMode_Flag = FALSE;
557 150B [00] [2] 8D07      	BCF	_sTimeStamp,6
558                     ;	;.line	72; ".\Source\App_Init.c"	sTimeStamp.Get_Ble_Connect_Max_Time_Flag = FALSE;
559 150C [00] [2] 8F07      	BCF	_sTimeStamp,7
560                     ;	;.line	74; ".\Source\App_Init.c"	sTimeStamp.Get_EMC_Temp_Update_Time_Flag = FALSE;
561 150D [00] [2] 8108      	BCF	(_sTimeStamp+1),0
562                     ;	;.line	76; ".\Source\App_Init.c"	sBleStatus.AutoBps_OnOff = 0;
563 150E [00] [1] 0011 8B2E 	BCF	_sBleStatus,5
564                     ;	;.line	79; ".\Source\App_Init.c"	sADC.ADCCounts = 0;
565 1510 [00] [2] 0012 0D45 	CLRF	(_sADC + 2),0
566                     ;	;.line	81; ".\Source\App_Init.c"	sADC.Centigrade250msTemp = 0;
567 1512 [00] [2] 0D50      	CLRF	(_sADC + 13),0
568 1513 [00] [2] 0D51      	CLRF	(_sADC + 14),0
569                     ;	;.line	83; ".\Source\App_Init.c"	sADC.Flag_ADCDone = FALSE;
570 1514 [00] [2] 8343      	BCF	_sADC,1
571                     ;	;.line	85; ".\Source\App_Init.c"	sADC.Get_250msTemp_Flag =FALSE;
572 1515 [00] [2] 8143      	BCF	_sADC,0
573                     ;	;.line	87; ".\Source\App_Init.c"	sADC.Flag_DefaultNTCChl_AI12_AI13 = TRUE;
574 1516 [00] [2] 9743      	BSF	_sADC,3
575                     ;	;.line	89; ".\Source\App_Init.c"	sADC.UnRefreshTemp = FALSE;
576 1517 [00] [2] 8943      	BCF	_sADC,4
577                     ;	;.line	91; ".\Source\App_Init.c"	sADC.RefreshTempFast = TRUE;
578 1518 [00] [2] 9B43      	BSF	_sADC,5
579                     ;	;.line	95; ".\Source\App_Init.c"	sTimeStamp.Get_Buzzer_Start_Timer_Flag = FALSE;
580 1519 [00] [2] 8707      	BCF	_sTimeStamp,3
581                     ;	;.line	99; ".\Source\App_Init.c"	sTIMx.Cnt50ms = 0;
582 151A [00] [2] 0DD0      	CLRF	(_sTIMx + 4),0
583                     ;	;.line	101; ".\Source\App_Init.c"	sTIMx.Cnt125ms = 0;
584 151B [00] [2] 0DD1      	CLRF	(_sTIMx + 5),0
585 151C [00] [2] 0DD2      	CLRF	(_sTIMx + 6),0
586                     ;	;.line	103; ".\Source\App_Init.c"	sTIMx.Cnt250ms = 0;
587 151D [00] [2] 0DD3      	CLRF	(_sTIMx + 7),0
588 151E [00] [2] 0DD4      	CLRF	(_sTIMx + 8),0
589                     ;	;.line	105; ".\Source\App_Init.c"	sTIMx.Cnt500ms = 0;
590 151F [00] [2] 0DD5      	CLRF	(_sTIMx + 9),0
591 1520 [00] [2] 0DD6      	CLRF	(_sTIMx + 10),0
592                     ;	;.line	107; ".\Source\App_Init.c"	sTimeStamp.Timer_Journey = 0;
593 1521 [00] [2] 0D09      	CLRF	(_sTimeStamp + 2),0
594 1522 [00] [2] 0D0A      	CLRF	(_sTimeStamp + 3),0
595 1523 [00] [2] 0D0B      	CLRF	(_sTimeStamp + 4),0
596 1524 [00] [2] 0D0C      	CLRF	(_sTimeStamp + 5),0
597                     ;	;.line	110; ".\Source\App_Init.c"	sTempCal.Reset_From_CalOK = FALSE;
598 1525 [00] [2] 8B90      	BCF	_sTempCal,5
599                     ;	;.line	113; ".\Source\App_Init.c"	UnitExchangeCompleted = FALSE;
600 1526 [00] [2] 0D34      	CLRF	_UnitExchangeCompleted,0
601                     ;	;.line	114; ".\Source\App_Init.c"	sBacklight.Backlight2SFlag = FALSE;
602 1527 [00] [1] 0011 812C 	BCF	_sBacklight,0
603                     ;	;.line	116; ".\Source\App_Init.c"	sBacklight.MeasuredTempLighting = FALSE;
604 1529 [00] [1] 832C      	BCF	_sBacklight,1
605                     ;	;.line	119; ".\Source\App_Init.c"	sMemoryFlag.MemTempDispNo = 1;
606 152A [00] [1] 0601      	MVL	0x01
607 152B [00] [2] 0012 67C7 	MVF	(_sMemoryFlag + 1),1,0
608                     ;	;.line	121; ".\Source\App_Init.c"	sMemoryFlag.Write_MemTemp_RAM_EN = TRUE;
609 152D [00] [2] 93C6      	BSF	_sMemoryFlag,1
610                     ;	;.line	123; ".\Source\App_Init.c"	sMemoryFlag.Write_MemTemp_E2_EN = TRUE;
611 152E [00] [2] 95C6      	BSF	_sMemoryFlag,2
612                     ;	;.line	125; ".\Source\App_Init.c"	sMemoryFlag.Update_MemTempDispNo = FALSE;
613 152F [00] [2] 89C6      	BCF	_sMemoryFlag,4
614                     ;	;.line	127; ".\Source\App_Init.c"	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
615 1530 [00] [2] 8BC6      	BCF	_sMemoryFlag,5
616                     ;	;.line	129; ".\Source\App_Init.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
617 1531 [00] [2] 65B0      	MVF	(_sMemory + 1),0,0
618 1532 [00] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
619                     ;	;.line	132; ".\Source\App_Init.c"	sMemoryFlag.Write_MemTemp_RAM_Only = FALSE;
620 1533 [00] [2] 87C6      	BCF	_sMemoryFlag,3
621                     ;	;.line	137; ".\Source\App_Init.c"	sTimeStamp.Get_Backlight_Start_Time_Flag = FALSE;
622 1534 [00] [2] 8507      	BCF	_sTimeStamp,2
623                     ;	;.line	140; ".\Source\App_Init.c"	sActual.ActualTime = 0;
624 1535 [00] [2] 0D73      	CLRF	(_sActual + 2),0
625                     ;	;.line	142; ".\Source\App_Init.c"	sActual.Actual_Start = FALSE;
626 1536 [00] [2] 8171      	BCF	_sActual,0
627                     ;	;.line	144; ".\Source\App_Init.c"	sActual.TempFastFlag = FALSE;
628 1537 [00] [2] 8371      	BCF	_sActual,1
629                     ;	;.line	146; ".\Source\App_Init.c"	sActual.PresetMeasTimeCompletedFlag = FALSE;
630 1538 [00] [2] 8571      	BCF	_sActual,2
631                     ;	;.line	150; ".\Source\App_Init.c"	sForecast.FlagStartAlgorithmCounts = FALSE;
632 1539 [00] [2] 8576      	BCF	_sForecast,2
633                     ;	;.line	152; ".\Source\App_Init.c"	sForecast.Start_Counts = 1;
634 153A [00] [2] 0601      	MVL	0x01
635 153B [00] [2] 6778      	MVF	(_sForecast + 2),1,0
636                     ;	;.line	154; ".\Source\App_Init.c"	sForecast.Drop_Counts = 0;
637 153C [00] [2] 0D79      	CLRF	(_sForecast + 3),0
638                     ;	;.line	156; ".\Source\App_Init.c"	sForecast.ForecastTemp = 0;
639 153D [00] [2] 0D8C      	CLRF	(_sForecast + 22),0
640 153E [00] [2] 0D8D      	CLRF	(_sForecast + 23),0
641 153F [00] [2] 0D8E      	CLRF	(_sForecast + 24),0
642 1540 [00] [2] 0D8F      	CLRF	(_sForecast + 25),0
643                     ;	;.line	158; ".\Source\App_Init.c"	sForecast.PreBath_Counts = 0;
644 1541 [00] [2] 0D7A      	CLRF	(_sForecast + 4),0
645                     ;	;.line	160; ".\Source\App_Init.c"	sForecast.Forecast_Start = FALSE;
646 1542 [00] [2] 8176      	BCF	_sForecast,0
647                     ;	;.line	162; ".\Source\App_Init.c"	sActual_Forecast.ResetTimeFlag = FALSE;
648 1543 [00] [2] 899F      	BCF	_sActual_Forecast,4
649                     ;	;.line	164; ".\Source\App_Init.c"	sForecast.Update_MaxTemp3Min_Arrived = FALSE;
650 1544 [00] [2] 8376      	BCF	_sForecast,1
651                     ;	;.line	168; ".\Source\App_Init.c"	sActual_Forecast.AF_Start = FALSE;
652 1545 [00] [2] 819F      	BCF	_sActual_Forecast,0
653                     ;	;.line	170; ".\Source\App_Init.c"	sActual_Forecast.Cnt_1S = 0;
654 1546 [00] [2] 0DA0      	CLRF	(_sActual_Forecast + 1),0
655                     ;	;.line	171; ".\Source\App_Init.c"	sActual_Forecast.Cnt_Test_1S = 0;
656 1547 [00] [2] 0DA1      	CLRF	(_sActual_Forecast + 2),0
657                     ;	;.line	173; ".\Source\App_Init.c"	sForecast.Forecast_Counts = 0;
658 1548 [00] [2] 0D7B      	CLRF	(_sForecast + 5),0
659                     ;	;.line	176; ".\Source\App_Init.c"	sActual_Forecast.Temp_T1 = 0;
660 1549 [00] [2] 0DA6      	CLRF	(_sActual_Forecast + 7),0
661 154A [00] [2] 0DA7      	CLRF	(_sActual_Forecast + 8),0
662                     ;	;.line	178; ".\Source\App_Init.c"	sActual_Forecast.Temp_T2 = 0;
663 154B [00] [2] 0DA8      	CLRF	(_sActual_Forecast + 9),0
664 154C [00] [2] 0DA9      	CLRF	(_sActual_Forecast + 10),0
665                     ;	;.line	180; ".\Source\App_Init.c"	sActual_Forecast.Temp_T3 = 0;
666 154D [00] [2] 0DAA      	CLRF	(_sActual_Forecast + 11),0
667 154E [00] [2] 0DAB      	CLRF	(_sActual_Forecast + 12),0
668                     ;	;.line	183; ".\Source\App_Init.c"	sActual_Forecast.CentigradeTempDisp = 0;
669 154F [00] [2] 0DA2      	CLRF	(_sActual_Forecast + 3),0
670 1550 [00] [2] 0DA3      	CLRF	(_sActual_Forecast + 4),0
671                     ;	;.line	185; ".\Source\App_Init.c"	sActual_Forecast.Get_1sTempFlag = FALSE;
672 1551 [00] [2] 879F      	BCF	_sActual_Forecast,3
673                     ;	;.line	187; ".\Source\App_Init.c"	sActual_Forecast.StableBuzzerFlag = FALSE;
674 1552 [00] [2] 839F      	BCF	_sActual_Forecast,1
675                     ;	;.line	189; ".\Source\App_Init.c"	sActual_Forecast.ActualForecast_SelectFlag = FALSE;
676 1553 [00] [2] 859F      	BCF	_sActual_Forecast,2
677                     ;	;.line	193; ".\Source\App_Init.c"	sTimeStamp.Get_ForecastMeas_Start_Timer_Flag = FALSE;
678 1554 [00] [2] 8107      	BCF	_sTimeStamp,0
679                     ;	;.line	197; ".\Source\App_Init.c"	memset(ERR,0,sizeof(ERR));
680 1555 [00] [2] 0609      	MVL	0x09
681 1556 [00] [2] 660D      	MVF	_memset_STK03,1,0
682 1557 [01] [2] 0C0D      	CLRF	_memset_STK02,0
683 1558 [02] [2] 0C0D      	CLRF	_memset_STK01,0
684 1559 [03] [2] 0635      	MVL	(_ERR + 0)
685 155A [03] [2] 660D      	MVF	_memset_STK00,1,0
686 155B [04] [2] 0602      	MVL	high (_ERR + 0)
687 155C [04] [2] C871      	CALL	_memset
688                     ;	;.line	206; ".\Source\App_Init.c"	eTo_Actual_Ways = To_Actual_3Min;
689 155D [00] [2] 065A      	MVL	0x5a
690 155E [00] [2] 67AE      	MVF	_eTo_Actual_Ways,1,0
691                     ;	;.line	224; ".\Source\App_Init.c"	sADC.PreviousCentigrade250msTemp = 0;
692 155F [00] [2] 0D52      	CLRF	(_sADC + 15),0
693 1560 [00] [2] 0D53      	CLRF	(_sADC + 16),0
694                     ;	;.line	227; ".\Source\App_Init.c"	Flag_No_Buzzer = FALSE;
695 1561 [00] [1] 0011 0D6B 	CLRF	_Flag_No_Buzzer,0
696                     ;	;.line	228; ".\Source\App_Init.c"	}
697 1563 [00] [1] 000A      	RET	
698                     ; exit point of _Param_Init
699                     	.ENDFUNC	_Param_Init
700                     ;--------------------------------------------------------
701                     
702                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
703                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
704                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
705                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
706                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
707                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
708                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
709                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
710                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
711                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
712                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
713                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
714                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
715                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
716                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
717                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
718                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
719                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
720                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
721                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
722                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
723                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
724                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
725                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
726                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Init$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
727                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Init$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
728                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Init$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
729                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
730                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
731                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
732                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
733                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
734                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
735                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
736                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
737                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
738                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
739                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
740                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
741                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
742                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
743                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
744                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
745                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
746                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
747                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
748                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
749                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
750                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
751                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
752                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
753                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
754                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
755                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
756                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
757                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
758                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
759                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
760                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
761                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
762                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
763                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
764                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
765                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
766                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
767                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
768                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
769                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
770                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
771                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
772                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
773                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
774                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
775                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
776                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
777                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
778                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
779                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
780                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
781                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
782                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
783                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
784                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
785                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
786                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
787                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
788                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
789                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
790                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
791                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
792                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
793                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
794                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
795                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
796                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
797                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
798                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
799                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
800                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
801                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
802                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
803                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
804                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
805                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
806                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
807                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
808                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
809                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
810                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
811                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
812                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
813                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
814                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
815                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
816                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
817                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
818                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
819                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
820                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
821                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
822                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
823                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
824                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
825                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
826                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
827                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
828                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
829                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
830                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
831                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
832                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
833                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
834                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
835                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
836                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
837                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
838                     	;--cdb--S:LApp_Init.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
839                     	;--cdb--S:LApp_Init.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
840                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Init$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
841                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
842                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Init$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
843                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Init$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
844                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Init$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
845                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
846                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Init$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
847                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
848                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
849                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
850                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
851                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
852                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
853                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Init$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
854                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Init$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
855                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
856                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Init$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
857                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
858                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
859                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
860                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
861                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Init$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
862                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
863                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
864                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
865                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
866                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Init$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
867                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Init$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
868                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Init$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
869                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Init$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
870                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Init$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
871                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
872                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Init$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
873                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
874                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
875                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Init$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
876                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
877                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Init$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
878                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
879                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
880                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
881                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
882                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
883                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
884                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
885                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
886                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
887                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
888                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
889                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
890                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
891                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
892                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
893                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
894                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
895                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
896                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
897                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
898                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
899                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
900                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
901                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
902                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
903                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
904                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
905                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
906                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
907                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
908                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
909                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
910                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
911                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
912                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
913                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
914                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
915                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
916                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
917                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
918                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
919                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
920                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
921                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
922                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
923                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
924                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
925                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
926                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
927                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
928                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
929                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
930                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
931                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
932                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
933                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
934                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
935                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
936                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
937                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
938                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
939                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
940                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
941                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
942                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
943                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
944                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
945                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
946                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
947                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
948                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
949                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
950                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
951                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
952                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
953                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
954                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
955                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
956                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
957                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
958                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
959                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
960                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
961                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
962                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
963                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
964                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
965                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
966                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
967                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
968                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
969                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
970                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
971                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
972                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
973                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
974                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
975                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
976                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
977                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
978                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
979                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
980                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
981                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
982                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
983                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
984                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
985                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
986                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
987                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
988                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
989                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
990                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
991                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
992                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
993                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
994                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
995                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
996                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
997                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
998                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
999                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
1000                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
1001                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
1002                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
1003                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
1004                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
1005                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
1006                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
1007                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
1008                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
1009                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
1010                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
1011                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
1012                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
1013                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
1014                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
1015                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
1016                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
1017                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
1018                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
1019                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
1020                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
1021                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
1022                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
1023                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
1024                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
1025                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
1026                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
1027                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
1028                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
1029                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
1030                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
1031                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
1032                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
1033                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
1034                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
1035                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
1036                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
1037                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
1038                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
1039                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
1040                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
1041                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
1042                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
1043                     	;--cdb--S:LApp_Init.Binding_Init._Binding_Init_tmp_10000_423$tmp$2710$423({1}SC:U),R,0,0,[r0x10AB]
1044                     	;--cdb--S:LApp_Init.E2_Init._E2_Init_i_10000_445$i$2710$445({1}SC:U),R,0,0,[r0x10AE]
1045                     	;--cdb--S:LApp_Init.E2_Init._E2_Init_addr_10000_445$addr$2710$445({1}SC:U),R,0,0,[r0x10B0]
1046                     	;--cdb--S:LApp_Init.E2_Init._E2_Init_DH_10000_445$DH$2710$445({1}SC:U),R,0,0,[r0x10AF]
1047                     	;--cdb--S:LApp_Init.E2_Init._E2_Init_DL_10000_445$DL$2710$445({1}SC:U),R,0,0,[r0x10B0]
1048                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
1049                     	;--cdb--S:G$_FSR0L$0$0({0}:U),Z,0,0
1050                     	;--cdb--S:G$_FSR0H$0$0({0}:U),Z,0,0
1051                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
1052                     	;--cdb--S:G$_POINC0$0$0({0}:U),Z,0,0
1053                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
1054                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
1055                     ;--------------------------------------------------------
1056                     ; external declarations
1057                     ;--------------------------------------------------------
1058                     	.globl	_memset
1059                     	.globl	_I2C_ReadByte
1060                     	.globl	_BIE_Polling
1061                     	.globl	_BIE_Read
1062                     	.globl	_LVD_Configuration
1063                     	.globl	_CLK_Configuration
1064                     	.globl	_ADC_Configuration
1065                     	.globl	_WDT_Configuration
1066                     	.globl	_PWR_Configuration
1067                     	.globl	_GPIO_Configuration
1068                     	.globl	_TMA1_Configuration
1069                     	.globl	_BZ_Configuration
1070                     	.globl	_FSR0
1071                     	.globl	_FSR1
1072                     	.globl	_FSR2
1073                     	.globl	_ADCR
1074                     	.globl	_sIIC
1075                     	.globl	_BIE_Available_Addr
1076                     	.globl	_sTIMx
1077                     	.globl	_sUARTx
1078                     	.globl	_sAutoBps
1079                     	.globl	_eAutoBps_Status
1080                     	.globl	_sButton
1081                     	.globl	_sTimeStamp
1082                     	.globl	_eButton_Status
1083                     	.globl	_sLVD
1084                     	.globl	_UnitExchangeCompleted
1085                     	.globl	_ERR
1086                     	.globl	_eErr
1087                     	.globl	_eDisplay_Interfaces
1088                     	.globl	_sADC
1089                     	.globl	_eADCChannel
1090                     	.globl	_eSystem_Mode
1091                     	.globl	_eBuzzer_Status
1092                     	.globl	_Flag_No_Buzzer
1093                     	.globl	_sMemory
1094                     	.globl	_sMemoryFlag
1095                     	.globl	_sActual
1096                     	.globl	_sForecast
1097                     	.globl	_sTempCal
1098                     	.globl	_eMeas_Status
1099                     	.globl	_sActual_Forecast
1100                     	.globl	_eTo_Actual_Ways
1101                     	.globl	_eBle_Sta
1102                     	.globl	_sBleStatus
1103                     	.globl	_eBacklight_Status
1104                     	.globl	_sBacklight
1105                     	.globl	_NUM_CODE
1106                     	.globl	_R_Table
1107                     	.globl	_CloseTable
1108                     
1109                     	.globl STK07
1110                     	.globl STK07_SAVE
1111                     	.globl STK06
1112                     	.globl STK06_SAVE
1113                     	.globl STK05
1114                     	.globl STK05_SAVE
1115                     	.globl STK04
1116                     	.globl STK04_SAVE
1117                     	.globl STK03
1118                     	.globl STK03_SAVE
1119                     	.globl STK02
1120                     	.globl STK02_SAVE
1121                     	.globl STK01
1122                     	.globl STK01_SAVE
1123                     	.globl STK00
1124                     	.globl STK00_SAVE
1125                     ;--------------------------------------------------------
1126                     ; global -1 declarations
1127                     ;--------------------------------------------------------
1128                     	.globl	_BIE_Init
1129                     	.globl	_Binding_Init
1130                     	.globl	_sTest
1131                     	.globl	_eTempUnit
1132                     	.globl	_eBondingTempUnit
1133                     	.globl	_eVersionCode
1134                     	.globl	_eMeasureMode
1135                     	.globl	_eBinding_Status
1136                     	.globl	_Enter_PrepareSleep_Flag
1137                     
1138                     	.globl	_memcpy
1139                     ;--------------------------------------------------------
1140                     ; global -2 definitions
1141                     ;--------------------------------------------------------
1142                     	.area DSEG(DATA)
1143 016C -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sTest:	.ds	19
1144                     
1145                     	.area DSEG(DATA)
1146 017F --             _eTempUnit:	.ds	1
1147                     
1148                     	.area DSEG(DATA)
1149 0200 --             _eBondingTempUnit:	.ds	1
1150                     
1151                     	.area DSEG(DATA)
1152 0201 --             _eVersionCode:	.ds	1
1153                     
1154                     	.area DSEG(DATA)
1155 0202 --             _eMeasureMode:	.ds	1
1156                     
1157                     	.area DSEG(DATA)
1158 0203 --             _eBinding_Status:	.ds	1
1159                     
1160                     	.area DSEG(DATA)
1161 0204 --             _Enter_PrepareSleep_Flag:	.ds	1
1162                     
1163                     	.area DSEG(DATA)
1164                     __SWTGTID	.equ	0xA6A6B2CF
1165                     
1166                     	.area DSEG(DATA)
1167                     _INDF0	.equ	0x0
1168                     
1169                     	.area DSEG(DATA)
1170                     _POINC0	.equ	0x1
1171                     
1172                     	.area DSEG(DATA)
1173                     _PODEC0	.equ	0x2
1174                     
1175                     	.area DSEG(DATA)
1176                     _PRINC0	.equ	0x3
1177                     
1178                     	.area DSEG(DATA)
1179                     _PLUSW0	.equ	0x4
1180                     
1181                     	.area DSEG(DATA)
1182                     _INDF1	.equ	0x5
1183                     
1184                     	.area DSEG(DATA)
1185                     _POINC1	.equ	0x6
1186                     
1187                     	.area DSEG(DATA)
1188                     _PODEC1	.equ	0x7
1189                     
1190                     	.area DSEG(DATA)
1191                     _PRINC1	.equ	0x8
1192                     
1193                     	.area DSEG(DATA)
1194                     _PLUSW1	.equ	0x9
1195                     
1196                     	.area DSEG(DATA)
1197                     _INDF2	.equ	0xA
1198                     
1199                     	.area DSEG(DATA)
1200                     _POINC2	.equ	0xB
1201                     
1202                     	.area DSEG(DATA)
1203                     _PODEC2	.equ	0xC
1204                     
1205                     	.area DSEG(DATA)
1206                     _PRINC2	.equ	0xD
1207                     
1208                     	.area DSEG(DATA)
1209                     _PLUSW2	.equ	0xE
1210                     
1211                     	.area DSEG(DATA)
1212                     _FSR0H	.equ	0xF
1213                     
1214                     	.area DSEG(DATA)
1215                     _FSR0L	.equ	0x10
1216                     
1217                     	.area DSEG(DATA)
1218                     _FSR1H	.equ	0x11
1219                     
1220                     	.area DSEG(DATA)
1221                     _FSR1L	.equ	0x12
1222                     
1223                     	.area DSEG(DATA)
1224                     _FSR2H	.equ	0x13
1225                     
1226                     	.area DSEG(DATA)
1227                     _FSR2L	.equ	0x14
1228                     
1229                     	.area DSEG(DATA)
1230                     _TOSH	.equ	0x16
1231                     
1232                     	.area DSEG(DATA)
1233                     _TOSL	.equ	0x17
1234                     
1235                     	.area DSEG(DATA)
1236                     _SKCN	.equ	0x18
1237                     
1238                     	.area DSEG(DATA)
1239                     _PCLATH	.equ	0x1A
1240                     
1241                     	.area DSEG(DATA)
1242                     _PCLATL	.equ	0x1B
1243                     
1244                     	.area DSEG(DATA)
1245                     _TBLPTRH	.equ	0x1D
1246                     
1247                     	.area DSEG(DATA)
1248                     _TBLPTRL	.equ	0x1E
1249                     
1250                     	.area DSEG(DATA)
1251                     _TBLDH	.equ	0x1F
1252                     
1253                     	.area DSEG(DATA)
1254                     _TBLDL	.equ	0x20
1255                     
1256                     	.area DSEG(DATA)
1257                     _PRODH	.equ	0x21
1258                     
1259                     	.area DSEG(DATA)
1260                     _PRODL	.equ	0x22
1261                     
1262                     	.area DSEG(DATA)
1263                     _INTE0	.equ	0x23
1264                     
1265                     	.area DSEG(DATA)
1266                     _INTE1	.equ	0x24
1267                     
1268                     	.area DSEG(DATA)
1269                     _INTE2	.equ	0x25
1270                     
1271                     	.area DSEG(DATA)
1272                     _INTF0	.equ	0x26
1273                     
1274                     	.area DSEG(DATA)
1275                     _INTF1	.equ	0x27
1276                     
1277                     	.area DSEG(DATA)
1278                     _INTF2	.equ	0x28
1279                     
1280                     	.area DSEG(DATA)
1281                     _WREG	.equ	0x29
1282                     
1283                     	.area DSEG(DATA)
1284                     _BSRCN	.equ	0x2A
1285                     
1286                     	.area DSEG(DATA)
1287                     _STATUS	.equ	0x2B
1288                     
1289                     	.area DSEG(DATA)
1290                     _MSTAT	.equ	0x2B
1291                     
1292                     	.area DSEG(DATA)
1293                     _PSTAT	.equ	0x2C
1294                     
1295                     	.area DSEG(DATA)
1296                     _BIECN	.equ	0x2E
1297                     
1298                     	.area DSEG(DATA)
1299                     _BIEARH	.equ	0x2F
1300                     
1301                     	.area DSEG(DATA)
1302                     _BIEARL	.equ	0x30
1303                     
1304                     	.area DSEG(DATA)
1305                     _BIEDRH	.equ	0x31
1306                     
1307                     	.area DSEG(DATA)
1308                     _BIEDRL	.equ	0x32
1309                     
1310                     	.area DSEG(DATA)
1311                     _PWRCN	.equ	0x33
1312                     
1313                     	.area DSEG(DATA)
1314                     _OSCCN0	.equ	0x34
1315                     
1316                     	.area DSEG(DATA)
1317                     _OSCCN1	.equ	0x35
1318                     
1319                     	.area DSEG(DATA)
1320                     _OSCCN2	.equ	0x36
1321                     
1322                     	.area DSEG(DATA)
1323                     _CSFCN0	.equ	0x37
1324                     
1325                     	.area DSEG(DATA)
1326                     _CSFCN1	.equ	0x38
1327                     
1328                     	.area DSEG(DATA)
1329                     _WDTCN	.equ	0x39
1330                     
1331                     	.area DSEG(DATA)
1332                     _AD1H	.equ	0x3A
1333                     
1334                     	.area DSEG(DATA)
1335                     _AD1M	.equ	0x3B
1336                     
1337                     	.area DSEG(DATA)
1338                     _AD1L	.equ	0x3C
1339                     
1340                     	.area DSEG(DATA)
1341                     _AD1CN0	.equ	0x3D
1342                     
1343                     	.area DSEG(DATA)
1344                     _AD1CN1	.equ	0x3E
1345                     
1346                     	.area DSEG(DATA)
1347                     _AD1CN2	.equ	0x3F
1348                     
1349                     	.area DSEG(DATA)
1350                     _AD1CN3	.equ	0x40
1351                     
1352                     	.area DSEG(DATA)
1353                     _AD1CN4	.equ	0x41
1354                     
1355                     	.area DSEG(DATA)
1356                     _AD1CN5	.equ	0x42
1357                     
1358                     	.area DSEG(DATA)
1359                     _LVDCN	.equ	0x43
1360                     
1361                     	.area DSEG(DATA)
1362                     _TMA1CN	.equ	0x44
1363                     
1364                     	.area DSEG(DATA)
1365                     _TMA1R	.equ	0x45
1366                     
1367                     	.area DSEG(DATA)
1368                     _TMA1C	.equ	0x46
1369                     
1370                     	.area DSEG(DATA)
1371                     _TB1FLAG	.equ	0x47
1372                     
1373                     	.area DSEG(DATA)
1374                     _TB1CN0	.equ	0x48
1375                     
1376                     	.area DSEG(DATA)
1377                     _TB1CN1	.equ	0x49
1378                     
1379                     	.area DSEG(DATA)
1380                     _TB1RH	.equ	0x4A
1381                     
1382                     	.area DSEG(DATA)
1383                     _TB1RL	.equ	0x4B
1384                     
1385                     	.area DSEG(DATA)
1386                     _TB1C0H	.equ	0x4C
1387                     
1388                     	.area DSEG(DATA)
1389                     _TB1C0L	.equ	0x4D
1390                     
1391                     	.area DSEG(DATA)
1392                     _TB1C1H	.equ	0x4E
1393                     
1394                     	.area DSEG(DATA)
1395                     _TB1C1L	.equ	0x4F
1396                     
1397                     	.area DSEG(DATA)
1398                     _TB1C2H	.equ	0x50
1399                     
1400                     	.area DSEG(DATA)
1401                     _TB1C2L	.equ	0x51
1402                     
1403                     	.area DSEG(DATA)
1404                     _TC1CN0	.equ	0x52
1405                     
1406                     	.area DSEG(DATA)
1407                     _PT1	.equ	0x53
1408                     
1409                     	.area DSEG(DATA)
1410                     _TRISC1	.equ	0x54
1411                     
1412                     	.area DSEG(DATA)
1413                     _PT1DA	.equ	0x55
1414                     
1415                     	.area DSEG(DATA)
1416                     _PT1PU	.equ	0x56
1417                     
1418                     	.area DSEG(DATA)
1419                     _PT1M1	.equ	0x57
1420                     
1421                     	.area DSEG(DATA)
1422                     _PT1INT	.equ	0x58
1423                     
1424                     	.area DSEG(DATA)
1425                     _PT1INTE	.equ	0x59
1426                     
1427                     	.area DSEG(DATA)
1428                     _PT1INTF	.equ	0x5A
1429                     
1430                     	.area DSEG(DATA)
1431                     _PT2	.equ	0x5B
1432                     
1433                     	.area DSEG(DATA)
1434                     _TRISC2	.equ	0x5C
1435                     
1436                     	.area DSEG(DATA)
1437                     _PT2DA	.equ	0x5D
1438                     
1439                     	.area DSEG(DATA)
1440                     _PT2PU	.equ	0x5E
1441                     
1442                     	.area DSEG(DATA)
1443                     _PT2INT	.equ	0x5F
1444                     
1445                     	.area DSEG(DATA)
1446                     _PT2INTE	.equ	0x60
1447                     
1448                     	.area DSEG(DATA)
1449                     _PT2INTF	.equ	0x61
1450                     
1451                     	.area DSEG(DATA)
1452                     _PT6	.equ	0x62
1453                     
1454                     	.area DSEG(DATA)
1455                     _TRISC6	.equ	0x63
1456                     
1457                     	.area DSEG(DATA)
1458                     _PT6DA	.equ	0x64
1459                     
1460                     	.area DSEG(DATA)
1461                     _PT6PU	.equ	0x65
1462                     
1463                     	.area DSEG(DATA)
1464                     _PT7	.equ	0x66
1465                     
1466                     	.area DSEG(DATA)
1467                     _TRISC7	.equ	0x67
1468                     
1469                     	.area DSEG(DATA)
1470                     _PT7DA	.equ	0x68
1471                     
1472                     	.area DSEG(DATA)
1473                     _PT7PU	.equ	0x69
1474                     
1475                     	.area DSEG(DATA)
1476                     _PT8	.equ	0x6A
1477                     
1478                     	.area DSEG(DATA)
1479                     _TRISC8	.equ	0x6B
1480                     
1481                     	.area DSEG(DATA)
1482                     _PT8DA	.equ	0x6C
1483                     
1484                     	.area DSEG(DATA)
1485                     _PT8PU	.equ	0x6D
1486                     
1487                     	.area DSEG(DATA)
1488                     _SSPCN0	.equ	0x6E
1489                     
1490                     	.area DSEG(DATA)
1491                     _SSPSTA0	.equ	0x6F
1492                     
1493                     	.area DSEG(DATA)
1494                     _SSPBUF0	.equ	0x70
1495                     
1496                     	.area DSEG(DATA)
1497                     _CFG0	.equ	0x71
1498                     
1499                     	.area DSEG(DATA)
1500                     _ACT0	.equ	0x72
1501                     
1502                     	.area DSEG(DATA)
1503                     _STA0	.equ	0x73
1504                     
1505                     	.area DSEG(DATA)
1506                     _CRG0	.equ	0x74
1507                     
1508                     	.area DSEG(DATA)
1509                     _TOC0	.equ	0x75
1510                     
1511                     	.area DSEG(DATA)
1512                     _RDB0	.equ	0x76
1513                     
1514                     	.area DSEG(DATA)
1515                     _TDB0	.equ	0x77
1516                     
1517                     	.area DSEG(DATA)
1518                     _SID0	.equ	0x78
1519                     
1520                     	.area DSEG(DATA)
1521                     _UR0CN	.equ	0x79
1522                     
1523                     	.area DSEG(DATA)
1524                     _UR0STA	.equ	0x7A
1525                     
1526                     	.area DSEG(DATA)
1527                     _BA0CN	.equ	0x7B
1528                     
1529                     	.area DSEG(DATA)
1530                     _BG0RH	.equ	0x7C
1531                     
1532                     	.area DSEG(DATA)
1533                     _BG0RL	.equ	0x7D
1534                     
1535                     	.area DSEG(DATA)
1536                     _TX0R	.equ	0x7E
1537                     
1538                     	.area DSEG(DATA)
1539                     _RC0REG	.equ	0x7F
1540                     
1541                     	.area DSEG(DATA)
1542                     _LCDCN1	.equ	0x180
1543                     
1544                     	.area DSEG(DATA)
1545                     _LCDCN2	.equ	0x181
1546                     
1547                     	.area DSEG(DATA)
1548                     _LCDCN3	.equ	0x182
1549                     
1550                     	.area DSEG(DATA)
1551                     _LCDCN4	.equ	0x183
1552                     
1553                     	.area DSEG(DATA)
1554                     _LCDCN5	.equ	0x184
1555                     
1556                     	.area DSEG(DATA)
1557                     _LCDCN6	.equ	0x185
1558                     
1559                     	.area DSEG(DATA)
1560                     _LCDCN7	.equ	0x186
1561                     
1562                     	.area DSEG(DATA)
1563                     _LCDCN8	.equ	0x187
1564                     
1565                     	.area DSEG(DATA)
1566                     _LCD0	.equ	0x188
1567                     
1568                     	.area DSEG(DATA)
1569                     _LCD1	.equ	0x189
1570                     
1571                     	.area DSEG(DATA)
1572                     _LCD2	.equ	0x18A
1573                     
1574                     	.area DSEG(DATA)
1575                     _LCD3	.equ	0x18B
1576                     
1577                     	.area DSEG(DATA)
1578                     _LCD4	.equ	0x18C
1579                     
1580                     	.area DSEG(DATA)
1581                     _LCD5	.equ	0x18D
1582                     
1583                     	.area DSEG(DATA)
1584                     _LCD6	.equ	0x18E
1585                     
1586                     	.area DSEG(DATA)
1587                     _LCD7	.equ	0x18F
1588                     
1589                     	.area DSEG(DATA)
1590                     _LCD8	.equ	0x190
1591                     
1592                     	.area DSEG(DATA)
1593                     _LCD9	.equ	0x191
1594                     
1595                     	.area DSEG(DATA)
1596                     _UR2CN	.equ	0x192
1597                     
1598                     	.area DSEG(DATA)
1599                     _UR2STA	.equ	0x193
1600                     
1601                     	.area DSEG(DATA)
1602                     _BA2CN	.equ	0x194
1603                     
1604                     	.area DSEG(DATA)
1605                     _BG2RH	.equ	0x195
1606                     
1607                     	.area DSEG(DATA)
1608                     _BG2RL	.equ	0x196
1609                     
1610                     	.area DSEG(DATA)
1611                     _TX2R	.equ	0x197
1612                     
1613                     	.area DSEG(DATA)
1614                     _RC2REG	.equ	0x198
1615                     
1616                     	.area DSEG(DATA)
1617                     _TMA2R	.equ	0x1E8
1618                     
1619                     	.area DSEG(DATA)
1620                     _TMA2C	.equ	0x1E9
1621                     
1622                     	.area DSEG(DATA)
1623                     _LEDCN	.equ	0x1EA
1624                     
1625                     	.area DSEG(DATA)
1626                     _IQ0	.equ	0x1EB
1627                     
1628                     	.area DSEG(DATA)
1629                     _IQ1	.equ	0x1EC
1630                     
1631                     	.area DSEG(DATA)
1632                     _DGCON1	.equ	0x1ED
1633                     
1634                     	.area DSEG(DATA)
1635                     _DGCON2	.equ	0x1EE
1636                     
1637                     	.area DSEG(DATA)
1638                     _ADCRH	.equ	0x3A
1639                     
1640                     	.area DSEG(DATA)
1641                     _ADCRM	.equ	0x3B
1642                     
1643                     	.area DSEG(DATA)
1644                     _ADCRL	.equ	0x3C
1645                     
1646                     	.area DSEG(DATA)
1647                     _TEMDATA	.equ	0x2E0
1648                     
1649                     ;--------------------------------------------------------
1650                     ; absolute symbol definitions
1651                     ;--------------------------------------------------------
1652                     ;--------------------------------------------------------
1653                     ; compiler-defined variables
1654                     ;--------------------------------------------------------
1655                     	.area IDATA (DATA,REL,CON); pre-def
1656                     	.area IDATAROM (CODE,REL,CON); pre-def
1657                     	.area UDATA (DATA,REL,CON); pre-def
1658                     	.area UDATA (DATA,REL,CON) ;UDL_App_Init_0	udata
1659 @FSR2-CurrentOffset+001 --         r0x10AB:	.ds	1
1660 0000 --             r0x10AE:	.ds	1
1661 0000 --             r0x10AF:	.ds	1
1662 0000 --             r0x10B0:	.ds	1
1663 0000 --             r0x10B1:	.ds	1
1664                     	.area LOCALSTK (STK); local stack var
1665                     	.globl _memset_STK03
1666                     	.globl _memset_STK02
1667                     	.globl _memset_STK01
1668                     	.globl _memset_STK00
1669                     ;--------------------------------------------------------
1670                     ; initialized data
1671                     ;--------------------------------------------------------
1672                     ;--------------------------------------------------------
1673                     ; initialized data - mirror
1674                     ;--------------------------------------------------------
1675                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Init$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1676                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Init$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1677                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1678                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1679                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1680                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1681                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
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
1692                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1693                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1694                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1695                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1696                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1697                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1698                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1699                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1700                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1701                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1702                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1703                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1704                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1705                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1706                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1707                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1708                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
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
1727                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1728                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1729                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1730                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1731                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1732                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1733                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1734                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1735                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1736                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1737                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1738                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
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
1757                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1758                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1759                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1760                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1761                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1762                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1763                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1764                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1765                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1766                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1767                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1768                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Init$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1769                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1770                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1771                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1772                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Init$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1773                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1774                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1775                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Init$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1776                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Init$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1777                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Init$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1778                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1779                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1780                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Init$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1781                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Init$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1782                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Init$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1783                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Init$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1784                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Init$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
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
1803                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1804                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1805                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1806                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1807                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1808                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1809                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1810                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1811                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1812                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1813                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1814                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Init$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1815                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1816                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1817                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Init$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1818                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Init$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1819                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1820                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Init$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
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
1839                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1840                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1841                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1842                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1843                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1844                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1845                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1846                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1847                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1848                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1849                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
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
1868                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1869                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1870                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1871                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1872                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1873                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1874                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1875                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1876                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1877                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1878                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
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
1897                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1898                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1899                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1900                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1901                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1902                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1903                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1904                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1905                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1906                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1907                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1908                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Init$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1909                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Init$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1910                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Init$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1911                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1912                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1913                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Init$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
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
1932                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1933                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1934                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1935                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1936                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1937                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1938                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1939                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1940                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1941                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1942                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1943                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1944                     	;Following is optimization info, 
1945                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1946                     	;--cdb--W:r0x10AE:NULL+0:-1:1
1947                     	;--cdb--W:r0x10AF:NULL+0:-1:1
1948                     	;--cdb--W:r0x10B4:NULL+0:-1:1
1949                     	;--cdb--W:r0x10AE:NULL+0:-1:0
1950                     	;--cdb--W:r0x10AF:NULL+0:-1:0
1951                     	;--cdb--W:r0x10B3:r0x10AF+0:-1:0
1952                     	;--cdb--W:r0x10B3:NULL+0:-1:1
1953                     	;--cdb--W:r0x10B5:r0x10AF+0:-1:0
1954                     	;--cdb--W:r0x10B0:NULL+0:-1:1
1955                     	;--cdb--W:r0x10B6:r0x10AF+0:-1:0
1956                     	;--cdb--W:r0x10B2:NULL+0:-1:1
1957                     	;--cdb--W:r0x10A5:NULL+0:-1:0
1958                     	;--cdb--W:r0x10A6:NULL+0:-1:0
1959                     	;--cdb--W:r0x10A5:NULL+0:-1:1
1960                     	;--cdb--W:r0x10A6:NULL+0:-1:1
1961                     	;--cdb--W:r0x1090:NULL+0:-1:0
1962                     	;--cdb--W:r0x1091:NULL+0:-1:0
1963                     	;--cdb--W:r0x1090:NULL+0:-1:1
1964                     	;--cdb--W:r0x1091:NULL+0:-1:1
1965                     	;--c2db--RNG$_Binding_Init_tmp_10000_423$389$418
1966                     	;--c2db--RNG$_E2_Init_i_10000_445$277$315
1967                     	;--c2db--RNG$_E2_Init_addr_10000_445$291$296
1968                     	;--c2db--RNG$_E2_Init_DH_10000_445$291$311
1969                     	;--c2db--RNG$_E2_Init_DL_10000_445$297$311
1970                     	END
