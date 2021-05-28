#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=" /home/haridhayal/m20lte/aarch64-linux-android-4.9/bin/aarch64-linux-android-"
export ANDROID_MAJOR_VERSION=q
bash scripts/fetch-latest-wireguard.sh
make exynos7885-m20lte_defconfig
make -j14
rm -rf magiskboot/kernel
rm -rf magiskboot/extra
mv -vuf arch/arm64/boot/Image magiskboot/kernel
mv -vuf arch/arm64/boot/dtb.img magiskboot/extra
cd magiskboot
./magiskboot repack boot.img
mv -vuf new-boot.img boot-"$(date +"%d-%m-%H%M")".img
echo FINISHED COMPILING KERNEL
