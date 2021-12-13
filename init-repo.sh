#!/bin/bash

echo "Do you need to initialize folder as a git-folder? (yes or no)"
read choice
if [ $choice == "yes" ]
then
	git init
else
	echo "Already a git folder"
fi

echo "Enter remote repo (pro-tip, copy and paste from github): "
read repo
git remote add origin $repo

while [ True ]
do
echo "Enter files you want to add or done if you are finished "
read file
git add $file
if [ $file == "done" ]
then
	break
fi
done
echo "Enter commit message"
read message
git commit -m "$message"

git push
