#!/bin/bash

cd $HOME/.xroar

clear

    echo " TRS-80 Color Computer 2 w/64K RAM with Game Master Cartridge" > msg.txt
    echo " and direct BIN loading\n" >> coco2b-GMC-BIN-xroar.txt
    echo " Use Mount BIN image option in menu prior to using\n\n" >> msg.txt

    whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
    rm msg.txt


if [ -e $HOME/.xroar/.xroar_bin ]
then
    bin=`cat $HOME/.xroar/.xroar_bin`

    if [ -e "$bin" ]
    then

    	echo "BIN save file found - automounting [$bin]"
    	echo
    	read -p  "Press any key to continue." -n1 -s
    	echo

	startx /usr/local/bin/xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -cart gmc -no-cart-autorun "$bin"

    else

	echo "BIN image [$bin] not found in BIN save file.  Aborting."
	echo
	echo "Please run \"Clear all saved mount files\" on Utilities Menu."
    	echo
    	read -p  "Press any key to continue." -n1 -s
    	echo

    fi

else

    startx /usr/local/bin/xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -cart gmc -no-cart-autorun
fi

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
