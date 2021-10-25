FROM tomcat:9.0
CMD ["catalina.sh", "run"]
RUN cd / \ 
    cd /root/certs --ssl-verify=false\
    openssl req \
    -newkey rsa:4096 -nodes -sha256 -keyout /root/certs/ayo.key \
    -x509 -days 365 -out /root/certs/ayo.crt
