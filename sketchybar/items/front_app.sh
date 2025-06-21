#!/bin/bash

sketchybar --add item front_app left \
    --set front_app icon.drawing=off label.padding_right=20 label.max_chars=14 scroll_texts=on  script="$PLUGIN_DIR/front_app.sh" \
    --subscribe front_app front_app_switched
