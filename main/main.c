#include "Display_SPD2010.h"
#include "PCF85063.h"
#include "QMI8658.h"
#include "SD_MMC.h"
#include "Wireless.h"
#include "TCA9554PWR.h"
#include "lvgl.h"
#include "BAT_Driver.h"
#include "PWR_Key.h"
#include "PCM5101.h"
#include "MIC_Speech.h"

#define MAX_FILES 20
char fileList[MAX_FILES][100]; // Array to store file names, each up to 100 characters

void Driver_Loop(void *parameter)
{
    Wireless_Init();
    while (1)
    {
        QMI8658_Loop();
        PCF85063_Loop();
        BAT_Get_Volts();
        PWR_Loop();
        vTaskDelay(pdMS_TO_TICKS(100));
    }
    vTaskDelete(NULL);
}
void Driver_Init(void)
{
    PWR_Init();
    BAT_Init();
    I2C_Init();
    EXIO_Init(); // Example Initialize EXIO
    Flash_Searching();
    PCF85063_Init();
    QMI8658_Init();
    xTaskCreatePinnedToCore(
        Driver_Loop,
        "Other Driver task",
        4096,
        NULL,
        3,
        NULL,
        0);
}
void app_main(void)
{

#ifdef LV_CONF_INCLUDE_SIMPLE
#warning "✅ LV_CONF_INCLUDE_SIMPLE is defined"
#else
#warning "❌ LV_CONF_INCLUDE_SIMPLE is NOT defined"
#endif

#ifdef LV_USE_FS_POSIX
#if LV_USE_FS_POSIX
#warning "✅ LV_USE_FS_POSIX is enabled!"
#else
#warning "❌ LV_USE_FS_POSIX is DISABLED"
#endif
#else
#warning "❌ LV_USE_FS_POSIX is NOT defined"
#endif

#ifdef LV_USE_FS_POSIX
    printf("LV_USE_FS_POSIX is defined = %d\n", LV_USE_FS_POSIX);
#else
    printf("LV_USE_FS_POSIX is NOT defined!\n");
#endif

    Driver_Init();

    SD_Init();
    LCD_Init();
    Audio_Init();
    MIC_Speech_init();
    // Play_Music("/sdcard","AAA.mp3");
    LVGL_Init(); // returns the screen object

    // lv_fs_fatfs_init();
    // lv_fs_drv_init(); // Initialize the file system driver for SD card

    // /********************* Demo *********************/
    // Lvgl_Example1();
    // lv_demo_widgets();
    // lv_demo_keypad_encoder();
    // lv_demo_benchmark();
    // lv_demo_stress();
    // lv_demo_music();

    uint16_t count = Folder_retrieval("/sdcard/images", ".jpg", fileList, 20);

    printf("共找到 %d 张 png 图片：\n", count);
    for (int i = 0; i < count; ++i)
    {
        printf("[%d] %s\n", i, fileList[i]);

        // 拼出完整路径（用于打开）
        char full_path[256];
        snprintf(full_path, sizeof(full_path), "/sdcard/images/%s", fileList[i]);

        // 示例：打开文件
        FILE *f = fopen(full_path, "rb");
        if (f)
        {
            fseek(f, 0, SEEK_END);
            long size = ftell(f);
            fclose(f);
            printf("文件可访问: %s，大小 %ld 字节\n", full_path, size);
        }
    }

    const char *lv_path = "S:/images/B.jpg";
    const char *real_path = "/sdcard/images/B.jpg";

    // 原生 fopen 测试
    FILE *f_native = fopen(real_path, "rb");
    if (f_native)
    {
        printf("[fopen] 成功打开 %s\n", real_path);
        fclose(f_native);
    }
    else
    {
        printf("[fopen] 无法打开 %s\n", real_path);
    }

    // LVGL 测试
    lv_fs_file_t f_lvgl;
    lv_fs_res_t res = lv_fs_open(&f_lvgl, lv_path, LV_FS_MODE_RD);
    if (res == LV_FS_RES_OK)
    {
        printf("[lv_fs] 成功打开 %s ✅\n", lv_path);
        lv_fs_close(&f_lvgl);
    }
    else
    {
        printf("[lv_fs] 打开失败 ❌，错误码: %d\n", res);
    }

    lv_obj_t *img = lv_img_create(lv_scr_act()); // 创建图片控件
    printf("准备加载图片\n");
    // printf(lv_img_decoder_get_info("A:/images/B.png", NULL)); // 获取图片信息（可选）
    lv_img_set_src(img, "A:/images/B.png"); // 设置 SD 卡图片路径
    printf("图片加载调用完成\n");

    lv_obj_align(img, LV_ALIGN_CENTER, 0, 0); // 居中显示
    // lv_obj_set_size(img, LV_HOR_RES, LV_VER_RES); // 拉伸图片填满屏幕（可选）

    // 去掉默认边框和背景
    // lv_obj_clear_flag(img, LV_OBJ_FLAG_SCROLLABLE);
    // lv_obj_set_style_bg_opa(img, LV_OPA_TRANSP, 0);

    while (1)
    {
        // raise the task priority of LVGL and/or reduce the handler period can improve the performance
        vTaskDelay(pdMS_TO_TICKS(10));
        // The task running lv_timer_handler should have lower priority than that running `lv_tick_inc`
        lv_timer_handler();
    }
}
