FROM	centos:7
RUN	yum update -y && \
	yum install -y wget epel-release && \	
	yum install -y httpd && \
	cd /var/www/html && \
	wget https://wordpress.org/latest.tar.gz && \
	tar -zxvf latest.tar.gz
	ENTRYPOINT ["/usr/sbin/apachectl"]
	CMD ["-DFOREGROUND"]
EXPOSE 80
