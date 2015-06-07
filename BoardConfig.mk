# Copyright (C) 2014 The CyanogenMod Project
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


#TARGET_OTA_ASSERT_DEVICE 			:= matisselte,matisseltexx

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_ARCH 						:= arm
TARGET_CPU_ABI 						:= armeabi-v7a
TARGET_CPU_ABI2 					:= armeabi
TARGET_ARCH_VARIANT 				:= armv7-a-neon
TARGET_CPU_VARIANT 					:= krait
ARCH_ARM_HAVE_TLS_REGISTER 			:= true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET 			:= true
TARGET_KRAIT_BIONIC_PLDOFFS 		:= 10
TARGET_KRAIT_BIONIC_PLDTHRESH 		:= 10
TARGET_KRAIT_BIONIC_BBTHRESH 		:= 64
TARGET_KRAIT_BIONIC_PLDSIZE 		:= 64

BOARD_CUSTOM_BOOTIMG_MK 			:= device/samsung/matisselte/custombootimg.mk
TARGET_PREBUILT_KERNEL 				:= device/samsung/matisselte/kernel/kernel-f2fs

#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/matisselte/mkbootimg.mk
#BOARD_KERNEL_BASE := 0x00000000
#BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
#TARGET_KERNEL_SOURCE := kernel/samsung/matissewifi
#TARGET_KERNEL_CONFIG := twrp-matisse_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := twrp-matisselte_defconfig

TARGET_RECOVERY_FSTAB 				:= device/samsung/matisselte/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT 		:= "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX		:= true
BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"roboto_15x24.h\"
BOARD_SUPPRESS_SECURE_ERASE 		:= true
RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
RECOVERY_SDCARD_ON_DATA 			:= true
HAVE_SELINUX 						:= true

TW_THEME 							:= landscape_hdpi
TW_NEW_ION_HEAP 					:= true
TW_BRIGHTNESS_PATH 					:= /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS 					:= 128
TW_DEFAULT_EXTERNAL_STORAGE 		:= true
TW_FLASH_FROM_STORAGE 				:= true
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 	:= "data"
TW_EXTERNAL_STORAGE_PATH 			:= "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 	:= "external_sd"
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_HAS_DOWNLOAD_MODE 				:= true
TW_NO_USB_STORAGE 					:= true

BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 11485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 2147483648
BOARD_FLASH_BLOCK_SIZE 				:= 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USERIMAGES_USE_EXT4 			:= true
TARGET_USERIMAGES_USE_F2FS 			:= true

TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO_SAMSUNG := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p26"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,errors=panic"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"

MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/matisselte/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_FONT := 160
MR_FSTAB := device/samsung/matisselte/twrp.fstab
MR_USE_MROM_FSTAB := true
# End of first RAM region is 0x07ffffff , so we set it to for example 0x06500000
MR_KEXEC_MEM_MIN := 0x05500000
MR_KEXEC_DTB := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/samsung/matisselte/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_DEVICE_HOOKS := device/samsung/matisselte/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 5
#MR_DEVICE_RECOVERY_HOOKS := device/samsung/matisselte/multirom/mr_hooks_recovery.c
#MR_DEVICE_RECOVERY_HOOKS_VER := 1
MR_CONTINUOUS_FB_UPDATE := true

