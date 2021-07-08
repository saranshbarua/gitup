#! /bin/bash

CYAN="\033[0;36m"
GREEN="\033[0;32m"
NOCOLOR="\033[0m"

echo -e "${CYAN}Stashing changes... ${NOCOLOR} "
git stash save work
echo -e "${GREEN}Stashed changes${NOCOLOR}\n"

echo -e "${CYAN}Pulling changes from upstream... ${NOCOLOR} "
git pull
echo -e "${GREEN}Pull successful!${NOCOLOR}\n"

echo -e "${CYAN}Popping stash... ${NOCOLOR} "
git stash pop stash@{0}
echo -e "${GREEN}Stash popped!${NOCOLOR}"
