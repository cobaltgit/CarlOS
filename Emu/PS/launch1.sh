#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir

RA_DIR=$progdir/../../RetroArch
EMU_DIR=$progdir
cd $RA_DIR/

$EMU_DIR/cpufreq.sh

cd $RA_DIR/
if [ -f "../Roms/PSBIOS/${ROMNAMETMP}.bios" ]; then
		cp -f "../Roms/PSBIOS/${ROMNAMETMP}.bios" "../RetroArch/.config/retroarch/system/scph101.bin"
else
		cp -f "../Roms/PSBIOS/scph1001.bios" "../RetroArch/.config/retroarch/system/scph101.bin"
fi

#disable netplay
NET_PARAM=

HOME=$RA_DIR/ $RA_DIR/retroarch.flip -v $NET_PARAM -L $RA_DIR/.config/retroarch/cores/swanstation_libretro.so "$*"
