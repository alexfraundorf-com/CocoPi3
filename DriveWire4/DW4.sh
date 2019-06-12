#!/bin/sh

# NOTE: if DriveWire fails with a fatal error referencing libsoup, try this instead:
#
# java -XX:+UseConcMarkSweepGC -Dorg.eclipse.swt.browser.DefaultType=mozilla -jar DW4UI.jar --backup &

cd /home/pi/DriveWire4
java -XX:+UseConcMarkSweepGC -jar DW4UI.jar --backup --noui > /dev/null 2>&1 &
