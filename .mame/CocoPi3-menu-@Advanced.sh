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
    "1" "TRS-80 Color Computer 2 Menu" \
    "2" "TRS-80 Color Computer 2 Menu (XRoar)" \
    "3" "Tandy  Color Computer 3 Menu" \
    "4" "TRS-80 Micro Color Computer Menu" \
    "5" "Dragon Menu" \
    "6" "Dragon Menu (XRoar)" \
    "7" "Utilities Menu" \
    "8" "Internet/Online Menu" \
    "9" "Attract (Kiosk) Mode Menu" \
    "10" "Shutdown Raspberry Pi 3" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) CocoPi3-menu-Coco2.sh;;
        2) CocoPi3-menu-Coco2-XRoar.sh;;
        3) CocoPi3-menu-Coco3.sh;;
        4) CocoPi3-menu-MC10.sh;;
        5) CocoPi3-menu-Dragon.sh;;
        6) CocoPi3-menu-Dragon-XRoar.sh;;
        7) CocoPi3-menu-Utilities.sh;;
        8) CocoPi3-menu-Online.sh;;
        9) CocoPi3-menu-Attract.sh;;
       10) shutdownRPi3.sh;;
        *) echo "Quitting...";;
    esac
