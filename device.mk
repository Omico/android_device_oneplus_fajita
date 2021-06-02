#
# Copyright (C) 2021 The Omico
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/$(PRODUCT_BRAND)/$(TARGET_DEVICE)

PRODUCT_PLATFORM := sdm845

# A/B
PRODUCT_PACKAGES += \
    cppreopts.sh \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    vbmeta \
    vendor

AB_OTA_POSTINSTALL_CONFIG += \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    RUN_POSTINSTALL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.$(PRODUCT_PLATFORM)

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.$(PRODUCT_PLATFORM) \
    libgptutils \
    libz \
    libcutils

# Encryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
