#!/bin/zsh

# For 256-Color Terminals
BLACK='\e[38;5;0m'    # Black
RED='\e[38;5;196m'   # Red
GREEN='\e[38;5;46m'  # Green
YELLOW='\e[38;5;226m' # Yellow
BLUE='\e[38;5;21m'   # Blue
PURPLE='\e[38;5;129m' # Purple
CYAN='\e[38;5;51m'   # Cyan
WHITE='\e[38;5;15m'  # White
ORANGE='\e[38;5;208m' # Orange


# Functions
Step1     () { echo -e "${GREEN}-----";echo -e "# ${*}";echo -e "-----${NC}";:; }
Step2     () { echo -e "${CYAN}${*}${NC}";:; }
Step3     () { echo -e "${YELLOW}${*}${NC}";:; }

Step1 "1. Installing Arch Packages"
Step2 "Installing System Utilities"
Step3 "Installing System Utilities - Console Tools"