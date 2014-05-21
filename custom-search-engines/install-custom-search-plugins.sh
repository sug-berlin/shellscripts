#!/bin/bash
# Make sure to run this script from the directory containing 
this file

# create a backup of existing files

mkdir ./backup
cp /usr/share/jolla-settings/pages/browser/browser.qml ./backup
cp /home/nemo/.mozilla/mozembed/searchplugins/* ./backup

# copy custom search plugin files

cp ./*.xml /home/nemo/.mozilla/mozembed/searchplugins/

# copy modified browser.qml

devel-su
cp ./browser.qml /usr/share/jolla-settings/pages/browser/
exit
