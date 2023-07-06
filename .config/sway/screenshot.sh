#!/bin/bash

MODE=$1
DATE=$(date +'screenshot_%Y-%m-%d-%H%M%S.png')
if [ $1 == "save" ]
then
	SCREENSHOT_PATH=$(xdg-user-dir SCREENSHOTS)/$DATE
else
	SCREENSHOT_PATH=/tmp/$DATE
fi

slurp | grim -g - $SCREENSHOT_PATH
wl-copy < $SCREENSHOT_PATH
