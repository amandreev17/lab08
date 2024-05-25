FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . .

RUN cd hello_world_application && cmake -B_build && cmake --build _build
RUN cd hello_world_application && ls
