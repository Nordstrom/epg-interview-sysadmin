#!/bin/bash
# lame script to see if webserver is responding and serving pages.
#
set -u
ME=`basename $0`
LOG=/var/mon/webmon.log


wget -o /tmp/webmon_err.$$ -O /tmp/webmon_index.$$ http://localhost/index.html

wgetstatus=$?

diff /tmp/webmon_index.$$ /var/www.index.html >/dev/null 2>&1

diffstatus=$?

if [ $wgetstatus -ne 0 ]
then
	echo "`date` $ME: wget error status $wgetstatus - `cat /tmp/webmon_err.$$`" >> $LOG
fi

if [ $diffstatus -ne 0 ]
then
	echo "`date` $ME: index.html not returned as expected.  could be a problem." >> $LOG
fi

if [ $diffstatus -eq 0 -a $wgetstatus = 0 ]
then
	echo "`date` $ME: web server is up" >> $LOG
fi

rm -f /tmp/webmon_index.$$ /tmp/webmon_err.$$
