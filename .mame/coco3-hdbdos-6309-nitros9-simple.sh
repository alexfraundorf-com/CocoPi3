clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/2MB RAM, 6309 and HDB-DOS\n\n \
This is used for NitrOS9 "Ease of Use" testing\n \
No need to use DOS command as NitrOS9 will auto load.\n\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

mame coco3h -ramsize 2048k -flop1 /media/share1/EMU/EOU/63emu.dsk -hard1 /media/share1/EMU/EOU/63sdc.vhd -autoboot_delay 2 -autoboot_command 'DOS\n' $MAMEPARMS

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
menu
