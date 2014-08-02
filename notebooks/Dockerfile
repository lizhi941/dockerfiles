FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN pacman -Rns --noconfirm lzo2
RUN pacman -S --noconfirm ipython python-pyzmq python-tornado python-nose python-jinja python-pygments texlive-core mesa-libgl python-matplotlib numpy

RUN ipython profile create

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD start.sh /root/start.sh

ENTRYPOINT sh /root/start.sh
