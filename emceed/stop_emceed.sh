#!/bin/bash

echo "Stopping emceed file server..."
echo ""

kill $(ps aux | grep 'emceed' | awk '{print $2}')

cd $HOME/.mame


