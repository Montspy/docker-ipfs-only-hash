# docker-ipfs-only-hash

Dockerized version of [pure-ipfs-only-hash](https://github.com/Airtune/pure-ipfs-only-hash)

Made for use in [LooPyMint2](https://github.com/sk33z3r/loopymint2)

## Usage

First, build the container with the npm module installed

```shell
$ ./docker.sh build
Sending build context to Docker daemon  1.081MB
Step 1/7 : FROM node:16-alpine
 ---> 0e1547c0f4a4
...
Removing intermediate container c8f9146bc757
 ---> 3ea2b2c7e2a3
Successfully built 3ea2b2c7e2a3
Successfully tagged ipfs-only-hash:latest
```

Then you can run it on any file in the current directory

```shell
$ ./docker.sh Dockerfile
bafybeibcpv65q2i7gekijsl5ykk2r26byigxiszzrhbqwjeteamxqp4eou
```

You can specify the CID version like this

```shell
$ ./docker.sh --cid-version=0 Dockerfile
QmQfHZEqa5K8UcYfe8NxW8WKdsFD8NNXNx4sY2o3VaoLM2
```
