#!/bin/bash
ufw enable
ufw allow 62410/tcp
ufw allow 62411/tcp
ufw allow 62411/udp
curl https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh --output install_outline.sh
bash install_outline.sh --keys-port 62411 --api-port 62410 --hostname outline.keivanipchihagh.com
