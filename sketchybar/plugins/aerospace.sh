#!/usr/bin/env bash

source "${CONFIG_DIR}/themes/catppuccin-frappe.sh"

_SSDF_WS_ID=$1
_SSDF_WS_FOCUSED="${FOCUSED_WORKSPACE}"
if [[ -z "${_SSDF_WS_FOCUSED}" ]]; then
    _SSDF_WS_FOCUSED=$(aerospace list-workspaces --focused)
fi

sketchybar -m --set main.icon popup.drawing=off

if [ "${_SSDF_WS_ID}" = "${_SSDF_WS_FOCUSED}" ]; then
    sketchybar --set $NAME \
        background.color="${_SSDF_CM_SUBTEXT_1}"
else
    sketchybar --set $NAME background.drawing=off \
        background.color=none
fi
