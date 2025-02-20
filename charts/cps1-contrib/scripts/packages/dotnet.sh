#!/bin/bash

set -euo pipefail

curl -O https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb

dpkg -i packages-microsoft-prod.deb


rm packages-microsoft-prod.deb

apt-get update
apt-get install -y dotnet-sdk-${DOTNET_VERSION} dotnet-runtime-${DOTNET_VERSION}

