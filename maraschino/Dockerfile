FROM base/arch
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python2 git

RUN git clone https://github.com/mrkipling/maraschino.git /maraschino

VOLUME /config

EXPOSE 7000

CMD python2 /maraschino/Maraschino.py --datadir /config
