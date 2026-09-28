001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src"
008                     ;;	.file	".\Source\App_Key.c"
009                     	.module App_Key
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Key$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Key$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Key$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Key$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Key$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Key$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Key$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Key$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Key$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Key$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Key$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Key$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Key$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Key$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Key$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Key$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Key$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Key:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
162                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
163                     	;--cdb--F:App_Key:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0,0,0,0
164                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:App_Key:G$Key_Detect$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     ;--------------------------------------------------------
167                     ; overlayable items in internal ram 
168                     ;--------------------------------------------------------
169                     ;	udata_ovr
170                     .area CCODE (code,REL,CON) ; App_Key-code 
171                     .globl _Key_Detect
172                     
173                     ;--------------------------------------------------------
174                     	.FUNC _Key_Detect:$r:0:0:$C:_Timer_Experience\
175                     :$L:r0x10A1:$L:r0x10A2:$L:r0x10A3:$L:r0x10A4
176                     ;--------------------------------------------------------
177                     ;	;.line	46; ".\Source\App_Key.c"	switch(eButton_Status)
178 113A [00] [X] C484      _Key_Detect:	;Function start
179 113B [00] [2] 0012 4D31 	RRF	_eButton_Status,0,0
180 113D [04] [2] 71        	BTSZ	_STATUS,0
181 113D [04] 07        	JMP	_00115_DS_
182 113E [04] [2] 4531      	DCSUZ	_eButton_Status,0,0
183 113F [04] [2] 7857      	JMP	_00129_DS_
184 1140 [04] [2] 6531      	MVF	_eButton_Status,0,0
185 1141 [04] [2] 0302      	XORL	0x02
186 1142 [04] [2] A02B      	BTSZ	_STATUS,0
187 1143 [04] [2] 788C      	JMP	_00139_DS_
188 1144 [04] [2] 78C9      	JMP	_00151_DS_
189                     _00115_DS_:
190                     ;	;.line	53; ".\Source\App_Key.c"	if(GPIO_PT1GET(1))
191 1145 [04] [2] B253      	BTSS	_PT1,1
192 1146 [04] [2] 7823      	JMP	_00127_DS_
193                     ;	;.line	55; ".\Source\App_Key.c"	if(!sTimeStamp.Get_ButtonLift_Flag)
194 1147 [04] [2] AB07      	BTSZ	_sTimeStamp,5
195 1148 [04] [2] 780A      	JMP	_00119_DS_
196                     ;	;.line	57; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = TRUE;
197 1149 [04] [2] 9B07      	BSF	_sTimeStamp,5
198                     ;	;.line	58; ".\Source\App_Key.c"	sTimeStamp.ButtonLift_Timer = sTimeStamp.Timer_Journey;
199 114A [04] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
200 114B [04] [2] 671D      	MVF	(_sTimeStamp + 22),1,0
201 114C [04] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
202 114D [04] [2] 671E      	MVF	(_sTimeStamp + 23),1,0
203 114E [04] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
204 114F [04] [2] 671F      	MVF	(_sTimeStamp + 24),1,0
205 1150 [04] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
206 1151 [04] [2] 6720      	MVF	(_sTimeStamp + 25),1,0
207 1152 [04] [2] 7815      	JMP	_00120_DS_
208                     _00119_DS_:
209                     ;	;.line	63; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,1);
210 1153 [04] [2] 651D      	MVF	(_sTimeStamp + 22),0,0
211 1154 [04] [2] 6683      	MVF	r0x10A1,1,0
212 1155 [04] [2] 651E      	MVF	(_sTimeStamp + 23),0,0
213 1156 [04] [2] 6682      	MVF	r0x10A2,1,0
214 1157 [04] [2] 651F      	MVF	(_sTimeStamp + 24),0,0
215 1158 [04] [2] 6681      	MVF	r0x10A3,1,0
216 1159 [04] [2] 6520 C8B5 	MVF	(_sTimeStamp + 25),0,0
217 1210 [04] [2] 6680      	MVF	r0x10A4,1,0
218 1211 [04] [2] 0601      	MVL	0x01
219 1212 [04] [2] 660D      	MVF	_Timer_Experience_STK06,1,0
220 1213 [05] [2] 0C0D      	CLRF	_Timer_Experience_STK05,0
221 1214 [06] [2] 0C0D      	CLRF	_Timer_Experience_STK04,0
222 1215 [07] [2] 0C0D      	CLRF	_Timer_Experience_STK03,0
223 1216 [08] [2] 6487      	MVF	r0x10A1,0,0
224 1217 [08] [2] 660D      	MVF	_Timer_Experience_STK02,1,0
225 1218 [09] [2] 6487      	MVF	r0x10A2,0,0
226 1219 [09] [2] 660D      	MVF	_Timer_Experience_STK01,1,0
227 121A [10] [2] 6487      	MVF	r0x10A3,0,0
228 121B [10] [2] 660D      	MVF	_Timer_Experience_STK00,1,0
229 121C [11] [2] 6487 000A 	MVF	r0x10A4,0,0
230 115B [11] [2] CE9D      	CALL	_Timer_Experience
231                     	.CHKPARA _Timer_Experience 8
232                     ;	;.line	65; ".\Source\App_Key.c"	if(Result)
233 115C [04] [2] 0200      	IORL	0x00
234 115D [04] [2] 71        	BTSZ	_STATUS,0
235 115D [04] 0A        	JMP	_00120_DS_
236                     ;	;.line	68; ".\Source\App_Key.c"	eButton_Status = Button_Lift;
237 115E [04] [2] 0602      	MVL	0x02
238 115F [04] [2] 6731      	MVF	_eButton_Status,1,0
239                     ;	;.line	71; ".\Source\App_Key.c"	sTimeStamp.ButtonLift_Timer = sTimeStamp.Timer_Journey;
240 1160 [04] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
241 1161 [04] [2] 671D      	MVF	(_sTimeStamp + 22),1,0
242 1162 [04] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
243 1163 [04] [2] 671E      	MVF	(_sTimeStamp + 23),1,0
244 1164 [04] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
245 1165 [04] [2] 671F      	MVF	(_sTimeStamp + 24),1,0
246 1166 [04] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
247 1167 [04] [2] 6720      	MVF	(_sTimeStamp + 25),1,0
248                     _00120_DS_:
249                     ;	;.line	75; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
250 1168 [04] [2] 8907      	BCF	_sTimeStamp,4
251 1169 [04] [2] 7824      	JMP	_00128_DS_
252                     _00127_DS_:
253                     ;	;.line	80; ".\Source\App_Key.c"	if(!sTimeStamp.Get_ButtonPress_Flag)
254 116A [04] [2] A907      	BTSZ	_sTimeStamp,4
255 116B [04] [2] 780A      	JMP	_00124_DS_
256                     ;	;.line	82; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = TRUE;
257 116C [04] [2] 9907      	BSF	_sTimeStamp,4
258                     ;	;.line	83; ".\Source\App_Key.c"	sTimeStamp.ButtonPress_Timer = sTimeStamp.Timer_Journey;
259 116D [04] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
260 116E [04] [2] 6721      	MVF	(_sTimeStamp + 26),1,0
261 116F [04] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
262 1170 [04] [2] 6722      	MVF	(_sTimeStamp + 27),1,0
263 1171 [04] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
264 1172 [04] [2] 6723      	MVF	(_sTimeStamp + 28),1,0
265 1173 [04] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
266 1174 [04] [2] 6724      	MVF	(_sTimeStamp + 29),1,0
267 1175 [04] [2] 7815      	JMP	_00125_DS_
268                     _00124_DS_:
269                     ;	;.line	88; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,1);
270 1176 [04] [2] 6521      	MVF	(_sTimeStamp + 26),0,0
271 1177 [04] [2] 6683      	MVF	r0x10A1,1,0
272 1178 [04] [2] 6522      	MVF	(_sTimeStamp + 27),0,0
273 1179 [04] [2] 6682      	MVF	r0x10A2,1,0
274 117A [04] [2] 6523      	MVF	(_sTimeStamp + 28),0,0
275 117B [04] [2] 6681      	MVF	r0x10A3,1,0
276 117C [04] [2] 6524 C892 	MVF	(_sTimeStamp + 29),0,0
277                     	MVF	r0x10A4,1,0
278                     	MVL	0x01
279                     	MVF	_Timer_Experience_STK06,1,0
280                     	CLRF	_Timer_Experience_STK05,0
281                     	CLRF	_Timer_Experience_STK04,0
282                     	CLRF	_Timer_Experience_STK03,0
283                     	MVF	r0x10A1,0,0
284                     	MVF	_Timer_Experience_STK02,1,0
285                     	MVF	r0x10A2,0,0
286                     	MVF	_Timer_Experience_STK01,1,0
287                     	MVF	r0x10A3,0,0
288                     	MVF	_Timer_Experience_STK00,1,0
289                     	MVF	r0x10A4,0,0
290 117E [11] [2] CE7A      	CALL	_Timer_Experience
291                     ;	;.line	90; ".\Source\App_Key.c"	if(Result)
292 117F [04] [2] 0200      	IORL	0x00
293 1180 [04] [2] 71        	BTSZ	_STATUS,0
294 1180 [04] 0A        	JMP	_00125_DS_
295                     ;	;.line	93; ".\Source\App_Key.c"	eButton_Status = Button_Press;
296 1181 [04] [2] 0601      	MVL	0x01
297 1182 [04] [2] 6731      	MVF	_eButton_Status,1,0
298                     ;	;.line	96; ".\Source\App_Key.c"	sTimeStamp.ButtonPress_Timer = sTimeStamp.Timer_Journey;
299 1183 [04] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
300 1184 [04] [2] 6721      	MVF	(_sTimeStamp + 26),1,0
301 1185 [04] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
302 1186 [04] [2] 6722      	MVF	(_sTimeStamp + 27),1,0
303 1187 [04] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
304 1188 [04] [2] 6723      	MVF	(_sTimeStamp + 28),1,0
305 1189 [04] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
306 118A [04] [2] 6724      	MVF	(_sTimeStamp + 29),1,0
307                     _00125_DS_:
308                     ;	;.line	100; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
309 118B [04] [2] 000C F207 	LDPR	(_sTimeStamp + 0),0x00
310 118D [04] [2] 8A00      	BCF	_INDF0,5
311                     _00128_DS_:
312                     ;	;.line	103; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_Transient = FALSE;
313 118E [04] [2] 8D05      	BCF	_sButton,6
314                     ;	;.line	105; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_1S = FALSE;
315 118F [04] [2] 8F05      	BCF	_sButton,7
316                     ;	;.line	107; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_2S = FALSE;
317 1190 [04] [2] 8106      	BCF	(_sButton+1),0
318                     ;	;.line	109; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_60S = FALSE;
319 1191 [04] [2] 8306      	BCF	(_sButton+1),1
320                     ;	;.line	113; ".\Source\App_Key.c"	sButton.Flag_Button_Press_Transient = FALSE;
321 1192 [04] [2] 8305      	BCF	_sButton,1
322                     ;	;.line	117; ".\Source\App_Key.c"	sButton.Flag_Button_Press_3S = FALSE;
323 1193 [04] [2] 8505      	BCF	_sButton,2
324                     ;	;.line	119; ".\Source\App_Key.c"	sButton.Flag_Button_Press_6S = FALSE;
325 1194 [04] [2] 8705      	BCF	_sButton,3
326                     ;	;.line	121; ".\Source\App_Key.c"	sButton.Flag_Button_Press_9S = FALSE;
327 1195 [04] [2] 8905      	BCF	_sButton,4
328                     ;	;.line	122; ".\Source\App_Key.c"	break;
329 1196 [04] [2] 7877      	JMP	_00151_DS_
330                     _00129_DS_:
331                     ;	;.line	126; ".\Source\App_Key.c"	if(GPIO_PT1GET(1))
332 1197 [04] [2] B253      	BTSS	_PT1,1
333 1198 [04] [2] 7804      	JMP	_00137_DS_
334                     ;	;.line	129; ".\Source\App_Key.c"	eButton_Status = Button_Debouncing;
335 1199 [04] [2] 0D31      	CLRF	_eButton_Status,0
336                     ;	;.line	131; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
337 119A [04] [2] 8907      	BCF	_sTimeStamp,4
338                     ;	;.line	133; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
339 119B [04] [2] 8B07      	BCF	_sTimeStamp,5
340 119C [04] [2] 7871      	JMP	_00151_DS_
341                     _00137_DS_:
342                     ;	;.line	139; ".\Source\App_Key.c"	sButton.Flag_Button_Press_Transient = TRUE;
343 119D [04] [2] 9305      	BSF	_sButton,1
344                     ;	;.line	148; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,120);
345 119E [04] [2] 6521      	MVF	(_sTimeStamp + 26),0,0
346 119F [04] [2] 6683      	MVF	r0x10A1,1,0
347 11A0 [04] [2] 6522      	MVF	(_sTimeStamp + 27),0,0
348 11A1 [04] [2] 6682      	MVF	r0x10A2,1,0
349 11A2 [04] [2] 6523      	MVF	(_sTimeStamp + 28),0,0
350 11A3 [04] [2] 6681      	MVF	r0x10A3,1,0
351 11A4 [04] [2] 6524      	MVF	(_sTimeStamp + 29),0,0
352 11A5 [04] [2] 6680      	MVF	r0x10A4,1,0
353 11A6 [04] [2] 0678 C000 
353 11A8 F1C2           	MVL	0x78
354                     	MVF	_Timer_Experience_STK06,1,0
355                     	CLRF	_Timer_Experience_STK05,0
356                     	CLRF	_Timer_Experience_STK04,0
357                     	CLRF	_Timer_Experience_STK03,0
358                     	MVF	r0x10A1,0,0
359                     	MVF	_Timer_Experience_STK02,1,0
360                     	MVF	r0x10A2,0,0
361                     	MVF	_Timer_Experience_STK01,1,0
362                     	MVF	r0x10A3,0,0
363                     	MVF	_Timer_Experience_STK00,1,0
364                     	MVF	r0x10A4,0,0
365 11A9 [11] [2] CE4F      	CALL	_Timer_Experience
366                     ;	;.line	149; ".\Source\App_Key.c"	if(Result)
367 11AA [04] [2] 0200      	IORL	0x00
368 11AB [04] [2] 71        	BTSZ	_STATUS,0
369 11AB [04] 03        	JMP	_00131_DS_
370                     ;	;.line	152; ".\Source\App_Key.c"	sButton.Flag_Button_Press_3S = TRUE;
371 11AC [04] [2] 000C F205 	LDPR	(_sButton + 0),0x00
372 11AE [04] [2] 9400      	BSF	_INDF0,2
373                     _00131_DS_:
374                     ;	;.line	155; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,240);
375 11AF [04] [2] 6521      	MVF	(_sTimeStamp + 26),0,0
376 11B0 [04] [2] 6683      	MVF	r0x10A1,1,0
377 11B1 [04] [2] 6522      	MVF	(_sTimeStamp + 27),0,0
378 11B2 [04] [2] 6682      	MVF	r0x10A2,1,0
379 11B3 [04] [2] 6523      	MVF	(_sTimeStamp + 28),0,0
380 11B4 [04] [2] 6681      	MVF	r0x10A3,1,0
381 11B5 [04] [2] 6524      	MVF	(_sTimeStamp + 29),0,0
382 11B6 [04] [2] 6680      	MVF	r0x10A4,1,0
383 11B7 [04] [2] 06F0 C000 
383 11B9 F1C2           	MVL	0xf0
384                     	MVF	_Timer_Experience_STK06,1,0
385                     	CLRF	_Timer_Experience_STK05,0
386                     	CLRF	_Timer_Experience_STK04,0
387                     	CLRF	_Timer_Experience_STK03,0
388                     	MVF	r0x10A1,0,0
389                     	MVF	_Timer_Experience_STK02,1,0
390                     	MVF	r0x10A2,0,0
391                     	MVF	_Timer_Experience_STK01,1,0
392                     	MVF	r0x10A3,0,0
393                     	MVF	_Timer_Experience_STK00,1,0
394                     	MVF	r0x10A4,0,0
395 11BA [11] [2] CE3E      	CALL	_Timer_Experience
396                     ;	;.line	156; ".\Source\App_Key.c"	if(Result)
397 11BB [04] [2] 0200      	IORL	0x00
398 11BC [04] [2] 71        	BTSZ	_STATUS,0
399 11BC [04] 03        	JMP	_00133_DS_
400                     ;	;.line	159; ".\Source\App_Key.c"	sButton.Flag_Button_Press_6S = TRUE;
401 11BD [04] [2] 000C F205 	LDPR	(_sButton + 0),0x00
402 11BF [04] [2] 9600      	BSF	_INDF0,3
403                     _00133_DS_:
404                     ;	;.line	162; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonPress_Timer,360);
405 11C0 [04] [2] 6521      	MVF	(_sTimeStamp + 26),0,0
406 11C1 [04] [2] 6683      	MVF	r0x10A1,1,0
407 11C2 [04] [2] 6522      	MVF	(_sTimeStamp + 27),0,0
408 11C3 [04] [2] 6682      	MVF	r0x10A2,1,0
409 11C4 [04] [2] 6523      	MVF	(_sTimeStamp + 28),0,0
410 11C5 [04] [2] 6681      	MVF	r0x10A3,1,0
411 11C6 [04] [2] 6524      	MVF	(_sTimeStamp + 29),0,0
412 11C7 [04] [2] 6680      	MVF	r0x10A4,1,0
413 11C8 [04] [2] 0668 C000 
413 11CA F1B5           	MVL	0x68
414                     	MVF	_Timer_Experience_STK06,1,0
415                     	MVL	0x01
416                     	MVF	_Timer_Experience_STK05,1,0
417                     	CLRF	_Timer_Experience_STK04,0
418                     	CLRF	_Timer_Experience_STK03,0
419                     	MVF	r0x10A1,0,0
420                     	MVF	_Timer_Experience_STK02,1,0
421                     	MVF	r0x10A2,0,0
422                     	MVF	_Timer_Experience_STK01,1,0
423                     	MVF	r0x10A3,0,0
424                     	MVF	_Timer_Experience_STK00,1,0
425                     	MVF	r0x10A4,0,0
426 11CB [11] [2] CE2D      	CALL	_Timer_Experience
427                     ;	;.line	163; ".\Source\App_Key.c"	if(Result)
428 11CC [04] [2] 0200      	IORL	0x00
429 11CD [04] [2] 71        	BTSZ	_STATUS,0
430 11CD [04] 40        	JMP	_00151_DS_
431                     ;	;.line	166; ".\Source\App_Key.c"	sButton.Flag_Button_Press_9S = TRUE;
432 11CE [04] [2] 9905      	BSF	_sButton,4
433                     ;	;.line	169; ".\Source\App_Key.c"	break;
434 11CF [04] [2] 783E      	JMP	_00151_DS_
435                     _00139_DS_:
436                     ;	;.line	173; ".\Source\App_Key.c"	if(!GPIO_PT1GET(1))
437 11D0 [04] [2] A253      	BTSZ	_PT1,1
438 11D1 [04] [2] 7804      	JMP	_00147_DS_
439                     ;	;.line	176; ".\Source\App_Key.c"	eButton_Status = Button_Debouncing;
440 11D2 [04] [2] 0D31      	CLRF	_eButton_Status,0
441                     ;	;.line	178; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonPress_Flag = FALSE;
442 11D3 [04] [2] 8907      	BCF	_sTimeStamp,4
443                     ;	;.line	180; ".\Source\App_Key.c"	sTimeStamp.Get_ButtonLift_Flag = FALSE;
444 11D4 [04] [2] 8B07      	BCF	_sTimeStamp,5
445 11D5 [04] [2] 7838      	JMP	_00151_DS_
446                     _00147_DS_:
447                     ;	;.line	186; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_Transient = TRUE;
448 11D6 [04] [2] 9D05      	BSF	_sButton,6
449                     ;	;.line	189; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,40);
450 11D7 [04] [2] 651D      	MVF	(_sTimeStamp + 22),0,0
451 11D8 [04] [2] 6683      	MVF	r0x10A1,1,0
452 11D9 [04] [2] 651E      	MVF	(_sTimeStamp + 23),0,0
453 11DA [04] [2] 6682      	MVF	r0x10A2,1,0
454 11DB [04] [2] 651F      	MVF	(_sTimeStamp + 24),0,0
455 11DC [04] [2] 6681      	MVF	r0x10A3,1,0
456 11DD [04] [2] 6520      	MVF	(_sTimeStamp + 25),0,0
457 11DE [04] [2] 6680      	MVF	r0x10A4,1,0
458 11DF [04] [2] 0628 C000 
458 11E1 F1C2           	MVL	0x28
459                     	MVF	_Timer_Experience_STK06,1,0
460                     	CLRF	_Timer_Experience_STK05,0
461                     	CLRF	_Timer_Experience_STK04,0
462                     	CLRF	_Timer_Experience_STK03,0
463                     	MVF	r0x10A1,0,0
464                     	MVF	_Timer_Experience_STK02,1,0
465                     	MVF	r0x10A2,0,0
466                     	MVF	_Timer_Experience_STK01,1,0
467                     	MVF	r0x10A3,0,0
468                     	MVF	_Timer_Experience_STK00,1,0
469                     	MVF	r0x10A4,0,0
470 11E2 [11] [2] CE16      	CALL	_Timer_Experience
471                     ;	;.line	190; ".\Source\App_Key.c"	if(Result)
472 11E3 [04] [2] 0200      	IORL	0x00
473 11E4 [04] [2] 71        	BTSZ	_STATUS,0
474 11E4 [04] 03        	JMP	_00141_DS_
475                     ;	;.line	193; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_1S = TRUE;
476 11E5 [04] [2] 000C F205 	LDPR	(_sButton + 0),0x00
477 11E7 [04] [2] 9E00      	BSF	_INDF0,7
478                     _00141_DS_:
479                     ;	;.line	197; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,80);
480 11E8 [04] [2] 651D      	MVF	(_sTimeStamp + 22),0,0
481 11E9 [04] [2] 6683      	MVF	r0x10A1,1,0
482 11EA [04] [2] 651E      	MVF	(_sTimeStamp + 23),0,0
483 11EB [04] [2] 6682      	MVF	r0x10A2,1,0
484 11EC [04] [2] 651F      	MVF	(_sTimeStamp + 24),0,0
485 11ED [04] [2] 6681      	MVF	r0x10A3,1,0
486 11EE [04] [2] 6520      	MVF	(_sTimeStamp + 25),0,0
487 11EF [04] [2] 6680      	MVF	r0x10A4,1,0
488 11F0 [04] [2] 0650 C000 
488 11F2 F1C2           	MVL	0x50
489                     	MVF	_Timer_Experience_STK06,1,0
490                     	CLRF	_Timer_Experience_STK05,0
491                     	CLRF	_Timer_Experience_STK04,0
492                     	CLRF	_Timer_Experience_STK03,0
493                     	MVF	r0x10A1,0,0
494                     	MVF	_Timer_Experience_STK02,1,0
495                     	MVF	r0x10A2,0,0
496                     	MVF	_Timer_Experience_STK01,1,0
497                     	MVF	r0x10A3,0,0
498                     	MVF	_Timer_Experience_STK00,1,0
499                     	MVF	r0x10A4,0,0
500 11F3 [11] [2] CE05      	CALL	_Timer_Experience
501                     ;	;.line	198; ".\Source\App_Key.c"	if(Result)
502 11F4 [04] [2] 6E29      	TFSZ	_WREG,0
503                     ;	;.line	201; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_2S = TRUE;
504 11F5 [04] [2] 9106      	BSF	(_sButton+1),0
505                     ;	;.line	205; ".\Source\App_Key.c"	Result = Timer_Experience(sTimeStamp.ButtonLift_Timer,2400);
506 11F6 [04] [2] 651D      	MVF	(_sTimeStamp + 22),0,0
507 11F7 [04] [2] 6683      	MVF	r0x10A1,1,0
508 11F8 [04] [2] 651E      	MVF	(_sTimeStamp + 23),0,0
509 11F9 [04] [2] 6682      	MVF	r0x10A2,1,0
510 11FA [04] [2] 651F      	MVF	(_sTimeStamp + 24),0,0
511 11FB [04] [2] 6681      	MVF	r0x10A3,1,0
512 11FC [04] [2] 6520      	MVF	(_sTimeStamp + 25),0,0
513 11FD [04] [2] 6680      	MVF	r0x10A4,1,0
514 11FE [04] [2] 0660      	MVL	0x60
515 11FF [04] [2] 660D      	MVF	_Timer_Experience_STK06,1,0
516 1200 [05] [2] 0609      	MVL	0x09
517 1201 [05] [2] 660D      	MVF	_Timer_Experience_STK05,1,0
518 1202 [06] [2] 0C0D      	CLRF	_Timer_Experience_STK04,0
519 1203 [07] [2] 0C0D      	CLRF	_Timer_Experience_STK03,0
520 1204 [08] [2] 6487      	MVF	r0x10A1,0,0
521 1205 [08] [2] 660D      	MVF	_Timer_Experience_STK02,1,0
522 1206 [09] [2] 6487      	MVF	r0x10A2,0,0
523 1207 [09] [2] 660D      	MVF	_Timer_Experience_STK01,1,0
524 1208 [10] [2] 6487      	MVF	r0x10A3,0,0
525 1209 [10] [2] 660D      	MVF	_Timer_Experience_STK00,1,0
526 120A [11] [2] 6487      	MVF	r0x10A4,0,0
527 120B [11] [2] CDED      	CALL	_Timer_Experience
528                     ;	;.line	206; ".\Source\App_Key.c"	if(Result)
529 120C [04] [2] 6E29      	TFSZ	_WREG,0
530                     ;	;.line	209; ".\Source\App_Key.c"	sButton.Flag_Button_Lift_60S = TRUE;
531 120D [04] [2] 9306      	BSF	(_sButton+1),1
532 120E [04] [2] C4BC      _00151_DS_:
533                     ;	;.line	215; ".\Source\App_Key.c"	}
534 120F [00] [2] 000A      	RET	
535                     ; exit point of _Key_Detect
536                     	.ENDFUNC	_Key_Detect
537                     ;--------------------------------------------------------
538                     
539                     .globl _Timer_Experience
540                     
541                     ;--------------------------------------------------------
542                     	.FUNC _Timer_Experience:$r:1:8:$L:r0x108F:$L:_Timer_Experience_STK00:$L:_Timer_Experience_STK01:$L:_Timer_Experience_STK02:$L:_Timer_Experience_STK03\
543                     :$L:_Timer_Experience_STK04:$L:_Timer_Experience_STK05:$L:_Timer_Experience_STK06:$L:r0x1094:$L:r0x1095\
544                     :$L:r0x1096:$L:r0x1097
545                     ;--------------------------------------------------------
546                     ;	;.line	22; ".\Source\App_Key.c"	uint8 Timer_Experience(uint32 Start_Time,uint32 Time_Interval)
547 0FF9 [00] [2] C485      _Timer_Experience:	;Function start
548 0FFA [05] [2] 6684      	MVF	r0x108F,1,0
549 0FFB [05] [2] 6509      	MVF	(_sTimeStamp + 2),0,0
550                     ;	;.line	24; ".\Source\App_Key.c"	if(sTimeStamp.Timer_Journey >= Start_Time)
551 0FFC [05] [2] 6683      	MVF	r0x1094,1,0
552 0FFD [05] [2] 650A      	MVF	(_sTimeStamp + 3),0,0
553 0FFE [05] [2] 6682      	MVF	r0x1095,1,0
554 0FFF [05] [2] 650B      	MVF	(_sTimeStamp + 4),0,0
555 1000 [05] [2] 6681      	MVF	r0x1096,1,0
556 1001 [05] [2] 650C      	MVF	(_sTimeStamp + 5),0,0
557 1002 [05] [2] 6680      	MVF	r0x1097,1,0
558 1003 [05] [2] 6487      	MVF	_Timer_Experience_STK02,0,0
559 1004 [05] [2] 1883      	SUBF	r0x1094,0,0
560 1005 [05] [2] 6486      	MVF	_Timer_Experience_STK01,0,0
561 1006 [05] [2] 1C82      	SUBC	r0x1095,0,0
562 1007 [05] [2] 6485      	MVF	_Timer_Experience_STK00,0,0
563 1008 [05] [2] 1C81      	SUBC	r0x1096,0,0
564 1009 [05] [2] 6484      	MVF	r0x108F,0,0
565 100A [05] [2] 1C80      	SUBC	r0x1097,0,0
566 100B [05] [2] 74        	BTSS	_STATUS,4
567 100B [05] 14        	JMP	_00110_DS_
568                     ;	;.line	26; ".\Source\App_Key.c"	if(sTimeStamp.Timer_Journey > (Time_Interval  + Start_Time))
569 100C [05] [2] 648B      	MVF	_Timer_Experience_STK06,0,0
570 100D [05] [2] 1287      	ADDF	_Timer_Experience_STK02,1,0
571 100E [05] [2] 648A      	MVF	_Timer_Experience_STK05,0,0
572 100F [05] [2] 1686      	ADDC	_Timer_Experience_STK01,1,0
573 1010 [05] [2] 6489      	MVF	_Timer_Experience_STK04,0,0
574 1011 [05] [2] 1685      	ADDC	_Timer_Experience_STK00,1,0
575 1012 [05] [2] 6488      	MVF	_Timer_Experience_STK03,0,0
576 1013 [05] [2] 1684      	ADDC	r0x108F,1,0
577 1014 [05] [2] 6483      	MVF	r0x1094,0,0
578 1015 [05] [2] 1887      	SUBF	_Timer_Experience_STK02,0,0
579 1016 [05] [2] 6482      	MVF	r0x1095,0,0
580 1017 [05] [2] 1C86      	SUBC	_Timer_Experience_STK01,0,0
581 1018 [05] [2] 6481      	MVF	r0x1096,0,0
582 1019 [05] [2] 1C85      	SUBC	_Timer_Experience_STK00,0,0
583 101A [05] [2] 6480      	MVF	r0x1097,0,0
584 101B [05] [2] 1C84      	SUBC	r0x108F,0,0
585 101C [05] [2] 70        	BTSZ	_STATUS,4
586 101C [05] 02        	JMP	_00106_DS_
587                     ;	;.line	28; ".\Source\App_Key.c"	return TRUE;
588 101D [05] [2] 0601      	MVL	0x01
589 101E [05] [2] 7801      	JMP	_00110_DS_
590                     _00106_DS_:
591                     ;	;.line	32; ".\Source\App_Key.c"	return FALSE;
592 101F [05] [2] 0600      	MVL	0x00
593 1020 [05] [2] C4B4      _00110_DS_:
594                     ;	;.line	35; ".\Source\App_Key.c"	}
595 1021 [00] [2] 000A      	RET	
596                     ; exit point of _Timer_Experience
597                     	.ENDFUNC	_Timer_Experience
598                     ;--------------------------------------------------------
599                     
600                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
601                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
602                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
603                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
604                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
605                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
606                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
607                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
608                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
609                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
610                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
611                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
612                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
613                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
614                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
615                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
616                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
617                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
618                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
619                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
620                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
621                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
622                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
623                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
624                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
625                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
626                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
627                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
628                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
629                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
630                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
631                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
632                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
633                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
634                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
635                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
636                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
637                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
638                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
639                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
640                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
641                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
642                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
643                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
644                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
645                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
646                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
647                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
648                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
649                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
650                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
651                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
652                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
653                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
654                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
655                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
656                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
657                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
658                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
659                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
660                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
661                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
662                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
663                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
664                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
665                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
666                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
667                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
668                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
669                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
670                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
671                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
672                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
673                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
674                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
675                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
676                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
677                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
678                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
679                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
680                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
681                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
682                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
683                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
684                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
685                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
686                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
687                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
688                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
689                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
690                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
691                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
692                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
693                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
694                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
695                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
696                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
697                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
698                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
699                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
700                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
701                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
702                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
703                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
704                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
705                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
706                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
707                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
708                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
709                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
710                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
711                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
712                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
713                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
714                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
715                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
716                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
717                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
718                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
719                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
720                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
721                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
722                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
723                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
724                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
725                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
726                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
727                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
728                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
729                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
730                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
731                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
732                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
733                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
734                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
735                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
736                     	;--cdb--S:LApp_Key.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
737                     	;--cdb--S:LApp_Key.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
738                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Key$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
739                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
740                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Key$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
741                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Key$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
742                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Key$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
743                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
744                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Key$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
745                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
746                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
747                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
748                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
749                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
750                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
751                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Key$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
752                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Key$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
753                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
754                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Key$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
755                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
756                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
757                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
758                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
759                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Key$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
760                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
761                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
762                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
763                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
764                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Key$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
765                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Key$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
766                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Key$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
767                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Key$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
768                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Key$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
769                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
770                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Key$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
771                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
772                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
773                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Key$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
774                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
775                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Key$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
776                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
777                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
778                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
779                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
780                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
781                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
782                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
783                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
784                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
785                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
786                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
787                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
788                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
789                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
790                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
791                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
792                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
793                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
794                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
795                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
796                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
797                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
798                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
799                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
800                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
801                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
802                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
803                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
804                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
805                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
806                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
807                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
808                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
809                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
810                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
811                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
812                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
813                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
814                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
815                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
816                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
817                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
818                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
819                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
820                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
821                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
822                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
823                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
824                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
825                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
826                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
827                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
828                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
829                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
830                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
831                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
832                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
833                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
834                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
835                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
836                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
837                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
838                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
839                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
840                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
841                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
842                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
843                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
844                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
845                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
846                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
847                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
848                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
849                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
850                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
851                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
852                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
853                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
854                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
855                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
856                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
857                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
858                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
859                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
860                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
861                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
862                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
863                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
864                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
865                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
866                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
867                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
868                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
869                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
870                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
871                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
872                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
873                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
874                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
875                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
876                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
877                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
878                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
879                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
880                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
881                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
882                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
883                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
884                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
885                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
886                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
887                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
888                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
889                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
890                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
891                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
892                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
893                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
894                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
895                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
896                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
897                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
898                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
899                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
900                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
901                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
902                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
903                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
904                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
905                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
906                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
907                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
908                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
909                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
910                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
911                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
912                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
913                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
914                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
915                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
916                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
917                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
918                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
919                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
920                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
921                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
922                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
923                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
924                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
925                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
926                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
927                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
928                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
929                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
930                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
931                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
932                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
933                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
934                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
935                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
936                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
937                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
938                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
939                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
940                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
941                     	;--cdb--S:LApp_Key.Timer_Experience._Timer_Experience_Time_Interval_10000_416$Time_Interval$2710$416({4}SL:UL),R,0,0,[_Timer_Experience_STK06,_Timer_Experience_STK05,_Timer_Experience_STK04,_Timer_Experience_STK03]
942                     	;--cdb--S:LApp_Key.Timer_Experience._Timer_Experience_Start_Time_10000_416$Start_Time$2710$416({4}SL:UL),R,0,0,[_Timer_Experience_STK02,_Timer_Experience_STK01,_Timer_Experience_STK00,r0x108F]
943                     	;--cdb--S:LApp_Key.Key_Detect._Key_Detect_Result_10000_424$Result$2710$424({1}SC:U),R,0,0,[r0x10A1]
944                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
945                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
946                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
947                     ;--------------------------------------------------------
948                     ; external declarations
949                     ;--------------------------------------------------------
950                     	.globl	_FSR0
951                     	.globl	_FSR1
952                     	.globl	_FSR2
953                     	.globl	_ADCR
954                     	.globl	_sIIC
955                     	.globl	_BIE_Available_Addr
956                     	.globl	_sTIMx
957                     	.globl	_sUARTx
958                     	.globl	_sAutoBps
959                     	.globl	_eAutoBps_Status
960                     	.globl	_sTest
961                     	.globl	_eTempUnit
962                     	.globl	_eBondingTempUnit
963                     	.globl	_eVersionCode
964                     	.globl	_eMeasureMode
965                     	.globl	_eBinding_Status
966                     	.globl	_Enter_PrepareSleep_Flag
967                     	.globl	_sLVD
968                     	.globl	_UnitExchangeCompleted
969                     	.globl	_ERR
970                     	.globl	_eErr
971                     	.globl	_eDisplay_Interfaces
972                     	.globl	_sADC
973                     	.globl	_eADCChannel
974                     	.globl	_eSystem_Mode
975                     	.globl	_eBuzzer_Status
976                     	.globl	_Flag_No_Buzzer
977                     	.globl	_sMemory
978                     	.globl	_sMemoryFlag
979                     	.globl	_sActual
980                     	.globl	_sForecast
981                     	.globl	_sTempCal
982                     	.globl	_eMeas_Status
983                     	.globl	_sActual_Forecast
984                     	.globl	_eTo_Actual_Ways
985                     	.globl	_eBle_Sta
986                     	.globl	_sBleStatus
987                     	.globl	_eBacklight_Status
988                     	.globl	_sBacklight
989                     	.globl	_NUM_CODE
990                     	.globl	_R_Table
991                     	.globl	_CloseTable
992                     
993                     	.globl STK07
994                     	.globl STK07_SAVE
995                     	.globl STK06
996                     	.globl STK06_SAVE
997                     	.globl STK05
998                     	.globl STK05_SAVE
999                     	.globl STK04
1000                     	.globl STK04_SAVE
1001                     	.globl STK03
1002                     	.globl STK03_SAVE
1003                     	.globl STK02
1004                     	.globl STK02_SAVE
1005                     	.globl STK01
1006                     	.globl STK01_SAVE
1007                     	.globl STK00
1008                     	.globl STK00_SAVE
1009                     ;--------------------------------------------------------
1010                     ; global -1 declarations
1011                     ;--------------------------------------------------------
1012                     	.globl	_Timer_Experience
1013                     	.globl	_sButton
1014                     	.globl	_sTimeStamp
1015                     	.globl	_eButton_Status
1016                     
1017                     	.globl	_memcpy
1018                     ;--------------------------------------------------------
1019                     ; global -2 definitions
1020                     ;--------------------------------------------------------
1021                     	.area DSEG(DATA)
1022 0205 -- --          _sButton:	.ds	2
1023                     
1024                     	.area DSEG(DATA)
1025 0207 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sTimeStamp:	.ds	42
1026                     
1027                     	.area DSEG(DATA)
1028 0231 --             _eButton_Status:	.ds	1
1029                     
1030                     	.area DSEG(DATA)
1031                     __SWTGTID	.equ	0xA6A6B2CF
1032                     
1033                     	.area DSEG(DATA)
1034                     _INDF0	.equ	0x0
1035                     
1036                     	.area DSEG(DATA)
1037                     _POINC0	.equ	0x1
1038                     
1039                     	.area DSEG(DATA)
1040                     _PODEC0	.equ	0x2
1041                     
1042                     	.area DSEG(DATA)
1043                     _PRINC0	.equ	0x3
1044                     
1045                     	.area DSEG(DATA)
1046                     _PLUSW0	.equ	0x4
1047                     
1048                     	.area DSEG(DATA)
1049                     _INDF1	.equ	0x5
1050                     
1051                     	.area DSEG(DATA)
1052                     _POINC1	.equ	0x6
1053                     
1054                     	.area DSEG(DATA)
1055                     _PODEC1	.equ	0x7
1056                     
1057                     	.area DSEG(DATA)
1058                     _PRINC1	.equ	0x8
1059                     
1060                     	.area DSEG(DATA)
1061                     _PLUSW1	.equ	0x9
1062                     
1063                     	.area DSEG(DATA)
1064                     _INDF2	.equ	0xA
1065                     
1066                     	.area DSEG(DATA)
1067                     _POINC2	.equ	0xB
1068                     
1069                     	.area DSEG(DATA)
1070                     _PODEC2	.equ	0xC
1071                     
1072                     	.area DSEG(DATA)
1073                     _PRINC2	.equ	0xD
1074                     
1075                     	.area DSEG(DATA)
1076                     _PLUSW2	.equ	0xE
1077                     
1078                     	.area DSEG(DATA)
1079                     _FSR0H	.equ	0xF
1080                     
1081                     	.area DSEG(DATA)
1082                     _FSR0L	.equ	0x10
1083                     
1084                     	.area DSEG(DATA)
1085                     _FSR1H	.equ	0x11
1086                     
1087                     	.area DSEG(DATA)
1088                     _FSR1L	.equ	0x12
1089                     
1090                     	.area DSEG(DATA)
1091                     _FSR2H	.equ	0x13
1092                     
1093                     	.area DSEG(DATA)
1094                     _FSR2L	.equ	0x14
1095                     
1096                     	.area DSEG(DATA)
1097                     _TOSH	.equ	0x16
1098                     
1099                     	.area DSEG(DATA)
1100                     _TOSL	.equ	0x17
1101                     
1102                     	.area DSEG(DATA)
1103                     _SKCN	.equ	0x18
1104                     
1105                     	.area DSEG(DATA)
1106                     _PCLATH	.equ	0x1A
1107                     
1108                     	.area DSEG(DATA)
1109                     _PCLATL	.equ	0x1B
1110                     
1111                     	.area DSEG(DATA)
1112                     _TBLPTRH	.equ	0x1D
1113                     
1114                     	.area DSEG(DATA)
1115                     _TBLPTRL	.equ	0x1E
1116                     
1117                     	.area DSEG(DATA)
1118                     _TBLDH	.equ	0x1F
1119                     
1120                     	.area DSEG(DATA)
1121                     _TBLDL	.equ	0x20
1122                     
1123                     	.area DSEG(DATA)
1124                     _PRODH	.equ	0x21
1125                     
1126                     	.area DSEG(DATA)
1127                     _PRODL	.equ	0x22
1128                     
1129                     	.area DSEG(DATA)
1130                     _INTE0	.equ	0x23
1131                     
1132                     	.area DSEG(DATA)
1133                     _INTE1	.equ	0x24
1134                     
1135                     	.area DSEG(DATA)
1136                     _INTE2	.equ	0x25
1137                     
1138                     	.area DSEG(DATA)
1139                     _INTF0	.equ	0x26
1140                     
1141                     	.area DSEG(DATA)
1142                     _INTF1	.equ	0x27
1143                     
1144                     	.area DSEG(DATA)
1145                     _INTF2	.equ	0x28
1146                     
1147                     	.area DSEG(DATA)
1148                     _WREG	.equ	0x29
1149                     
1150                     	.area DSEG(DATA)
1151                     _BSRCN	.equ	0x2A
1152                     
1153                     	.area DSEG(DATA)
1154                     _STATUS	.equ	0x2B
1155                     
1156                     	.area DSEG(DATA)
1157                     _MSTAT	.equ	0x2B
1158                     
1159                     	.area DSEG(DATA)
1160                     _PSTAT	.equ	0x2C
1161                     
1162                     	.area DSEG(DATA)
1163                     _BIECN	.equ	0x2E
1164                     
1165                     	.area DSEG(DATA)
1166                     _BIEARH	.equ	0x2F
1167                     
1168                     	.area DSEG(DATA)
1169                     _BIEARL	.equ	0x30
1170                     
1171                     	.area DSEG(DATA)
1172                     _BIEDRH	.equ	0x31
1173                     
1174                     	.area DSEG(DATA)
1175                     _BIEDRL	.equ	0x32
1176                     
1177                     	.area DSEG(DATA)
1178                     _PWRCN	.equ	0x33
1179                     
1180                     	.area DSEG(DATA)
1181                     _OSCCN0	.equ	0x34
1182                     
1183                     	.area DSEG(DATA)
1184                     _OSCCN1	.equ	0x35
1185                     
1186                     	.area DSEG(DATA)
1187                     _OSCCN2	.equ	0x36
1188                     
1189                     	.area DSEG(DATA)
1190                     _CSFCN0	.equ	0x37
1191                     
1192                     	.area DSEG(DATA)
1193                     _CSFCN1	.equ	0x38
1194                     
1195                     	.area DSEG(DATA)
1196                     _WDTCN	.equ	0x39
1197                     
1198                     	.area DSEG(DATA)
1199                     _AD1H	.equ	0x3A
1200                     
1201                     	.area DSEG(DATA)
1202                     _AD1M	.equ	0x3B
1203                     
1204                     	.area DSEG(DATA)
1205                     _AD1L	.equ	0x3C
1206                     
1207                     	.area DSEG(DATA)
1208                     _AD1CN0	.equ	0x3D
1209                     
1210                     	.area DSEG(DATA)
1211                     _AD1CN1	.equ	0x3E
1212                     
1213                     	.area DSEG(DATA)
1214                     _AD1CN2	.equ	0x3F
1215                     
1216                     	.area DSEG(DATA)
1217                     _AD1CN3	.equ	0x40
1218                     
1219                     	.area DSEG(DATA)
1220                     _AD1CN4	.equ	0x41
1221                     
1222                     	.area DSEG(DATA)
1223                     _AD1CN5	.equ	0x42
1224                     
1225                     	.area DSEG(DATA)
1226                     _LVDCN	.equ	0x43
1227                     
1228                     	.area DSEG(DATA)
1229                     _TMA1CN	.equ	0x44
1230                     
1231                     	.area DSEG(DATA)
1232                     _TMA1R	.equ	0x45
1233                     
1234                     	.area DSEG(DATA)
1235                     _TMA1C	.equ	0x46
1236                     
1237                     	.area DSEG(DATA)
1238                     _TB1FLAG	.equ	0x47
1239                     
1240                     	.area DSEG(DATA)
1241                     _TB1CN0	.equ	0x48
1242                     
1243                     	.area DSEG(DATA)
1244                     _TB1CN1	.equ	0x49
1245                     
1246                     	.area DSEG(DATA)
1247                     _TB1RH	.equ	0x4A
1248                     
1249                     	.area DSEG(DATA)
1250                     _TB1RL	.equ	0x4B
1251                     
1252                     	.area DSEG(DATA)
1253                     _TB1C0H	.equ	0x4C
1254                     
1255                     	.area DSEG(DATA)
1256                     _TB1C0L	.equ	0x4D
1257                     
1258                     	.area DSEG(DATA)
1259                     _TB1C1H	.equ	0x4E
1260                     
1261                     	.area DSEG(DATA)
1262                     _TB1C1L	.equ	0x4F
1263                     
1264                     	.area DSEG(DATA)
1265                     _TB1C2H	.equ	0x50
1266                     
1267                     	.area DSEG(DATA)
1268                     _TB1C2L	.equ	0x51
1269                     
1270                     	.area DSEG(DATA)
1271                     _TC1CN0	.equ	0x52
1272                     
1273                     	.area DSEG(DATA)
1274                     _PT1	.equ	0x53
1275                     
1276                     	.area DSEG(DATA)
1277                     _TRISC1	.equ	0x54
1278                     
1279                     	.area DSEG(DATA)
1280                     _PT1DA	.equ	0x55
1281                     
1282                     	.area DSEG(DATA)
1283                     _PT1PU	.equ	0x56
1284                     
1285                     	.area DSEG(DATA)
1286                     _PT1M1	.equ	0x57
1287                     
1288                     	.area DSEG(DATA)
1289                     _PT1INT	.equ	0x58
1290                     
1291                     	.area DSEG(DATA)
1292                     _PT1INTE	.equ	0x59
1293                     
1294                     	.area DSEG(DATA)
1295                     _PT1INTF	.equ	0x5A
1296                     
1297                     	.area DSEG(DATA)
1298                     _PT2	.equ	0x5B
1299                     
1300                     	.area DSEG(DATA)
1301                     _TRISC2	.equ	0x5C
1302                     
1303                     	.area DSEG(DATA)
1304                     _PT2DA	.equ	0x5D
1305                     
1306                     	.area DSEG(DATA)
1307                     _PT2PU	.equ	0x5E
1308                     
1309                     	.area DSEG(DATA)
1310                     _PT2INT	.equ	0x5F
1311                     
1312                     	.area DSEG(DATA)
1313                     _PT2INTE	.equ	0x60
1314                     
1315                     	.area DSEG(DATA)
1316                     _PT2INTF	.equ	0x61
1317                     
1318                     	.area DSEG(DATA)
1319                     _PT6	.equ	0x62
1320                     
1321                     	.area DSEG(DATA)
1322                     _TRISC6	.equ	0x63
1323                     
1324                     	.area DSEG(DATA)
1325                     _PT6DA	.equ	0x64
1326                     
1327                     	.area DSEG(DATA)
1328                     _PT6PU	.equ	0x65
1329                     
1330                     	.area DSEG(DATA)
1331                     _PT7	.equ	0x66
1332                     
1333                     	.area DSEG(DATA)
1334                     _TRISC7	.equ	0x67
1335                     
1336                     	.area DSEG(DATA)
1337                     _PT7DA	.equ	0x68
1338                     
1339                     	.area DSEG(DATA)
1340                     _PT7PU	.equ	0x69
1341                     
1342                     	.area DSEG(DATA)
1343                     _PT8	.equ	0x6A
1344                     
1345                     	.area DSEG(DATA)
1346                     _TRISC8	.equ	0x6B
1347                     
1348                     	.area DSEG(DATA)
1349                     _PT8DA	.equ	0x6C
1350                     
1351                     	.area DSEG(DATA)
1352                     _PT8PU	.equ	0x6D
1353                     
1354                     	.area DSEG(DATA)
1355                     _SSPCN0	.equ	0x6E
1356                     
1357                     	.area DSEG(DATA)
1358                     _SSPSTA0	.equ	0x6F
1359                     
1360                     	.area DSEG(DATA)
1361                     _SSPBUF0	.equ	0x70
1362                     
1363                     	.area DSEG(DATA)
1364                     _CFG0	.equ	0x71
1365                     
1366                     	.area DSEG(DATA)
1367                     _ACT0	.equ	0x72
1368                     
1369                     	.area DSEG(DATA)
1370                     _STA0	.equ	0x73
1371                     
1372                     	.area DSEG(DATA)
1373                     _CRG0	.equ	0x74
1374                     
1375                     	.area DSEG(DATA)
1376                     _TOC0	.equ	0x75
1377                     
1378                     	.area DSEG(DATA)
1379                     _RDB0	.equ	0x76
1380                     
1381                     	.area DSEG(DATA)
1382                     _TDB0	.equ	0x77
1383                     
1384                     	.area DSEG(DATA)
1385                     _SID0	.equ	0x78
1386                     
1387                     	.area DSEG(DATA)
1388                     _UR0CN	.equ	0x79
1389                     
1390                     	.area DSEG(DATA)
1391                     _UR0STA	.equ	0x7A
1392                     
1393                     	.area DSEG(DATA)
1394                     _BA0CN	.equ	0x7B
1395                     
1396                     	.area DSEG(DATA)
1397                     _BG0RH	.equ	0x7C
1398                     
1399                     	.area DSEG(DATA)
1400                     _BG0RL	.equ	0x7D
1401                     
1402                     	.area DSEG(DATA)
1403                     _TX0R	.equ	0x7E
1404                     
1405                     	.area DSEG(DATA)
1406                     _RC0REG	.equ	0x7F
1407                     
1408                     	.area DSEG(DATA)
1409                     _LCDCN1	.equ	0x180
1410                     
1411                     	.area DSEG(DATA)
1412                     _LCDCN2	.equ	0x181
1413                     
1414                     	.area DSEG(DATA)
1415                     _LCDCN3	.equ	0x182
1416                     
1417                     	.area DSEG(DATA)
1418                     _LCDCN4	.equ	0x183
1419                     
1420                     	.area DSEG(DATA)
1421                     _LCDCN5	.equ	0x184
1422                     
1423                     	.area DSEG(DATA)
1424                     _LCDCN6	.equ	0x185
1425                     
1426                     	.area DSEG(DATA)
1427                     _LCDCN7	.equ	0x186
1428                     
1429                     	.area DSEG(DATA)
1430                     _LCDCN8	.equ	0x187
1431                     
1432                     	.area DSEG(DATA)
1433                     _LCD0	.equ	0x188
1434                     
1435                     	.area DSEG(DATA)
1436                     _LCD1	.equ	0x189
1437                     
1438                     	.area DSEG(DATA)
1439                     _LCD2	.equ	0x18A
1440                     
1441                     	.area DSEG(DATA)
1442                     _LCD3	.equ	0x18B
1443                     
1444                     	.area DSEG(DATA)
1445                     _LCD4	.equ	0x18C
1446                     
1447                     	.area DSEG(DATA)
1448                     _LCD5	.equ	0x18D
1449                     
1450                     	.area DSEG(DATA)
1451                     _LCD6	.equ	0x18E
1452                     
1453                     	.area DSEG(DATA)
1454                     _LCD7	.equ	0x18F
1455                     
1456                     	.area DSEG(DATA)
1457                     _LCD8	.equ	0x190
1458                     
1459                     	.area DSEG(DATA)
1460                     _LCD9	.equ	0x191
1461                     
1462                     	.area DSEG(DATA)
1463                     _UR2CN	.equ	0x192
1464                     
1465                     	.area DSEG(DATA)
1466                     _UR2STA	.equ	0x193
1467                     
1468                     	.area DSEG(DATA)
1469                     _BA2CN	.equ	0x194
1470                     
1471                     	.area DSEG(DATA)
1472                     _BG2RH	.equ	0x195
1473                     
1474                     	.area DSEG(DATA)
1475                     _BG2RL	.equ	0x196
1476                     
1477                     	.area DSEG(DATA)
1478                     _TX2R	.equ	0x197
1479                     
1480                     	.area DSEG(DATA)
1481                     _RC2REG	.equ	0x198
1482                     
1483                     	.area DSEG(DATA)
1484                     _TMA2R	.equ	0x1E8
1485                     
1486                     	.area DSEG(DATA)
1487                     _TMA2C	.equ	0x1E9
1488                     
1489                     	.area DSEG(DATA)
1490                     _LEDCN	.equ	0x1EA
1491                     
1492                     	.area DSEG(DATA)
1493                     _IQ0	.equ	0x1EB
1494                     
1495                     	.area DSEG(DATA)
1496                     _IQ1	.equ	0x1EC
1497                     
1498                     	.area DSEG(DATA)
1499                     _DGCON1	.equ	0x1ED
1500                     
1501                     	.area DSEG(DATA)
1502                     _DGCON2	.equ	0x1EE
1503                     
1504                     	.area DSEG(DATA)
1505                     _ADCRH	.equ	0x3A
1506                     
1507                     	.area DSEG(DATA)
1508                     _ADCRM	.equ	0x3B
1509                     
1510                     	.area DSEG(DATA)
1511                     _ADCRL	.equ	0x3C
1512                     
1513                     	.area DSEG(DATA)
1514                     _TEMDATA	.equ	0x2E0
1515                     
1516                     ;--------------------------------------------------------
1517                     ; absolute symbol definitions
1518                     ;--------------------------------------------------------
1519                     ;--------------------------------------------------------
1520                     ; compiler-defined variables
1521                     ;--------------------------------------------------------
1522                     	.area IDATA (DATA,REL,CON); pre-def
1523                     	.area IDATAROM (CODE,REL,CON); pre-def
1524                     	.area UDATA (DATA,REL,CON); pre-def
1525                     	.area UDATA (DATA,REL,CON) ;UDL_App_Key_0	udata
1526 @FSR2-CurrentOffset+001 --         r0x108F:	.ds	1
1527 @FSR2-CurrentOffset+002 --         r0x1094:	.ds	1
1528 @FSR2-CurrentOffset+003 --         r0x1095:	.ds	1
1529 @FSR2-CurrentOffset+004 --         r0x1096:	.ds	1
1530 @FSR2-CurrentOffset+005 --         r0x1097:	.ds	1
1531 @FSR2-CurrentOffset+001 --         r0x10A1:	.ds	1
1532 @FSR2-CurrentOffset+002 --         r0x10A2:	.ds	1
1533 @FSR2-CurrentOffset+003 --         r0x10A3:	.ds	1
1534 @FSR2-CurrentOffset+004 --         r0x10A4:	.ds	1
1535                     	.area LOCALSTK (STK); local stack var
1536 @FSR2-00 --         _Timer_Experience_STK00:	.ds	1
1537                     	.globl _Timer_Experience_STK00
1538 @FSR2+01 --         _Timer_Experience_STK01:	.ds	1
1539                     	.globl _Timer_Experience_STK01
1540 @FSR2+02 --         _Timer_Experience_STK02:	.ds	1
1541                     	.globl _Timer_Experience_STK02
1542 @FSR2+03 --         _Timer_Experience_STK03:	.ds	1
1543                     	.globl _Timer_Experience_STK03
1544 @FSR2+04 --         _Timer_Experience_STK04:	.ds	1
1545                     	.globl _Timer_Experience_STK04
1546 @FSR2+05 --         _Timer_Experience_STK05:	.ds	1
1547                     	.globl _Timer_Experience_STK05
1548 @FSR2+06 --         _Timer_Experience_STK06:	.ds	1
1549                     	.globl _Timer_Experience_STK06
1550                     ;--------------------------------------------------------
1551                     ; initialized data
1552                     ;--------------------------------------------------------
1553                     ;--------------------------------------------------------
1554                     ; initialized data - mirror
1555                     ;--------------------------------------------------------
1556                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Key$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1557                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Key$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1558                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1559                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1560                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1561                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1562                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1563                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1564                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1565                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1566                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1567                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1568                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1569                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1570                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1571                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1572                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1573                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1574                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1575                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1576                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1577                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1578                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1579                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
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
1590                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1591                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1592                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1593                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1594                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1595                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
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
1619                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1620                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1621                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1622                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1623                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1624                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1625                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
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
1649                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Key$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1650                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1651                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1652                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1653                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Key$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1654                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1655                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1656                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Key$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1657                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Key$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1658                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Key$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1659                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1660                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1661                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Key$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1662                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Key$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1663                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Key$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1664                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Key$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1665                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Key$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1666                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1667                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1668                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1669                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1670                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1671                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
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
1695                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Key$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1696                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1697                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1698                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Key$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1699                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Key$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1700                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1701                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Key$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1702                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1703                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1704                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1705                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1706                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1707                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
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
1731                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1732                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1733                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1734                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1735                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1736                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
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
1760                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1761                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1762                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1763                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1764                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1765                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
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
1789                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Key$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1790                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Key$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1791                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Key$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1792                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1793                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1794                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Key$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1795                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1796                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1797                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1798                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1799                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1800                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
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
1824                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1825                     	;Following is optimization info, 
1826                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1827                     	;--cdb--W:r0x10A1:NULL+0:-1:1
1828                     	;--cdb--W:r0x10A1:NULL+0:-1:0
1829                     	;--cdb--W:r0x10A2:NULL+0:-1:0
1830                     	;--cdb--W:r0x10A2:NULL+0:-1:1
1831                     	;--c2db--RNG$_Timer_Experience_Time_Interval_10000_416$550$586
1832                     	;--c2db--RNG$_Timer_Experience_Start_Time_10000_416$550$586
1833                     	;--c2db--RNG$_Key_Detect_Result_10000_424$427$430
1834                     	END
