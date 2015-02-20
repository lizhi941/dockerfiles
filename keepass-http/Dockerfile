FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm && pacman -S pacman --noconfirm && pacman-db-upgrade
RUN echo "[archlinuxfr]" >> /etc/pacman.conf
RUN echo "SigLevel = Never" >> /etc/pacman.conf
RUN echo "Server = http://repo.archlinux.fr/x86_64" >> /etc/pacman.conf
RUN pacman -S yaourt --noconfirm

RUN yaourt -Sy python-keepass-httpd-git --noconfirm

VOLUME /keepass
EXPOSE 19455

CMD python-keepass-httpd run /keepass/database.kdb --host 0.0.0.0
