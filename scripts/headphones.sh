#!/bin/bash

PARAMS=""

turn_on() {
    sudo systemctl enable bluetooth &&
    echo "Starting bluetooth service..." &&
    sudo systemctl start bluetooth &&
    sleep 2 &&
    sudo bluetoothctl power on
}

con_q45() {
    echo "Attempting connection to sony device..."
    sudo bluetoothctl connect E8:EE:CC:6E:B4:5A
}

con_sony() {
    echo "Attempting connection to sony device..."
    sudo bluetoothctl connect 90:7A:58:3D:E6:88
}

dis_sony() {
    echo "Attempting disconnection to sony device..."
    sudo bluetoothctl disconnect 90:7A:58:3D:E6:88 &
}

con_JVC() {
    echo "Attempting connection to JVC device..."
    sudo bluetoothctl connect 4C:FE:2E:0B:D2:E5
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
      con_q45
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
