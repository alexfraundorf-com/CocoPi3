clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/2MB RAM using pyDriveWire\n\n \
Make sure pyDriveWire is running and\n \
select option 2 at the menu to boot Fuzix.\n\n \
Enter 'dw1' at the 'bootdev' prompt.\n\n \
Please make sure to use the 'shutdown' command prior\n \
to exiting Fuzix to avoid file system corruption.\n\n \
Wait for the 'halted' response before exiting MAME.\n\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

cd $HOME/pyDriveWire

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw server hdbdos 0

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 0
$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 1

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk insert 0 /media/share1/DW4/GORDON/FUZIX/boot.dsk
$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk insert 1 /media/share1/DW4/GORDON/FUZIX/fuzixfs.dsk

cd $HOME/.mame
mame coco3dw1 -ramsize 2048k -autoboot_delay 2 -autoboot_command '2' $MAMEPARMS

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

cd $HOME/pyDriveWire
$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 0
$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 1

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw server hdbdos 1

cd $HOME/.mame
CocoPi3-menu-Coco3.sh
