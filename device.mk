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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8160
PRODUCT_DEVICE := u8160
PRODUCT_MODEL := Huawei U8160

PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Graphics 
PRODUCT_PACKAGES += \
    copybit.u8160 \
    gralloc.u8160

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.u8160 \
    audio.primary.u8160

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libopencorehw \
    libmm-omxcore \
    libOmxCore

# Other
PRODUCT_PACKAGES += \
    camera.u8160 \
    gps.u8160 \
    huawei_brcm_patchram_plus \
    lights.u8160 \
    U8160Parts

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold and USB
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8160/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/init.rc:root/init.rc \
    device/huawei/u8160/prebuilt/init.u8160.rc:root/init.u8160.rc \
    device/huawei/u8160/prebuilt/init.u8160.usb.rc:root/init.u8160.usb.rc \
    device/huawei/u8160/prebuilt/ueventd.u8160.rc:root/ueventd.u8160.rc

# Alberto96 Apps
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/app/Calculator.apk:system/app/Calculator.apk \
    device/huawei/u8160/prebuilt/app/TotalCommander.apk:system/app/TotalCommander.apk \
    device/huawei/u8160/prebuilt/app/QuickPic.apk:system/app/QuickPic.apk \
    device/huawei/u8160/prebuilt/app/FMRadio.apk:system/app/FMRadio.apk \
    device/huawei/u8160/prebuilt/app/Browser.apk:system/app/Browser.apk \
    device/huawei/u8160/prebuilt/app/GooUpdater.apk:system/app/GooUpdater.apk \
    device/huawei/u8160/prebuilt/app/Camcorder.apk:system/app/Camcorder.apk \
    device/huawei/u8160/prebuilt/lib/libandroid-illusion.so:system/lib/libandroid-illusion.so \
    device/huawei/u8160/prebuilt/lib/libmiker_fm.so:system/lib/libmiker_fm.so \
    device/huawei/u8160/prebuilt/lib/libqpic106.so:system/lib/libqpic106.so \
    device/huawei/u8160/prebuilt/lib/libtcmadmin.so:system/lib/libtcmadmin.so \
    device/huawei/u8160/prebuilt/lib/libtcnative.so:system/lib/libtcnative.so \
    device/huawei/u8160/prebuilt/lib/libtcunrar.so:system/lib/libtcunrar.so

# Alberto96 Kernel
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/u8160/prebuilt/lib/modules/joydev.ko:system/lib/modules/joydev.ko \
    device/huawei/u8160/prebuilt/lib/modules/zram.ko:system/lib/modules/zram.ko \
    device/huawei/u8160/prebuilt/lib/modules/ehci-hcd.ko:system/lib/modules/ehci-hcd.ko


# Tethering
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/bin/huawei_tether:system/bin/huawei_tether

# U8160Parts
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/init.u8160.parts.rc:root/init.u8160.parts.rc \
    device/huawei/u8160/prebuilt/bin/handle_u8160parts:system/bin/handle_u8160parts

# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8160/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8160/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf

# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/huawei/u8160/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8160/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/melfas-touchscreen.kl \
    device/huawei/u8160/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8160/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Huawei hardware setup
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/init.d/02setuphuawei:system/etc/init.d/02setuphuawei

