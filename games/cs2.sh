#!/bin/bash

# Load modules
source ./../get_colors.sh

# Installing Dependencies
echo -e "${YELLOW}Installing Dependencies${NC}"
echo -e "========================================\n"

# Create New User For Run The Server
echo -e "${YELLOW}Create New User${NC}"
echo -e "========================================"
echo -e "User ${CYAN}cs2${NC} will be created\n"

# Installing SteamCMD
echo -e "${YELLOW}Installing SteamCMD${NC}"
echo -e "========================================\n"

# Installing Counter-Strike 2 Dedicated Server
echo -e "${YELLOW}Installing Counter-Strike 2 Dedicated Server${NC}"
echo -e "========================================"
echo -e "[${MINT}START${NC}] Installing CS2 Dedicated Server from SteamCMD"
echo -e "[${MINT}START${NC}] Fix missing data\n"

# How To Use
echo -e "${YELLOW}How To Use${NC}"
echo -e "========================================"
echo -e "[${CYAN}START SERVER${NC}] cd ~/serverfiles/game/bin/linuxsteamrt64 && screen -S 27015 ./cs2 -dedicated +map de_dust2"
echo -e "[${CYAN}Exit Console${NC}] Ctrl+a d"
echo -e "[${CYAN}Open Console${NC}] screen -r 27015"
