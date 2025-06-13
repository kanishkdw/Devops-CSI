#!/bin/bash

# Create a Git practice project
mkdir git_practice
cd git_practice

# Initialize Git repository
git init

# Rename master to main (optional but recommended)
git branch -m main

# Create a sample file
echo "This is a Git demo file." > demo.txt

# Stage the file
git add demo.txt

# Commit the file
git commit -m "Initial commit: added demo.txt"

# Simulate push and pull commands
echo "Simulating: git push origin main"
echo "Simulating: git pull origin main"

# Set global Git configuration
git config --global user.name "Kanishk Dwivedi"
git config --global user.email "kanishkdwivedi6104@gmail.com"

# Show current configuration
git config --list

# Cleanup
cd ..
rm -rf git_practice

