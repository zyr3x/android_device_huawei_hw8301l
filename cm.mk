## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hws8301l/device_hws8301l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hws8301l
PRODUCT_NAME := cm_hws8301l
PRODUCT_BRAND := huawei
PRODUCT_MODEL := MediaPad M1 8.0
PRODUCT_MANUFACTURER := HUAWEI

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0


