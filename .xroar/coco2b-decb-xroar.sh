#!/bin/bash

cd $HOME/.xroar

clear

    echo " TRS-80 Color Computer 2 w/64K RAM using standard DECB\n\n" > msg.txt

    whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
    rm msg.txt


if [ -e $HOME/.xroar/.xroar_floppy ]
then
    floppy=`cat $HOME/.xroar/.xroar_floppy`

    if [ -e "$floppy" ]
    then

      echo "FLOPPY save file found - automounting [$floppy]"
      echo
      read -p  "Press any key to continue." -n1 -s
      echo

      #xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -ao-fragments 1 -load "$floppy"
      xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -load "$floppy"

    else

      echo "FLOPPY image [$floppy] not found in FLOPPY save file.  Aborting."
      echo
      echo "Please run \"Clear all saved mount files\" on Utilities Menu."
      echo
      read -p  "Press any key to continue." -n1 -s
      echo

    fi

else

    xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus

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
