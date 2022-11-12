#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1900
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7T
PRODUCT_SYSTEM_DEVICE := OnePlus7T

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# FOD
TARGET_HAS_FOD := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7T \
    PRODUCT_NAME=OnePlus7T 
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Stock fingerprint for GmsCompat
PRODUCT_STOCK_FINGERPRINT := "OnePlus/OnePlus7T/OnePlus7T:11/RKQ1.201022.002/2108181508:user/release-keys"
