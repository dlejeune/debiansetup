#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'


if ! command -v python3 > /dev/null;
  then
    echo "${CLEAR_LINE}${RED}Python not installed. Installing.${NO_COLOR}\n"
    sudo apt install python3
  else
    echo "${CLEAR_LINE}${GREEN}Python is already installed.${NO_COLOR}\n"
fi

if ! command -v pip3 > /dev/null;
  then
    echo "${CLEAR_LINE}${RED}Pip not installed. Installing.${NO_COLOR}\n"
    sudo apt install python3-pip
  else
    echo "${CLEAR_LINE}${GREEN}Pip is already installed.${NO_COLOR}\n"
fi

if ! command -v git > /dev/null;
  then
    echo "${CLEAR_LINE}${RED}Git not installed. Installing.${NO_COLOR}\n"
    sudo apt install git
  else
    echo "${CLEAR_LINE}${GREEN}Git is already installed.${NO_COLOR}\n"
fi
