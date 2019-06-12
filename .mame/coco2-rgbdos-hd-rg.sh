clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 2 w/64K RAM \n\n \
RGBDOS with Robert Gault's hard drive image.\n\n \
This image includes 255 virtual RSDOS floppies.\n\n \
Please read 'Virtual Hard Drive.txt' in\n \
/media/share1/EMU/VHD for disk contents.\n\n" > msg.txt 

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

mame coco2 -ramsize 64k -cart /media/share1/roms/RGBDOS2HD.ROM -hard1 /media/share1/EMU/VHD/VCCEmuDisk.vhd -ext fdcv11 $MAMEPARMS

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
