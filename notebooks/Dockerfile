FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN yes | pacman -S ipython python-pyzmq python-tornado python-nose python-jinja python-pygments texlive-core mesa-libgl python-matplotlib python-numpy

RUN ipython profile create
RUN ipython -c "%matplotlib inline"

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD start.sh /root/start.sh

ENTRYPOINT sh /root/start.sh
