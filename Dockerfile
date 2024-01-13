# ubuntu:22.04 on 1/12/2024
FROM ubuntu@sha256:6042500cf4b44023ea1894effe7890666b0c5c7871ed83a97c36c76ae560bb9b 

LABEL maintainer="sewook.wee@maansam.com"

# Install Python & pip
RUN apt-get update
RUN apt-get --assume-yes install software-properties-common=0.99.22.9
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get --assume-yes update
RUN apt-get --assume-yes install python3.10=3.10.12-1~22.04.3
RUN apt-get --assume-yes install python-is-python3=3.9.2-2
RUN apt-get --assume-yes install python3-pip=22.0.2+dfsg-1ubuntu0.4
