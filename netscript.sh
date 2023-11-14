#!/bin/bash

date=$(date +%Y-%m-%d_%H%M%S)

#shows broadcast ip
ip=$(hostname -I)


#shows all active ip address on the network
ips=$(nmap -sn 10.0.0.0/24)

#shows dns server
dns=$(cat /etc/resolv.conf | grep "nameserver") 

#shows open portrs 
ports=$(netstat -tulpn) 


# Create a file to store the network information
net_info="/home/miles/NetInfo/network_info_$date.txt"

echo "IP address: $ip" >> $net_info

echo "IP addresses: $ips" >> $net_info

echo "DNS servers: $dns" >> $net_info

echo "Open ports: $ports" >> $net_info


exit 0





