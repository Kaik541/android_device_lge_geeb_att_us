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

PRODUCT_PROPERTY_OVERRIDES += \
   telephony.lteOnCdmaDevice=1 \
   telephony.lte.cdma.device=1 \
   ro.telephony.default_network=8 \
   ro.ril.def.preferred.network=8 \
   ril.subscription.types=NV,RUIM \
   ro.config.svlte1x=true \
   ro.cdma.subscribe_on_ruim_ready=true \
   persist.radio.no_wait_for_card=1 \
   ro.cdma.home.operator.numeric=310120 \
   ro.cdma.home.operator.alpha=Sprint \
   telephony.sms.pseudo_multipart=1


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

# Add in Kernel Modules from 3.4 leaked
PRODUCT_COPY_FILES += \
    device/lge/geehrc_sp/modules/prima/cfg80211.ko:system/lib/modules/prima/cfg80211.ko \
    device/lge/geehrc_sp/modules/prima/prima_wlan.ko:system/lib/modules/prima/prima_wlan.ko \
    device/lge/geehrc_sp/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/lge/geehrc_sp/modules/bluetooth-power.ko:system/lib/modules/bluetooth-power.ko \
    device/lge/geehrc_sp/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/lge/geehrc_sp/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/lge/geehrc_sp/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/lge/geehrc_sp/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/lge/geehrc_sp/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/lge/geehrc_sp/modules/max2165.ko:system/lib/modules/max2165.ko \
    device/lge/geehrc_sp/modules/mc44s803.ko:system/lib/modules/mc44s803.ko \
    device/lge/geehrc_sp/modules/mcdrvmodule.ko:system/lib/modules/mcdrvmodule.ko \
    device/lge/geehrc_sp/modules/mckernelapi.ko:system/lib/modules/mckernelapi.ko \
    device/lge/geehrc_sp/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/lge/geehrc_sp/modules/mt2060.ko:system/lib/modules/mt2060.ko \
    device/lge/geehrc_sp/modules/mt2063.ko:system/lib/modules/mt2063.ko \
    device/lge/geehrc_sp/modules/mt20xx.ko:system/lib/modules/mt20xx.ko \
    device/lge/geehrc_sp/modules/mt2131.ko:system/lib/modules/mt2131.ko \
    device/lge/geehrc_sp/modules/mt2266.ko:system/lib/modules/mt2266.ko \
    device/lge/geehrc_sp/modules/mxl5005s.ko:system/lib/modules/mxl5005s.ko \
    device/lge/geehrc_sp/modules/mxl5007t.ko:system/lib/modules/mxl5007t.ko \
    device/lge/geehrc_sp/modules/qce40.ko:system/lib/modules/qce40.ko \
    device/lge/geehrc_sp/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/lge/geehrc_sp/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/lge/geehrc_sp/modules/qt1010.ko:system/lib/modules/qt1010.ko \
    device/lge/geehrc_sp/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/lge/geehrc_sp/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/lge/geehrc_sp/modules/spidev.ko:system/lib/modules/spidev.ko \
    device/lge/geehrc_sp/modules/tcp_htcp.ko:system/lib/modules/tcp_htcp.ko \
    device/lge/geehrc_sp/modules/tcp_westwood.ko:system/lib/modules/tcp_westwood.ko \
    device/lge/geehrc_sp/modules/tda18212.ko:system/lib/modules/tda18212.ko \
    device/lge/geehrc_sp/modules/tda18218.ko:system/lib/modules/tda18218.ko \
    device/lge/geehrc_sp/modules/tda18271.ko:system/lib/modules/tda18271.ko \
    device/lge/geehrc_sp/modules/tda827x.ko:system/lib/modules/tda827x.ko \
    device/lge/geehrc_sp/modules/tda8290.ko:system/lib/modules/tda8290.ko \
    device/lge/geehrc_sp/modules/tda9887.ko:system/lib/modules/tda9887.ko \
    device/lge/geehrc_sp/modules/tea5761.ko:system/lib/modules/tea5761.ko \
    device/lge/geehrc_sp/modules/tea5767.ko:system/lib/modules/tea5767.ko \
    device/lge/geehrc_sp/modules/test-iosched.ko:system/lib/modules/test-iosched.ko \
    device/lge/geehrc_sp/modules/tuner-simple.ko:system/lib/modules/tuner-simple.ko \
    device/lge/geehrc_sp/modules/tuner-types.ko:system/lib/modules/tuner-types.ko \
    device/lge/geehrc_sp/modules/tuner-xc2028.ko:system/lib/modules/tuner-xc2028.ko \
    device/lge/geehrc_sp/modules/wlan.ko:system/lib/modules/wlan.ko \
    device/lge/geehrc_sp/modules/xc4000.ko:system/lib/modules/xc4000.ko \
    device/lge/geehrc_sp/modules/xc5000.ko:system/lib/modules/xc5000.ko
