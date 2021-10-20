FROM centos:latest
MAINTAINER mukesh.rathwa@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/xtra-blog.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip xtra-blog.zip
RUN cp -rvf xtra-blog/* .
RUN rm -rf xtra-blog xtra-blog.zip
CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
EXPOSE 80
