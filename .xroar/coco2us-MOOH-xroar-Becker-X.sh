#!/bin/bash

cd $HOME/.xroar

clear

    echo " TRS-80 Color Computer 2 w/512K RAM using a MOOH\n" > msg.txt
    echo " Hold the SHIFT key to ignore the SD card. Hold the BREAK key to" >> msg.txt
    echo " load an alternate kernel (sector 192 instead of 64).\n\n" >> msg.txt
    echo " When using the prebuilt dual-boot image, NitrOS-9 will boot" >> msg.txt
    echo " by default, and FUZIX will boot if BREAK is held at power-on.\n\n" >> msg.txt
    echo " NitrOS9 has DriveWire/Becker support added.  Hit [ENTER]" >> msg.txt
    echo " at 'Date' prompt to pull current time.\n\n" >> msg.txt
    echo " Enter a '1' at the 'bootdev' prompt." >> msg.txt
    echo " Please make sure to use the 'telinit 6' command to shutdown" >> msg.txt
    echo " Fuzix correctly to avoid file system corruption.\n" >> msg.txt
    echo " Wait for the 'halted' response before closing XRoar.\n\n" >> msg.txt

    whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
    rm msg.txt

    # link to proper SD card image
    rm sdcard.img
    ln -s sdcard-dualboot-co42-DW-ronklein.img sdcard.img


# DW disk image way
   startx /usr/local/bin/xroar -default-machine cocous -cart mooh -cart-becker -run kernel_65spi.bin

# capture XRoar ERRORLEVEL

if [ $? -eq 0 ]
then
        echo

else
        echo
        echo "Please make note of message above when requesting help."
        echo
        read -p  "Press any key to continue." -n1 -s
fi

cd $HOME/.mame
CocoPi3-menu-Coco2-XRoar.sh
exit

