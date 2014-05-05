FROM base/devel:latest
MAINTAINER Taylor "Nekroze" Lawson

RUN yaourt -Syu --noconfirm
RUN yaourt -S --noconfirm sabnzbd-git python2-pyopenssl

VOLUME /config

expose 8080

ENTRYPOINT python2 /usr/share/sabnzbd/SABnzbd.py --config-file /config --server :8080
