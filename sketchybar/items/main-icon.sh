#!/usr/bin/env bash

source "${CONFIG_DIR}/themes/catppuccin-macchiato.sh"

sketchybar --add item main.icon left                                                      \
              --set main.icon icon=􀝜                                                       \
                               icon.padding_right=-7 \
                               script="sketchybar -m --set main.icon popup.drawing=off" \
                               click_script="${CONFIG_DIR}/helper/open-app.sh; sketchybar -m --set \$NAME popup.drawing=toggle" \
                               popup.background.drawing=on \
                               popup.background.border_width=5                                \
                               popup.background.corner_radius=7                                \
                               popup.background.color="${_COLOUR_BACKGROUND_MAIN_TRANS}" \
                               popup.background.border_color="${_COLOUR_BORDER}" \
                               popup.topmost=on \
                               popup.y_offset=0 \
                               popup.blur_radius=32 \
                               --subscribe main.icon mouse.exited.global \
                                                                                              \
              --add item browser popup.main.icon                                      \
              --set browser icon=􀎭                                                     \
                               padding_left=10\
                               padding_right=10\
                               label="LibreWolf"                                               \
                               label.padding_left=20 \
                               y_offset=-5\
                               click_script="open -a 'LibreWolf';                       
                                             sketchybar -m --set main.icon popup.drawing=off"\
              --add item terminal popup.main.icon                                      \
              --set terminal icon=􂫌                                                    \
                               padding_left=10\
                               padding_right=10\
                               label="Terminal"                                               \
                               label.padding_left=20 \
                               y_offset=-5\
                               click_script="open -a 'kitty';                       
                                             sketchybar -m --set main.icon popup.drawing=off"\
              --add item finder popup.main.icon                                      \
              --set finder icon=􀈘                                                    \
                               padding_left=10\
                               padding_right=10\
                               label="Finder"                                               \
                               label.padding_left=20 \
                               y_offset=-5\
                               click_script="open -a 'Finder';                       
                                             sketchybar -m --set main.icon popup.drawing=off"\
              --add item discord popup.main.icon                                      \
              --set discord icon=􀌧                                                     \
                               padding_left=10\
                               padding_right=10\
                               label="Discord"                                               \
                               label.padding_left=20 \
                               y_offset=-5\
                               click_script="open -a 'Discord';                       
                                             sketchybar -m --set main.icon popup.drawing=off"\
              --add item settings popup.main.icon                                   \
              --set settings icon=􀺽                                                  \
                               padding_left=10\
                               padding_right=10\
                               label="Settings"                                            \
                               label.padding_left=20 \
                               y_offset=-5\
                               click_script="open -a 'System Preferences';                    
                                             sketchybar -m --set main.icon popup.drawing=off"\
              --add item separator popup.main.icon                                          \
              --set separator icon=""                                                        \
                               padding_left=5 \
                               padding_right=-5 \
                               label="━━━━━━━━━━━"                                            \
                               background.color=none \
                               y_offset=-4\
              --add item lock popup.main.icon                                          \
              --set lock icon=􀒳                                                         \
                               padding_left=10 \
                               padding_right=10 \
                               label="Lock Screen"                                            \
                               label.padding_left=20 \
                               y_offset=5\
                               click_script="pmset displaysleepnow;                           
                                             sketchybar -m --set main.icon popup.drawing=off"

