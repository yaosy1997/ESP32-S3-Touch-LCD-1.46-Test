idf_component_register(
                         SRCS 
                              "./main.c" 
                              "./EXIO/TCA9554PWR.c"
                              "./Audio_Driver/PCM5101.c" 
                              "./MIC_Driver/MIC_Speech.c" 
                              "./LCD_Driver/esp_lcd_spd2010/esp_lcd_spd2010.c" 
                              "./LCD_Driver/Display_SPD2010.c"     
                              "./Touch_Driver/Touch_SPD2010.c"  
                              "./LVGL_Driver/LVGL_Driver.c"
                              "./LVGL_UI/LVGL_Example.c"
                              "./LVGL_UI/LVGL_Music.c"
                              "./SD_Card/SD_MMC.c" 
                              "./I2C_Driver/I2C_Driver.c"
                              "./PCF85063/PCF85063.c"
                              "./QMI8658/QMI8658.c"
                              "./BAT_Driver/BAT_Driver.c"
                              "./PWR_Key/PWR_Key.c"
                              "./Wireless/Wireless.c"

                         INCLUDE_DIRS 
                              "./Audio_Driver" 
                              "./MIC_Driver" 
                              "./LCD_Driver/esp_lcd_spd2010" 
                              "./LCD_Driver"    
                              "./Touch_Driver"
                              "./LVGL_Driver" 
                              "./LVGL_UI" 
                              "./EXIO"
                              "./SD_Card" 
                              "./I2C_Driver"
                              "./PCF85063"
                              "./QMI8658"
                              "./BAT_Driver"
                              "./PWR_Key"
                              "./Wireless"
                              "."
                              "include"
                       )