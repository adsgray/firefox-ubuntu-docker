FROM ubuntu:16.04

RUN useradd -m -u 1000 user

RUN apt-get update \
      && apt-get install -y --no-install-recommends software-properties-common \
      && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ xenial universe multiverse" \
    && add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ xenial-updates universe multiverse" \
    && apt-get update \
    && apt-get install -y --no-install-recommends firefox \
    && rm -rf /var/lib/apt/lists/*

CMD firefox

