#
# Copyright (C) 2015 The CyanogenMod Project
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


$(call inherit-product, build/target/product/full.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.t8lte:root/fstab.t8lte \
    $(LOCAL_PATH)/rootdir/etc/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/etc/init.lge.cmm.usb.sh:root/init.lge.cmm.usb.sh \
    $(LOCAL_PATH)/rootdir/etc/init.lge.early.rc:root/init.lge.early.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.log.rc:root/init.lge.log.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.modem_log.rc:root/init.lge.modem_log.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.power.rc:root/init.lge.power.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.rc:root/init.lge.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.svelte.rc:root/init.lge.svelte.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.usb.post-fs-data.sh:root/init.lge.usb.post-fs-data.sh \
    $(LOCAL_PATH)/rootdir/etc/init.lge.usb.rc:root/init.lge.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.usb.sh:root/init.lge.usb.sh \
    $(LOCAL_PATH)/rootdir/etc/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.t8lte.rc:root/init.recovery.t8lte.rc \
    $(LOCAL_PATH)/rootdir/etc/init.t8lte_core.rc:root/init.t8lte_core.rc \
    $(LOCAL_PATH)/rootdir/etc/init.t8lte_product.rc:root/init.t8lte_product.rc \
    $(LOCAL_PATH)/rootdir/etc/init.t8lte.rc:root/init.t8lte.rc \
    $(LOCAL_PATH)/rootdir/etc/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zetaw.bt_vendor.rc:root/init.zetaw.bt_vendor.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zetaw_core.rc:root/init.zetaw_core.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zetaw.sensor.sh:root/init.zetaw.sensor.sh \
    $(LOCAL_PATH)/rootdir/etc/init.zetaw.wifi.rc:root/init.zetaw.wifi.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.t8lte.rc:root/ueventd.t8lte.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t8lte
PRODUCT_NAME := cm_t8lte
PRODUCT_BRAND := lge
PRODUCT_MODEL := t8lte
PRODUCT_MANUFACTURER := lge
