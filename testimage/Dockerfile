# syntax=docker/dockerfile:1

FROM jennyjyz/cuda_conda:latest
WORKDIR /workspace
COPY ./sailor_cocktail/ ./elastic-ml/
COPY ./vm/setup.sh .
RUN chmod +x ./setup.sh
RUN ./setup.sh