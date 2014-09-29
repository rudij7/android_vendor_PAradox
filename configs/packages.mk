# Additional packages
PRODUCT_PACKAGES += \
    Apollo \
    audio_effects.conf \
    CMFileManager \
    CMHome \
    DashClock \
    DSPManager \
    Focal \
    libcyanogen-dsp \
    PhotoPhase \
    Performance \
    XPerienceLauncher
#    XPerienceSetupWizard

#copy NEw Keyboard :D removed stockIME e.e
PRODUCT_COPY_FILES += \
	vendor/XPerience/L/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
	vendor/XPerience/L/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
