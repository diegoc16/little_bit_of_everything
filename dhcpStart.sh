#!/bin/bash

# dhcpStart.sh : 
# 1. Delete the interface system file and replace it with a
# file with the static IP used by the dhcpd.conf file.
# 2. A dhcpd.conf file was previously configured and copy with
# the dhcp parameters to the dhcp system folder. This file is 
# just used when the dhcp-server is in use.
# 3. Launch the dhcp-Server

#--------------------------Delete and copy the interface file
sudo cp 
sudo rm 

#-------------------------If the dhcpd.conf file wanna be changed every time this can be used.
sudo cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf_backupfile
sudo rm /etc/dhcp/dhcpd.conf
sudo cp /etc/Telenor/dhcpd.conf /etc/dhcp/


#-------------------------run the DHCP service

sudo systemctl restart isc-dhcp-server


