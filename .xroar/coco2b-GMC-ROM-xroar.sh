#!/bin/bash

cd $HOME/.xroar

XROARPARMSFILE=`cat $HOME/.xroar/.optional_xroar_parameters.txt`
export XROARPARMS=$XROARPARMSFILE

clear

    echo " TRS-80 Color Computer 2 w/64K RAM with Game Master Cartridge" > msg.txt
    echo " and direct ROM loading\n" >> msg.txt
    echo " Use Mount ROM image option in menu prior to using\n\n" >> msg.txt

    whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
    rm msg.txt


if [ -e $HOME/.xroar/.xroar_rom ]
then
    rom=`cat $HOME/.xroar/.xroar_rom`

    if [ -e "$rom" ]
    then

   	echo "ROM save file found - automounting [$rom]"
    	echo
    	read -p  "Press any key to continue." -n1 -s
    	echo

	xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -cart gmc -cart-rom "$rom" $XROARPARMS

    else

  	echo "ROM image [$rom] not found in ROM save file.  Aborting."
	echo
	echo "Please run \"Clear all saved mount files\" on Utilities Menu."
    	echo
    	read -p  "Press any key to continue." -n1 -s
    	echo

    fi

else

    xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -cart gmc -no-cart-autorun $XROARPARMS
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
