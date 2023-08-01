#!/bin/bash

TARGET_COLOR=$1

TARGET_FILE=$TARGET_COLOR.png

cp base.png $TARGET_FILE

for color in $(cat colors.txt); do
	convert $TARGET_FILE -fill $TARGET_COLOR -opaque $color $TARGET_FILE;
done
