#!/bin/bas
helm repo add ingress-nginx ingress-nginx/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
