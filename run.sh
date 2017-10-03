#!/bin/sh

CONF=/etc/syslog-ng

# if ENV HEC_TOKEN is set, change the value in syslog-ng.conf
if [ -n "$HEC_TOKEN" ]; then
	sed -i "s/00000000-0000-0000-0000-000000000000/$(echo $HEC_TOKEN)/g" $CONF/syslog-ng.conf
fi

# if ENV SPLUNK_SERVER is set, change the value in syslog-ng.conf
if [ -n "$SPLUNK_SERVER" ]; then
	sed -i "s/http:\/\/0.0.0.0:8088/http:\/\/$(echo $SPLUNK_SERVER):8088/g" $CONF/syslog-ng.conf
fi

# GO! GO! GO!
/usr/sbin/syslog-ng -F
