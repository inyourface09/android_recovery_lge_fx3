# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.  Similarly,
# we set USE_PROPRIETARY_AUDIO_EXTENSIONS to true in the proprietary variant as
# well.


#-include vendor/asus/grouper/BoardConfigVendor.mk

# inherit from the proprietary version
# needed for BP-flashing updater extensions

TARGET_USERIMAGES_USE_EXT4 := true

#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 6567231488
#BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_BOOTLOADER_BOARD_NAME := fx3
#TARGET_BOARD_INFO_FILE := device/asus/grouper/board-info.txt

TARGET_NO_BOOTLOADER := true

# Avoid the generation of ldrcc instructions
#NEED_WORKAROUND_CORTEX_A9_745320 := true

#BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_UI_LIB := librecovery_ui_grouper

#TARGET_RELEASETOOLS_EXTENSIONS := device/asus/grouper

TARGET_PREBUILT_KERNEL := device/lge/fx3/kernel

BOARD_USE_CUSTOM_RECOVERY_FONT := true

## COT ##
BOARD_CUSTOM_RECOVERY_UI := ../../device/asus/grouper/recovery/default_recovery_ui.c
BOARD_CUSTOM_RECOVERY_POWER_PROFILE := ../../device/asus/grouper/recovery/custom_power.c
# BOARD_TS_MAX_ROWS sets the MAX_ROWS amount.
# Use this to limit the height of the scrolling text
BOARD_TS_MAX_ROWS := 20
DEVICE_RESOLUTION := 480x800
BOARD_RECOVERY_RELEASE_TYPE := Alpha 1
