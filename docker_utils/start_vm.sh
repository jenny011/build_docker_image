#!/bin/bash

gcloud compute instances create jz-docker --machine-type n1-standard-4 \
--zone=europe-west4-a \
--boot-disk-type=pd-ssd --boot-disk-size=300 \
--image-project=ubuntu-os-cloud --image-family=ubuntu-2204-lts \
--restart-on-failure

sleep 30

gcloud compute scp --recurse \
--ssh-key-file ~/.ssh/cloud-computing \
--zone europe-west4-a /Users/jenny/Desktop/build_docker/testimage ubuntu@jz-docker:~/
