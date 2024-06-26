#!/bin/bash
helm repo add dapr https://dapr.github.io/helm-charts/

helm repo update

helm upgrade --install dapr dapr/dapr \
--version=1.13.2 \
--namespace dapr-system \
--create-namespace
