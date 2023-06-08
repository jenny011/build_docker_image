#!/bin/bash

if [ "$#" -ne 1 ]; then 
        echo "Enter tag name"
        exit 1
fi

sudo docker push jennyjyz/elastic-ml:$1
