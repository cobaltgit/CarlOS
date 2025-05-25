#!/bin/bash

if [ ! -f /mnt/SDCARD/Roms/PORTS/moonlightnew/moonlight/libs/libavahi-client.so.3 ]; then
 
cd /mnt/SDCARD/App/Moonlight
cp -r ./libs/* /mnt/SDCARD/Roms/PORTS/moonlightnew/moonlight/libs

fi

cd /mnt/SDCARD/Emu/PORT32/

./launchPM.sh "/mnt/SDCARD/Roms/PORTS/Moonlight New.sh"

sync
