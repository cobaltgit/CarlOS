#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
echo 0 > /sys/devices/system/cpu/cpu3/online 
echo 0 > /sys/devices/system/cpu/cpu2/online 

echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 
$RA_DIR/overclock 1512
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/retroarch.flip -v -L $RA_DIR/.config/retroarch/cores/fb_32b_libretro.so "$1"
