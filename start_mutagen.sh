#!/bin/bash -x
mutagen sync terminate -a
docker stop docker-bench-sidecar
docker rm docker-bench-sidecar
docker volume rm docker-bench-cache
set -e
docker volume create docker-bench-cache
docker container create --name docker-bench-sidecar -v docker-bench-cache:/volumes/mycache mutagenio/sidecar
docker container start docker-bench-sidecar
mutagen sync create --name docker-bench --sync-mode=two-way-safe . docker://docker-bench-sidecar/volumes/mycache
