FROM base/devel:latest
MAINTAINER Taylor "Nekroze" Lawson

RUN yaourt -Syu --noconfirm
RUN yaourt -S --noconfirm sabnzbd python-pyopenssl

VOLUME /config

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

expose 8080 9090

ENTRYPOINT ["/start.sh"]
