#!/bin/bash

# Step 1: Remove last committed file
git rm temp.txt

# Step 2: Commit the change
git commit -m "Remove temp.txt file from repo"

# Step 3: Push to remote to reflect deletion
git push

echo "temp.txt removed from remote repo."
