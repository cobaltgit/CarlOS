#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
GAMEDIR=$progdir/FFPLAY


cd $GAMEDIR

if [ -f "/storage/.config/SDL-GameControllerDB/gamecontrollerdb.txt" ]; then

export SDL_GAMECONTROLLERCONFIG_FILE="/storage/.config/SDL-GameControllerDB/gamecontrollerdb.txt"
./gptokeyb -k "ffplay" -c "$GAMEDIR/ffplay.gptk" &
HOME=./ LD_LIBRARY_PATH="lib:$LD_LIBRARY_PATH" $GAMEDIR/ffplay -fs -autoexit -codec:v h264_rkmpp -i "$1"
kill -9 $(pidof gptokeyb)
else

export SDL_GAMECONTROLLERCONFIG_FILE="../../../App/PortMaster/gamecontrollerdb.txt"
./gptokeyb -k "ffplay" -c "$GAMEDIR/ffplay.gptk" &
HOME=./ LD_LIBRARY_PATH="lib:$LD_LIBRARY_PATH" SDL_GAMECONTROLLERCONFIG_FILE="/opt/inttools/gamecontrollerdb.txt" $GAMEDIR/ffplay -fs -autoexit -codec:v h264_rkmpp -i "$1"
kill -9 $(pidof gptokeyb)
fi
kill -9 $(pidof gptokeyb)
