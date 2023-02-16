#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ -f .env ]; then
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
fi

sudo bash ../ufw/setup.sh
sudo ufw allow $API_PORT/tcp
sudo ufw allow $MANAGEMENT_PORT/tcp
sudo ufw allow $MANAGEMENT_PORT/udp

docker rm -f shadowbox watchtower

curl https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh --output install_outline.sh
bash install_outline.sh --keys-port $MANAGEMENT_PORT --api-port $API_PORT --hostname $DOMAIN
rm install_outline.sh
