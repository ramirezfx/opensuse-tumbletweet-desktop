#!/bin/sh

usermod -l $USER opensuse
groupmod -n $USER opensuse
echo $USER':'$PASSWORD | chpasswd

mv /home/opensuse /home/$USER

ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
