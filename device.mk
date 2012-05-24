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

PRODUCT_AAPT_CONFIG := mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.u8160 \
    copybit.u8160

# Audio
PRODUCT_PACKAGES += \
    audio_policy.u8160 \
    audio.primary.u8160 \
    audio.a2dp.default

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
    lights.u8160 \
    gps.u8160 \
    camera.u8160 \
    FileManager \
    Apollo

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
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold and USB
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8160/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh \
    device/huawei/u8160/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/init.u8160.rc:root/init.u8160.rc \
    device/huawei/u8160/prebuilt/init.u8160.usb.rc:root/init.u8160.usb.rc \
    device/huawei/u8160/prebuilt/ueventd.u8160.rc:root/ueventd.u8160.rc

# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    device/huawei/u8160/prebuilt/wifi/firmware.bin:system/wifi/firmware.bin \
    device/huawei/u8160/prebuilt/wifi/nvram.txt:system/wifi/nvram.txt \
    device/huawei/u8160/prebuilt/wifi/dhd.ko:root/wifi/dhd.ko \
    device/huawei/u8160/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8160/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8160/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf

# Touchscreen & keys
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8160/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8160/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl

# USB autorun.iso for cdrom emulation in kernel driver
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8160/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8160/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# MADTEAM & ICS HACKS
PRODUCT_COPY_FILES += \
    device/huawei/u8160/prebuilt/bin/madconfig:system/bin/madconfig \
    device/huawei/u8160/prebuilt/etc/init.d/02getmacaddrs:system/etc/init.d/02getmacaddrs \
    device/huawei/u8160/prebuilt/etc/init.d/02madteam:system/etc/init.d/02madteam


# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# RIL properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/smd0 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false

# Networking properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

# Performance & graphics properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=24m \
    persist.sys.purgeable_assets=1 \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.opengles.version=65537 \
    ro.sf.lcd_density=120 \
    ro.vold.umsdirtyratio=20

# Touchscreen properties
PRODUCT_PROPERTY_OVERRIDES += \
    view.fading_edge_length=8 \
    view.minimum_fling_velocity=25 \
    view.scroll_friction=0.008 \
    view.touch_slop=15

# Compcache properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18

# Audio properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.speaker-attn=6

# NEW ICS properties (may need verification/testing)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config_datause_iface=rmnet0 \
    ro.secure=0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril.v3=icccardstatus,datacall,signalstrength,facilitylock \
    mobiledata.interfaces=rmnet0,rmnet1,rmnet2 \
    net.qtaguid_enabled=0 \
    debug.gr.swapinterval=0 \
    persist.sys.usb.config=mass_storage,adb \
    sys.usb.config=mass_storage,adb \
    persist.service.adb.enable=1

