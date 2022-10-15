#!/bin/bash
## thank u jed!!!!!
clear
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[1;33m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

echo "${CYAN}Thank you Jed/Sphinx for making this Installer!!!"
echo "${RESETBG}"
sleep 1
clear

if [ -e compat-wireless-2010-06-26-p ]; then
echo "${GREEN}It's already been installed to your computer!${RESETBG}"
sleep 2
clear
else
echo
fi

if grep -F "jedpogi" jed; then clear
echo "${CYAN}PASSED!!!${RESETBG}"
sleep 1
clear
else
echo "${RED}${WHITE} can't found the passwd credentials!${RESETBG}"
exit
fi

if [ -e compat-wireless-2010-06-26-p ]; then
	echo "${RESETBG}${RED} Wlan is already installed to your Linux! ${RESETBG}"
	sleep 1.5
	clear
	echo "${RED} Wlan is already installed to your Linux!! ${RESETBG}"
	sleep 1.5
	clear
	echo "${RED} Wlan is already installed to your Linux!!! ${RESETBG}"
	sleep 1
	echo "${RESETBG}${BLACK}${BLUEBG}"
	echo "Based on your Linux:"
	ifconfig | grep wlan
	echo "${RESETBG}"
else
	echo "${GREEN}"
	tar -xvjf compat-wireless-2010-06-26-p.tar.bz2
	sleep 2
	cd compat-wireless-2010-06-26-p
	sleep 2
	make unload
	sleep 2
	make load
	sleep 2
	sudo ifconfig wlan0 up
	echo "${RESETBG}"
	clear
	ip a
fi
