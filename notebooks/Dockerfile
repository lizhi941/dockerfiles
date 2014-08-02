FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN yes | pacman -S ipython python-pyzmq python-tornado python-nose python-jinja python-pygments texlive-core mesa-libgl python-matplotlib python-numpy

RUN ipython profile create
RUN cat <<EOF >> /.ipython/profile_default/ipython_notebook_config.py
c.IPKernelApp.pylab = 'inline'
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888
c.NotebookApp.trust_xheaders = True
EOF
RUN ipython -c "%matplotlib"

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD start.sh /root/start.sh

ENTRYPOINT sh /root/start.sh
