    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi3-release.txt)" \
    --menu "\nPlease select from the following:" 18 70 10 \
    "1"  "System Status" \
    "2"  "Start     pyDriveWire server" \
    "3"  "Stop      pyDriveWire server" \
    "4"  "Edit      pyDriveWire configuration" \
    "5"  "Restart   Drivewire 4" \
    "6"  "Stop      Drivewire 4" \
    "7"  "Start     lwwire (Use option 9 prior to running)" \
    "8"  "Stop      lwwire" \
    "9"  "Edit      lwwire configuration" \
    "10" "Start     emceed file server (MC-10)" \
    "11" "Stop      emceed file server (MC-10)" \
    "12" "Start     tcpser (modem emulator)" \
    "13" "Stop      tcpser (modem emulator)" \
    "14" "Edit      tcpser (modem emulator) script" \
    "15" "Mount     DSK image in Drivewire" \
    "16" "Mount     DSK image in pyDriveWire" \
    "17" "Mount     DSK image in MAME" \
    "18" "Mount     DSK image in XRoar" \
    "19" "Mount     CASSETTE image in XRoar" \
    "20" "Mount     BIN image in XRoar" \
    "21" "Mount     ROM image in XRoar" \
    "22" "Show      all saved mount files" \
    "23" "Clear     all saved mount files" \
    "24" "Select    MAME version" \
    "25" "Select    XRoar version" \
    "26" "Select    default Main Menu" \
    "27" "Select    default .bashrc (CocoPi3 logo background)" \
    "28" "Edit      optional MAME parameters (CAUTION)" \
    "29" "Edit      optional XRoar parameters (CAUTION)" \
    "30" "Edit      WiFi configuration" \
    "31" "Edit      pyDriveWire configuration" \
    "32" "Adjust    RPi3 audio volume" \
    "33" "Test      Bluetooth/USB Game Controller" \
    "34" "Run       Raspi-Config Script" \
    "35" "Edit      /boot/config.txt (DANGEROUS)" \
    "36" "Sync      Cloud Services" \
    "37" "Show      Existing Bluetooth Pairing(s)" \
    "38" "Backup    Existing Bluetooth Pairing(s)" \
    "39" "Restore   Bluetooth Pairing(s) from Archive" \
    "40" "Backup    RPi3 to alternate SD card" \
    "41" "Download  ROM images to /media/share1/roms" \
    "42" "Download  Latest Fuzix Nightly image" \
    "43" "Download  Latest NitrOS9 EOU image" \
    "44" "Shutdown  apache2 Web Server" \
    "45" "Reboot    Raspberry Pi 3" \
    "46" "Shutdown  Raspberry Pi 3" \
    "47" "Return to Main Menu" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) status.sh && CocoPi3-menu-Utilities.sh;;
        2) $HOME/pyDriveWire/start_pyDW.sh && CocoPi3-menu-Utilities.sh;;
        3) $HOME/pyDriveWire/stop_pyDW.sh && CocoPi3-menu-Utilities.sh;;
        4) nano $HOME/.pydrivewirerc && CocoPi3-menu-Utilities.sh;;
        5) $HOME/DriveWire4/restartDW4.sh && CocoPi3-menu-Utilities.sh;;
        6) $HOME/DriveWire4/stopDW4.sh && CocoPi3-menu-Utilities.sh;;
        7) $HOME/lwwire/startlwwire.sh && CocoPi3-menu-Utilities.sh;;
        8) $HOME/lwwire/stoplwwire.sh && CocoPi3-menu-Utilities.sh;;
        9) $HOME/lwwire/edit-tcpserv.sh && CocoPi3-menu-Utilities.sh;;
        10) $HOME/emceed/start_emceed.sh && CocoPi3-menu-Utilities.sh;;
        11) $HOME/emceed/stop_emceed.sh && CocoPi3-menu-Utilities.sh;;
        12) $HOME/tcpser/start_tcpser.sh && CocoPi3-menu-Utilities.sh;;
        13) $HOME/tcpser/stop_tcpser.sh && CocoPi3-menu-Utilities.sh;;
        14) nano $HOME/tcpser/start_tcpser.sh && CocoPi3-menu-Utilities.sh;;
        15) mountDWfile.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        16) mountpyDWfile.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        17) mountFloppy.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        18) mountXRoarFloppy.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        19) mountXRoarCassette.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        20) mountXRoarBin.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        21) mountXRoarROM.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        22) mountShow.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        23) mountClear.sh 0 0 && CocoPi3-menu-Utilities.sh;;
        24) select-emu.sh && CocoPi3-menu-Utilities.sh;;
        25) select-xroar.sh && CocoPi3-menu-Utilities.sh;;
        26) select-menu.sh && CocoPi3-menu-Utilities.sh;;
        27) select-bashrc.sh && CocoPi3-menu-Utilities.sh;;
        28) editMAMEparms.sh && CocoPi3-menu-Utilities.sh;;
        29) editXROARparms.sh && CocoPi3-menu-Utilities.sh;;
        30) editWiFi.sh && CocoPi3-menu-Utilities.sh;;
        31) editpyDWconfig.sh && CocoPi3-menu-Utilities.sh;;
        32) adjustVol.sh && CocoPi3-menu-Utilities.sh ;;
        33) test-controller.sh && CocoPi3-menu-Utilities.sh;;
	34) runRaspiConfig.sh && CocoPi3-menu-Utilities.sh;;
	35) editConfig-txt.sh && CocoPi3-menu-Utilities.sh;;
        36) CocoPi3-menu-rclone.sh;;
        37) showBluetoothPairings.sh && CocoPi3-menu-Utilities.sh;;
        38) backupBluetoothPairings.sh && CocoPi3-menu-Utilities.sh;;
        39) restoreBluetoothPairings.sh && CocoPi3-menu-Utilities.sh;;
        40) backupSD.sh && CocoPi3-menu-Utilities.sh;;
        41) downloadROMs.sh && CocoPi3-menu-Utilities.sh;;
        42) downloadFuzixNightly.sh && CocoPi3-menu-Utilities.sh;;
        43) downloadNitrOS9EOU.sh && CocoPi3-menu-Utilities.sh;;
        44) shutdownApache2.sh && CocoPi3-menu-Utilities.sh;;
        45) rebootRPi3.sh;;
        46) shutdownRPi3.sh;;
        47) menu;;
        *) echo "Quitting...";;
    esac
