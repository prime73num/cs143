# CS 143

> Author: Ahua  
> Create Time: 2024-01-08
> Last Modified: 2024-01-09


## Dev Environment Setup

### Dockerfile

```Dockerfile
FROM --platform=$TARGETPLATFORM ubuntu:focal

WORKDIR /usr/class

RUN set -x; buildDeps='make flex bison build-essential csh libxaw7-dev wget libc6-i386' \
  && apt-get update \
  && apt-get install -y $buildDeps

COPY . .
```
### Build & Run command

```bash
# build command
docker buildx build --platform linux/amd64 -t cs143 .
# run command
docker run -it --mount type=bind,source=$HOME/W.D/12_cs143/assignments,target=/usr/class/assignments --platform linux/amd64 cs143
```

Tips:
- --platform set platform to linux/amd64
- --mount map host directory to container
