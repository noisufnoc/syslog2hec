FROM balabit/syslog-ng
MAINTAINER Mike Walker <github@noisufnoc.com>

COPY syslog-ng.conf /etc/syslog-ng/
COPY run.sh /tmp/

RUN chmod +x /tmp/run.sh

ENTRYPOINT ["/tmp/run.sh"]
