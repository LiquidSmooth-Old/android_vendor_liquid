PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/liquid/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/liquid/prebuilt/common/bin/50-liquid.sh:system/addon.d/50-liquid.sh \
    vendor/liquid/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/liquid/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh

# liquid-specific init file
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.local.rc:root/init.liquid.rc

# Layers Theme
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/Layers.apk:system/app/Layers/Layers.apk

# Kernel Auditor
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/Auditor.apk:system/app/Auditor/Auditor.apk

# Synergy Theme apks
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_teleservice_v4.apk:vendor/overlay/Synergy_teleservice_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_cellbroadcast_v4.apk:vendor/overlay/Synergy_cellbroadcast_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_contacts_v4.apk:vendor/overlay/Synergy_contacts_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_dialer_v4.apk:vendor/overlay/Synergy_dialer_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_framework-res_v4.apk:vendor/overlay/Synergy_framework-res_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_gmail_v4.apk:vendor/overlay/Synergy_gmail_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_googlemms_v4.apk:vendor/overlay/Synergy_googlemms_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_hangouts_v4.apk:vendor/overlay/Synergy_hangouts_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_inbox_v4.apk:vendor/overlay/Synergy_inbox_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_keyboard_v4.apk:vendor/overlay/Synergy_keyboard_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_playmusic_v4.apk:vendor/overlay/Synergy_playmusic_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_playstore_v4.apk:vendor/overlay/Synergy_playstore_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_settings_v4.apk:vendor/overlay/Synergy_settings_v4.apk \
    vendor/liquid/prebuilt/common/etc/synergy/Synergy_systemui_v4.apk:vendor/overlay/Synergy_systemui_v4.apk

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/liquid/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/liquid/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/liquid/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts

# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# Extra Optional packages
PRODUCT_PACKAGES += \
    PerformanceControl \
    SlimLauncher \
    Eleven \
    LatinIME \
    BluetoothExt \
    DashClock \
    DeskClock \
    Terminal \
    LockClock

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/liquid/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif

# version
RELEASE = false
LIQUID_VERSION_MAJOR = 4
LIQUID_VERSION_MINOR = 0

# release
ifeq ($(RELEASE),true)
    LIQUID_VERSION := LS-LP-MileStone-$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)
else
    LIQUID_VERSION_STATE := $(shell date +%Y-%m-%d)
    LIQUID_VERSION := LS-LP-v$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VERSION_STATE)
endif

# HFM Files
PRODUCT_COPY_FILES += \
	vendor/liquid/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
	vendor/liquid/prebuilt/etc/hosts.og:system/etc/hosts.og

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.romstats.url=http://stats.liquidsmooth.net/ \
    ro.romstats.name=LiquidSmooth \
    ro.romstats.version=$(LIQUID_VERSION) \
    ro.romstats.askfirst=0 \
    ro.romstats.tframe=1

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.liquid.version=$(LIQUID_VERSION)
