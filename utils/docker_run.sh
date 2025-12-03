#!/bin/bash
docker run -it --rm \
    --network host \
    --privileged \
    -v $(pwd)/../script_main_mission.py:/root/app/script_main_mission.py \
    -v /dev:/dev \
    --name voxl-mavsdk-python-conteiner \
    voxl-mavsdk-python:custom \
    bash
