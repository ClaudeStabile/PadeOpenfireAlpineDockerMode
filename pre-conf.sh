#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

echo "JaVaHome :"$JAVA_HOME
java -version
wget -O openfire_4_9_0.tar.gz https://github.com/igniterealtime/Openfire/releases/download/v4.9.0/openfire_4_9_0.tar.gz
tar xvzf openfire_4_9_0.tar.gz -C /usr/share
rm openfire_4_9_0.tar.gz


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O search.jar https://igniterealtime.org/projects/openfire/plugins/1.7.4/search.jar
wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.2.0/bookmarks.jar 
wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.5.1/fastpath.jar 
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.4.1/httpfileupload.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.6.0/monitoring.jar 
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.8.0/registration.jar 
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.3/externalservicediscovery.jar 
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.1/pushnotification.jar 
wget -O pade.jar https://igniterealtime.org/projects/openfire/plugins/1.8.3/pade.jar
wget -O hazelcast.jar https://www.igniterealtime.org/projects/openfire/plugins/3.0.0/hazelcast.jar
 
 #Cleaning...
# apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
