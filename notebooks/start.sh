cat <<EOF >> /.ipython/profile_default/ipython_notebook_config.py
c.IPKernelApp.pylab = 'inline'
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888
EOF

if [ ! -z "$PASSWORD" ]; then
  # use password on notebook
  HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))" )
  echo "c.NotebookApp.password =u'${HASH}'" >> /.ipython/profile_default/ipython_notebook_config.py
  unset PASSWORD
fi

ipython notebook
