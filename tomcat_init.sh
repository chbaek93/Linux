#!/bin/sh
# chkconfig: 345 70 70
# description:  This shell script takes care of starting and stopping
#               the tomcat services.

. /etc/rc.d/init.d/functions

case "$1" in
 'start')
    /etc/rc.d/start_tomcat.sh
    ;;
 'stop')
    /etc/rc.d/stop_tomcat.sh
    ;;
  *)
    echo $"Usage: tomcat {start|stop}"
    RETVAL=2
    ;;
esac
