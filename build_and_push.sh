#!/bin/bash

docker run --platform linux/amd64 --rm --entrypoint /bin/sh trufflesuite/ganache-cli -c "cat /app/ganache-core.docker.cli.js" > ganache-core.docker.cli.js
docker run --platform linux/amd64 --rm --entrypoint /bin/sh trufflesuite/ganache-cli -c "cat /app/ganache-core.docker.cli.js.map" > ganache-core.docker.cli.js.map

docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t simbachain/ganache-cli-multiarch:latest .

rm ganache-core.docker.cli.js
rm ganache-core.docker.cli.js.map

