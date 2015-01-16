#
#
# LiquidSmooth Audio Files
#

ALARM_PATH := vendor/liquid/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/liquid/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/liquid/prebuilt/common/media/audio/ringtones
UI_PATH := vendor/liquid/prebuilt/common/media/audio/ui

# Alarms
PRODUCT_COPY_FILES += \
	$(ALARM_PATH)/Timer.ogg:system/media/audio/alarms/Timer.ogg

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/Ariel.ogg:system/media/audio/notifications/Ariel.ogg \
	$(NOTIFICATION_PATH)/Carme.ogg:system/media/audio/notifications/Carme.ogg \
	$(NOTIFICATION_PATH)/Ceres.ogg:system/media/audio/notifications/Ceres.ogg \
	$(NOTIFICATION_PATH)/Elara.ogg:system/media/audio/notifications/Elara.ogg \
	$(NOTIFICATION_PATH)/Europa.ogg:system/media/audio/notifications/Europa.ogg \
	$(NOTIFICATION_PATH)/Iapetus.ogg:system/media/audio/notifications/Iapetus.ogg \
	$(NOTIFICATION_PATH)/Io.ogg:system/media/audio/notifications/Io.ogg \
	$(NOTIFICATION_PATH)/Rhea.ogg:system/media/audio/notifications/Rhea.ogg \
    $(NOTIFICATION_PATH)/Salacia.ogg:system/media/audio/notifications/Salacia.ogg \
	$(NOTIFICATION_PATH)/Tethys.ogg:system/media/audio/notifications/Tethys.ogg \
	$(NOTIFICATION_PATH)/Titan.ogg:system/media/audio/notifications/Titan.ogg

# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/Callisto.ogg:system/media/audio/ringtones/Callisto.ogg \
	$(RINGTONE_PATH)/Dione.ogg:system/media/audio/ringtones/Dione.ogg \
	$(RINGTONE_PATH)/Ganymede.ogg:system/media/audio/ringtones/Ganymede.ogg \
	$(RINGTONE_PATH)/Luna.ogg:system/media/audio/ringtones/Luna.ogg \
	$(RINGTONE_PATH)/Oberon.ogg:system/media/audio/ringtones/Oberon.ogg \
	$(RINGTONE_PATH)/Phobos.ogg:system/media/audio/ringtones/Phobos.ogg \
	$(RINGTONE_PATH)/Sedna.ogg:system/media/audio/ringtones/Sedna.ogg \
	$(RINGTONE_PATH)/Titania.ogg:system/media/audio/ringtones/Titania.ogg \
	$(RINGTONE_PATH)/Triton.ogg:system/media/audio/ringtones/Triton.ogg \
	$(RINGTONE_PATH)/Umbriel.ogg:system/media/audio/ringtones/Umbriel.ogg

# UI
PRODUCT_COPY_FILES += \
	$(UI_PATH)/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
	$(UI_PATH)/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
	$(UI_PATH)/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
	$(UI_PATH)/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
	$(UI_PATH)/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
	$(UI_PATH)/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
	$(UI_PATH)/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
	$(UI_PATH)/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg

