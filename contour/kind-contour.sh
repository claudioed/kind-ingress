#!/bin/bash
kind create cluster --name contour --config clusterconfig.yaml
kubectl cluster-info --context kind-contour