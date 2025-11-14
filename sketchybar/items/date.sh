#!/usr/bin/env bash

sketchybar --add item date right
sketchybar --set date update_freq=1 script="${CONFIG_DIR}/plugins/date.sh" \
                 padding_right=-14 \
                 click_script="open -a Calendar.app"

