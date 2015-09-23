#!/bin/bash
printf 'This script allows you to create logfiles for IMAP and SMTP related communication on your device.\n\n'
printf '  Delete filr /home/nemo/Documents/messageserver.log\n'
rm /home/nemo/Documents/messageserver.log
printf '  Save Meesageserver.conf to /home/nomo/Documents/\n'
cp ~/.config/QtProject/Messageserver.conf ~/Documents/Messageserver.conf
printf '  Enable logging...\n'
cp ~/Documents/Messageserver.conf.enabled ~/.config/QtProject/Messageserver.conf
systemctl --user stop messageserver5
systemctl --user start messageserver5
printf '  ...logging enabled!\n\n'
read -p "Now you can do email related tests on your device. Once finished, press [Enter]."
printf '  \n Disable logging...\n'
cp ~/Documents/Messageserver.conf.disabled ~/.config/QtProject/Messageserver.conf
systemctl --user stop messageserver5
systemctl --user start messageserver5
printf '  ...logging disabled.\n Find the logfile in /home/nemo/Documents/messageserver.log\n'
