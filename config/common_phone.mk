# Inherit common stuff
$(call inherit-product, vendor/liquid/config/common.mk)
$(call inherit-product, vendor/liquid/config/common_apn.mk)

# Ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Callisto.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=Helium.ogg

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
