FROM base/arch
MAINTAINER Taylor "Nekroze" Lawson

pacman -Syu --noconfirm
pacman -S --noconfirm python2-mako deluge

VOLUME /config

expose 8112 58846

ENTRYPOINT CMD /usr/bin/deluge-web -c /config --no-ssl
