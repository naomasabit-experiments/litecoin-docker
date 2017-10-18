FROM ubuntu:16.04
MAINTAINER Sreekanth G S <mail@sreekanth.in>

WORKDIR /root
RUN apt update
RUN apt-get install -y wget
RUN wget https://download.litecoin.org/litecoin-0.14.2/linux/litecoin-0.14.2-x86_64-linux-gnu.tar.gz
RUN tar -zvxf litecoin-0.14.2-x86_64-linux-gnu.tar.gz
RUN mv litecoin-0.14.2 litecoin
RUN cp litecoin/bin/* /usr/local/bin

VOLUME ["/opt/litecoin"]

EXPOSE 9332

CMD ["litecoind", "--conf=/opt/litecoin/litecoin.conf", "--printtoconsole"]
