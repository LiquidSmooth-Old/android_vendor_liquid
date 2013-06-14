# audio
include frameworks/base/data/sounds/AllAudio.mk

# common
$(call inherit-product, vendor/liquid/config/common.mk)

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# packages
PRODUCT_PACKAGES += \
  Mms \
  Stk

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg
