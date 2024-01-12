#!/bin/bash

IMAGE_NAME="$1"
IMAGE_TAG="$2"

if [ -z "$IMAGE_TAG" ] ; then
    echo "IMAGE_TAG is required" >&2
    echo "$0 IMAGE_NAME IMAGE_TAG" >&2
    exit 1
fi

IMAGE="${IMAGE_NAME}:${IMAGE_TAG}"
IMAGE_DOCKERFILE="${IMAGE_TAG}/Dockerfile"

set -ex
docker build --tag "$IMAGE" -f "$IMAGE_DOCKERFILE" .
