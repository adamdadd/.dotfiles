#!/bin/bash

PARAMS=""

turn_on() {
    sudo systemctl enable bluetooth &&
    echo "Starting bluetooth service..." &&
    sudo systemctl start bluetooth &&
    sleep 2 &&
    sudo bluetoothctl power on
}

con_pixel() {
    echo "Attempting connection to pixel buds device..."
    sudo bluetoothctl connect B8:7B:D4:06:A0:F9
}

con_pixel2() {
    echo "Attempting connection to pixel buds 2 device..."
    sudo bluetoothctl connect 74:74:46:1D:DA:B3 
}

discon() {
    echo "Stopping bluetooth service" &&
    sleep 2 &&
    sudo systemctl stop bluetooth
}


while (( "$#" )); do
  case "$1" in
    -c|--connect)
      turn_on
      con_pixel 2> /dev/null
      con_pixel2
      shift
      ;;
    -d|--disconnect)
      discon
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments
      PARAMS="$PARAMS $1"
      shift
      ;;
  esac
done

# set positional arguments in their proper place
eval set -- "$PARAMS"
