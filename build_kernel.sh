#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=" /home/haridhayal/m20lte/aarch64-linux-android-4.9/bin/aarch64-linux-android-"
export ANDROID_MAJOR_VERSION=q
bash scripts/fetch-latest-wireguard.sh
make exynos7885-m20lte_defconfig
make -j14
