clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 2 w/64K RAM using YA-DOS & Hard Drive\n\n \
 Use the following YA-DOS commands to properly set up drivers and\n \
 mount disk images for DW and virtual IDE (floppy) drives:\n\n \
 DRIVE I 0,1,3 - Device 1 driver is for DW\n \
 DRIVE I 1,5,3 - Device 2 driver is for HD\n\n \
 DRIVE M 0,1,0,0 - DRIVE0 is HD, disk 0, partition 0\n \
 DRIVE M 1,0,0   - DRIVE1 is DW, disk 0\n \
 DRIVE M 2,0,1   - DRIVE2 is DW, disk1\n\n \
 Make sure HDBDOS translation is set to OFF when\n \
 using pyDriveWire\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

mame coco2 -ramsize 64k -cart /media/share1/roms/yados.rom -hard1 /media/share1/EMU/VHD/YADOS-256MB-CF-SuperIDE.img $MAMEPARMS

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


















