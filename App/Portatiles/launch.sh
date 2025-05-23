#!/bin/bash
RETROARCH_DIR="../../RetroArch/.config/retroarch"
SHADER_DIR="$RETROARCH_DIR/shaders/shaders_glsl/handheld"

# Overlays específicos de portátiles (lista completa)
OVERLAYS=(
    DMG.cfg DMGpixel.cfg GBA.cfg lynx.cfg NGP.cfg NGPC.cfg
    supervision.cfg Arduboy.cfg pico8.cfg GBC.cfg tic80.cfg
    virtualboy.cfg pokemini.cfg wsvertical.cfg wshori.cfg lynxv.cfg
)

# Función para toggle de archivos
toggle_file() {
    local file="$1"
    if [ -f "${file}.bak" ]; then
        mv "${file}.bak" "$file" 2>/dev/null
    else
        mv "$file" "${file}.bak" 2>/dev/null
    fi
}

# Toggle para shader handheld
if [ -d "$SHADER_DIR.bak" ]; then
    mv "$SHADER_DIR.bak" "$SHADER_DIR" 2>/dev/null
else
    mv "$SHADER_DIR" "$SHADER_DIR.bak" 2>/dev/null
fi

# Toggle para todos los overlays
for overlay in "${OVERLAYS[@]}"; do
    toggle_file "$RETROARCH_DIR/overlays/$overlay"
done