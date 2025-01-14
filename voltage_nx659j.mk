#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit from nx659j device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nubia
PRODUCT_DEVICE := nx659j
PRODUCT_MANUFACTURER := nubia
PRODUCT_NAME := voltage_nx659j
PRODUCT_MODEL := Red Magic 5S/5G

TARGET_VENDOR_PRODUCT_NAME := NX659J
TARGET_VENDOR_DEVICE_NAME := NX659J

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="NX659J-user 11 RKQ1.200826.002 nubia.20221012.201513 release-keys" \
    BuildFingerprint=nubia/NX659J-UN/NX659J-UN:11/RKQ1.200826.002/nubia.20221012.201513:user/release-keys \
    DeviceName=NX659J \
    DeviceProduct=NX659J \
    SystemDevice=NX659J \
    SystemName=NX659J

#VoltageOS Stuff
VOLTAGE_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 2160
EXTRA_UDFPS_ANIMATIONS := true
USE_MOTO_CALCULATOR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_ENABLE_BLUR := true

# Pixel Stuff
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_CALL_RECORDING_SUPPORTED := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
