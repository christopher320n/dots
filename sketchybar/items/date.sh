#!/usr/bin/env bash

sketchybar --add item date center
sketchybar --set date update_freq=1 script="${CONFIG_DIR}/plugins/date.sh" \
           click_script="${CONFIG_DIR}/helper/open-app.sh; open -a Calendar.app"

