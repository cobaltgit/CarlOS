#!/bin/sh

# --- Path Configuration ---
PORTS_DIR="$(dirname "$0")/../../Roms/PORTS"  # Base folder for ports (where .sh files are stored)
LAUNCHERS_DIR="$(dirname "$0")/../../Emu/PORT32"  # Folder containing launchers (Launch.sh/launchPM.sh)

# --- Full path of the game to launch ---
GAME_FULL_PATH="$1"
GAME_NAME="$(basename "$GAME_FULL_PATH")"

# --- Launcher Selection (CASE) ---
case "$GAME_NAME" in
    "AM2R.sh"|"ShovelKnight.sh")  # Games requiring 32-bit (customize this list)
        LAUNCHER="$LAUNCHERS_DIR/launchP32.sh"
        ;;
    *)  # All other games (default PortMaster launcher)
        LAUNCHER="$LAUNCHERS_DIR/launchPM.sh"
        ;;
esac

# --- Execution ---
"$LAUNCHER" "$GAME_FULL_PATH"
