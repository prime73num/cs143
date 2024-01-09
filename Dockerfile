FROM --platform=$TARGETPLATFORM ubuntu:focal

WORKDIR /usr/class

RUN set -x; buildDeps='make flex bison build-essential csh libxaw7-dev wget libc6-i386' \
  && apt-get update \
  && apt-get install -y $buildDeps

COPY . .
