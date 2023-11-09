#!/bin/bash
# SPDX-License-Identifier: GPL-2.0
BUILD_AOSP_KERNEL=0 \
BUILD_STAGING_KERNEL=1 \
GKI_KERNEL_DIR=aosp-staging \
GKI_KERNEL_REMOTE=partner-common \
GKI_KERNEL_BRANCH=`repo info aosp-staging | grep "Manifest revision" | sed 's/Manifest revision: //g'` \
BUILD_SCRIPT="./build_lynx.sh" \
DEVICE_KERNEL_BUILD_CONFIG=private/devices/google/lynx/build.config.lynx \
private/gs-google/update_symbol_list.sh "$@"
