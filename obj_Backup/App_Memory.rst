001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : free open source ISO C Compiler
003                     ; Version 4.5.2 #bf155f72c (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_ce专标\Src"
008                     ;;	.file	".\Source\App_Memory.c"
009                     	.module App_Memory
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_Memory$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]
012                     	;--cdb--T:FApp_Memory$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_Memory$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]
014                     	;--cdb--T:FApp_Memory$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_Memory$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]
016                     	;--cdb--T:FApp_Memory$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_Memory$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
018                     	;--cdb--T:FApp_Memory$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
019                     	;--cdb--T:FApp_Memory$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
020                     	;--cdb--T:FApp_Memory$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_Memory$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
022                     	;--cdb--T:FApp_Memory$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
023                     	;--cdb--T:FApp_Memory$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
024                     	;--cdb--T:FApp_Memory$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
025                     	;--cdb--T:FApp_Memory$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
026                     	;--cdb--T:FApp_Memory$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_Memory$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]
028                     	;--cdb--T:FApp_Memory$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
029                     	;--cdb--T:FApp_Memory$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
030                     	;--cdb--T:FApp_Memory$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
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
049                     	;--cdb--F:App_Memory:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
050                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
051                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
052                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
053                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
054                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
055                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
056                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Memory$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
057                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Memory$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
058                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Memory$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
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
162                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
163                     	;--cdb--F:App_Memory:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0,0,0,0
164                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:App_Memory:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     ;--------------------------------------------------------
167                     ; overlayable items in internal ram 
168                     ;--------------------------------------------------------
169                     ;	udata_ovr
170                     .area CCODE (code,REL,CON) ; App_Memory-code 
171                     .globl _MemoryTemp_E2Store
172                     
173                     ;--------------------------------------------------------
174                     	.FUNC _MemoryTemp_E2Store:$r:0:0:$C:_I2C_WriteByte:$C:_Delay_ms:$C:_I2C_ReadByte\
175                     :$L:r0x1094:$L:r0x1095:$L:r0x1096:$L:r0x1097:$L:r0x109A\
176                     
177                     ;--------------------------------------------------------
178                     ;	;.line	118; ".\Source\App_Memory.c"	if(sMemoryFlag.Write_MemTemp_E2_EN)
179                     _MemoryTemp_E2Store:	;Function start
180                     	BTSS	_sMemoryFlag,2
181                     	JMP	_00164_DS_
182                     ;	;.line	121; ".\Source\App_Memory.c"	sMemoryFlag.Write_MemTemp_E2_EN = FALSE;
183                     	BCF	_sMemoryFlag,2
184                     ;	;.line	123; ".\Source\App_Memory.c"	GIE_Disable();
185                     	BCF	_INTE0,7
186                     ;	;.line	124; ".\Source\App_Memory.c"	INTE0 = 0x00;
187                     	CLRF	_INTE0,0
188                     ;	;.line	125; ".\Source\App_Memory.c"	INTE1 = 0x00;
189                     	CLRF	_INTE1,0
190                     ;	;.line	127; ".\Source\App_Memory.c"	Write_Time = 0;
191                     	CLRF	r0x1094,0
192                     _00133_DS_:
193                     ;	;.line	132; ".\Source\App_Memory.c"	I2C_WriteByte(E2_HeadNo_Addr,sMemory.HeadNo);
194                     	MVF	(_sMemory + 0),0,0
195                     	MVF	_I2C_WriteByte_STK00,1,0
196                     	MVL	0x01
197                     	CALL	_I2C_WriteByte
198                     	.CHKPARA _I2C_WriteByte 2
199                     ;	;.line	133; ".\Source\App_Memory.c"	Write_Time++;
200                     	INF	r0x1094,1,0
201                     ;	;.line	135; ".\Source\App_Memory.c"	Delay_ms(10);
202                     	MVL	0x0a
203                     	CALL	_Delay_ms
204                     	.CHKPARA _Delay_ms 1
205                     ;	;.line	138; ".\Source\App_Memory.c"	while((I2C_ReadByte(E2_HeadNo_Addr) != sMemory.HeadNo) && (Write_Time <= 3));
206                     	MVL	0x01
207                     	CALL	_I2C_ReadByte
208                     	.CHKPARA _I2C_ReadByte 1
209                     	XORF	(_sMemory + 0),0,0
210                     	BTSZ	_STATUS,0
211                     	JMP	_00135_DS_
212                     	MVL	0x03
213                     	CPSG	r0x1094,0
214                     	JMP	_00133_DS_
215                     _00135_DS_:
216                     ;	;.line	141; ".\Source\App_Memory.c"	if(Write_Time > 3)
217                     	MVL	0x03
218                     	CPSG	r0x1094,0
219                     	JMP	_00137_DS_
220                     ;	;.line	143; ".\Source\App_Memory.c"	ERR[Err5] = TRUE;
221                     	MVL	0x01
222                     	MVF	(_ERR + 5),1,0
223                     _00137_DS_:
224                     ;	;.line	146; ".\Source\App_Memory.c"	Write_Time = 0;
225                     	CLRF	r0x1094,0
226                     _00139_DS_:
227                     ;	;.line	150; ".\Source\App_Memory.c"	I2C_WriteByte(E2_pMemTempBuf_Addr,sMemory.pMemTempBuf);
228                     	MVF	(_sMemory + 1),0,0
229                     	MVF	_I2C_WriteByte_STK00,1,0
230                     	MVL	0x02
231                     	CALL	_I2C_WriteByte
232                     ;	;.line	151; ".\Source\App_Memory.c"	Write_Time++;
233                     	INF	r0x1094,1,0
234                     ;	;.line	153; ".\Source\App_Memory.c"	Delay_ms(10);
235                     	MVL	0x0a
236                     	CALL	_Delay_ms
237                     ;	;.line	156; ".\Source\App_Memory.c"	while((I2C_ReadByte(E2_pMemTempBuf_Addr) != sMemory.pMemTempBuf) && (Write_Time <= 3));
238                     	MVL	0x02
239                     	CALL	_I2C_ReadByte
240                     	XORF	(_sMemory + 1),0,0
241                     	BTSZ	_STATUS,0
242                     	JMP	_00141_DS_
243                     	MVL	0x03
244                     	CPSG	r0x1094,0
245                     	JMP	_00139_DS_
246                     _00141_DS_:
247                     ;	;.line	158; ".\Source\App_Memory.c"	if(Write_Time > 3)
248                     	MVL	0x03
249                     	CPSG	r0x1094,0
250                     	JMP	_00143_DS_
251                     ;	;.line	160; ".\Source\App_Memory.c"	ERR[Err5] = TRUE;
252                     	MVL	0x01
253                     	MVF	(_ERR + 5),1,0
254                     _00143_DS_:
255                     ;	;.line	163; ".\Source\App_Memory.c"	Write_Time = 0;
256                     	CLRF	r0x1094,0
257                     _00145_DS_:
258                     ;	;.line	167; ".\Source\App_Memory.c"	I2C_WriteByte(E2_MemTempSum_Addr,sMemory.MemTempSum);
259                     	MVF	(_sMemory + 2),0,0
260                     	MVF	_I2C_WriteByte_STK00,1,0
261                     	MVL	0x03
262                     	CALL	_I2C_WriteByte
263                     ;	;.line	168; ".\Source\App_Memory.c"	Write_Time++;
264                     	INF	r0x1094,1,0
265                     ;	;.line	170; ".\Source\App_Memory.c"	Delay_ms(10);
266                     	MVL	0x0a
267                     	CALL	_Delay_ms
268                     ;	;.line	173; ".\Source\App_Memory.c"	while((I2C_ReadByte(E2_MemTempSum_Addr) != sMemory.MemTempSum) && (Write_Time <= 3));
269                     	MVL	0x03
270                     	CALL	_I2C_ReadByte
271                     	XORF	(_sMemory + 2),0,0
272                     	BTSZ	_STATUS,0
273                     	JMP	_00147_DS_
274                     	MVL	0x03
275                     	CPSG	r0x1094,0
276                     	JMP	_00145_DS_
277                     _00147_DS_:
278                     ;	;.line	175; ".\Source\App_Memory.c"	if(Write_Time > 3)
279                     	MVL	0x03
280                     	CPSG	r0x1094,0
281                     	JMP	_00149_DS_
282                     ;	;.line	177; ".\Source\App_Memory.c"	ERR[Err5] = TRUE;
283                     	MVL	0x01
284                     	MVF	(_ERR + 5),1,0
285                     _00149_DS_:
286                     ;	;.line	180; ".\Source\App_Memory.c"	Write_Time = 0;
287                     	CLRF	r0x1094,0
288                     ;	;.line	182; ".\Source\App_Memory.c"	addr = E2_MemTempBuf_Addr + sMemory.pMemTempBuf * 2;
289                     	MVF	(_sMemory + 1),0,0
290                     	MVF	r0x1095,1,0
291                     	MULL	0x02
292                     	MVF	_PRODL,0,0
293                     	ADDL	0x04
294                     	MVF	r0x1096,1,0
295                     ;	;.line	185; ".\Source\App_Memory.c"	Data = sMemory.MemTempBuf[sMemory.pMemTempBuf];
296                     	MVF	r0x1095,0,0
297                     	MULL	0x02
298                     	LDPR	(_sMemory + 3),0
299                     	MVF	_PRODL,0,0
300                     	MVFF	_PLUSW0,STK00
301                     	INF	_WREG,0,0
302                     	MVFF	_PLUSW0,STK01
303                     	MVF	STK01,0,0
304                     ;	;.line	186; ".\Source\App_Memory.c"	DH = Data >> 8;
305                     	MVF	r0x109A,1,0
306                     ;	;.line	187; ".\Source\App_Memory.c"	DL = Data;
307                     	MVF	STK00,0,0
308                     	MVF	r0x1097,1,0
309                     _00151_DS_:
310                     ;	;.line	192; ".\Source\App_Memory.c"	I2C_WriteByte(addr,DH);
311                     	MVF	r0x109A,0,0
312                     	MVF	_I2C_WriteByte_STK00,1,0
313                     	MVF	r0x1096,0,0
314                     	CALL	_I2C_WriteByte
315                     ;	;.line	193; ".\Source\App_Memory.c"	Write_Time++;
316                     	INF	r0x1094,1,0
317                     ;	;.line	195; ".\Source\App_Memory.c"	Delay_ms(10);
318                     	MVL	0x0a
319                     	CALL	_Delay_ms
320                     ;	;.line	198; ".\Source\App_Memory.c"	while((I2C_ReadByte(addr) != DH) && (Write_Time <= 3));
321                     	MVF	r0x1096,0,0
322                     	CALL	_I2C_ReadByte
323                     	XORF	r0x109A,0,0
324                     	BTSZ	_STATUS,0
325                     	JMP	_00153_DS_
326                     	MVL	0x03
327                     	CPSG	r0x1094,0
328                     	JMP	_00151_DS_
329                     _00153_DS_:
330                     ;	;.line	200; ".\Source\App_Memory.c"	if(Write_Time > 3)
331                     	MVL	0x03
332                     	CPSG	r0x1094,0
333                     	JMP	_00155_DS_
334                     ;	;.line	202; ".\Source\App_Memory.c"	ERR[Err5] = TRUE;
335                     	MVL	0x01
336                     	MVF	(_ERR + 5),1,0
337                     _00155_DS_:
338                     ;	;.line	205; ".\Source\App_Memory.c"	Write_Time = 0;
339                     	CLRF	r0x1094,0
340                     	INF	r0x1096,1,0
341                     _00157_DS_:
342                     ;	;.line	210; ".\Source\App_Memory.c"	I2C_WriteByte(addr,DL);
343                     	MVF	r0x1097,0,0
344                     	MVF	_I2C_WriteByte_STK00,1,0
345                     	MVF	r0x1096,0,0
346                     	CALL	_I2C_WriteByte
347                     ;	;.line	211; ".\Source\App_Memory.c"	Write_Time++;
348                     	INF	r0x1094,1,0
349                     ;	;.line	213; ".\Source\App_Memory.c"	Delay_ms(10);
350                     	MVL	0x0a
351                     	CALL	_Delay_ms
352                     ;	;.line	216; ".\Source\App_Memory.c"	while((I2C_ReadByte(addr) != DL) && (Write_Time <= 3));
353                     	MVF	r0x1096,0,0
354                     	CALL	_I2C_ReadByte
355                     	XORF	r0x1097,0,0
356                     	BTSZ	_STATUS,0
357                     	JMP	_00159_DS_
358                     	MVL	0x03
359                     	CPSG	r0x1094,0
360                     	JMP	_00157_DS_
361                     _00159_DS_:
362                     ;	;.line	218; ".\Source\App_Memory.c"	if(Write_Time > 3)
363                     	MVL	0x03
364                     	CPSG	r0x1094,0
365                     	JMP	_00161_DS_
366                     ;	;.line	220; ".\Source\App_Memory.c"	ERR[Err5] = TRUE;
367                     	MVL	0x01
368                     	MVF	(_ERR + 5),1,0
369                     _00161_DS_:
370                     ;	;.line	224; ".\Source\App_Memory.c"	GIE_Enable();
371                     	BSF	_INTE0,7
372                     ;	;.line	225; ".\Source\App_Memory.c"	INTE0 = 0xF0;
373                     	MVL	0xf0
374                     	MVF	_INTE0,1,0
375                     ;	;.line	226; ".\Source\App_Memory.c"	INTE1 = 0x10;
376                     	MVL	0x10
377                     	MVF	_INTE1,1,0
378                     _00164_DS_:
379                     ;	;.line	233; ".\Source\App_Memory.c"	}
380                     	RET	
381                     ; exit point of _MemoryTemp_E2Store
382                     	.ENDFUNC	_MemoryTemp_E2Store
383                     ;--------------------------------------------------------
384                     
385                     .globl _MemoryTemp_RAMStore
386                     
387                     ;--------------------------------------------------------
388                     	.FUNC _MemoryTemp_RAMStore:$r:0:0:$L:r0x108C:$L:r0x108E
389                     ;--------------------------------------------------------
390                     ;	;.line	24; ".\Source\App_Memory.c"	if(sMemoryFlag.Write_MemTemp_RAM_EN)
391 0775 [00] [2] C482      _MemoryTemp_RAMStore:	;Function start
392 0776 [02] [2] B3C6      	BTSS	_sMemoryFlag,1
393 0777 [02] [2] 7869      	JMP	_00127_DS_
394                     ;	;.line	27; ".\Source\App_Memory.c"	sMemoryFlag.Write_MemTemp_RAM_EN = FALSE;
395 0778 [02] [2] 83C6      	BCF	_sMemoryFlag,1
396                     ;	;.line	31; ".\Source\App_Memory.c"	if(!sMemoryFlag.Write_MemTemp_RAM_Only)
397 0779 [02] [2] A7C6      	BTSZ	_sMemoryFlag,3
398 077A [02] [2] 7845      	JMP	_00123_DS_
399                     ;	;.line	33; ".\Source\App_Memory.c"	sMemoryFlag.Write_MemTemp_RAM_Only = TRUE;
400 077B [02] [2] 97C6      	BSF	_sMemoryFlag,3
401                     ;	;.line	35; ".\Source\App_Memory.c"	if(!sMemory.pMemTempBuf && !sMemory.MemTempSum)
402 077C [02] [2] 65B0      	MVF	(_sMemory + 1),0,0
403 077D [02] [2] 6681      	MVF	r0x108C,1,0
404 077E [02] [2] 6E29      	TFSZ	_WREG,0
405 077F [02] [2] 7802      	JMP	_00108_DS_
406 0780 [02] [2] 4DB1      	RRF	(_sMemory + 2),0,0
407 0781 [02] [2] 71        	BTSZ	_STATUS,0
408 0781 [02] 07        	JMP	_00109_DS_
409                     _00108_DS_:
410                     ;	;.line	42; ".\Source\App_Memory.c"	if(++sMemory.pMemTempBuf >= MemTempNum)
411 0782 [02] [2] 3A81      	INF	r0x108C,1,0
412 0783 [02] [2] 6481      	MVF	r0x108C,0,0
413 0784 [02] [2] 67B0      	MVF	(_sMemory + 1),1,0
414 0785 [02] [2] 0609      	MVL	0x09
415 0786 [02] [2] 6881      	CPSG	r0x108C,0
416 0787 [02] [2] 7801      	JMP	_00109_DS_
417                     ;	;.line	44; ".\Source\App_Memory.c"	sMemory.pMemTempBuf = 0;
418 0788 [02] [2] 0DB0      	CLRF	(_sMemory + 1),0
419                     _00109_DS_:
420                     ;	;.line	49; ".\Source\App_Memory.c"	if(sTempCal.Reset_From_CalOK)
421 0789 [02] [2] BB90      	BTSS	_sTempCal,5
422 078A [02] [2] 7810      	JMP	_00112_DS_
423                     ;	;.line	52; ".\Source\App_Memory.c"	sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.Calibrated_Forecast_Temp;
424 078B [02] [2] 65B0      	MVF	(_sMemory + 1),0,0
425 078C [02] [2] 0702      	MULL	0x02
426 078D [02] [2] 6422      	MVF	_PRODL,0,0
427 078E [02] [2] 04B2      	ADDL	(_sMemory + 3)
428 078F [02] [2] 6681      	MVF	r0x108C,1,0
429 0790 [02] [2] 0602      	MVL	high (_sMemory + 3)
430 0791 [02] [2] A82B      	BTSZ	_STATUS,4
431 0792 [02] [2] 0401      	ADDL	0x01
432 0793 [02] [2] C601 F010 	MVSF	r0x108C,_FSR0L
433 0795 [02] [2] 660F      	MVF	_FSR0H,1,0
434 0796 [02] [2] 65AC      	MVF	(_sActual_Forecast + 13),0,0
435 0797 [02] [2] 6601      	MVF	_POINC0,1,0
436 0798 [02] [2] 65AD      	MVF	(_sActual_Forecast + 14),0,0
437 0799 [02] [2] 6600      	MVF	_INDF0,1,0
438 079A [02] [2] 780F      	JMP	_00113_DS_
439                     _00112_DS_:
440                     ;	;.line	60; ".\Source\App_Memory.c"	sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.CentigradeTempDisp;
441 079B [02] [2] 65B0      	MVF	(_sMemory + 1),0,0
442 079C [02] [2] 0702      	MULL	0x02
443 079D [02] [2] 6422      	MVF	_PRODL,0,0
444 079E [02] [2] 04B2      	ADDL	(_sMemory + 3)
445 079F [02] [2] 6681      	MVF	r0x108C,1,0
446 07A0 [02] [2] 0602      	MVL	high (_sMemory + 3)
447 07A1 [02] [2] A82B      	BTSZ	_STATUS,4
448 07A2 [02] [2] 0401      	ADDL	0x01
449 07A3 [02] [2] C601 F010 	MVSF	r0x108C,_FSR0L
450 07A5 [02] [2] 660F      	MVF	_FSR0H,1,0
451 07A6 [02] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
452 07A7 [02] [2] 6601      	MVF	_POINC0,1,0
453 07A8 [02] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
454 07A9 [02] [2] 6600      	MVF	_INDF0,1,0
455                     _00113_DS_:
456                     ;	;.line	65; ".\Source\App_Memory.c"	if(++sMemory.MemTempSum > MemTempNum)
457 07AA [02] [2] 39B1      	INF	(_sMemory + 2),0,0
458 07AB [02] [2] 6681      	MVF	r0x108C,1,0
459 07AC [02] [2] 67B1      	MVF	(_sMemory + 2),1,0
460 07AD [02] [2] 060A      	MVL	0x0a
461 07AE [02] [2] 6881      	CPSG	r0x108C,0
462 07AF [02] [2] 780C      	JMP	_00117_DS_
463                     ;	;.line	68; ".\Source\App_Memory.c"	if(++sMemory.HeadNo >= MemTempNum)
464 07B0 [02] [2] 39AF      	INF	(_sMemory + 0),0,0
465 07B1 [02] [2] 6680      	MVF	r0x108E,1,0
466 07B2 [02] [2] 67AF      	MVF	(_sMemory + 0),1,0
467 07B3 [02] [2] 0609      	MVL	0x09
468 07B4 [02] [2] 6880      	CPSG	r0x108E,0
469 07B5 [02] [2] 7803      	JMP	_00115_DS_
470                     ;	;.line	70; ".\Source\App_Memory.c"	sMemory.HeadNo = 0;
471 07B6 [02] [2] 000C F2AF 	LDPR	(_sMemory + 0),0x00
472 07B8 [02] [2] 0C00      	CLRF	_INDF0,0
473                     _00115_DS_:
474                     ;	;.line	73; ".\Source\App_Memory.c"	sMemory.MemTempSum = MemTempNum;
475 07B9 [02] [2] 060A      	MVL	0x0a
476 07BA [02] [2] 67B1      	MVF	(_sMemory + 2),1,0
477 07BB [02] [2] 7801      	JMP	_00118_DS_
478                     _00117_DS_:
479                     ;	;.line	78; ".\Source\App_Memory.c"	sMemory.HeadNo = 0;
480 07BC [02] [2] 0DAF      	CLRF	(_sMemory + 0),0
481                     _00118_DS_:
482                     ;	;.line	82; ".\Source\App_Memory.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
483 07BD [02] [2] 65B0      	MVF	(_sMemory + 1),0,0
484 07BE [02] [2] 67C8      	MVF	(_sMemoryFlag + 2),1,0
485 07BF [02] [2] 7821      	JMP	_00127_DS_
486                     _00123_DS_:
487                     ;	;.line	87; ".\Source\App_Memory.c"	if(sTempCal.Reset_From_CalOK)
488 07C0 [02] [2] BB90      	BTSS	_sTempCal,5
489 07C1 [02] [2] 7810      	JMP	_00120_DS_
490                     ;	;.line	90; ".\Source\App_Memory.c"	sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.Calibrated_Forecast_Temp;
491 07C2 [02] [2] 65B0      	MVF	(_sMemory + 1),0,0
492 07C3 [02] [2] 0702      	MULL	0x02
493 07C4 [02] [2] 6422      	MVF	_PRODL,0,0
494 07C5 [02] [2] 04B2      	ADDL	(_sMemory + 3)
495 07C6 [02] [2] 6681      	MVF	r0x108C,1,0
496 07C7 [02] [2] 0602      	MVL	high (_sMemory + 3)
497 07C8 [02] [2] A82B      	BTSZ	_STATUS,4
498 07C9 [02] [2] 0401      	ADDL	0x01
499 07CA [02] [2] C601 F010 	MVSF	r0x108C,_FSR0L
500 07CC [02] [2] 660F      	MVF	_FSR0H,1,0
501 07CD [02] [2] 65AC      	MVF	(_sActual_Forecast + 13),0,0
502 07CE [02] [2] 6601      	MVF	_POINC0,1,0
503 07CF [02] [2] 65AD      	MVF	(_sActual_Forecast + 14),0,0
504 07D0 [02] [2] 6600      	MVF	_INDF0,1,0
505 07D1 [02] [2] 780F      	JMP	_00127_DS_
506                     _00120_DS_:
507                     ;	;.line	98; ".\Source\App_Memory.c"	sMemory.MemTempBuf[sMemory.pMemTempBuf] = sActual_Forecast.CentigradeTempDisp;
508 07D2 [02] [2] 65B0      	MVF	(_sMemory + 1),0,0
509 07D3 [02] [2] 0702      	MULL	0x02
510 07D4 [02] [2] 6422      	MVF	_PRODL,0,0
511 07D5 [02] [2] 04B2      	ADDL	(_sMemory + 3)
512 07D6 [02] [2] 6681      	MVF	r0x108C,1,0
513 07D7 [02] [2] 0602      	MVL	high (_sMemory + 3)
514 07D8 [02] [2] A82B      	BTSZ	_STATUS,4
515 07D9 [02] [2] 0401      	ADDL	0x01
516 07DA [02] [2] C601 F010 	MVSF	r0x108C,_FSR0L
517 07DC [02] [2] 660F      	MVF	_FSR0H,1,0
518 07DD [02] [2] 65A2      	MVF	(_sActual_Forecast + 3),0,0
519 07DE [02] [2] 6601      	MVF	_POINC0,1,0
520 07DF [02] [2] 65A3      	MVF	(_sActual_Forecast + 4),0,0
521 07E0 [02] [2] 6600      	MVF	_INDF0,1,0
522 07E1 [02] [2] C4BE      _00127_DS_:
523                     ;	;.line	103; ".\Source\App_Memory.c"	}
524 07E2 [00] [2] 000A      	RET	
525                     ; exit point of _MemoryTemp_RAMStore
526                     	.ENDFUNC	_MemoryTemp_RAMStore
527                     ;--------------------------------------------------------
528                     
529                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
530                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
531                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
532                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
533                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
534                     	;--cdb--S:G$atoll$0$0({2}DF,SI:SE),C,0,0
535                     	;--cdb--S:G$strtoll$0$0({2}DF,SI:SE),C,0,0
536                     	;--cdb--S:G$strtoull$0$0({2}DF,SI:UE),C,0,0
537                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
538                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
539                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
540                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
541                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
542                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
543                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
544                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
545                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
546                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
547                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
548                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
549                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
550                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
551                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
552                     	;--cdb--S:G$llabs$0$0({2}DF,SI:SE),C,0,0
553                     	;--cdb--S:G$div$0$0({2}DF,ST__00000000(T:FApp_Memory$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),C,0,0
554                     	;--cdb--S:G$ldiv$0$0({2}DF,ST__00000001(T:FApp_Memory$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),C,0,0
555                     	;--cdb--S:G$lldiv$0$0({2}DF,ST__00000002(T:FApp_Memory$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),C,0,0
556                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
557                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
558                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
559                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
560                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
561                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
562                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
563                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
564                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
565                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
566                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
567                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
568                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
569                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
570                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
571                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
572                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
573                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
574                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
575                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
576                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
577                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
578                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
579                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
580                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
581                     	;--cdb--S:G$memset_explicit$0$0({2}DF,DT,SV:S),C,0,0
582                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
583                     	;--cdb--S:G$strnlen$0$0({2}DF,SI:U),C,0,0
584                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
585                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
586                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
587                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
588                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
589                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
590                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
591                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
592                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
593                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
594                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
595                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
596                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
597                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
598                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
599                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
600                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
601                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
602                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
603                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
604                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
605                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
606                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
607                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
608                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
609                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
610                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
611                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
612                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
613                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
614                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
615                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
616                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
617                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
618                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
619                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
620                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
621                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
622                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
623                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
624                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
625                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
626                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
627                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
628                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
629                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
630                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
631                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
632                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
633                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
634                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
635                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
636                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
637                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
638                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
639                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
640                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
641                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
642                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
643                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
644                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
645                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
646                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
647                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
648                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
649                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
650                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
651                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
652                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
653                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
654                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
655                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
656                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
657                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
658                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
659                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
660                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
661                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
662                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
663                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
664                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
665                     	;--cdb--S:LApp_Memory.aligned_alloc._aligned_alloc_size_10000_29$size$2710$29({2}SI:U),E,0,0
666                     	;--cdb--S:LApp_Memory.aligned_alloc._aligned_alloc_alignment_10000_29$alignment$2710$29({2}SI:U),E,0,0
667                     	;--cdb--S:G$sIIC$0$0({1}ST__00000003(T:FApp_Memory$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),E,0,0
668                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
669                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000004(T:FApp_Memory$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),E,0,0
670                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000005(T:FApp_Memory$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),E,0,0
671                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000006(T:FApp_Memory$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),E,0,0
672                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),E,0,0
673                     	;--cdb--S:G$sTest$0$0({19}ST__00000007(T:FApp_Memory$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
674                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
675                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),E,0,0
676                     	;--cdb--S:G$eVersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),E,0,0
677                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),E,0,0
678                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),E,0,0
679                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
680                     	;--cdb--S:G$sButton$0$0({2}ST__00000008(T:FApp_Memory$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
681                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000009(T:FApp_Memory$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
682                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),E,0,0
683                     	;--cdb--S:G$sLVD$0$0({5}ST__00000010(T:FApp_Memory$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),E,0,0
684                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
685                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
686                     	;--cdb--S:G$eErr$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),E,0,0
687                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),E,0,0
688                     	;--cdb--S:G$sADC$0$0({45}ST__00000011(T:FApp_Memory$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
689                     	;--cdb--S:G$eADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),E,0,0
690                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),E,0,0
691                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),E,0,0
692                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
693                     	;--cdb--S:G$sMemory$0$0({23}ST__00000012(T:FApp_Memory$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),E,0,0
694                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000013(T:FApp_Memory$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),E,0,0
695                     	;--cdb--S:G$sActual$0$0({5}ST__00000015(T:FApp_Memory$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
696                     	;--cdb--S:G$sForecast$0$0({26}ST__00000016(T:FApp_Memory$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),E,0,0
697                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000014(T:FApp_Memory$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),E,0,0
698                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),E,0,0
699                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000017(T:FApp_Memory$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),E,0,0
700                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),E,0,0
701                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),E,0,0
702                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000018(T:FApp_Memory$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),E,0,0
703                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),E,0,0
704                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000019(T:FApp_Memory$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),E,0,0
705                     	;--cdb--S:G$NUM_CODE$0$0({22}DA11d,SI:U),D,0,0
706                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
707                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
708                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
709                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
710                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
711                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
712                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
713                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
714                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
715                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
716                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
717                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
718                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
719                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
720                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
721                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
722                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
723                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
724                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
725                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
726                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
727                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
728                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
729                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
730                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
731                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
732                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
733                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
734                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
735                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
736                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
737                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
738                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
739                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
740                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
741                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
742                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
743                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
744                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
745                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
746                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
747                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
748                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
749                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
750                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
751                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
752                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
753                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
754                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
755                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
756                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
757                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
758                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
759                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
760                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
761                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
762                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
763                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
764                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
765                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
766                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
767                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
768                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
769                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
770                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
771                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
772                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
773                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
774                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
775                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
776                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
777                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
778                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
779                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
780                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
781                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
782                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
783                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
784                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
785                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
786                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
787                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
788                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
789                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
790                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
791                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
792                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
793                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
794                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
795                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
796                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
797                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
798                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
799                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
800                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
801                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
802                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
803                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
804                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
805                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
806                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
807                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
808                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
809                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
810                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
811                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
812                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
813                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
814                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
815                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
816                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
817                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
818                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
819                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
820                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
821                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
822                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
823                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
824                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
825                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
826                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
827                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
828                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
829                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
830                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
831                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
832                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
833                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
834                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
835                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
836                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
837                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
838                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
839                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
840                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
841                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
842                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
843                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
844                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
845                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
846                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
847                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
848                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
849                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
850                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
851                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
852                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
853                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
854                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
855                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
856                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
857                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
858                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
859                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
860                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
861                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
862                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
863                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
864                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
865                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
866                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
867                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
868                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
869                     	;--cdb--S:G$TEMDATA$0$0({1}SC:U),I,0,0
870                     	;--cdb--S:LApp_Memory.MemoryTemp_E2Store._MemoryTemp_E2Store_addr_10000_440$addr$2710$440({1}SC:U),R,0,0,[r0x1096]
871                     	;--cdb--S:LApp_Memory.MemoryTemp_E2Store._MemoryTemp_E2Store_Write_Time_10000_440$Write_Time$2710$440({1}SC:U),R,0,0,[r0x1094]
872                     	;--cdb--S:LApp_Memory.MemoryTemp_E2Store._MemoryTemp_E2Store_DH_10000_440$DH$2710$440({1}SC:U),R,0,0,[r0x109A]
873                     	;--cdb--S:LApp_Memory.MemoryTemp_E2Store._MemoryTemp_E2Store_DL_10000_440$DL$2710$440({1}SC:U),R,0,0,[r0x1095]
874                     	;--cdb--S:LApp_Memory.MemoryTemp_E2Store._MemoryTemp_E2Store_Data_10000_440$Data$2710$440({2}SI:U),R,0,0,[r0x1097,r0x1099]
875                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
876                     	;--cdb--S:G$_FSR0L$0$0({0}:U),Z,0,0
877                     	;--cdb--S:G$_FSR0H$0$0({0}:U),Z,0,0
878                     	;--cdb--S:G$_INDF0$0$0({0}:U),Z,0,0
879                     	;--cdb--S:G$_POINC0$0$0({0}:U),Z,0,0
880                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
881                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
882                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
883                     	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
884                     ;--------------------------------------------------------
885                     ; external declarations
886                     ;--------------------------------------------------------
887                     	.globl	_I2C_ReadByte
888                     	.globl	_I2C_WriteByte
889                     	.globl	_Delay_ms
890                     	.globl	_FSR0
891                     	.globl	_FSR1
892                     	.globl	_FSR2
893                     	.globl	_ADCR
894                     	.globl	_sIIC
895                     	.globl	_BIE_Available_Addr
896                     	.globl	_sTIMx
897                     	.globl	_sUARTx
898                     	.globl	_sAutoBps
899                     	.globl	_eAutoBps_Status
900                     	.globl	_sTest
901                     	.globl	_eTempUnit
902                     	.globl	_eBondingTempUnit
903                     	.globl	_eVersionCode
904                     	.globl	_eMeasureMode
905                     	.globl	_eBinding_Status
906                     	.globl	_Enter_PrepareSleep_Flag
907                     	.globl	_sButton
908                     	.globl	_sTimeStamp
909                     	.globl	_eButton_Status
910                     	.globl	_sLVD
911                     	.globl	_UnitExchangeCompleted
912                     	.globl	_ERR
913                     	.globl	_eErr
914                     	.globl	_eDisplay_Interfaces
915                     	.globl	_sADC
916                     	.globl	_eADCChannel
917                     	.globl	_eSystem_Mode
918                     	.globl	_eBuzzer_Status
919                     	.globl	_Flag_No_Buzzer
920                     	.globl	_sActual
921                     	.globl	_sForecast
922                     	.globl	_sTempCal
923                     	.globl	_eMeas_Status
924                     	.globl	_sActual_Forecast
925                     	.globl	_eTo_Actual_Ways
926                     	.globl	_eBle_Sta
927                     	.globl	_sBleStatus
928                     	.globl	_eBacklight_Status
929                     	.globl	_sBacklight
930                     	.globl	_NUM_CODE
931                     	.globl	_R_Table
932                     	.globl	_CloseTable
933                     
934                     	.globl STK07
935                     	.globl STK07_SAVE
936                     	.globl STK06
937                     	.globl STK06_SAVE
938                     	.globl STK05
939                     	.globl STK05_SAVE
940                     	.globl STK04
941                     	.globl STK04_SAVE
942                     	.globl STK03
943                     	.globl STK03_SAVE
944                     	.globl STK02
945                     	.globl STK02_SAVE
946                     	.globl STK01
947                     	.globl STK01_SAVE
948                     	.globl STK00
949                     	.globl STK00_SAVE
950                     ;--------------------------------------------------------
951                     ; global -1 declarations
952                     ;--------------------------------------------------------
953                     	.globl	_sMemory
954                     	.globl	_sMemoryFlag
955                     
956                     	.globl	_memcpy
957                     ;--------------------------------------------------------
958                     ; global -2 definitions
959                     ;--------------------------------------------------------
960                     	.area DSEG(DATA)
961 02AF -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- _sMemory:	.ds	23
962                     
963                     	.area DSEG(DATA)
964 02C6 -- -- --       _sMemoryFlag:	.ds	3
965                     
966                     	.area DSEG(DATA)
967                     __SWTGTID	.equ	0xA6A6B2CF
968                     
969                     	.area DSEG(DATA)
970                     _INDF0	.equ	0x0
971                     
972                     	.area DSEG(DATA)
973                     _POINC0	.equ	0x1
974                     
975                     	.area DSEG(DATA)
976                     _PODEC0	.equ	0x2
977                     
978                     	.area DSEG(DATA)
979                     _PRINC0	.equ	0x3
980                     
981                     	.area DSEG(DATA)
982                     _PLUSW0	.equ	0x4
983                     
984                     	.area DSEG(DATA)
985                     _INDF1	.equ	0x5
986                     
987                     	.area DSEG(DATA)
988                     _POINC1	.equ	0x6
989                     
990                     	.area DSEG(DATA)
991                     _PODEC1	.equ	0x7
992                     
993                     	.area DSEG(DATA)
994                     _PRINC1	.equ	0x8
995                     
996                     	.area DSEG(DATA)
997                     _PLUSW1	.equ	0x9
998                     
999                     	.area DSEG(DATA)
1000                     _INDF2	.equ	0xA
1001                     
1002                     	.area DSEG(DATA)
1003                     _POINC2	.equ	0xB
1004                     
1005                     	.area DSEG(DATA)
1006                     _PODEC2	.equ	0xC
1007                     
1008                     	.area DSEG(DATA)
1009                     _PRINC2	.equ	0xD
1010                     
1011                     	.area DSEG(DATA)
1012                     _PLUSW2	.equ	0xE
1013                     
1014                     	.area DSEG(DATA)
1015                     _FSR0H	.equ	0xF
1016                     
1017                     	.area DSEG(DATA)
1018                     _FSR0L	.equ	0x10
1019                     
1020                     	.area DSEG(DATA)
1021                     _FSR1H	.equ	0x11
1022                     
1023                     	.area DSEG(DATA)
1024                     _FSR1L	.equ	0x12
1025                     
1026                     	.area DSEG(DATA)
1027                     _FSR2H	.equ	0x13
1028                     
1029                     	.area DSEG(DATA)
1030                     _FSR2L	.equ	0x14
1031                     
1032                     	.area DSEG(DATA)
1033                     _TOSH	.equ	0x16
1034                     
1035                     	.area DSEG(DATA)
1036                     _TOSL	.equ	0x17
1037                     
1038                     	.area DSEG(DATA)
1039                     _SKCN	.equ	0x18
1040                     
1041                     	.area DSEG(DATA)
1042                     _PCLATH	.equ	0x1A
1043                     
1044                     	.area DSEG(DATA)
1045                     _PCLATL	.equ	0x1B
1046                     
1047                     	.area DSEG(DATA)
1048                     _TBLPTRH	.equ	0x1D
1049                     
1050                     	.area DSEG(DATA)
1051                     _TBLPTRL	.equ	0x1E
1052                     
1053                     	.area DSEG(DATA)
1054                     _TBLDH	.equ	0x1F
1055                     
1056                     	.area DSEG(DATA)
1057                     _TBLDL	.equ	0x20
1058                     
1059                     	.area DSEG(DATA)
1060                     _PRODH	.equ	0x21
1061                     
1062                     	.area DSEG(DATA)
1063                     _PRODL	.equ	0x22
1064                     
1065                     	.area DSEG(DATA)
1066                     _INTE0	.equ	0x23
1067                     
1068                     	.area DSEG(DATA)
1069                     _INTE1	.equ	0x24
1070                     
1071                     	.area DSEG(DATA)
1072                     _INTE2	.equ	0x25
1073                     
1074                     	.area DSEG(DATA)
1075                     _INTF0	.equ	0x26
1076                     
1077                     	.area DSEG(DATA)
1078                     _INTF1	.equ	0x27
1079                     
1080                     	.area DSEG(DATA)
1081                     _INTF2	.equ	0x28
1082                     
1083                     	.area DSEG(DATA)
1084                     _WREG	.equ	0x29
1085                     
1086                     	.area DSEG(DATA)
1087                     _BSRCN	.equ	0x2A
1088                     
1089                     	.area DSEG(DATA)
1090                     _STATUS	.equ	0x2B
1091                     
1092                     	.area DSEG(DATA)
1093                     _MSTAT	.equ	0x2B
1094                     
1095                     	.area DSEG(DATA)
1096                     _PSTAT	.equ	0x2C
1097                     
1098                     	.area DSEG(DATA)
1099                     _BIECN	.equ	0x2E
1100                     
1101                     	.area DSEG(DATA)
1102                     _BIEARH	.equ	0x2F
1103                     
1104                     	.area DSEG(DATA)
1105                     _BIEARL	.equ	0x30
1106                     
1107                     	.area DSEG(DATA)
1108                     _BIEDRH	.equ	0x31
1109                     
1110                     	.area DSEG(DATA)
1111                     _BIEDRL	.equ	0x32
1112                     
1113                     	.area DSEG(DATA)
1114                     _PWRCN	.equ	0x33
1115                     
1116                     	.area DSEG(DATA)
1117                     _OSCCN0	.equ	0x34
1118                     
1119                     	.area DSEG(DATA)
1120                     _OSCCN1	.equ	0x35
1121                     
1122                     	.area DSEG(DATA)
1123                     _OSCCN2	.equ	0x36
1124                     
1125                     	.area DSEG(DATA)
1126                     _CSFCN0	.equ	0x37
1127                     
1128                     	.area DSEG(DATA)
1129                     _CSFCN1	.equ	0x38
1130                     
1131                     	.area DSEG(DATA)
1132                     _WDTCN	.equ	0x39
1133                     
1134                     	.area DSEG(DATA)
1135                     _AD1H	.equ	0x3A
1136                     
1137                     	.area DSEG(DATA)
1138                     _AD1M	.equ	0x3B
1139                     
1140                     	.area DSEG(DATA)
1141                     _AD1L	.equ	0x3C
1142                     
1143                     	.area DSEG(DATA)
1144                     _AD1CN0	.equ	0x3D
1145                     
1146                     	.area DSEG(DATA)
1147                     _AD1CN1	.equ	0x3E
1148                     
1149                     	.area DSEG(DATA)
1150                     _AD1CN2	.equ	0x3F
1151                     
1152                     	.area DSEG(DATA)
1153                     _AD1CN3	.equ	0x40
1154                     
1155                     	.area DSEG(DATA)
1156                     _AD1CN4	.equ	0x41
1157                     
1158                     	.area DSEG(DATA)
1159                     _AD1CN5	.equ	0x42
1160                     
1161                     	.area DSEG(DATA)
1162                     _LVDCN	.equ	0x43
1163                     
1164                     	.area DSEG(DATA)
1165                     _TMA1CN	.equ	0x44
1166                     
1167                     	.area DSEG(DATA)
1168                     _TMA1R	.equ	0x45
1169                     
1170                     	.area DSEG(DATA)
1171                     _TMA1C	.equ	0x46
1172                     
1173                     	.area DSEG(DATA)
1174                     _TB1FLAG	.equ	0x47
1175                     
1176                     	.area DSEG(DATA)
1177                     _TB1CN0	.equ	0x48
1178                     
1179                     	.area DSEG(DATA)
1180                     _TB1CN1	.equ	0x49
1181                     
1182                     	.area DSEG(DATA)
1183                     _TB1RH	.equ	0x4A
1184                     
1185                     	.area DSEG(DATA)
1186                     _TB1RL	.equ	0x4B
1187                     
1188                     	.area DSEG(DATA)
1189                     _TB1C0H	.equ	0x4C
1190                     
1191                     	.area DSEG(DATA)
1192                     _TB1C0L	.equ	0x4D
1193                     
1194                     	.area DSEG(DATA)
1195                     _TB1C1H	.equ	0x4E
1196                     
1197                     	.area DSEG(DATA)
1198                     _TB1C1L	.equ	0x4F
1199                     
1200                     	.area DSEG(DATA)
1201                     _TB1C2H	.equ	0x50
1202                     
1203                     	.area DSEG(DATA)
1204                     _TB1C2L	.equ	0x51
1205                     
1206                     	.area DSEG(DATA)
1207                     _TC1CN0	.equ	0x52
1208                     
1209                     	.area DSEG(DATA)
1210                     _PT1	.equ	0x53
1211                     
1212                     	.area DSEG(DATA)
1213                     _TRISC1	.equ	0x54
1214                     
1215                     	.area DSEG(DATA)
1216                     _PT1DA	.equ	0x55
1217                     
1218                     	.area DSEG(DATA)
1219                     _PT1PU	.equ	0x56
1220                     
1221                     	.area DSEG(DATA)
1222                     _PT1M1	.equ	0x57
1223                     
1224                     	.area DSEG(DATA)
1225                     _PT1INT	.equ	0x58
1226                     
1227                     	.area DSEG(DATA)
1228                     _PT1INTE	.equ	0x59
1229                     
1230                     	.area DSEG(DATA)
1231                     _PT1INTF	.equ	0x5A
1232                     
1233                     	.area DSEG(DATA)
1234                     _PT2	.equ	0x5B
1235                     
1236                     	.area DSEG(DATA)
1237                     _TRISC2	.equ	0x5C
1238                     
1239                     	.area DSEG(DATA)
1240                     _PT2DA	.equ	0x5D
1241                     
1242                     	.area DSEG(DATA)
1243                     _PT2PU	.equ	0x5E
1244                     
1245                     	.area DSEG(DATA)
1246                     _PT2INT	.equ	0x5F
1247                     
1248                     	.area DSEG(DATA)
1249                     _PT2INTE	.equ	0x60
1250                     
1251                     	.area DSEG(DATA)
1252                     _PT2INTF	.equ	0x61
1253                     
1254                     	.area DSEG(DATA)
1255                     _PT6	.equ	0x62
1256                     
1257                     	.area DSEG(DATA)
1258                     _TRISC6	.equ	0x63
1259                     
1260                     	.area DSEG(DATA)
1261                     _PT6DA	.equ	0x64
1262                     
1263                     	.area DSEG(DATA)
1264                     _PT6PU	.equ	0x65
1265                     
1266                     	.area DSEG(DATA)
1267                     _PT7	.equ	0x66
1268                     
1269                     	.area DSEG(DATA)
1270                     _TRISC7	.equ	0x67
1271                     
1272                     	.area DSEG(DATA)
1273                     _PT7DA	.equ	0x68
1274                     
1275                     	.area DSEG(DATA)
1276                     _PT7PU	.equ	0x69
1277                     
1278                     	.area DSEG(DATA)
1279                     _PT8	.equ	0x6A
1280                     
1281                     	.area DSEG(DATA)
1282                     _TRISC8	.equ	0x6B
1283                     
1284                     	.area DSEG(DATA)
1285                     _PT8DA	.equ	0x6C
1286                     
1287                     	.area DSEG(DATA)
1288                     _PT8PU	.equ	0x6D
1289                     
1290                     	.area DSEG(DATA)
1291                     _SSPCN0	.equ	0x6E
1292                     
1293                     	.area DSEG(DATA)
1294                     _SSPSTA0	.equ	0x6F
1295                     
1296                     	.area DSEG(DATA)
1297                     _SSPBUF0	.equ	0x70
1298                     
1299                     	.area DSEG(DATA)
1300                     _CFG0	.equ	0x71
1301                     
1302                     	.area DSEG(DATA)
1303                     _ACT0	.equ	0x72
1304                     
1305                     	.area DSEG(DATA)
1306                     _STA0	.equ	0x73
1307                     
1308                     	.area DSEG(DATA)
1309                     _CRG0	.equ	0x74
1310                     
1311                     	.area DSEG(DATA)
1312                     _TOC0	.equ	0x75
1313                     
1314                     	.area DSEG(DATA)
1315                     _RDB0	.equ	0x76
1316                     
1317                     	.area DSEG(DATA)
1318                     _TDB0	.equ	0x77
1319                     
1320                     	.area DSEG(DATA)
1321                     _SID0	.equ	0x78
1322                     
1323                     	.area DSEG(DATA)
1324                     _UR0CN	.equ	0x79
1325                     
1326                     	.area DSEG(DATA)
1327                     _UR0STA	.equ	0x7A
1328                     
1329                     	.area DSEG(DATA)
1330                     _BA0CN	.equ	0x7B
1331                     
1332                     	.area DSEG(DATA)
1333                     _BG0RH	.equ	0x7C
1334                     
1335                     	.area DSEG(DATA)
1336                     _BG0RL	.equ	0x7D
1337                     
1338                     	.area DSEG(DATA)
1339                     _TX0R	.equ	0x7E
1340                     
1341                     	.area DSEG(DATA)
1342                     _RC0REG	.equ	0x7F
1343                     
1344                     	.area DSEG(DATA)
1345                     _LCDCN1	.equ	0x180
1346                     
1347                     	.area DSEG(DATA)
1348                     _LCDCN2	.equ	0x181
1349                     
1350                     	.area DSEG(DATA)
1351                     _LCDCN3	.equ	0x182
1352                     
1353                     	.area DSEG(DATA)
1354                     _LCDCN4	.equ	0x183
1355                     
1356                     	.area DSEG(DATA)
1357                     _LCDCN5	.equ	0x184
1358                     
1359                     	.area DSEG(DATA)
1360                     _LCDCN6	.equ	0x185
1361                     
1362                     	.area DSEG(DATA)
1363                     _LCDCN7	.equ	0x186
1364                     
1365                     	.area DSEG(DATA)
1366                     _LCDCN8	.equ	0x187
1367                     
1368                     	.area DSEG(DATA)
1369                     _LCD0	.equ	0x188
1370                     
1371                     	.area DSEG(DATA)
1372                     _LCD1	.equ	0x189
1373                     
1374                     	.area DSEG(DATA)
1375                     _LCD2	.equ	0x18A
1376                     
1377                     	.area DSEG(DATA)
1378                     _LCD3	.equ	0x18B
1379                     
1380                     	.area DSEG(DATA)
1381                     _LCD4	.equ	0x18C
1382                     
1383                     	.area DSEG(DATA)
1384                     _LCD5	.equ	0x18D
1385                     
1386                     	.area DSEG(DATA)
1387                     _LCD6	.equ	0x18E
1388                     
1389                     	.area DSEG(DATA)
1390                     _LCD7	.equ	0x18F
1391                     
1392                     	.area DSEG(DATA)
1393                     _LCD8	.equ	0x190
1394                     
1395                     	.area DSEG(DATA)
1396                     _LCD9	.equ	0x191
1397                     
1398                     	.area DSEG(DATA)
1399                     _UR2CN	.equ	0x192
1400                     
1401                     	.area DSEG(DATA)
1402                     _UR2STA	.equ	0x193
1403                     
1404                     	.area DSEG(DATA)
1405                     _BA2CN	.equ	0x194
1406                     
1407                     	.area DSEG(DATA)
1408                     _BG2RH	.equ	0x195
1409                     
1410                     	.area DSEG(DATA)
1411                     _BG2RL	.equ	0x196
1412                     
1413                     	.area DSEG(DATA)
1414                     _TX2R	.equ	0x197
1415                     
1416                     	.area DSEG(DATA)
1417                     _RC2REG	.equ	0x198
1418                     
1419                     	.area DSEG(DATA)
1420                     _TMA2R	.equ	0x1E8
1421                     
1422                     	.area DSEG(DATA)
1423                     _TMA2C	.equ	0x1E9
1424                     
1425                     	.area DSEG(DATA)
1426                     _LEDCN	.equ	0x1EA
1427                     
1428                     	.area DSEG(DATA)
1429                     _IQ0	.equ	0x1EB
1430                     
1431                     	.area DSEG(DATA)
1432                     _IQ1	.equ	0x1EC
1433                     
1434                     	.area DSEG(DATA)
1435                     _DGCON1	.equ	0x1ED
1436                     
1437                     	.area DSEG(DATA)
1438                     _DGCON2	.equ	0x1EE
1439                     
1440                     	.area DSEG(DATA)
1441                     _ADCRH	.equ	0x3A
1442                     
1443                     	.area DSEG(DATA)
1444                     _ADCRM	.equ	0x3B
1445                     
1446                     	.area DSEG(DATA)
1447                     _ADCRL	.equ	0x3C
1448                     
1449                     	.area DSEG(DATA)
1450                     _TEMDATA	.equ	0x2E0
1451                     
1452                     ;--------------------------------------------------------
1453                     ; absolute symbol definitions
1454                     ;--------------------------------------------------------
1455                     ;--------------------------------------------------------
1456                     ; compiler-defined variables
1457                     ;--------------------------------------------------------
1458                     	.area IDATA (DATA,REL,CON); pre-def
1459                     	.area IDATAROM (CODE,REL,CON); pre-def
1460                     	.area UDATA (DATA,REL,CON); pre-def
1461                     	.area UDATA (DATA,REL,CON) ;UDL_App_Memory_0	udata
1462 @FSR2-CurrentOffset+001 --         r0x108C:	.ds	1
1463 @FSR2-CurrentOffset+002 --         r0x108E:	.ds	1
1464 0000 --             r0x1094:	.ds	1
1465 0000 --             r0x1095:	.ds	1
1466 0000 --             r0x1096:	.ds	1
1467 0000 --             r0x1097:	.ds	1
1468 0000 --             r0x109A:	.ds	1
1469                     	.area LOCALSTK (STK); local stack var
1470                     	.globl _I2C_WriteByte_STK00
1471                     ;--------------------------------------------------------
1472                     ; initialized data
1473                     ;--------------------------------------------------------
1474                     ;--------------------------------------------------------
1475                     ; initialized data - mirror
1476                     ;--------------------------------------------------------
1477                     	;--cdb--D:S:G$s_Forecast$0$0({26}ST__00000016(T:FApp_Memory$__00000016[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1478                     	;--cdb--D:S:G$div_t$0$0({4}ST__00000000(T:FApp_Memory$__00000000[({0}S:S$quot$0$0({2}SI:S),Z,0,0)({2}S:S$rem$0$0({2}SI:S),Z,0,0)]):S),Z,0,0
1479                     	;--cdb--D:S:G$e_MeasureMode$0$0({1}SC:U:ENUM_NONAME|Bath_Mode=3|Rectal_Mode=2|Underarm_Mode=1|Oral_Mode=0),Z,0,0
1480                     	;--cdb--D:S:G$e_Button_Status$0$0({1}SC:U:ENUM_NONAME|Button_Lift=2|Button_Press=1|Button_Debouncing=0),Z,0,0
1481                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1482                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1483                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1484                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1485                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1486                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1487                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1488                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1489                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1490                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1491                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1492                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1493                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1494                     	;--cdb--D:S:G$e_VersionCode$0$0({1}SC:S:ENUM_NONAME|VC_DispOn=1|VC_DispOff=0),Z,0,0
1495                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1496                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1497                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1498                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1499                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1500                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1501                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1502                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1503                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1504                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1505                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1506                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1507                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1508                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1509                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1510                     	;--cdb--D:S:G$uint32$0$0({4}SL:UL),Z,0,0
1511                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1512                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1513                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1514                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1515                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1516                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1517                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1518                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1519                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1520                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1521                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1522                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1523                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1524                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1525                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1526                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1527                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1528                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1529                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1530                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1531                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1532                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1533                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1534                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1535                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1536                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1537                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1538                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1539                     	;--cdb--D:S:G$uint16$0$0({2}SI:U),Z,0,0
1540                     	;--cdb--D:S:G$e_Buzzer_Status$0$0({1}SC:U:ENUM_NONAME|Buzzer_Er1Er2=5|Buzzer_Forecast_To_Actual=4|Buzzer_MeasuredTempActual=3|Buzzer_MeasuredTempForecast=2|Buzzer_PowerOnOff=1|Buzzer_Silent=0),Z,0,0
1541                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1542                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1543                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1544                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1545                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1546                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1547                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1548                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1549                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1550                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1551                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1552                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1553                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1554                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1555                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1556                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1557                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1558                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1559                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1560                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1561                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1562                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1563                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1564                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1565                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1566                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1567                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1568                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1569                     	;--cdb--D:S:G$uint64$0$0({8}SI:UE),Z,0,0
1570                     	;--cdb--D:S:G$s_Actual$0$0({5}ST__00000015(T:FApp_Memory$__00000015[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1571                     	;--cdb--D:S:G$e_Meas_Status$0$0({1}SC:U:ENUM_NONAME|Meas_DataUpdate=4|Meas_ForecastMeasuring=3|Meas_ActualMeasuring=2|Meas_StartConditon=1|Meas_Get_TEMP=0),Z,0,0
1572                     	;--cdb--D:S:G$e_System_Mode$0$0({1}SC:U:ENUM_NONAME|Normal=3|Prepare_Normal=2|Sleep=1|Prepare_Sleep=0),Z,0,0
1573                     	;--cdb--D:S:G$e_Backlight_Status$0$0({1}SC:U:ENUM_NONAME|MeasuredTemp_Backlight=4|TempDetecting_Backlight=3|MemTemp_Backlight=2|All_Backlight=1|No_Backlight=0),Z,0,0
1574                     	;--cdb--D:S:G$s_TIMx$0$0({13}ST__00000004(T:FApp_Memory$__00000004[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1575                     	;--cdb--D:S:G$e_To_Actual_Ways$0$0({1}SC:U:ENUM_NONAME|To_Actual_3Min=90|To_Actual_Immediately=165),Z,0,0
1576                     	;--cdb--D:S:G$e_ADCChannel$0$0({1}SC:S:ENUM_NONAME|AI14_AI15=1|AI2_AI3=0),Z,0,0
1577                     	;--cdb--D:S:G$s_Memory$0$0({23}ST__00000012(T:FApp_Memory$__00000012[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1578                     	;--cdb--D:S:G$s_Button$0$0({2}ST__00000008(T:FApp_Memory$__00000008[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_1S$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1579                     	;--cdb--D:S:G$s_Backlight$0$0({1}ST__00000019(T:FApp_Memory$__00000019[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]):S),Z,0,0
1580                     	;--cdb--D:S:G$e_Binding_Status$0$0({1}SC:U:ENUM_NONAME|FahrenheitFirst_NonSwitchable=3|FahrenheitFirst_Switchable=2|CentigradeFirst_NonSwitchable=1|CentigradeFirst_Switchable=0),Z,0,0
1581                     	;--cdb--D:S:G$e_AutoBps_Status$0$0({1}SC:U:ENUM_NONAME|AutoBps_Searched=2|AutoBps_Searching=1|AutoBps_Init=0),Z,0,0
1582                     	;--cdb--D:S:G$s_TimeStamp$0$0({42}ST__00000009(T:FApp_Memory$__00000009[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1583                     	;--cdb--D:S:G$s_BleStatus$0$0({60}ST__00000018(T:FApp_Memory$__00000018[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$AutoBps_OnOff$0$0({1}SB5$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]):S),Z,0,0
1584                     	;--cdb--D:S:G$s_Test$0$0({19}ST__00000007(T:FApp_Memory$__00000007[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]):S),Z,0,0
1585                     	;--cdb--D:S:G$s_TempCal$0$0({14}ST__00000014(T:FApp_Memory$__00000014[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]):S),Z,0,0
1586                     	;--cdb--D:S:G$ldiv_t$0$0({8}ST__00000001(T:FApp_Memory$__00000001[({0}S:S$quot$0$0({4}SL:SL),Z,0,0)({4}S:S$rem$0$0({4}SL:SL),Z,0,0)]):S),Z,0,0
1587                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1588                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1589                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1590                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1591                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1592                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1593                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1594                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1595                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1596                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1597                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1598                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1599                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1600                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1601                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1602                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1603                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1604                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1605                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1606                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1607                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1608                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1609                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1610                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1611                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1612                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1613                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1614                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1615                     	;--cdb--D:S:G$int8$0$0({1}SC:S),Z,0,0
1616                     	;--cdb--D:S:G$s_UARTx$0$0({15}ST__00000005(T:FApp_Memory$__00000005[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]):S),Z,0,0
1617                     	;--cdb--D:S:G$size_t$0$0({2}SI:U),Z,0,0
1618                     	;--cdb--D:S:G$eBleModeTask$0$0({1}SC:U:ENUM_NONAME|Ble_TimeoutErr=7|Ble_LinkErr=6|Ble_UploadData=5|Ble_Idle=4|Ble_Advertising=3|Ble_Disable=2|Ble_DeviceInfo=1|Ble_Standby=0),Z,0,0
1619                     	;--cdb--D:S:G$s_AutoBps$0$0({5}ST__00000006(T:FApp_Memory$__00000006[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1620                     	;--cdb--D:S:G$s_ADC$0$0({45}ST__00000011(T:FApp_Memory$__00000011[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]):S),Z,0,0
1621                     	;--cdb--D:S:G$e_Display$0$0({1}SC:U:ENUM_NONAME|Display_PreCalibration=19|Display_SleepMode=18|Display_MeasuredTemperature=17|Display_ERR=16|Display_TemperatureDetecting=15|Display_Binding=14|Display_ModeExchange=13|Display_CurrentMode=12|Display_MemoryTemperatureValue=11|Display_MemoryTemperatureNumber=10|Display_RecentTemperature=9|Display_CalibrationOK=8|Display_Calibration=7|Display_Off=6|Display_Code=5|Display_Version=4|Display_UnitExchange=3|Display_All=2|Display_LowPower=1|Display_PowerOn=0),Z,0,0
1622                     	;--cdb--D:S:G$s_IIC$0$0({1}ST__00000003(T:FApp_Memory$__00000003[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]):S),Z,0,0
1623                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1624                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1625                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1626                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1627                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1628                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1629                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1630                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1631                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1632                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1633                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1634                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1635                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1636                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1637                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1638                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1639                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1640                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1641                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1642                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1643                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1644                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1645                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1646                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1647                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1648                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1649                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1650                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1651                     	;--cdb--D:S:G$int32$0$0({4}SL:SL),Z,0,0
1652                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1653                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1654                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1655                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1656                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1657                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1658                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1659                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1660                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1661                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1662                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1663                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1664                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1665                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1666                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1667                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1668                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1669                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1670                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1671                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1672                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1673                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1674                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1675                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1676                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1677                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1678                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1679                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1680                     	;--cdb--D:S:G$int16$0$0({2}SI:S),Z,0,0
1681                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1682                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1683                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1684                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1685                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1686                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1687                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1688                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1689                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1690                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1691                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1692                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1693                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1694                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1695                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1696                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1697                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1698                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1699                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1700                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1701                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1702                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1703                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1704                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1705                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1706                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1707                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1708                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1709                     	;--cdb--D:S:G$int64$0$0({8}SI:SE),Z,0,0
1710                     	;--cdb--D:S:G$s_LVD$0$0({5}ST__00000010(T:FApp_Memory$__00000010[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]):S),Z,0,0
1711                     	;--cdb--D:S:G$s_Actual_Forecast$0$0({15}ST__00000017(T:FApp_Memory$__00000017[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]):S),Z,0,0
1712                     	;--cdb--D:S:G$s_MemoryFlag$0$0({3}ST__00000013(T:FApp_Memory$__00000013[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]):S),Z,0,0
1713                     	;--cdb--D:S:G$wchar_t$0$0({4}SL:UL),Z,0,0
1714                     	;--cdb--D:S:G$e_Err$0$0({1}SC:U:ENUM_NONAME|Err_Num=9|Err=8|Err7=7|Err6=6|Err5=5|Err4=4|Err3=3|Err2=2|Err1=1|Err0=0),Z,0,0
1715                     	;--cdb--D:S:G$lldiv_t$0$0({16}ST__00000002(T:FApp_Memory$__00000002[({0}S:S$quot$0$0({8}SI:SE),Z,0,0)({8}S:S$rem$0$0({8}SI:SE),Z,0,0)]):S),Z,0,0
1716                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1717                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1718                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1719                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1720                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1721                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1722                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1723                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1724                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1725                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1726                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1727                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1728                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1729                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1730                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1731                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1732                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1733                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1734                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1735                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1736                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1737                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1738                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1739                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1740                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1741                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1742                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1743                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1744                     	;--cdb--D:S:G$uint8$0$0({1}SC:U),Z,0,0
1745                     	;--cdb--D:S:G$e_TempUnit$0$0({1}SC:U:ENUM_NONAME|Fahrenheit=165|Centigrade=90),Z,0,0
1746                     	;Following is optimization info, 
1747                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1748                     	;--cdb--W:r0x1097:NULL+0:-1:1
1749                     	;--cdb--W:r0x1098:NULL+0:-1:1
1750                     	;--cdb--W:r0x1095:NULL+0:-1:1
1751                     	;--cdb--W:r0x1096:NULL+0:-1:1
1752                     	;--cdb--W:r0x1099:NULL+0:-1:1
1753                     	;--cdb--W:r0x1095:NULL+0:-1:0
1754                     	;--cdb--W:r0x1095:r0x1097+0:-1:0
1755                     	;--cdb--W:r0x1096:NULL+0:-1:0
1756                     	;--cdb--W:r0x1097:STK00+0:-1:0
1757                     	;--cdb--W:r0x108C:NULL+0:-1:0
1758                     	;--cdb--W:r0x108D:NULL+0:-1:0
1759                     	;--cdb--W:r0x108C:NULL+0:-1:1
1760                     	;--cdb--W:r0x108D:NULL+0:-1:1
1761                     	;--cdb--W:r0x108E:NULL+0:-1:1
1762                     	;--c2db--RNG$_MemoryTemp_E2Store_addr_10000_440$342$361
1763                     	;--c2db--RNG$_MemoryTemp_E2Store_Write_Time_10000_440$255$281
1764                     	;--c2db--RNG$_MemoryTemp_E2Store_DH_10000_440$306$329
1765                     	;--c2db--RNG$_MemoryTemp_E2Store_DL_10000_440$306$361
1766                     	;--c2db--RNG$_MemoryTemp_E2Store_Data_10000_440$304$309
1767                     	END
