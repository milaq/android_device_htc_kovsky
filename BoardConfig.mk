# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# Camera
# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# inherit from the proprietary version
-include vendor/htc/kovsky/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom

TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_HAS_FLIPPED_SCREEN := true

# Audio
TARGET_PROVIDES_LIBAUDIO := device/htc/kovsky/libs/libaudio-wince
BUILD_LIB_HTC_ACOUSTIC_WINCE := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_6_X
CONFIG_DRIVER_NL80211 := y
WIFI_DRIVER_MODULE_PATH := "rfkill"
BOARD_NEEDS_NL80211_DRIVER_CMD := true

BOARD_HAVE_BLUETOOTH := true

# Kernel options
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := fbcon=rotate:2 smd_rpcrouter.hot_boot=1 no_console_suspend
TARGET_PREBUILT_KERNEL := device/htc/kovsky/prebuilt/kernel
LOCAL_KERNEL := device/htc/kovsky/kernel

#libsurfaceflinger to avoid Draw Texture Extenstion
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_NO_RGBX_8888 := true
BOARD_NO_GL2 := true
BOARD_GL_TEX_POW2_DIMENSION_REQUIRED := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09100000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x13300000
BOARD_FLASH_BLOCK_SIZE := 131072

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/kovsky/configs/egl.cfg

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/htc/kovsky/recovery/recovery_ui.c
BOARD_XHDPI_RECOVERY := true
BOARD_USE_CUSTOM_FONT := true

# RPC
BOARD_USES_QCOM_LIBRPC := false

# GPS
BOARD_VENDOR_XDANDROID_GPS_HARDWARE := kovsky
BOARD_GPS_LIBRARIES := gps.kovsky

# Ota updates
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/htc/kovsky/releasetools/kovsky_ota_from_target_files
TARGET_CUSTOM_RELEASETOOL := device/htc/kovsky/releasetools/squisher

TARGET_BOOTLOADER_BOARD_NAME := kovsky
TARGET_OTA_ASSERT_DEVICE := kovsky
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=kovsky

# Video Encoders
BOARD_USES_QCOM_LIBS := true
USE_PV_WINDOWS_MEDIA := false
BUILD_PV_VIDEO_ENCODERS := 1

# Misc
JS_ENGINE := v8

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=\$(TOP)/device/htc/kovsky/prelink-linux-arm-kovsky.map
