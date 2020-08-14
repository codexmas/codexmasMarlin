# codexmasMarlin
Personal printer SED scripts to cleanly modify the Marlin firmware before upload

Managing your config changes with SED means you can pull the most recent changes via git, and not have to futz with editing the .h files manually ever again.

## Workflow

Create a GIT repo of your own to hold the scripts
Checkout a fresh copy of Marlin, I am currently on the 1.1.0 RC6 Tag
Identify lines that need changes, these typically are either ones that need to be uncommented, or a value changed, sometimes both.

## Backup current working firmware
`./avrdude -C ../etc/avrdude.conf -c wiring -b 115200 -p m2560 -P /dev/tty.usbmodem1433201 -U flash:r:marlin_fw.hex:i`
`./avrdude -C ../etc/avrdude.conf -c wiring -b 115200 -p m2560 -P /dev/tty.usbmodem1433201 -U eeprom:r:marlin_eeprom.hex:i`

### Uncommenting
`-e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \`

### Value change
`-e '\|#define BAUDRATE|s|250000|115200|' \`
Search for '#define BAUDRATE', replace the value 250000 with 115200

### Uncommenting and Value change
`-e 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "Custom"|' \`

Put these lines at the top of your script:
```
#!/bin/bash
# Main config changes
sed -i '' \
```
Once you have added all the modifications, add the last line below to the script and ensure the path to the file that needs sed to work it's magic on is correct:

`~/GIT/Marlin/Marlin/Configuration.h`

run `chmod +x your_script_name.sh` to allow execution of your script.

Run your script and then do a diff to see the changes in the Marlin repository.

What you should see is the various changes you specified, take a few minutes to review each line to ensure none were missed. Sed doesn't really have an easy way to indicate pattern match failures, so eyeballs are required.
If there are changes missed you can revert the changes in the Marlin repo, make adjustments to your script and reapply!

Now that you are happy with your changes you can validate the setup in the Arduino IDE and upload if it all checks out, then revert again to have a clean Marlin repo.

Future updates to Marlin now super simple to maintain, as well as multiple printer profiles, one per script.
