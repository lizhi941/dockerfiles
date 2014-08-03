# Strict mode
set -euo pipefail
IFS=$'\n\t' 

# Create a self signed certificate for the user if one doesn't exist
if [ ! -f $PEM_FILE ]; then
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $PEM_FILE -out $PEM_FILE \
    -subj "/C=XX/ST=XX/L=XX/O=dockergenerated/CN=dockergenerated"
fi

if [ ! -z "$PASSWORD" ]; then
  # use password on notebook
  HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))" )
  echo "c.NotebookApp.password =u'${HASH}'" >> /.ipython/profile_default/ipython_notebook_config.py
  unset PASSWORD
fi

ipython notebook --certfile=$PEM_FILE
