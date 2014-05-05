FROM base/devel:latest
MAINTAINER Taylor "Nekroze" Lawson

RUN yaourt -Syu --noconfirm
RUN yaourt -S --noconfirm sickbeard-git python2-pyopenssl

VOLUME /mnt/state
expose 8081

ENTRYPOINT python2 /opt/sickbeard/SickBeard.py --datadir=/mnt/state
