#!/bin/bash

# Membuat Docker image
docker build -t ghcr.io/faizzahell/karsajobs-ui:latest .

# Instruksi login ke GitHub Container Registry
docker login ghcr.io -u faizzahell -p $GH_PACKAGES_TOKEN

# Melakukan push Docker image ke GitHub Container Registry
docker push ghcr.io/faizzahell/karsajobs-ui:latest
