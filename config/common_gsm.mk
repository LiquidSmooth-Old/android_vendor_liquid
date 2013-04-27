
# dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/all_dictionaries

# gps
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/gps.conf:system/etc/gps.conf

# spn
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# apns
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# locales
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN ug_CN
