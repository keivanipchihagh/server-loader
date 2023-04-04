#!/bin/bash

# Create K8s namespace
kubectl apply -f namespace.yaml

# Install Helm-charts
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack --namespace monitoring --create-namespace --values values.yaml
