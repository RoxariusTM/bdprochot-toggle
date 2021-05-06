# bdprochot-toggle
This simple script can toggle the BD PROCHOT flag on and off if it causes problems with extreme Throttling. Repo includes a systemd service to turn BD PROCHOT off at boot.

# Warnings
IF YOU'RE NOT CAREFUL, THIS COULD BREAK YOUR SYSTEM.

USE THIS SCRIPT ONLY IF YOU KNOW WHAT YOU'RE DOING.

DONT START THIS SCRIPT TWICE IN A ROW WITH THE SAME ARGUMENTS e.g IF BD PROCHOT IS OFF DONT START THE SCRIPT WITH "off" AND IF BD PROCHOT IS ON DONT START THE SCRIPT WITH "on".

THIS SCRIPT DOESN'T SAVE THE LAST VALUE OF THE REGISTER "0x1FC". ONLY INCREMENTS OR DECREMENTS THE CURRENT VALUE OF THE REGISTER.

ONLY TESTED ON MY LAPTOP.
## dependencies
you need:
- > msr-tools
- > bash

## install instructions
#### (# means root permissions)
### script
- cd into this repo.
- \# ``` cp bdprochot-toggle.sh /usr/bin/bdprochot-toggle ```
- \# ``` chmod +x /usr/bin/bdprochot-toggle ```

### systemd service (needs script)
- \# ``` cp bdprochot-toggle-off.service /etc/systemd/system/bdprochot-toggle-off.service ```
- \# ``` systemctl enable bdprochot-toggle-off.service ```

## usage

This script needs root permissions.

turn BD PROCHOT off
``` bdprochot-toggle off ```

turn BD PROCHOT on
``` bdprochot-toggle on ```

### BTW
if you want to read the reqister manually(also needs mri-tools) use:

\# ``` modprobe msr ```

\# ```  rdmsr -d 0x1FC ```
