#!/bin/bash

echo "Deploy coding to /usr/local/bin"
sudo cp -prv coding /usr/local/bin
sudo chmod a+rx /usr/local/bincoding

echo "Deploy GNOME .desktop files to launch variations of 'coding' script"
for EACHFILE in desktop-files
do
  sudo cp -prv $EACHFILE /usr/share/applications
done
