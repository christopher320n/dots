#!/bin/bash

sketchybar --add item front_app left \
    --set front_app icon.drawing=off label.padding_left=14 label.max_chars=14 scroll_texts=on padding_right=5 script="$PLUGIN_DIR/front_app.sh" \
    click_script="${CONFIG_DIR}/helper/open-app.sh" \
    --subscribe front_app front_app_switched
