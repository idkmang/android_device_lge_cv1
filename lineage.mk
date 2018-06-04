#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common Validus stuff.
$(call inherit-product, vendor/lge/cv1/cv1-vendor.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := lge
PRODUCT_DEVICE := cv1
PRODUCT_NAME :=lineage_cv1
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-X210MA
PRODUCT_MANUFACTURER := LGE

# Overlays (inherit after vendor/validus to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/cv1_lao_com/cv1:7.1.2/N2G47H/180391525b535:user/release-keys \
    PRIVATE_BUILD_DESC="cv1_lao_com-user 7.1.2 N2G47H 180391525b535 release-keys"
