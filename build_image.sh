#!/usr/bin/env bash
set -xeo pipefail

ARCHIVE_NAME=$(echo $SPARK_URL | grep -o -E '[^/]+$')

wget -q $SPARK_URL -O $ARCHIVE_NAME
echo "$SHA_CHECKLINE" | shasum -a 512 -c -s $SHA_CHECKIFLE
mkdir -p spark
tar -xvz --strip 1 -C spark -f $ARCHIVE_NAME
pushd spark
docker build -t andrusha/spark-k8s:$IMAGE_VERSION -f kubernetes/dockerfiles/spark/Dockerfile .
popd
