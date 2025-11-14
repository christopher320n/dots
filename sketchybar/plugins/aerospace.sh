#!/usr/bin/env bash

source "${CONFIG_DIR}/themes/e-ink.sh"

#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

sketchybar --add event aerospace_workspace_change
sketchybar --add event aerospace_monitor_change


for sid in $(aerospace list-workspaces --focused); do
  sketchybar --set $NAME icon="$sid" icon.color=${COLOUR_TEXT}
done
