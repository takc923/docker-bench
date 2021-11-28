#!/bin/bash -e
workdir=$(dirname "$0")
cd "$workdir"
mkdir -p files
for i in $(seq 1 20000); do dd if=/dev/zero of=files/$i.bin count=5 bs=1024 2>/dev/null; done
