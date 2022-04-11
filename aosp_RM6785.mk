#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RM6785/device.mk)


# first, inherit Project Arcana common.mk
$(call inherit-product, vendor/aosp/common.mk)

# do aosp bringup and use these flags to adapt

# maintainer flag
ARCANA_MAINTAINER := vadd

# pixel build flag, if not define build type is vanilla
WITH_GAPPS := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# prebuilt graphene camera flag, default is false
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# whether to copy apns-conf.xml to system
# (for devices having issues with TelephonyProvider: FileNotFoundException)
# default is false (product)
COPY_APN_SYSTEM := true

# Misc flags to enable certain features

# UDFPS ICONS/ANIMATIONS
EXTRA_UDFPS_ANIMATIONS := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Bloom and Living Universe Pixel Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Pixel Now playing feature
TARGET_SUPPORTS_NOW_PLAYING := true

# Pixel charger animation
USE_PIXEL_CHARGER_IMAGES := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_RM6785
PRODUCT_DEVICE := RM6785
PRODUCT_BRAND := realme
PRODUCT_MODEL := RM6785
PRODUCT_MANUFACTURER := realme

BUILD_FINGERPRINT := "realme/RMX2001/RMX2001L1:10/QP1A.190711.020/1594211000:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
