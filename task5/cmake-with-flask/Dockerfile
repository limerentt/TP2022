from ubuntu:latest
MAINTAINER Polev Alexey 126
LABEL version="1.0"
# from ubuntu:20.04.4

RUN apt-get update && \
    apt-get -y g++ make cmake && \
    apt-get -y python3 python3-pip
RUN pip install -y flask
COPY . opt/techprog
WORKDIR /opt/techprog
USER tp2022user
RUN mkdir build && cd build
WORKDIR ..
RUN cmake && make
ENTRYPOINT python3 app.py --host 0.0.0.0 --port 8898
EXPOSE 8898
