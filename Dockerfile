 Version: 0.0.2
FROM ubuntu:14.04
MAINTAINER Jing Xuan "cbb107018@nptu.edu.tw"
RUN apt-get update
RUN apt-get install -y nginx
ENV NGINX_HOME /usr/share/nginx/html/
RUN echo 'Hi, I am in your container' > $NGINX_HOME/index.html
COPY license.lic /opt/license.lic
EXPOSE 80
