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

PRODUCT_PACKAGES += \
    Busybox \
    Lightbulb

# Include OTA
#ifneq ($(NO_OTA_BUILD),true)
#    PRODUCT_PACKAGES += \
#        ParanoidOTA
#endif

#OTAUPDATER
#PRODUCT_COPY_FILES += \
#    vendor/XPerience/configs/permissions/com.otaudater.feature.xml:system/etc/permissions/com.otaudater.feature.xml \
    #vendor/XPerience/prebuilt/apk/OTA-Updater-2.0.3.apk:system/app/OTA.apk

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.pa.device=$(DEVICE) \
    ro.xpe.device=$(DEVICE)
