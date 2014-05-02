#!/bin/sh

export CATALINA_HOME=/usr/share/tomcat6
export JAVA_HOME="/usr/lib/jvm/java-6-oracle"
export JAVA_OPTS="-Xmx4096m -XX:+CMSClassUnloadingEnabled -XX:PermSize=512M -XX:MaxPermSize=512M"
