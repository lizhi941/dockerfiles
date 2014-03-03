FROM base/arch
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python2-mako deluge

VOLUME /config

EXPOSE 8112 58846

ENTRYPOINT CMD /usr/bin/deluge-web -c /config --no-ssl
