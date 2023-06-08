# syntax=docker/dockerfile:1

FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu18.04 AS cuda
RUN apt-get update --fix-missing && \
    apt-get install -y sudo build-essential vim wget bzip2 ca-certificates curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV PATH=/opt/conda/bin:$PATH
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    conda clean -afy && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc && \
    conda install -y python=3 && conda update conda
WORKDIR /workspace
COPY ./vm/setup.sh .
RUN chmod +x ./setup.sh
RUN ./setup.sh