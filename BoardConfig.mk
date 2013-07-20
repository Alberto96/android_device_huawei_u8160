# Copyright (C) 2011 The Android Open Source Project
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
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8160/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8160/include

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := u8160
TARGET_OTA_ASSERT_DEVICE := u8160,hwu8160
TARGET_PROVIDES_INIT_RC := true

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_HUAWEI_BLUETOOTH := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8160

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

# USB mass storage
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
#BOARD_VENDOR_USE_AKMD := akm8973

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true

# RIL
BOARD_PROVIDES_LIBRIL := true

## MSM7225 graphics
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888 -DQCOM_ICS_COMPAT -DUNABLE_TO_DEQUEUE -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DFORCE_CPU_UPLOAD -DMISSING_GRALLOC_BUFFERS -DUNABLE_TO_DEQUEUE -DBINDER_COMPAT -DTARGET_MSM7x27 -DQCOM_NO_SECURE_PLAYBACK
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_NO_INITLOGO := true

USE_OPENGL_RENDERER := false
BOARD_EGL_CFG := device/huawei/u8160/egl.cfg
BOARD_HAS_LIMITED_EGL:=true

# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_USES_GENLOCK := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_HAVE_BYPASS := true

## Qualcomm
#Omx Codec
USES_NAM := true
ifdef USES_NAM
    COMMON_GLOBAL_CFLAGS += -DUSES_NAM
endif

# camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888 -DBINDER_COMPAT

# WiFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_BAND  := 802_11_ABG
BOARD_WLAN_DEVICE := bcm4329
BOARD_WLAN_DEVICE_REV := bcm4329

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP      := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_FW_PATH_STA     := "/system/wifi/firmware.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/wifi/firmware.bin nvram_path=/data/misc/wifi/nvram.txt iface_name=wlan"

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8160/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"

# Kernel
#TARGET_KERNEL_SOURCE := kernel/huawei/msm7x25-common
#TARGET_KERNEL_CONFIG := hw_msm7x25_cm9_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/u8160/prebuilt/kernel
BOARD_KERNEL_BASE := 0x00208000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8160
BOARD_KERNEL_PAGESIZE := 4096
# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 04900000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "userdata2"
# mtd8: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
