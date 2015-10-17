# Release name
PRODUCT_RELEASE_NAME := t8lte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/t8lte/device_t8lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t8lte
PRODUCT_NAME := cm_t8lte
PRODUCT_BRAND := lge
PRODUCT_MODEL := t8lte
PRODUCT_MANUFACTURER := lge
