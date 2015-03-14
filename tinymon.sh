#!/bin/bash

SERVICES="ntp mysql apache2 bind9 fail2ban rsyslog"
EMAIL="admin@server.domain.tld"

for SERVICE in ${SERVICES}
 do
   /usr/sbin/service $SERVICE status 2>&1>/dev/null
    if [ $? -ne 0 ];
      then (
        /usr/sbin/service $SERVICE restart 2>&1>/dev/null
        echo "Tinymon: $SERVICE is restarted on `hostname -f`" | mail -s "Tinymon: $SERVICE is restarted on `hostname -f`" $EMAIL
      )
#      else
#        echo -e "$SERVICE is running! All right ..."
    fi
done
