#!/bin/bash
set -e


#Plugins install from Free-Solutions packages, please adjust to what you need, do not add or supress packages, stick to this list

#installing openfire

echo "JaVaHome :"$JAVA_HOME
java -version
wget -O openfire_5_0_0.tar.gz https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_5_0_0.tar.gz
tar xvzf openfire_5_0_0.tar.gz -C /usr/share
rm openfire_5_0_0.tar.gz


#installing Openfire plugins 
cd /usr/share/openfire/plugins/
wget -O search.jar https://igniterealtime.org/projects/openfire/plugins/1.7.4/search.jar
wget -O bookmarks.jar https://www.igniterealtime.org/projects/openfire/plugins/1.2.0/bookmarks.jar 
#wget -O fastpath.jar https://www.igniterealtime.org/projects/openfire/plugins/4.5.1/fastpath.jar 
wget -O httpfileupload.jar https://www.igniterealtime.org/projects/openfire/plugins/1.5.0/httpfileupload.jar 
wget -O monitoring.jar https://www.igniterealtime.org/projects/openfire/plugins/2.7.0/monitoring.jar 
wget -O registration.jar https://www.igniterealtime.org/projects/openfire/plugins/1.9.0/registration.jar 
wget -O externalservicediscovery.jar https://www.igniterealtime.org/projects/openfire/plugins/1.0.4/externalservicediscovery.jar 
wget -O pushnotification.jar https://www.igniterealtime.org/projects/openfire/plugins/1.1.1/pushnotification.jar 
wget -O inverse.jar https://www.igniterealtime.org/projects/openfire/plugins/11.0.1.1/inverse.jar 
wget -O ofmeet.jar https://www.free-solutions.ch/plugins/ofmeetcustom_noalyssOKI.jar
wget -O ofmeet.jar https://www.igniterealtime.org/projects/openfire/plugins/0.9.7/ofmeet.jar 
wget -O hazelcast.jar https://www.igniterealtime.org/projects/openfire/plugins/5.5.0.1/hazelcast.jar 
 
 #Cleaning...
# apt-get clean
 rm -rf /tmp/* /var/tmp/*
 rm -rf /var/lib/apt/lists/*

