#!/usr/bin/env bash
export POSTGRES_PORT=5432
export POSTGRES_HOST=localhost
export POSTGRES_DB=dockertest
export POSTGRES_DB_SEED=true
export POSTGRES_USER=dockertest
export POSTGRES_PASSWORD=B5tPTA7mxAS8g6tX

echo "=============spin-up-postgres============"

docker rm -f postgres-dockertest
docker build . -t postgres:dockertest
docker run -d -p 5433:5432 --name postgres-dockertest postgres:dockertest