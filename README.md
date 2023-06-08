# Build Docker Image

## docker_utils
- start_vm.sh: You can run this script __locally__  to create a vm and copy the project folder to the vm.
- install_docker.sh: You can run this script __on the vm__ to install docker
- docker_vm.sh: Useful docker commands

## cuda_conda
The context for building an image with ubuntu18.04, cuda11.8 and conda. Python packages required by CocktailSGD are installed.\
The docker image is jennyjyz/cuda_conda:latest

## testimage
The context for building an image of sailor_cocktail which is run in the pods.\
Please clone the desired branch from https://github.com/eth-easl/elastic-spot-ml.\
Please change the folder name accordinly in `COPY ./sailor_cocktail/ ./elastic-ml/`\
The latest runnable image for branch jennyjyz_eval is jennyjyz/elastic-ml:eval_bw.

## build.sh
You can run this script to build a docker image.\
Please change the folder, docker repo and tag names accordingly.

## push.sh
You can run this script to push a docker image.

Please change the docker repo and tag names accordingly.

