#!/bin/bash
clear

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[1;33m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

if [[ -e jed ]] then
echo "the password is already been set up on your repo"
echo "${RESETBG}${BLACK}${BLUEBG}"
ls
echo "${RESETBG}"
echo "u're already set up."
echo "No need to set another password."
echo "exiting..."
sleep 3
exit

else
echo "We're making password repo."
sleep 2
echo
touch jed
echo "jedpogi" > jed
echo "Done."
exit
fi
