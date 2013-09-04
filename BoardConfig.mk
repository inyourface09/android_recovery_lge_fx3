USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/fx3/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := fx3

BOARD_KERNEL_CMDLINE := androidboot.hardware=fx3s user_debug=31 vmalloc=308M
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/fx3/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#BOARD_CUSTOM_RECOVERY_UI := ../../device/lge/fx3/recovery/default_recovery_ui.c
BOARD_CUSTOM_RECOVERY_POWER_PROFILE := ../../device/lge/fx3/recovery/custom_power.c

DEVICE_RESOLUTION := 480x800
BOARD_RECOVERY_RELEASE_TYPE := Alpha 1
