#!/bin/bash


echo "This is a new feature added in feature branch." > feature.txt
git checkout -b feature-branch

git add feature.txt
git commit -m "Add new feature file in feature-branch"
git push -u origin feature-branch
echo "Feature branch created and pushed."
