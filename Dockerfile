FROM centos:latest
MAINTAINER dhal9901@gmail.com
RUN yum install httpd -y \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/carserv.zip var/www/html
WORKDIR /var/www/html
RUN unzip carserv.zip
RUN cp -rvf car-repair-html-template/* .
RUN rm -rf car-repair-html-template carserv.zip
CMD ["/usr/sbin/httpd", "-D","FOREGROUND]
EXPOSE 80
