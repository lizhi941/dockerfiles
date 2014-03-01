#! /bin/sh

/usr/bin/sabnzbd --daemon --config-file /config --server :8080
sleep 5

tail -f /config/logs/sabnzbd.*
