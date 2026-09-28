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

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Backlight.asm " del ".\obj\App_Backlight.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Backlight.c"
 							 
if exist "App_Backlight.asm"  ( 
 copy "App_Backlight.asm" obj
del "App_Backlight.asm" 							 
) else ( 
copy ".\Source\App_Backlight.asm" obj 
 del ".\Source\App_Backlight.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_BLEmode.asm " del ".\obj\App_BLEmode.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_BLEmode.c"
 							 
if exist "App_BLEmode.asm"  ( 
 copy "App_BLEmode.asm" obj
del "App_BLEmode.asm" 							 
) else ( 
copy ".\Source\App_BLEmode.asm" obj 
 del ".\Source\App_BLEmode.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Buzzer.asm " del ".\obj\App_Buzzer.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Buzzer.c"
 							 
if exist "App_Buzzer.asm"  ( 
 copy "App_Buzzer.asm" obj
del "App_Buzzer.asm" 							 
) else ( 
copy ".\Source\App_Buzzer.asm" obj 
 del ".\Source\App_Buzzer.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Init.asm " del ".\obj\App_Init.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Init.c"
 							 
if exist "App_Init.asm"  ( 
 copy "App_Init.asm" obj
del "App_Init.asm" 							 
) else ( 
copy ".\Source\App_Init.asm" obj 
 del ".\Source\App_Init.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Key.asm " del ".\obj\App_Key.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Key.c"
 							 
if exist "App_Key.asm"  ( 
 copy "App_Key.asm" obj
del "App_Key.asm" 							 
) else ( 
copy ".\Source\App_Key.asm" obj 
 del ".\Source\App_Key.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LCD_4718.asm " del ".\obj\App_LCD_4718.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_LCD_4718.c"
 							 
if exist "App_LCD_4718.asm"  ( 
 copy "App_LCD_4718.asm" obj
del "App_LCD_4718.asm" 							 
) else ( 
copy ".\Source\App_LCD_4718.asm" obj 
 del ".\Source\App_LCD_4718.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LCD_4726.asm " del ".\obj\App_LCD_4726.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_LCD_4726.c"
 							 
if exist "App_LCD_4726.asm"  ( 
 copy "App_LCD_4726.asm" obj
del "App_LCD_4726.asm" 							 
) else ( 
copy ".\Source\App_LCD_4726.asm" obj 
 del ".\Source\App_LCD_4726.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LCD_4735.asm " del ".\obj\App_LCD_4735.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_LCD_4735.c"
 							 
if exist "App_LCD_4735.asm"  ( 
 copy "App_LCD_4735.asm" obj
del "App_LCD_4735.asm" 							 
) else ( 
copy ".\Source\App_LCD_4735.asm" obj 
 del ".\Source\App_LCD_4735.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LVD.asm " del ".\obj\App_LVD.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_LVD.c"
 							 
if exist "App_LVD.asm"  ( 
 copy "App_LVD.asm" obj
del "App_LVD.asm" 							 
) else ( 
copy ".\Source\App_LVD.asm" obj 
 del ".\Source\App_LVD.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Main.asm " del ".\obj\App_Main.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Main.c"
 							 
if exist "App_Main.asm"  ( 
 copy "App_Main.asm" obj
del "App_Main.asm" 							 
) else ( 
copy ".\Source\App_Main.asm" obj 
 del ".\Source\App_Main.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\APP_Measure.asm " del ".\obj\APP_Measure.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\APP_Measure.c"
 							 
if exist "APP_Measure.asm"  ( 
 copy "APP_Measure.asm" obj
del "APP_Measure.asm" 							 
) else ( 
copy ".\Source\APP_Measure.asm" obj 
 del ".\Source\APP_Measure.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Memory.asm " del ".\obj\App_Memory.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Memory.c"
 							 
if exist "App_Memory.asm"  ( 
 copy "App_Memory.asm" obj
del "App_Memory.asm" 							 
) else ( 
copy ".\Source\App_Memory.asm" obj 
 del ".\Source\App_Memory.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Schedule.asm " del ".\obj\App_Schedule.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Schedule.c"
 							 
if exist "App_Schedule.asm"  ( 
 copy "App_Schedule.asm" obj
del "App_Schedule.asm" 							 
) else ( 
copy ".\Source\App_Schedule.asm" obj 
 del ".\Source\App_Schedule.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Sleep.asm " del ".\obj\App_Sleep.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Sleep.c"
 							 
if exist "App_Sleep.asm"  ( 
 copy "App_Sleep.asm" obj
del "App_Sleep.asm" 							 
) else ( 
copy ".\Source\App_Sleep.asm" obj 
 del ".\Source\App_Sleep.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Str.asm " del ".\obj\App_Str.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\App_Str.c"
 							 
if exist "App_Str.asm"  ( 
 copy "App_Str.asm" obj
del "App_Str.asm" 							 
) else ( 
copy ".\Source\App_Str.asm" obj 
 del ".\Source\App_Str.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_ADC.asm " del ".\obj\Drv_ADC.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_ADC.c"
 							 
if exist "Drv_ADC.asm"  ( 
 copy "Drv_ADC.asm" obj
del "Drv_ADC.asm" 							 
) else ( 
copy ".\Source\Drv_ADC.asm" obj 
 del ".\Source\Drv_ADC.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_BLE.asm " del ".\obj\Drv_BLE.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_BLE.c"
 							 
if exist "Drv_BLE.asm"  ( 
 copy "Drv_BLE.asm" obj
del "Drv_BLE.asm" 							 
) else ( 
copy ".\Source\Drv_BLE.asm" obj 
 del ".\Source\Drv_BLE.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_Buzzer.asm " del ".\obj\Drv_Buzzer.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_Buzzer.c"
 							 
if exist "Drv_Buzzer.asm"  ( 
 copy "Drv_Buzzer.asm" obj
del "Drv_Buzzer.asm" 							 
) else ( 
copy ".\Source\Drv_Buzzer.asm" obj 
 del ".\Source\Drv_Buzzer.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_CLK.asm " del ".\obj\Drv_CLK.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_CLK.c"
 							 
if exist "Drv_CLK.asm"  ( 
 copy "Drv_CLK.asm" obj
del "Drv_CLK.asm" 							 
) else ( 
copy ".\Source\Drv_CLK.asm" obj 
 del ".\Source\Drv_CLK.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_GPIO.asm " del ".\obj\Drv_GPIO.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_GPIO.c"
 							 
if exist "Drv_GPIO.asm"  ( 
 copy "Drv_GPIO.asm" obj
del "Drv_GPIO.asm" 							 
) else ( 
copy ".\Source\Drv_GPIO.asm" obj 
 del ".\Source\Drv_GPIO.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_IIC.asm " del ".\obj\Drv_IIC.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_IIC.c"
 							 
if exist "Drv_IIC.asm"  ( 
 copy "Drv_IIC.asm" obj
del "Drv_IIC.asm" 							 
) else ( 
copy ".\Source\Drv_IIC.asm" obj 
 del ".\Source\Drv_IIC.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LCD_4718.asm " del ".\obj\Drv_LCD_4718.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_LCD_4718.c"
 							 
if exist "Drv_LCD_4718.asm"  ( 
 copy "Drv_LCD_4718.asm" obj
del "Drv_LCD_4718.asm" 							 
) else ( 
copy ".\Source\Drv_LCD_4718.asm" obj 
 del ".\Source\Drv_LCD_4718.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LCD_4726.asm " del ".\obj\Drv_LCD_4726.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_LCD_4726.c"
 							 
if exist "Drv_LCD_4726.asm"  ( 
 copy "Drv_LCD_4726.asm" obj
del "Drv_LCD_4726.asm" 							 
) else ( 
copy ".\Source\Drv_LCD_4726.asm" obj 
 del ".\Source\Drv_LCD_4726.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LCD_4735.asm " del ".\obj\Drv_LCD_4735.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_LCD_4735.c"
 							 
if exist "Drv_LCD_4735.asm"  ( 
 copy "Drv_LCD_4735.asm" obj
del "Drv_LCD_4735.asm" 							 
) else ( 
copy ".\Source\Drv_LCD_4735.asm" obj 
 del ".\Source\Drv_LCD_4735.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LVD.asm " del ".\obj\Drv_LVD.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_LVD.c"
 							 
if exist "Drv_LVD.asm"  ( 
 copy "Drv_LVD.asm" obj
del "Drv_LVD.asm" 							 
) else ( 
copy ".\Source\Drv_LVD.asm" obj 
 del ".\Source\Drv_LVD.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_PWR.asm " del ".\obj\Drv_PWR.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_PWR.c"
 							 
if exist "Drv_PWR.asm"  ( 
 copy "Drv_PWR.asm" obj
del "Drv_PWR.asm" 							 
) else ( 
copy ".\Source\Drv_PWR.asm" obj 
 del ".\Source\Drv_PWR.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_Timer.asm " del ".\obj\Drv_Timer.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_Timer.c"
 							 
if exist "Drv_Timer.asm"  ( 
 copy "Drv_Timer.asm" obj
del "Drv_Timer.asm" 							 
) else ( 
copy ".\Source\Drv_Timer.asm" obj 
 del ".\Source\Drv_Timer.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_UART.asm " del ".\obj\Drv_UART.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_UART.c"
 							 
if exist "Drv_UART.asm"  ( 
 copy "Drv_UART.asm" obj
del "Drv_UART.asm" 							 
) else ( 
copy ".\Source\Drv_UART.asm" obj 
 del ".\Source\Drv_UART.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_WDT.asm " del ".\obj\Drv_WDT.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\Source\Drv_WDT.c"
 							 
if exist "Drv_WDT.asm"  ( 
 copy "Drv_WDT.asm" obj
del "Drv_WDT.asm" 							 
) else ( 
copy ".\Source\Drv_WDT.asm" obj 
 del ".\Source\Drv_WDT.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\ADC_56.asm " del ".\obj\ADC_56.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.c"
 							 
if exist "ADC_56.asm"  (
 copy "ADC_56.asm" obj 
 del "ADC_56.asm" 							
) else ( copy "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.asm" obj 
 del "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\ADC_56.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\GPIO.asm " del ".\obj\GPIO.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\GPIO.c"
 							 
if exist "GPIO.asm"  (
 copy "GPIO.asm" obj 
 del "GPIO.asm" 							
) else ( copy "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\GPIO.asm" obj 
 del "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\GPIO.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\TMR_56.asm " del ".\obj\TMR_56.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.c"
 							 
if exist "TMR_56.asm"  (
 copy "TMR_56.asm" obj 
 del "TMR_56.asm" 							
) else ( copy "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.asm" obj 
 del "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\TMR_56.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\UART_56.asm " del ".\obj\UART_56.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.c"
 							 
if exist "UART_56.asm"  (
 copy "UART_56.asm" obj 
 del "UART_56.asm" 							
) else ( copy "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.asm" obj 
 del "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P\UART_56.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Readme.asm " del ".\obj\Readme.asm" 
 sdcc   -I "D:\SOFTWARE\H08\H08 CIDE\DRIVER\HY17P" -Wp,-Wundef  -S -pHY17P56 ".\DOC\Readme.c"
 							 
if exist "Readme.asm"  ( 
 copy "Readme.asm" obj
del "Readme.asm" 							 
) else ( 
copy ".\DOC\Readme.asm" obj 
 del ".\DOC\Readme.asm" 
)

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_ADC.rel " del ".\obj\App_ADC.rel"
 sdashya -l -s -o -y ".\obj\App_ADC.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Backlight.rel " del ".\obj\App_Backlight.rel"
 sdashya -l -s -o -y ".\obj\App_Backlight.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_BLEmode.rel " del ".\obj\App_BLEmode.rel"
 sdashya -l -s -o -y ".\obj\App_BLEmode.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Buzzer.rel " del ".\obj\App_Buzzer.rel"
 sdashya -l -s -o -y ".\obj\App_Buzzer.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Init.rel " del ".\obj\App_Init.rel"
 sdashya -l -s -o -y ".\obj\App_Init.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Key.rel " del ".\obj\App_Key.rel"
 sdashya -l -s -o -y ".\obj\App_Key.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LCD_4718.rel " del ".\obj\App_LCD_4718.rel"
 sdashya -l -s -o -y ".\obj\App_LCD_4718.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LCD_4726.rel " del ".\obj\App_LCD_4726.rel"
 sdashya -l -s -o -y ".\obj\App_LCD_4726.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LCD_4735.rel " del ".\obj\App_LCD_4735.rel"
 sdashya -l -s -o -y ".\obj\App_LCD_4735.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_LVD.rel " del ".\obj\App_LVD.rel"
 sdashya -l -s -o -y ".\obj\App_LVD.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Main.rel " del ".\obj\App_Main.rel"
 sdashya -l -s -o -y ".\obj\App_Main.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\APP_Measure.rel " del ".\obj\APP_Measure.rel"
 sdashya -l -s -o -y ".\obj\APP_Measure.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Memory.rel " del ".\obj\App_Memory.rel"
 sdashya -l -s -o -y ".\obj\App_Memory.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Schedule.rel " del ".\obj\App_Schedule.rel"
 sdashya -l -s -o -y ".\obj\App_Schedule.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Sleep.rel " del ".\obj\App_Sleep.rel"
 sdashya -l -s -o -y ".\obj\App_Sleep.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\App_Str.rel " del ".\obj\App_Str.rel"
 sdashya -l -s -o -y ".\obj\App_Str.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_ADC.rel " del ".\obj\Drv_ADC.rel"
 sdashya -l -s -o -y ".\obj\Drv_ADC.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_BLE.rel " del ".\obj\Drv_BLE.rel"
 sdashya -l -s -o -y ".\obj\Drv_BLE.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_Buzzer.rel " del ".\obj\Drv_Buzzer.rel"
 sdashya -l -s -o -y ".\obj\Drv_Buzzer.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_CLK.rel " del ".\obj\Drv_CLK.rel"
 sdashya -l -s -o -y ".\obj\Drv_CLK.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_GPIO.rel " del ".\obj\Drv_GPIO.rel"
 sdashya -l -s -o -y ".\obj\Drv_GPIO.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_IIC.rel " del ".\obj\Drv_IIC.rel"
 sdashya -l -s -o -y ".\obj\Drv_IIC.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LCD_4718.rel " del ".\obj\Drv_LCD_4718.rel"
 sdashya -l -s -o -y ".\obj\Drv_LCD_4718.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LCD_4726.rel " del ".\obj\Drv_LCD_4726.rel"
 sdashya -l -s -o -y ".\obj\Drv_LCD_4726.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LCD_4735.rel " del ".\obj\Drv_LCD_4735.rel"
 sdashya -l -s -o -y ".\obj\Drv_LCD_4735.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_LVD.rel " del ".\obj\Drv_LVD.rel"
 sdashya -l -s -o -y ".\obj\Drv_LVD.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_PWR.rel " del ".\obj\Drv_PWR.rel"
 sdashya -l -s -o -y ".\obj\Drv_PWR.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_Timer.rel " del ".\obj\Drv_Timer.rel"
 sdashya -l -s -o -y ".\obj\Drv_Timer.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_UART.rel " del ".\obj\Drv_UART.rel"
 sdashya -l -s -o -y ".\obj\Drv_UART.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Drv_WDT.rel " del ".\obj\Drv_WDT.rel"
 sdashya -l -s -o -y ".\obj\Drv_WDT.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\ADC_56.rel " del ".\obj\ADC_56.rel"
 sdashya -l -s -o -y ".\obj\ADC_56.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\GPIO.rel " del ".\obj\GPIO.rel"
 sdashya -l -s -o -y ".\obj\GPIO.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\TMR_56.rel " del ".\obj\TMR_56.rel"
 sdashya -l -s -o -y ".\obj\TMR_56.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\UART_56.rel " del ".\obj\UART_56.rel"
 sdashya -l -s -o -y ".\obj\UART_56.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

if exist ".\obj\Readme.rel " del ".\obj\Readme.rel"
 sdashya -l -s -o -y ".\obj\Readme.asm"

if exist "D:\Work\MT\学习\97 项目\00 4718_测温范围工程变更\代码\00 MT47XX_P56_V1.2X_预测\Src\obj\error.txt" ( exit ) 

sdld -u -m -i -y -h08d -cm 9  ".\obj\HY17P56_MT.ihx"  ".\obj\App_ADC.rel" ".\obj\App_Backlight.rel" ".\obj\App_BLEmode.rel" ".\obj\App_Buzzer.rel" ".\obj\App_Init.rel" ".\obj\App_Key.rel" ".\obj\App_LCD_4718.rel" ".\obj\App_LCD_4726.rel" ".\obj\App_LCD_4735.rel" ".\obj\App_LVD.rel" ".\obj\App_Main.rel" ".\obj\APP_Measure.rel" ".\obj\App_Memory.rel" ".\obj\App_Schedule.rel" ".\obj\App_Sleep.rel" ".\obj\App_Str.rel" ".\obj\Drv_ADC.rel" ".\obj\Drv_BLE.rel" ".\obj\Drv_Buzzer.rel" ".\obj\Drv_CLK.rel" ".\obj\Drv_GPIO.rel" ".\obj\Drv_IIC.rel" ".\obj\Drv_LCD_4718.rel" ".\obj\Drv_LCD_4726.rel" ".\obj\Drv_LCD_4735.rel" ".\obj\Drv_LVD.rel" ".\obj\Drv_PWR.rel" ".\obj\Drv_Timer.rel" ".\obj\Drv_UART.rel" ".\obj\Drv_WDT.rel" ".\obj\ADC_56.rel" ".\obj\GPIO.rel" ".\obj\TMR_56.rel" ".\obj\UART_56.rel" ".\obj\Readme.rel"   -l HY17PSDCC.LIB -l lib/HY17P56ADCSetting.lib -l lib/HY17P56WR3_Delay.lib 

