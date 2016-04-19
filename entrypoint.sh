#!/bin/bash

/etc/init.d/tomcat7 start || true

tail -f /var/lib/tomcat7/logs/catalina.out