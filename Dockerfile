FROM phusion/baseimage
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_GROUP www-data
ENV APACHE_RUN_USER www-data
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV WEBTREE_ROOT /var/www
ENV WEBTREE_WEBROOT /var/www/html

RUN locale-gen en_US.UTF-8
RUN apt-get update && \
  DEBIAN_FRONTEND="noninteractive" apt-get -y install apache2 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD conf/apache2/default.conf /etc/apache2/sites-available/000-default.conf

CMD ["/sbin/my_init"]
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run

EXPOSE 80
