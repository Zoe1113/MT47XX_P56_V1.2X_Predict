sdcc -v
if exist ".\obj\App_ADC.asm " del ".\obj\App_ADC.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_ADC.c"
 							 
if exist "App_ADC.asm"  ( 
 copy "App_ADC.asm" obj
del "App_ADC.asm" 							 
) else ( 
copy ".\Source\App_ADC.asm" obj 
 del ".\Source\App_ADC.asm" 
)

if exist "D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\APP_Measure.asm " del ".\obj\APP_Measure.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\APP_Measure.c"
 							 
if exist "APP_Measure.asm"  ( 
 copy "APP_Measure.asm" obj
del "APP_Measure.asm" 							 
) else ( 
copy ".\Source\APP_Measure.asm" obj 
 del ".\Source\APP_Measure.asm" 
)

if exist "D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Schedule.asm " del ".\obj\App_Schedule.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Schedule.c"
 							 
if exist "App_Schedule.asm"  ( 
 copy "App_Schedule.asm" obj
del "App_Schedule.asm" 							 
) else ( 
copy ".\Source\App_Schedule.asm" obj 
 del ".\Source\App_Schedule.asm" 
)

if exist "D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_ADC.rel " del ".\obj\App_ADC.rel"
 sdashya -l -s -o -y ".\obj\App_ADC.asm"

if exist "D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\APP_Measure.rel " del ".\obj\APP_Measure.rel"
 sdashya -l -s -o -y ".\obj\APP_Measure.asm"

if exist "D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Schedule.rel " del ".\obj\App_Schedule.rel"
 sdashya -l -s -o -y ".\obj\App_Schedule.asm"

if exist "D:\Work\1任务\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

sdld -u -m -i -y -h08d -cm 9 -nx  ".\obj\HY17P56_MT.ihx"  ".\obj\App_ADC.rel" ".\obj\App_Backlight.rel" ".\obj\App_BLEmode.rel" ".\obj\App_Buzzer.rel" ".\obj\App_Init.rel" ".\obj\App_Key.rel" ".\obj\App_LCD_4718.rel" ".\obj\App_LCD_4726.rel" ".\obj\App_LCD_4735.rel" ".\obj\App_LVD.rel" ".\obj\App_Main.rel" ".\obj\APP_Measure.rel" ".\obj\App_Memory.rel" ".\obj\App_Schedule.rel" ".\obj\App_Sleep.rel" ".\obj\App_Str.rel" ".\obj\Drv_ADC.rel" ".\obj\Drv_BLE.rel" ".\obj\Drv_Buzzer.rel" ".\obj\Drv_CLK.rel" ".\obj\Drv_GPIO.rel" ".\obj\Drv_IIC.rel" ".\obj\Drv_LCD_4718.rel" ".\obj\Drv_LCD_4726.rel" ".\obj\Drv_LCD_4735.rel" ".\obj\Drv_LVD.rel" ".\obj\Drv_PWR.rel" ".\obj\Drv_Timer.rel" ".\obj\Drv_UART.rel" ".\obj\Drv_WDT.rel" ".\obj\ADC_56.rel" ".\obj\GPIO.rel" ".\obj\TMR_56.rel" ".\obj\UART_56.rel" ".\obj\Readme.rel"   -l HY17PSDCC.LIB -l lib/HY17P56ADCSetting.lib -l lib/HY17P56WR3_Delay.lib 

