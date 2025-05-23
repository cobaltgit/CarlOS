#!/bin/bash
BASE=$0
CORETEMP=${BASE##*/}
CORE=${CORETEMP%%.*}
FULLMODE=0
echo $CORE > $(dirname $0)/8.txt
$(dirname $0)/launch_32.sh "$1" "$CORE" "$FULLMODE"

