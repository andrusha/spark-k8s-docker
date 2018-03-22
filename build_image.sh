#!/usr/bin/env bash
set -xeo pipefail

wget -q -O spark.tgz $SPARK_URL
mkdir -p spark
tar -xvz --strip 1 -C spark -f spark.tgz
pushd spark
docker build -t andrusha/spark-k8s:$IMAGE_VERSION -f kubernetes/dockerfiles/spark/Dockerfile .
popd
