clear

echo -e "Restore any existing paired Bluetooth controller settings" > msg.txt
echo -e >> msg.txt
echo -e "This script will restore an archived copy of your Bluetooth pairings" >> msg.txt
echo -e "from /media/share1/bluetooth_pairings.tgz." >> msg.txt
echo -e >> msg.txt
echo -e "WARNING - this will overwrite any existing pairings!" >> msg.txt
echo -e >> msg.txt
echo -e >> msg.txt

whiptail --title "Restore Bluetooth Settings" --textbox msg.txt 0 0
rm msg.txt

if [ -e /media/share1/bluetooth_pairings.tgz ]
then

        sudo tar xzf /media/share1/bluetooth_pairings.tgz -C /

else

        echo
        echo
        echo
        echo "No archived Bluetooth settings file found."
        echo
        read -p  "Press any key to continue." -n1 -s

fi

cd $HOME/.mame

