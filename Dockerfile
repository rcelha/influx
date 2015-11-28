FROM buildpack-deps:jessie

RUN wget http://influxdb.s3.amazonaws.com/influxdb_0.9.5.1_amd64.deb && \
    dpkg -i influxdb_0.9.5.1_amd64.deb

EXPOSE 8083 8086
VOLUME /root/.influxdb
CMD ["influxd"]
