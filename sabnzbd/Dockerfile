FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN pacman -S --noconfirm python2-pyopenssl python2-cheetah git

RUN git clone https://github.com/sabnzbd/sabnzbd.git /sabnzbd

VOLUME /config

expose 8080

ENTRYPOINT python2 /sabnzbd/SABnzbd.py --config-file /config --server :8080
