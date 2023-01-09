#!/bin/sh

ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
