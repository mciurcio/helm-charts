#!/bin/bash

# $PROFILE_EXT contains all additions made to the bash environment
PROFILE_EXT=/etc/profile.d/udi_environment.sh
touch ${PROFILE_EXT} && chown 10001 ${PROFILE_EXT}

# gerar logs bonitos

# v22, v20, v18
NODE_VERSION=v18

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install curl git wget

NVM_DIR=/home/tooling/.nvm

mkdir -p ${NVM_DIR}

export HOME=/home/tooling

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | PROFILE=/dev/null bash

echo 'export NVM_DIR="$HOME/.nvm"' >> ${PROFILE_EXT}
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ${PROFILE_EXT}



echo 'export NVM_DIR="${HOME}/.nvm"' >> /home/user/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ]'

source "$NVM_DIR/nvm.sh"' chown -R owner_name:group_name folder_name'

bash -c ". /home/user/.nvm/nvm.sh"

nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}
chown -R user /home/user/.nvm

