from  hammal-docker-proxy.maqingjie.top/kartoza/postgis:11.0-2.5

ADD scripts /scripts

WORKDIR /scripts
RUN chmod +x *.sh

# Run any additional tasks here that are too tedious to put in
# this dockerfile directly.
RUN set -eux \
    && /scripts/setup.sh

VOLUME /var/lib/postgresql

ENTRYPOINT /scripts/docker-entrypoint.sh
