#!/usr/bin/env bash

name="ipfs-only-hash"

case $1 in
    build) docker build -t $name .;;
    *) docker run -it --rm --name $name -v /${PWD}:/files $name $@;;
esac
