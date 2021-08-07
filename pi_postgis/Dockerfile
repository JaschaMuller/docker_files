FROM arm64v8/postgres:latest

ENV POSTGIS_MAJOR 2.3
ENV POSTGIS_VERSION 2.3.*

RUN apt-get update \
      && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           #postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           #postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           #postgis=$POSTGIS_VERSION \
           #postgresql-$PG_MAJOR-pgrouting postgresql-$PG_MAJOR-pgrouting-scripts \
           gdal-bin \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY init.sql /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/postgis.sh && \
      chmod +x /usr/local/bin/update-postgis.sh

