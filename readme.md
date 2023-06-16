# Docker image for Mindstone

## Introduction
Mindstone is an open source obsidian publish equivalent. See [this page](https://mindstone.tuancao.me/) for more information.

This repository contains the dockerfile that can be used to create docker images for mindstone. There is also a [published docker image](https://hub.docker.com/r/andyliu61/mindstone).

## Usage

### Self-built
1. clone the repo
2. run `build_image.sh`
3. change variable `LOCAL_POST_DIR` to the root folder path that holds your content for publish. Remember that there must be an `index.md` in this folder.
4. change variable `PORT` to the port you want to provide service.
5. run `run_image.sh` or `run_image_debug.sh` for debug.

### Use published docker image
1. run `docker pull andyliu61/mindstone:latest`
2. use the following command to create an container, or use `run_image.sh` in this repo.
```shell
docker run \
    --name <container name> \
    -p <port>:3000 \
    -v <local post dir>:/root/mindstone/posts \
    --restart=always \
    -d obsidian_pub:latest \
``` 