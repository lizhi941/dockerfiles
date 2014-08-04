# Strict mode
set -euo pipefail
IFS=$'\n\t' 

if [ ! -z "$PASSWORD" ]; then
  # use password on notebook
  HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))" )
  echo "c.NotebookApp.password =u'${HASH}'" >> /.ipython/profile_default/ipython_notebook_config.py
  unset PASSWORD
fi

ipython notebook
