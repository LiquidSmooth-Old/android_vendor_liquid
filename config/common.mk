# brand
PRODUCT_BRAND ?= liquid

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# packages
PRODUCT_PACKAGES += \
    Camera \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    NoiseField \
    PhaseBeam \
    Torch \
    VoiceDialer

# packages from source
PRODUCT_PACKAGES += \
    Apollo \
    armzipalign \
    DashClock \
    DSPManager \
    PerformanceControl \
    SoundRecorder \
    Superuser \
    su \
    Widgets


# prebuilts
PRODUCT_PACKAGES += \
    LatinIME \
    LiquidPapers \
    LockClock \
    XposedDPI \
    XposedInstaller

# tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs

# superuser embedded
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.liquid.superuser

# themes
include vendor/liquid/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# bin
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.liquid.rc:root/init.liquid.rc

# initd
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks

# launcher
PRODUCT_COPY_FILES += \
    vendor/liquid/proprietary/NovaLauncher/NovaLauncher.apk:system/app/NovaLauncher.apk

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# keyboard
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/liquid/config/permissions/com.liquidsmooth.android.xml:system/etc/permissions/com.liquidsmooth.android.xml \
    vendor/liquid/config/permissions/com.liquidsmooth.nfc.enhanced.xml:system/etc/permissions/com.liquidsmooth.nfc.enhanced.xml

# version
LIQUID_VERSION_MAJOR = 2
LIQUID_VERSION_MINOR = 1
LIQUID_VERSION_STATE = "OFFICIAL"
LIQUID_VERSION := "Liquid-JB-v"$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)

# build.prop tweaks
PRODUCT_PROPERTY_OVERRIDES += \
  ro.kernel.android.checkjni=0 \
  ro.media.enc.jpeg.quality=100 \
  debug.sf.hw=1 \
  video.accelerate.hw=1 \
  ro.kernel.checkjni=0 

# goo.im properties
PRODUCT_PROPERTY_OVERRIDES += \
  ro.goo.rom=liquidsmoothJB2 \
  ro.goo.developerid=liquidsmooth \
  ro.goo.version=$(shell date +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.liquid.version=$(LIQUID_VERSION)
