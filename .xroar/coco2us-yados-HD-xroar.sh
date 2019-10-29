clear

cd $HOME/.xroar

XROARPARMSFILE=`cat $HOME/.xroar/.optional_xroar_parameters.txt`
export XROARPARMS=$XROARPARMSFILE

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

cd $HOME/.xroar

# link to proper sdcard.img
    rm hd0.img
    ln -s /media/share1/EMU/VHD/hdd-2gb-emuonly.img hd0.img

#xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -machine-cart yados -ao-fragments 1
xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -machine-cart yados $XROARPARMS

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
exit











