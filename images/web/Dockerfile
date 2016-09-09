FROM threadfix/base


RUN mkdir Threadfix
COPY Install /Threadfix
EXPOSE 8443
WORKDIR /Threadfix
RUN chmod +x threadfix.sh
ENTRYPOINT ["./threadfix.sh"]
