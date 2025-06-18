#!/bin/bash

pwd

mkdir mydir
file mydir
ls -l
cd mydir

mkdir dir1 dir2 dir3
ls -l

mkdir -p dir4/subdir1
ls -R

touch file1 file2 file3
touch dir4/subdir1/file4
ls -l
ls -l dir4/subdir1

rm file1
rm file2 file3
rm dir4/subdir1/file4

rm -r dir1 dir2 dir3 dir4
cd ..
rmdir mydir
