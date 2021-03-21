#!/bin/bash
kind create cluster --name ambassador --config clusterconfig.yaml
kubectl cluster-info --context kind-ambassador