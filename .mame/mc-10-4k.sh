clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

echo " TRS-80 Micro Color Computer w/4K RAM\n\n" > 7.txt

whiptail --title "MAME Emulator" --textbox 7.txt 0 0
rm 7.txt

mame mc10 -ramsize 4k $MAMEPARMS

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
CocoPi3-menu-MC10.sh
