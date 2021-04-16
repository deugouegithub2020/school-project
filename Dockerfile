# Pull base image 
#From apache:latest

# Maintainer 
#MAINTAINER "kserge2001@yahoo.fr" 
#COPY /root/code2/jenkinsfile /var/www/html
COPY ./school.war /usr/local/tomcat/webapps

FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN echo 'Hello, docker' > /var/www/index.html

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
