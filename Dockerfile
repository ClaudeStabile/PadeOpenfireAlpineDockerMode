#name of container: docker-pade
#version of container: 6.3.0
FROM ubuntu:latest 
#MAINTAINER Claude Stabile "claude@free-solutions.ch"
LABEL org.freesolutions.image.authors="claude@free-solutions.ch"

#Installation of needed packages...
#Java, mysql client, vim & TZ
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y -q openjdk-21-jdk && DEBIAN_FRONTEND=noninteractive apt-get install -y -q vim && DEBIAN_FRONTEND=noninteractive apt-get install -y -q mysql-client && DEBIAN_FRONTEND=noninteractive apt-get install -y -q tzdata && DEBIAN_FRONTEND=noninteractive apt-get install -y -q wget
# Install mariadb database connector
#RUN wget https://dlm.mariadb.com/enterprise-release-helpers/mariadb_es_repo_setup
#RUN echo "f8eb9c1b59ccfd979d27e39798d2f2a98447dd29e2149ce92bf606aab4493ad9  mariadb_es_repo_setup" \
#    | sha256sum -c -
#RUN chmod +x mariadb_es_repo_setup

##startup scripts  
RUN mkdir -p /etc/my_init.d
COPY startup.sh /etc/my_init.d/startup.sh
RUN chmod +x /etc/my_init.d/startup.sh
#
RUN mkdir /etc/service
RUN mkdir /etc/service/openfire
COPY openfire.sh /etc/service/openfire/run
RUN chmod +x /etc/service/openfire/run


##deamons
# add openfire start & run 
# Usernode
#
RUN groupadd -g 2000 openfire 
RUN useradd openfire -u 2000 -g 2000 

#USER openfire
#RUN mkdir /etc/service/openfire
#COPY openfire.sh /etc/service/openfire/run
#RUN chmod +x /etc/service/openfire/run 
COPY pre-conf.sh /sbin/pre-conf
RUN chmod +x /sbin/pre-conf; sync \
    && /bin/bash -c /sbin/pre-conf \
    && rm /sbin/pre-conf
RUN chown -R openfire:openfire /usr/share/openfire
RUN chown -R openfire:openfire /etc/service/openfire
USER openfire
WORKDIR /usr/share/openfire
#Expose port adjust to your need
EXPOSE 7443 7777 9090 9091 5000-5100/udp 5000-6000/tcp 10000-10020/udp

# Use baseimage-docker's init system.
#CMD ["/sbin/my_init"]
#CMD ["/sbin/runsvdir", "/etc/service"]
CMD ["/etc/service/openfire/run"]
