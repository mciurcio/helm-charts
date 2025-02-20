#!/bin/bash

set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y upgrade

# TODO install and configure tzdata, avoid this prompt
#
# Setting up tzdata (2024b-0ubuntu0.24.04.1) ...
#debconf: unable to initialize frontend: Dialog
#debconf: (TERM is not set, so the dialog frontend is not usable.)
#debconf: falling back to frontend: Readline
#Configuring tzdata
#------------------
#
#Please select the geographic area in which you live. Subsequent configuration questions will narrow this down by presenting a list of cities,
#representing the time zones in which they are located.
#
#  1. Africa   3. Antarctica  5. Asia      7. Australia  9. Indian    11. Etc
#  2. America  4. Arctic      6. Atlantic  8. Europe     10. Pacific  12. Legacy
# Geographic area:

apt-get -y install \
    curl \
    wget \
    git \
    sudo \
    iputils-ping \
    net-tools

# TODO: allow this user to sudo without password?
useradd user -s /bin/bash -u 10001 -m

