clear

cd $HOME/.xroar

echo " TRS-80 Color Computer 2 w/64K RAM using standard DECB\n \
with 20 second timeout for testing emulation speed\n\n" > msg.txt

whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
rm msg.txt

#time xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -ao-fragments 1 -timeout 20
time xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -timeout 20
read -n 1 -s -r -p "Press any key to continue"

cd $HOME/.mame
CocoPi3-menu-Coco2-XRoar.sh
