cat <<EOF >> /.ipython/profile_default/ipython_notebook_config.py \
c.IPKernelApp.pylab = 'inline' \
c.NotebookApp.ip = '*' \
c.NotebookApp.open_browser = False \
c.NotebookApp.port = 8888 \
c.NotebookApp.trust_xheaders = True \
EOF
