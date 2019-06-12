#!/bin/bash

cd $HOME/.xroar

clear

    echo " TRS-80 Color Computer 2 w/64K RAM with Game Master Cartridge" > msg.txt
    echo " and direct CASSETTE loading\n" >> msg.txt
    echo " Use Mount cassette image option in menu prior to using\n\n" >> msg.txt

    whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
    rm msg.txt


if [ -e $HOME/.xroar/.xroar_cassette ]
then
    cassette=`cat $HOME/.xroar/.xroar_cassette`

    if [ -e "$cassette" ]
    then

    	echo "CASSETTE save file found - automounting [$cassette]"
    	echo
    	read -p  "Press any key to continue." -n1 -s
    	echo

	startx /usr/local/bin/xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -cart gmc -no-cart-autorun -run "$cassette"

    else

   	echo "CASSETTE image [$cassette] not found in CASSETTE save file.  Aborting."
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
