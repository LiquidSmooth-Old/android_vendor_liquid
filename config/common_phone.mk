# Inherit common stuff
$(call inherit-product, vendor/slim/config/common.mk)
$(call inherit-product, vendor/slim/config/common_apn.mk)

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
