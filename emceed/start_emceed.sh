clear

echo
echo
echo
echo
echo
echo
echo
echo
echo
echo

echo -e "emceed is an MC-10 file server that uses the bit-banger (serial) port" > msg.txt
echo -e "and requires a real MC-10 with the MCX-128 cartridge." >> msg.txt
echo -e >> msg.txt
echo -e "A Drivewire cable is compatible with emceed.  In addition, you will" >> msg.txt
echo -e "need a serial to USB adapter to connect it to the RPi3." >> msg.txt
echo -e >> msg.txt
echo -e "It is recommended you switch to an alternate console screen" >> msg.txt
echo -e "by using [ALT][F2] through [ALT][F6] and run this command from there." >> msg.txt

whiptail --title "emceed File Server" --textbox msg.txt 0 0

cd $HOME/emceed

# change this USB device port based on your configuration
./emceed /dev/ttyUSB0 &

cd $HOME/.mame
