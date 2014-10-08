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

ifeq ($(RELEASE),true)
# Disable multithreaded dexopt by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dalvik.multithread=false
endif

# Theme engine
include vendor/liquid/config/themes_common.mk

# Tether for all
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# Core Apps
PRODUCT_PACKAGES += \
    audio_effects.conf \
    BluetoothExt \
    Calendar \
    CellBroadcastReceiver \
    LatinIME \
    libemoji \
    LiveWallpapersPicker \
    LockClock \
    SoundRecorder

# Extras for Liquid
PRODUCT_PACKAGES += \
    Apollo \
    DashClock \
    DeskClock \
    KernelTweaker \
    LiquidFileManager \
    LiquidLauncher \
    LiquidPapers \
    LiquidStats \
    LiquidUpdater

# superuser
SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES += \
    su \
    Superuser

# Viper4Android
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/viper/ViPER4Android.apk:system/app/ViPER4Android.apk

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
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
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
    vendor/liquid/prebuilt/common/bin/90-xposed.sh:system/addon.d/90-xposed.sh \
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
RELEASE = true
LIQUID_VERSION_MAJOR = 3
LIQUID_VERSION_MINOR = 2

# release
ifeq ($(RELEASE),true)
    LIQUID_VERSION := LS-KK-MileStone-$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)
else
    LIQUID_VERSION_STATE := $(shell date +%Y-%m-%d)
    LIQUID_VERSION := LS-KK-v$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)
endif

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

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

ifeq ($(USE_PREBUILT_CHROMIUM),1)
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)

$(call inherit-product-if-exists, prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk)

endif
endif
