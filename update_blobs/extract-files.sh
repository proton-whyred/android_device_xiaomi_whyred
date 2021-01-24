#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=whyred
export VENDOR=xiaomi
export DEVICE_COMMON=sdm660-common

./extract-files-common.sh "$@"

MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ROOT="$MY_DIR"/../../../..
DEVICE_BLOB_ROOT="$ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

sed -i 's|/system/etc/firmware|/vendor/firmware\x0\x0\x0\x0|g' "$DEVICE_BLOB_ROOT"/vendor/lib64/libgf_ca.so

