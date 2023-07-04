#!/bin/bash

DATE=$(date +'screenshot_%Y-%m-%d-%H%M%S.png')
SCREENSHOT_PATH=$(xdg-user-dir SCREENSHOTS)/$DATE

slurp | grim -g - $SCREENSHOT_PATH
wl-copy < $SCREENSHOT_PATH
