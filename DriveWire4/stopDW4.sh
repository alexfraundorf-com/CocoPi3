#!/bin/bash

cd $HOME/.mame

echo "Stopping DriveWire 4 daemon..."
echo ""

kill $(ps aux | grep 'DW4UI' | awk '{print $2}')

cd $HOME/.mame

