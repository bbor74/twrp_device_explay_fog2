
# All languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/explay/fog2

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/disp.ko:root/disp.ko \
    $(LOCAL_PATH)/rootdir/fstab.sun8i:root/fstab.sun8i \
    $(LOCAL_PATH)/rootdir/gslX680.ko:root/gslX680.ko \
    $(LOCAL_PATH)/rootdir/gslX680new.ko:root/gslX680new.ko \
    $(LOCAL_PATH)/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    $(LOCAL_PATH)/rootdir/lcd.ko:root/lcd.ko \
    $(LOCAL_PATH)/rootdir/sunxi-keyboard.ko:root/sunxi-keyboard.ko \
    $(LOCAL_PATH)/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc


# System Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \
	persist.sys.timezone=Europe/Moscow \
	persist.sys.language=ru \
	persist.sys.country=RU

# APP CONFIGS
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := ldpi mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

