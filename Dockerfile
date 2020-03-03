FROM fedora
# this will be base image
MAINTAINER namit
# developer info
ARG web=httpd
# this variable will not be present in container
ENV server=$web
ENV color=black
# all env variables will be present in container 
RUN  yum install $server  -y
# install httpd web server as default 
WORKDIR /opt/
# it will be changing curent dir into container
COPY .  .

# it wsill copy al data to docker image
EXPOSE 80
# exposing port in container
ENTRYPOINT ["bin/bash", "/opt/entrypoint.sh"] 
