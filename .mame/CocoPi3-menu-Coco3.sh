    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi3-release.txt)" \
    --menu "\nPlease select from the following:" 18 75 10 \
    "1" "Tandy Color Computer 3 DECB" \
    "2" "Tandy Color Computer 3 DECB    SSC & MPI" \
    "3" "Tandy Color Computer 3 DECB    GameMaster" \
    "4" "Tandy Color Computer 3 HDB-DOS" \
    "5" "Tandy Color Computer 3 HDB-DOS w/pyDW & PLATO" \
    "6" "Tandy Color Computer 3 RGB-DOS w/Hard Drive (DECB disks)" \
    "7" "Tandy Color Computer 3 HDB-DOS w/6309 & NitrOS9 EOU Beta" \
    "8" "Tandy Color Computer 3 YA-DOS" \
    "9" "Tandy Color Computer 3 Fuzix   w/pyDW" \
    "10" "Tandy Color Computer 3 DECB    Deluxe RS-232 Pak" \
    "11" "Return to Main Menu" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) coco3-decb.sh;;
        2) coco3-decb-ssc-mpi.sh;;
        3) coco3-decb-gamemaster.sh;;
        4) coco3-hdbdos.sh;;
        5) coco3-hdbdos-pyDW-PLATO.sh;;
        6) coco3-rgbdos-hd-rg.sh;;
        7) coco3-hdbdos-6309-nitros9.sh;;
        8) coco3-yados.sh;;
        9) coco3-Fuzix-pyDW.sh;;
       10) coco3-decb-term.sh;;
       11) menu;;
        *) echo "Quitting...";;
    esac
