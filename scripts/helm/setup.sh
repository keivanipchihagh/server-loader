#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
