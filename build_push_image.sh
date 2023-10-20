#!/bin/bash

# Membangun Docker Image
docker build -t ghcr.io/faizzahell/shipping-service:latest .

# Masuk ke GitHub Container Registry
echo $GH_PACKAGES_TOKEN | docker login ghcr.io -u faizzahell --password-stdin

# Unggah Docker Image ke GitHub Container Registry
docker push ghcr.io/faizzahell/shipping-service:latest

