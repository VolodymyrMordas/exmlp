# Dockerfile
FROM postgres:11.1-alpine

ENV SEED $SEED
ENV POSTGRES_USER=dockertest
ENV POSTGRES_PASSWORD=B5tPTA7mxAS8g6tX
ENV POSTGRES_DB=dockertest

ADD ./sql/fixture.000.sql /docker-entrypoint-initdb.d
ADD ./sql/fixture.001.sql /docker-entrypoint-initdb.d

EXPOSE 5432
