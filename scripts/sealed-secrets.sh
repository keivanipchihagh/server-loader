#!/bin/bash

VERSION=0.19.5

wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v$VERSION/kubeseal-$VERSION-linux-amd64.tar.gz
sudo tar -xvzf kubeseal-$VERSION-linux-amd64.tar.gz kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal
