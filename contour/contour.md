# Install Contour ingress k8s

## Install Contour Ingress

```shell script
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
```

### Apply Config

```shell script
kubectl patch daemonsets -n projectcontour envoy -p '{"spec":{"template":{"spec":{"nodeSelector":{"ingress-ready":"true"},"tolerations":[{"key":"node-role.kubernetes.io/master","operator":"Equal","effect":"NoSchedule"}]}}}}'
```