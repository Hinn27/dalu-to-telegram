#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y make git zlib1g-dev libssl-dev gperf cmake g++

if [ ! -d "/tmp/telegram-bot-api" ]; then
  git clone --recursive https://github.com/tdlib/telegram-bot-api.git /tmp/telegram-bot-api
fi

cd /tmp/telegram-bot-api
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local ..
cmake --build . --target install -j4
