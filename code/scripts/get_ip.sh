#!/bin/sh

source /opt/nuvlabox/.env
# the openvpn client automatically passes the VPN IP into this script
echo $4 > ${VPN_IP}

BASEDIR=$(dirname "$0")

${BASEDIR}/wait-for-vpn-update.sh &
