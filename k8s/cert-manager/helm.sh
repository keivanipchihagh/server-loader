#!/bin/bash
helm repo add cert-manager https://charts.jetstack.io
helm repo update
helm install cert-manager cert-manager/cert-manager --set installCRDs=true --namespace cert-manager --create-namespace
