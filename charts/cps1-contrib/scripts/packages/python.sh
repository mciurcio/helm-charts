#!/bin/bash

set -euo pipefail

: ${PYTHON_VERSION:="3.13"}

# Python
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
apt-get install -y build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev

curl -o- https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | PYENV_ROOT=/home/user/.pyenv bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /home/user/.bashrc && \
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> /home/user/.bashrc && \
echo 'eval "$(pyenv init -)"' >> /home/user/.bashrc

PYENV_ROOT=/home/user/.pyenv
PATH="$PYENV_ROOT/bin:$PATH"
HOME=/home/user

eval "$(pyenv init -)" && \
pyenv install ${PYTHON_VERSION} && \
pyenv global ${PYTHON_VERSION}
chown -R user:user /home/user/.pyenv

