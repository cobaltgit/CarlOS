#!/bin/sh
echo 1 > /sys/devices/system/cpu/cpu0/online
echo 1 > /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/devices/system/cpu/cpu2/online
echo 1 > /sys/devices/system/cpu/cpu3/online
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1416000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo "===================================="
echo $0 $*
progdir=`dirname "$0"`

export LD_LIBRARY_PATH="$progdir/lib:$LD_LIBRARY_PATH"


EMU_DIR=$progdir
ROM_DIR=`dirname "$1"`
ROMNAME="$1"
BASEROMNAME=${ROMNAME##*/}
ROMNAMETMP=${BASEROMNAME%.*}
cd "${ROM_DIR}/${ROMNAMETMP}"

$EMU_DIR/gptokeyb -k "Ikemen_Go_aarch64" &
$EMU_DIR/Ikemen_Go_aarch64
kill -9 $(pidof gptokeyb)

