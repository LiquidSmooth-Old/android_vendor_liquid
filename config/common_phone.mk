# audio
include frameworks/base/data/sounds/AllAudio.mk

# common
$(call inherit-product, vendor/liquid/config/common.mk)

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# media
ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_BOOTANIMATION := vendor/liquid/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/liquid/config/telephony.mk)
