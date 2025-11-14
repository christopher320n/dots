#!/usr/bin/env bash

source "${CONFIG_DIR}/themes/e-ink.sh"

#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME icon.color=${COLOUR_TEXT}
else
  sketchybar --set $NAME icon.color=none
fi
