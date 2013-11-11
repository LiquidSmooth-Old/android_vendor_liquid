# audio
include frameworks/base/data/sounds/AllAudio.mk

# common
$(call inherit-product, vendor/liquid/config/common.mk)

# locales
PRODUCT_LOCALES := en_US cs_CZ da_DK de_AT de_CH de_DE de_LI el_GR en_AU en_CA en_GB en_NZ en_SG eo_EU es_ES fr_CA fr_CH fr_BE fr_FR it_CH it_IT ja_JP ko_KR nb_NO nl_BE nl_NL pl_PL pt_PT ru_RU sv_SE tr_TR zh_CN zh_HK zh_TW am_ET hi_IN ug_CN et_EE ml_IN ku_IQ pa_IN

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

# media
ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_BOOTANIMATION := vendor/liquid/prebuilt/common/bootanimation/1280.zip:system/media/bootanimation.zip
endif
