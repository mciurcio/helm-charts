#!/bin/bash

set -euo pipefail

# gerar logs bonitos
# testar se estamos rodando como user

cd $HOME

# v22, v20, v18
NODE_VERSION=v22

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}

node --help
