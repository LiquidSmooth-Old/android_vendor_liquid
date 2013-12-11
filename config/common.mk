# liquidsmooth
SUPERUSER_EMBEDDED := true
PRODUCT_BRAND ?= liquidsmooth
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false

# properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    persist.sys.root_access=3

# ROM Statistics and ROM Identification
PRODUCT_PROPERTY_OVERRIDES += \
    ro.romstats.url=http://www.drdevs.com/stats/liquid/ \
    ro.romstats.name=LiquidSmooth \
    ro.romstats.version=$(LIQUID_VERSION) \
    ro.romstats.askfirst=0 \
    ro.romstats.tframe=1

# others
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    Launcher3 \
    libcyanogen-dsp \
    audio_effects.conf \
    PerformanceControl \
    SoundRecorder \
    libemoji

# packages
PRODUCT_PACKAGES += \
    Basic \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    NoiseField \
    PhaseBeam \
    PhotoTable \
    Torch

# prebuilts
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    LiquidPapers \
    LockClock

# superuser
PRODUCT_PACKAGES += \
    Superuser \
    su

# telephony
PRODUCT_PACKAGES += \
    CellBroadcastReceiver

# themes
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes

# system
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g \
    sqlite3

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/dictionaries

# bin
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.liquid.rc:root/init.liquid.rc

# filesystem
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# media
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_BOOTANIMATION := vendor/liquid/prebuilt/common/bootanimation/$(TARGET_SCREEN_WIDTH).zip:system/media/bootanimation.zip
endif

# nfc
PRODUCT_COPY_FILES += \
    vendor/liquid/config/permissions/com.liquidsmooth.android.xml:system/etc/permissions/com.liquidsmooth.android.xml \
    vendor/liquid/config/permissions/com.liquidsmooth.nfc.enhanced.xml:system/etc/permissions/com.liquidsmooth.nfc.enhanced.xml

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
	
# prebuilt apk
PRODUCT_COPY_FILES += \
vendor/liquid/prebuilt/Liquid_Stats.apk:system/app/Liquid_Stats.apk \

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# themes
PRODUCT_COPY_FILES += \
    vendor/liquid/config/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# version
RELEASE = false
LIQUID_VERSION_MAJOR = 3
LIQUID_VERSION_MINOR = 0

# release
ifeq ($(RELEASE),true)
    LIQUID_VERSION_STATE := OFFICIAL
    LIQUID_VERSION := Liquid-Kitkat-v$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)
else
    LIQUID_VERSION_STATE := NIGHTLY
    LIQUID_VERSION := Liquid-Kitkat-v$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.liquid.version=$(LIQUID_VERSION)
