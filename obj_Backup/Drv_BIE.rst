001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : open source ANSI-C Compiler modified for HYCON CPU
003                     ; Version 4.0.2 #65b408c47 (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"C:\Users\Administrator\Desktop\MT_Forecast"
008                     ;;	.file	".\scr\Drv_BIE.c"
009                     	.module Drv_BIE
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FDrv_BIE$__00000000[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
012                     	;--cdb--T:FDrv_BIE$__00000010[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
013                     	;--cdb--T:FDrv_BIE$__00000001[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
014                     	;--cdb--T:FDrv_BIE$__00000011[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
015                     	;--cdb--T:FDrv_BIE$__00000002[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
016                     	;--cdb--T:FDrv_BIE$__00000012[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
017                     	;--cdb--T:FDrv_BIE$__00000003[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({2}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
018                     	;--cdb--T:FDrv_BIE$__00000013[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
019                     	;--cdb--T:FDrv_BIE$__00000004[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
020                     	;--cdb--T:FDrv_BIE$__00000014[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
021                     	;--cdb--T:FDrv_BIE$__00000005[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_2S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_1S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB1$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB2$1:U),Z,0,0)]
022                     	;--cdb--T:FDrv_BIE$__00000015[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$F_Receive_First$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Port_Ble_PowerOn$0$0({1}SB6$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
023                     	;--cdb--T:FDrv_BIE$__00000006[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
024                     	;--cdb--T:FDrv_BIE$__00000016[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
025                     	;--cdb--T:FDrv_BIE$__00000007[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
026                     	;--cdb--T:FDrv_BIE$__00000008[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
027                     	;--cdb--T:FDrv_BIE$__00000009[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({20}DA10d,SI:U),Z,0,0)]
028                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
029                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
030                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
031                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
032                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
033                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
034                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
035                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
036                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
037                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
038                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
039                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
040                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
041                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
042                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
043                     	;--cdb--F:Drv_BIE:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
044                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
045                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
046                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
047                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
048                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
049                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
050                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
051                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
052                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
053                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
054                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
055                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
056                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
057                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
058                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
059                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
060                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
061                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
062                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
063                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
064                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
065                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
066                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
067                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
068                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
069                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
070                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
071                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
072                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
073                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
074                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
075                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
076                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
077                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
078                     	;--cdb--S:G$HY17P56WR3$0$0({2}DF,SC:U),C,0,0
079                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
080                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
081                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
082                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
083                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
084                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
085                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
086                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
087                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
088                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
089                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
090                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
091                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
092                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
093                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
095                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
096                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
097                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
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
125                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
126                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
127                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
128                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
129                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
130                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
131                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
132                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
133                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
134                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
135                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
136                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
137                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
138                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
139                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
140                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
141                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
142                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
143                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
150                     	;--cdb--F:Drv_BIE:G$BIE_Read$0$0({2}DF,SI:U),C,0,0,0,0,0
151                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
152                     	;--cdb--F:Drv_BIE:G$BIE_Write$0$0({2}DF,SC:U),C,0,0,0,0,0
153                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
154                     	;--cdb--F:Drv_BIE:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0,0,0,0
155                     ;--------------------------------------------------------
156                     ; overlayable items in internal ram 
157                     ;--------------------------------------------------------
158                     ;	udata_ovr
159                     .area CCODE (code,REL,CON) ; Drv_BIE-code 
160                     .globl _BIE_Polling
161                     
162                     ;--------------------------------------------------------
163                     	.FUNC _BIE_Polling:0:$C:_BIE_Read\
164                     :$L:r0x10A2:$L:r0x10A3
165                     ;--------------------------------------------------------
166                     ;	;.line	131; ".\scr\Drv_BIE.c"	for(BIE_Addr = 0;BIE_Addr < 64;BIE_Addr++)
167 13FC [00] [1] C482      _BIE_Polling:	;Function start
168 13FD [02] [1] 0C81      	CLRF	r0x10A2,0
169 13FE [02] [1] 0C80      	CLRF	r0x10A3,0
170                     _00130_DS_:
171                     ;	;.line	133; ".\scr\Drv_BIE.c"	if(BIE_Read(BIE_Addr) == 0xFFFF)
172 13FF [02] [1] 6480      	MVF	r0x10A3,0,0
173 1400 [02] [1] CDD3      	CALL	_BIE_Read
174                     	.CHKPARA _BIE_Read 1
175 1401 [02] [1] 2820      	ANDF	STK00,0,0
176 1402 [02] [1] 3C29      	INSZ	_WREG,0,0
177 1403 [02] [1] 7802      	JMP	_00131_DS_
178                     ;	;.line	135; ".\scr\Drv_BIE.c"	return BIE_Addr;
179 1404 [02] [1] 6481      	MVF	r0x10A2,0,0
180 1405 [02] [1] 7807      	JMP	_00132_DS_
181                     _00131_DS_:
182                     ;	;.line	131; ".\scr\Drv_BIE.c"	for(BIE_Addr = 0;BIE_Addr < 64;BIE_Addr++)
183 1406 [02] [1] 3A80      	INF	r0x10A3,1,0
184 1407 [02] [1] 6480      	MVF	r0x10A3,0,0
185 1408 [02] [1] 6681      	MVF	r0x10A2,1,0
186 1409 [02] [1] 063F      	MVL	0x3f
187 140A [02] [1] 6880      	CPSG	r0x10A3,0
188 140B [02] [1] 7FF3      	JMP	_00130_DS_
189                     ;	;.line	138; ".\scr\Drv_BIE.c"	return 0xFF;
190 140C [02] [1] 06FF      	MVL	0xff
191                     _00132_DS_:
192                     ;	;.line	139; ".\scr\Drv_BIE.c"	}
193 140D [00] [1] C4FE      	RET	
194                     ; exit point of _BIE_Polling
195                     	.ENDFUNC	_BIE_Polling
196                     ;--------------------------------------------------------
197                     
198                     .globl _BIE_Write
199                     
200                     ;--------------------------------------------------------
201                     	.FUNC _BIE_Write:3:$C:_AccuracyModeADCOFF:$C:_HY17P56WR3:$C:_ADCAccuracyMode:$C:_Delay_ms\
202                     :$L:r0x109B:$L:_BIE_Write_STK00:$L:_BIE_Write_STK01
203                     ;--------------------------------------------------------
204                     ;	;.line	77; ".\scr\Drv_BIE.c"	uint8 BIE_Write(uint8 Addr,uint8 DH,uint8 DL)
205 1581 [00] [2] C481      _BIE_Write:	;Function start
206 1582 [01] [2] 6680      	MVF	r0x109B,1,0
207                     ;	;.line	87; ".\scr\Drv_BIE.c"	AccuracyModeADCOFF();
208 1583 [01] [2] CE98      	CALL	_AccuracyModeADCOFF
209                     	.CHKPARA _AccuracyModeADCOFF 0
210                     ;	;.line	90; ".\scr\Drv_BIE.c"	tmp = HY17P56WR3(Addr,DH,DL);
211 1584 [01] [2] C602      	MVF	_BIE_Write_STK01,0,0
212 1585 [01] [2] F00D      	MVF	_HY17P56WR3_STK01,1,0
213 1586 [02] [2] C602      	MVF	_BIE_Write_STK00,0,0
214 1587 [02] [2] F00D      	MVF	_HY17P56WR3_STK00,1,0
215 1588 [03] [2] 6482      	MVF	r0x109B,0,0
216 1589 [03] [2] C9E5      	CALL	_HY17P56WR3
217                     	.CHKPARA _HY17P56WR3 3
218 158A [01] [X] 6680      	MVF	r0x109B,1,0
219                     ;	;.line	93; ".\scr\Drv_BIE.c"	ADCAccuracyMode();
220 158B [01] [X] CE82      	CALL	_ADCAccuracyMode
221                     	.CHKPARA _ADCAccuracyMode 0
222                     ;	;.line	97; ".\scr\Drv_BIE.c"	GIE_Enable();
223 158C [01] [X] 9E23      	BSF	_INTE0,7
224                     ;	;.line	99; ".\scr\Drv_BIE.c"	ADC_Enable();
225 158D [01] [X] 9E3D      	BSF	_AD1CN0,7
226                     ;	;.line	101; ".\scr\Drv_BIE.c"	ADC_CMFREnable();
227 158E [01] [X] 903D      	BSF	_AD1CN0,0
228                     ;	;.line	105; ".\scr\Drv_BIE.c"	ADC_OSRSelect(OSR_2048);
229 158F [01] [X] 643D      	MVF	_AD1CN0,0,0
230 1590 [01] [X] 01E1      	ANDL	0xe1
231 1591 [01] [X] 0208      	IORL	0x08
232 1592 [01] [X] 663D 0011 	MVF	_AD1CN0,1,0
233                     ;	;.line	114; ".\scr\Drv_BIE.c"	sADC.ADCCounts = 0;
234 1594 [01] [1] 0D10      	CLRF	(_sADC + 2),0
235                     ;	;.line	116; ".\scr\Drv_BIE.c"	Delay_ms(10);
236 1595 [01] [1] 060A      	MVL	0x0a
237 1596 [01] [1] CE23      	CALL	_Delay_ms
238                     	.CHKPARA _Delay_ms 1
239                     ;	;.line	118; ".\scr\Drv_BIE.c"	return tmp;
240 1597 [01] [1] 6480      	MVF	r0x109B,0,0
241                     ;	;.line	119; ".\scr\Drv_BIE.c"	}
242 1598 [00] [1] C4FD      	RET	
243                     ; exit point of _BIE_Write
244                     	.ENDFUNC	_BIE_Write
245                     ;--------------------------------------------------------
246                     
247                     .globl _BIE_Read
248                     
249                     ;--------------------------------------------------------
250                     	.FUNC _BIE_Read:1:$C:_Delay_ms\
251                     :$L:r0x1094:$L:r0x1097
252                     ;--------------------------------------------------------
253                     ;	;.line	24; ".\scr\Drv_BIE.c"	uint16 BIE_Read(uint8 Addr)
254 11D4 [00] [Z] C482      _BIE_Read:	;Function start
255 11D5 [02] [X] 6681      	MVF	r0x1094,1,0
256                     ;	;.line	33; ".\scr\Drv_BIE.c"	GIE_Disable();
257 11D6 [02] [X] 8E23      	BCF	_INTE0,7
258                     ;	;.line	35; ".\scr\Drv_BIE.c"	ADC_Disable();
259 11D7 [02] [X] 8E3D      	BCF	_AD1CN0,7
260                     ;	;.line	37; ".\scr\Drv_BIE.c"	BIEARL = Addr;
261 11D8 [02] [X] 6481      	MVF	r0x1094,0,0
262 11D9 [02] [X] 6630      	MVF	_BIEARL,1,0
263                     ;	;.line	39; ".\scr\Drv_BIE.c"	BIECN=BIECN | 0x01;
264 11DA [02] [X] 902E      	BSF	_BIECN,0
265                     _00105_DS_:
266                     ;	;.line	41; ".\scr\Drv_BIE.c"	while((BIECN& 0x01)==1);
267 11DB [02] [X] 642E      	MVF	_BIECN,0,0
268 11DC [02] [X] 0101      	ANDL	0x01
269 11DD [02] [X] 6681      	MVF	r0x1094,1,0
270 11DE [02] [X] 3081      	DCF	r0x1094,0,0
271 11DF [02] [X] 71        	BTSZ	_STATUS,0
272 11DF [02] FB        	JMP	_00105_DS_
273                     ;	;.line	43; ".\scr\Drv_BIE.c"	BIE_Data = (BIEDRH << 8) | BIEDRL;
274 11E0 [02] [X] 6431      	MVF	_BIEDRH,0,0
275 11E1 [02] [X] 6680      	MVF	r0x1097,1,0
276 11E2 [02] [X] 6432      	MVF	_BIEDRL,0,0
277 11E3 [02] [X] 6681      	MVF	r0x1094,1,0
278                     ;	;.line	45; ".\scr\Drv_BIE.c"	GIE_Enable();
279 11E4 [02] [X] 9E23      	BSF	_INTE0,7
280                     ;	;.line	47; ".\scr\Drv_BIE.c"	ADC_Enable();
281 11E5 [02] [X] 9E3D      	BSF	_AD1CN0,7
282                     ;	;.line	49; ".\scr\Drv_BIE.c"	ADC_CMFREnable();
283 11E6 [02] [X] 903D      	BSF	_AD1CN0,0
284                     ;	;.line	53; ".\scr\Drv_BIE.c"	ADC_OSRSelect(OSR_2048);
285 11E7 [02] [X] 643D      	MVF	_AD1CN0,0,0
286 11E8 [02] [X] 01E1      	ANDL	0xe1
287 11E9 [02] [X] 0208      	IORL	0x08
288 11EA [02] [X] 663D 0011 	MVF	_AD1CN0,1,0
289                     ;	;.line	64; ".\scr\Drv_BIE.c"	sADC.ADCCounts = 0;
290 11EC [02] [1] 0D10      	CLRF	(_sADC + 2),0
291                     ;	;.line	66; ".\scr\Drv_BIE.c"	Delay_ms(10);
292 11ED [02] [1] 060A      	MVL	0x0a
293 11EE [02] [1] C9CB      	CALL	_Delay_ms
294                     	.CHKPARA _Delay_ms 1
295                     ;	;.line	67; ".\scr\Drv_BIE.c"	return BIE_Data;
296 11EF [02] [1] C601      	MVF	r0x1094,0,0
297 11F0 [02] [1] F020      	MVF	STK00,1,0
298 11F1 [02] [1] 6480      	MVF	r0x1097,0,0
299                     ;	;.line	68; ".\scr\Drv_BIE.c"	}
300 11F2 [00] [1] C4FE      	RET	
301                     ; exit point of _BIE_Read
302                     	.ENDFUNC	_BIE_Read
303                     ;--------------------------------------------------------
304                     
305                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
306                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
307                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
308                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
309                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
310                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
311                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
312                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
313                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
314                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
315                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
316                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
317                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
318                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
319                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
320                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
321                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
322                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
323                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
324                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
325                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
326                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
327                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
328                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
329                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
330                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
331                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
332                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
333                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
334                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
335                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
336                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
337                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
338                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
339                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
340                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
341                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
342                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
343                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
344                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
345                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
346                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
347                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
348                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
349                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
350                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
351                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
352                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
353                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
354                     	;--cdb--S:G$HY17P56WR3$0$0({2}DF,SC:U),C,0,0
355                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
356                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
357                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
358                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
359                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
360                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
361                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
362                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
363                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
364                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
365                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
366                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
367                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
368                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
369                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
370                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
371                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
372                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
373                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
374                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
375                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
376                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
377                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
378                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
379                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
380                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
381                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
382                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
383                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
384                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
385                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
386                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
387                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
388                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
389                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
390                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
391                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
392                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
393                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
394                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
395                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
396                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
397                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
398                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
399                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
400                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
401                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
402                     	;--cdb--S:G$LCD_Disp$0$0({2}DF,SV:S),C,0,0
403                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
404                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
405                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
406                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
407                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
408                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
409                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
410                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
411                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
412                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
413                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
414                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
415                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
416                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
417                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
418                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
419                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
420                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
421                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
422                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
423                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
424                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
425                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
426                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
427                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
428                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
429                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
430                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
431                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
432                     	;--cdb--S:G$sIIC$0$0({1}ST__00000000:S),E,0,0
433                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
434                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000001:S),E,0,0
435                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000002:S),E,0,0
436                     	;--cdb--S:G$sAutoBps$0$0({4}ST__00000003:S),E,0,0
437                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U),E,0,0
438                     	;--cdb--S:G$sTest$0$0({19}ST__00000004:S),E,0,0
439                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U),E,0,0
440                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U),E,0,0
441                     	;--cdb--S:G$eVersionCode$0$0({1}SC:U),E,0,0
442                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U),E,0,0
443                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U),E,0,0
444                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
445                     	;--cdb--S:G$sButton$0$0({2}ST__00000005:S),E,0,0
446                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000006:S),E,0,0
447                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U),E,0,0
448                     	;--cdb--S:G$sLVD$0$0({5}ST__00000007:S),E,0,0
449                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
450                     	;--cdb--S:G$ERR$0$0({8}DA8d,SC:U),E,0,0
451                     	;--cdb--S:G$eErr$0$0({1}SC:U),E,0,0
452                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U),E,0,0
453                     	;--cdb--S:G$sADC$0$0({45}ST__00000008:S),E,0,0
454                     	;--cdb--S:G$eADCChannel$0$0({1}SC:U),E,0,0
455                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U),E,0,0
456                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U),E,0,0
457                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
458                     	;--cdb--S:G$sMemory$0$0({23}ST__00000009:S),E,0,0
459                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000010:S),E,0,0
460                     	;--cdb--S:G$sActual$0$0({5}ST__00000012:S),E,0,0
461                     	;--cdb--S:G$sForecast$0$0({26}ST__00000013:S),E,0,0
462                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000011:S),E,0,0
463                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U),E,0,0
464                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000014:S),E,0,0
465                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U),E,0,0
466                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U),E,0,0
467                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000015:S),E,0,0
468                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U),E,0,0
469                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000016:S),E,0,0
470                     	;--cdb--S:G$NUM_CODE$0$0({11}DA11d,SC:U),D,0,0
471                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
472                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
473                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
474                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
475                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
476                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
477                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
478                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
479                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
480                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
481                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
482                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
483                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
484                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
485                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
486                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
487                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
488                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
489                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
490                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
491                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
492                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
493                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
494                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
495                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
496                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
497                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
498                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
499                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
500                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
501                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
502                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
503                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
504                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
505                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
506                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
507                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
508                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
509                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
510                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
511                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
512                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
513                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
514                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
515                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
516                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
517                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
518                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
519                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
520                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
521                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
522                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
523                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
524                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
525                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
526                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
527                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
528                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
529                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
530                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
531                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
532                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
533                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
534                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
535                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
536                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
537                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
538                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
539                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
540                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
541                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
542                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
543                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
544                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
545                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
546                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
547                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
548                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
549                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
550                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
551                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
552                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
553                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
554                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
555                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
556                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
557                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
558                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
559                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
560                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
561                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
562                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
563                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
564                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
565                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
566                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
567                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
568                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
569                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
570                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
571                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
572                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
573                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
574                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
575                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
576                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
577                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
578                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
579                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
580                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
581                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
582                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
583                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
584                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
585                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
586                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
587                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
588                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
589                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
590                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
591                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
592                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
593                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
594                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
595                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
596                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
597                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
598                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
599                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
600                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
601                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
602                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
603                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
604                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
605                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
606                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
607                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
608                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
609                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
610                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
611                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
612                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
613                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
614                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
615                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
616                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
617                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
618                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
619                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
620                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
621                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
622                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
623                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
624                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
625                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
626                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
627                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
628                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
629                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
630                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
631                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
632                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
633                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
634                     	;--cdb--S:LDrv_BIE.aligned_alloc._aligned_alloc_size_65536_24$size$10000$24({2}SI:U),E,0,0
635                     	;--cdb--S:LDrv_BIE.aligned_alloc._aligned_alloc_alignment_65536_24$alignment$10000$24({2}SI:U),E,0,0
636                     	;--cdb--S:LDrv_BIE.BIE_Read._BIE_Read_Addr_65536_341$Addr$10000$341({1}SC:U),R,0,0,[r0x1094]
637                     	;--cdb--S:LDrv_BIE.BIE_Read._BIE_Read_BIE_Data_65536_342$BIE_Data$10000$342({2}SI:U),R,0,0,[r0x1096,r0x1097]
638                     	;--cdb--S:LDrv_BIE.BIE_Write._BIE_Write_DL_65536_343$DL$10000$343({1}SC:U),R,0,0,[_BIE_Write_STK01]
639                     	;--cdb--S:LDrv_BIE.BIE_Write._BIE_Write_DH_65536_343$DH$10000$343({1}SC:U),R,0,0,[_BIE_Write_STK00]
640                     	;--cdb--S:LDrv_BIE.BIE_Write._BIE_Write_Addr_65536_343$Addr$10000$343({1}SC:U),R,0,0,[r0x109B]
641                     	;--cdb--S:LDrv_BIE.BIE_Write._BIE_Write_tmp_65536_344$tmp$10000$344({1}SC:U),R,0,0,[r0x109B]
642                     	;--cdb--S:LDrv_BIE.BIE_Polling._BIE_Polling_BIE_Addr_65536_346$BIE_Addr$10000$346({1}SC:U),R,0,0,[r0x10A2]
643                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
644                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
645                     	;--cdb--S:G$_INTE0$0$0({0}:U),Z,0,0
646                     ;--------------------------------------------------------
647                     ; external declarations
648                     ;--------------------------------------------------------
649                     	.globl	_HY17P56WR3
650                     	.globl	_ADCAccuracyMode
651                     	.globl	_AccuracyModeADCOFF
652                     	.globl	_Delay_ms
653                     	.globl	_FSR0
654                     	.globl	_FSR1
655                     	.globl	_FSR2
656                     	.globl	_ADCR
657                     	.globl	_sIIC
658                     	.globl	_sTIMx
659                     	.globl	_sUARTx
660                     	.globl	_sAutoBps
661                     	.globl	_eAutoBps_Status
662                     	.globl	_sTest
663                     	.globl	_eTempUnit
664                     	.globl	_eBondingTempUnit
665                     	.globl	_eVersionCode
666                     	.globl	_eMeasureMode
667                     	.globl	_eBinding_Status
668                     	.globl	_Enter_PrepareSleep_Flag
669                     	.globl	_sButton
670                     	.globl	_sTimeStamp
671                     	.globl	_eButton_Status
672                     	.globl	_sLVD
673                     	.globl	_UnitExchangeCompleted
674                     	.globl	_ERR
675                     	.globl	_eErr
676                     	.globl	_eDisplay_Interfaces
677                     	.globl	_sADC
678                     	.globl	_eADCChannel
679                     	.globl	_eSystem_Mode
680                     	.globl	_eBuzzer_Status
681                     	.globl	_Flag_No_Buzzer
682                     	.globl	_sMemory
683                     	.globl	_sMemoryFlag
684                     	.globl	_sActual
685                     	.globl	_sForecast
686                     	.globl	_sTempCal
687                     	.globl	_eMeas_Status
688                     	.globl	_sActual_Forecast
689                     	.globl	_eTo_Actual_Ways
690                     	.globl	_eBle_Sta
691                     	.globl	_sBleStatus
692                     	.globl	_eBacklight_Status
693                     	.globl	_sBacklight
694                     	.globl	_NUM_CODE
695                     	.globl	_R_Table
696                     	.globl	_CloseTable
697                     
698                     	.globl WSAVE
699                     	.globl STK07
700                     	.globl STK07_SAVE
701                     	.globl STK06
702                     	.globl STK06_SAVE
703                     	.globl STK05
704                     	.globl STK05_SAVE
705                     	.globl STK04
706                     	.globl STK04_SAVE
707                     	.globl STK03
708                     	.globl STK03_SAVE
709                     	.globl STK02
710                     	.globl STK02_SAVE
711                     	.globl STK01
712                     	.globl STK01_SAVE
713                     	.globl STK00
714                     	.globl STK00_SAVE
715                     ;--------------------------------------------------------
716                     ; global -1 declarations
717                     ;--------------------------------------------------------
718                     	.globl	_BIE_Read
719                     	.globl	_BIE_Write
720                     	.globl	_BIE_Available_Addr
721                     
722                     	.globl	_memcpy
723                     ;--------------------------------------------------------
724                     ; global -2 definitions
725                     ;--------------------------------------------------------
726                     	.area DSEG(DATA)
727 02AF --             _BIE_Available_Addr:	.ds	1
728                     
729                     	.area DSEG(DATA)
730                     __SWTGTID	.equ	0xA6A6B2CF
731                     
732                     	.area DSEG(DATA)
733                     _INDF0	.equ	0x0
734                     
735                     	.area DSEG(DATA)
736                     _POINC0	.equ	0x1
737                     
738                     	.area DSEG(DATA)
739                     _PODEC0	.equ	0x2
740                     
741                     	.area DSEG(DATA)
742                     _PRINC0	.equ	0x3
743                     
744                     	.area DSEG(DATA)
745                     _PLUSW0	.equ	0x4
746                     
747                     	.area DSEG(DATA)
748                     _INDF1	.equ	0x5
749                     
750                     	.area DSEG(DATA)
751                     _POINC1	.equ	0x6
752                     
753                     	.area DSEG(DATA)
754                     _PODEC1	.equ	0x7
755                     
756                     	.area DSEG(DATA)
757                     _PRINC1	.equ	0x8
758                     
759                     	.area DSEG(DATA)
760                     _PLUSW1	.equ	0x9
761                     
762                     	.area DSEG(DATA)
763                     _INDF2	.equ	0xA
764                     
765                     	.area DSEG(DATA)
766                     _POINC2	.equ	0xB
767                     
768                     	.area DSEG(DATA)
769                     _PODEC2	.equ	0xC
770                     
771                     	.area DSEG(DATA)
772                     _PRINC2	.equ	0xD
773                     
774                     	.area DSEG(DATA)
775                     _PLUSW2	.equ	0xE
776                     
777                     	.area DSEG(DATA)
778                     _FSR0H	.equ	0xF
779                     
780                     	.area DSEG(DATA)
781                     _FSR0L	.equ	0x10
782                     
783                     	.area DSEG(DATA)
784                     _FSR1H	.equ	0x11
785                     
786                     	.area DSEG(DATA)
787                     _FSR1L	.equ	0x12
788                     
789                     	.area DSEG(DATA)
790                     _FSR2H	.equ	0x13
791                     
792                     	.area DSEG(DATA)
793                     _FSR2L	.equ	0x14
794                     
795                     	.area DSEG(DATA)
796                     _TOSH	.equ	0x16
797                     
798                     	.area DSEG(DATA)
799                     _TOSL	.equ	0x17
800                     
801                     	.area DSEG(DATA)
802                     _SKCN	.equ	0x18
803                     
804                     	.area DSEG(DATA)
805                     _PCLATH	.equ	0x1A
806                     
807                     	.area DSEG(DATA)
808                     _PCLATL	.equ	0x1B
809                     
810                     	.area DSEG(DATA)
811                     _TBLPTRH	.equ	0x1D
812                     
813                     	.area DSEG(DATA)
814                     _TBLPTRL	.equ	0x1E
815                     
816                     	.area DSEG(DATA)
817                     _TBLDH	.equ	0x1F
818                     
819                     	.area DSEG(DATA)
820                     _TBLDL	.equ	0x20
821                     
822                     	.area DSEG(DATA)
823                     _PRODH	.equ	0x21
824                     
825                     	.area DSEG(DATA)
826                     _PRODL	.equ	0x22
827                     
828                     	.area DSEG(DATA)
829                     _INTE0	.equ	0x23
830                     
831                     	.area DSEG(DATA)
832                     _INTE1	.equ	0x24
833                     
834                     	.area DSEG(DATA)
835                     _INTE2	.equ	0x25
836                     
837                     	.area DSEG(DATA)
838                     _INTF0	.equ	0x26
839                     
840                     	.area DSEG(DATA)
841                     _INTF1	.equ	0x27
842                     
843                     	.area DSEG(DATA)
844                     _INTF2	.equ	0x28
845                     
846                     	.area DSEG(DATA)
847                     _WREG	.equ	0x29
848                     
849                     	.area DSEG(DATA)
850                     _BSRCN	.equ	0x2A
851                     
852                     	.area DSEG(DATA)
853                     _STATUS	.equ	0x2B
854                     
855                     	.area DSEG(DATA)
856                     _MSTAT	.equ	0x2B
857                     
858                     	.area DSEG(DATA)
859                     _PSTAT	.equ	0x2C
860                     
861                     	.area DSEG(DATA)
862                     _BIECN	.equ	0x2E
863                     
864                     	.area DSEG(DATA)
865                     _BIEARH	.equ	0x2F
866                     
867                     	.area DSEG(DATA)
868                     _BIEARL	.equ	0x30
869                     
870                     	.area DSEG(DATA)
871                     _BIEDRH	.equ	0x31
872                     
873                     	.area DSEG(DATA)
874                     _BIEDRL	.equ	0x32
875                     
876                     	.area DSEG(DATA)
877                     _PWRCN	.equ	0x33
878                     
879                     	.area DSEG(DATA)
880                     _OSCCN0	.equ	0x34
881                     
882                     	.area DSEG(DATA)
883                     _OSCCN1	.equ	0x35
884                     
885                     	.area DSEG(DATA)
886                     _OSCCN2	.equ	0x36
887                     
888                     	.area DSEG(DATA)
889                     _CSFCN0	.equ	0x37
890                     
891                     	.area DSEG(DATA)
892                     _CSFCN1	.equ	0x38
893                     
894                     	.area DSEG(DATA)
895                     _WDTCN	.equ	0x39
896                     
897                     	.area DSEG(DATA)
898                     _AD1H	.equ	0x3A
899                     
900                     	.area DSEG(DATA)
901                     _AD1M	.equ	0x3B
902                     
903                     	.area DSEG(DATA)
904                     _AD1L	.equ	0x3C
905                     
906                     	.area DSEG(DATA)
907                     _AD1CN0	.equ	0x3D
908                     
909                     	.area DSEG(DATA)
910                     _AD1CN1	.equ	0x3E
911                     
912                     	.area DSEG(DATA)
913                     _AD1CN2	.equ	0x3F
914                     
915                     	.area DSEG(DATA)
916                     _AD1CN3	.equ	0x40
917                     
918                     	.area DSEG(DATA)
919                     _AD1CN4	.equ	0x41
920                     
921                     	.area DSEG(DATA)
922                     _AD1CN5	.equ	0x42
923                     
924                     	.area DSEG(DATA)
925                     _LVDCN	.equ	0x43
926                     
927                     	.area DSEG(DATA)
928                     _TMA1CN	.equ	0x44
929                     
930                     	.area DSEG(DATA)
931                     _TMA1R	.equ	0x45
932                     
933                     	.area DSEG(DATA)
934                     _TMA1C	.equ	0x46
935                     
936                     	.area DSEG(DATA)
937                     _TB1FLAG	.equ	0x47
938                     
939                     	.area DSEG(DATA)
940                     _TB1CN0	.equ	0x48
941                     
942                     	.area DSEG(DATA)
943                     _TB1CN1	.equ	0x49
944                     
945                     	.area DSEG(DATA)
946                     _TB1RH	.equ	0x4A
947                     
948                     	.area DSEG(DATA)
949                     _TB1RL	.equ	0x4B
950                     
951                     	.area DSEG(DATA)
952                     _TB1C0H	.equ	0x4C
953                     
954                     	.area DSEG(DATA)
955                     _TB1C0L	.equ	0x4D
956                     
957                     	.area DSEG(DATA)
958                     _TB1C1H	.equ	0x4E
959                     
960                     	.area DSEG(DATA)
961                     _TB1C1L	.equ	0x4F
962                     
963                     	.area DSEG(DATA)
964                     _TB1C2H	.equ	0x50
965                     
966                     	.area DSEG(DATA)
967                     _TB1C2L	.equ	0x51
968                     
969                     	.area DSEG(DATA)
970                     _TC1CN0	.equ	0x52
971                     
972                     	.area DSEG(DATA)
973                     _PT1	.equ	0x53
974                     
975                     	.area DSEG(DATA)
976                     _TRISC1	.equ	0x54
977                     
978                     	.area DSEG(DATA)
979                     _PT1DA	.equ	0x55
980                     
981                     	.area DSEG(DATA)
982                     _PT1PU	.equ	0x56
983                     
984                     	.area DSEG(DATA)
985                     _PT1M1	.equ	0x57
986                     
987                     	.area DSEG(DATA)
988                     _PT1INT	.equ	0x58
989                     
990                     	.area DSEG(DATA)
991                     _PT1INTE	.equ	0x59
992                     
993                     	.area DSEG(DATA)
994                     _PT1INTF	.equ	0x5A
995                     
996                     	.area DSEG(DATA)
997                     _PT2	.equ	0x5B
998                     
999                     	.area DSEG(DATA)
1000                     _TRISC2	.equ	0x5C
1001                     
1002                     	.area DSEG(DATA)
1003                     _PT2DA	.equ	0x5D
1004                     
1005                     	.area DSEG(DATA)
1006                     _PT2PU	.equ	0x5E
1007                     
1008                     	.area DSEG(DATA)
1009                     _PT2INT	.equ	0x5F
1010                     
1011                     	.area DSEG(DATA)
1012                     _PT2INTE	.equ	0x60
1013                     
1014                     	.area DSEG(DATA)
1015                     _PT2INTF	.equ	0x61
1016                     
1017                     	.area DSEG(DATA)
1018                     _PT6	.equ	0x62
1019                     
1020                     	.area DSEG(DATA)
1021                     _TRISC6	.equ	0x63
1022                     
1023                     	.area DSEG(DATA)
1024                     _PT6DA	.equ	0x64
1025                     
1026                     	.area DSEG(DATA)
1027                     _PT6PU	.equ	0x65
1028                     
1029                     	.area DSEG(DATA)
1030                     _PT7	.equ	0x66
1031                     
1032                     	.area DSEG(DATA)
1033                     _TRISC7	.equ	0x67
1034                     
1035                     	.area DSEG(DATA)
1036                     _PT7DA	.equ	0x68
1037                     
1038                     	.area DSEG(DATA)
1039                     _PT7PU	.equ	0x69
1040                     
1041                     	.area DSEG(DATA)
1042                     _PT8	.equ	0x6A
1043                     
1044                     	.area DSEG(DATA)
1045                     _TRISC8	.equ	0x6B
1046                     
1047                     	.area DSEG(DATA)
1048                     _PT8DA	.equ	0x6C
1049                     
1050                     	.area DSEG(DATA)
1051                     _PT8PU	.equ	0x6D
1052                     
1053                     	.area DSEG(DATA)
1054                     _SSPCN0	.equ	0x6E
1055                     
1056                     	.area DSEG(DATA)
1057                     _SSPSTA0	.equ	0x6F
1058                     
1059                     	.area DSEG(DATA)
1060                     _SSPBUF0	.equ	0x70
1061                     
1062                     	.area DSEG(DATA)
1063                     _CFG0	.equ	0x71
1064                     
1065                     	.area DSEG(DATA)
1066                     _ACT0	.equ	0x72
1067                     
1068                     	.area DSEG(DATA)
1069                     _STA0	.equ	0x73
1070                     
1071                     	.area DSEG(DATA)
1072                     _CRG0	.equ	0x74
1073                     
1074                     	.area DSEG(DATA)
1075                     _TOC0	.equ	0x75
1076                     
1077                     	.area DSEG(DATA)
1078                     _RDB0	.equ	0x76
1079                     
1080                     	.area DSEG(DATA)
1081                     _TDB0	.equ	0x77
1082                     
1083                     	.area DSEG(DATA)
1084                     _SID0	.equ	0x78
1085                     
1086                     	.area DSEG(DATA)
1087                     _UR0CN	.equ	0x79
1088                     
1089                     	.area DSEG(DATA)
1090                     _UR0STA	.equ	0x7A
1091                     
1092                     	.area DSEG(DATA)
1093                     _BA0CN	.equ	0x7B
1094                     
1095                     	.area DSEG(DATA)
1096                     _BG0RH	.equ	0x7C
1097                     
1098                     	.area DSEG(DATA)
1099                     _BG0RL	.equ	0x7D
1100                     
1101                     	.area DSEG(DATA)
1102                     _TX0R	.equ	0x7E
1103                     
1104                     	.area DSEG(DATA)
1105                     _RC0REG	.equ	0x7F
1106                     
1107                     	.area DSEG(DATA)
1108                     _LCDCN1	.equ	0x180
1109                     
1110                     	.area DSEG(DATA)
1111                     _LCDCN2	.equ	0x181
1112                     
1113                     	.area DSEG(DATA)
1114                     _LCDCN3	.equ	0x182
1115                     
1116                     	.area DSEG(DATA)
1117                     _LCDCN4	.equ	0x183
1118                     
1119                     	.area DSEG(DATA)
1120                     _LCDCN5	.equ	0x184
1121                     
1122                     	.area DSEG(DATA)
1123                     _LCDCN6	.equ	0x185
1124                     
1125                     	.area DSEG(DATA)
1126                     _LCDCN7	.equ	0x186
1127                     
1128                     	.area DSEG(DATA)
1129                     _LCDCN8	.equ	0x187
1130                     
1131                     	.area DSEG(DATA)
1132                     _LCD0	.equ	0x188
1133                     
1134                     	.area DSEG(DATA)
1135                     _LCD1	.equ	0x189
1136                     
1137                     	.area DSEG(DATA)
1138                     _LCD2	.equ	0x18A
1139                     
1140                     	.area DSEG(DATA)
1141                     _LCD3	.equ	0x18B
1142                     
1143                     	.area DSEG(DATA)
1144                     _LCD4	.equ	0x18C
1145                     
1146                     	.area DSEG(DATA)
1147                     _LCD5	.equ	0x18D
1148                     
1149                     	.area DSEG(DATA)
1150                     _LCD6	.equ	0x18E
1151                     
1152                     	.area DSEG(DATA)
1153                     _LCD7	.equ	0x18F
1154                     
1155                     	.area DSEG(DATA)
1156                     _LCD8	.equ	0x190
1157                     
1158                     	.area DSEG(DATA)
1159                     _LCD9	.equ	0x191
1160                     
1161                     	.area DSEG(DATA)
1162                     _UR2CN	.equ	0x192
1163                     
1164                     	.area DSEG(DATA)
1165                     _UR2STA	.equ	0x193
1166                     
1167                     	.area DSEG(DATA)
1168                     _BA2CN	.equ	0x194
1169                     
1170                     	.area DSEG(DATA)
1171                     _BG2RH	.equ	0x195
1172                     
1173                     	.area DSEG(DATA)
1174                     _BG2RL	.equ	0x196
1175                     
1176                     	.area DSEG(DATA)
1177                     _TX2R	.equ	0x197
1178                     
1179                     	.area DSEG(DATA)
1180                     _RC2REG	.equ	0x198
1181                     
1182                     	.area DSEG(DATA)
1183                     _TMA2R	.equ	0x1E8
1184                     
1185                     	.area DSEG(DATA)
1186                     _TMA2C	.equ	0x1E9
1187                     
1188                     	.area DSEG(DATA)
1189                     _LEDCN	.equ	0x1EA
1190                     
1191                     	.area DSEG(DATA)
1192                     _IQ0	.equ	0x1EB
1193                     
1194                     	.area DSEG(DATA)
1195                     _IQ1	.equ	0x1EC
1196                     
1197                     	.area DSEG(DATA)
1198                     _DGCON1	.equ	0x1ED
1199                     
1200                     	.area DSEG(DATA)
1201                     _DGCON2	.equ	0x1EE
1202                     
1203                     	.area DSEG(DATA)
1204                     _ADCRH	.equ	0x3A
1205                     
1206                     	.area DSEG(DATA)
1207                     _ADCRM	.equ	0x3B
1208                     
1209                     	.area DSEG(DATA)
1210                     _ADCRL	.equ	0x3C
1211                     
1212                     ;--------------------------------------------------------
1213                     ; absolute symbol definitions
1214                     ;--------------------------------------------------------
1215                     ;--------------------------------------------------------
1216                     ; compiler-defined variables
1217                     ;--------------------------------------------------------
1218                     	.area IDATA (DATA,REL,CON); pre-def
1219                     	.area IDATAROM (CODE,REL,CON); pre-def
1220                     	.area UDATA (DATA,REL,CON); pre-def
1221                     	.area UDATA (DATA,REL,CON) ;UDL_Drv_BIE_0	udata
1222 @FSR2-01 --         r0x1094:	.ds	1
1223 @FSR2-02 --         r0x1097:	.ds	1
1224 @FSR2-01 --         r0x109B:	.ds	1
1225 @FSR2-01 --         r0x10A2:	.ds	1
1226 @FSR2-02 --         r0x10A3:	.ds	1
1227                     	.area LOCALSTK (STK); local stack var
1228 @FSR2-00 --         _BIE_Write_STK00:	.ds	1
1229                     	.globl _BIE_Write_STK00
1230 @FSR2+01 --         _BIE_Write_STK01:	.ds	1
1231                     	.globl _BIE_Write_STK01
1232                     	.globl _HY17P56WR3_STK01
1233                     	.globl _HY17P56WR3_STK00
1234                     ;--------------------------------------------------------
1235                     ; initialized data
1236                     ;--------------------------------------------------------
1237                     ;--------------------------------------------------------
1238                     ; initialized data - mirror
1239                     ;--------------------------------------------------------
1240                     	;Following is optimization info, 
1241                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
1242                     	;--cdb--W:r0x10A4:STK00+0:-1:0
1243                     	;--cdb--W:r0x10A5:NULL+0:-1:1
1244                     	;--cdb--W:_BIE_Write_STK00:NULL+0:-1:1
1245                     	;--cdb--W:r0x1095:NULL+0:-1:1
1246                     	;--cdb--W:r0x1096:NULL+0:-1:1
1247                     	;--cdb--W:r0x1095:NULL+0:0:0
1248                     	;--cdb--W:r0x1094:NULL+0:-1:1
1249                     	;--cdb--W:r0x1096:r0x1094+0:-1:0
1250                     	end
