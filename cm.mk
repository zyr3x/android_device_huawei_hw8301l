# bootanimation target
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := P7-L10

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hws8301l/device_hws8301l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hws8301l
PRODUCT_NAME := cm_hws8301l
PRODUCT_BRAND := huawei
PRODUCT_MODEL := MEDIAPAD M1 8.0
PRODUCT_MANUFACTURER := HUAWEI

№PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=P7-L10 BUILD_FINGERPRINT="Huawei/P7-L10/hws8301l:4.4.2/HuaweiP7-L10/C00B138SP01:user/ota-rel-keys,release-keys" PRIVATE_BUILD_DESC="P7-L10-user 4.4.2 HuaweiP7-L10 C00B138SP01 ota-rel-keys,release-keys"
