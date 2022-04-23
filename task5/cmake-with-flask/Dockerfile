from ubuntu:latest
MAINTAINER Polev Alexey 126
LABEL version="228.0"

RUN apt-get update
RUN apt-get install -y g++ 
RUN apt-get install -y make 
RUN apt-get install -y cmake
RUN apt-get install -y python3 
RUN apt-get install -y python3-pip
RUN pip install flask

COPY . opt/techprog
WORKDIR /opt/techprog
RUN mkdir build && cd build && cmake .. && make

RUN useradd -s /bin/bash tp2022user
USER tp2022user

ENTRYPOINT python3 app.py --host 0.0.0.0 --port 8898

EXPOSE 8898
