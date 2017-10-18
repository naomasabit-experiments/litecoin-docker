FROM ubuntu:16.04
MAINTAINER Sreekanth G S <mail@sreekanth.in>

WORKDIR /root

RUN apt-get update && apt-get install -y wget && \
    wget https://download.litecoin.org/litecoin-0.14.2/linux/litecoin-0.14.2-x86_64-linux-gnu.tar.gz && \
    tar -zvxf litecoin-0.14.2-x86_64-linux-gnu.tar.gz && \
    mv litecoin-0.14.2 litecoin

VOLUME ["/opt/litecoin"]

EXPOSE 9332

CMD ["/root/litecoin/bin/litecoind", "--conf=/opt/litecoin/litecoind.conf", "--printtoconsole"]
