
LOCAL_PATH := device/oneplus/fajita

PRODUCT_PLATFORM := sdm845

# A/B support
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl-recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-service \
    bootctrl.sdm845 \
    bootctrl.sdm845.recovery

PRODUCT_HOST_PACKAGES += \
    libandroidicu

# Encryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)