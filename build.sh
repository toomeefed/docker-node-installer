#!/bin/bash

docker build -f 8/Dockerfile -t toomee/node-installer:8 .
docker build -f 10/Dockerfile -t toomee/node-installer:10 .
docker build -f 12/Dockerfile -t toomee/node-installer:12 .
