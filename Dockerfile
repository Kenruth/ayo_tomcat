FROM tomcat:9.0
CMD ["catalina.sh", "run"]
RUN mkdir -p /etc/docker/certs.d/ayo:5443
COPY C:/Repos/certs/ayo.crt /etc/docker/certs.d/ayo:5443/ca.crt

