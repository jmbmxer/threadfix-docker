FROM ubuntu:trusty
MAINTAINER Jimmy Mesta <@jimmesta>

RUN apt-get update && apt-get install -y openjdk-7-jdk wget
RUN mkdir Threadfix 
COPY Install /Threadfix

# Recommend building your own threadfix.war from https://github.com/denimgroup/threadfix
# Then manually adding to INSTALL/tomcat/webapps/threadfix.war  (rename to this name)
# And comment out the next two steps, as they are unlikely to work.
WORKDIR /Threadfix/tomcat/webapps
RUN wget https://storage.googleapis.com/threadfix/threadfix.war

EXPOSE 8443
WORKDIR /Threadfix
RUN chmod +x threadfix.sh

ENTRYPOINT ["./threadfix.sh","start"]
