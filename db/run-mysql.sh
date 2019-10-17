#!/usr/bin/env bash

echo "=============spin-up-mysql============"

docker rm -f exmpl-mysql
docker build . -t mysql:exmpl
docker run -d -p 3306:3306 --name exmlp-mysql mysql:exmpl