#!/bin/sh

source /opt/nuvlabox/.env

# the openvpn client automatically passes the VPN IP into this script
echo $4 > ${VPN_IP}
