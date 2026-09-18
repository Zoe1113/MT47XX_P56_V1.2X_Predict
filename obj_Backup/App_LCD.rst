001                     ;--------------------------------------------------------
002                     ; File Created by SDCC : open source ANSI-C Compiler modified for HYCON CPU
003                     ; Version 4.0.4 #65ee8b859 (MSVC)
004                     ;--------------------------------------------------------
005                     ; Port for HYCON CPU
006                     ;--------------------------------------------------------
007                     ;	;CCFROM:"F:\陈宇航\001 程序\000 最新程序20230301(增加839，930，新增高精度判稳≤0.01)\DMT2022050508p"
008                     ;;	.file	".\Source\App_LCD.c"
009                     	.module App_LCD
010                     	;.list	p=HY17P56
011                     	;--cdb--T:FApp_LCD$__00000000[({0}S:S$IICErr$0$0({1}SB0$1:U),Z,0,0)]
012                     	;--cdb--T:FApp_LCD$__00000010[({0}S:S$MemTemp_Updated$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_EN$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Write_MemTemp_E2_EN$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Write_MemTemp_RAM_Only$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Update_MemTempDispNo$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Update_MemTempDispVlaue$0$0({1}SB5$1:U),Z,0,0)({1}S:S$MemTempDispNo$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempDispValue$0$0({1}SC:U),Z,0,0)]
013                     	;--cdb--T:FApp_LCD$__00000001[({0}S:S$LVDSampleFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LCDRefreshFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$TempSampleFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$ModeSymbolFlash$0$0({1}SB3$1:U),Z,0,0)({0}S:S$EnableModeSymbolFlash$0$0({1}SB4$1:U),Z,0,0)({0}S:S$CalSymbolFlash$0$0({1}SB5$1:U),Z,0,0)({0}S:S$ForecastJudgeOKTempFlash$0$0({1}SB6$1:U),Z,0,0)({0}S:S$BindingSymbolFlash$0$0({1}SB7$1:U),Z,0,0)({1}S:S$UnitSymbolFlash$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BLESymbolFlash$0$0({1}SB1$1:U),Z,0,0)({1}S:S$ForecastSymbolFlash$0$0({1}SB2$1:U),Z,0,0)({1}S:S$BuzzerFlash1Hz$0$0({1}SB3$1:U),Z,0,0)({1}S:S$BuzzerFlash4Hz$0$0({1}SB4$1:U),Z,0,0)({2}S:S$TempDetectingSymFlash1Hz$0$0({1}SC:U),Z,0,0)({3}S:S$BuzzerIntervalCnt$0$0({1}SC:U),Z,0,0)({4}S:S$Cnt50ms$0$0({1}SC:U),Z,0,0)({5}S:S$Cnt125ms$0$0({2}SI:U),Z,0,0)({7}S:S$Cnt250ms$0$0({2}SI:U),Z,0,0)({9}S:S$Cnt500ms$0$0({2}SI:U),Z,0,0)({11}S:S$Cnt1s$0$0({2}SI:U),Z,0,0)]
014                     	;--cdb--T:FApp_LCD$__00000011[({0}S:S$BIE_Writed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Cal_60s_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Enable_BIE_Write$0$0({1}SB2$1:U),Z,0,0)({0}S:S$BIE_Write_Action$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Reopen_LCD$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Reset_From_CalOK$0$0({1}SB5$1:U),Z,0,0)({1}S:S$pTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$Temp_Ratio$0$0({2}SI:U),Z,0,0)({4}S:S$TempBuf$0$0({10}DA5d,SI:U),Z,0,0)]
015                     	;--cdb--T:FApp_LCD$__00000002[({0}S:S$Num$0$0({5}DA5d,SC:U),Z,0,0)({5}S:S$StringArray$0$0({10}DA10d,SC:U),Z,0,0)]
016                     	;--cdb--T:FApp_LCD$__00000012[({0}S:S$Actual_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$TempFastFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$PresetMeasTimeCompletedFlag$0$0({1}SB2$1:U),Z,0,0)({1}S:S$StableTime$0$0({1}SC:U),Z,0,0)({2}S:S$ActualTime$0$0({1}SC:U),Z,0,0)({3}S:S$Prior1sActualTemp$0$0({2}SI:U),Z,0,0)]
017                     	;--cdb--T:FApp_LCD$__00000003[({0}S:S$Flag_AutoBps_Completed$0$0({1}SB0$1:U),Z,0,0)({1}S:S$BSP_Number$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_DeviceInfoSend$0$0({1}SC:U),Z,0,0)({3}S:S$AutoBpsValue$0$0({2}SI:U),Z,0,0)]
018                     	;--cdb--T:FApp_LCD$__00000013[({0}S:S$Forecast_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Update_MaxTemp3Min_Arrived$0$0({1}SB1$1:U),Z,0,0)({0}S:S$FlagStartAlgorithmCounts$0$0({1}SB2$1:U),Z,0,0)({1}S:S$Forecast_Timer$0$0({1}SC:U),Z,0,0)({2}S:S$Start_Counts$0$0({1}SC:U),Z,0,0)({3}S:S$Drop_Counts$0$0({1}SC:U),Z,0,0)({4}S:S$PreBath_Counts$0$0({1}SC:U),Z,0,0)({5}S:S$Forecast_Counts$0$0({1}SC:U),Z,0,0)({6}S:S$Prior250msForecastTemp$0$0({2}SI:U),Z,0,0)({8}S:S$Prior1sForecastTemp$0$0({2}SI:U),Z,0,0)({10}S:S$StartTemp$0$0({2}SI:U),Z,0,0)({12}S:S$StartAlgorithmTemp$0$0({8}DA4d,SI:U),Z,0,0)({20}S:S$EndTemp$0$0({2}SI:U),Z,0,0)({22}S:S$ForecastTemp$0$0({4}SL:UL),Z,0,0)]
019                     	;--cdb--T:FApp_LCD$__00000004[({0}S:S$Test_Get_Total_Journey_Start_Flag$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Test_Total_Journey_Start_Timer$0$0({4}SL:UL),Z,0,0)({5}S:S$Test_Total_Journey_Timer$0$0({2}SI:U),Z,0,0)({7}S:S$ISR_AD_Counts$0$0({4}SL:UL),Z,0,0)({11}S:S$MainCycle_Counts$0$0({4}SL:UL),Z,0,0)({15}S:S$MainForecast_Counts$0$0({4}SL:UL),Z,0,0)]
020                     	;--cdb--T:FApp_LCD$__00000014[({0}S:S$AF_Start$0$0({1}SB0$1:U),Z,0,0)({0}S:S$StableBuzzerFlag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$ActualForecast_SelectFlag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_1sTempFlag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$ResetTimeFlag$0$0({1}SB4$1:U),Z,0,0)({1}S:S$Cnt_1S$0$0({1}SC:U),Z,0,0)({2}S:S$Cnt_Test_1S$0$0({1}SC:U),Z,0,0)({3}S:S$CentigradeTempDisp$0$0({2}SI:U),Z,0,0)({5}S:S$ConvertedTempDisp$0$0({2}SI:U),Z,0,0)({7}S:S$Temp_T1$0$0({2}SI:U),Z,0,0)({9}S:S$Temp_T2$0$0({2}SI:U),Z,0,0)({11}S:S$Temp_T3$0$0({2}SI:U),Z,0,0)({13}S:S$Calibrated_Forecast_Temp$0$0({2}SI:U),Z,0,0)]
021                     	;--cdb--T:FApp_LCD$__00000005[({0}S:S$Flag_Button_Press_Once$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_Button_Press_Transient$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Flag_Button_Press_2S$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_Button_Press_3S$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Flag_Button_Press_6S$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Flag_Button_Press_9S$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Once$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Flag_Button_Lift_Transient$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_1S$0$0({1}SB0$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_2S$0$0({1}SB1$1:U),Z,0,0)({1}S:S$Flag_Button_Lift_60S$0$0({1}SB2$1:U),Z,0,0)]
022                     	;--cdb--T:FApp_LCD$__00000015[({0}S:S$F_Ble_En$0$0({1}SB0$1:U),Z,0,0)({0}S:S$F_Uart_Receive$0$0({1}SB1$1:U),Z,0,0)({0}S:S$F_Ble_Blink$0$0({1}SB2$1:U),Z,0,0)({0}S:S$F_Temp_Upload$0$0({1}SB3$1:U),Z,0,0)({0}S:S$F_Temp_Updated$0$0({1}SB4$1:U),Z,0,0)({0}S:S$F_Receive_First$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Port_Ble_PowerOn$0$0({1}SB6$1:U),Z,0,0)({1}S:S$F_Previous_Ble_Busy$0$0({1}SC:U),Z,0,0)({2}S:S$TempUploadTimes_Cnt$0$0({1}SC:U),Z,0,0)({3}S:S$pBleRxBuf$0$0({1}SC:U),Z,0,0)({4}S:S$g_Ble_RxData$0$0({18}DA18d,SC:U),Z,0,0)({22}S:S$g_Ble_RxData_Buf$0$0({18}DA18d,SC:U),Z,0,0)({40}S:S$g_Ble_TxData$0$0({20}DA20d,SC:U),Z,0,0)]
023                     	;--cdb--T:FApp_LCD$__00000006[({0}S:S$Get_ForecastMeas_Start_Timer_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Get_DispCOM_Start_Time_Flag$0$0({1}SB1$1:U),Z,0,0)({0}S:S$Get_Backlight_Start_Time_Flag$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Get_Buzzer_Start_Timer_Flag$0$0({1}SB3$1:U),Z,0,0)({0}S:S$Get_ButtonPress_Flag$0$0({1}SB4$1:U),Z,0,0)({0}S:S$Get_ButtonLift_Flag$0$0({1}SB5$1:U),Z,0,0)({0}S:S$Get_BleMode_Flag$0$0({1}SB6$1:U),Z,0,0)({0}S:S$Get_Ble_Connect_Max_Time_Flag$0$0({1}SB7$1:U),Z,0,0)({1}S:S$Get_EMC_Temp_Update_Time_Flag$0$0({1}SB0$1:U),Z,0,0)({2}S:S$Timer_Journey$0$0({4}SL:UL),Z,0,0)({6}S:S$Buzzing_Timer$0$0({4}SL:UL),Z,0,0)({10}S:S$DispCOM_Timer$0$0({4}SL:UL),Z,0,0)({14}S:S$Backlight_Timer$0$0({4}SL:UL),Z,0,0)({18}S:S$ForecastMeas_Timer$0$0({4}SL:UL),Z,0,0)({22}S:S$ButtonLift_Timer$0$0({4}SL:UL),Z,0,0)({26}S:S$ButtonPress_Timer$0$0({4}SL:UL),Z,0,0)({30}S:S$BleMode_Timer$0$0({4}SL:UL),Z,0,0)({34}S:S$BleMode_Connect_Max_Timer$0$0({4}SL:UL),Z,0,0)({38}S:S$EMC_Temp_Update_Timer$0$0({4}SL:UL),Z,0,0)]
024                     	;--cdb--T:FApp_LCD$__00000016[({0}S:S$Backlight2SFlag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$MeasuredTempLighting$0$0({1}SB1$1:U),Z,0,0)]
025                     	;--cdb--T:FApp_LCD$__00000007[({0}S:S$LVD_Test_Completed$0$0({1}SB0$1:U),Z,0,0)({0}S:S$LVD_Low$0$0({1}SB1$1:U),Z,0,0)({1}S:S$pLVDBuf$0$0({1}SC:U),Z,0,0)({2}S:S$LVDBuf$0$0({3}DA3d,SC:U),Z,0,0)]
026                     	;--cdb--T:FApp_LCD$__00000008[({0}S:S$Get_250msTemp_Flag$0$0({1}SB0$1:U),Z,0,0)({0}S:S$Flag_ADCDone$0$0({1}SB1$1:U),Z,0,0)({0}S:S$NTCChannel$0$0({1}SB2$1:U),Z,0,0)({0}S:S$Flag_DefaultNTCChl_AI12_AI13$0$0({1}SB3$1:U),Z,0,0)({0}S:S$UnRefreshTemp$0$0({1}SB4$1:U),Z,0,0)({0}S:S$RefreshTempFast$0$0({1}SB5$1:U),Z,0,0)({1}S:S$EMCADCDataCnt$0$0({1}SC:U),Z,0,0)({2}S:S$ADCCounts$0$0({1}SC:U),Z,0,0)({3}S:S$ADCData$0$0({2}SI:S),Z,0,0)({5}S:S$MinData$0$0({2}SI:S),Z,0,0)({7}S:S$MaxData$0$0({2}SI:S),Z,0,0)({9}S:S$AI2_AI3_Data$0$0({2}SI:S),Z,0,0)({11}S:S$AI14_AI15_Data$0$0({2}SI:S),Z,0,0)({13}S:S$Centigrade250msTemp$0$0({2}SI:U),Z,0,0)({15}S:S$PreviousCentigrade250msTemp$0$0({2}SI:U),Z,0,0)({17}S:S$ADCSum$0$0({4}SL:SL),Z,0,0)({21}S:S$RawRntc$0$0({2}SI:U),Z,0,0)({23}S:S$Rntc$0$0({2}SI:U),Z,0,0)({25}S:S$EMCADCData$0$0({20}DA10d,SI:U),Z,0,0)]
027                     	;--cdb--T:FApp_LCD$__00000009[({0}S:S$HeadNo$0$0({1}SC:U),Z,0,0)({1}S:S$pMemTempBuf$0$0({1}SC:U),Z,0,0)({2}S:S$MemTempSum$0$0({1}SC:U),Z,0,0)({3}S:S$MemTempBuf$0$0({2}DA1d,SI:U),Z,0,0)]
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
043                     	;--cdb--F:App_LCD:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0,0,0,0
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
078                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
079                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
080                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
081                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
082                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
083                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
084                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
085                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
086                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
087                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
088                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
089                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
090                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
091                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
092                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
093                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
094                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
095                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
096                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
097                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
098                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
099                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
100                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
101                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
102                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
103                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
104                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
105                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
106                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
107                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
108                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
109                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
110                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
111                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
112                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
113                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
114                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
115                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
116                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
117                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
118                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
119                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
120                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
121                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
122                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
123                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
124                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
125                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
126                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
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
143                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
144                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
145                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
146                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
147                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
148                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
149                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
150                     	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
151                     	;--cdb--F:App_LCD:G$DispUnit$0$0({2}DF,SV:S),C,0,0,0,0,0
152                     	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
153                     	;--cdb--F:App_LCD:G$DispDelta$0$0({2}DF,SV:S),C,0,0,0,0,0
154                     	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
155                     	;--cdb--F:App_LCD:G$DispNum$0$0({2}DF,SV:S),C,0,0,0,0,0
156                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
157                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
158                     	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
159                     	;--cdb--F:App_LCD:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
160                     	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
161                     	;--cdb--F:App_LCD:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0,0,0,0
162                     	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
163                     	;--cdb--F:App_LCD:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0,0,0,0
164                     	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
165                     	;--cdb--F:App_LCD:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0,0,0,0
166                     	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
167                     	;--cdb--F:App_LCD:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
168                     	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
169                     	;--cdb--F:App_LCD:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0,0,0,0
170                     	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
171                     	;--cdb--F:App_LCD:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
172                     	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
173                     	;--cdb--F:App_LCD:G$Off_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
174                     	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
175                     	;--cdb--F:App_LCD:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
176                     	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
177                     	;--cdb--F:App_LCD:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
178                     	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
179                     	;--cdb--F:App_LCD:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
180                     	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
181                     	;--cdb--F:App_LCD:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
182                     	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
183                     	;--cdb--F:App_LCD:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
184                     	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
185                     	;--cdb--F:App_LCD:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
186                     	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
187                     	;--cdb--F:App_LCD:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
188                     	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
189                     	;--cdb--F:App_LCD:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
190                     	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
191                     	;--cdb--F:App_LCD:G$Binding_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
192                     	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
193                     	;--cdb--F:App_LCD:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0,0,0,0
194                     	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
195                     	;--cdb--F:App_LCD:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
196                     	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
197                     	;--cdb--F:App_LCD:G$Err_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
198                     	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
199                     	;--cdb--F:App_LCD:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0,0,0,0
200                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
201                     	;--cdb--F:App_LCD:G$LCD_Display$0$0({2}DF,SV:S),C,0,0,0,0,0
202                     ;--------------------------------------------------------
203                     ; overlayable items in internal ram 
204                     ;--------------------------------------------------------
205                     ;	udata_ovr
206                     .area CCODE (code,REL,CON) ; App_LCD-code 
207                     .globl _LCD_Display
208                     
209                     ;--------------------------------------------------------
210                     	.FUNC _LCD_Display:0:$C:_Disp_BrownOut:$C:_Disp_All:$C:_UnitExchange_Display:$C:_Disp_Bat\
211                     :$C:_Disp_Version:$C:_Disp_BleSymbol:$C:_Disp_Code:$C:_Off_Display:$C:_PreCalibration_Display\
212                     :$C:_Calibration_Display:$C:_CalibrationOK_Display:$C:_RecentTemp_Display:$C:_MemTempNumber_Display:$C:_MemTempValue_Display\
213                     :$C:_CurrentMode_Display:$C:_ModeExchange_Display:$C:_Binding_Display:$C:_TempDetecting_Display:$C:_Err_Disp\
214                     :$C:_MeasedTemp_Disp:$C:_Disp_Nothing\
215                     
216                     ;--------------------------------------------------------
217                     ;	;.line	1251; ".\Source\App_LCD.c"	if(sTIMx.LCDRefreshFlag)
218 0624 [00] [2] 0012      _LCD_Display:	;Function start
219 0625 [00] [2] B3CE      	BTSS	_sTIMx,1
220 0626 [00] [2] 7858      	JMP	_00538_DS_
221                     ;	;.line	1254; ".\Source\App_LCD.c"	sTIMx.LCDRefreshFlag = FALSE;
222 0627 [00] [2] 83CE      	BCF	_sTIMx,1
223                     ;	;.line	1255; ".\Source\App_LCD.c"	switch(eDisplay_Interfaces)
224 0628 [00] [2] 0614      	MVL	0x14
225 0629 [00] [2] 6B47      	CPSL	_eDisplay_Interfaces,0
226 062A [00] [2] 7854      	JMP	_00538_DS_
227 062B [00] [2] 0606      	MVL	HIGHD2(_00557_DS_)
228 062C [00] [2] 661A      	MVF	_PCLATH,1,0
229 062D [00] [2] 6547      	MVF	_eDisplay_Interfaces,0,0
230 062E [00] [2] 0432      	ADDL	D2(_00557_DS_)
231 062F [00] [2] A82B      	BTSZ	_STATUS,4
232 0630 [00] [2] 3A1A      	INF	_PCLATH,1,0
233 0631 [00] [2] 661B      	MVF	_PCLATL,1,0
234                     _00557_DS_:
235 0632 [00] [2] 784C      	RJ	_00538_DS_
236 0633 [00] [2] 7812      	RJ	_00511_DS_
237 0634 [00] [2] 7812      	RJ	_00512_DS_
238 0635 [00] [2] 7818      	RJ	_00515_DS_
239 0636 [00] [2] 7819      	RJ	_00516_DS_
240 0637 [00] [2] 781B      	RJ	_00517_DS_
241 0638 [00] [2] 781F      	RJ	_00518_DS_
242 0639 [00] [2] 7821      	RJ	_00520_DS_
243 063A [00] [2] 7823      	RJ	_00521_DS_
244 063B [00] [2] 7824      	RJ	_00522_DS_
245 063C [00] [2] 7825      	RJ	_00523_DS_
246 063D [00] [2] 782B      	RJ	_00526_DS_
247 063E [00] [2] 782C      	RJ	_00527_DS_
248 063F [00] [2] 782F      	RJ	_00528_DS_
249 0640 [00] [2] 7831      	RJ	_00529_DS_
250 0641 [00] [2] 7833      	RJ	_00530_DS_
251 0642 [00] [2] 7834      	RJ	_00531_DS_
252 0643 [00] [2] 7837      	RJ	_00532_DS_
253 0644 [00] [2] 7839      	RJ	_00533_DS_
254 0645 [00] [2] 7814      	RJ	_00519_DS_
255                     _00511_DS_:
256                     ;	;.line	1265; ".\Source\App_LCD.c"	Disp_BrownOut();
257 0646 [00] [2] 7D9A      	CALL	_Disp_BrownOut
258                     	.CHKPARA _Disp_BrownOut 0
259                     ;	;.line	1266; ".\Source\App_LCD.c"	break;
260                     	JMP	_00538_DS_
261                     _00512_DS_:
262                     ;	;.line	1271; ".\Source\App_LCD.c"	Disp_All();
263 0647 [00] [2] CD8E      	CALL	_Disp_All
264                     	.CHKPARA _Disp_All 0
265                     ;	;.line	1273; ".\Source\App_LCD.c"	if(!sBacklight.Backlight2SFlag)
266 0648 [00] [1] A140      	BTSZ	_sBacklight,0
267 0649 [00] [1] 7835      	JMP	_00538_DS_
268                     ;	;.line	1275; ".\Source\App_LCD.c"	sBacklight.Backlight2SFlag = TRUE;
269 064A [00] [1] 9140      	BSF	_sBacklight,0
270                     ;	;.line	1277; ".\Source\App_LCD.c"	eBacklight_Status = All_Backlight;
271 064B [00] [1] 0601      	MVL	0x01
272 064C [00] [1] 673F      	MVF	_eBacklight_Status,1,0
273                     ;	;.line	1279; ".\Source\App_LCD.c"	break;
274 064D [00] [1] 000A      	JMP	_00538_DS_
275                     _00515_DS_:
276                     ;	;.line	1284; ".\Source\App_LCD.c"	UnitExchange_Display();
277 064E [00] [2] C831      	CALL	_UnitExchange_Display
278                     	.CHKPARA _UnitExchange_Display 0
279                     ;	;.line	1287; ".\Source\App_LCD.c"	Disp_Bat();
280 064F [00] [Y] 7A67      	CALL	_Disp_Bat
281                     	.CHKPARA _Disp_Bat 0
282                     ;	;.line	1289; ".\Source\App_LCD.c"	break;
283                     	JMP	_00538_DS_
284                     _00516_DS_:
285                     ;	;.line	1294; ".\Source\App_LCD.c"	Disp_Version(Soft_External_Version);
286 0650 [00] [2] 060B      	MVL	0x0b
287 0651 [00] [2] C201 F673 	CALL	_Disp_Version
288                     	.CHKPARA _Disp_Version 1
289                     ;	;.line	1296; ".\Source\App_LCD.c"	Disp_BleSymbol();
290                     	CALL	_Disp_BleSymbol
291                     	.CHKPARA _Disp_BleSymbol 0
292                     ;	;.line	1297; ".\Source\App_LCD.c"	break;
293                     	JMP	_00538_DS_
294                     _00517_DS_:
295                     ;	;.line	1302; ".\Source\App_LCD.c"	Disp_Code(Soft_Code);
296 0653 [00] [2] 069A      	MVL	0x9a
297 0654 [00] [2] 660D      	MVF	_Disp_Code_STK00,1,0
298 0655 [01] [2] 0603      	MVL	0x03
299 0656 [01] [2] C201 F56B 	CALL	_Disp_Code
300                     	.CHKPARA _Disp_Code 2
301                     ;	;.line	1304; ".\Source\App_LCD.c"	Disp_BleSymbol();
302                     	CALL	_Disp_BleSymbol
303                     	.CHKPARA _Disp_BleSymbol 0
304                     ;	;.line	1305; ".\Source\App_LCD.c"	break;
305                     	JMP	_00538_DS_
306                     _00518_DS_:
307                     ;	;.line	1310; ".\Source\App_LCD.c"	Off_Display();
308 0658 [01] [2] C9E6      	CALL	_Off_Display
309                     	.CHKPARA _Off_Display 0
310                     ;	;.line	1311; ".\Source\App_LCD.c"	break;
311 0659 [00] [Y] 000A      	JMP	_00538_DS_
312                     _00519_DS_:
313                     ;	;.line	1316; ".\Source\App_LCD.c"	PreCalibration_Display();
314 065A [00] [2] 79E2      	CALL	_PreCalibration_Display
315                     	.CHKPARA _PreCalibration_Display 0
316                     ;	;.line	1317; ".\Source\App_LCD.c"	break;
317                     	JMP	_00538_DS_
318                     _00520_DS_:
319                     ;	;.line	1322; ".\Source\App_LCD.c"	Calibration_Display();
320 065B [00] [2] C001 F405 	CALL	_Calibration_Display
321                     	.CHKPARA _Calibration_Display 0
322                     ;	;.line	1323; ".\Source\App_LCD.c"	break;
323 065D [00] [2] 000A      	JMP	_00538_DS_
324                     _00521_DS_:
325                     ;	;.line	1328; ".\Source\App_LCD.c"	CalibrationOK_Display();
326 065E [00] [2] C9DD      	CALL	_CalibrationOK_Display
327                     	.CHKPARA _CalibrationOK_Display 0
328                     ;	;.line	1331; ".\Source\App_LCD.c"	Disp_Bat();
329 065F [00] [Y] 7A57      	CALL	_Disp_Bat
330                     	.CHKPARA _Disp_Bat 0
331                     ;	;.line	1333; ".\Source\App_LCD.c"	break;
332                     	JMP	_00538_DS_
333                     _00522_DS_:
334                     ;	;.line	1338; ".\Source\App_LCD.c"	RecentTemp_Display();
335 0660 [00] [2] C994      	CALL	_RecentTemp_Display
336                     	.CHKPARA _RecentTemp_Display 0
337                     ;	;.line	1341; ".\Source\App_LCD.c"	Disp_Bat();
338 0661 [00] [Y] 7A55      	CALL	_Disp_Bat
339                     	.CHKPARA _Disp_Bat 0
340                     ;	;.line	1343; ".\Source\App_LCD.c"	break;
341                     	JMP	_00538_DS_
342                     _00523_DS_:
343                     ;	;.line	1348; ".\Source\App_LCD.c"	MemTempNumber_Display();
344 0662 [00] [2] CF96      	CALL	_MemTempNumber_Display
345                     	.CHKPARA _MemTempNumber_Display 0
346                     ;	;.line	1350; ".\Source\App_LCD.c"	if(!sBacklight.Backlight2SFlag)
347 0663 [00] [1] A140      	BTSZ	_sBacklight,0
348 0664 [00] [1] 7803      	JMP	_00525_DS_
349                     ;	;.line	1353; ".\Source\App_LCD.c"	sBacklight.Backlight2SFlag = TRUE;
350 0665 [00] [1] 9140      	BSF	_sBacklight,0
351                     ;	;.line	1355; ".\Source\App_LCD.c"	eBacklight_Status = MemTemp_Backlight;
352 0666 [00] [1] 0602      	MVL	0x02
353 0667 [00] [1] 673F      	MVF	_eBacklight_Status,1,0
354                     _00525_DS_:
355                     ;	;.line	1359; ".\Source\App_LCD.c"	Disp_Bat();
356 0668 [00] [1] 7A4E      	CALL	_Disp_Bat
357                     	.CHKPARA _Disp_Bat 0
358                     ;	;.line	1361; ".\Source\App_LCD.c"	break;
359                     	JMP	_00538_DS_
360                     _00526_DS_:
361                     ;	;.line	1366; ".\Source\App_LCD.c"	MemTempValue_Display();
362 0669 [00] [2] C940      	CALL	_MemTempValue_Display
363                     	.CHKPARA _MemTempValue_Display 0
364                     ;	;.line	1369; ".\Source\App_LCD.c"	Disp_Bat();
365 066A [00] [Y] 7A4C      	CALL	_Disp_Bat
366                     	.CHKPARA _Disp_Bat 0
367                     ;	;.line	1371; ".\Source\App_LCD.c"	break;
368                     	JMP	_00538_DS_
369                     _00527_DS_:
370                     ;	;.line	1377; ".\Source\App_LCD.c"	CurrentMode_Display();
371 066B [00] [2] C001 F431 	CALL	_CurrentMode_Display
372                     	.CHKPARA _CurrentMode_Display 0
373                     ;	;.line	1379; ".\Source\App_LCD.c"	Disp_BleSymbol();
374 066D [00] [X] C9D6      	CALL	_Disp_BleSymbol
375                     	.CHKPARA _Disp_BleSymbol 0
376                     ;	;.line	1382; ".\Source\App_LCD.c"	Disp_Bat();
377 066E [00] [X] 7A48      	CALL	_Disp_Bat
378                     	.CHKPARA _Disp_Bat 0
379                     ;	;.line	1384; ".\Source\App_LCD.c"	break;
380                     	JMP	_00538_DS_
381                     _00528_DS_:
382                     ;	;.line	1389; ".\Source\App_LCD.c"	ModeExchange_Display();
383 066F [00] [2] C886      	CALL	_ModeExchange_Display
384                     	.CHKPARA _ModeExchange_Display 0
385                     ;	;.line	1391; ".\Source\App_LCD.c"	Disp_BleSymbol();
386 0670 [00] [Y] C9D3      	CALL	_Disp_BleSymbol
387                     	.CHKPARA _Disp_BleSymbol 0
388                     ;	;.line	1394; ".\Source\App_LCD.c"	Disp_Bat();
389 0671 [00] [Y] 7A45      	CALL	_Disp_Bat
390                     	.CHKPARA _Disp_Bat 0
391                     ;	;.line	1396; ".\Source\App_LCD.c"	break;
392                     	JMP	_00538_DS_
393                     _00529_DS_:
394                     ;	;.line	1401; ".\Source\App_LCD.c"	Binding_Display();
395 0672 [00] [2] C001 F443 	CALL	_Binding_Display
396                     	.CHKPARA _Binding_Display 0
397                     ;	;.line	1403; ".\Source\App_LCD.c"	Disp_BleSymbol();
398 0674 [00] [X] 000A      	CALL	_Disp_BleSymbol
399                     	.CHKPARA _Disp_BleSymbol 0
400                     ;	;.line	1404; ".\Source\App_LCD.c"	break;
401                     	JMP	_00538_DS_
402                     _00530_DS_:
403                     ;	;.line	1409; ".\Source\App_LCD.c"	TempDetecting_Display();
404 0675 [00] [2] C832      	CALL	_TempDetecting_Display
405                     	.CHKPARA _TempDetecting_Display 0
406                     ;	;.line	1421; ".\Source\App_LCD.c"	Disp_Bat();
407 0676 [00] [Y] 7A40      	CALL	_Disp_Bat
408                     	.CHKPARA _Disp_Bat 0
409                     ;	;.line	1423; ".\Source\App_LCD.c"	break;
410                     	JMP	_00538_DS_
411                     _00531_DS_:
412                     ;	;.line	1428; ".\Source\App_LCD.c"	Err_Disp();
413 0677 [00] [2] C001 F44E 	CALL	_Err_Disp
414                     	.CHKPARA _Err_Disp 0
415                     ;	;.line	1430; ".\Source\App_LCD.c"	Disp_BleSymbol();
416 0679 [00] [X] C9CA      	CALL	_Disp_BleSymbol
417                     	.CHKPARA _Disp_BleSymbol 0
418                     ;	;.line	1433; ".\Source\App_LCD.c"	Disp_Bat();
419 067A [00] [X] 7A3C      	CALL	_Disp_Bat
420                     	.CHKPARA _Disp_Bat 0
421                     ;	;.line	1435; ".\Source\App_LCD.c"	break;
422                     	JMP	_00538_DS_
423                     _00532_DS_:
424                     ;	;.line	1440; ".\Source\App_LCD.c"	MeasedTemp_Disp();
425 067B [00] [2] C882      	CALL	_MeasedTemp_Disp
426                     	.CHKPARA _MeasedTemp_Disp 0
427                     ;	;.line	1442; ".\Source\App_LCD.c"	Disp_BleSymbol();
428 067C [00] [X] C9C7      	CALL	_Disp_BleSymbol
429                     	.CHKPARA _Disp_BleSymbol 0
430                     ;	;.line	1445; ".\Source\App_LCD.c"	Disp_Bat();
431 067D [00] [X] 7A39      	CALL	_Disp_Bat
432                     	.CHKPARA _Disp_Bat 0
433                     ;	;.line	1447; ".\Source\App_LCD.c"	break;
434                     	JMP	_00538_DS_
435                     _00533_DS_:
436                     ;	;.line	1452; ".\Source\App_LCD.c"	Disp_Nothing();
437 067E [00] [2] CEC2      	CALL	_Disp_Nothing
438                     	.CHKPARA _Disp_Nothing 0
439                     _00538_DS_:
440                     ;	;.line	1458; ".\Source\App_LCD.c"	}
441 067F [00] [X] 000A      	RET	
442                     ; exit point of _LCD_Display
443                     	.ENDFUNC	_LCD_Display
444                     ;--------------------------------------------------------
445                     
446                     .globl _MeasedTemp_Disp
447                     
448                     ;--------------------------------------------------------
449                     	.FUNC _MeasedTemp_Disp:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_DispNum:$C:_DispDelta\
450                     :$C:_DispUnit\
451                     :$L:r0x10D0:$L:r0x10D1
452                     ;--------------------------------------------------------
453                     ;	;.line	1045; ".\Source\App_LCD.c"	if(sTempCal.Reset_From_CalOK)
454 06FE [00] [2] C482      _MeasedTemp_Disp:	;Function start
455 06FF [02] [2] BBA4      	BTSS	_sTempCal,5
456 0700 [02] [2] 786B      	JMP	_00497_DS_
457                     ;	;.line	1048; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
458 0701 [02] [2] 065A      	MVL	0x5a
459 0702 [02] [2] 6D13      	CPSE	_eTempUnit,0
460 0703 [02] [2] 7832      	JMP	_00481_DS_
461                     ;	;.line	1051; ".\Source\App_LCD.c"	if(sTIMx.ForecastJudgeOKTempFlash)
462 0704 [02] [2] BDCE      	BTSS	_sTIMx,6
463 0705 [02] [2] 7818      	JMP	_00467_DS_
464                     ;	;.line	1053; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
465 0706 [02] [2] D2C0      	MVF	(_sActual_Forecast + 13),0,0
466 0707 [02] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
467 0708 [03] [2] 65C1      	MVF	(_sActual_Forecast + 14),0,0
468 0709 [03] [2] CE49      	CALL	_Centigrade_Convert_Fahrenheit
469                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
470 070A [02] [2] 6680      	MVF	r0x10D1,1,0
471 070B [02] [2] 6420      	MVF	STK00,0,0
472 070C [02] [2] 6681      	MVF	r0x10D0,1,0
473                     ;	;.line	1055; ".\Source\App_LCD.c"	if(tmp > High_Temp_Centigrade)
474 070D [02] [2] 04D9      	ADDL	0xd9
475 070E [02] [2] 06EE      	MVL	0xee
476 070F [02] [2] 1480      	ADDC	r0x10D1,0,0
477 0710 [02] [2] 74        	BTSS	_STATUS,4
478 0710 [02] 02        	JMP	_00461_DS_
479                     ;	;.line	1058; ".\Source\App_LCD.c"	Disp_Hi();
480 0711 [02] [2] CE11      	CALL	_Disp_Hi
481                     	.CHKPARA _Disp_Hi 0
482 0712 [02] [1] 7806      	JMP	_00462_DS_
483                     _00461_DS_:
484                     ;	;.line	1063; ".\Source\App_LCD.c"	DispNum(tmp);
485 0713 [02] [2] 6481      	MVF	r0x10D0,0,0
486 0714 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
487 0715 [03] [2] 6481      	MVF	r0x10D1,0,0
488 0716 [03] [2] C001 F921 	CALL	_DispNum
489                     	.CHKPARA _DispNum 2
490                     ;	;.line	1065; ".\Source\App_LCD.c"	LCD_Point_En();
491 0718 [02] [1] 978A      	BSF	_LCD2,3
492                     _00462_DS_:
493                     ;	;.line	1071; ".\Source\App_LCD.c"	DispDelta(tmp);
494 0719 [02] [1] 6481      	MVF	r0x10D0,0,0
495 071A [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
496 071B [03] [1] 6481      	MVF	r0x10D1,0,0
497 071C [03] [1] CB3E      	CALL	_DispDelta
498                     	.CHKPARA _DispDelta 2
499 071D [02] [X] 784C      	JMP	_00482_DS_
500                     _00467_DS_:
501                     ;	;.line	1081; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
502 071E [02] [2] D29E      	MVF	(_sForecast + 20),0,0
503 071F [02] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
504 0720 [03] [2] 659F      	MVF	(_sForecast + 21),0,0
505 0721 [03] [2] CE31      	CALL	_Centigrade_Convert_Fahrenheit
506                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
507 0722 [02] [2] 6680      	MVF	r0x10D1,1,0
508 0723 [02] [2] 6420      	MVF	STK00,0,0
509 0724 [02] [2] 6681      	MVF	r0x10D0,1,0
510                     ;	;.line	1083; ".\Source\App_LCD.c"	if(tmp > High_Temp_Centigrade)
511 0725 [02] [2] 04D9      	ADDL	0xd9
512 0726 [02] [2] 06EE      	MVL	0xee
513 0727 [02] [2] 1480      	ADDC	r0x10D1,0,0
514 0728 [02] [2] 74        	BTSS	_STATUS,4
515 0728 [02] 02        	JMP	_00464_DS_
516                     ;	;.line	1086; ".\Source\App_LCD.c"	Disp_Hi();
517 0729 [02] [2] CDF9      	CALL	_Disp_Hi
518                     	.CHKPARA _Disp_Hi 0
519 072A [02] [1] 7806      	JMP	_00465_DS_
520                     _00464_DS_:
521                     ;	;.line	1091; ".\Source\App_LCD.c"	DispNum(tmp);
522 072B [02] [2] 6481      	MVF	r0x10D0,0,0
523 072C [02] [2] 660D      	MVF	_DispNum_STK00,1,0
524 072D [03] [2] 6481      	MVF	r0x10D1,0,0
525 072E [03] [2] C001 F921 	CALL	_DispNum
526                     	.CHKPARA _DispNum 2
527                     ;	;.line	1093; ".\Source\App_LCD.c"	LCD_Point_En();
528 0730 [02] [1] 978A      	BSF	_LCD2,3
529                     _00465_DS_:
530                     ;	;.line	1099; ".\Source\App_LCD.c"	DispDelta(tmp);
531 0731 [02] [1] 6481      	MVF	r0x10D0,0,0
532 0732 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
533 0733 [03] [1] 6481      	MVF	r0x10D1,0,0
534 0734 [03] [1] CB26      	CALL	_DispDelta
535                     	.CHKPARA _DispDelta 2
536 0735 [02] [X] 7834      	JMP	_00482_DS_
537                     _00481_DS_:
538                     ;	;.line	1109; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
539 0736 [02] [2] 06A5      	MVL	0xa5
540 0737 [02] [2] 6D13      	CPSE	_eTempUnit,0
541 0738 [02] [2] 7831      	JMP	_00482_DS_
542                     ;	;.line	1112; ".\Source\App_LCD.c"	if(sTIMx.ForecastJudgeOKTempFlash)
543 0739 [02] [2] BDCE      	BTSS	_sTIMx,6
544 073A [02] [2] 7818      	JMP	_00476_DS_
545                     ;	;.line	1114; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sActual_Forecast.Calibrated_Forecast_Temp);
546 073B [02] [2] D2C0      	MVF	(_sActual_Forecast + 13),0,0
547 073C [02] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
548 073D [03] [2] 65C1      	MVF	(_sActual_Forecast + 14),0,0
549 073E [03] [2] CE14      	CALL	_Centigrade_Convert_Fahrenheit
550                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
551 073F [02] [2] 6680      	MVF	r0x10D1,1,0
552 0740 [02] [2] 6420      	MVF	STK00,0,0
553 0741 [02] [2] 6681      	MVF	r0x10D0,1,0
554                     ;	;.line	1116; ".\Source\App_LCD.c"	if(tmp > High_Temp_Fahrenheit)
555 0742 [02] [2] 04A3      	ADDL	0xa3
556 0743 [02] [2] 06D4      	MVL	0xd4
557 0744 [02] [2] 1480      	ADDC	r0x10D1,0,0
558 0745 [02] [2] 74        	BTSS	_STATUS,4
559 0745 [02] 02        	JMP	_00470_DS_
560                     ;	;.line	1119; ".\Source\App_LCD.c"	Disp_Hi();
561 0746 [02] [2] CDDC      	CALL	_Disp_Hi
562                     	.CHKPARA _Disp_Hi 0
563 0747 [02] [1] 7806      	JMP	_00471_DS_
564                     _00470_DS_:
565                     ;	;.line	1124; ".\Source\App_LCD.c"	DispNum(tmp);
566 0748 [02] [2] 6481      	MVF	r0x10D0,0,0
567 0749 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
568 074A [03] [2] 6481      	MVF	r0x10D1,0,0
569 074B [03] [2] C001 F921 	CALL	_DispNum
570                     	.CHKPARA _DispNum 2
571                     ;	;.line	1126; ".\Source\App_LCD.c"	LCD_Point_En();
572 074D [02] [1] 978A      	BSF	_LCD2,3
573                     _00471_DS_:
574                     ;	;.line	1132; ".\Source\App_LCD.c"	DispDelta(tmp);
575 074E [02] [1] 6481      	MVF	r0x10D0,0,0
576 074F [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
577 0750 [03] [1] 6481      	MVF	r0x10D1,0,0
578 0751 [03] [1] CB09      	CALL	_DispDelta
579                     	.CHKPARA _DispDelta 2
580 0752 [02] [X] 7817      	JMP	_00482_DS_
581                     _00476_DS_:
582                     ;	;.line	1142; ".\Source\App_LCD.c"	tmp = Centigrade_Convert_Fahrenheit(sForecast.EndTemp);
583 0753 [02] [2] D29E      	MVF	(_sForecast + 20),0,0
584 0754 [02] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
585 0755 [03] [2] 659F      	MVF	(_sForecast + 21),0,0
586 0756 [03] [2] CDFC      	CALL	_Centigrade_Convert_Fahrenheit
587                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
588 0757 [02] [2] 6680      	MVF	r0x10D1,1,0
589 0758 [02] [2] 6420      	MVF	STK00,0,0
590 0759 [02] [2] 6681      	MVF	r0x10D0,1,0
591                     ;	;.line	1144; ".\Source\App_LCD.c"	if(tmp > High_Temp_Fahrenheit)
592 075A [02] [2] 04A3      	ADDL	0xa3
593 075B [02] [2] 06D4      	MVL	0xd4
594 075C [02] [2] 1480      	ADDC	r0x10D1,0,0
595 075D [02] [2] 74        	BTSS	_STATUS,4
596 075D [02] 02        	JMP	_00473_DS_
597                     ;	;.line	1147; ".\Source\App_LCD.c"	Disp_Hi();
598 075E [02] [2] CDC4      	CALL	_Disp_Hi
599                     	.CHKPARA _Disp_Hi 0
600 075F [02] [1] 7806      	JMP	_00474_DS_
601                     _00473_DS_:
602                     ;	;.line	1152; ".\Source\App_LCD.c"	DispNum(tmp);
603 0760 [02] [2] 6481      	MVF	r0x10D0,0,0
604 0761 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
605 0762 [03] [2] 6481      	MVF	r0x10D1,0,0
606 0763 [03] [2] C001 F921 	CALL	_DispNum
607                     	.CHKPARA _DispNum 2
608                     ;	;.line	1154; ".\Source\App_LCD.c"	LCD_Point_En();
609 0765 [02] [1] 978A      	BSF	_LCD2,3
610                     _00474_DS_:
611                     ;	;.line	1160; ".\Source\App_LCD.c"	DispDelta(tmp);
612 0766 [02] [1] 6481      	MVF	r0x10D0,0,0
613 0767 [02] [1] 660D      	MVF	_DispDelta_STK00,1,0
614 0768 [03] [1] 6481      	MVF	r0x10D1,0,0
615 0769 [03] [1] CAF1      	CALL	_DispDelta
616                     	.CHKPARA _DispDelta 2
617                     _00482_DS_:
618                     ;	;.line	1170; ".\Source\App_LCD.c"	DispUnit();
619 076A [02] [X] CAE1      	CALL	_DispUnit
620                     	.CHKPARA _DispUnit 0
621 076B [02] [X] 7830      	JMP	_00498_DS_
622                     _00497_DS_:
623                     ;	;.line	1175; ".\Source\App_LCD.c"	if(!sADC.UnRefreshTemp)
624 076C [02] [2] A957      	BTSZ	_sADC,4
625 076D [02] [2] 7807      	JMP	_00484_DS_
626                     ;	;.line	1178; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
627 076E [02] [2] D2B6      	MVF	(_sActual_Forecast + 3),0,0
628 076F [02] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
629 0770 [03] [2] 65B7      	MVF	(_sActual_Forecast + 4),0,0
630 0771 [03] [2] CDE1      	CALL	_Centigrade_Convert_Fahrenheit
631                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
632 0772 [02] [2] D020 F2B8 	MVFF	STK00,(_sActual_Forecast + 5)
633 0774 [02] [2] 67B9      	MVF	(_sActual_Forecast + 6),1,0
634                     _00484_DS_:
635                     ;	;.line	1182; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
636 0775 [02] [2] 065A      	MVL	0x5a
637 0776 [02] [2] 6D13      	CPSE	_eTempUnit,0
638 0777 [02] [2] 780E      	JMP	_00494_DS_
639                     ;	;.line	1185; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
640 0778 [02] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
641 0779 [02] [2] 04D9      	ADDL	0xd9
642 077A [02] [2] 06EE      	MVL	0xee
643 077B [02] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
644 077C [02] [2] 74        	BTSS	_STATUS,4
645 077C [02] 02        	JMP	_00486_DS_
646                     ;	;.line	1188; ".\Source\App_LCD.c"	Disp_Hi();
647 077D [02] [2] CDA5      	CALL	_Disp_Hi
648                     	.CHKPARA _Disp_Hi 0
649 077E [02] [1] 7817      	JMP	_00495_DS_
650                     _00486_DS_:
651                     ;	;.line	1193; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
652 077F [02] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
653 0780 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
654 0781 [03] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
655 0782 [03] [2] C001 F921 	CALL	_DispNum
656                     	.CHKPARA _DispNum 2
657                     ;	;.line	1195; ".\Source\App_LCD.c"	LCD_Point_En();
658 0784 [02] [1] 978A      	BSF	_LCD2,3
659 0785 [02] [1] 7810      	JMP	_00495_DS_
660                     _00494_DS_:
661                     ;	;.line	1199; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
662 0786 [02] [2] 06A5      	MVL	0xa5
663 0787 [02] [2] 6D13      	CPSE	_eTempUnit,0
664 0788 [02] [2] 780D      	JMP	_00495_DS_
665                     ;	;.line	1202; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
666 0789 [02] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
667 078A [02] [2] 04A3      	ADDL	0xa3
668 078B [02] [2] 06D4      	MVL	0xd4
669 078C [02] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
670 078D [02] [2] 74        	BTSS	_STATUS,4
671 078D [02] 02        	JMP	_00489_DS_
672                     ;	;.line	1205; ".\Source\App_LCD.c"	Disp_Hi();
673 078E [02] [2] CD94      	CALL	_Disp_Hi
674                     	.CHKPARA _Disp_Hi 0
675 078F [02] [1] 7806      	JMP	_00495_DS_
676                     _00489_DS_:
677                     ;	;.line	1210; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
678 0790 [02] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
679 0791 [02] [2] 660D      	MVF	_DispNum_STK00,1,0
680 0792 [03] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
681 0793 [03] [2] C001 F921 	CALL	_DispNum
682                     	.CHKPARA _DispNum 2
683                     ;	;.line	1212; ".\Source\App_LCD.c"	LCD_Point_En();
684 0795 [02] [1] 978A      	BSF	_LCD2,3
685                     _00495_DS_:
686                     ;	;.line	1217; ".\Source\App_LCD.c"	DispUnit();
687 0796 [02] [X] CAB5 0012 	CALL	_DispUnit
688                     	.CHKPARA _DispUnit 0
689                     ;	;.line	1222; ".\Source\App_LCD.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
690 0798 [02] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
691 0799 [02] [2] 660D      	MVF	_DispDelta_STK00,1,0
692 079A [03] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
693 079B [03] [2] CABF      	CALL	_DispDelta
694                     	.CHKPARA _DispDelta 2
695 079C [00] [2] 0012      _00498_DS_:
696                     ;	;.line	1233; ".\Source\App_LCD.c"	if(sForecast.Update_MaxTemp3Min_Arrived && !sTempCal.Reset_From_CalOK)
697 079D [02] [2] A38A      	BTSZ	_sForecast,1
698 079E [02] [2] ABA4      	BTSZ	_sTempCal,5
699 079F [02] [2] 7804      	JMP	_00502_DS_
700                     ;	;.line	1235; ".\Source\App_LCD.c"	LCD_ForecastP1P2_Clr();
701 07A0 [02] [2] 06F9 0011 	MVL	0xf9
702 07A2 [02] [1] 2B8C      	ANDF	_LCD4,1,0
703 07A3 [02] [1] 7805      	JMP	_00505_DS_
704                     _00502_DS_:
705                     ;	;.line	1237; ".\Source\App_LCD.c"	else if(sForecast.Forecast_Start)
706 07A4 [02] [2] B18A      	BTSS	_sForecast,0
707 07A5 [02] [2] 7803      	JMP	_00505_DS_
708                     ;	;.line	1239; ".\Source\App_LCD.c"	LCD_ForecastP1P2_En();
709 07A6 [02] [2] 0606 0011 	MVL	0x06
710 07A8 [02] [1] 2F8C      	IORF	_LCD4,1,0
711                     _00505_DS_:
712                     ;	;.line	1241; ".\Source\App_LCD.c"	}
713 07A9 [00] [X] C4FE      	RET	
714                     ; exit point of _MeasedTemp_Disp
715                     	.ENDFUNC	_MeasedTemp_Disp
716                     ;--------------------------------------------------------
717                     
718                     .globl _Err_Disp
719                     
720                     ;--------------------------------------------------------
721                     	.FUNC _Err_Disp:0:$C:_Disp_ErrNo:$C:_Disp_Err\
722                     
723                     ;--------------------------------------------------------
724                     ;	;.line	985; ".\Source\App_LCD.c"	if(ERR[Err4])
725                     _Err_Disp:	;Function start
726 144E [00] [2] 4D4D      	RRF	(_ERR + 4),0,0
727 144F [00] [2] 71        	BTSZ	_STATUS,0
728 144F [00] 02        	JMP	_00453_DS_
729                     ;	;.line	989; ".\Source\App_LCD.c"	Disp_ErrNo(Err4);
730 1450 [00] [2] 0604      	MVL	0x04
731 1451 [00] [2] 795E      	CALL	_Disp_ErrNo
732                     	.CHKPARA _Disp_ErrNo 1
733                     	JMP	_00455_DS_
734                     _00453_DS_:
735                     ;	;.line	991; ".\Source\App_LCD.c"	else if(ERR[Err0])
736 1452 [00] [2] 4D49      	RRF	(_ERR + 0),0,0
737 1453 [00] [2] 71        	BTSZ	_STATUS,0
738 1453 [00] 02        	JMP	_00450_DS_
739                     ;	;.line	995; ".\Source\App_LCD.c"	Disp_ErrNo(Err0);
740 1454 [00] [2] 0600      	MVL	0x00
741 1455 [00] [2] 795A      	CALL	_Disp_ErrNo
742                     	.CHKPARA _Disp_ErrNo 1
743                     	JMP	_00455_DS_
744                     _00450_DS_:
745                     ;	;.line	997; ".\Source\App_LCD.c"	else if(ERR[Err5])
746 1456 [00] [2] 4D4E      	RRF	(_ERR + 5),0,0
747 1457 [00] [2] 71        	BTSZ	_STATUS,0
748 1457 [00] 02        	JMP	_00447_DS_
749                     ;	;.line	1001; ".\Source\App_LCD.c"	Disp_ErrNo(Err5);
750 1458 [00] [2] 0605      	MVL	0x05
751 1459 [00] [2] 7956      	CALL	_Disp_ErrNo
752                     	.CHKPARA _Disp_ErrNo 1
753                     	JMP	_00455_DS_
754                     _00447_DS_:
755                     ;	;.line	1003; ".\Source\App_LCD.c"	else if(ERR[Err1])
756 145A [00] [2] 4D4A      	RRF	(_ERR + 1),0,0
757 145B [00] [2] 71        	BTSZ	_STATUS,0
758 145B [00] 02        	JMP	_00444_DS_
759                     ;	;.line	1006; ".\Source\App_LCD.c"	Disp_ErrNo(Err1);
760 145C [00] [2] 0601      	MVL	0x01
761 145D [00] [2] 7952      	CALL	_Disp_ErrNo
762                     	.CHKPARA _Disp_ErrNo 1
763                     	JMP	_00455_DS_
764                     _00444_DS_:
765                     ;	;.line	1008; ".\Source\App_LCD.c"	else if(ERR[Err6])
766 145E [00] [2] 4D4F      	RRF	(_ERR + 6),0,0
767 145F [00] [2] 71        	BTSZ	_STATUS,0
768 145F [00] 02        	JMP	_00441_DS_
769                     ;	;.line	1011; ".\Source\App_LCD.c"	Disp_ErrNo(Err6);
770 1460 [00] [2] 0606      	MVL	0x06
771 1461 [00] [2] 794E      	CALL	_Disp_ErrNo
772                     	.CHKPARA _Disp_ErrNo 1
773                     	JMP	_00455_DS_
774                     _00441_DS_:
775                     ;	;.line	1013; ".\Source\App_LCD.c"	else if(ERR[Err2])
776 1462 [00] [2] 4D4B      	RRF	(_ERR + 2),0,0
777 1463 [00] [2] 71        	BTSZ	_STATUS,0
778 1463 [00] 02        	JMP	_00438_DS_
779                     ;	;.line	1016; ".\Source\App_LCD.c"	Disp_ErrNo(Err2);
780 1464 [00] [2] 0602      	MVL	0x02
781 1465 [00] [2] 794A      	CALL	_Disp_ErrNo
782                     	.CHKPARA _Disp_ErrNo 1
783                     	JMP	_00455_DS_
784                     _00438_DS_:
785                     ;	;.line	1018; ".\Source\App_LCD.c"	else if(ERR[Err3])
786 1466 [00] [2] 4D4C      	RRF	(_ERR + 3),0,0
787 1467 [00] [2] 71        	BTSZ	_STATUS,0
788 1467 [00] 02        	JMP	_00435_DS_
789                     ;	;.line	1021; ".\Source\App_LCD.c"	Disp_ErrNo(Err3);
790 1468 [00] [2] 0603      	MVL	0x03
791 1469 [00] [2] 7946      	CALL	_Disp_ErrNo
792                     	.CHKPARA _Disp_ErrNo 1
793                     	JMP	_00455_DS_
794                     _00435_DS_:
795                     ;	;.line	1023; ".\Source\App_LCD.c"	else if(ERR[Err])
796 146A [00] [2] 4D51      	RRF	(_ERR + 8),0,0
797 146B [00] [2] 71        	BTSZ	_STATUS,0
798 146B [00] 02        	JMP	_00432_DS_
799                     ;	;.line	1026; ".\Source\App_LCD.c"	Disp_Err();
800 146C [00] [2] C939      	CALL	_Disp_Err
801                     	.CHKPARA _Disp_Err 0
802 146D [00] [1] 000A      	JMP	_00455_DS_
803                     _00432_DS_:
804                     ;	;.line	1028; ".\Source\App_LCD.c"	else if(ERR[Err7])
805 146E [00] [2] 4D50      	RRF	(_ERR + 7),0,0
806 146F [00] [2] 71        	BTSZ	_STATUS,0
807 146F [00] 02        	JMP	_00455_DS_
808                     ;	;.line	1031; ".\Source\App_LCD.c"	Disp_ErrNo(Err7);
809 1470 [00] [2] 0607      	MVL	0x07
810 1471 [00] [2] C93E      	CALL	_Disp_ErrNo
811                     	.CHKPARA _Disp_ErrNo 1
812                     _00455_DS_:
813                     ;	;.line	1033; ".\Source\App_LCD.c"	}
814 1472 [00] [X] 000A      	RET	
815                     ; exit point of _Err_Disp
816                     	.ENDFUNC	_Err_Disp
817                     ;--------------------------------------------------------
818                     
819                     .globl _TempDetecting_Display
820                     
821                     ;--------------------------------------------------------
822                     	.FUNC _TempDetecting_Display:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_Hi:$C:_EMC_Update_Temp_Fast:$C:_Disp_StaticDash\
823                     :$C:_DispNum:$C:_Disp_UnitFlash:$C:_Disp_DynamicDash:$C:_Disp_DynamicForecastSymbol:$C:_DispUnit\
824                     :$C:_Disp_BleSymbol\
825                     
826                     ;--------------------------------------------------------
827                     ;	;.line	866; ".\Source\App_LCD.c"	if((eMeasureMode == Bath_Mode) || sActual.Actual_Start)
828                     _TempDetecting_Display:	;Function start
829 06A8 [00] [2] 6516      	MVF	_eMeasureMode,0,0
830 06A9 [00] [2] 0303      	XORL	0x03
831 06AA [00] [2] 71        	BTSZ	_STATUS,0
832 06AA [00] 02        	JMP	_00382_DS_
833 06AB [00] [2] B185      	BTSS	_sActual,0
834 06AC [00] [2] 783F      	JMP	_00383_DS_
835                     _00382_DS_:
836                     ;	;.line	872; ".\Source\App_LCD.c"	if(!sADC.UnRefreshTemp)
837 06AD [00] [2] A957      	BTSZ	_sADC,4
838 06AE [00] [2] 7838      	JMP	_00378_DS_
839                     ;	;.line	878; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sActual_Forecast.CentigradeTempDisp);
840 06AF [00] [2] D2B6      	MVF	(_sActual_Forecast + 3),0,0
841 06B0 [00] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
842 06B1 [01] [2] 65B7      	MVF	(_sActual_Forecast + 4),0,0
843 06B2 [01] [2] CEA0      	CALL	_Centigrade_Convert_Fahrenheit
844                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
845 06B3 [00] [2] D020 F2B8 	MVFF	STK00,(_sActual_Forecast + 5)
846 06B5 [00] [2] 67B9      	MVF	(_sActual_Forecast + 6),1,0
847                     ;	;.line	881; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
848 06B6 [00] [2] 065A      	MVL	0x5a
849 06B7 [00] [2] 6D13      	CPSE	_eTempUnit,0
850 06B8 [00] [2] 7817      	JMP	_00375_DS_
851                     ;	;.line	884; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
852 06B9 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
853 06BA [00] [2] 04D9      	ADDL	0xd9
854 06BB [00] [2] 06EE      	MVL	0xee
855 06BC [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
856 06BD [00] [2] 74        	BTSS	_STATUS,4
857 06BD [00] 03        	JMP	_00364_DS_
858                     ;	;.line	887; ".\Source\App_LCD.c"	Disp_Hi();
859 06BE [00] [2] CE64      	CALL	_Disp_Hi
860                     	.CHKPARA _Disp_Hi 0
861                     ;	;.line	889; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
862 06BF [00] [1] C835      	CALL	_EMC_Update_Temp_Fast
863                     	.CHKPARA _EMC_Update_Temp_Fast 0
864 06C0 [00] [1] 7826      	JMP	_00378_DS_
865                     _00364_DS_:
866                     ;	;.line	892; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
867 06C1 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
868 06C2 [00] [2] 0480      	ADDL	0x80
869 06C3 [00] [2] 06F3      	MVL	0xf3
870 06C4 [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
871 06C5 [00] [2] 70        	BTSZ	_STATUS,4
872 06C5 [00] 02        	JMP	_00361_DS_
873                     ;	;.line	902; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
874 06C6 [00] [2] CE66      	CALL	_Disp_StaticDash
875                     	.CHKPARA _Disp_StaticDash 0
876 06C7 [00] [1] 781F      	JMP	_00378_DS_
877                     _00361_DS_:
878                     ;	;.line	908; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
879 06C8 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
880 06C9 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
881 06CA [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
882 06CB [01] [2] C001 F921 	CALL	_DispNum
883                     	.CHKPARA _DispNum 2
884                     ;	;.line	910; ".\Source\App_LCD.c"	LCD_Point_En();
885 06CD [00] [1] 978A      	BSF	_LCD2,3
886                     ;	;.line	912; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
887 06CE [00] [1] C826      	CALL	_EMC_Update_Temp_Fast
888                     	.CHKPARA _EMC_Update_Temp_Fast 0
889 06CF [00] [1] 7817      	JMP	_00378_DS_
890                     _00375_DS_:
891                     ;	;.line	916; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
892 06D0 [00] [2] 06A5      	MVL	0xa5
893 06D1 [00] [2] 6D13      	CPSE	_eTempUnit,0
894 06D2 [00] [2] 7814      	JMP	_00378_DS_
895                     ;	;.line	919; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
896 06D3 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
897 06D4 [00] [2] 04A3      	ADDL	0xa3
898 06D5 [00] [2] 06D4      	MVL	0xd4
899 06D6 [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
900 06D7 [00] [2] 74        	BTSS	_STATUS,4
901 06D7 [00] 03        	JMP	_00370_DS_
902                     ;	;.line	922; ".\Source\App_LCD.c"	Disp_Hi();
903 06D8 [00] [2] CE4A      	CALL	_Disp_Hi
904                     	.CHKPARA _Disp_Hi 0
905                     ;	;.line	924; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
906 06D9 [00] [1] C81B      	CALL	_EMC_Update_Temp_Fast
907                     	.CHKPARA _EMC_Update_Temp_Fast 0
908 06DA [00] [1] 780C      	JMP	_00378_DS_
909                     _00370_DS_:
910                     ;	;.line	927; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
911 06DB [00] [2] 0623      	MVL	0x23
912 06DC [00] [2] 6BB9      	CPSL	(_sActual_Forecast + 6),0
913 06DD [00] [2] 7802      	JMP	_00367_DS_
914                     ;	;.line	937; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
915 06DE [00] [2] CE4E      	CALL	_Disp_StaticDash
916                     	.CHKPARA _Disp_StaticDash 0
917 06DF [00] [1] 7807      	JMP	_00378_DS_
918                     _00367_DS_:
919                     ;	;.line	943; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
920 06E0 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
921 06E1 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
922 06E2 [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
923 06E3 [01] [2] C001 F921 	CALL	_DispNum
924                     	.CHKPARA _DispNum 2
925                     ;	;.line	945; ".\Source\App_LCD.c"	LCD_Point_En();
926 06E5 [00] [1] 978A      	BSF	_LCD2,3
927                     ;	;.line	947; ".\Source\App_LCD.c"	EMC_Update_Temp_Fast();
928 06E6 [00] [1] C80E      	CALL	_EMC_Update_Temp_Fast
929                     	.CHKPARA _EMC_Update_Temp_Fast 0
930                     _00378_DS_:
931                     ;	;.line	952; ".\Source\App_LCD.c"	Disp_UnitFlash();
932 06E7 [00] [X] C9B4      	CALL	_Disp_UnitFlash
933                     	.CHKPARA _Disp_UnitFlash 0
934                     ;	;.line	954; ".\Source\App_LCD.c"	LCD_ForecastP1P2_Clr();
935 06E8 [00] [X] 06F9 0011 	MVL	0xf9
936 06EA [00] [1] 2B8C      	ANDF	_LCD4,1,0
937 06EB [00] [1] 000A      	JMP	_00384_DS_
938                     _00383_DS_:
939                     ;	;.line	958; ".\Source\App_LCD.c"	if(sForecast.Forecast_Start)
940 06EC [00] [2] B18A      	BTSS	_sForecast,0
941 06ED [00] [2] 7803      	JMP	_00380_DS_
942                     ;	;.line	960; ".\Source\App_LCD.c"	Disp_DynamicDash();
943 06EE [00] [2] C960      	CALL	_Disp_DynamicDash
944                     	.CHKPARA _Disp_DynamicDash 0
945                     ;	;.line	961; ".\Source\App_LCD.c"	Disp_DynamicForecastSymbol();
946 06EF [00] [1] C955      	CALL	_Disp_DynamicForecastSymbol
947                     	.CHKPARA _Disp_DynamicForecastSymbol 0
948 06F0 [00] [1] 7802      	JMP	_00381_DS_
949                     _00380_DS_:
950                     ;	;.line	966; ".\Source\App_LCD.c"	Disp_StaticDash();
951 06F1 [00] [2] CE3B      	CALL	_Disp_StaticDash
952                     	.CHKPARA _Disp_StaticDash 0
953                     ;	;.line	968; ".\Source\App_LCD.c"	LCD_ForecastP2_En();
954 06F2 [00] [1] 958C      	BSF	_LCD4,2
955                     _00381_DS_:
956                     ;	;.line	972; ".\Source\App_LCD.c"	DispUnit();
957 06F3 [00] [1] CB58      	CALL	_DispUnit
958                     	.CHKPARA _DispUnit 0
959                     _00384_DS_:
960                     ;	;.line	975; ".\Source\App_LCD.c"	Disp_BleSymbol();
961 06F4 [00] [X] 000A      	CALL	_Disp_BleSymbol
962                     	.CHKPARA _Disp_BleSymbol 0
963                     ;	;.line	976; ".\Source\App_LCD.c"	}
964                     	RET	
965                     ; exit point of _TempDetecting_Display
966                     	.ENDFUNC	_TempDetecting_Display
967                     ;--------------------------------------------------------
968                     
969                     .globl _EMC_Update_Temp_Fast
970                     
971                     ;--------------------------------------------------------
972                     	.FUNC _EMC_Update_Temp_Fast:0
973                     ;--------------------------------------------------------
974                     ;	;.line	855; ".\Source\App_LCD.c"	}
975                     _EMC_Update_Temp_Fast:	;Function start
976 06F5 [00] [Y] 000A      	RET	
977                     ; exit point of _EMC_Update_Temp_Fast
978                     	.ENDFUNC	_EMC_Update_Temp_Fast
979                     ;--------------------------------------------------------
980                     
981                     .globl _Binding_Display
982                     
983                     ;--------------------------------------------------------
984                     	.FUNC _Binding_Display:0:$C:_Disp_Version:$C:_Disp_Code\
985                     
986                     ;--------------------------------------------------------
987                     ;	;.line	820; ".\Source\App_LCD.c"	if(eVersionCode == VC_DispOn)
988                     _Binding_Display:	;Function start
989 1443 [00] [2] 3515      	DCSZ	_eVersionCode,0,0
990 1444 [00] [2] 7808      	JMP	_00351_DS_
991                     ;	;.line	822; ".\Source\App_LCD.c"	if(sTIMx.BindingSymbolFlash)
992 1445 [00] [2] BFCE      	BTSS	_sTIMx,7
993 1446 [00] [2] 7802      	JMP	_00347_DS_
994                     ;	;.line	825; ".\Source\App_LCD.c"	Disp_Version(Soft_External_Version);
995 1447 [00] [2] 060B      	MVL	0x0b
996 1448 [00] [2] 7A2A      	CALL	_Disp_Version
997                     	.CHKPARA _Disp_Version 1
998                     	JMP	_00351_DS_
999                     _00347_DS_:
1000                     ;	;.line	830; ".\Source\App_LCD.c"	Disp_Code(Soft_Code);
1001 1449 [00] [2] 069A      	MVL	0x9a
1002 144A [00] [2] 660D      	MVF	_Disp_Code_STK00,1,0
1003 144B [01] [2] 0603      	MVL	0x03
1004 144C [01] [2] C91E      	CALL	_Disp_Code
1005                     	.CHKPARA _Disp_Code 2
1006                     _00351_DS_:
1007                     ;	;.line	833; ".\Source\App_LCD.c"	}
1008 144D [00] [X] 000A      	RET	
1009                     ; exit point of _Binding_Display
1010                     	.ENDFUNC	_Binding_Display
1011                     ;--------------------------------------------------------
1012                     
1013                     .globl _ModeExchange_Display
1014                     
1015                     ;--------------------------------------------------------
1016                     	.FUNC _ModeExchange_Display:0:$C:_CurrentMode_Display:$C:_Disp_Nothing\
1017                     
1018                     ;--------------------------------------------------------
1019                     ;	;.line	800; ".\Source\App_LCD.c"	if(sTIMx.ModeSymbolFlash || sTIMx.EnableModeSymbolFlash)
1020                     _ModeExchange_Display:	;Function start
1021 06F6 [00] [2] A7CE      	BTSZ	_sTIMx,3
1022 06F7 [00] [2] 7802      	JMP	_00337_DS_
1023 06F8 [00] [2] B9CE      	BTSS	_sTIMx,4
1024 06F9 [00] [2] 7803      	JMP	_00338_DS_
1025                     _00337_DS_:
1026                     ;	;.line	803; ".\Source\App_LCD.c"	CurrentMode_Display();
1027 06FA [00] [2] C001 F431 	CALL	_CurrentMode_Display
1028                     	.CHKPARA _CurrentMode_Display 0
1029 06FC [00] [X] 000A      	JMP	_00341_DS_
1030                     _00338_DS_:
1031                     ;	;.line	808; ".\Source\App_LCD.c"	Disp_Nothing();
1032 06FD [00] [2] 7E43      	CALL	_Disp_Nothing
1033                     	.CHKPARA _Disp_Nothing 0
1034                     _00341_DS_:
1035                     ;	;.line	810; ".\Source\App_LCD.c"	}
1036                     	RET	
1037                     ; exit point of _ModeExchange_Display
1038                     	.ENDFUNC	_ModeExchange_Display
1039                     ;--------------------------------------------------------
1040                     
1041                     .globl _CurrentMode_Display
1042                     
1043                     ;--------------------------------------------------------
1044                     	.FUNC _CurrentMode_Display:0:$C:_Disp_Orl:$C:_Disp_Udr:$C:_Disp_Rct:$C:_Disp_Bth\
1045                     
1046                     ;--------------------------------------------------------
1047                     ;	;.line	758; ".\Source\App_LCD.c"	if(eMeasureMode == Oral_Mode)
1048                     _CurrentMode_Display:	;Function start
1049 1431 [00] [2] 6F16      	TFSZ	_eMeasureMode,0
1050 1432 [00] [2] 7802      	JMP	_00330_DS_
1051                     ;	;.line	761; ".\Source\App_LCD.c"	Disp_Orl();
1052 1433 [00] [2] C92C      	CALL	_Disp_Orl
1053                     	.CHKPARA _Disp_Orl 0
1054 1434 [00] [1] 000A      	JMP	_00332_DS_
1055                     _00330_DS_:
1056                     ;	;.line	764; ".\Source\App_LCD.c"	else if(eMeasureMode == Underarm_Mode)
1057 1435 [00] [2] 3516      	DCSZ	_eMeasureMode,0,0
1058 1436 [00] [2] 7802      	JMP	_00327_DS_
1059                     ;	;.line	767; ".\Source\App_LCD.c"	Disp_Udr();
1060 1437 [00] [2] C91D      	CALL	_Disp_Udr
1061                     	.CHKPARA _Disp_Udr 0
1062 1438 [00] [1] 000A      	JMP	_00332_DS_
1063                     _00327_DS_:
1064                     ;	;.line	770; ".\Source\App_LCD.c"	else if(eMeasureMode == Rectal_Mode)
1065 1439 [00] [2] 0602      	MVL	0x02
1066 143A [00] [2] 6D16      	CPSE	_eMeasureMode,0
1067 143B [00] [2] 7802      	JMP	_00324_DS_
1068                     ;	;.line	773; ".\Source\App_LCD.c"	Disp_Rct();
1069 143C [00] [2] C90D      	CALL	_Disp_Rct
1070                     	.CHKPARA _Disp_Rct 0
1071 143D [00] [1] 000A      	JMP	_00332_DS_
1072                     _00324_DS_:
1073                     ;	;.line	776; ".\Source\App_LCD.c"	else if(eMeasureMode == Bath_Mode)
1074 143E [00] [2] 0603      	MVL	0x03
1075 143F [00] [2] 6D16      	CPSE	_eMeasureMode,0
1076 1440 [00] [2] 7801      	JMP	_00332_DS_
1077                     ;	;.line	779; ".\Source\App_LCD.c"	Disp_Bth();
1078 1441 [00] [2] C8FD      	CALL	_Disp_Bth
1079                     	.CHKPARA _Disp_Bth 0
1080                     _00332_DS_:
1081                     ;	;.line	781; ".\Source\App_LCD.c"	}
1082 1442 [00] [X] 000A      	RET	
1083                     ; exit point of _CurrentMode_Display
1084                     	.ENDFUNC	_CurrentMode_Display
1085                     ;--------------------------------------------------------
1086                     
1087                     .globl _MemTempValue_Display
1088                     
1089                     ;--------------------------------------------------------
1090                     	.FUNC _MemTempValue_Display:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
1091                     :$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\
1092                     
1093                     ;--------------------------------------------------------
1094                     ;	;.line	660; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemoryFlag.MemTempDispValue]);
1095                     _MemTempValue_Display:	;Function start
1096 07AA [00] [2] 65CA      	MVF	(_sMemoryFlag + 2),0,0
1097 07AB [00] [2] 0702      	MULL	0x02
1098 07AC [00] [2] 6422      	MVF	_PRODL,0,0
1099 07AD [00] [2] 000C F2C6 	LDPR	(_sMemory + 3),0
1100 07AF [00] [2] D004 F020 	MVFF	_PLUSW0,STK00
1101 07B1 [00] [2] 3829      	INF	_WREG,0,0
1102 07B2 [00] [2] D004 F01F 	MVFF	_PLUSW0,STK01
1103 07B4 [00] [2] D020      	MVF	STK00,0,0
1104 07B5 [00] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
1105 07B6 [01] [2] 641F      	MVF	STK01,0,0
1106 07B7 [01] [2] CD9B      	CALL	_Centigrade_Convert_Fahrenheit
1107                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1108 07B8 [00] [2] D020 F2B8 	MVFF	STK00,(_sActual_Forecast + 5)
1109 07BA [00] [2] 67B9      	MVF	(_sActual_Forecast + 6),1,0
1110                     ;	;.line	661; ".\Source\App_LCD.c"	if(!sMemory.MemTempSum)
1111 07BB [00] [2] 6FC5      	TFSZ	(_sMemory + 2),0
1112 07BC [00] [2] 7802      	JMP	_00315_DS_
1113                     ;	;.line	668; ".\Source\App_LCD.c"	Disp_StaticDash();
1114 07BD [00] [2] CD6F      	CALL	_Disp_StaticDash
1115                     	.CHKPARA _Disp_StaticDash 0
1116 07BE [00] [1] 7832      	JMP	_00316_DS_
1117                     _00315_DS_:
1118                     ;	;.line	674; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
1119 07BF [00] [2] 065A      	MVL	0x5a
1120 07C0 [00] [2] 6D13      	CPSE	_eTempUnit,0
1121 07C1 [00] [2] 7815      	JMP	_00312_DS_
1122                     ;	;.line	676; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
1123 07C2 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1124 07C3 [00] [2] 04D9      	ADDL	0xd9
1125 07C4 [00] [2] 06EE      	MVL	0xee
1126 07C5 [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
1127 07C6 [00] [2] 74        	BTSS	_STATUS,4
1128 07C6 [00] 02        	JMP	_00301_DS_
1129                     ;	;.line	678; ".\Source\App_LCD.c"	Disp_Hi();
1130 07C7 [00] [2] CD5B      	CALL	_Disp_Hi
1131                     	.CHKPARA _Disp_Hi 0
1132 07C8 [00] [1] 7823      	JMP	_00313_DS_
1133                     _00301_DS_:
1134                     ;	;.line	680; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
1135 07C9 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1136 07CA [00] [2] 0480      	ADDL	0x80
1137 07CB [00] [2] 06F3      	MVL	0xf3
1138 07CC [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
1139 07CD [00] [2] 70        	BTSZ	_STATUS,4
1140 07CD [00] 02        	JMP	_00298_DS_
1141                     ;	;.line	690; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
1142 07CE [00] [2] CD5E      	CALL	_Disp_StaticDash
1143                     	.CHKPARA _Disp_StaticDash 0
1144 07CF [00] [1] 781C      	JMP	_00313_DS_
1145                     _00298_DS_:
1146                     ;	;.line	696; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1147 07D0 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1148 07D1 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1149 07D2 [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
1150 07D3 [01] [2] C001 F921 	CALL	_DispNum
1151                     	.CHKPARA _DispNum 2
1152                     ;	;.line	698; ".\Source\App_LCD.c"	LCD_Point_En();
1153 07D5 [00] [1] 978A      	BSF	_LCD2,3
1154 07D6 [00] [1] 7815      	JMP	_00313_DS_
1155                     _00312_DS_:
1156                     ;	;.line	702; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
1157 07D7 [00] [2] 06A5      	MVL	0xa5
1158 07D8 [00] [2] 6D13      	CPSE	_eTempUnit,0
1159 07D9 [00] [2] 7812      	JMP	_00313_DS_
1160                     ;	;.line	704; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
1161 07DA [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1162 07DB [00] [2] 04A3      	ADDL	0xa3
1163 07DC [00] [2] 06D4      	MVL	0xd4
1164 07DD [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
1165 07DE [00] [2] 74        	BTSS	_STATUS,4
1166 07DE [00] 02        	JMP	_00307_DS_
1167                     ;	;.line	706; ".\Source\App_LCD.c"	Disp_Hi();
1168 07DF [00] [2] CD43      	CALL	_Disp_Hi
1169                     	.CHKPARA _Disp_Hi 0
1170 07E0 [00] [1] 780B      	JMP	_00313_DS_
1171                     _00307_DS_:
1172                     ;	;.line	708; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
1173 07E1 [00] [2] 0623      	MVL	0x23
1174 07E2 [00] [2] 6BB9      	CPSL	(_sActual_Forecast + 6),0
1175 07E3 [00] [2] 7802      	JMP	_00304_DS_
1176                     ;	;.line	718; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
1177 07E4 [00] [2] CD48      	CALL	_Disp_StaticDash
1178                     	.CHKPARA _Disp_StaticDash 0
1179 07E5 [00] [1] 7806      	JMP	_00313_DS_
1180                     _00304_DS_:
1181                     ;	;.line	724; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1182 07E6 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1183 07E7 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1184 07E8 [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
1185 07E9 [01] [2] C001 F921 	CALL	_DispNum
1186                     	.CHKPARA _DispNum 2
1187                     ;	;.line	726; ".\Source\App_LCD.c"	LCD_Point_En();
1188 07EB [00] [1] 978A      	BSF	_LCD2,3
1189 07EC [00] [2] 0012      _00313_DS_:
1190                     ;	;.line	733; ".\Source\App_LCD.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
1191 07ED [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1192 07EE [00] [2] 660D      	MVF	_DispDelta_STK00,1,0
1193 07EF [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
1194 07F0 [01] [2] CA6A      	CALL	_DispDelta
1195                     	.CHKPARA _DispDelta 2
1196                     _00316_DS_:
1197                     ;	;.line	743; ".\Source\App_LCD.c"	DispUnit();
1198 07F1 [00] [X] CA5A 0011 	CALL	_DispUnit
1199                     	.CHKPARA _DispUnit 0
1200                     ;	;.line	745; ".\Source\App_LCD.c"	LCD_Mem_En();
1201 07F3 [00] [1] 978B      	BSF	_LCD3,3
1202                     ;	;.line	747; ".\Source\App_LCD.c"	Disp_BleSymbol();
1203 07F4 [00] [1] 000A      	CALL	_Disp_BleSymbol
1204                     	.CHKPARA _Disp_BleSymbol 0
1205                     ;	;.line	748; ".\Source\App_LCD.c"	}
1206                     	RET	
1207                     ; exit point of _MemTempValue_Display
1208                     	.ENDFUNC	_MemTempValue_Display
1209                     ;--------------------------------------------------------
1210                     
1211                     .globl _MemTempNumber_Display
1212                     
1213                     ;--------------------------------------------------------
1214                     	.FUNC _MemTempNumber_Display:0:$C:_DispNum:$C:_Disp_BleSymbol\
1215                     :$L:r0x10BD
1216                     ;--------------------------------------------------------
1217                     ;	;.line	608; ".\Source\App_LCD.c"	if(sMemoryFlag.Update_MemTempDispNo)
1218 05F9 [00] [2] C481      _MemTempNumber_Display:	;Function start
1219 05FA [01] [2] B9C8      	BTSS	_sMemoryFlag,4
1220 05FB [01] [2] 7807      	JMP	_00281_DS_
1221                     ;	;.line	610; ".\Source\App_LCD.c"	sMemoryFlag.Update_MemTempDispNo = FALSE;
1222 05FC [01] [2] 89C8      	BCF	_sMemoryFlag,4
1223                     ;	;.line	612; ".\Source\App_LCD.c"	if(++sMemoryFlag.MemTempDispNo > sMemory.MemTempSum)
1224 05FD [01] [2] 3BC9      	INF	(_sMemoryFlag + 1),1,0
1225 05FE [01] [2] 65C9      	MVF	(_sMemoryFlag + 1),0,0
1226 05FF [01] [2] 6BC5      	CPSL	(_sMemory + 2),0
1227 0600 [01] [2] 7802      	JMP	_00281_DS_
1228                     ;	;.line	614; ".\Source\App_LCD.c"	sMemoryFlag.MemTempDispNo = 1;
1229 0601 [01] [2] 0601      	MVL	0x01
1230 0602 [01] [2] 67C9      	MVF	(_sMemoryFlag + 1),1,0
1231                     _00281_DS_:
1232                     ;	;.line	618; ".\Source\App_LCD.c"	if(sMemoryFlag.Update_MemTempDispVlaue)
1233 0603 [01] [2] BBC8      	BTSS	_sMemoryFlag,5
1234 0604 [01] [2] 7817      	JMP	_00292_DS_
1235                     ;	;.line	620; ".\Source\App_LCD.c"	sMemoryFlag.Update_MemTempDispVlaue = FALSE;
1236 0605 [01] [2] 8BC8      	BCF	_sMemoryFlag,5
1237                     ;	;.line	621; ".\Source\App_LCD.c"	if(sMemory.MemTempSum == MemTempNum/*10*/)
1238 0606 [01] [2] 35C5      	DCSZ	(_sMemory + 2),0,0
1239 0607 [01] [2] 780A      	JMP	_00289_DS_
1240                     ;	;.line	623; ".\Source\App_LCD.c"	if(!sMemoryFlag.MemTempDispValue)
1241 0608 [01] [2] 65CA      	MVF	(_sMemoryFlag + 2),0,0
1242 0609 [01] [2] 6680      	MVF	r0x10BD,1,0
1243 060A [01] [2] 6E29      	TFSZ	_WREG,0
1244 060B [01] [2] 7802      	JMP	_00283_DS_
1245                     ;	;.line	625; ".\Source\App_LCD.c"	sMemoryFlag.MemTempDispValue = MemTempNum - 1/*9*/;
1246 060C [01] [2] 0DCA      	CLRF	(_sMemoryFlag + 2),0
1247 060D [01] [2] 780E      	JMP	_00292_DS_
1248                     _00283_DS_:
1249                     ;	;.line	629; ".\Source\App_LCD.c"	--sMemoryFlag.MemTempDispValue;
1250 060E [01] [2] 3280      	DCF	r0x10BD,1,0
1251 060F [01] [2] 6480      	MVF	r0x10BD,0,0
1252 0610 [01] [2] 67CA      	MVF	(_sMemoryFlag + 2),1,0
1253 0611 [01] [2] 780A      	JMP	_00292_DS_
1254                     _00289_DS_:
1255                     ;	;.line	634; ".\Source\App_LCD.c"	if(!sMemoryFlag.MemTempDispValue)
1256 0612 [01] [2] 65CA      	MVF	(_sMemoryFlag + 2),0,0
1257 0613 [01] [2] 6680      	MVF	r0x10BD,1,0
1258 0614 [01] [2] 6E29      	TFSZ	_WREG,0
1259 0615 [01] [2] 7803      	JMP	_00286_DS_
1260                     ;	;.line	636; ".\Source\App_LCD.c"	sMemoryFlag.MemTempDispValue = sMemory.pMemTempBuf;
1261 0616 [01] [2] 65C4      	MVF	(_sMemory + 1),0,0
1262 0617 [01] [2] 67CA      	MVF	(_sMemoryFlag + 2),1,0
1263 0618 [01] [2] 7803      	JMP	_00292_DS_
1264                     _00286_DS_:
1265                     ;	;.line	640; ".\Source\App_LCD.c"	--sMemoryFlag.MemTempDispValue;
1266 0619 [01] [2] 3280      	DCF	r0x10BD,1,0
1267 061A [01] [2] 6480      	MVF	r0x10BD,0,0
1268 061B [01] [2] 67CA      	MVF	(_sMemoryFlag + 2),1,0
1269                     _00292_DS_:
1270                     ;	;.line	646; ".\Source\App_LCD.c"	DispNum(sMemoryFlag.MemTempDispNo);
1271 061C [01] [2] 65C9      	MVF	(_sMemoryFlag + 1),0,0
1272 061D [01] [2] 660D      	MVF	_DispNum_STK00,1,0
1273 061E [02] [2] 0600      	MVL	0x00
1274 061F [02] [2] C001 F921 	CALL	_DispNum
1275                     	.CHKPARA _DispNum 2
1276                     ;	;.line	648; ".\Source\App_LCD.c"	LCD_Mem_En();
1277 0621 [01] [1] 978B      	BSF	_LCD3,3
1278                     ;	;.line	650; ".\Source\App_LCD.c"	Disp_BleSymbol();
1279 0622 [01] [1] CA21      	CALL	_Disp_BleSymbol
1280                     	.CHKPARA _Disp_BleSymbol 0
1281                     ;	;.line	651; ".\Source\App_LCD.c"	}
1282 0623 [00] [1] C4FF      	RET	
1283                     ; exit point of _MemTempNumber_Display
1284                     	.ENDFUNC	_MemTempNumber_Display
1285                     ;--------------------------------------------------------
1286                     
1287                     .globl _RecentTemp_Display
1288                     
1289                     ;--------------------------------------------------------
1290                     	.FUNC _RecentTemp_Display:0:$C:_Centigrade_Convert_Fahrenheit:$C:_Disp_StaticDash:$C:_Disp_Hi:$C:_DispNum\
1291                     :$C:_DispDelta:$C:_DispUnit:$C:_Disp_BleSymbol\
1292                     
1293                     ;--------------------------------------------------------
1294                     ;	;.line	518; ".\Source\App_LCD.c"	sActual_Forecast.ConvertedTempDisp = Centigrade_Convert_Fahrenheit(sMemory.MemTempBuf[sMemory.pMemTempBuf]);
1295                     _RecentTemp_Display:	;Function start
1296 07F5 [00] [2] 65C4      	MVF	(_sMemory + 1),0,0
1297 07F6 [00] [2] 0702      	MULL	0x02
1298 07F7 [00] [2] 6422      	MVF	_PRODL,0,0
1299 07F8 [00] [2] 000C F2C6 	LDPR	(_sMemory + 3),0
1300 07FA [00] [2] D004 F020 	MVFF	_PLUSW0,STK00
1301 07FC [00] [2] 3829      	INF	_WREG,0,0
1302 07FD [00] [2] D004 F01F 	MVFF	_PLUSW0,STK01
1303 07FF [00] [2] D020      	MVF	STK00,0,0
1304 0800 [00] [2] F00D      	MVF	_Centigrade_Convert_Fahrenheit_STK00,1,0
1305 0801 [01] [2] 641F      	MVF	STK01,0,0
1306 0802 [01] [2] CD50      	CALL	_Centigrade_Convert_Fahrenheit
1307                     	.CHKPARA _Centigrade_Convert_Fahrenheit 2
1308 0803 [00] [2] D020 F2B8 	MVFF	STK00,(_sActual_Forecast + 5)
1309 0805 [00] [2] 67B9      	MVF	(_sActual_Forecast + 6),1,0
1310                     ;	;.line	520; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
1311 0806 [00] [2] 065A      	MVL	0x5a
1312 0807 [00] [2] 6D13      	CPSE	_eTempUnit,0
1313 0808 [00] [2] 7815      	JMP	_00272_DS_
1314                     ;	;.line	523; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Centigrade)
1315 0809 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1316 080A [00] [2] 0480      	ADDL	0x80
1317 080B [00] [2] 06F3      	MVL	0xf3
1318 080C [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
1319 080D [00] [2] 70        	BTSZ	_STATUS,4
1320 080D [00] 02        	JMP	_00261_DS_
1321                     ;	;.line	533; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
1322 080E [00] [2] CD1E      	CALL	_Disp_StaticDash
1323                     	.CHKPARA _Disp_StaticDash 0
1324 080F [00] [1] 7823      	JMP	_00273_DS_
1325                     _00261_DS_:
1326                     ;	;.line	538; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Centigrade)
1327 0810 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1328 0811 [00] [2] 04D9      	ADDL	0xd9
1329 0812 [00] [2] 06EE      	MVL	0xee
1330 0813 [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
1331 0814 [00] [2] 74        	BTSS	_STATUS,4
1332 0814 [00] 02        	JMP	_00258_DS_
1333                     ;	;.line	540; ".\Source\App_LCD.c"	Disp_Hi();
1334 0815 [00] [2] CD0D      	CALL	_Disp_Hi
1335                     	.CHKPARA _Disp_Hi 0
1336 0816 [00] [1] 781C      	JMP	_00273_DS_
1337                     _00258_DS_:
1338                     ;	;.line	545; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1339 0817 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1340 0818 [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1341 0819 [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
1342 081A [01] [2] C001 F921 	CALL	_DispNum
1343                     	.CHKPARA _DispNum 2
1344                     ;	;.line	547; ".\Source\App_LCD.c"	LCD_Point_En();
1345 081C [00] [1] 978A      	BSF	_LCD2,3
1346 081D [00] [1] 7815      	JMP	_00273_DS_
1347                     _00272_DS_:
1348                     ;	;.line	551; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
1349 081E [00] [2] 06A5      	MVL	0xa5
1350 081F [00] [2] 6D13      	CPSE	_eTempUnit,0
1351 0820 [00] [2] 7812      	JMP	_00273_DS_
1352                     ;	;.line	554; ".\Source\App_LCD.c"	if(sActual_Forecast.ConvertedTempDisp < Low_Temp_Fahrenheit)
1353 0821 [00] [2] 0623      	MVL	0x23
1354 0822 [00] [2] 6BB9      	CPSL	(_sActual_Forecast + 6),0
1355 0823 [00] [2] 7802      	JMP	_00267_DS_
1356                     ;	;.line	564; ".\Source\App_LCD.c"	Disp_StaticDash(); /*20210319改*/
1357 0824 [00] [2] CD08      	CALL	_Disp_StaticDash
1358                     	.CHKPARA _Disp_StaticDash 0
1359 0825 [00] [1] 780D      	JMP	_00273_DS_
1360                     _00267_DS_:
1361                     ;	;.line	568; ".\Source\App_LCD.c"	else if(sActual_Forecast.ConvertedTempDisp > High_Temp_Fahrenheit)
1362 0826 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1363 0827 [00] [2] 04A3      	ADDL	0xa3
1364 0828 [00] [2] 06D4      	MVL	0xd4
1365 0829 [00] [2] 15B9      	ADDC	(_sActual_Forecast + 6),0,0
1366 082A [00] [2] 74        	BTSS	_STATUS,4
1367 082A [00] 02        	JMP	_00264_DS_
1368                     ;	;.line	570; ".\Source\App_LCD.c"	Disp_Hi();
1369 082B [00] [2] CCF7      	CALL	_Disp_Hi
1370                     	.CHKPARA _Disp_Hi 0
1371 082C [00] [1] 7806      	JMP	_00273_DS_
1372                     _00264_DS_:
1373                     ;	;.line	575; ".\Source\App_LCD.c"	DispNum(sActual_Forecast.ConvertedTempDisp);
1374 082D [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1375 082E [00] [2] 660D      	MVF	_DispNum_STK00,1,0
1376 082F [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
1377 0830 [01] [2] C001 F921 	CALL	_DispNum
1378                     	.CHKPARA _DispNum 2
1379                     ;	;.line	577; ".\Source\App_LCD.c"	LCD_Point_En();
1380 0832 [00] [1] 978A      	BSF	_LCD2,3
1381 0833 [00] [2] 0012      _00273_DS_:
1382                     ;	;.line	584; ".\Source\App_LCD.c"	DispDelta(sActual_Forecast.ConvertedTempDisp);
1383 0834 [00] [2] 65B8      	MVF	(_sActual_Forecast + 5),0,0
1384 0835 [00] [2] 660D      	MVF	_DispDelta_STK00,1,0
1385 0836 [01] [2] 65B9      	MVF	(_sActual_Forecast + 6),0,0
1386 0837 [01] [2] CA23      	CALL	_DispDelta
1387                     	.CHKPARA _DispDelta 2
1388                     ;	;.line	593; ".\Source\App_LCD.c"	DispUnit();
1389 0838 [00] [X] CA13 0011 	CALL	_DispUnit
1390                     	.CHKPARA _DispUnit 0
1391                     ;	;.line	595; ".\Source\App_LCD.c"	LCD_Mem_En();
1392 083A [00] [1] 978B      	BSF	_LCD3,3
1393                     ;	;.line	597; ".\Source\App_LCD.c"	Disp_BleSymbol();
1394 083B [00] [1] 000A      	CALL	_Disp_BleSymbol
1395                     	.CHKPARA _Disp_BleSymbol 0
1396                     ;	;.line	598; ".\Source\App_LCD.c"	}
1397                     	RET	
1398                     ; exit point of _RecentTemp_Display
1399                     	.ENDFUNC	_RecentTemp_Display
1400                     ;--------------------------------------------------------
1401                     
1402                     .globl _CalibrationOK_Display
1403                     
1404                     ;--------------------------------------------------------
1405                     	.FUNC _CalibrationOK_Display:0:$C:_Disp_End:$C:_Disp_BleSymbol\
1406                     
1407                     ;--------------------------------------------------------
1408                     ;	;.line	506; ".\Source\App_LCD.c"	Disp_End();
1409                     _CalibrationOK_Display:	;Function start
1410 083C [00] [2] 7CF9      	CALL	_Disp_End
1411                     	.CHKPARA _Disp_End 0
1412                     ;	;.line	508; ".\Source\App_LCD.c"	Disp_BleSymbol();
1413                     	CALL	_Disp_BleSymbol
1414                     	.CHKPARA _Disp_BleSymbol 0
1415                     ;	;.line	509; ".\Source\App_LCD.c"	}
1416                     	RET	
1417                     ; exit point of _CalibrationOK_Display
1418                     	.ENDFUNC	_CalibrationOK_Display
1419                     ;--------------------------------------------------------
1420                     
1421                     .globl _Calibration_Display
1422                     
1423                     ;--------------------------------------------------------
1424                     	.FUNC _Calibration_Display:0:$C:_memchrn:$C:_Disp_CAL:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
1425                     :$C:_LCD_Clear_Register:$C:_LCD_Configuration\
1426                     
1427                     ;--------------------------------------------------------
1428                     ;	;.line	455; ".\Source\App_LCD.c"	if(!memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
1429                     _Calibration_Display:	;Function start
1430 1405 [00] [2] 0609      	MVL	0x09
1431 1406 [00] [2] 660D      	MVF	_memchrn_STK02,1,0
1432 1407 [01] [2] 0601      	MVL	0x01
1433 1408 [01] [2] 660D      	MVF	_memchrn_STK01,1,0
1434 1409 [02] [2] 0649      	MVL	(_ERR + 0)
1435 140A [02] [2] 660D      	MVF	_memchrn_STK00,1,0
1436 140B [03] [2] 0602      	MVL	high (_ERR + 0)
1437 140C [03] [2] CD16      	CALL	_memchrn
1438                     	.CHKPARA _memchrn 4
1439 140D [00] [2] 6E29      	TFSZ	_WREG,0
1440 140E [00] [2] 7804      	JMP	_00243_DS_
1441 140F [00] [2] B3A4      	BTSS	_sTempCal,1
1442 1410 [00] [2] 7802      	JMP	_00243_DS_
1443                     ;	;.line	460; ".\Source\App_LCD.c"	sTempCal.Enable_BIE_Write = TRUE;
1444 1411 [00] [2] 95A4      	BSF	_sTempCal,2
1445 1412 [00] [2] 7816      	JMP	_00244_DS_
1446                     _00243_DS_:
1447                     ;	;.line	462; ".\Source\App_LCD.c"	else if(memchrn(ERR,1,sizeof(ERR))  && sTempCal.Cal_60s_Arrived)
1448 1413 [00] [2] 0609      	MVL	0x09
1449 1414 [00] [2] 660D      	MVF	_memchrn_STK02,1,0
1450 1415 [01] [2] 0601      	MVL	0x01
1451 1416 [01] [2] 660D      	MVF	_memchrn_STK01,1,0
1452 1417 [02] [2] 0649      	MVL	(_ERR + 0)
1453 1418 [02] [2] 660D      	MVF	_memchrn_STK00,1,0
1454 1419 [03] [2] 0602      	MVL	high (_ERR + 0)
1455 141A [03] [2] CD08      	CALL	_memchrn
1456                     	.CHKPARA _memchrn 4
1457 141B [00] [2] 0200      	IORL	0x00
1458 141C [00] [2] 71        	BTSZ	_STATUS,0
1459 141C [00] 04        	JMP	_00239_DS_
1460 141D [00] [2] B3A4      	BTSS	_sTempCal,1
1461 141E [00] [2] 7802      	JMP	_00239_DS_
1462                     ;	;.line	465; ".\Source\App_LCD.c"	sTempCal.BIE_Write_Action = TRUE;
1463 141F [00] [2] 97A4      	BSF	_sTempCal,3
1464 1420 [00] [2] 7808      	JMP	_00244_DS_
1465                     _00239_DS_:
1466                     ;	;.line	470; ".\Source\App_LCD.c"	if(sTIMx.CalSymbolFlash)
1467 1421 [00] [2] BBCE      	BTSS	_sTIMx,5
1468 1422 [00] [2] 7802      	JMP	_00236_DS_
1469                     ;	;.line	473; ".\Source\App_LCD.c"	Disp_CAL();
1470 1423 [00] [2] C910      	CALL	_Disp_CAL
1471                     	.CHKPARA _Disp_CAL 0
1472 1424 [00] [1] 7802      	JMP	_00237_DS_
1473                     _00236_DS_:
1474                     ;	;.line	478; ".\Source\App_LCD.c"	Disp_Nothing();
1475 1425 [00] [2] C000 F541 	CALL	_Disp_Nothing
1476                     	.CHKPARA _Disp_Nothing 0
1477                     _00237_DS_:
1478                     ;	;.line	481; ".\Source\App_LCD.c"	Disp_BleSymbol();
1479 1427 [00] [1] C000 F844 	CALL	_Disp_BleSymbol
1480                     	.CHKPARA _Disp_BleSymbol 0
1481 1429 [00] [2] 0012      _00244_DS_:
1482                     ;	;.line	485; ".\Source\App_LCD.c"	if(sTempCal.BIE_Write_Action)
1483 142A [00] [2] B7A4      	BTSS	_sTempCal,3
1484 142B [00] [2] 7804      	JMP	_00248_DS_
1485                     ;	;.line	490; ".\Source\App_LCD.c"	LCD_Clear_Register();
1486 142C [00] [2] C993      	CALL	_LCD_Clear_Register
1487                     	.CHKPARA _LCD_Clear_Register 0
1488                     ;	;.line	492; ".\Source\App_LCD.c"	LCD_Configuration();
1489 142D [00] [1] C99B 0012 	CALL	_LCD_Configuration
1490                     	.CHKPARA _LCD_Configuration 0
1491                     ;	;.line	494; ".\Source\App_LCD.c"	sTempCal.Reopen_LCD = TRUE;
1492 142F [00] [2] 99A4      	BSF	_sTempCal,4
1493                     _00248_DS_:
1494                     ;	;.line	496; ".\Source\App_LCD.c"	}
1495 1430 [00] [2] 000A      	RET	
1496                     ; exit point of _Calibration_Display
1497                     	.ENDFUNC	_Calibration_Display
1498                     ;--------------------------------------------------------
1499                     
1500                     .globl _PreCalibration_Display
1501                     
1502                     ;--------------------------------------------------------
1503                     	.FUNC _PreCalibration_Display:0:$C:_Disp_UnitFlash:$C:_Disp_BleSymbol\
1504                     
1505                     ;--------------------------------------------------------
1506                     ;	;.line	440; ".\Source\App_LCD.c"	Disp_UnitFlash();
1507                     _PreCalibration_Display:	;Function start
1508 083D [00] [2] C85E      	CALL	_Disp_UnitFlash
1509                     	.CHKPARA _Disp_UnitFlash 0
1510                     ;	;.line	442; ".\Source\App_LCD.c"	Disp_BleSymbol();
1511 083E [00] [X] 000A      	CALL	_Disp_BleSymbol
1512                     	.CHKPARA _Disp_BleSymbol 0
1513                     ;	;.line	443; ".\Source\App_LCD.c"	}
1514                     	RET	
1515                     ; exit point of _PreCalibration_Display
1516                     	.ENDFUNC	_PreCalibration_Display
1517                     ;--------------------------------------------------------
1518                     
1519                     .globl _Off_Display
1520                     
1521                     ;--------------------------------------------------------
1522                     	.FUNC _Off_Display:0:$C:_Disp_Nothing:$C:_Disp_Off:$C:_Disp_BleSymbol\
1523                     
1524                     ;--------------------------------------------------------
1525                     ;	;.line	420; ".\Source\App_LCD.c"	if(sButton.Flag_Button_Lift_Once)
1526                     _Off_Display:	;Function start
1527 083F [00] [2] BD19      	BTSS	_sButton,6
1528 0840 [00] [2] 7802      	JMP	_00224_DS_
1529                     ;	;.line	423; ".\Source\App_LCD.c"	Disp_Nothing();
1530 0841 [00] [2] CCFF      	CALL	_Disp_Nothing
1531                     	.CHKPARA _Disp_Nothing 0
1532 0842 [00] [1] 000A      	JMP	_00226_DS_
1533                     _00224_DS_:
1534                     ;	;.line	427; ".\Source\App_LCD.c"	Disp_Off();
1535 0843 [00] [2] 7D05      	CALL	_Disp_Off
1536                     	.CHKPARA _Disp_Off 0
1537                     ;	;.line	429; ".\Source\App_LCD.c"	Disp_BleSymbol();
1538                     	CALL	_Disp_BleSymbol
1539                     	.CHKPARA _Disp_BleSymbol 0
1540                     _00226_DS_:
1541                     ;	;.line	431; ".\Source\App_LCD.c"	}
1542                     	RET	
1543                     ; exit point of _Off_Display
1544                     	.ENDFUNC	_Off_Display
1545                     ;--------------------------------------------------------
1546                     
1547                     .globl _UnitExchange_Display
1548                     
1549                     ;--------------------------------------------------------
1550                     	.FUNC _UnitExchange_Display:0:$C:_Disp_Nothing:$C:_Disp_BleSymbol\
1551                     
1552                     ;--------------------------------------------------------
1553                     ;	;.line	365; ".\Source\App_LCD.c"	if(!UnitExchangeCompleted)
1554                     _UnitExchange_Display:	;Function start
1555 0680 [00] [2] 6F48      	TFSZ	_UnitExchangeCompleted,0
1556 0681 [00] [2] 7816      	JMP	_00217_DS_
1557                     ;	;.line	368; ".\Source\App_LCD.c"	Disp_Nothing();
1558 0682 [00] [2] CEBE      	CALL	_Disp_Nothing
1559                     	.CHKPARA _Disp_Nothing 0
1560                     ;	;.line	370; ".\Source\App_LCD.c"	UnitExchangeCompleted = TRUE;
1561 0683 [00] [1] 0601 0012 	MVL	0x01
1562 0685 [00] [2] 6748      	MVF	_UnitExchangeCompleted,1,0
1563                     ;	;.line	372; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
1564 0686 [00] [2] 065A      	MVL	0x5a
1565 0687 [00] [2] 6D13      	CPSE	_eTempUnit,0
1566 0688 [00] [2] 7806      	JMP	_00209_DS_
1567                     ;	;.line	375; ".\Source\App_LCD.c"	eTempUnit = Fahrenheit;
1568 0689 [00] [2] 06A5      	MVL	0xa5
1569 068A [00] [2] 6713      	MVF	_eTempUnit,1,0
1570                     ;	;.line	377; ".\Source\App_LCD.c"	LCD_Unit_F_En();
1571 068B [00] [2] 0630 0011 	MVL	0x30
1572 068D [00] [1] 2F8C      	IORF	_LCD4,1,0
1573 068E [00] [1] 000A      	JMP	_00218_DS_
1574                     _00209_DS_:
1575                     ;	;.line	380; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
1576 068F [00] [2] 06A5      	MVL	0xa5
1577 0690 [00] [2] 6D13      	CPSE	_eTempUnit,0
1578 0691 [00] [2] 7815      	JMP	_00218_DS_
1579                     ;	;.line	383; ".\Source\App_LCD.c"	eTempUnit = Centigrade;
1580 0692 [00] [2] 065A      	MVL	0x5a
1581 0693 [00] [2] 6713      	MVF	_eTempUnit,1,0
1582                     ;	;.line	385; ".\Source\App_LCD.c"	LCD_Unit_C_En();
1583 0694 [00] [2] 0650 0011 	MVL	0x50
1584 0696 [00] [1] 2F8C      	IORF	_LCD4,1,0
1585 0697 [00] [1] 000A      	JMP	_00218_DS_
1586                     _00217_DS_:
1587                     ;	;.line	391; ".\Source\App_LCD.c"	Disp_Nothing();
1588 0698 [00] [2] CEA8      	CALL	_Disp_Nothing
1589                     	.CHKPARA _Disp_Nothing 0
1590                     ;	;.line	394; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
1591 0699 [00] [1] 065A 0012 	MVL	0x5a
1592 069B [00] [2] 6D13      	CPSE	_eTempUnit,0
1593 069C [00] [2] 7804      	JMP	_00214_DS_
1594                     ;	;.line	397; ".\Source\App_LCD.c"	LCD_Unit_C_En();
1595 069D [00] [2] 0650 0011 	MVL	0x50
1596 069F [00] [1] 2F8C      	IORF	_LCD4,1,0
1597 06A0 [00] [1] 000A      	JMP	_00218_DS_
1598                     _00214_DS_:
1599                     ;	;.line	400; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
1600 06A1 [00] [2] 06A5      	MVL	0xa5
1601 06A2 [00] [2] 6D13      	CPSE	_eTempUnit,0
1602 06A3 [00] [2] 7803      	JMP	_00218_DS_
1603                     ;	;.line	403; ".\Source\App_LCD.c"	LCD_Unit_F_En();
1604 06A4 [00] [2] 0630 0011 	MVL	0x30
1605 06A6 [00] [1] 2F8C      	IORF	_LCD4,1,0
1606                     _00218_DS_:
1607                     ;	;.line	410; ".\Source\App_LCD.c"	Disp_BleSymbol();
1608 06A7 [00] [X] 000A      	CALL	_Disp_BleSymbol
1609                     	.CHKPARA _Disp_BleSymbol 0
1610                     ;	;.line	411; ".\Source\App_LCD.c"	}
1611                     	RET	
1612                     ; exit point of _UnitExchange_Display
1613                     	.ENDFUNC	_UnitExchange_Display
1614                     ;--------------------------------------------------------
1615                     
1616                     .globl _Disp_BleSymbol
1617                     
1618                     ;--------------------------------------------------------
1619                     	.FUNC _Disp_BleSymbol:0
1620                     ;--------------------------------------------------------
1621                     ;	;.line	355; ".\Source\App_LCD.c"	}
1622                     _Disp_BleSymbol:	;Function start
1623 0844 [00] [Y] 000A      	RET	
1624                     ; exit point of _Disp_BleSymbol
1625                     	.ENDFUNC	_Disp_BleSymbol
1626                     ;--------------------------------------------------------
1627                     
1628                     .globl _Disp_DynamicForecastSymbol
1629                     
1630                     ;--------------------------------------------------------
1631                     	.FUNC _Disp_DynamicForecastSymbol:0
1632                     ;--------------------------------------------------------
1633                     ;	;.line	319; ".\Source\App_LCD.c"	if(sTIMx.ForecastSymbolFlash)
1634 0845 [00] [2] 0012      _Disp_DynamicForecastSymbol:	;Function start
1635 0846 [00] [2] B5CF      	BTSS	(_sTIMx+1),2
1636 0847 [00] [2] 7803 0011 	JMP	_00196_DS_
1637                     ;	;.line	322; ".\Source\App_LCD.c"	LCD_ForecastP1_En();
1638 0849 [00] [1] 938C      	BSF	_LCD4,1
1639 084A [00] [1] 7802      	JMP	_00197_DS_
1640 084B [00] [1] 0011      _00196_DS_:
1641                     ;	;.line	327; ".\Source\App_LCD.c"	LCD_ForecastP1_Clr();
1642 084C [00] [1] 838C      	BCF	_LCD4,1
1643                     _00197_DS_:
1644                     ;	;.line	330; ".\Source\App_LCD.c"	LCD_ForecastP2_En();
1645 084D [00] [1] 958C      	BSF	_LCD4,2
1646                     ;	;.line	331; ".\Source\App_LCD.c"	}
1647 084E [00] [1] 000A      	RET	
1648                     ; exit point of _Disp_DynamicForecastSymbol
1649                     	.ENDFUNC	_Disp_DynamicForecastSymbol
1650                     ;--------------------------------------------------------
1651                     
1652                     .globl _Disp_DynamicDash
1653                     
1654                     ;--------------------------------------------------------
1655                     	.FUNC _Disp_DynamicDash:0:$C:_Disp_Nothing\
1656                     
1657                     ;--------------------------------------------------------
1658                     ;	;.line	291; ".\Source\App_LCD.c"	Disp_Nothing();
1659                     _Disp_DynamicDash:	;Function start
1660 084F [00] [2] CCF1 0012 	CALL	_Disp_Nothing
1661                     	.CHKPARA _Disp_Nothing 0
1662                     ;	;.line	293; ".\Source\App_LCD.c"	if(sTIMx.TempDetectingSymFlash1Hz == 0)
1663 0851 [00] [2] 6FD0      	TFSZ	(_sTIMx + 2),0
1664 0852 [00] [2] 7803 0011 	JMP	_00188_DS_
1665                     ;	;.line	296; ".\Source\App_LCD.c"	LCD_Dash1_En();
1666 0854 [00] [1] 9388      	BSF	_LCD0,1
1667 0855 [00] [1] 000A      	JMP	_00190_DS_
1668                     _00188_DS_:
1669                     ;	;.line	299; ".\Source\App_LCD.c"	else if(sTIMx.TempDetectingSymFlash1Hz == 1)
1670 0856 [00] [2] 35D0      	DCSZ	(_sTIMx + 2),0,0
1671 0857 [00] [2] 7803 0011 	JMP	_00185_DS_
1672                     ;	;.line	302; ".\Source\App_LCD.c"	LCD_Dash2_En();
1673 0859 [00] [1] 9389      	BSF	_LCD1,1
1674 085A [00] [1] 000A      	JMP	_00190_DS_
1675 085B [00] [1] 0011      _00185_DS_:
1676                     ;	;.line	307; ".\Source\App_LCD.c"	LCD_Dash3_En();
1677 085C [00] [1] 938A      	BSF	_LCD2,1
1678                     _00190_DS_:
1679                     ;	;.line	309; ".\Source\App_LCD.c"	}
1680 085D [00] [1] 000A      	RET	
1681                     ; exit point of _Disp_DynamicDash
1682                     	.ENDFUNC	_Disp_DynamicDash
1683                     ;--------------------------------------------------------
1684                     
1685                     .globl _Disp_UnitFlash
1686                     
1687                     ;--------------------------------------------------------
1688                     	.FUNC _Disp_UnitFlash:0
1689                     ;--------------------------------------------------------
1690                     ;	;.line	252; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
1691                     _Disp_UnitFlash:	;Function start
1692 089C [00] [X] 065A 0012 	MVL	0x5a
1693 089E [00] [2] 6D13      	CPSE	_eTempUnit,0
1694 089F [00] [2] 780A      	JMP	_00177_DS_
1695                     ;	;.line	255; ".\Source\App_LCD.c"	if(sTIMx.UnitSymbolFlash)
1696 08A0 [00] [2] B1CF      	BTSS	(_sTIMx+1),0
1697 08A1 [00] [2] 7804      	JMP	_00169_DS_
1698                     ;	;.line	258; ".\Source\App_LCD.c"	LCD_Unit_C_En();
1699 08A2 [00] [2] 0650 0011 	MVL	0x50
1700 08A4 [00] [1] 2F8C      	IORF	_LCD4,1,0
1701 08A5 [00] [1] 000A      	JMP	_00179_DS_
1702                     _00169_DS_:
1703                     ;	;.line	263; ".\Source\App_LCD.c"	LCD_Unit_C_Clr();
1704 08A6 [00] [2] 06AF 0011 	MVL	0xaf
1705 08A8 [00] [1] 2B8C      	ANDF	_LCD4,1,0
1706 08A9 [00] [1] 000A      	JMP	_00179_DS_
1707                     _00177_DS_:
1708                     ;	;.line	267; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
1709 08AA [00] [2] 06A5      	MVL	0xa5
1710 08AB [00] [2] 6D13      	CPSE	_eTempUnit,0
1711 08AC [00] [2] 7809      	JMP	_00179_DS_
1712                     ;	;.line	270; ".\Source\App_LCD.c"	if(sTIMx.UnitSymbolFlash)
1713 08AD [00] [2] B1CF      	BTSS	(_sTIMx+1),0
1714 08AE [00] [2] 7804      	JMP	_00172_DS_
1715                     ;	;.line	273; ".\Source\App_LCD.c"	LCD_Unit_F_En();
1716 08AF [00] [2] 0630 0011 	MVL	0x30
1717 08B1 [00] [1] 2F8C      	IORF	_LCD4,1,0
1718 08B2 [00] [1] 000A      	JMP	_00179_DS_
1719                     _00172_DS_:
1720                     ;	;.line	278; ".\Source\App_LCD.c"	LCD_Unit_F_Clr();
1721 08B3 [00] [2] 06CF 0011 	MVL	0xcf
1722 08B5 [00] [1] 2B8C      	ANDF	_LCD4,1,0
1723                     _00179_DS_:
1724                     ;	;.line	281; ".\Source\App_LCD.c"	}
1725 08B6 [00] [X] 000A      	RET	
1726                     ; exit point of _Disp_UnitFlash
1727                     	.ENDFUNC	_Disp_UnitFlash
1728                     ;--------------------------------------------------------
1729                     
1730                     .globl _Disp_Bat
1731                     
1732                     ;--------------------------------------------------------
1733                     	.FUNC _Disp_Bat:0
1734                     ;--------------------------------------------------------
1735                     ;	;.line	238; ".\Source\App_LCD.c"	LCD_BatAll_En();
1736                     _Disp_Bat:	;Function start
1737 08B7 [00] [X] 0688 0011 	MVL	0x88
1738 08B9 [00] [1] 2F8C      	IORF	_LCD4,1,0
1739                     ;	;.line	239; ".\Source\App_LCD.c"	}
1740 08BA [00] [1] 000A      	RET	
1741                     ; exit point of _Disp_Bat
1742                     	.ENDFUNC	_Disp_Bat
1743                     ;--------------------------------------------------------
1744                     
1745                     .globl _Disp_BLEFlash
1746                     
1747                     ;--------------------------------------------------------
1748                     	.FUNC _Disp_BLEFlash:0
1749                     ;--------------------------------------------------------
1750                     ;	;.line	217; ".\Source\App_LCD.c"	if(sTIMx.BLESymbolFlash)
1751                     _Disp_BLEFlash:	;Function start
1752                     	BTSS	(_sTIMx+1),1
1753                     	JMP	_00157_DS_
1754                     ;	;.line	220; ".\Source\App_LCD.c"	LCD_BLE_En();
1755                     	BSF	_LCD1,3
1756                     	JMP	_00159_DS_
1757                     _00157_DS_:
1758                     ;	;.line	225; ".\Source\App_LCD.c"	LCD_BLE_Clr();
1759                     	BCF	_LCD1,3
1760                     _00159_DS_:
1761                     ;	;.line	227; ".\Source\App_LCD.c"	}
1762                     	RET	
1763                     ; exit point of _Disp_BLEFlash
1764                     	.ENDFUNC	_Disp_BLEFlash
1765                     ;--------------------------------------------------------
1766                     
1767                     .globl _DispNum
1768                     
1769                     ;--------------------------------------------------------
1770                     	.FUNC _DispNum:2:$C:__divuint:$C:__moduint:$C:__cptrget1\
1771                     :$L:r0x1099:$L:_DispNum_STK00:$L:r0x109B:$L:_DispNum_NumDisp_65536_388
1772                     ;--------------------------------------------------------
1773                     ;	;.line	131; ".\Source\App_LCD.c"	void DispNum(uint16 num)
1774 1921 [00] [2] C487      _DispNum:	;Function start
1775 1922 [07] [2] 6686      	MVF	r0x1099,1,0
1776                     ;	;.line	137; ".\Source\App_LCD.c"	NumDisp[4] = num / 10000;
1777 1923 [07] [2] 0610      	MVL	0x10
1778 1924 [07] [2] 660D      	MVF	__divuint_STK02,1,0
1779 1925 [08] [2] 0627      	MVL	0x27
1780 1926 [08] [2] 660D      	MVF	__divuint_STK01,1,0
1781 1927 [09] [2] 6489      	MVF	_DispNum_STK00,0,0
1782 1928 [09] [2] 660D      	MVF	__divuint_STK00,1,0
1783 1929 [10] [2] 6489      	MVF	r0x1099,0,0
1784 192A [10] [2] CDBF      	CALL	__divuint
1785                     	.CHKPARA __divuint 4
1786 192B [07] [2] 6420      	MVF	STK00,0,0
1787 192C [07] [2] 6680      	MVF	(_DispNum_NumDisp_65536_388 + 4),1,0
1788                     ;	;.line	139; ".\Source\App_LCD.c"	NumDisp[3] = num / 1000 % 10;
1789 192D [07] [2] 06E8      	MVL	0xe8
1790 192E [07] [2] 660D      	MVF	__divuint_STK02,1,0
1791 192F [08] [2] 0603      	MVL	0x03
1792 1930 [08] [2] 660D      	MVF	__divuint_STK01,1,0
1793 1931 [09] [2] 6489      	MVF	_DispNum_STK00,0,0
1794 1932 [09] [2] 660D      	MVF	__divuint_STK00,1,0
1795 1933 [10] [2] 6489      	MVF	r0x1099,0,0
1796 1934 [10] [2] CDB5      	CALL	__divuint
1797                     	.CHKPARA __divuint 4
1798 1935 [07] [2] 6685      	MVF	r0x109B,1,0
1799 1936 [07] [2] 060A      	MVL	0x0a
1800 1937 [07] [2] 660D      	MVF	__moduint_STK02,1,0
1801 1938 [08] [2] 0C0D      	CLRF	__moduint_STK01,0
1802 1939 [09] [2] D020      	MVF	STK00,0,0
1803 193A [09] [2] F00D      	MVF	__moduint_STK00,1,0
1804 193B [10] [2] 6488      	MVF	r0x109B,0,0
1805 193C [10] [2] CDCB      	CALL	__moduint
1806                     	.CHKPARA __moduint 4
1807 193D [07] [2] 6420      	MVF	STK00,0,0
1808 193E [07] [2] 6681      	MVF	(_DispNum_NumDisp_65536_388 + 3),1,0
1809                     ;	;.line	141; ".\Source\App_LCD.c"	NumDisp[2] = num / 100 % 10;
1810 193F [07] [2] 0664      	MVL	0x64
1811 1940 [07] [2] 660D      	MVF	__divuint_STK02,1,0
1812 1941 [08] [2] 0C0D      	CLRF	__divuint_STK01,0
1813 1942 [09] [2] 6489      	MVF	_DispNum_STK00,0,0
1814 1943 [09] [2] 660D      	MVF	__divuint_STK00,1,0
1815 1944 [10] [2] 6489      	MVF	r0x1099,0,0
1816 1945 [10] [2] CDA4      	CALL	__divuint
1817                     	.CHKPARA __divuint 4
1818 1946 [07] [2] 6685      	MVF	r0x109B,1,0
1819 1947 [07] [2] 060A      	MVL	0x0a
1820 1948 [07] [2] 660D      	MVF	__moduint_STK02,1,0
1821 1949 [08] [2] 0C0D      	CLRF	__moduint_STK01,0
1822 194A [09] [2] D020      	MVF	STK00,0,0
1823 194B [09] [2] F00D      	MVF	__moduint_STK00,1,0
1824 194C [10] [2] 6488      	MVF	r0x109B,0,0
1825 194D [10] [2] CDBA      	CALL	__moduint
1826                     	.CHKPARA __moduint 4
1827 194E [07] [2] 6420      	MVF	STK00,0,0
1828 194F [07] [2] 6682      	MVF	(_DispNum_NumDisp_65536_388 + 2),1,0
1829                     ;	;.line	143; ".\Source\App_LCD.c"	NumDisp[1] = num / 10 % 10;
1830 1950 [07] [2] 060A      	MVL	0x0a
1831 1951 [07] [2] 660D      	MVF	__divuint_STK02,1,0
1832 1952 [08] [2] 0C0D      	CLRF	__divuint_STK01,0
1833 1953 [09] [2] 6489      	MVF	_DispNum_STK00,0,0
1834 1954 [09] [2] 660D      	MVF	__divuint_STK00,1,0
1835 1955 [10] [2] 6489      	MVF	r0x1099,0,0
1836 1956 [10] [2] CD93      	CALL	__divuint
1837                     	.CHKPARA __divuint 4
1838 1957 [07] [2] 6685      	MVF	r0x109B,1,0
1839 1958 [07] [2] 060A      	MVL	0x0a
1840 1959 [07] [2] 660D      	MVF	__moduint_STK02,1,0
1841 195A [08] [2] 0C0D      	CLRF	__moduint_STK01,0
1842 195B [09] [2] D020      	MVF	STK00,0,0
1843 195C [09] [2] F00D      	MVF	__moduint_STK00,1,0
1844 195D [10] [2] 6488      	MVF	r0x109B,0,0
1845 195E [10] [2] CDA9      	CALL	__moduint
1846                     	.CHKPARA __moduint 4
1847 195F [07] [2] 6420      	MVF	STK00,0,0
1848 1960 [07] [2] 6683      	MVF	(_DispNum_NumDisp_65536_388 + 1),1,0
1849                     ;	;.line	145; ".\Source\App_LCD.c"	NumDisp[0] = num % 10;
1850 1961 [07] [2] 060A      	MVL	0x0a
1851 1962 [07] [2] 660D      	MVF	__moduint_STK02,1,0
1852 1963 [08] [2] 0C0D      	CLRF	__moduint_STK01,0
1853 1964 [09] [2] 6489      	MVF	_DispNum_STK00,0,0
1854 1965 [09] [2] 660D      	MVF	__moduint_STK00,1,0
1855 1966 [10] [2] 6489      	MVF	r0x1099,0,0
1856 1967 [10] [2] CDA0      	CALL	__moduint
1857                     	.CHKPARA __moduint 4
1858 1968 [07] [2] 6420      	MVF	STK00,0,0
1859 1969 [07] [2] 6684      	MVF	(_DispNum_NumDisp_65536_388 + 0),1,0
1860                     ;	;.line	148; ".\Source\App_LCD.c"	if(eDisplay_Interfaces == Display_MemoryTemperatureNumber)
1861 196A [07] [2] 060A      	MVL	0x0a
1862 196B [07] [2] 6D47      	CPSE	_eDisplay_Interfaces,0
1863 196C [07] [2] 7818      	JMP	_00149_DS_
1864                     ;	;.line	150; ".\Source\App_LCD.c"	NumDisp[4]	= 10;
1865 196D [07] [2] 060A      	MVL	0x0a
1866 196E [07] [2] 6680      	MVF	(_DispNum_NumDisp_65536_388 + 4),1,0
1867                     ;	;.line	151; ".\Source\App_LCD.c"	NumDisp[3]	= 10;
1868 196F [07] [2] 6681      	MVF	(_DispNum_NumDisp_65536_388 + 3),1,0
1869                     ;	;.line	152; ".\Source\App_LCD.c"	NumDisp[2]	= 10;
1870 1970 [07] [2] 6682      	MVF	(_DispNum_NumDisp_65536_388 + 2),1,0
1871                     ;	;.line	155; ".\Source\App_LCD.c"	if(NumDisp[1] == 0)
1872 1971 [07] [2] 6E83      	TFSZ	(_DispNum_NumDisp_65536_388 + 1),0
1873 1972 [07] [2] 7802      	JMP	_00142_DS_
1874                     ;	;.line	157; ".\Source\App_LCD.c"	NumDisp[1] = 10;
1875 1973 [07] [2] 060A      	MVL	0x0a
1876 1974 [07] [2] 6683      	MVF	(_DispNum_NumDisp_65536_388 + 1),1,0
1877 1975 [00] [1] 0011      _00142_DS_:
1878                     ;	;.line	160; ".\Source\App_LCD.c"	LCD0_Macro = 0x00;
1879 1976 [07] [1] 0D88      	CLRF	_LCD0,0
1880                     ;	;.line	162; ".\Source\App_LCD.c"	LCD1_Macro = NUM_CODE[NumDisp[1]];
1881 1977 [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
1882 1979 [07] [1] 6483      	MVF	(_DispNum_NumDisp_65536_388 + 1),0,0
1883 197A [07] [1] CDAF      	CALL	__cptrget1
1884 197B [07] [1] 6789      	MVF	_LCD1,1,0
1885                     ;	;.line	164; ".\Source\App_LCD.c"	LCD2_Macro = NUM_CODE[NumDisp[0]];
1886 197C [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
1887 197E [07] [1] 6484      	MVF	(_DispNum_NumDisp_65536_388 + 0),0,0
1888 197F [07] [1] CDAA      	CALL	__cptrget1
1889 1980 [07] [1] 678A      	MVF	_LCD2,1,0
1890                     ;	;.line	166; ".\Source\App_LCD.c"	LCD3_Macro = 0x00;
1891 1981 [07] [1] 0D8B      	CLRF	_LCD3,0
1892                     ;	;.line	168; ".\Source\App_LCD.c"	LCD4_Macro = 0x00;
1893 1982 [07] [1] 0D8C      	CLRF	_LCD4,0
1894                     ;	;.line	170; ".\Source\App_LCD.c"	LCD5_Macro = 0x00;
1895 1983 [07] [1] 0D8D      	CLRF	_LCD5,0
1896 1984 [07] [1] 7822      	JMP	_00151_DS_
1897                     _00149_DS_:
1898                     ;	;.line	175; ".\Source\App_LCD.c"	if(NumDisp[4] == 0)
1899 1985 [07] [2] 6E80      	TFSZ	(_DispNum_NumDisp_65536_388 + 4),0
1900 1986 [07] [2] 780C      	JMP	_00146_DS_
1901                     ;	;.line	178; ".\Source\App_LCD.c"	if(NumDisp[3] == 0)
1902 1987 [07] [2] 6E81      	TFSZ	(_DispNum_NumDisp_65536_388 + 3),0
1903 1988 [07] [2] 7802      	JMP	_00144_DS_
1904                     ;	;.line	180; ".\Source\App_LCD.c"	NumDisp[3] = 10;
1905 1989 [07] [2] 060A      	MVL	0x0a
1906 198A [07] [2] 6681      	MVF	(_DispNum_NumDisp_65536_388 + 3),1,0
1907                     _00144_DS_:
1908                     ;	;.line	183; ".\Source\App_LCD.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
1909 198B [07] [2] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
1910 198D [07] [2] 6481      	MVF	(_DispNum_NumDisp_65536_388 + 3),0,0
1911 198E [07] [2] CD9B 0011 	CALL	__cptrget1
1912 1990 [07] [1] 6788      	MVF	_LCD0,1,0
1913                     ;	;.line	185; ".\Source\App_LCD.c"	LCD_Hundred_Clr();
1914 1991 [07] [1] 8788      	BCF	_LCD0,3
1915 1992 [07] [1] 7807      	JMP	_00147_DS_
1916                     _00146_DS_:
1917                     ;	;.line	191; ".\Source\App_LCD.c"	LCD0_Macro = NUM_CODE[NumDisp[3]];
1918 1993 [07] [2] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
1919 1995 [07] [2] 6481      	MVF	(_DispNum_NumDisp_65536_388 + 3),0,0
1920 1996 [07] [2] CD93 0011 	CALL	__cptrget1
1921 1998 [07] [1] 6788      	MVF	_LCD0,1,0
1922                     ;	;.line	193; ".\Source\App_LCD.c"	LCD_Hundred_En();
1923 1999 [07] [1] 9788      	BSF	_LCD0,3
1924                     _00147_DS_:
1925                     ;	;.line	196; ".\Source\App_LCD.c"	LCD1_Macro = NUM_CODE[NumDisp[2]];
1926 199A [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
1927 199C [07] [1] 6482      	MVF	(_DispNum_NumDisp_65536_388 + 2),0,0
1928 199D [07] [1] CD8C      	CALL	__cptrget1
1929 199E [07] [1] 6789      	MVF	_LCD1,1,0
1930                     ;	;.line	198; ".\Source\App_LCD.c"	LCD2_Macro = NUM_CODE[NumDisp[1]];
1931 199F [07] [1] 0901 FAFB 	MVLP	(_NUM_CODE + 0)
1932 19A1 [07] [1] 6483      	MVF	(_DispNum_NumDisp_65536_388 + 1),0,0
1933 19A2 [07] [1] CD87      	CALL	__cptrget1
1934 19A3 [07] [1] 678A      	MVF	_LCD2,1,0
1935                     ;	;.line	200; ".\Source\App_LCD.c"	LCD3_Macro = 0x00;
1936 19A4 [07] [1] 0D8B      	CLRF	_LCD3,0
1937                     ;	;.line	202; ".\Source\App_LCD.c"	LCD4_Macro = 0x00;
1938 19A5 [07] [1] 0D8C      	CLRF	_LCD4,0
1939                     ;	;.line	204; ".\Source\App_LCD.c"	LCD5_Macro = 0x00;
1940 19A6 [07] [1] 0D8D      	CLRF	_LCD5,0
1941                     _00151_DS_:
1942                     ;	;.line	206; ".\Source\App_LCD.c"	}
1943 19A7 [00] [1] C4F8      	RET	
1944                     ; exit point of _DispNum
1945                     	.ENDFUNC	_DispNum
1946                     ;--------------------------------------------------------
1947                     
1948                     .globl _DispDelta
1949                     
1950                     ;--------------------------------------------------------
1951                     	.FUNC _DispDelta:2:$L:r0x1096:$L:_DispDelta_STK00
1952                     ;--------------------------------------------------------
1953                     ;	;.line	42; ".\Source\App_LCD.c"	void DispDelta(uint16 temp)
1954 0A5B [00] [X] C481      _DispDelta:	;Function start
1955 0A5C [01] [X] 6680      	MVF	r0x1096,1,0
1956 0A5D [01] [X] 065A 0012 	MVL	0x5a
1957                     ;	;.line	47; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
1958 0A5F [01] [2] 6D13      	CPSE	_eTempUnit,0
1959 0A60 [01] [2] 7818      	JMP	_00134_DS_
1960                     ;	;.line	50; ".\Source\App_LCD.c"	if(temp >= Fever_Temp_Centigrade)
1961 0A61 [01] [2] 6481      	MVF	_DispDelta_STK00,0,0
1962 0A62 [01] [2] 043C      	ADDL	0x3c
1963 0A63 [01] [2] 06F1      	MVL	0xf1
1964 0A64 [01] [2] 1480      	ADDC	r0x1096,0,0
1965 0A65 [01] [2] 74        	BTSS	_STATUS,4
1966 0A65 [01] 0300 11   	JMP	_00121_DS_
1967                     ;	;.line	53; ".\Source\App_LCD.c"	LCD_Delta3_En();
1968 0A67 [01] [1] 958D      	BSF	_LCD5,2
1969 0A68 [01] [1] 782A      	JMP	_00136_DS_
1970                     _00121_DS_:
1971                     ;	;.line	56; ".\Source\App_LCD.c"	else if(temp >= Warn_Temp_Centigrade)
1972 0A69 [01] [2] 6481      	MVF	_DispDelta_STK00,0,0
1973 0A6A [01] [2] 046E      	ADDL	0x6e
1974 0A6B [01] [2] 06F1      	MVL	0xf1
1975 0A6C [01] [2] 1480      	ADDC	r0x1096,0,0
1976 0A6D [01] [2] 74        	BTSS	_STATUS,4
1977 0A6D [01] 0300 11   	JMP	_00118_DS_
1978                     ;	;.line	59; ".\Source\App_LCD.c"	LCD_Delta2_En();
1979 0A6F [01] [1] 938D      	BSF	_LCD5,1
1980 0A70 [01] [1] 7822      	JMP	_00136_DS_
1981                     _00118_DS_:
1982                     ;	;.line	62; ".\Source\App_LCD.c"	else if(temp >= Noamal_Temp_Centigrade)
1983 0A71 [01] [2] 6481      	MVF	_DispDelta_STK00,0,0
1984 0A72 [01] [2] 0404      	ADDL	0x04
1985 0A73 [01] [2] 06F2      	MVL	0xf2
1986 0A74 [01] [2] 1480      	ADDC	r0x1096,0,0
1987 0A75 [01] [2] 74        	BTSS	_STATUS,4
1988 0A75 [01] 1D00 11   	JMP	_00136_DS_
1989                     ;	;.line	65; ".\Source\App_LCD.c"	LCD_Delta1_En();
1990 0A77 [01] [1] 918D      	BSF	_LCD5,0
1991 0A78 [01] [1] 781A      	JMP	_00136_DS_
1992                     _00134_DS_:
1993                     ;	;.line	69; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
1994 0A79 [01] [2] 06A5      	MVL	0xa5
1995 0A7A [01] [2] 6D13      	CPSE	_eTempUnit,0
1996 0A7B [01] [2] 7817      	JMP	_00136_DS_
1997                     ;	;.line	72; ".\Source\App_LCD.c"	if(temp >= Fever_Temp_Fahrenheit)
1998 0A7C [01] [2] 6481      	MVF	_DispDelta_STK00,0,0
1999 0A7D [01] [2] 04F0      	ADDL	0xf0
2000 0A7E [01] [2] 06D8      	MVL	0xd8
2001 0A7F [01] [2] 1480      	ADDC	r0x1096,0,0
2002 0A80 [01] [2] 74        	BTSS	_STATUS,4
2003 0A80 [01] 0300 11   	JMP	_00129_DS_
2004                     ;	;.line	75; ".\Source\App_LCD.c"	LCD_Delta3_En();
2005 0A82 [01] [1] 958D      	BSF	_LCD5,2
2006 0A83 [01] [1] 780F      	JMP	_00136_DS_
2007                     _00129_DS_:
2008                     ;	;.line	78; ".\Source\App_LCD.c"	else if(temp >= Warn_Temp_Fahrenheit)
2009 0A84 [01] [2] 6481      	MVF	_DispDelta_STK00,0,0
2010 0A85 [01] [2] 044A      	ADDL	0x4a
2011 0A86 [01] [2] 06D9      	MVL	0xd9
2012 0A87 [01] [2] 1480      	ADDC	r0x1096,0,0
2013 0A88 [01] [2] 74        	BTSS	_STATUS,4
2014 0A88 [01] 0300 11   	JMP	_00126_DS_
2015                     ;	;.line	81; ".\Source\App_LCD.c"	LCD_Delta2_En();
2016 0A8A [01] [1] 938D      	BSF	_LCD5,1
2017 0A8B [01] [1] 7807      	JMP	_00136_DS_
2018                     _00126_DS_:
2019                     ;	;.line	84; ".\Source\App_LCD.c"	else if(temp >= Noamal_Temp_Fahrenheit)
2020 0A8C [01] [2] 6481      	MVF	_DispDelta_STK00,0,0
2021 0A8D [01] [2] 0458      	ADDL	0x58
2022 0A8E [01] [2] 06DA      	MVL	0xda
2023 0A8F [01] [2] 1480 0011 	ADDC	r0x1096,0,0
2024 0A91 [01] [2] A82B      	BTSZ	_STATUS,4
2025                     ;	;.line	87; ".\Source\App_LCD.c"	LCD_Delta1_En();
2026 0A92 [01] [1] 918D      	BSF	_LCD5,0
2027                     _00136_DS_:
2028                     ;	;.line	123; ".\Source\App_LCD.c"	}
2029 0A93 [00] [X] C4FE      	RET	
2030                     ; exit point of _DispDelta
2031                     	.ENDFUNC	_DispDelta
2032                     ;--------------------------------------------------------
2033                     
2034                     .globl _DispUnit
2035                     
2036                     ;--------------------------------------------------------
2037                     	.FUNC _DispUnit:0
2038                     ;--------------------------------------------------------
2039                     ;	;.line	24; ".\Source\App_LCD.c"	if(eTempUnit == Centigrade)
2040                     _DispUnit:	;Function start
2041 0A4C [00] [X] 065A 0012 	MVL	0x5a
2042 0A4E [00] [2] 6D13      	CPSE	_eTempUnit,0
2043 0A4F [00] [2] 7804      	JMP	_00108_DS_
2044                     ;	;.line	27; ".\Source\App_LCD.c"	LCD_Unit_C_En();
2045 0A50 [00] [2] 0650 0011 	MVL	0x50
2046 0A52 [00] [1] 2F8C      	IORF	_LCD4,1,0
2047 0A53 [00] [1] 000A      	JMP	_00110_DS_
2048                     _00108_DS_:
2049                     ;	;.line	30; ".\Source\App_LCD.c"	else if(eTempUnit == Fahrenheit)
2050 0A54 [00] [2] 06A5      	MVL	0xa5
2051 0A55 [00] [2] 6D13      	CPSE	_eTempUnit,0
2052 0A56 [00] [2] 7803      	JMP	_00110_DS_
2053                     ;	;.line	33; ".\Source\App_LCD.c"	LCD_Unit_F_En();
2054 0A57 [00] [2] 0630 0011 	MVL	0x30
2055 0A59 [00] [1] 2F8C      	IORF	_LCD4,1,0
2056                     _00110_DS_:
2057                     ;	;.line	35; ".\Source\App_LCD.c"	}
2058 0A5A [00] [X] 000A      	RET	
2059                     ; exit point of _DispUnit
2060                     	.ENDFUNC	_DispUnit
2061                     ;--------------------------------------------------------
2062                     
2063                     	;--cdb--S:G$atof$0$0({2}DF,SF:S),C,0,0
2064                     	;--cdb--S:G$atoi$0$0({2}DF,SI:S),C,0,0
2065                     	;--cdb--S:G$atol$0$0({2}DF,SL:SL),C,0,0
2066                     	;--cdb--S:G$strtol$0$0({2}DF,SL:SL),C,0,0
2067                     	;--cdb--S:G$strtoul$0$0({2}DF,SL:UL),C,0,0
2068                     	;--cdb--S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
2069                     	;--cdb--S:G$_itoa$0$0({2}DF,SV:S),C,0,0
2070                     	;--cdb--S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
2071                     	;--cdb--S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
2072                     	;--cdb--S:G$rand$0$0({2}DF,SI:S),C,0,0
2073                     	;--cdb--S:G$srand$0$0({2}DF,SV:S),C,0,0
2074                     	;--cdb--S:G$calloc$0$0({2}DF,DD,SV:S),C,0,0
2075                     	;--cdb--S:G$malloc$0$0({2}DF,DD,SV:S),C,0,0
2076                     	;--cdb--S:G$realloc$0$0({2}DF,DD,SV:S),C,0,0
2077                     	;--cdb--S:G$aligned_alloc$0$0({2}DF,DT,SV:S),C,0,0
2078                     	;--cdb--S:G$free$0$0({2}DF,SV:S),C,0,0
2079                     	;--cdb--S:G$bsearch$0$0({2}DF,DT,SV:S),C,0,0
2080                     	;--cdb--S:G$qsort$0$0({2}DF,SV:S),C,0,0
2081                     	;--cdb--S:G$abs$0$0({2}DF,SI:S),C,0,0
2082                     	;--cdb--S:G$labs$0$0({2}DF,SL:SL),C,0,0
2083                     	;--cdb--S:G$mblen$0$0({2}DF,SI:S),C,0,0
2084                     	;--cdb--S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
2085                     	;--cdb--S:G$wctomb$0$0({2}DF,SI:S),C,0,0
2086                     	;--cdb--S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
2087                     	;--cdb--S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
2088                     	;--cdb--S:G$memccpy$0$0({2}DF,DD,SV:S),C,0,0
2089                     	;--cdb--S:G$memcpy$0$0({2}DF,DD,SV:S),C,0,0
2090                     	;--cdb--S:G$memmove$0$0({2}DF,DD,SV:S),C,0,0
2091                     	;--cdb--S:G$strcpy$0$0({2}DF,DD,SC:U),C,0,0
2092                     	;--cdb--S:G$strncpy$0$0({2}DF,DD,SC:U),C,0,0
2093                     	;--cdb--S:G$strcat$0$0({2}DF,DD,SC:U),C,0,0
2094                     	;--cdb--S:G$strncat$0$0({2}DF,DD,SC:U),C,0,0
2095                     	;--cdb--S:G$memcmp$0$0({2}DF,SI:S),C,0,0
2096                     	;--cdb--S:G$strcmp$0$0({2}DF,SI:S),C,0,0
2097                     	;--cdb--S:G$strncmp$0$0({2}DF,SI:S),C,0,0
2098                     	;--cdb--S:G$strxfrm$0$0({2}DF,SI:U),C,0,0
2099                     	;--cdb--S:G$memchr$0$0({2}DF,DT,SV:S),C,0,0
2100                     	;--cdb--S:G$strchr$0$0({2}DF,DT,SC:U),C,0,0
2101                     	;--cdb--S:G$strcspn$0$0({2}DF,SI:U),C,0,0
2102                     	;--cdb--S:G$strpbrk$0$0({2}DF,DT,SC:U),C,0,0
2103                     	;--cdb--S:G$strrchr$0$0({2}DF,DT,SC:U),C,0,0
2104                     	;--cdb--S:G$strspn$0$0({2}DF,SI:U),C,0,0
2105                     	;--cdb--S:G$strstr$0$0({2}DF,DT,SC:U),C,0,0
2106                     	;--cdb--S:G$strtok$0$0({2}DF,DD,SC:U),C,0,0
2107                     	;--cdb--S:G$memset$0$0({2}DF,DD,SV:S),C,0,0
2108                     	;--cdb--S:G$strlen$0$0({2}DF,SI:U),C,0,0
2109                     	;--cdb--S:G$IIC_Configuration$0$0({2}DF,SV:S),C,0,0
2110                     	;--cdb--S:G$I2C_ReadByte$0$0({2}DF,SC:U),C,0,0
2111                     	;--cdb--S:G$I2C_WriteByte$0$0({2}DF,SV:S),C,0,0
2112                     	;--cdb--S:G$BIE_Polling$0$0({2}DF,SC:U),C,0,0
2113                     	;--cdb--S:G$BIE_Read$0$0({2}DF,SI:U),C,0,0
2114                     	;--cdb--S:G$BIE_Write$0$0({2}DF,SC:U),C,0,0
2115                     	;--cdb--S:G$LVD_Off$0$0({2}DF,SV:S),C,0,0
2116                     	;--cdb--S:G$LVD_Configuration$0$0({2}DF,SV:S),C,0,0
2117                     	;--cdb--S:G$CLK_Configuration$0$0({2}DF,SV:S),C,0,0
2118                     	;--cdb--S:G$Disp_Off$0$0({2}DF,SV:S),C,0,0
2119                     	;--cdb--S:G$Disp_Hi$0$0({2}DF,SV:S),C,0,0
2120                     	;--cdb--S:G$Disp_All$0$0({2}DF,SV:S),C,0,0
2121                     	;--cdb--S:G$Disp_Orl$0$0({2}DF,SV:S),C,0,0
2122                     	;--cdb--S:G$Disp_Udr$0$0({2}DF,SV:S),C,0,0
2123                     	;--cdb--S:G$Disp_Rct$0$0({2}DF,SV:S),C,0,0
2124                     	;--cdb--S:G$Disp_Bth$0$0({2}DF,SV:S),C,0,0
2125                     	;--cdb--S:G$Disp_End$0$0({2}DF,SV:S),C,0,0
2126                     	;--cdb--S:G$Disp_CAL$0$0({2}DF,SV:S),C,0,0
2127                     	;--cdb--S:G$Disp_Low$0$0({2}DF,SV:S),C,0,0
2128                     	;--cdb--S:G$Disp_Code$0$0({2}DF,SV:S),C,0,0
2129                     	;--cdb--S:G$Disp_Version$0$0({2}DF,SV:S),C,0,0
2130                     	;--cdb--S:G$Disp_Nothing$0$0({2}DF,SV:S),C,0,0
2131                     	;--cdb--S:G$Disp_BrownOut$0$0({2}DF,SV:S),C,0,0
2132                     	;--cdb--S:G$Disp_Err$0$0({2}DF,SV:S),C,0,0
2133                     	;--cdb--S:G$Disp_ErrNo$0$0({2}DF,SV:S),C,0,0
2134                     	;--cdb--S:G$Disp_StaticDash$0$0({2}DF,SV:S),C,0,0
2135                     	;--cdb--S:G$LCD_Configuration$0$0({2}DF,SV:S),C,0,0
2136                     	;--cdb--S:G$LCD_Clear_Register$0$0({2}DF,SV:S),C,0,0
2137                     	;--cdb--S:G$ADC_Configuration$0$0({2}DF,SV:S),C,0,0
2138                     	;--cdb--S:G$ADCAccuracyMode$0$0({2}DF,SV:S),C,0,0
2139                     	;--cdb--S:G$AccuracyModeADCOFF$0$0({2}DF,SV:S),C,0,0
2140                     	;--cdb--S:G$WDT_Configuration$0$0({2}DF,SV:S),C,0,0
2141                     	;--cdb--S:G$PWR_Configuration$0$0({2}DF,SV:S),C,0,0
2142                     	;--cdb--S:G$GPIO_Configuration$0$0({2}DF,SV:S),C,0,0
2143                     	;--cdb--S:G$TMA1_Configuration$0$0({2}DF,SV:S),C,0,0
2144                     	;--cdb--S:G$UART0_Configuration$0$0({2}DF,SV:S),C,0,0
2145                     	;--cdb--S:G$UART0_SendString$0$0({2}DF,SV:S),C,0,0
2146                     	;--cdb--S:G$UART0_SendByte$0$0({2}DF,SV:S),C,0,0
2147                     	;--cdb--S:G$UART0_SendBuffer$0$0({2}DF,SV:S),C,0,0
2148                     	;--cdb--S:G$UART0_SendASCII$0$0({2}DF,SV:S),C,0,0
2149                     	;--cdb--S:G$AutoBps_Configuration$0$0({2}DF,SV:S),C,0,0
2150                     	;--cdb--S:G$BZ_Configuration$0$0({2}DF,SV:S),C,0,0
2151                     	;--cdb--S:G$Delay_ms$0$0({2}DF,SV:S),C,0,0
2152                     	;--cdb--S:G$memchrn$0$0({2}DF,SC:U),C,0,0
2153                     	;--cdb--S:G$Param_Init$0$0({2}DF,SV:S),C,0,0
2154                     	;--cdb--S:G$System_Init$0$0({2}DF,SV:S),C,0,0
2155                     	;--cdb--S:G$E2_Init$0$0({2}DF,SV:S),C,0,0
2156                     	;--cdb--S:G$BIE_Init$0$0({2}DF,SV:S),C,0,0
2157                     	;--cdb--S:G$Binding_Init$0$0({2}DF,SV:S),C,0,0
2158                     	;--cdb--S:G$Key_Detect$0$0({2}DF,SV:S),C,0,0
2159                     	;--cdb--S:G$Timer_Experience$0$0({2}DF,SC:U),C,0,0
2160                     	;--cdb--S:G$LVD_Detect$0$0({2}DF,SV:S),C,0,0
2161                     	;--cdb--S:G$Get_250msTemp$0$0({2}DF,SV:S),C,0,0
2162                     	;--cdb--S:G$Centigrade_Convert_Fahrenheit$0$0({2}DF,SI:U),C,0,0
2163                     	;--cdb--S:G$Sleep_Mode$0$0({2}DF,SV:S),C,0,0
2164                     	;--cdb--S:G$Buzzer_Drive$0$0({2}DF,SV:S),C,0,0
2165                     	;--cdb--S:G$MemoryTemp_E2Store$0$0({2}DF,SV:S),C,0,0
2166                     	;--cdb--S:G$MemoryTemp_RAMStore$0$0({2}DF,SV:S),C,0,0
2167                     	;--cdb--S:G$Temp_Calibration$0$0({2}DF,SV:S),C,0,0
2168                     	;--cdb--S:G$Actual_Measure$0$0({2}DF,SV:S),C,0,0
2169                     	;--cdb--S:G$Forecast_Measure$0$0({2}DF,SV:S),C,0,0
2170                     	;--cdb--S:G$App_BleMode$0$0({2}DF,SV:S),C,0,0
2171                     	;--cdb--S:G$BleData_Rcv$0$0({2}DF,SV:S),C,0,0
2172                     	;--cdb--S:G$Backlight_Drive$0$0({2}DF,SV:S),C,0,0
2173                     	;--cdb--S:G$ADC_Open$0$0({2}DF,SV:S),C,0,0
2174                     	;--cdb--S:G$ADC_GetData$0$0({2}DF,SL:SL),C,0,0
2175                     	;--cdb--S:G$ADC_SDRVEnable$0$0({2}DF,SV:S),C,0,0
2176                     	;--cdb--S:G$ADC_SDRVDisable$0$0({2}DF,SV:S),C,0,0
2177                     	;--cdb--S:G$PWMOpen$0$0({2}DF,SV:S),C,0,0
2178                     	;--cdb--S:G$TB1C0Set$0$0({2}DF,SV:S),C,0,0
2179                     	;--cdb--S:G$TB1C1Set$0$0({2}DF,SV:S),C,0,0
2180                     	;--cdb--S:G$TB1C2Set$0$0({2}DF,SV:S),C,0,0
2181                     	;--cdb--S:G$UART0_BGRSet$0$0({2}DF,SV:S),C,0,0
2182                     	;--cdb--S:G$UART2_BGRSet$0$0({2}DF,SV:S),C,0,0
2183                     	;--cdb--S:G$Task_Schedule$0$0({2}DF,SV:S),C,0,0
2184                     	;--cdb--S:G$DispUnit$0$0({2}DF,SV:S),C,0,0
2185                     	;--cdb--S:G$DispDelta$0$0({2}DF,SV:S),C,0,0
2186                     	;--cdb--S:G$DispNum$0$0({2}DF,SV:S),C,0,0
2187                     	;--cdb--S:G$_divuint$0$0({2}DF,SI:U),C,0,0
2188                     	;--cdb--S:G$_moduint$0$0({2}DF,SI:U),C,0,0
2189                     	;--cdb--S:G$Disp_BLEFlash$0$0({2}DF,SV:S),C,0,0
2190                     	;--cdb--S:G$Disp_Bat$0$0({2}DF,SV:S),C,0,0
2191                     	;--cdb--S:G$Disp_UnitFlash$0$0({2}DF,SV:S),C,0,0
2192                     	;--cdb--S:G$Disp_DynamicDash$0$0({2}DF,SV:S),C,0,0
2193                     	;--cdb--S:G$Disp_DynamicForecastSymbol$0$0({2}DF,SV:S),C,0,0
2194                     	;--cdb--S:G$Disp_BleSymbol$0$0({2}DF,SV:S),C,0,0
2195                     	;--cdb--S:G$UnitExchange_Display$0$0({2}DF,SV:S),C,0,0
2196                     	;--cdb--S:G$Off_Display$0$0({2}DF,SV:S),C,0,0
2197                     	;--cdb--S:G$PreCalibration_Display$0$0({2}DF,SV:S),C,0,0
2198                     	;--cdb--S:G$Calibration_Display$0$0({2}DF,SV:S),C,0,0
2199                     	;--cdb--S:G$CalibrationOK_Display$0$0({2}DF,SV:S),C,0,0
2200                     	;--cdb--S:G$RecentTemp_Display$0$0({2}DF,SV:S),C,0,0
2201                     	;--cdb--S:G$MemTempNumber_Display$0$0({2}DF,SV:S),C,0,0
2202                     	;--cdb--S:G$MemTempValue_Display$0$0({2}DF,SV:S),C,0,0
2203                     	;--cdb--S:G$CurrentMode_Display$0$0({2}DF,SV:S),C,0,0
2204                     	;--cdb--S:G$ModeExchange_Display$0$0({2}DF,SV:S),C,0,0
2205                     	;--cdb--S:G$Binding_Display$0$0({2}DF,SV:S),C,0,0
2206                     	;--cdb--S:G$EMC_Update_Temp_Fast$0$0({2}DF,SV:S),C,0,0
2207                     	;--cdb--S:G$TempDetecting_Display$0$0({2}DF,SV:S),C,0,0
2208                     	;--cdb--S:G$Err_Disp$0$0({2}DF,SV:S),C,0,0
2209                     	;--cdb--S:G$MeasedTemp_Disp$0$0({2}DF,SV:S),C,0,0
2210                     	;--cdb--S:G$LCD_Display$0$0({2}DF,SV:S),C,0,0
2211                     	;--cdb--S:G$FSR0$0$0({2}DD,SC:U),E,0,0
2212                     	;--cdb--S:G$FSR1$0$0({2}DD,SC:U),E,0,0
2213                     	;--cdb--S:G$FSR2$0$0({2}DD,SC:U),E,0,0
2214                     	;--cdb--S:G$ADCR$0$0({4}SL:SL),E,0,0
2215                     	;--cdb--S:G$sIIC$0$0({1}ST__00000000:S),E,0,0
2216                     	;--cdb--S:G$BIE_Available_Addr$0$0({1}SC:U),E,0,0
2217                     	;--cdb--S:G$sTIMx$0$0({13}ST__00000001:S),E,0,0
2218                     	;--cdb--S:G$sUARTx$0$0({15}ST__00000002:S),E,0,0
2219                     	;--cdb--S:G$sAutoBps$0$0({5}ST__00000003:S),E,0,0
2220                     	;--cdb--S:G$eAutoBps_Status$0$0({1}SC:U),E,0,0
2221                     	;--cdb--S:G$sTest$0$0({19}ST__00000004:S),E,0,0
2222                     	;--cdb--S:G$eTempUnit$0$0({1}SC:U),E,0,0
2223                     	;--cdb--S:G$eBondingTempUnit$0$0({1}SC:U),E,0,0
2224                     	;--cdb--S:G$eVersionCode$0$0({1}SC:U),E,0,0
2225                     	;--cdb--S:G$eMeasureMode$0$0({1}SC:U),E,0,0
2226                     	;--cdb--S:G$eBinding_Status$0$0({1}SC:U),E,0,0
2227                     	;--cdb--S:G$Enter_PrepareSleep_Flag$0$0({1}SC:U),E,0,0
2228                     	;--cdb--S:G$sButton$0$0({2}ST__00000005:S),E,0,0
2229                     	;--cdb--S:G$sTimeStamp$0$0({42}ST__00000006:S),E,0,0
2230                     	;--cdb--S:G$eButton_Status$0$0({1}SC:U),E,0,0
2231                     	;--cdb--S:G$sLVD$0$0({5}ST__00000007:S),E,0,0
2232                     	;--cdb--S:G$eErr$0$0({1}SC:U),E,0,0
2233                     	;--cdb--S:G$eDisplay_Interfaces$0$0({1}SC:U),E,0,0
2234                     	;--cdb--S:G$UnitExchangeCompleted$0$0({1}SC:U),E,0,0
2235                     	;--cdb--S:G$ERR$0$0({9}DA9d,SC:U),E,0,0
2236                     	;--cdb--S:G$sADC$0$0({45}ST__00000008:S),E,0,0
2237                     	;--cdb--S:G$eADCChannel$0$0({1}SC:U),E,0,0
2238                     	;--cdb--S:G$eSystem_Mode$0$0({1}SC:U),E,0,0
2239                     	;--cdb--S:G$eBuzzer_Status$0$0({1}SC:U),E,0,0
2240                     	;--cdb--S:G$Flag_No_Buzzer$0$0({1}SC:U),E,0,0
2241                     	;--cdb--S:G$sMemory$0$0({5}ST__00000009:S),E,0,0
2242                     	;--cdb--S:G$sMemoryFlag$0$0({3}ST__00000010:S),E,0,0
2243                     	;--cdb--S:G$sActual$0$0({5}ST__00000012:S),E,0,0
2244                     	;--cdb--S:G$sForecast$0$0({26}ST__00000013:S),E,0,0
2245                     	;--cdb--S:G$sTempCal$0$0({14}ST__00000011:S),E,0,0
2246                     	;--cdb--S:G$eMeas_Status$0$0({1}SC:U),E,0,0
2247                     	;--cdb--S:G$sActual_Forecast$0$0({15}ST__00000014:S),E,0,0
2248                     	;--cdb--S:G$eTo_Actual_Ways$0$0({1}SC:U),E,0,0
2249                     	;--cdb--S:G$eBle_Sta$0$0({1}SC:U),E,0,0
2250                     	;--cdb--S:G$sBleStatus$0$0({60}ST__00000015:S),E,0,0
2251                     	;--cdb--S:G$eBacklight_Status$0$0({1}SC:U),E,0,0
2252                     	;--cdb--S:G$sBacklight$0$0({1}ST__00000016:S),E,0,0
2253                     	;--cdb--S:G$NUM_CODE$0$0({11}DA11d,SC:U),D,0,0
2254                     	;--cdb--S:G$R_Table$0$0({2002}DA1001d,SI:U),D,0,0
2255                     	;--cdb--S:G$CloseTable$0$0({98}DA49d,SI:U),D,0,0
2256                     	;--cdb--S:G$_SWTGTID$0$0({1}SC:U),I,0,0
2257                     	;--cdb--S:G$INDF0$0$0({1}SC:U),I,0,0
2258                     	;--cdb--S:G$POINC0$0$0({1}SC:U),I,0,0
2259                     	;--cdb--S:G$PODEC0$0$0({1}SC:U),I,0,0
2260                     	;--cdb--S:G$PRINC0$0$0({1}SC:U),I,0,0
2261                     	;--cdb--S:G$PLUSW0$0$0({1}SC:U),I,0,0
2262                     	;--cdb--S:G$INDF1$0$0({1}SC:U),I,0,0
2263                     	;--cdb--S:G$POINC1$0$0({1}SC:U),I,0,0
2264                     	;--cdb--S:G$PODEC1$0$0({1}SC:U),I,0,0
2265                     	;--cdb--S:G$PRINC1$0$0({1}SC:U),I,0,0
2266                     	;--cdb--S:G$PLUSW1$0$0({1}SC:U),I,0,0
2267                     	;--cdb--S:G$INDF2$0$0({1}SC:U),I,0,0
2268                     	;--cdb--S:G$POINC2$0$0({1}SC:U),I,0,0
2269                     	;--cdb--S:G$PODEC2$0$0({1}SC:U),I,0,0
2270                     	;--cdb--S:G$PRINC2$0$0({1}SC:U),I,0,0
2271                     	;--cdb--S:G$PLUSW2$0$0({1}SC:U),I,0,0
2272                     	;--cdb--S:G$FSR0H$0$0({1}SC:U),I,0,0
2273                     	;--cdb--S:G$FSR0L$0$0({1}SC:U),I,0,0
2274                     	;--cdb--S:G$FSR1H$0$0({1}SC:U),I,0,0
2275                     	;--cdb--S:G$FSR1L$0$0({1}SC:U),I,0,0
2276                     	;--cdb--S:G$FSR2H$0$0({1}SC:U),I,0,0
2277                     	;--cdb--S:G$FSR2L$0$0({1}SC:U),I,0,0
2278                     	;--cdb--S:G$TOSH$0$0({1}SC:U),I,0,0
2279                     	;--cdb--S:G$TOSL$0$0({1}SC:U),I,0,0
2280                     	;--cdb--S:G$SKCN$0$0({1}SC:U),I,0,0
2281                     	;--cdb--S:G$PCLATH$0$0({1}SC:U),I,0,0
2282                     	;--cdb--S:G$PCLATL$0$0({1}SC:U),I,0,0
2283                     	;--cdb--S:G$TBLPTRH$0$0({1}SC:U),I,0,0
2284                     	;--cdb--S:G$TBLPTRL$0$0({1}SC:U),I,0,0
2285                     	;--cdb--S:G$TBLDH$0$0({1}SC:U),I,0,0
2286                     	;--cdb--S:G$TBLDL$0$0({1}SC:U),I,0,0
2287                     	;--cdb--S:G$PRODH$0$0({1}SC:U),I,0,0
2288                     	;--cdb--S:G$PRODL$0$0({1}SC:U),I,0,0
2289                     	;--cdb--S:G$INTE0$0$0({1}SC:U),I,0,0
2290                     	;--cdb--S:G$INTE1$0$0({1}SC:U),I,0,0
2291                     	;--cdb--S:G$INTE2$0$0({1}SC:U),I,0,0
2292                     	;--cdb--S:G$INTF0$0$0({1}SC:U),I,0,0
2293                     	;--cdb--S:G$INTF1$0$0({1}SC:U),I,0,0
2294                     	;--cdb--S:G$INTF2$0$0({1}SC:U),I,0,0
2295                     	;--cdb--S:G$WREG$0$0({1}SC:U),I,0,0
2296                     	;--cdb--S:G$BSRCN$0$0({1}SC:U),I,0,0
2297                     	;--cdb--S:G$STATUS$0$0({1}SC:U),I,0,0
2298                     	;--cdb--S:G$MSTAT$0$0({1}SC:U),I,0,0
2299                     	;--cdb--S:G$PSTAT$0$0({1}SC:U),I,0,0
2300                     	;--cdb--S:G$BIECN$0$0({1}SC:U),I,0,0
2301                     	;--cdb--S:G$BIEARH$0$0({1}SC:U),I,0,0
2302                     	;--cdb--S:G$BIEARL$0$0({1}SC:U),I,0,0
2303                     	;--cdb--S:G$BIEDRH$0$0({1}SC:U),I,0,0
2304                     	;--cdb--S:G$BIEDRL$0$0({1}SC:U),I,0,0
2305                     	;--cdb--S:G$PWRCN$0$0({1}SC:U),I,0,0
2306                     	;--cdb--S:G$OSCCN0$0$0({1}SC:U),I,0,0
2307                     	;--cdb--S:G$OSCCN1$0$0({1}SC:U),I,0,0
2308                     	;--cdb--S:G$OSCCN2$0$0({1}SC:U),I,0,0
2309                     	;--cdb--S:G$CSFCN0$0$0({1}SC:U),I,0,0
2310                     	;--cdb--S:G$CSFCN1$0$0({1}SC:U),I,0,0
2311                     	;--cdb--S:G$WDTCN$0$0({1}SC:U),I,0,0
2312                     	;--cdb--S:G$AD1H$0$0({1}SC:U),I,0,0
2313                     	;--cdb--S:G$AD1M$0$0({1}SC:U),I,0,0
2314                     	;--cdb--S:G$AD1L$0$0({1}SC:U),I,0,0
2315                     	;--cdb--S:G$AD1CN0$0$0({1}SC:U),I,0,0
2316                     	;--cdb--S:G$AD1CN1$0$0({1}SC:U),I,0,0
2317                     	;--cdb--S:G$AD1CN2$0$0({1}SC:U),I,0,0
2318                     	;--cdb--S:G$AD1CN3$0$0({1}SC:U),I,0,0
2319                     	;--cdb--S:G$AD1CN4$0$0({1}SC:U),I,0,0
2320                     	;--cdb--S:G$AD1CN5$0$0({1}SC:U),I,0,0
2321                     	;--cdb--S:G$LVDCN$0$0({1}SC:U),I,0,0
2322                     	;--cdb--S:G$TMA1CN$0$0({1}SC:U),I,0,0
2323                     	;--cdb--S:G$TMA1R$0$0({1}SC:U),I,0,0
2324                     	;--cdb--S:G$TMA1C$0$0({1}SC:U),I,0,0
2325                     	;--cdb--S:G$TB1FLAG$0$0({1}SC:U),I,0,0
2326                     	;--cdb--S:G$TB1CN0$0$0({1}SC:U),I,0,0
2327                     	;--cdb--S:G$TB1CN1$0$0({1}SC:U),I,0,0
2328                     	;--cdb--S:G$TB1RH$0$0({1}SC:U),I,0,0
2329                     	;--cdb--S:G$TB1RL$0$0({1}SC:U),I,0,0
2330                     	;--cdb--S:G$TB1C0H$0$0({1}SC:U),I,0,0
2331                     	;--cdb--S:G$TB1C0L$0$0({1}SC:U),I,0,0
2332                     	;--cdb--S:G$TB1C1H$0$0({1}SC:U),I,0,0
2333                     	;--cdb--S:G$TB1C1L$0$0({1}SC:U),I,0,0
2334                     	;--cdb--S:G$TB1C2H$0$0({1}SC:U),I,0,0
2335                     	;--cdb--S:G$TB1C2L$0$0({1}SC:U),I,0,0
2336                     	;--cdb--S:G$TC1CN0$0$0({1}SC:U),I,0,0
2337                     	;--cdb--S:G$PT1$0$0({1}SC:U),I,0,0
2338                     	;--cdb--S:G$TRISC1$0$0({1}SC:U),I,0,0
2339                     	;--cdb--S:G$PT1DA$0$0({1}SC:U),I,0,0
2340                     	;--cdb--S:G$PT1PU$0$0({1}SC:U),I,0,0
2341                     	;--cdb--S:G$PT1M1$0$0({1}SC:U),I,0,0
2342                     	;--cdb--S:G$PT1INT$0$0({1}SC:U),I,0,0
2343                     	;--cdb--S:G$PT1INTE$0$0({1}SC:U),I,0,0
2344                     	;--cdb--S:G$PT1INTF$0$0({1}SC:U),I,0,0
2345                     	;--cdb--S:G$PT2$0$0({1}SC:U),I,0,0
2346                     	;--cdb--S:G$TRISC2$0$0({1}SC:U),I,0,0
2347                     	;--cdb--S:G$PT2DA$0$0({1}SC:U),I,0,0
2348                     	;--cdb--S:G$PT2PU$0$0({1}SC:U),I,0,0
2349                     	;--cdb--S:G$PT2INT$0$0({1}SC:U),I,0,0
2350                     	;--cdb--S:G$PT2INTE$0$0({1}SC:U),I,0,0
2351                     	;--cdb--S:G$PT2INTF$0$0({1}SC:U),I,0,0
2352                     	;--cdb--S:G$PT6$0$0({1}SC:U),I,0,0
2353                     	;--cdb--S:G$TRISC6$0$0({1}SC:U),I,0,0
2354                     	;--cdb--S:G$PT6DA$0$0({1}SC:U),I,0,0
2355                     	;--cdb--S:G$PT6PU$0$0({1}SC:U),I,0,0
2356                     	;--cdb--S:G$PT7$0$0({1}SC:U),I,0,0
2357                     	;--cdb--S:G$TRISC7$0$0({1}SC:U),I,0,0
2358                     	;--cdb--S:G$PT7DA$0$0({1}SC:U),I,0,0
2359                     	;--cdb--S:G$PT7PU$0$0({1}SC:U),I,0,0
2360                     	;--cdb--S:G$PT8$0$0({1}SC:U),I,0,0
2361                     	;--cdb--S:G$TRISC8$0$0({1}SC:U),I,0,0
2362                     	;--cdb--S:G$PT8DA$0$0({1}SC:U),I,0,0
2363                     	;--cdb--S:G$PT8PU$0$0({1}SC:U),I,0,0
2364                     	;--cdb--S:G$SSPCN0$0$0({1}SC:U),I,0,0
2365                     	;--cdb--S:G$SSPSTA0$0$0({1}SC:U),I,0,0
2366                     	;--cdb--S:G$SSPBUF0$0$0({1}SC:U),I,0,0
2367                     	;--cdb--S:G$CFG0$0$0({1}SC:U),I,0,0
2368                     	;--cdb--S:G$ACT0$0$0({1}SC:U),I,0,0
2369                     	;--cdb--S:G$STA0$0$0({1}SC:U),I,0,0
2370                     	;--cdb--S:G$CRG0$0$0({1}SC:U),I,0,0
2371                     	;--cdb--S:G$TOC0$0$0({1}SC:U),I,0,0
2372                     	;--cdb--S:G$RDB0$0$0({1}SC:U),I,0,0
2373                     	;--cdb--S:G$TDB0$0$0({1}SC:U),I,0,0
2374                     	;--cdb--S:G$SID0$0$0({1}SC:U),I,0,0
2375                     	;--cdb--S:G$UR0CN$0$0({1}SC:U),I,0,0
2376                     	;--cdb--S:G$UR0STA$0$0({1}SC:U),I,0,0
2377                     	;--cdb--S:G$BA0CN$0$0({1}SC:U),I,0,0
2378                     	;--cdb--S:G$BG0RH$0$0({1}SC:U),I,0,0
2379                     	;--cdb--S:G$BG0RL$0$0({1}SC:U),I,0,0
2380                     	;--cdb--S:G$TX0R$0$0({1}SC:U),I,0,0
2381                     	;--cdb--S:G$RC0REG$0$0({1}SC:U),I,0,0
2382                     	;--cdb--S:G$LCDCN1$0$0({1}SC:U),I,0,0
2383                     	;--cdb--S:G$LCDCN2$0$0({1}SC:U),I,0,0
2384                     	;--cdb--S:G$LCDCN3$0$0({1}SC:U),I,0,0
2385                     	;--cdb--S:G$LCDCN4$0$0({1}SC:U),I,0,0
2386                     	;--cdb--S:G$LCDCN5$0$0({1}SC:U),I,0,0
2387                     	;--cdb--S:G$LCDCN6$0$0({1}SC:U),I,0,0
2388                     	;--cdb--S:G$LCDCN7$0$0({1}SC:U),I,0,0
2389                     	;--cdb--S:G$LCDCN8$0$0({1}SC:U),I,0,0
2390                     	;--cdb--S:G$LCD0$0$0({1}SC:U),I,0,0
2391                     	;--cdb--S:G$LCD1$0$0({1}SC:U),I,0,0
2392                     	;--cdb--S:G$LCD2$0$0({1}SC:U),I,0,0
2393                     	;--cdb--S:G$LCD3$0$0({1}SC:U),I,0,0
2394                     	;--cdb--S:G$LCD4$0$0({1}SC:U),I,0,0
2395                     	;--cdb--S:G$LCD5$0$0({1}SC:U),I,0,0
2396                     	;--cdb--S:G$LCD6$0$0({1}SC:U),I,0,0
2397                     	;--cdb--S:G$LCD7$0$0({1}SC:U),I,0,0
2398                     	;--cdb--S:G$LCD8$0$0({1}SC:U),I,0,0
2399                     	;--cdb--S:G$LCD9$0$0({1}SC:U),I,0,0
2400                     	;--cdb--S:G$UR2CN$0$0({1}SC:U),I,0,0
2401                     	;--cdb--S:G$UR2STA$0$0({1}SC:U),I,0,0
2402                     	;--cdb--S:G$BA2CN$0$0({1}SC:U),I,0,0
2403                     	;--cdb--S:G$BG2RH$0$0({1}SC:U),I,0,0
2404                     	;--cdb--S:G$BG2RL$0$0({1}SC:U),I,0,0
2405                     	;--cdb--S:G$TX2R$0$0({1}SC:U),I,0,0
2406                     	;--cdb--S:G$RC2REG$0$0({1}SC:U),I,0,0
2407                     	;--cdb--S:G$TMA2R$0$0({1}SC:U),I,0,0
2408                     	;--cdb--S:G$TMA2C$0$0({1}SC:U),I,0,0
2409                     	;--cdb--S:G$LEDCN$0$0({1}SC:U),I,0,0
2410                     	;--cdb--S:G$IQ0$0$0({1}SC:U),I,0,0
2411                     	;--cdb--S:G$IQ1$0$0({1}SC:U),I,0,0
2412                     	;--cdb--S:G$DGCON1$0$0({1}SC:U),I,0,0
2413                     	;--cdb--S:G$DGCON2$0$0({1}SC:U),I,0,0
2414                     	;--cdb--S:G$ADCRH$0$0({1}SC:U),I,0,0
2415                     	;--cdb--S:G$ADCRM$0$0({1}SC:U),I,0,0
2416                     	;--cdb--S:G$ADCRL$0$0({1}SC:U),I,0,0
2417                     	;--cdb--S:LApp_LCD.aligned_alloc._aligned_alloc_size_65536_25$size$10000$25({2}SI:U),E,0,0
2418                     	;--cdb--S:LApp_LCD.aligned_alloc._aligned_alloc_alignment_65536_25$alignment$10000$25({2}SI:U),E,0,0
2419                     	;--cdb--S:LApp_LCD.DispDelta._DispDelta_temp_65536_371$temp$10000$371({2}SI:U),R,0,0,[_DispDelta_STK00,r0x1096]
2420                     	;--cdb--S:LApp_LCD.DispNum._DispNum_num_65536_387$num$10000$387({2}SI:U),R,0,0,[_DispNum_STK00,r0x1099]
2421                     	;--cdb--S:LApp_LCD.DispNum._DispNum_NumDisp_65536_388$NumDisp$10000$388({5}DA5d,SC:U),E,0,0
2422                     	;--cdb--S:LApp_LCD.MeasedTemp_Disp._MeasedTemp_Disp_tmp_65536_553$tmp$10000$553({2}SI:U),R,0,0,[r0x10D0,r0x10D1]
2423                     	;--cdb--S:G$_STATUS$0$0({0}:U),Z,0,0
2424                     	;--cdb--S:G$_PLUSW0$0$0({0}:U),Z,0,0
2425                     	;--cdb--S:G$_PRODL$0$0({0}:U),Z,0,0
2426                     	;--cdb--S:G$_PCLATH$0$0({0}:U),Z,0,0
2427                     	;--cdb--S:G$_PCLATL$0$0({0}:U),Z,0,0
2428                     	;--cdb--S:G$_WREG$0$0({0}:U),Z,0,0
2429                     ;--------------------------------------------------------
2430                     ; external declarations
2431                     ;--------------------------------------------------------
2432                     	.globl	_Disp_Off
2433                     	.globl	_Disp_Hi
2434                     	.globl	_Disp_All
2435                     	.globl	_Disp_Orl
2436                     	.globl	_Disp_Udr
2437                     	.globl	_Disp_Rct
2438                     	.globl	_Disp_Bth
2439                     	.globl	_Disp_End
2440                     	.globl	_Disp_CAL
2441                     	.globl	_Disp_Code
2442                     	.globl	_Disp_Version
2443                     	.globl	_Disp_Nothing
2444                     	.globl	_Disp_BrownOut
2445                     	.globl	_Disp_Err
2446                     	.globl	_Disp_ErrNo
2447                     	.globl	_Disp_StaticDash
2448                     	.globl	_LCD_Configuration
2449                     	.globl	_LCD_Clear_Register
2450                     	.globl	_memchrn
2451                     	.globl	_Centigrade_Convert_Fahrenheit
2452                     	.globl	__divuint
2453                     	.globl	__moduint
2454                     	.globl	_FSR0
2455                     	.globl	_FSR1
2456                     	.globl	_FSR2
2457                     	.globl	_ADCR
2458                     	.globl	_sIIC
2459                     	.globl	_BIE_Available_Addr
2460                     	.globl	_sTIMx
2461                     	.globl	_sUARTx
2462                     	.globl	_sAutoBps
2463                     	.globl	_eAutoBps_Status
2464                     	.globl	_sTest
2465                     	.globl	_eTempUnit
2466                     	.globl	_eBondingTempUnit
2467                     	.globl	_eVersionCode
2468                     	.globl	_eMeasureMode
2469                     	.globl	_eBinding_Status
2470                     	.globl	_Enter_PrepareSleep_Flag
2471                     	.globl	_sButton
2472                     	.globl	_sTimeStamp
2473                     	.globl	_eButton_Status
2474                     	.globl	_sLVD
2475                     	.globl	_sADC
2476                     	.globl	_eADCChannel
2477                     	.globl	_eSystem_Mode
2478                     	.globl	_eBuzzer_Status
2479                     	.globl	_Flag_No_Buzzer
2480                     	.globl	_sMemory
2481                     	.globl	_sMemoryFlag
2482                     	.globl	_sActual
2483                     	.globl	_sForecast
2484                     	.globl	_sTempCal
2485                     	.globl	_eMeas_Status
2486                     	.globl	_sActual_Forecast
2487                     	.globl	_eTo_Actual_Ways
2488                     	.globl	_eBle_Sta
2489                     	.globl	_sBleStatus
2490                     	.globl	_eBacklight_Status
2491                     	.globl	_sBacklight
2492                     	.globl	_R_Table
2493                     	.globl	_CloseTable
2494                     	.globl	__cptrget1
2495                     
2496                     	.globl STK07
2497                     	.globl STK07_SAVE
2498                     	.globl STK06
2499                     	.globl STK06_SAVE
2500                     	.globl STK05
2501                     	.globl STK05_SAVE
2502                     	.globl STK04
2503                     	.globl STK04_SAVE
2504                     	.globl STK03
2505                     	.globl STK03_SAVE
2506                     	.globl STK02
2507                     	.globl STK02_SAVE
2508                     	.globl STK01
2509                     	.globl STK01_SAVE
2510                     	.globl STK00
2511                     	.globl STK00_SAVE
2512                     ;--------------------------------------------------------
2513                     ; global -1 declarations
2514                     ;--------------------------------------------------------
2515                     	.globl	_DispUnit
2516                     	.globl	_DispDelta
2517                     	.globl	_DispNum
2518                     	.globl	_Disp_Bat
2519                     	.globl	_Disp_UnitFlash
2520                     	.globl	_Disp_DynamicDash
2521                     	.globl	_Disp_DynamicForecastSymbol
2522                     	.globl	_Disp_BleSymbol
2523                     	.globl	_UnitExchange_Display
2524                     	.globl	_Off_Display
2525                     	.globl	_PreCalibration_Display
2526                     	.globl	_Calibration_Display
2527                     	.globl	_CalibrationOK_Display
2528                     	.globl	_RecentTemp_Display
2529                     	.globl	_MemTempNumber_Display
2530                     	.globl	_MemTempValue_Display
2531                     	.globl	_CurrentMode_Display
2532                     	.globl	_ModeExchange_Display
2533                     	.globl	_Binding_Display
2534                     	.globl	_EMC_Update_Temp_Fast
2535                     	.globl	_TempDetecting_Display
2536                     	.globl	_Err_Disp
2537                     	.globl	_MeasedTemp_Disp
2538                     	.globl	_eErr
2539                     	.globl	_eDisplay_Interfaces
2540                     	.globl	_UnitExchangeCompleted
2541                     	.globl	_ERR
2542                     	.globl	_NUM_CODE
2543                     
2544                     	.globl	_memcpy
2545                     ;--------------------------------------------------------
2546                     ; global -2 definitions
2547                     ;--------------------------------------------------------
2548                     	.area DSEG(DATA)
2549 0246 --             _eErr:	.ds	1
2550                     
2551                     	.area DSEG(DATA)
2552 0247 --             _eDisplay_Interfaces:	.ds	1
2553                     
2554                     	.area DSEG(DATA)
2555 0248 --             _UnitExchangeCompleted:	.ds	1
2556                     
2557                     	.area DSEG(DATA)
2558 0249 -- -- -- -- -- -- -- -- -- _ERR:	.ds	9
2559                     
2560                     	.area DSEG(DATA)
2561                     __SWTGTID	.equ	0xA6A6B2CF
2562                     
2563                     	.area DSEG(DATA)
2564                     _INDF0	.equ	0x0
2565                     
2566                     	.area DSEG(DATA)
2567                     _POINC0	.equ	0x1
2568                     
2569                     	.area DSEG(DATA)
2570                     _PODEC0	.equ	0x2
2571                     
2572                     	.area DSEG(DATA)
2573                     _PRINC0	.equ	0x3
2574                     
2575                     	.area DSEG(DATA)
2576                     _PLUSW0	.equ	0x4
2577                     
2578                     	.area DSEG(DATA)
2579                     _INDF1	.equ	0x5
2580                     
2581                     	.area DSEG(DATA)
2582                     _POINC1	.equ	0x6
2583                     
2584                     	.area DSEG(DATA)
2585                     _PODEC1	.equ	0x7
2586                     
2587                     	.area DSEG(DATA)
2588                     _PRINC1	.equ	0x8
2589                     
2590                     	.area DSEG(DATA)
2591                     _PLUSW1	.equ	0x9
2592                     
2593                     	.area DSEG(DATA)
2594                     _INDF2	.equ	0xA
2595                     
2596                     	.area DSEG(DATA)
2597                     _POINC2	.equ	0xB
2598                     
2599                     	.area DSEG(DATA)
2600                     _PODEC2	.equ	0xC
2601                     
2602                     	.area DSEG(DATA)
2603                     _PRINC2	.equ	0xD
2604                     
2605                     	.area DSEG(DATA)
2606                     _PLUSW2	.equ	0xE
2607                     
2608                     	.area DSEG(DATA)
2609                     _FSR0H	.equ	0xF
2610                     
2611                     	.area DSEG(DATA)
2612                     _FSR0L	.equ	0x10
2613                     
2614                     	.area DSEG(DATA)
2615                     _FSR1H	.equ	0x11
2616                     
2617                     	.area DSEG(DATA)
2618                     _FSR1L	.equ	0x12
2619                     
2620                     	.area DSEG(DATA)
2621                     _FSR2H	.equ	0x13
2622                     
2623                     	.area DSEG(DATA)
2624                     _FSR2L	.equ	0x14
2625                     
2626                     	.area DSEG(DATA)
2627                     _TOSH	.equ	0x16
2628                     
2629                     	.area DSEG(DATA)
2630                     _TOSL	.equ	0x17
2631                     
2632                     	.area DSEG(DATA)
2633                     _SKCN	.equ	0x18
2634                     
2635                     	.area DSEG(DATA)
2636                     _PCLATH	.equ	0x1A
2637                     
2638                     	.area DSEG(DATA)
2639                     _PCLATL	.equ	0x1B
2640                     
2641                     	.area DSEG(DATA)
2642                     _TBLPTRH	.equ	0x1D
2643                     
2644                     	.area DSEG(DATA)
2645                     _TBLPTRL	.equ	0x1E
2646                     
2647                     	.area DSEG(DATA)
2648                     _TBLDH	.equ	0x1F
2649                     
2650                     	.area DSEG(DATA)
2651                     _TBLDL	.equ	0x20
2652                     
2653                     	.area DSEG(DATA)
2654                     _PRODH	.equ	0x21
2655                     
2656                     	.area DSEG(DATA)
2657                     _PRODL	.equ	0x22
2658                     
2659                     	.area DSEG(DATA)
2660                     _INTE0	.equ	0x23
2661                     
2662                     	.area DSEG(DATA)
2663                     _INTE1	.equ	0x24
2664                     
2665                     	.area DSEG(DATA)
2666                     _INTE2	.equ	0x25
2667                     
2668                     	.area DSEG(DATA)
2669                     _INTF0	.equ	0x26
2670                     
2671                     	.area DSEG(DATA)
2672                     _INTF1	.equ	0x27
2673                     
2674                     	.area DSEG(DATA)
2675                     _INTF2	.equ	0x28
2676                     
2677                     	.area DSEG(DATA)
2678                     _WREG	.equ	0x29
2679                     
2680                     	.area DSEG(DATA)
2681                     _BSRCN	.equ	0x2A
2682                     
2683                     	.area DSEG(DATA)
2684                     _STATUS	.equ	0x2B
2685                     
2686                     	.area DSEG(DATA)
2687                     _MSTAT	.equ	0x2B
2688                     
2689                     	.area DSEG(DATA)
2690                     _PSTAT	.equ	0x2C
2691                     
2692                     	.area DSEG(DATA)
2693                     _BIECN	.equ	0x2E
2694                     
2695                     	.area DSEG(DATA)
2696                     _BIEARH	.equ	0x2F
2697                     
2698                     	.area DSEG(DATA)
2699                     _BIEARL	.equ	0x30
2700                     
2701                     	.area DSEG(DATA)
2702                     _BIEDRH	.equ	0x31
2703                     
2704                     	.area DSEG(DATA)
2705                     _BIEDRL	.equ	0x32
2706                     
2707                     	.area DSEG(DATA)
2708                     _PWRCN	.equ	0x33
2709                     
2710                     	.area DSEG(DATA)
2711                     _OSCCN0	.equ	0x34
2712                     
2713                     	.area DSEG(DATA)
2714                     _OSCCN1	.equ	0x35
2715                     
2716                     	.area DSEG(DATA)
2717                     _OSCCN2	.equ	0x36
2718                     
2719                     	.area DSEG(DATA)
2720                     _CSFCN0	.equ	0x37
2721                     
2722                     	.area DSEG(DATA)
2723                     _CSFCN1	.equ	0x38
2724                     
2725                     	.area DSEG(DATA)
2726                     _WDTCN	.equ	0x39
2727                     
2728                     	.area DSEG(DATA)
2729                     _AD1H	.equ	0x3A
2730                     
2731                     	.area DSEG(DATA)
2732                     _AD1M	.equ	0x3B
2733                     
2734                     	.area DSEG(DATA)
2735                     _AD1L	.equ	0x3C
2736                     
2737                     	.area DSEG(DATA)
2738                     _AD1CN0	.equ	0x3D
2739                     
2740                     	.area DSEG(DATA)
2741                     _AD1CN1	.equ	0x3E
2742                     
2743                     	.area DSEG(DATA)
2744                     _AD1CN2	.equ	0x3F
2745                     
2746                     	.area DSEG(DATA)
2747                     _AD1CN3	.equ	0x40
2748                     
2749                     	.area DSEG(DATA)
2750                     _AD1CN4	.equ	0x41
2751                     
2752                     	.area DSEG(DATA)
2753                     _AD1CN5	.equ	0x42
2754                     
2755                     	.area DSEG(DATA)
2756                     _LVDCN	.equ	0x43
2757                     
2758                     	.area DSEG(DATA)
2759                     _TMA1CN	.equ	0x44
2760                     
2761                     	.area DSEG(DATA)
2762                     _TMA1R	.equ	0x45
2763                     
2764                     	.area DSEG(DATA)
2765                     _TMA1C	.equ	0x46
2766                     
2767                     	.area DSEG(DATA)
2768                     _TB1FLAG	.equ	0x47
2769                     
2770                     	.area DSEG(DATA)
2771                     _TB1CN0	.equ	0x48
2772                     
2773                     	.area DSEG(DATA)
2774                     _TB1CN1	.equ	0x49
2775                     
2776                     	.area DSEG(DATA)
2777                     _TB1RH	.equ	0x4A
2778                     
2779                     	.area DSEG(DATA)
2780                     _TB1RL	.equ	0x4B
2781                     
2782                     	.area DSEG(DATA)
2783                     _TB1C0H	.equ	0x4C
2784                     
2785                     	.area DSEG(DATA)
2786                     _TB1C0L	.equ	0x4D
2787                     
2788                     	.area DSEG(DATA)
2789                     _TB1C1H	.equ	0x4E
2790                     
2791                     	.area DSEG(DATA)
2792                     _TB1C1L	.equ	0x4F
2793                     
2794                     	.area DSEG(DATA)
2795                     _TB1C2H	.equ	0x50
2796                     
2797                     	.area DSEG(DATA)
2798                     _TB1C2L	.equ	0x51
2799                     
2800                     	.area DSEG(DATA)
2801                     _TC1CN0	.equ	0x52
2802                     
2803                     	.area DSEG(DATA)
2804                     _PT1	.equ	0x53
2805                     
2806                     	.area DSEG(DATA)
2807                     _TRISC1	.equ	0x54
2808                     
2809                     	.area DSEG(DATA)
2810                     _PT1DA	.equ	0x55
2811                     
2812                     	.area DSEG(DATA)
2813                     _PT1PU	.equ	0x56
2814                     
2815                     	.area DSEG(DATA)
2816                     _PT1M1	.equ	0x57
2817                     
2818                     	.area DSEG(DATA)
2819                     _PT1INT	.equ	0x58
2820                     
2821                     	.area DSEG(DATA)
2822                     _PT1INTE	.equ	0x59
2823                     
2824                     	.area DSEG(DATA)
2825                     _PT1INTF	.equ	0x5A
2826                     
2827                     	.area DSEG(DATA)
2828                     _PT2	.equ	0x5B
2829                     
2830                     	.area DSEG(DATA)
2831                     _TRISC2	.equ	0x5C
2832                     
2833                     	.area DSEG(DATA)
2834                     _PT2DA	.equ	0x5D
2835                     
2836                     	.area DSEG(DATA)
2837                     _PT2PU	.equ	0x5E
2838                     
2839                     	.area DSEG(DATA)
2840                     _PT2INT	.equ	0x5F
2841                     
2842                     	.area DSEG(DATA)
2843                     _PT2INTE	.equ	0x60
2844                     
2845                     	.area DSEG(DATA)
2846                     _PT2INTF	.equ	0x61
2847                     
2848                     	.area DSEG(DATA)
2849                     _PT6	.equ	0x62
2850                     
2851                     	.area DSEG(DATA)
2852                     _TRISC6	.equ	0x63
2853                     
2854                     	.area DSEG(DATA)
2855                     _PT6DA	.equ	0x64
2856                     
2857                     	.area DSEG(DATA)
2858                     _PT6PU	.equ	0x65
2859                     
2860                     	.area DSEG(DATA)
2861                     _PT7	.equ	0x66
2862                     
2863                     	.area DSEG(DATA)
2864                     _TRISC7	.equ	0x67
2865                     
2866                     	.area DSEG(DATA)
2867                     _PT7DA	.equ	0x68
2868                     
2869                     	.area DSEG(DATA)
2870                     _PT7PU	.equ	0x69
2871                     
2872                     	.area DSEG(DATA)
2873                     _PT8	.equ	0x6A
2874                     
2875                     	.area DSEG(DATA)
2876                     _TRISC8	.equ	0x6B
2877                     
2878                     	.area DSEG(DATA)
2879                     _PT8DA	.equ	0x6C
2880                     
2881                     	.area DSEG(DATA)
2882                     _PT8PU	.equ	0x6D
2883                     
2884                     	.area DSEG(DATA)
2885                     _SSPCN0	.equ	0x6E
2886                     
2887                     	.area DSEG(DATA)
2888                     _SSPSTA0	.equ	0x6F
2889                     
2890                     	.area DSEG(DATA)
2891                     _SSPBUF0	.equ	0x70
2892                     
2893                     	.area DSEG(DATA)
2894                     _CFG0	.equ	0x71
2895                     
2896                     	.area DSEG(DATA)
2897                     _ACT0	.equ	0x72
2898                     
2899                     	.area DSEG(DATA)
2900                     _STA0	.equ	0x73
2901                     
2902                     	.area DSEG(DATA)
2903                     _CRG0	.equ	0x74
2904                     
2905                     	.area DSEG(DATA)
2906                     _TOC0	.equ	0x75
2907                     
2908                     	.area DSEG(DATA)
2909                     _RDB0	.equ	0x76
2910                     
2911                     	.area DSEG(DATA)
2912                     _TDB0	.equ	0x77
2913                     
2914                     	.area DSEG(DATA)
2915                     _SID0	.equ	0x78
2916                     
2917                     	.area DSEG(DATA)
2918                     _UR0CN	.equ	0x79
2919                     
2920                     	.area DSEG(DATA)
2921                     _UR0STA	.equ	0x7A
2922                     
2923                     	.area DSEG(DATA)
2924                     _BA0CN	.equ	0x7B
2925                     
2926                     	.area DSEG(DATA)
2927                     _BG0RH	.equ	0x7C
2928                     
2929                     	.area DSEG(DATA)
2930                     _BG0RL	.equ	0x7D
2931                     
2932                     	.area DSEG(DATA)
2933                     _TX0R	.equ	0x7E
2934                     
2935                     	.area DSEG(DATA)
2936                     _RC0REG	.equ	0x7F
2937                     
2938                     	.area DSEG(DATA)
2939                     _LCDCN1	.equ	0x180
2940                     
2941                     	.area DSEG(DATA)
2942                     _LCDCN2	.equ	0x181
2943                     
2944                     	.area DSEG(DATA)
2945                     _LCDCN3	.equ	0x182
2946                     
2947                     	.area DSEG(DATA)
2948                     _LCDCN4	.equ	0x183
2949                     
2950                     	.area DSEG(DATA)
2951                     _LCDCN5	.equ	0x184
2952                     
2953                     	.area DSEG(DATA)
2954                     _LCDCN6	.equ	0x185
2955                     
2956                     	.area DSEG(DATA)
2957                     _LCDCN7	.equ	0x186
2958                     
2959                     	.area DSEG(DATA)
2960                     _LCDCN8	.equ	0x187
2961                     
2962                     	.area DSEG(DATA)
2963                     _LCD0	.equ	0x188
2964                     
2965                     	.area DSEG(DATA)
2966                     _LCD1	.equ	0x189
2967                     
2968                     	.area DSEG(DATA)
2969                     _LCD2	.equ	0x18A
2970                     
2971                     	.area DSEG(DATA)
2972                     _LCD3	.equ	0x18B
2973                     
2974                     	.area DSEG(DATA)
2975                     _LCD4	.equ	0x18C
2976                     
2977                     	.area DSEG(DATA)
2978                     _LCD5	.equ	0x18D
2979                     
2980                     	.area DSEG(DATA)
2981                     _LCD6	.equ	0x18E
2982                     
2983                     	.area DSEG(DATA)
2984                     _LCD7	.equ	0x18F
2985                     
2986                     	.area DSEG(DATA)
2987                     _LCD8	.equ	0x190
2988                     
2989                     	.area DSEG(DATA)
2990                     _LCD9	.equ	0x191
2991                     
2992                     	.area DSEG(DATA)
2993                     _UR2CN	.equ	0x192
2994                     
2995                     	.area DSEG(DATA)
2996                     _UR2STA	.equ	0x193
2997                     
2998                     	.area DSEG(DATA)
2999                     _BA2CN	.equ	0x194
3000                     
3001                     	.area DSEG(DATA)
3002                     _BG2RH	.equ	0x195
3003                     
3004                     	.area DSEG(DATA)
3005                     _BG2RL	.equ	0x196
3006                     
3007                     	.area DSEG(DATA)
3008                     _TX2R	.equ	0x197
3009                     
3010                     	.area DSEG(DATA)
3011                     _RC2REG	.equ	0x198
3012                     
3013                     	.area DSEG(DATA)
3014                     _TMA2R	.equ	0x1E8
3015                     
3016                     	.area DSEG(DATA)
3017                     _TMA2C	.equ	0x1E9
3018                     
3019                     	.area DSEG(DATA)
3020                     _LEDCN	.equ	0x1EA
3021                     
3022                     	.area DSEG(DATA)
3023                     _IQ0	.equ	0x1EB
3024                     
3025                     	.area DSEG(DATA)
3026                     _IQ1	.equ	0x1EC
3027                     
3028                     	.area DSEG(DATA)
3029                     _DGCON1	.equ	0x1ED
3030                     
3031                     	.area DSEG(DATA)
3032                     _DGCON2	.equ	0x1EE
3033                     
3034                     	.area DSEG(DATA)
3035                     _ADCRH	.equ	0x3A
3036                     
3037                     	.area DSEG(DATA)
3038                     _ADCRM	.equ	0x3B
3039                     
3040                     	.area DSEG(DATA)
3041                     _ADCRL	.equ	0x3C
3042                     
3043                     ;--------------------------------------------------------
3044                     ; absolute symbol definitions
3045                     ;--------------------------------------------------------
3046                     ;--------------------------------------------------------
3047                     ; compiler-defined variables
3048                     ;--------------------------------------------------------
3049                     	.area IDATA (DATA,REL,CON); pre-def
3050                     	.area IDATAROM (CODE,REL,CON); pre-def
3051                     	.area UDATA (DATA,REL,CON); pre-def
3052                     	.area UDATA (DATA,REL,CON) ;UDL_App_LCD_0	udata
3053 @FSR2-01 --         r0x1096:	.ds	1
3054 @FSR2-01 --         r0x1099:	.ds	1
3055 @FSR2-02 --         r0x109B:	.ds	1
3056 @FSR2-01 --         r0x10BD:	.ds	1
3057 @FSR2-01 --         r0x10D0:	.ds	1
3058 @FSR2-02 --         r0x10D1:	.ds	1
3059                     	.area LOCALSTK (STK); local stack var
3060 @FSR2-00 --         _DispDelta_STK00:	.ds	1
3061                     	.globl _DispDelta_STK00
3062 @FSR2-00 --         _DispNum_STK00:	.ds	1
3063                     	.globl _DispNum_STK00
3064                     	.globl __divuint_STK02
3065                     	.globl __divuint_STK01
3066                     	.globl __divuint_STK00
3067 @FSR2-03 -- -- -- -- -- _DispNum_NumDisp_65536_388:	.ds	5
3068                     	.globl __moduint_STK02
3069                     	.globl __moduint_STK01
3070                     	.globl __moduint_STK00
3071                     	.globl _memchrn_STK02
3072                     	.globl _memchrn_STK01
3073                     	.globl _memchrn_STK00
3074                     	.globl _Centigrade_Convert_Fahrenheit_STK00
3075                     	.globl _Disp_Code_STK00
3076                     ;--------------------------------------------------------
3077                     ; initialized data
3078                     ;--------------------------------------------------------
3079                     
3080                     	.area	CONST   (CODE)	 ;App_LCD-0-code, const
3081                     
3082                     _NUM_CODE:
3083 1AFB F5             	.db #0xf5	; 245
3084 1AFB 60             	.db #0x60	; 96
3085 1AFC B6             	.db #0xb6	; 182
3086 1AFC F2             	.db #0xf2	; 242
3087 1AFD 63             	.db #0x63	; 99	'c'
3088 1AFD D3             	.db #0xd3	; 211
3089 1AFE D7             	.db #0xd7	; 215
3090 1AFE 70             	.db #0x70	; 112	'p'
3091 1AFF F7             	.db #0xf7	; 247
3092 1AFF F3             	.db #0xf3	; 243
3093 1B00 00             	.db #0x00	; 0
3094                     
3095                     ;--------------------------------------------------------
3096                     ; initialized data - mirror
3097                     ;--------------------------------------------------------
3098                     
3099                     	;Following is optimization info, 
3100                     	;xxcdbxxW:dst:src+offset:srclit:just-remove
3101                     	;--cdb--W:r0x10D0:NULL+0:-1:1
3102                     	;--cdb--W:r0x10D1:NULL+0:-1:1
3103                     	;--cdb--W:r0x10CF:NULL+0:-1:1
3104                     	;--cdb--W:r0x10CA:NULL+0:-1:1
3105                     	;--cdb--W:r0x10CB:NULL+0:-1:1
3106                     	;--cdb--W:r0x10C1:NULL+0:-1:1
3107                     	;--cdb--W:r0x10C2:NULL+0:-1:1
3108                     	;--cdb--W:r0x10C2:STK00+0:-1:0
3109                     	;--cdb--W:r0x10C4:STK01+0:-1:0
3110                     	;--cdb--W:r0x10BD:NULL+0:-1:1
3111                     	;--cdb--W:r0x10BE:NULL+0:-1:1
3112                     	;--cdb--W:r0x10BF:NULL+0:0:0
3113                     	;--cdb--W:r0x10BF:NULL+0:-1:1
3114                     	;--cdb--W:r0x10B6:NULL+0:-1:1
3115                     	;--cdb--W:r0x10B7:NULL+0:-1:1
3116                     	;--cdb--W:r0x10B7:STK00+0:-1:0
3117                     	;--cdb--W:r0x10B9:STK01+0:-1:0
3118                     	;--cdb--W:r0x10AF:NULL+0:-1:1
3119                     	;--cdb--W:r0x10B0:NULL+0:-1:1
3120                     	;--cdb--W:r0x109B:NULL+0:-1:1
3121                     	;--cdb--W:r0x109A:NULL+0:-1:1
3122                     	;--cdb--W:r0x109C:NULL+0:-1:1
3123                     	;--cdb--W:r0x1099:NULL+0:-1:1
3124                     	;--cdb--W:_DispNum_STK00:NULL+0:-1:1
3125                     	;--cdb--W:r0x109A:STK00+0:-1:0
3126                     	end
