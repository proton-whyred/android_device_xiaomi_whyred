#
# Copyright (C) 2018-2019 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# No Prebuilt GMS please.
WITH_GMS := false

# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := whyred
PRODUCT_MODEL := Redmi Note 5 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := whyred

PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys
PRODUCT_OVERRIDE_DESC := redfin-user 11 RQ3A.210705.001 7380771 release-keys
