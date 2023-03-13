#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from msm8998 device
$(call inherit-product, device/readboy/msm8998/device.mk)

PRODUCT_DEVICE := msm8998
PRODUCT_NAME := twrp_msm8998
PRODUCT_BRAND := readboy
PRODUCT_MODEL := Readboy_C30
PRODUCT_MANUFACTURER := readboy

PRODUCT_GMS_CLIENTID_BASE := android-readboy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8998-user 10 QKQ1.190918.001 202209231433 dev-keys"

BUILD_FINGERPRINT := readboy/msm8998/msm8998:10/QKQ1.190918.001/202209231433:user/dev-keys
