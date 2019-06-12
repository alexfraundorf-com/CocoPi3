clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " Tandy Color Computer 3 w/512K RAM using standard DECB
 with a GameMaster cartridge\n
 Please disable the Becker port in Mame to hear sound.\n\n" > msg.txt

whiptail --title "MAME Emulator" --textbox msg.txt 0 0
rm msg.txt

# disable Becker port
cp $HOME/.mame/cfg/coco3.cfg.beckerport.disabled $HOME/.mame/cfg/coco3.cfg

mame coco3 -ext games_master -cart /media/share1/roms/cocofest.rom $MAMEPARMS

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

# enable Becker port
cp $HOME/.mame/cfg/coco3.cfg.beckerport.enabled $HOME/.mame/cfg/coco3.cfg

cd $HOME/.mame
CocoPi3-menu-Coco3.sh
