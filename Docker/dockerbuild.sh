#!/bin/zsh

docker build --rm -f "Dockerfile" -t ghcr.io/tgoelles/modellieren:latest "."
docker push ghcr.io/tgoelles/modellieren:latest    ✔ │ 1m 45s  │ base  │ 13:41:23 

