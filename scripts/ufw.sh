#!/bin/bash
ufw enable

# Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Common ports
ufw allow ssh
ufw allow http
ufw allow https

# K8s
sudo ufw allow 2379/tcp
sudo ufw allow 6443/tcp
sudo ufw allow 10250/tcp

# nginx-proxy-manager UI
# sudo ufw allow 81/tcp