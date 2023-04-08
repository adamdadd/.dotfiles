#!/bin/bash

xrandr --output DP-1 --primary --mode 2560x1440 --rate 144.00 --output DP-2 --mode 1920x1080 --rate 60.0 --rotate right --right-of DP-1 --output HDMI-1 --mode 1920x1080 --rate 60.0 --rotate right --right-of DP-2 &> /dev/null &
