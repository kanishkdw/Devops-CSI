#!/bin/bash

mkdir ~/playground
cd ~/playground

mkdir -p Resources/data/2020data
touch file1 file2 file3 file4

echo "Simulating: chown user02 file1"
echo "Simulating: chown :groupA file1"
echo "Simulating: chown user02:groupA file2"
echo "Simulating: chgrp groupB file1"
echo "Simulating: chown -R user01:groupA Resources"

chmod 740 file2
chmod 644 file3

chmod o-r file2
chmod g+rw file2

chmod -R 744 Resources

cd ~
rm -rf ~/playground
echo "Simulating: userdel user01, user02 and groupdel groupA, groupB"

