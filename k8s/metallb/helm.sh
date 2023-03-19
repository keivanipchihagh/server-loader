#!/bin/bash
helm repo add metallb metallb/metallb
helm repo update
helm install metallb metallb/metallb --namespace metallb-system
