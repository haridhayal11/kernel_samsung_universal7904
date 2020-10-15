make mrproper
CONFIG=m20lte_03_defconfig
THREAD="-j6"

export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=" /home/haridhayal/Desktop/Kernel/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

make  O=out $CONFIG
make  O=out $THREAD
