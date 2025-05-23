#!/bin/bash

RETROARCH64_DIR="../../RetroArch/.config/retroarch"
RETROARCH32_DIR="../../RetroArch32/.config/retroarch"

# RetroArch 64-bit
if [ -f "$RETROARCH64_DIR/shaders/00_pixel.glslp.bak" ] || \
   [ -f "$RETROARCH64_DIR/overlays/default.cfg.bak" ] || \
   [ -d "$RETROARCH64_DIR/overlays/arcade.bak" ]; then
  mv "$RETROARCH64_DIR/shaders/00_pixel.glslp.bak" "$RETROARCH64_DIR/shaders/00_pixel.glslp" 2>/dev/null
  mv "$RETROARCH64_DIR/overlays/default.cfg.bak" "$RETROARCH64_DIR/overlays/default.cfg" 2>/dev/null
  mv "$RETROARCH64_DIR/overlays/arcade.bak" "$RETROARCH64_DIR/overlays/arcade" 2>/dev/null
else
  mv "$RETROARCH64_DIR/shaders/00_pixel.glslp" "$RETROARCH64_DIR/shaders/00_pixel.glslp.bak" 2>/dev/null
  mv "$RETROARCH64_DIR/overlays/default.cfg" "$RETROARCH64_DIR/overlays/default.cfg.bak" 2>/dev/null
  mv "$RETROARCH64_DIR/overlays/arcade" "$RETROARCH64_DIR/overlays/arcade.bak" 2>/dev/null
fi

# RetroArch 32-bit
if [ -f "$RETROARCH32_DIR/shaders/00_pixel.glslp.bak" ] || \
   [ -f "$RETROARCH32_DIR/overlays/default.cfg.bak" ]; then
  mv "$RETROARCH32_DIR/shaders/00_pixel.glslp.bak" "$RETROARCH32_DIR/shaders/00_pixel.glslp" 2>/dev/null
  mv "$RETROARCH32_DIR/overlays/default.cfg.bak" "$RETROARCH32_DIR/overlays/default.cfg" 2>/dev/null
else
  mv "$RETROARCH32_DIR/shaders/00_pixel.glslp" "$RETROARCH32_DIR/shaders/00_pixel.glslp.bak" 2>/dev/null
  mv "$RETROARCH32_DIR/overlays/default.cfg" "$RETROARCH32_DIR/overlays/default.cfg.bak" 2>/dev/null
fi