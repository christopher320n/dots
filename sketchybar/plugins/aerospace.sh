#!/usr/bin/env bash

source "${CONFIG_DIR}/themes/e-ink.sh"

#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

sketchybar --add event aerospace_workspace_change
sketchybar --add event aerospace_monitor_change

for sid in $(aerospace list-workspaces --focused); do
  sketchybar --set $NAME \
             icon="A-$sid" \
             icon.color=${COLOUR_TEXT} \
             #background.color=${COLOUR_TEXT} \
             background.height=2 \
             background.y_offset=-10 \
             background.corner_radius=10 \
             background.x_offset=-7 \
             icon.padding_left=-5 \
             icon.padding_right=-5
done
