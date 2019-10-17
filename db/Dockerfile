FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=95BWUynKTJmLhbnH

ADD ./sql/fixture.000.sql /docker-entrypoint-initdb.d
ADD ./sql/fixture.001.sql /docker-entrypoint-initdb.d

EXPOSE 3306