#!/bin/bash
# create a backup of existing files

cp /usr/share/jolla-settings/pages/browser/browser.qml .
cp /home/nemo/.mozilla/mozembed/searchplugins/* .

# copy custom search plugin files

cp ./*.xml /home/nemo/.mozilla/mozembed/searchplugins/

# copy modified browser.qml

cp ./browser.qml /usr/share/jolla-settings/pages/browser/

