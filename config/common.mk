# liquidsmooth
PRODUCT_BRAND ?= liquidsmooth
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

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

# Theme engine
include vendor/liquid/config/themes_common.mk

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/liquid/prebuilt/common/xbin/zipalign:system/xbin/zipalign

# Tether for all
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/liquid/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/liquid/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/liquid/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/liquid/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/liquid/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/liquid/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/liquid/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/liquid/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/liquid/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/liquid/prebuilt/common/etc/init.d/11battery:system/etc/init.d/11battery \
    vendor/liquid/prebuilt/common/etc/init.d/12touch:system/etc/init.d/12touch \
    vendor/liquid/prebuilt/common/etc/init.d/13minfree:system/etc/init.d/13minfree \
    vendor/liquid/prebuilt/common/etc/init.d/14gpurender:system/etc/init.d/14gpurender \
    vendor/liquid/prebuilt/common/etc/init.d/15sleepers:system/etc/init.d/15sleepers \
    vendor/liquid/prebuilt/common/etc/init.d/16journalism:system/etc/init.d/16journalism \
    vendor/liquid/prebuilt/common/etc/init.d/17sqlite3:system/etc/init.d/17sqlite3 \
    vendor/liquid/prebuilt/common/etc/init.d/18wifisleep:system/etc/init.d/18wifisleep \
    vendor/liquid/prebuilt/common/etc/init.d/19iostats:system/etc/init.d/19iostats \
    vendor/liquid/prebuilt/common/etc/init.d/20setrenice:system/etc/init.d/20setrenice \
    vendor/liquid/prebuilt/common/etc/init.d/21tweaks:system/etc/init.d/21tweaks \
    vendor/liquid/prebuilt/common/etc/init.d/24speedy_modified:system/etc/init.d/24speedy_modified \
    vendor/liquid/prebuilt/common/etc/init.d/25loopy_smoothness_tweak:system/etc/init.d/25loopy_smoothness_tweak \
    vendor/liquid/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/liquid/prebuilt/common/etc/helpers.sh:system/etc/helpers.sh \
    vendor/liquid/prebuilt/common/etc/init.d.cfg:system/etc/init.d.cfg \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# Core Apps
PRODUCT_PACKAGES += \
    audio_effects.conf \
    BluetoothExt \
    Calendar \
    CellBroadcastReceiver \
    LatinIME \
    libcyanogen-dsp \
    libemoji \
    LiveWallpapersPicker \
    LockClock \
    SoundRecorder \
    Torch

# Extras for Liquid
PRODUCT_PACKAGES += \
    Apollo \
    DashClock \
    DeskClock \
    DSPManager \
    KernelTweaker \
    LiquidFileManager \
    LiquidLauncher \
    LiquidPapers \
    LiquidStats \
    LiquidUpdater \
    LiquidWeather

# superuser
SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES += \
    su \
    Superuser

PRODUCT_COPY_FILES += \
    external/koush/Superuser/init.superuser.rc:root/init.superuser.rc

# Screen recorder
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

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

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/liquid/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/liquid/prebuilt/common/bin/50-liquid.sh:system/addon.d/50-liquid.sh \
    vendor/liquid/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# bin
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.liquid.rc:root/init.liquid.rc

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

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# version
RELEASE = false
LIQUID_VERSION_MAJOR = 3
LIQUID_VERSION_MINOR = 2

# release
ifeq ($(RELEASE),true)
    LIQUID_VERSION_STATE := OFFICIAL
    LIQUID_VERSION := LS-KK-v$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)
else
    LIQUID_VERSION_STATE := $(shell date +%Y-%m-%d)
    LIQUID_VERSION := LS-KK-v$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)
endif

# HFM Files
PRODUCT_COPY_FILES += \
	vendor/liquid/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
	vendor/liquid/prebuilt/etc/hosts.og:system/etc/hosts.og

PRODUCT_PROPERTY_OVERRIDES += \
    ro.liquid.version=$(LIQUID_VERSION)

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.romstats.url=http://www.drdevs.com/stats/liquid/ \
    ro.romstats.name=LiquidSmooth \
    ro.romstats.version=$(LIQUID_VERSION) \
    ro.romstats.askfirst=0 \
    ro.romstats.tframe=1
