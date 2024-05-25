FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . hello_world_application/
WORKDIR hello_world_application

RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cd _build && ls
