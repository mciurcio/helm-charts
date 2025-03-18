# Installation scripts for CPS1 packages

## Building a template

1. Set up a local registry

Create a Docker network and start a local registry:

```
docker network create registry

docker run -d --restart=always --network registry --name cps1-registry registry:2
```

2. Run the `template-builder.sh` script

Execute the script inside a Buildah container:

```
docker run --network registry --privileged -v .:/scripts -ti quay.io/buildah/stable /bin/bash /scripts/template-builder.sh
```

To customize the build, set environment variables before running the script:

```
docker run --network registry --privileged -e TEMPLATE_NAME=supper-app -v .:/scripts -ti quay.io/buildah/stable /bin/bash /scripts/template-builder.sh
```

For a complete list of available variables, refer to the `template-builder.sh` script.

## Developing packages

To work on CPS1 packages, run the package script inside a base image for testing:

```
docker run -ti -v ./scripts:/scripts ghcr.io/cps-1/base-image /bin/bash
```

