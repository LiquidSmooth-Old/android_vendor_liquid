# Inherit common stuff
$(call inherit-product, vendor/liquid/config/common.mk)
$(call inherit-product, vendor/liquid/config/common_apn.mk)

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
