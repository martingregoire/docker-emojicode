FROM ubuntu:bionic

RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    ca-certificates \
    g++ \
    rsync \
    wget \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENV TERM xterm

RUN mkdir -p /root/emojicode \
  && wget -q https://github.com/emojicode/emojicode/releases/download/v0.7/Emojicode-0.7-Linux-x86_64.tar.gz -O emojicode.tar.gz \
  && tar -xzf emojicode.tar.gz --directory /root/emojicode --strip-components=1 \
  && rm emojicode.tar.gz \
  && cd /root/emojicode \
  && echo y | ./install.sh \
  && cd  \
  && rm -r /root/emojicode
