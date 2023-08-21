FROM denoland/deno:ubuntu-1.36.1

RUN apt-get update
RUN apt-get install -y ffmpeg
RUN apt-get install -y mkvtoolnix
RUN apt-get install -y mediainfo
RUN apt-get install -y vim
RUN apt-get install -y rename
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y zsh

RUN cd /tmp && git clone https://git.lousando.xyz/lousando/clean-cow.git && cd clean-cow && make install

CMD ["tail", "-f", "/dev/null"]