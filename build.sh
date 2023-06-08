#!/bin/bash

if [ "$#" -ne 1 ]; then
        echo "Enter tag name"
        exit 1
fi

cd ~/testimage
DOCKER_BUILDKIT=0 sudo docker build -t jennyjyz/elastic-ml:$1 -f Dockerfile .
sudo docker images