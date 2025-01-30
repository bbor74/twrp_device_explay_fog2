## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Polaris

# Inherit device configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, device/explay/fog2/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fog2
PRODUCT_NAME := omni_fog2
PRODUCT_BRAND := Explay
PRODUCT_MODEL := Favorite
PRODUCT_MANUFACTURER := Explay
