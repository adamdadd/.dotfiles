#!/bin/bash

turnon() {
    # ps aux | ag picom | awk '{print $2}' | xargs -L1 kill -9 &> /dev/null
    # ps aux | ag conky | awk '{print $2}' | xargs -L1 kill -9 &> /dev/null
    ps aux | ag polybar | awk '{print $2}' | xargs -L1 kill -9 &> /dev/null
    echo "ON" > $HOME/.gamez
}


turnoff() {
    exec $HOME/bar.sh &
    # picom -b &> /dev/null
    # conky &> /dev/null
    echo "OFF" > $HOME/.gamez
}


if [[ $(cat $HOME/.gamez) == "OFF" || $(cat $HOME/.gamez) == "" ]]; then
    echo "Turning ON game mode ...";
    turnon;
    exit 0;
fi

if [[ $(cat $HOME/.gamez) == "ON" ]]; then
    echo "Turning OFF game mode ...";
    turnoff;
    exit 0;
fi

exit 1
