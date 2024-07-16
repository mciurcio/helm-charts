## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add cps1 https://cps-1.github.io/helm-charts

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
cps1` to see the charts.

To install the cps1 chart:

    helm install cps1 cps1/cps1

To uninstall the chart:

    helm delete cps1
