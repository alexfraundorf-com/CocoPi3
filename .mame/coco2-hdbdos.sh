clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " TRS-80 Color Computer 2 w/64K RAM using HDB-DOS\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

mame coco2 -ramsize 64k -cart /media/share1/roms/hdbdw3bck.rom $MAMEPARMS

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
CocoPi3-menu-Coco2.sh
