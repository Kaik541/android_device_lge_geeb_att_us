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

$(call inherit-product-if-exists, vendor/lge/geehrc_sp/geehrc_sp-vendor.mk)


# Inherit from gee-common
$(call inherit-product, device/lge/gee-common/gee-common.mk)

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1


# TODO: Ramdisk bits, these need to be oblitterated, at least most of it.

PRODUCT_COPY_FILES += \
    device/lge/geehrc_sp/ramdisk/init:root/init \
    device/lge/geehrc_sp/ramdisk/init.rc:root/init.rc \
    device/lge/geehrc_sp/ramdisk/init.geehrc.rc:root/init.geehrc.rc \
    device/lge/geehrc_sp/ramdisk/ueventd.rc:root/ueventd.rc \
    device/lge/geehrc_sp/ramdisk/ueventd.gee.rc:root/ueventd.gee.rc \
    device/lge/geehrc_sp/ramdisk/ueventd.geehrc.rc:root/ueventd.geehrc.rc \
    device/lge/geehrc_sp/ramdisk/init.gee.rc:root/init.gee.rc \
    device/lge/geehrc_sp/ramdisk/init.lge.early.rc:root/init.lge.early.rc \
    device/lge/geehrc_sp/ramdisk/init.lge.log.rc:root/init.lge.log.rc \
    device/lge/geehrc_sp/ramdisk/init.lge.rc:root/init.lge.rc \
    device/lge/geehrc_sp/ramdisk/init.lge.usb.rc:root/init.lge.usb.rc \
    device/lge/geehrc_sp/ramdisk/init.lge.usb.sh:root/init.lge.usb.sh \
    device/lge/geehrc_sp/ramdisk/init.miniOS.rc:root/init.miniOS.rc \
    device/lge/geehrc_sp/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/lge/geehrc_sp/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/lge/geehrc_sp/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/lge/geehrc_sp/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/lge/geehrc_sp/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/lge/geehrc_sp/ramdisk/init.target.rc:root/init.target.rc \
    device/lge/geehrc_sp/ramdisk/initlogo.rle:root/initlogo.rle \
    device/lge/geehrc_sp/ramdisk/lgdms.fota.rc:root/lgdms.fota.rc \
    device/lge/geehrc_sp/ramdisk/lgdms.fota_update.rc:root/lgdms.fota_update.rc
#    device/lge/geehrc_sp/ramdisk/fstab.geehrc:root/fstab.geehrc

PRODUCT_COPY_FILES += \
    device/lge/geehrc_sp/ramdisk/sbin/e2fsck_static:root/sbin/e2fsck_static \
    device/lge/geehrc_sp/ramdisk/sbin/lge_fota:root/sbin/lge_fota \
    device/lge/geehrc_sp/ramdisk/sbin/make_ext4fs:root/sbin/make_ext4fs \
    device/lge/geehrc_sp/ramdisk/sbin/mke2fs_static:root/sbin/mke2fs_static \
    device/lge/geehrc_sp/ramdisk/sbin/setup_fs:root/sbin/setup_fs \
    device/lge/geehrc_sp/ramdisk/sbin/wallpaper:root/sbin/wallpaper
