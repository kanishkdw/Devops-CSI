#!/bin/bash

# Create remote repository (bare repo)
mkdir -p ~/git-remotes/my-remote-repo.git
cd ~/git-remotes/my-remote-repo.git
git init --bare

# Go back and create working directory
cd ~/assignment-1-file-permissions/question-07
mkdir local-repo
cd local-repo

# Initialize local repository
git init

# Create a file and commit
echo "Hello from local repo!" > hello.txt
git add hello.txt
git commit -m "Initial commit"

# Add the bare remote and push
git remote add origin ~/git-remotes/my-remote-repo.git
git branch -M master
git push origin master

# List the contents of the remote repo (for verification)
cd ~/git-remotes/my-remote-repo.git
ls

# Cleanup
cd ~/assignment-1-file-permissions/question-07
rm -rf local-repo
rm -rf ~/git-remotes/my-remote-repo.git
