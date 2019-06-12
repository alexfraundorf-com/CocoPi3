clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/2MB RAM using pyDrivewire\n\n \
Make sure pyDrivewire is running\n\n \
Enter the command DOS to load NitrOS9.\n\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 0

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk insert 0 /media/share1/EMU/NITROS9/NOS9_6809_L2_v030300_coco3_becker.dsk

mame coco3dw1 -ramsize 2048k $MAMEPARMS

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

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 0

cd $HOME/.mame
CocoPi3-menu-Coco3.sh

