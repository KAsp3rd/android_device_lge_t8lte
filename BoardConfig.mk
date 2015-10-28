PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/device_t8lte.mk

USE_CAMERA_STUB := true
# inherit from the proprietary version
-include vendor/lge/t8lte/BoardConfigVendor.mk

#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product-if-exists, vendor/lge/t8lte/t8lte-vendor.mk)
PRODUCT_CHARACTERISTICS := tablet

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t8lte
PRODUCT_NAME := cm_t8lte
PRODUCT_BRAND := lge
PRODUCT_MODEL := t8lte
PRODUCT_MANUFACTURER := lge

LOCAL_PATH := device/lge/t8lte
BOARD_VENDOR := lge

#PLATFORM
TARGET_BOARD_PLATFORM := msm8226

#CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
#KERNEL_TOOLCHAIN := /home/kasp3rd/cm/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin

#BOOTLOADER
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226


# KERNEL
TARGET_KERNEL_SOURCE := kernel/lge/msm8226
TARGET_KERNEL_CONFIG := t8lte_tmo_us_defconfig
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 earlyprintk androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=t8lte androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT  := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100 --dt device/lge/t8lte/recovery/dt.img
BOARD_KERNEL_IMG_NAME := zImage

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072
#TARGET_USERIMAGES_USE_EXT4 := true

#TARGET_PREBUILT_KERNEL := device/lge/t8lte/recovery/kernel

#Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#TARGET_RECOVERY_FSTAB := device/lge/t8lte/rootdir/etc/fstab.twrp
TARGET_RECOVERY_FSTAB := device/lge/t8lte/rootdir/etc/fstab.t8lte
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
