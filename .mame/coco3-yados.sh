clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/2MB RAM using YA-DOS\n\n" >> msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

mame coco3 -ramsize 2048k -cart /media/share1/roms/yados.rom $MAMEPARMS

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
CocoPi3-menu-Coco3.sh
