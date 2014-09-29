# Copyright (C) 2014 PAradox
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

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/PAradox/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/PAradox/overlay/$(TARGET_PRODUCT)

# Copy custom ramdisk
PRODUCT_COPY_FILES += \
    vendor/PAradox/prebuilt/etc/init.PAradox.rc:root/init.PAR.rc

# Copy changelog
PRODUCT_COPY_FILES += \
    vendor/PAradox/prebuilt/etc/CHANGELOG.mkdn:system/etc/CHANGELOG-XPE.txt

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/PAradox/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/PAradox/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# APN
PRODUCT_COPY_FILES += \
    vendor/PAradox/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Gapps backup script
PRODUCT_COPY_FILES += \
    vendor/PAradox/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/PAradox/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/PAradox/prebuilt/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh

# SU Support
SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES := \
    Superuser \
    su

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3