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
    --rm \
    --name obsidian_pub \
    -p $PORT:3000 \
    -v $LOCAL_POST_DIR:/root/mindstone/posts \
    -it obsidian_pub:latest /bin/bash \