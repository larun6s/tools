#!/bin/bash
log="/Users/arunlingala/dev/tools/logs/amp.log"
exec >>$log 2>&1
echo
date

# Shopuld install /opt/homebrew/bin/blueutil

function on() {
  echo 'Turning OFF Wi-Fi';
  /usr/sbin/networksetup -setnetworkserviceenabled Wi-Fi off;
  echo 'Turning OFF Bluetooth';
  /opt/homebrew/bin/blueutil --power 0;
  #statements
}

function off() {
  echo 'Turning ON Wi-Fi';
  /usr/sbin/networksetup -setnetworkserviceenabled Wi-Fi on;
  echo 'Turning ON Bluetooth';
  /opt/homebrew/bin/blueutil --power 1;
  #statements
}

# TODO : What about location services?

if [ "$1" -eq "1" ]; then
  on;
  exit 0;
fi

if [ "$1" -eq "0" ]; then
  off;
  exit 0;
fi

exit 1;
