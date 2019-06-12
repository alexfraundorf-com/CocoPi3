#!/bin/bash

cd $HOME/.mame

echo "Restarting DriveWire 4 daemon..."
echo ""

kill $(ps aux | grep 'DW4UI' | awk '{print $2}')

cd $HOME/DriveWire4
./DW4.sh

sleep 3s

cd $HOME/.mame

