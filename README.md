# Spark on Kubernetes Docker images

[![Build Status](https://travis-ci.org/andrusha/spark-k8s-docker.svg?branch=master)](https://travis-ci.org/andrusha/spark-k8s-docker)

Spark on Kubernetes Docker images built with [official Apache binaries](http://spark.apache.org/downloads.html).

## Build matrix

Spark comes in a number of flavours, no version is the latest, so choose one which suits your needs:

| Image Version                   | Spark Version | Hadoop Version | Scala Version |
| ------------------------------- | ------------- | -------------- | ------------- |
| 2.3.0-hadoop2.6                 | 2.3.0         | 2.6            | 2.11          |
| 2.3.0-hadoop2.7                 | 2.3.0         | 2.7            | 2.11          |
| 2.3.0-without-hadoop            | 2.3.0         | -              | 2.11          |
| 2.3.1-hadoop2.6                 | 2.3.1         | 2.6            | 2.11          |
| 2.3.1-hadoop2.7                 | 2.3.1         | 2.7            | 2.11          |
| 2.3.1-without-hadoop            | 2.3.1         | -              | 2.11          |
| 2.3.2-hadoop2.6                 | 2.3.2         | 2.6            | 2.11          |
| 2.3.2-hadoop2.7                 | 2.3.2         | 2.7            | 2.11          |
| 2.3.2-without-hadoop            | 2.3.2         | -              | 2.11          |
| 2.4.0-hadoop2.6                 | 2.4.0         | 2.6            | 2.11          |
| 2.4.0-hadoop2.7                 | 2.4.0         | 2.7            | 2.11          |
| 2.4.0-without-hadoop            | 2.4.0         | -              | 2.11          |
| 2.4.0-scala-2.12-without-hadoop | 2.4.0         | -              | 2.12          |

The most convenient way is to use it is to build your own image on top of it. Refer to [apache/spark Dockerfile](https://github.com/apache/spark/blob/master/resource-managers/kubernetes/docker/src/main/dockerfiles/spark/Dockerfile).
