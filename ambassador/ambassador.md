# Install Ambassador ingress k8s

## Install CRDs

```shell script
kubectl apply -f https://github.com/datawire/ambassador-operator/releases/latest/download/ambassador-operator-crds.yaml
```

## Install Ambassador

```shell script
kubectl apply -n ambassador -f https://github.com/datawire/ambassador-operator/releases/latest/download/ambassador-operator-kind.yaml
kubectl wait --timeout=180s -n ambassador --for=condition=deployed ambassadorinstallations/ambassador
```

## Remember to annotate ingress

```shell script
kubectl annotate ingress <ingress-name> kubernetes.io/ingress.class=ambassador
```

### Source
[Kind Docs](https://kind.sigs.k8s.io/docs/user/ingress/)
