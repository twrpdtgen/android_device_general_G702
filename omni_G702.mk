#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G702 device
$(call inherit-product, device/general/G702/device.mk)

PRODUCT_DEVICE := G702
PRODUCT_NAME := omni_G702
PRODUCT_BRAND := GM
PRODUCT_MODEL := G702
PRODUCT_MANUFACTURER := general

PRODUCT_GMS_CLIENTID_BASE := android-general

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="G702-user 12 SP1A.210812.016 1697623282 release-keys"

BUILD_FINGERPRINT := GM/G702/G702:12/SP1A.210812.016/1697621726:user/release-keys
