#!/bin/bash
#set -e

#<Connector port="8443" protocol="HTTP/1.1" SSLEnabled="true" maxThreads="150" scheme="https" secure="true" clientAuth="false" sslProtocol="TLS" KeystoreFile="$CATALINA_HOME/.keystore" KeystorePass="${KEY_PASS}" />

# Update SSL port configuration if it does'nt exists
#
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
VAR=$(cat conf/server.xml | grep "$CATALINA_HOME/.keystore")



exec "$@"
