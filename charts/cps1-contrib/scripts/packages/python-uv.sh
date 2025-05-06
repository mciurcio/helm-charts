#!/bin/bash

set -euo pipefail

: ${CPS1_PYTHON_UV_VERSION:="3.13"}

HOME=/home/user

curl -LsSf https://astral.sh/uv/install.sh | sh

source $HOME/.local/bin/env

uv python install $CPS1_PYTHON_UV_VERSION --default --preview

export PATH=$(dirname $(realpath $(which python))):$PATH

python -m venv $HOME/.venv

export VIRTUAL_ENV_DISABLE_PROMPT=true
source $HOME/.venv/bin/activate

echo 'VIRTUAL_ENV_DISABLE_PROMPT=1 source /home/user/.venv/bin/activate' >> /home/user/.bashrc

chown -R user:user /home/user/.local
chown -R user:user /home/user/.venv

