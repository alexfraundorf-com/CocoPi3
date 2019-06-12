clear

cd $HOME/.xroar

echo " TRS-80 Color Computer 2 w/64K RAM using YA-DOS\n\n" > msg.txt

whiptail --title "XRoar Emulator" --textbox msg.txt 0 0
rm msg.txt

cd $HOME/.xroar
#xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -machine-cart yados -ao-fragments 1
xroar -c $HOME/.xroar/xroar.conf -default-machine coco2bus -machine-cart yados

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