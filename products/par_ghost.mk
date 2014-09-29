# Copyright (C) 2014 XPerience
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

# Check for target product

ifeq (par_ghost,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/PAradox/configs/telephony.mk)

# Include ParanoidAndroid common configuration
include vendor/PAradox/main.mk

# Override AOSP build properties
# Release name
PRODUCT_RELEASE_NAME := Moto X
PRODUCT_NAME := par_ghost

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/ghost/full_ghost.mk)

endif
 
