FROM centos:centos6
RUN yum install -y httpd
RUN yum install -y php
ADD content /var/www/html
EXPOSE 80
#WORKDIR /PATH/TO/WORKDIR
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
