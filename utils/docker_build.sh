#!/bin/bash

# Descobre a pasta do script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Raiz do projeto um nivel acima de utils/
ROOT_DIR="${SCRIPT_DIR}/.."

docker build \
	-t voxl-mavsdk-python:custom \
	-f "${ROOT_DIR}/docker/Dockerfile" \
	"${ROOT_DIR}"
