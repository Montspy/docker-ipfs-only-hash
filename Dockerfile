FROM node:16-alpine

RUN apk add bash

# Set workdir initially just for npm to install
WORKDIR /usr/src/app

# Install the app from npm directly
RUN npm i --only=production pure-ipfs-only-hash
RUN ln -s /usr/src/app/node_modules/pure-ipfs-only-hash/cli.js /usr/bin/ipfs-hash

# set new workdir for file hashing
WORKDIR /files

# Make this command the default, so only arguments are needed after calling ./docker.sh
ENTRYPOINT [ "ipfs-hash" ]
