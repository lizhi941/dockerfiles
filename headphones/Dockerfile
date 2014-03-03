FROM base/devel:latest
MAINTAINER Taylor "Nekroze" Lawson

RUN yaourt -Syu --noconfirm
RUN yaourt -S --noconfirm headphones-git

VOLUME /config

EXPOSE 8181

CMD /usr/bin/headphones --datadir /config --nolaunch
