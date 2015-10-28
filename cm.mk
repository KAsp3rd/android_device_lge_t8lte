# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := t8lte

# Inherit device configuration
$(call inherit-product, device/lge/t8lte/device_t8lte.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t8lte
PRODUCT_NAME := cm_t8lte
PRODUCT_BRAND := lge
PRODUCT_MODEL := t8lte
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t8lte BUILD_FINGERPRINT=lge/t8lte_tmo_us/t8lte:5.0.2/LRX22G/1511416257fb8:user/release-keys
