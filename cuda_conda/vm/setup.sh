# !/bin/bash

# cocktail
echo "SETUP"
# export PATH=/root/anaconda3/bin/:$PATH
conda install -y pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
conda install -y -c conda-forge cupy nccl cudatoolkit=11.8

pip install transformers==4.21.1
pip install datasets
pip install netifaces
pip install zstandard

# sailor
pip install kubernetes==21.7.0
pip install grpcio==1.43.0
pip install grpcio-tools==1.43.0
pip install protobuf==3.19.4