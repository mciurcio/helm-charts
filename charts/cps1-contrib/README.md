# CPS1 Contrib

This chart installs Templates, Resources and Packages for [CPS1 Platform](https://cps1.tech) in a [Kubernetes](http://kubernetes.io/) cluster using [Helm](https://helm.sh/).

For more information, please refer to our documentation: https://docs.cps1.tech

## Update Repo Info

```
helm repo add cps1 https://cps-1.github.io/helm-charts
helm repo update
```

## Install Chart

```
helm install cps1-contrib cps1/cps1-contrib
```

