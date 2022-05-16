ARG TEXLIVE_TAG=latest
FROM texlive/texlive:${TEXLIVE_TAG}

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install -y software-properties-common apt-utils && \
    DEBIAN_CODENAME=$(lsb_release -c | cut -f2) && \
    apt-add-repository "deb http://ftp.debian.org/debian $DEBIAN_CODENAME main contrib" && \
    apt update && \
    apt install -y ttf-mscorefonts-installer

WORKDIR /docs
