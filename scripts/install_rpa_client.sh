#!/usr/bin/env bash
# Make sure that bootstrap script has re-run capability!

# Set folder to launch additional scripts
VM_FOLDER=$1

# Clone repository and install libraries in virtual environment
git clone https://github.com/python-rpa-dev/rpa.git
cd rpa
pipenv install
pipenv run pip install opencv-python pyautogui imutils pillow
