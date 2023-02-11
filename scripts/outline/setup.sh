#!/bin/bash

# check sudo user
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# read variables from .env
if [ -f .env ]; then
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
fi

# configure firewall
bash ../ufw/setup.sh
ufw allow $API_PORT/tcp
ufw allow $MANAGEMENT_PORT/tcp
ufw allow $MANAGEMENT_PORT/udp

# remove previous containers if already exist
docker rm -f shadowbox watchtower

# download install script, run and remove it
curl https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh --output install_outline.sh
bash install_outline.sh --keys-port $MANAGEMENT_PORT --api-port $API_PORT --hostname $DOMAIN
rm install_outline.sh
