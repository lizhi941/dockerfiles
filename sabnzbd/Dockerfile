FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python2-pyopenssl git

RUN git clone https://github.com/sabnzbd/sabnzbd.git /sabnzbd

VOLUME /config

expose 8080

ENTRYPOINT python2 /sabnzbd/SABnzbd.py --config-file /config --server :8080
