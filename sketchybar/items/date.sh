#!/usr/bin/env bash

sketchybar --add item date center
sketchybar --set date update_freq=60 script="${CONFIG_DIR}/plugins/date.sh"
