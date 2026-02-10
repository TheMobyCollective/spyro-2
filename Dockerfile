FROM debian:trixie-slim

WORKDIR /s2

RUN apt update && \
    apt install -y \
    bchunk \
    binutils-mips-linux-gnu \
    build-essential \
    cpp-mips-linux-gnu \
    gcc-mips-linux-gnu \
    git \
    python3 \
    pip

RUN git config --global --add safe.directory /s2

RUN python3 -m pip install --break-system-packages colorama GitPython matplotlib pandas
