FROM ubuntu:trusty
MAINTAINER Jimmy Mesta <@jimmesta>

RUN apt-get update && apt-get install -y openjdk-7-jdk
RUN mkdir Threadfix
COPY Install /Threadfix
EXPOSE 8443
WORKDIR /Threadfix
RUN chmod +x threadfix.sh
ENTRYPOINT ["./threadfix.sh"]
