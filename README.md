docker run -d --name syslog2hec \
	-e HEC_TOKEN=12345678-1234-1234-123456789012 \
	-e SPLUNK_SERVER=1.2.3.4 \
	syslog2hec:latest
