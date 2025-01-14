#
#  Copyright (C) 2024 The LineageOS Project
#
#  SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common derp stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# EVO flags
DERP_BUILDTYPE := Unofficial
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

# GMS
WITH_GMS := true

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device Information
PRODUCT_DEVICE := salaa
PRODUCT_NAME := derp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_MODEL := realme 7/Narzo 20 Pro/Narzo 30 4G
PRODUCT_SYSTEM_NAME := RMX2155
PRODUCT_SYSTEM_DEVICE := RMX2155L1

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Fingerprint
BUILD_FINGERPRINT := "realme/RMX2155/RMX2155L1:12/SP1A.210812.016/Q.GDPR.bf75e7-1:user/release-keys"
BUILD_DESCRIPTION := "sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1668670161293 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=$(BUILD_DESCRIPTION)
