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
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.5.0/monitoring.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.5.0/monitoring.jar
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.8.0/registration.jar
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.2/externalservicediscovery.jar
wget -O pade.jar https://github.com/igniterealtime/openfire-pade-plugin/releases/download/v1.7.9/pade.jar 

 
 #Cleaning...
# apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*
