#!/usr/bin/env bash
set -xeo pipefail

wget http://apache.mirrors.spacedump.net/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz
tar xvzf spark-2.3.0-bin-hadoop2.7.tgz
pushd spark-2.3.0-bin-hadoop2.7
docker build -t andrusha/spark-k8s:2.3.0-hadoop2.7 -f kubernetes/dockerfiles/spark/Dockerfile .
popd
