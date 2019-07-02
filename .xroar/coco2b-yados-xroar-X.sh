|clear

cd $HOME/.xroar

XROARPARMSFILE=`cat $HOME/.xroar/.optional_xroar_parameters.txt`
export XROARPARMS=$XROARPARMSFILE

echo " TRS-80 Color Computer 2 w/64K RAM using YA-DOS (X-Windows)\n\n" > msg.txt

whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
rm msg.txt

cd $HOME/.xroar
#startx /usr/bin/xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -machine-cart yados -ao-fragments 1
startx /usr/bin/xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -machine-cart yados $XROARPARMS

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
