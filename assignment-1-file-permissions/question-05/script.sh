#!/bin/bash


mkdir -p linux_practice/subfolder
cd linux_practice


touch file1.txt file2.txt file3.log


pwd
ls -l


date
whoami
uname -a


mv file1.txt renamed_file1.txt


cp file2.txt subfolder/copied_file2.txt


find . -name "*.txt"


wc file3.log


echo "Linux is powerful" > file4.txt
echo "Linux is fast" >> file4.txt
echo "Linux supports scripting" >> file4.txt

# Use grep to search for the word 'Linux'
grep "Linux" file4.txt


tar -czf archived.tar.gz file4.txt


cd ~
rm -rf ~/assignment-1-file-permissions/question-05/linux_practice
