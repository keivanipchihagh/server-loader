#!/bin/bash

DOMAIN=example.com
MANAGEMENT_PORT=62411
API_PORT=62410

sudo bash ../ufw/setup.sh
sudo ufw allow $API_PORT/tcp
sudo ufw allow $MANAGEMENT_PORT/tcp
sudo ufw allow $MANAGEMENT_PORT/udp

docker rm -f shadowbox watchtower

curl https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh --output install_outline.sh
bash install_outline.sh --keys-port $MANAGEMENT_PORT --api-port $API_PORT --hostname $DOMAIN
rm install_outline.sh
