#!/usr/bin/env bash

sketchybar --add event aerospace_workspace_change
sketchybar --add event aerospace_monitor_change

for sid in $(aerospace list-workspaces --all); do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    display="$(
      v=$(aerospace list-windows --workspace "$sid" --format "%{monitor-appkit-nsscreen-screens-id}" | cut -c1)
      echo "${v:-1}"
    )" \
    background.corner_radius=5 \
    background.border_width=0 \
    icon="$sid" \
    label.font="sketchybar-app-font:Regular:16.0" \
    click_script="aerospace workspace $sid" \
    script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
