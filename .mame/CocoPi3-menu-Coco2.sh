    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi3-release.txt)" \
    --menu "\nPlease select from the following:" 18 70 10 \
    "1" "TRS-80 Color Computer 2 DECB" \
    "2" "TRS-80 Color Computer 2 DECB    SSC & MPI" \
    "3" "TRS-80 Color Computer 2 DECB    GameMaster" \
    "4" "TRS-80 Color Computer 2 HDB-DOS" \
    "5" "TRS-80 Color Computer 2 RGB-DOS w/Hard Drive (DECB disks)" \
    "6" "TRS-80 Color Computer 2 YA-DOS" \
    "7" "Return to Main Menu" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) coco2-decb.sh;;
        2) coco2-decb-ssc-mpi.sh;;
        3) coco2-decb-gamemaster.sh;;
        4) coco2-hdbdos.sh;;
        5) coco2-rgbdos-hd-rg.sh;;
        6) coco2-yados.sh;;
        7) menu;;
        *) echo "Quitting...";;
    esac
