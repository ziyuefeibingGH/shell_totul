#!/bin/bash
# dhcp get dynamic ip
dhclient ethN

# set set static ip
ipconfig eth0 ip_address on
route add default gw gw_ip_address


