#!/usr/bin/env bash
set -xeo pipefail

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push andrusha/spark-k8s:$IMAGE_VERSION
