# uncomment preferred web browser (only 1)
# WARNING - netsurf will not work on primary console - use [ALT][F2] to switch

export WEBBROWSER="lynx"
#export WEBBROWSER="netsurf-fb"

    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi3-release.txt)" \
    --menu "\nPlease select from the following:" 18 65 10 \
    "1"  "IRC (irssi)" \
    "2"  "qodem (Terminal program)" \
    "3"  "syncterm (Terminal program)" \
    "4"  "Coco Crew Podcast" \
    "5"  "CocoTALK Podcast" \
    "6"  "TRS-80 Color Computer Archive" \
    "7"  "maltedmedia.com" \
    "8"  "NitrOS9 Ease of Use Site" \
    "9"  "NitrOS9 - sourceforge (latest disk images)" \
    "10"  "rtsi.com" \
    "11"  "The ULTIMATE CoCoSDC Image!" \
    "12" "worldofdragon.org Archive" \
    "13"  "Building NitrOS9 Information" \
    "14" "Building Fuzix Information" \
    "15" "Building Fuzix Installation Project Utility" \
    "16" "Drivewire 4 command line (dw) commands" \
    "17" "pyDriveWire Information" \
    "18" "tcpser (modem emulator) Information" \
    "19" "MAME Universal Command Line Options" \
    "20" "XRoar Emulator Manual" \
    "210" "Fuzix for MOOH (XRoar)" \
    "22" "Return to Main Menu" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) irssi && CocoPi3-menu-Online.sh;;
        2) qodem && CocoPi3-menu-Online.sh;;
        3) syncterm && CocoPi3-menu-Online.sh;;
        4) $WEBBROWSER http://www.cococrew.org/ && CocoPi3-menu-Online.sh;;
        5) $WEBBROWSER http://cocotalk.live/podcasts/ && CocoPi3-menu-Online.sh;;
        6) $WEBBROWSER http://www.colorcomputerarchive.com/ && CocoPi3-menu-Online.sh;;
        7) $WEBBROWSER ftp://maltedmedia.com/coco/ && CocoPi3-menu-Online.sh;;
        8) $WEBBROWSER http://www.lcurtisboyle.com/nitros9/nitros9.html && CocoPi3-menu-Online.sh;;
        9) $WEBBROWSER https://nitros9.sourceforge.io/snapshot/ && CocoPi3-menu-Online.sh;;
       10) $WEBBROWSER ftp://www.rtsi.com/RSDOS/ && CocoPi3-menu-Online.sh;;
       11) $WEBBROWSER https://europa.lickwid.net/cocosdc/ && CocoPi3-menu-Online.sh;;
       12) $WEBBROWSER http://archive.worldofdragon.org/archive/index.php && CocoPi3-menu-Online.sh;;
       13) $WEBBROWSER https://nitros9.sourceforge.io/wiki/index.php/Building_NitrOS9#Obtain_and_build_NitrOS-9 && CocoPi3-menu-Online.sh;;
       14) $WEBBROWSER https://github.com/EtchedPixels/FUZIX/blob/master/Kernel/platform-coco3/README && CocoPi3-menu-Online.sh;;
       15) $WEBBROWSER https://github.com/beretta42/fip/blob/master/README.md && CocoPi3-menu-Online.sh;;
       16) $WEBBROWSER https://sourceforge.net/p/drivewireserver/wiki/The_%27dw%27_commands/ && CocoPi3-menu-Online.sh;;
       17) $WEBBROWSER https://github.com/n6il/pyDriveWire/blob/master/README.md && CocoPi3-menu-Online.sh;;
       18) $WEBBROWSER https://github.com/FozzTexx/tcpser/blob/master/README && CocoPi3-menu-Online.sh;;
       19) $WEBBROWSER https://docs.mamedev.org/commandline/commandline-all.html && CocoPi3-menu-Online.sh;;
       20) $WEBBROWSER https://www.6809.org.uk/xroar/doc/xroar.shtml && CocoPi3-menu-Online.sh;;
       21) $WEBBROWSER http://toolshed.sourceforge.net/fuzix/ && CocoPi3-menu-Online.sh;;
       22) menu;;
        *) echo "Quitting...";;
    esac
