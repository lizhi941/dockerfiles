cat <<EOF >> /root/.ipython/profile_default/ipython_notebook_config.py
c.IPKernelApp.pylab = 'inline'
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888
c.NotebookApp.webapp_settings = {'static_url_prefix':'/static/'}
EOF

if [ ! -z "$PASSWORD" ]; then
  # use password on notebook
  HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))" )
  echo "c.NotebookApp.password =u'${HASH}'" >> /root/.ipython/profile_default/ipython_notebook_config.py
  unset PASSWORD
fi

ipython notebook
