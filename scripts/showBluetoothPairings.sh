clear

echo -e "Show any existing paired Bluetooth controller settings" > msg.txt
echo -e >> msg.txt
echo -e "Existing pairing(s):" >> msg.txt
echo -e >> msg.txt

sudo find /var/lib/bluetooth/ -name info -exec cat {} + | grep Name >> msg.txt
echo -e >> msg.txt
echo -e >> msg.txt

whiptail --title "Backup Bluetooth Settings" --textbox msg.txt 0 0
rm msg.txt

cd $HOME/.mame

