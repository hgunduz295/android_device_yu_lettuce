#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/yu/lettuce

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_LEGACY_LOCAL_AUDIO_HAL := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
	/system/bin/mediaserver=23 \
	/system/vendor/bin/mm-qcamera-daemon=23

# Dex optimizion
ifeq ($(HOST_OS),linux)
 ifneq ($(TARGET_BUILD_VARIANT),eng)
   WITH_DEXPREOPT := true
   WITH_DEXPREOPT_DEBUG_INFO := false
   USE_DEX2OAT_DEBUG := false
   DONT_DEXPREOPT_PREBUILTS := true
   WITH_DEXPREOPT_PIC := true
   WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
 endif
endif
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true
USE_OPENGL_RENDERER := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Extended Filesystem Support
TARGET_EXFAT_DRIVER := sdfat

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 67108864
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13042155008
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/fs_config/config.fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8916
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 pm.sleep_mode=1 androidboot.btmacaddr=00:00:00:00:00:00
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
LZMA_RAMDISK_TARGETS := recovery

KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-opt-linux-android/bin
TARGET_KERNEL_CONFIG := reborn_lettuce_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-opt-linux-android-
TARGET_KERNEL_SOURCE := kernel/cyanogen/msm8916

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
PRODUCT_ENFORCE_RRO_TARGETS := framework-res

# Power
TARGET_POWERHAL_VARIANT := qcom
TARGET_PROVIDES_POWERHAL := true
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/soc.0/78b9000.i2c/i2c-5/5-0040/double_tap_enable"
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Radio
DISABLE_RILD_OEM_HOOK := false
MALLOC_SVELTE := true
TARGET_RIL_VARIANT := caf
TARGET_USE_OLD_MNC_FORMAT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_cm

# Releasetools
TARGET_DISABLE_OTA_ASSERT := true

# SDClang
TARGET_USE_SDCLANG := false
SDCLANG := false

# SELinux
#include device/qcom/sepolicy-legacy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib64/lib-imsdpl.so|libshims_boringssl.so \
    /system/vendor/lib64/lib-imscamera.so|libshims_camera.so \
    /system/vendor/lib64/lib-imsvt.so|libshims_ims.so \
    /system/vendor/lib64/libflp.so|libshims_flp.so \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib/libflp.so|libshims_flp.so \
    /system/vendor/lib/libizat_core.so|libshims_get_process_name.so

# Shipping API level (L-MR1)
PRODUCT_SHIPPING_API_LEVEL := 22

# TWRP
ifeq ($(WITH_TWRP),true)
include $(DEVICE_PATH)/twrp.mk
endif

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_USES_QCOM_WCNSS_QMI := true

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from proprietary files
include vendor/yu/lettuce/BoardConfigVendor.mk
