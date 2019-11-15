#!/bin/sh


header_message="NuvlaBox OpenVPN Client
\n\n
This microservice is responsible for setting up the VPN client
for the NuvlaBox.
\n\n
Arguments:\n
  No arguments are expected.\n
  This message will be shown whenever -h, --help or help is provided and a
  command to the Docker container.\n
"


SOME_ARG="$1"

help_info() {
    echo "COMMAND: ${1}. You have asked for help:"
    echo -e ${header_message}
    exit 0
}


if [[ ! -z ${SOME_ARG} ]]
then
    if [[ "${SOME_ARG}" = "-h" ]] || [[ "${SOME_ARG}" = "--help" ]] || [[ "${SOME_ARG}" = "help" ]]
    then
        help_info ${SOME_ARG}
    else
        echo "WARNING: this container does not expect any arguments, thus they'll be ignored"
    fi
fi

##############

source .env

# Start the openvpn client in foreground
openvpn ${VPN_CONF}