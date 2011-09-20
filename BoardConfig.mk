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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/kovsky/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6j

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_HAS_FLIPPED_SCREEN := true

# Audio
TARGET_PROVIDES_LIBAUDIO := device/htc/kovsky/libs/libaudio
BUILD_LIB_HTC_ACOUSTIC_WINCE := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_6_X
CONFIG_DRIVER_NL80211 := y
WIFI_DRIVER_MODULE_PATH := rfkill

BOARD_HAVE_BLUETOOTH := true

# Kernel options
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := fbcon=rotate:2
TARGET_PREBUILT_KERNEL := device/htc/kovsky/kernel
LOCAL_KERNEL := device/htc/kovsky/kernel

#libsurfaceflinger to avoid Draw Texture Extenstion
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_NO_RGBX_8888 := true
BOARD_NO_GL2 := true
BOARD_GL_TEX_POW2_DIMENSION_REQUIRED := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/kovsky/egl.cfg

BOARD_USE_FROYO_LIBCAMERA := false

# RPC
BOARD_USES_QCOM_LIBRPC := false

# GPS
BOARD_VENDOR_XDANDROID_GPS_HARDWARE := true

# Ota updates
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_BOOTLOADER_BOARD_NAME := kovsky
TARGET_OTA_ASSERT_DEVICE := kovsky
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=kovsky

# Video Encoders
USE_PV_WINDOWS_MEDIA := false
BUILD_PV_VIDEO_ENCODERS := 1

# Misc
JS_ENGINE := v8

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00040000 00020000 "misc"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"
# mtd3: 05a00000 00020000 "system"
# mtd4: 05000000 00020000 "cache"
# mtd5: 127c0000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00280000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x127c0000

