    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi3-release.txt)" \
    --menu "\nPlease select from the following:" 18 70 10 \
    "1" "Coco 2 MAME     Attract Mode (loop through all)" \
    "2" "Coco 2 MAME     Attract Mode (random)" \
    "3" "Coco 2 XRoar    Attract Mode (loop through all)" \
    "4" "Coco 2 XRoar    Attract Mode (random)" \
    "5" "Dragon 32 MAME  Attract Mode (loop through all)" \
    "6" "Dragon 32 MAME  Attract Mode (random)" \
    "7" "Dragon 32 XRoar Attract Mode (loop through all)" \
    "8" "Dragon 32 XRoar Attract Mode (random)" \
    "9" "Coco 3 MAME     Image Slideshow" \
    "10" "Return to Main Menu" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) attract-mode.sh && CocoPi3-menu-Attract.sh;;
        2) attract-mode-random.sh && CocoPi3-menu-Attract.sh;;
        3) attract-mode-xroar.sh && CocoPi3-menu-Attract.sh;;
        4) attract-mode-random-xroar.sh && CocoPi3-menu-Attract.sh;;
        5) attract-mode-dragon.sh && CocoPi3-menu-Attract.sh;;
        6) attract-mode-random-dragon.sh && CocoPi3-menu-Attract.sh;;
        7) attract-mode-dragon-xroar.sh && CocoPi3-menu-Attract.sh;;
        8) attract-mode-random-dragon-xroar.sh && CocoPi3-menu-Attract.sh;;
        9) attract-mode-gallery.sh && CocoPi3-menu-Attract.sh;;
       10) menu;;
        *) echo "Quitting...";;
    esac
