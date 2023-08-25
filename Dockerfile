FROM denoland/deno:ubuntu-1.36.1

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=America/Denver apt-get -y install tzdata
RUN apt-get install -y \
    ffmpeg \
    mkvtoolnix \
    mediainfo \
    vim \
    rename \
    git \
    make \
    zsh


RUN cd /tmp && git clone https://git.lousando.xyz/lousando/clean-cow.git && cd clean-cow && make install

CMD ["tail", "-f", "/dev/null"]