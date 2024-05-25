FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . .

RUN cd hello_world_application
RUN cmake -B _build
RUN cmake --build _build
RUN ls
