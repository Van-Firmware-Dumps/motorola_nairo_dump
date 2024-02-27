#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nairo device
$(call inherit-product, device/motorola/nairo/device.mk)

PRODUCT_DEVICE := nairo
PRODUCT_NAME := omni_nairo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nairo_retail-user 11 RPNS31.Q4U-39-27-9-2-8 cd477 release-keys"

BUILD_FINGERPRINT := motorola/nairo_retail/nairo:11/RPNS31.Q4U-39-27-9-2-8/cd477:user/release-keys
