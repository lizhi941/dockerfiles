HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))")
unset PASSWORD

ipython notebook --no-browser --port 8888 --ip=* --NotebookApp.password="$HASH"
