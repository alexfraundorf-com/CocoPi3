#!/bin/sh

# NOTE: if DriveWire fails with a fatal error referencing libsoup, try this instead:
#
#java -XX:+UseConcMarkSweepGC -Dorg.eclipse.swt.browser.DefaultType=mozilla -jar DW4UI.jar --backup &

/usr/bin/java -XX:+UseConcMarkSweepGC -jar DW4UI.jar --backup &
 
