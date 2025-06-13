#!/bin/bash

touch myfile.txt
echo "This is a test file for permission demonstration." > myfile.txt

echo "Initial permissions:"
ls -l myfile.txt

chmod 754 myfile.txt

echo "Updated permissions (chmod 754):"
ls -l myfile.txt

chmod g-w myfile.txt
chmod o+x myfile.txt

echo "Final permissions (symbolic changes applied):"
ls -l myfile.txt

