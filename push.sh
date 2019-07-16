#!/bin/bash

docker images --format "{{.Repository}}:{{.Tag}}" toomee/node-installer | xargs -L1 docker push
