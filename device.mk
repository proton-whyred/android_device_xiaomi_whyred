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
#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from sdm660-common
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

DEVICE_PATH := device/xiaomi/whyred

# Inherit properties.mk
$(call inherit-product, $(DEVICE_PATH)/properties.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Display calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_huaxing_nt36672_fhd_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_huaxing_nt36672_fhd_video_mode_dsi_panel.xml \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_tianma_nt36672_fhd_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_tianma_nt36672_fhd_video_mode_dsi_panel.xml \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_shenchao_td4310_fhd_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_shenchao_td4310_fhd_video_mode_dsi_panel.xml \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_tianma_td4310_fhd_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_tianma_td4310_fhd_video_mode_dsi_panel.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# HW crypto
PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

#Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(DEVICE_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Shims
PRODUCT_PACKAGES += \
    libcamera_sdm660_shim

# Watermark
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/MIUI_DualCamera_watermark.png:$(TARGET_COPY_OUT_VENDOR)/etc/MIUI_DualCamera_watermark.png

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# ConsumerIR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/whyred/whyred-vendor.mk)
