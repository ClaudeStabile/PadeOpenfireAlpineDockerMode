#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

echo "JaVaHome :"$JAVA_HOME
java -version

wget -O openfire_4_7_5.tar.gz https://github.com/igniterealtime/Openfire/releases/download/v4.7.5/openfire_4_7_5.tar.gz
tar xvzf openfire_4_7_5.tar.gz -C /usr/share
rm openfire_4_7_5.tar.gz


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O search.jar https://igniterealtime.org/projects/openfire/plugins/1.7.4/search.jar
wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.1/bookmarks.jar 
wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.5.0/fastpath.jar 
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.4.0/httpfileupload.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.5.0/monitoring.jar 
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.8.0/registration.jar 
#wget -O push.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.0/pushserver.jar
#wget -O galene.jar https://igniterealtime.org/projects/openfire/plugins/0.0.5/galene.jar
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.2/externalservicediscovery.jar 
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.0/pushnotification.jar 
wget -O pade.jar https://github.com/igniterealtime/openfire-pade-plugin/releases/download/v1.7.8/pade.jar
#wget -O pade.jar http://green-spider.free-solutions.org/PLUGINS/pade178.jar 
wget -O hazelcast.jar https://www.igniterealtime.org/projects/openfire/plugins/2.6.1/hazelcast.jar
#wget -O llama-0.0.1.jar http://green-spider.free-solutions.org/PLUGINS/llama-0.0.1.jar 
 
 #Cleaning...
# apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
