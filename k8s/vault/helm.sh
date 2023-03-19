#!/bin/bash

# Create K8s namespace
kubectl apply -f namespace.yaml

# Create PersistentVolume
#kubectl apply -f pv.yaml

# Install Helm-charts
helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo update
helm install vault hashicorp/vault --namespace hashicorp --values values.yaml
