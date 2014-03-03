FROM base/arch
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python2 git

RUN git clone https://github.com/rembo10/headphones.git /headphones

VOLUME /config

EXPOSE 8181

CMD python2 /headphones/Headphones.py --datadir /config
