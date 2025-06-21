#!/usr/bin/env bash

sketchybar --add item time right
sketchybar --set time update_freq=60 script="${CONFIG_DIR}/plugins/time.sh" \
             click_script="${CONFIG_DIR}/helper/open-other.sh x-apple.systempreferences:com.apple.preference.datetime"

