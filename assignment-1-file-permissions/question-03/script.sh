#!/bin/bash

mkdir -p ~/terminal_practice/people/developers
mkdir ~/terminal_practice/people/marketing
mkdir ~/terminal_practice/shared

cd ~/terminal_practice

touch home.txt people/marketing/marketing.txt people/developers/dev.txt

pwd
ls --classify

cd people/marketing
pwd
ls -l

cd ../developers
pwd
ls -l

mv dev.txt ~/terminal_practice/shared/

cd ~/terminal_practice/shared
pwd
ls -l

cd ~
rm -r ~/terminal_practice
