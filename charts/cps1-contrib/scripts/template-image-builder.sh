#!/bin/bash
#
# This is an example of how CPS1 will the installation script of each package
# during the build of a container image for a workspace template
#

TEMPLATE_NAME="default-template"
TEMPLATE_BASE_IMAGE="ubuntu:latest"

buildah from --name ${TEMPLATE_NAME} ${TEMPLATE_BASE_IMAGE}

buildah run --volume /scripts:/scripts ${TEMPLATE_NAME} bash -x /scripts/baseline.sh

#buildah run --env NODE_VERSION=v20 --volume /scripts:/scripts ${TEMPLATE_NAME} bash /scripts/packages/node.sh

buildah run --env PYTHON_VERSION=3.12 --volume /scripts:/scripts ${TEMPLATE_NAME} bash /scripts/packages/python.sh

buildah commit ${TEMPLATE_NAME} ${TEMPLATE_NAME}

