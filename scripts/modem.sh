# this script is used to launch MAME while providing virtual modem connectivity.
# it uses the program 'tcpser' (https://github.com/FozzTexx/tcpser)

# Use this for a Coco 2 using a bit-banger port at 2400 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration)
mame coco2b -rs232 null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/COMM/GETERM25.DSK -autoboot_delay 2 -autoboot_command 'LOADM"GETERM.BIN":EXEC\n' -ui_active -skip_gameinfo

# Use this for a Coco 3 using a bit-banger port at 1200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration)
#mame coco3 -rs232 null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/COMM/TWITERM.DSK -autoboot_delay 2 -autoboot_command 'LOADM"TWI-TERM.BIN":EXEC\n' -ui_active -skip_gameinfo

# Use this for a Coco 3 using a bit-banger port at 1200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration)
#mame coco3 -rs232 null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/TAYLOR/netmate.dsk -autoboot_delay 2 -autoboot_command 'LOADM"NET.BIN":EXEC\n' -ui_active -skip_gameinfo

# Use this for a Coco 3 using a bit-banger port at 115200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration)
#mame coco3 -rs232 null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/TAYLOR/netmate.dsk -autoboot_delay 2 -autoboot_command 'LOADM"NET.BIN":EXEC\n' -ui_active -skip_gameinfo

# Use this for a Coco 3 using a Deluxe RS-232 Pak and MultiPak Interface at 1200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration)
#mame coco3 -ext multi -ext:multi:slot1 rs232 -ext multi -ext:multi:slot1:rs232:port null_modem -bitb socket.localhost:6551 -flop1 /media/share1/SDC/TAYLOR/netmate.dsk -autoboot_delay 2 -autoboot_command 'LOADM"NET.BIN":EXEC\n' -ui_active -skip_gameinfo

# Use this for a Coco 3 using a bit-banger port at 1200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration).  All ouput from Coco 3 is redirected to a text filed called "serial-output.txt"
#mame coco3 -rs232 null_modem -bitb $HOME/.mame/serial-output.txt -flop1 /media/share1/SDC/COMM/TWITERM.DSK -autoboot_delay 2 -autoboot_command 'LOADM"TWI-TERM.BIN":EXEC\n' -ui_active -skip_gameinfo

# Use this for a Coco 2 using a bit-banger port at 1200 baud.  Make sure to match the baud rate in MAME using the UI (Machine Configuration).  All ouput from Coco 2 is redirected to a text filed called "serial-output.txt"
#mame coco2b -rs232 null_modem -bitb $HOME/.mame/serial-output.txt -flop1 /media/share1/SDC/COMM/GETERM25.DSK -autoboot_delay 2 -autoboot_command 'LOADM"GETERM.BIN":EXEC\n' -ui_active -skip_gameinfo
