FROM ubuntu:latest

RUN apt-get update && apt-get install -y git make gcc dnsutils tcpdump && \
    git clone https://github.com/jedisct1/dnsblast && \
    cd dnsblast && make && cp dnsblast /bin && \
    apt-get clean && \
    rm -rf ../dnsblast /var/lib/apt/lists/* /tmp/* /var/tmp/*
