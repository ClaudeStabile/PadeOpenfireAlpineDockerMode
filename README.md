# Pade & Openfire Docker Mode Alpine version
Padé and Openfire package in Docker mode - All questions &amp; contribs for Padé Docker are welcomed

This is the Alpine Docker optimized version for Padé + Jitsi + Openfire

You also need a mysql Docker instance installed and correctly configuered

##### These scripts create a docker image with Openfire + Plugins for Padé and Jitsi videobridge


## Building docker image 
Please use this as example to build a docker image with command

For example :
git clone https://github.com/ClaudeStabile/PadeOpenfireDockerMode    ==> to retrieve files

docker build -t ofdocker:version1 .  ==> To build your docker image
This should create a new docker image named ofdocker:version1

Once you have your docker image, you can start your docker wirh a docker run command, then install Openfire

Pls note that this code is provided as a sample. Review all files to match your need

### Port mapping & run command :

Example of command to start an Openfire Docker

docker run -e TZ=" Europe/Zurich" -v /data/ATTACHEMENTS/MYHOST:/attachements/MYHOST --name myhost -h myhost.free-solutions.org  -p X.X.X.X:7090:9090 -p X.X.X.X:7091:9091 -p X.X.X.X:6777:7777 -p X.X.X.X:7443:7443 -p X.X.X.X:5228:5222 -p X.X.X.X:5369:5269 -p X.X.X.X:5370:5270 -p X.X.X.X:10005:10005/udp  -p X.X.X.X:10015:10015/udp -d ofdocker:version1


### Howto run the container 

For example : 
docker run -e TZ=" Europe/Zurich" -v /data/ATTACHEMENTS/MYHOST:/attachements/MYHOST --name myhost -h myhost.free-solutions.org  -p X.X.X.X:7090:9090 -p X.X.X.X:7091:9091 -p X.X.X.X:6777:7777 -p X.X.X.X:7443:7443 -p X.X.X.X:5228:5222 -p X.X.X.X:5369:5269 -p X.X.X.X:5370:5270 -p X.X.X.X:10005:10005/udp  -p X.X.X.X:10015:10015/udp -d ofdocker:version1

#### Next steps : 

install/create mysql database
Install openfire via http console
Configure
Restart docker & test

## Package is installed and running at https://www.free-solutions.org 





