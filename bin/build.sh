#!/bin/bash

readonly IMAGE_NAME="$1"
readonly IMAGE_TAG="$2"

if [ -z "$IMAGE_TAG" ] ; then
    echo "IMAGE_TAG is required" >&2
    echo "$0 IMAGE_NAME IMAGE_TAG" >&2
    exit 1
fi

readonly IMAGE="${IMAGE_NAME}:${IMAGE_TAG}"
readonly IMAGE_DOCKERFILE="${IMAGE_TAG}/Dockerfile"

set -ex
docker build --tag "$IMAGE" -f "$IMAGE_DOCKERFILE" .
