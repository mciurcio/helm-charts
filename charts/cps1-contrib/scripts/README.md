# Installation scripts for CPS1 packages

## Requirements

Docker registry connected to the buildah container.

reg_name='kind-registry'
reg_port='5001'
docker run -d --restart=always -p "127.0.0.1:${reg_port}:5000" --network bridge --name "${reg_name}" \
    registry:2
fi

docker network create reg
docker network connect reg 6b7c40f74f36

## Running and testing

docker run --network reg --privileged -v .:/scripts -ti quay.io/buildah/stable bash -x /scripts/template-image-builder.sh

