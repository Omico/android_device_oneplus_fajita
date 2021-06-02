# Release name
PRODUCT_RELEASE_NAME := fajita

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oneplus/fajita/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fajita
PRODUCT_NAME := omni_fajita
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := OnePlus A6013
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oneplus6t \
    BUILD_PRODUCT=OnePlus6T \
    TARGET_DEVICE=OnePlus6T

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
