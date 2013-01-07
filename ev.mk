# Inherit AOSP device configuration for geehrc4g
$(call inherit-product, device/lge/geehrc_sp/full_geehrc.mk)
# Inherit cdma config
$(call inherit-product, vendor/ev/config/cdma.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_geehrc_sp
PRODUCT_BRAND := lge
PRODUCT_DEVICE := geehrc_sp
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE
# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam TARGET_DEVICE=geehrc BUILD_FINGERPRINT=google/occam/geehrc:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Armo
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your LG Optimus G!\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip

# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/720p

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=charge_only

#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
