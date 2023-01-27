#!/bin/sh

sed -i "#TOMCATPORT#{TOMCATPORT}#" /opt/tomcat/conf/server.xml

exec /opt/tomcat/bin/catalina.sh
