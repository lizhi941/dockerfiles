FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN yes | pacman -S ipython python-pyzmq python-tornado python-nose python-jinja python-pygments texlive-core mesa-libgl python-matplotlib python-numpy

ADD prep.sh /root/prep.sh
RUN ipython profile create
RUN sh /root/prep.sh

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888
# Mount your cert here
ENV PEM_FILE /key.pem
ENV PASSWORD Dont make this your default

ADD start.sh /root/start.sh

ENTRYPOINT sh /root/start.sh
