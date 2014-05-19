FROM base/devel:latest
MAINTAINER Taylor "Nekroze" Lawson

RUN yaourt -Syu --noconfirm
RUN pacman -S --noconfirm python2-pyopenssl
RUN git clone https://github.com/pillone/usntssearch.git

VOLUME /mnt/state
expose 5000

CMD cd usntssearch/NZBmegasearch && touch /mnt/state/custom_params.ini && ln -s /mnt/state/custom_params.ini ./custom_params.ini && python2 mega2.py
