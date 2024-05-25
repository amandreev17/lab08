FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . /solver ./
WORKDIR ./

RUN groupadd -r sample && useradd -r -g sample sample
USER sample

WORKDIR ./
ENTRYPOINT ["./build/hello_world"]
