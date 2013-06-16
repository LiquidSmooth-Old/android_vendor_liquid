# audio
include frameworks/base/data/sounds/AllAudio.mk

# common
$(call inherit-product, vendor/liquid/config/common.mk)

# gps
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/gps.conf:system/etc/gps.conf

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# locales
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN ug_CN

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

# media
ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bootanimation/1280.zip:system/media/bootanimation.zip
endif
