FROM httpd
MAINTAINER dhal9901@gmail.com
RUN yum install -y httpd
zip \
unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/carserv.zip
WORKDIR /var/lib/html
RUN unzip carserv.zip
RUN cp -rvf car-repair-html-template/*
RUN rm -rf car-repair-html-template carserv.zip
CMD ["/usr/sbin/httpd", "-D","FOREGROUND]
EXPOSE 80
