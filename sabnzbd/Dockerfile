FROM base/arch
MAINTAINER Taylor "Nekroze" Lawson

pacman -Syu
pacman -S sabnzbnd

VOLUME /config
VOLUME /data

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

expose 8080 9090
