#!/bin/bash

# Prompt for the sudo password
echo "Please enter your sudo password:"
sudo -v

# Keep sudo authenticated while the script is running
while true; do 
    sudo -n true 
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &