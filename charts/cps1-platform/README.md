# CPS1

![Version: 0.1.0-rc1](https://img.shields.io/badge/Version-0.1.0--rc1-informational) ![AppVersion: 20240715-00c2cdae](https://img.shields.io/badge/AppVersion-20240715--00c2cdae-informational)

This chart installs [CPS1](https://cps1.tech) in a [Kubernetes](http://kubernetes.io/) cluster using the [Helm](https://helm.sh/) package manager.

## Requirements

- Kubernetes 1.31+
- Helm 3+
- Nginx Ingress Controller

## Update Repo Info

```
helm repo add cps1 https://cps-1.github.io/helm-charts
helm repo update
```

## Configuring

Customize the Chart before installing. See the [values.yaml](./values.yaml) file
or run:
```
helm show values cps1/cps1-platform
```

## Install Chart

```
helm install [RELEASE_NAME] cps1/cps1-platform
```

## Uninstall Chart

```
helm uninstall [RELEASE_NAME]
```
