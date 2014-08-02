FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN pacman -S --noconfirm ipython

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD start.sh /root/start.sh

ENTRYPOINT sh /root/start.sh
