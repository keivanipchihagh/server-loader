#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

curl -s https://fluxcd.io/install.sh | sudo bash

