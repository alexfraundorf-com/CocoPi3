clear

echo -e "Backup any existing paired Bluetooth controller settings" > msg.txt
echo -e >> msg.txt
echo -e "This script will place an archived copy of your Bluetooth pairings" >> msg.txt
echo -e "into /media/share1/bluetooth_pairings.tgz." >> msg.txt
echo -e >> msg.txt
echo -e "Existing pairing(s):" >> msg.txt
echo -e >> msg.txt

sudo find /var/lib/bluetooth/ -name info -exec cat {} + | grep Name >> msg.txt
echo -e >> msg.txt
echo -e >> msg.txt

whiptail --title "Backup Bluetooth Settings" --textbox msg.txt 0 0
rm msg.txt

sudo tar zcf /media/share1/bluetooth_pairings.tgz /var/lib/bluetooth

cd $HOME/.mame

