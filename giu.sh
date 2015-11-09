#!/bin/bash
#
# scriptname:Get it up, giu.sh
# purpose: lazy work around to bring my bootleg wifi connection back up when it goes down.
# creation date: 11-9-2015
# (c) James Jones

set -x


# check if dhclient is running, if so, kill it, bounce the interface,
# restart it, then test the connection..
# else: start dhclient and test the connection.

ps cax | grep dhclient > /dev/null

if [ $? -eq 0 ]; then

pkill dhclient
pkill dhclient
ifconfig wlan1 up
iwconfig wlan1 essid "WMHNGS.hi"
iwlist wlan1 scan
dhclient wlan1
ping -c 2 www.google.com

else

dhclient wlan1
ping -c 2 www.google.com

fi
