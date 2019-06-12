clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/512K RAM using standard DECB,\n" > msg.txt
echo " Tandy MPI and a Deluxe RS-232 Pak in SLOT 1\n\n" >> msg.txt
echo " Twilight Term will be automatically loaded.\n\n" >> msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

# Use this for a Coco 3 using a Deluxe RS-232 Pak and MultiPak Interface at 1200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration)
mame coco3h -ramsize 512k -ext multi -ext:multi:slot1 rs232 -ext:multi:slot1:rs232:port null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/COMM/TWITERM.DSK -autoboot_delay 2 -autoboot_command 'LOADM"TWI-TERM.BIN":EXEC\n' $MAMEPARMS > /dev/null

# Not working at the moment
#mame coco3 -ramsize 512k -ext multi -ext:multi:slot1 rs232 -ext:multi:slot1:rs232:port null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/TAYLOR/netmate.dsk -autoboot_delay 2 -autoboot_command 'LOADM"NET.BIN"\n' $MAMEPARMS -debug > /dev/null

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
