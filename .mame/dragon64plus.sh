clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Dragon 64 Plus w/64K RAM\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

if [ -e $HOME/.mame/.mame_floppy ]
then
    floppy=`cat $HOME/.mame/.mame_floppy`

    if [ -e "$floppy" ]
    then

        echo "Floppy save file found - automounting \"$floppy\""
        echo
        read -p  "Press any key to continue." -n1 -s
        echo

	mame d64plus -ramsize 64k -flop1 "$floppy" $MAMEPARMS

    else

        echo "Floppy disk image [$floppy] not found in floppy save file.  Aborting."
        echo
        echo "Please run \"Clear all saved mount files\" on Utilities Menu."
        echo
        read -p  "Press any key to continue." -n1 -s
        echo

    fi

else

    mame d64plus -ramsize 64k $MAMEPARMS

fi

# capture MAME ERRORLEVEL

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
CocoPi3-menu-Dragon.sh
