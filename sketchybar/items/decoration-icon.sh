#!/usr/bin/env bash

sketchybar --add item hostname left \
           --set hostname icon="◤" \
           click_script="${CONFIG_DIR}/helper/open-other.sh ~/Desktop/Main/"
