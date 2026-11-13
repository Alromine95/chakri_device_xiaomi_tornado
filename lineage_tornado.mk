#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/tornado/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# some axion flags

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 8

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := Qbhi

# Processor name (underscores become spaces)
AXION_PROCESSOR := Mediatek_Dimensity_6100

# safely disable libperfmgr without breaking boot (set to true)
TARGET_DISABLES_LIBPERF ?= true

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# doze flags
# for devices with doze/sensor related issues 
TARGET_NEEDS_DOZE_FIX := false
# doze gestures
TARGET_DOZE_TAP_PULSE_SUPPORTED ?= false
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED ?= false
TARGET_DOZE_PICKUP_PULSE_SUPPORTED ?= false
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED ?= false

PRODUCT_NAME := lineage_tornado
PRODUCT_DEVICE := tornado
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2508CRN2B1

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

