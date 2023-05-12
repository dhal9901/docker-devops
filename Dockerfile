FROM centos:latest
MAINTAINER dhal9901@gmail.com
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/carserv.zip /var/lib/html
WORKDIR /tmp/
RUN unzip carserv.zip
RUN cp -rvf car-repair-html-template/* /var/lib/html
CMD ["/usr/sbin/httpd", "-D","FOREGROUND]
EXPOSE 80
