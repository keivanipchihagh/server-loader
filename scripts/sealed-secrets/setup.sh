#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ -f .env ]; then
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
fi

wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v$VERSION/kubeseal-$VERSION-linux-amd64.tar.gz
sudo tar -xvzf kubeseal-$VERSION-linux-amd64.tar.gz kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal

