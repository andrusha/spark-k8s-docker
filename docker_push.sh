#!/usr/bin/env bash
set -eo pipefail

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push andrusha/spark-k8s:2.3.0-hadoop2.7
