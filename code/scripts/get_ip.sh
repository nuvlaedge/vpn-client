#!/bin/sh

source /opt/nuvlabox/.env

timestamp_nb_conf=$(stat -c %Y ${VPN_CONF})

# the openvpn client automatically passes the VPN IP into this script
echo $4 > ${VPN_IP}

# keep watching for updates on the NB VPN configuration file
timestamp_nb_updated=$timestamp_nb_conf
while [[ "$timestamp_nb_updated" -le "$timestamp_nb_conf" ]]
do
    timestamp_nb_updated=$(stat -c %Y ${VPN_CONF})
    sleep 1
done

# if we got here, then the nb.conf was updated and we must restart the openvpn-client
killall openvpn