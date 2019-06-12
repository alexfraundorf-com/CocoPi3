cd $HOME/.mame

export NEWT_COLORS='
root=black,black
border=black,black
window=black,black
shadow=black,black
title=brightgreen,black
button=white,black
actbutton=black,white
checkbox=back,black
actcheckbox=black,black
entry=green,black
label=white,black
listbox=green,black
actlistbox=black,green
textbox=white,black
acttextbox=black,white
helpline=black
roottext=black
disentry=black,black
compactbutton=black,black
actsellistbox=black,green
sellistbox=green,black
'

    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi3-release.txt)" \
    --menu "\nPlease select from the following:" 18 65 10 \
    "1" "TRS-80 Color Computer 2 DECB" \
    "2" "Tandy  Color Computer 3 DECB" \
    "3" "Tandy  Color Computer 3 HDB-DOS w/6309 & NitrOS9 EOU Beta" \
    "4" "Utilities Menu" \
    "5" "Attract (Kiosk) Mode Menu" \
    "6" "Shutdown Raspberry Pi 3" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) coco2-decb-simple.sh;;
        2) coco3-decb-simple.sh;;
        3) coco3-hdbdos-6309-nitros9-simple.sh;;
        4) CocoPi3-menu-Utilities.sh;;
        5) CocoPi3-menu-Attract.sh;;
        6) shutdownRPi3.sh;;
        *) echo "Quitting...";;
    esac
