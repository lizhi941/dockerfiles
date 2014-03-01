FROM base/arch
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm sabnzbnd

VOLUME /config

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

expose 8080 9090
