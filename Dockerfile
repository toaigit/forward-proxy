FROM debian:buster

MAINTAINER  Toai Vo "<toaivo@stanford.edu>"

ARG USERUID

# Update the package repository
RUN DEBIAN_FRONTEND=noninteractive apt-get update 
COPY trafficserver.deb /tmp/trafficserver.deb
RUN apt-get -y install /tmp/trafficserver.deb 

RUN mkdir /var/run/trafficserver && \
    chown trafficserver:trafficserver /var/run/trafficserver && \
    usermod -u ${USERUID} trafficserver && \
    apt-get clean 

COPY records.config logging.yaml ip_allow.config /etc/trafficserver/

EXPOSE 8080

CMD ["/usr/bin/traffic_server"]

