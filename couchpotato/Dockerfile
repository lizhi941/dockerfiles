FROM base/devel:latest
MAINTAINER Taylor "Nekroze" Lawson

RUN yaourt -Syu --noconfirm
RUN yaourt -S --noconfirm couchpotato-git python2-pyopenssl

VOLUME /root/.couchpotato/

expose 5050

ENTRYPOINT python2 /opt/couchpotato/CouchPotato.py
