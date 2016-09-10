#!/bin/bash

set -ex

mkdir -p bin
if [[ ! -f ./bin/hugo ]];
then
	pushd bin
	wget https://github.com/spf13/hugo/releases/download/v0.16/hugo_0.16_linux-64bit.tgz
	tar xvzf hugo_0.16_linux-64bit.tgz
	rm -f hugo_0.16_linux-64bit.tgz
	chmod +x hugo
	popd
fi
./bin/hugo --uglyUrls=true
