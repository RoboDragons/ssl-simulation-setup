FROM robocupssl/ubuntu-vnc:latest

USER root

RUN apt update \
    && apt install -y --no-install-recommends \
        build-essential ruby g++ g++-7 libfltk1.1-dev libjpeg-dev protobuf-compiler make libgsl0-dev libprotobuf-dev libpng-dev freeglut3-dev

RUN apt update && apt install -y --no-install-recommends ca-certificates git openssh-client tmux vim iputils-ping net-tools

USER default
