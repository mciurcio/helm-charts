#!/bin/bash

set -eo pipefail

HOME=/home/user
: ${JAVA_VERSION:="21.0.6-tem"}

curl -fsSL "https://get.sdkman.io/?rcupdate=false" | bash

echo 'source "${HOME}/.sdkman/bin/sdkman-init.sh"' >> ${HOME}/.bashrc

source "${HOME}/.sdkman/bin/sdkman-init.sh"

sed -i "s/sdkman_auto_answer=false/sdkman_auto_answer=true/g" ${HOME}/.sdkman/etc/config
sed -i "s/sdkman_auto_env=false/sdkman_auto_env=true/g" ${HOME}/.sdkman/etc/config

sdk install java ${JAVA_VERSION}

sdk install gradle
sdk install maven

chown -R user:user ${HOME}/.sdkman/
