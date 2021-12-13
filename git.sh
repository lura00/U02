#!/bin/bash

echo "What is your github username?"
read username
echo "What is your github email?"
read email
git config --global user.name "$username"
git config --global user.email "$email"
git config --list
echo "if you see your entered handle and email, you completed successfully"

