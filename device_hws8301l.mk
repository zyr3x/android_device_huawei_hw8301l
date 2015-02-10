PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS += device/huawei/hws8301l/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/hws8301l/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
   device/huawei/hws8301l/recovery/ueventd.hi6620oem.rc:recovery/root/ueventd.hi6620oem.rc \
   device/huawei/hws8301l/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES += \
   device/huawei/hws8301l/recovery/system/bin/linker:recovery/root/system/bin/linker \
   device/huawei/hws8301l/recovery/system/lib/libc.so:recovery/root/system/lib/libc.so \
   device/huawei/hws8301l/recovery/system/lib/libdl.so:recovery/root/system/lib/libdl.so \
   device/huawei/hws8301l/recovery/system/lib/liblog.so:recovery/root/system/lib/liblog.so \
   device/huawei/hws8301l/recovery/system/lib/libm.so:recovery/root/system/lib/libm.so \
   device/huawei/hws8301l/recovery/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
   device/huawei/hws8301l/recovery/system/lib/libz.so:recovery/root/system/lib/libz.so

PRODUCT_COPY_FILES += \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_01.png:recovery/root/res/images/800x1280/battery_01.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_02.png:recovery/root/res/images/800x1280/battery_02.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_03.png:recovery/root/res/images/800x1280/battery_03.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_04.png:recovery/root/res/images/800x1280/battery_04.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_05.png:recovery/root/res/images/800x1280/battery_05.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_06.png:recovery/root/res/images/800x1280/battery_06.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_07.png:recovery/root/res/images/800x1280/battery_07.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_08.png:recovery/root/res/images/800x1280/battery_08.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_09.png:recovery/root/res/images/800x1280/battery_09.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_10.png:recovery/root/res/images/800x1280/battery_10.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/battery_11.png:recovery/root/res/images/800x1280/battery_11.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/bg_land.png:recovery/root/res/images/800x1280/bg_land.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/bg_port.png:recovery/root/res/images/800x1280/bg_port.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/empty_charge.png:recovery/root/res/images/800x1280/empty_charge.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_0.png:recovery/root/res/images/800x1280/number_0.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_1.png:recovery/root/res/images/800x1280/number_1.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_2.png:recovery/root/res/images/800x1280/number_2.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_3.png:recovery/root/res/images/800x1280/number_3.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_4.png:recovery/root/res/images/800x1280/number_4.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_5.png:recovery/root/res/images/800x1280/number_5.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_6.png:recovery/root/res/images/800x1280/number_6.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_7.png:recovery/root/res/images/800x1280/number_7.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_8.png:recovery/root/res/images/800x1280/number_8.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_9.png:recovery/root/res/images/800x1280/number_9.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/number_10.png:recovery/root/res/images/800x1280/number_9.png \
   device/huawei/hws8301l/recovery/res/images/800x1280/percent_sign.png:recovery/root/res/images/800x1280/percent_sign.png

# This device have enough room for precise davick
PRODUCT_TAGS += dalvik.gc.type-precise

# Prime spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.manufacturer=HUAWEI \
    ro.product.model=MediaPad M1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_hws8301l
PRODUCT_DEVICE := hws8301l
