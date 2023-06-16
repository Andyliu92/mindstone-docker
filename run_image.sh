#!/bin/bash

export LOCAL_POST_DIR="please change LOCAL_POST_DIR"
export PORT="please change PORT"

if [[ $LOCAL_POST_DIR == "please change LOCAL_POST_DIR" ]] ; then
    echo "In run_image.sh: Please change LOCAL_POST_DIR"
    exit -1
fi

if [[ $PORT == "please change PORT" ]] ; then
    echo "In run_image.sh: Please change PORT"
    exit -1
fi

sudo docker run \
    --name mindstone \
    -p $PORT:3000 \
    -v $LOCAL_POST_DIR:/root/mindstone/posts \
    --restart=always \
    -d andyliu61/mindstone:latest \