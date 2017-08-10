#! /bin/bash

# exit if a command fails
set -e
set -x

# install curl (needed to install rust)
apt-get update && apt-get install -y curl make gdb g++-multilib lib32stdc++6 libpq-dev libssl-dev libncurses5-dev

curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain $1

# cleanup package manager
apt-get remove --purge -y curl && apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# prepare dir
mkdir /source
