FROM balabit/syslog-ng
MAINTAINER Mike Walker <github@noisufnoc.com>

COPY syslog-ng.conf /etc/syslog-ng/

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F"]

