FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . /solver ./
WORKDIR ./

RUN cmake -B build
RUN cmake --build build
