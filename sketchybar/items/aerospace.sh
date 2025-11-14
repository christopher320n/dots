#!/usr/bin/env bash

sketchybar --add event aerospace_workspace_change
sketchybar --add event aerospace_monitor_change

for sid in $(aerospace list-workspaces --focused); do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    icon="$sid" \
    label.font="sketchybar-app-font:Regular:16.0" \
    click_script="aerospace workspace $sid" \
    script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
