TARGET_SPECIFIC_HEADER_PATH := device/samsung/montblanc-common/include

# Kernel
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := mobtblanc
BOARD_USES_STE_HARDWARE := true
TARGET_BOOTLOADER_BOARD_NAME := mobtblanc
TARGET_BOARD_PLATFORM := ux500

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel Info
#TARGET_KERNEL_SOURCE := kernel/samsung/janice   {commented as we don't have cm source yet}
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40000000

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DSTE_AUDIO

# Connectivity - Wi-Fi   (janice uses bcm4330)
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_MODULE_PATH := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/vendor/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/vendor/firmware/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/vendor/firmware/bcm4330_sta.bin nvram_path=/system/etc/nvram_net.txt"

# Graphics
USE_OPENGL_RENDERER := true
#BOARD_EGL_CFG := device/samsung/mobtblanc-common/config/egl.cfg
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE -DSTE_HDMI

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Custom boot
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_RC := true
TARGET_RECOVERY_INITRC := device/samsung/mobtblanc-common/rootdir/recovery.rc
#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/mobtblanc-common/shbootimg.mk
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/mobtblanc-common-common/releasetools/u8500_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/mobtblanc-common-common/releasetools/u8500_img_from_target_files

# LUN
BOARD_UMS_LUNFILE := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"
