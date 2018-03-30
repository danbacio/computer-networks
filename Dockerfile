
FROM kalilinux/kali-linux-docker

USER root

RUN apt-get update 
RUN apt-get install -y build-essential git net-tools arp-scan nmap rtpflood python python-pip
RUN pip install scapy

RUN useradd -u 1000 -m rtuser
USER rtuser
WORKDIR /home/rtuser
