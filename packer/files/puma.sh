#!/bin/bash
case $1 in
        start)
        cd /home/ubuntu/reddit
        puma -d --pidfile /var/run/puma.pid
        ;;
        stop)
        /bin/kill -9 `/bin/cat /var/run/puma.pid`
        ;;
esac
