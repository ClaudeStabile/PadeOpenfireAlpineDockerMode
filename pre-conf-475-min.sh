#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

echo "JaVaHome :"$JAVA_HOME
java -version

wget -O openfire_4_8_1.tar.gz https://github.com/igniterealtime/Openfire/releases/download/v4.8.1/openfire_4_8_1.tar.gz
tar xvzf openfire_4_8_1.tar.gz -C /usr/share
rm openfire_4_8_1.tar.gz


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O search.jar https://igniterealtime.org/projects/openfire/plugins/1.7.4/search.jar
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.5.0/monitoring.jar 
wget -O hazelcast.jar https://www.igniterealtime.org/projects/openfire/plugins/2.6.1/hazelcast.jar
 
 #Cleaning...
# apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
