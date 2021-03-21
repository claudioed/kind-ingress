#!/bin/bash
kind create cluster --name nginx --config clusterconfig.yaml
kubectl cluster-info --context kind-nginx