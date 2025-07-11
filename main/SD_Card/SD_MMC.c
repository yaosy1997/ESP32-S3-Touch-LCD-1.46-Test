#include "SD_MMC.h"

#define EXAMPLE_MAX_CHAR_SIZE    64
#define MOUNT_POINT "/sdcard"

static const char *SD_TAG = "SD";

uint32_t Flash_Size = 0;
uint32_t SDCard_Size = 0;


esp_err_t s_example_write_file(const char *path, char *data)
{
    ESP_LOGI(SD_TAG, "Opening file %s", path);
    FILE *f = fopen(path, "w");
    if (f == NULL) {
        ESP_LOGE(SD_TAG, "Failed to open file for writing");
        return ESP_FAIL;
    }
    fprintf(f, data);
    fclose(f);
    ESP_LOGI(SD_TAG, "File written");

    return ESP_OK;
}

esp_err_t s_example_read_file(const char *path)
{
    ESP_LOGI(SD_TAG, "Reading file %s", path);
    FILE *f = fopen(path, "r");
    if (f == NULL) {
        ESP_LOGE(SD_TAG, "Failed to open file for reading");
        return ESP_FAIL;
    }
    char line[EXAMPLE_MAX_CHAR_SIZE];
    fgets(line, sizeof(line), f);
    fclose(f);

    // strip newline
    char *pos = strchr(line, '\n');
    if (pos) {
        *pos = '\0';
    }
    ESP_LOGI(SD_TAG, "Read from file: '%s'", line);

    return ESP_OK;
}


void SD_Init(void)
{
    esp_err_t ret;

    // Options for mounting the filesystem.
    // If format_if_mount_failed is set to true, SD card will be partitioned and formatted in case when mounting fails.  false true
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = true,           
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };
    sdmmc_card_t *card;
    const char mount_point[] = MOUNT_POINT;
    ESP_LOGI(SD_TAG, "Initializing SD card");
    
    // Use settings defined above to initialize SD card and mount FAT filesystem.
    // Note: esp_vfs_fat_sdmmc/sdspi_mount is all-in-one convenience functions.
    // Please check its source code and implement error recovery when developing production applications.
    ESP_LOGI(SD_TAG, "Using SPI peripheral");

    // By default, SD card frequency is initialized to SDMMC_FREQ_DEFAULT (20MHz)
    // For setting a specific frequency, use host.max_freq_khz (range 400kHz - 20MHz for SDSPI)
    // Example: for fixed frequency of 10MHz, use host.max_freq_khz = 10000;
    sdmmc_host_t host = SDMMC_HOST_DEFAULT();


    // This initializes the slot without card detect (CD) and write protect (WP) signals.
    // Modify slot_config.gpio_cd and slot_config.gpio_wp if your board has these signals.
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();
    slot_config.width = 1;          // 1-wire  / 4-wire   slot_config.width = 4;

    slot_config.clk = CONFIG_EXAMPLE_PIN_CLK;
    slot_config.cmd = CONFIG_EXAMPLE_PIN_CMD;
    slot_config.d0 = CONFIG_EXAMPLE_PIN_D0;
    slot_config.d1 = CONFIG_EXAMPLE_PIN_D1;
    slot_config.d2 = CONFIG_EXAMPLE_PIN_D2;
    slot_config.d3 = CONFIG_EXAMPLE_PIN_D3;
    
    // Enable internal pullups on enabled pins. The internal pullups are insufficient however, please make sure 10k external pullups are connected on the bus. This is for debug / example purpose only.
    slot_config.flags |= SDMMC_SLOT_FLAG_INTERNAL_PULLUP;



    ESP_LOGI(SD_TAG, "Mounting filesystem");
    ret = esp_vfs_fat_sdmmc_mount(mount_point, &host, &slot_config, &mount_config, &card);

    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(SD_TAG, "Failed to mount filesystem. "
                     "If you want the card to be formatted, set the CONFIG_EXAMPLE_FORMAT_IF_MOUNT_FAILED menuconfig option.");
        } else {
            ESP_LOGE(SD_TAG, "Failed to initialize the card (%s). "
                     "Make sure SD card lines have pull-up resistors in place.", esp_err_to_name(ret));
        }
        return;
    }
    ESP_LOGI(SD_TAG, "Filesystem mounted");

    // Card has been initialized, print its properties
    sdmmc_card_print_info(stdout, card);
    SDCard_Size = ((uint64_t) card->csd.capacity) * card->csd.sector_size / (1024 * 1024);
}
void Flash_Searching(void)
{
    if(esp_flash_get_physical_size(NULL, &Flash_Size) == ESP_OK)
    {
        Flash_Size = Flash_Size / (uint32_t)(1024 * 1024);
        printf("Flash size: %ld MB\n", Flash_Size);
    }
    else{
        printf("Get flash size failed\n");
    }
}


FILE* Open_File(const char *file_path) {
    ESP_LOGI(SD_TAG, "Attempting to open file: %s", file_path);
    FILE *fp = fopen(file_path, "rb"); // Open the MP3 file in binary mode
    if (fp == NULL) {
        ESP_LOGE(SD_TAG, "Failed to open file %s. Error: %s", file_path, strerror(errno));
    }
    else
        printf("File %s was successfully opened. \r\n", file_path);
    return fp; 
}

#define MAX_FILE_NAME_SIZE 100  // Define maximum file name size
#define MAX_PATH_SIZE 512      // Define a larger size for the full path
uint16_t Folder_retrieval(const char* directory, const char* fileExtension, char File_Name[][MAX_FILE_NAME_SIZE], uint16_t maxFiles)    
{
    DIR *dir = opendir(directory);  
    if (dir == NULL) {
        ESP_LOGE(SD_TAG, "Path: <%s> does not exist", directory); 
        return 0;  
    }

    uint16_t fileCount = 0;  
    struct dirent *entry;   

    while ((entry = readdir(dir)) != NULL && fileCount < maxFiles) {

        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) {
            continue;
        }

        const char *dot = strrchr(entry->d_name, '.');  
        if (dot != NULL && dot != entry->d_name) { 

            if (strcasecmp(dot, fileExtension) == 0) {  
                strncpy(File_Name[fileCount], entry->d_name, MAX_FILE_NAME_SIZE - 1);
                File_Name[fileCount][MAX_FILE_NAME_SIZE - 1] = '\0';  

                char filePath[MAX_PATH_SIZE];
                snprintf(filePath, MAX_PATH_SIZE, "%s/%s", directory, entry->d_name);

                printf("File found: %s\r\n", filePath); 
                fileCount++;  
            }
        }
        else{
           
            // printf("No extension found for file: %s\r\n", entry->d_name);
        }
    }

    closedir(dir);  

    if (fileCount > 0) {
        ESP_LOGI(SD_TAG, "Retrieved %d files with extension '%s'", fileCount, fileExtension);  
    } else {
        ESP_LOGW(SD_TAG, "No files with extension '%s' found in directory: %s", fileExtension, directory); 
    }

    return fileCount; 
}



