clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/512K RAM using Drivewire 4\n\n \
Make sure Drivewire is running\n\n \
PLATO client will autoload & run.\n\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

java -jar $HOME/DriveWire4/DW4CLI.jar --instance="0" -command='dw disk eject 0'
java -jar $HOME/DriveWire4/DW4CLI.jar --instance="0" -command='dw disk insert 0 /media/share1/DW4/GORDON/plato.dsk'

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

java -jar $HOME/DriveWire4/DW4CLI.jar --instance="0" -command='dw disk eject 0'

cd $HOME/.mame
CocoPi3-menu-Coco3.sh

