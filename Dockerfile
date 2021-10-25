FROM tomcat:9.0
CMD ["catalina.sh", "run"]
RUN pip -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN pip install jq -y
RUN mkdir -p /etc/docker/certs.d/ayo:5443
COPY ayo.crt /etc/docker/certs.d/ayo:5443/ca.crt

