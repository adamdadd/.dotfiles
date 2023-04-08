#!/bin/bash

while true; do
    H=$(date +%k)
    if (( 8 <= H && H < 17 )); then
        feh --no-fehbg --bg-fill "/home/adam/solarsystem.png" &> /dev/null
    else
        feh --no-fehbg --bg-fill "/home/adam/owl.webp" &> /dev/null
    fi
    sleep 2400
done &

conky &> /dev/null
