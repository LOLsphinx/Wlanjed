#!/bin/bash
clear
echo "[1] Uninstall WLAN0, and WLAN1."
echo "[2] Refresh."
echo "[3] Exit."
echo

echo -n "Choose option: "
read option
echo

if [[ $option == "1" ]]
then
clear
echo "We're goin to unistall wlan0 and wlan1."
sleep 2
clear
echo "We're goin to uninstall wlan0 and wlan1. [Processing.]"
sleep 1
clear
echo "We're goin to uninstall wlan0 and wlan1. [Processing..]"
sleep 1
clear
echo "We're goin to uninstall wlan0 and wlan1. [Processing...]"
sleep 1
clear
echo "We're now uninstalling wlans in your Device."
sleep 1
echo "[Processed.]"

elif [[ $option == "2" ]]
then
echo "We're Refreshing."
sleep 2
clear
echo "{!}REFERESHED{!}"
sleep 1
bash uninstall.sh
exit

else [[ $option == "3" ]]
echo "We're exiting."
sleep 1
echo "Thank you mwa mwa."
sleep 2
exit
fi

if [[ -e jed ]] then
rm -rf jed
else
echo
fi

if [[ -e compat-wireless-2010-06-26-p ]] then
rm -rf compat-wireless-2010-06-26-p
echo "[Deleted.]"
echo "Thank you."    
echo "and Thanks for https://github.com/LOLsphinx."
echo "We're exiting."
sleep 2

else
echo "There's nothing to (wlan)uninstall."
sleep 1
echo "We're existing."
sleep 2
clear
exit
fi


