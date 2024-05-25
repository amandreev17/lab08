FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . /solver/hello_world_apllication ./
WORKDIR ./

RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build

WORKDIR ./
ENTRYPOINT ["./_build/hello_world"]
