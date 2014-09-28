#!/bin/sh
case "$SRANDRD_ACTION" in
 "HDMI1 connected") 
 "VGA-0 connected") xrandr --output VGA-0 --auto --left-of LVDS;;
esac
