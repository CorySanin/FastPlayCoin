# TARGET #

TARGET := ALL
LIBRARY := 0

ifeq ($(TARGET),$(filter $(TARGET),3DS WIIU))
    ifeq ($(strip $(DEVKITPRO)),)
        $(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
    endif
endif

# CONFIGURATION #

NAME := Fast PlayCoin

BUILD_DIR := build
OUTPUT_DIR := out
INCLUDE_DIRS :=
SOURCE_DIRS := source

EXTRA_OUTPUT_FILES :=

LIBRARY_DIRS :=
LIBRARIES :=

BUILD_FLAGS :=
BUILD_FLAGS_CC :=
BUILD_FLAGS_CXX :=
RUN_FLAGS :=

VERSION_MAJOR := 1
VERSION_MINOR := 0
VERSION_MICRO := 0

ifeq ($(TARGET),$(filter $(TARGET),3DS WIIU))
    TITLE := $(NAME)
    DESCRIPTION := 300 coins NOW
    AUTHOR := games195, MrCheeze, WORM
endif

ifeq ($(TARGET),3DS)
    LIBRARY_DIRS += $(DEVKITPRO)/libctru
    LIBRARIES += ctru

    PRODUCT_CODE := CTR-P-PlayCoin
    UNIQUE_ID := 0x00F98

    CATEGORY := Application
    USE_ON_SD := true

    MEMORY_TYPE := Application
    SYSTEM_MODE := 64MB
    SYSTEM_MODE_EXT := Legacy
    CPU_SPEED := 268MHz
    ENABLE_L2_CACHE := true

    ICON_FLAGS :=

    ROMFS_DIR :=
    BANNER_AUDIO := resource/audio.wav
    BANNER_IMAGE := resource/banner.png
    ICON := resource/icon.png
    LOGO := resource/logo.bcma.lz
endif

# INTERNAL #

include buildtools/make_base
