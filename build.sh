#!/usr/bin/env bash

set -e

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main github.com/coldog/kube-master-healthz

docker build -t coldog/kube-master-healthz .
docker push coldog/kube-master-healthz

rm main
