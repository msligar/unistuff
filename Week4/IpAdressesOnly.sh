#!/bin/bash

#get info about networking from the ifconfig command

net_info="$(ifconfig)"

#parse out the ip address lines using sed

addresses=$(echo "$net_info" | sed -n '/inet / {
s/netmask 255.255.240.0  broadcast 10.0.15.255//
s/netmask 255.0.0.0//
s/inet/IP Address:/





p

}')

#format output

echo -e "IP addresses on this computer are:\n$addresses"