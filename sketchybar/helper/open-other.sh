#!/usr/bin/env bash

source "${CONFIG_DIR}/themes/catppuccin-macchiato.sh"

ARGS=$1

sketchybar --set $NAME background.color="${_SSDF_CM_SURFACE_0}" \
                       background.height=25 \
                       background.corner_radius=5 \

open ${ARGS}

sleep .05

sketchybar --set $NAME background.color=none \
                       background.height=25 \
                       background.corner_radius=5 \




