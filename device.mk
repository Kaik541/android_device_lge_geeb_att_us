#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL geehrc devices, and
# are also specific to geehrc devices
#
# Everything in this directory will become public

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/lge/geeb_att/geeb-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/geeb_att_us/overlay

## common overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/gee-common/overlay-gsm

# Inherit from gee-common
$(call inherit-product, device/lge/gee-common/gee-common.mk)

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1
    
# PRODUCT_CHARACTERISTICS := nosdcard  

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/geeb_att_us/ramdisk/init.geeb.rc:root/init.geeb.rc \
    device/lge/geeb_att_us/ramdisk/ueventd.geeb.rc:root/ueventd.geeb.rc \
    device/lge/geeb_att_us/ramdisk/fstab.geeb:root/fstab.geeb

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PACKAGES += camera.geeb
