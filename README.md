# bdprochot-toggle
This simple script can toggle the BD PROCHOT flag on and off if you have problems with extreme Throttling. Repo includes a systemd service to turn BD PROCHOT off at boot.

# Warnings
DONT START THIS SCRIPT TWICE IN A ROW WITH THE SAME ARGUMENTS.

THIS SCRIPT DOESN'T SAVE THE LAST VALUE OF THE REGISTER "0x1FC". ONLY INCREMENTS OR DECREMENTS THE CURRENT VALUE OF THE REGISTER.

USE THIS SCRIPT ONLY IF YOU KNOW WHAT YOU'RE DOING.

ONLY TESTED ON MY LAPTOP.
## dependencies
you need:
- > msr-tools
- > bash

## install instructions
### script
- cd into this repo.
- > \# cp bdprochot-toggle.sh /usr/bin/bdprochot-toggle
- > \# chmod +x /usr/bin/bdprochot-toggle

### systemd service
- > \# cp bdprochot-toggle-off.service /etc/systemd/system/bdprochot-toggle-off.service
- > \# systemctl enable bdprochot-toggle-off.service

## usage

This script needs root permissions.

turn BD PROCHOT off
> bdprochot-toggle off

turn BD PROCHOT on
> bdprochot-toggle on