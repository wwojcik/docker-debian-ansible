FROM debian:jessie

MAINTAINER Wojciech Wójcik <wojtaswojcik@gmail.com>

RUN apt-get update && \
    apt-get -y install python-pip python-dev wget && \
    pip install markupsafe ansible && \
    apt-get remove -y python-pip python-dev && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD [""]