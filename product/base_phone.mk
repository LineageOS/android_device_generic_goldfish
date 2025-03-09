#
# Copyright (C) 2024 The Android Open Source Project
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

# the common file for phone.mk (AOSP) and gphone.mk (internal)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/generic/goldfish/phone/overlay
PRODUCT_CHARACTERISTICS := emulator

$(call inherit-product, device/generic/goldfish/product/generic.mk)

PRODUCT_PACKAGES += GoldfishSkinConfig \
                    GoldfishExtraFeature

$(call inherit-product, device/generic/goldfish/product/phone_overlays.mk)

PRODUCT_COPY_FILES += \
    device/generic/goldfish/phone/overlay/frameworks/base/packages/overlays/GoldfishSkinConfig/readme.txt:$(TARGET_COPY_OUT_DATA)/misc/GoldfishSkinConfig \
    device/generic/goldfish/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \

ifeq ($(EMULATOR_DEVICE_TYPE_FOLDABLE),true)
PRODUCT_COPY_FILES += \
    device/generic/goldfish/pixel_fold/display_settings.xml:/data/misc/pixel_fold/display_settings.xml \
    device/generic/goldfish/pixel_fold/device_state_configuration.xml:/data/misc/pixel_fold/devicestate/device_state_configuration.xml \
    device/generic/goldfish/pixel_fold/display_layout_configuration.xml:/data/misc/pixel_fold/displayconfig/display_layout_configuration.xml \
    device/generic/goldfish/pixel_fold/sensor_hinge_angle.xml:/data/misc/pixel_fold/extra_feature.xml
else
PRODUCT_COPY_FILES += \
    device/generic/goldfish/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml \

endif
