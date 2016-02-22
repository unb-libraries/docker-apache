#!/usr/bin/env sh
sed -i "s|APP_HOSTNAME|$APP_HOSTNAME|g" /etc/apache2/conf.d/vhost.conf
sed -i "s|APP_WEBROOT|$APP_WEBROOT|g" /etc/apache2/conf.d/vhost.conf
sed -i "s|APACHE_ERROR_LOG_FILE|$APACHE_ERROR_LOG_FILE|g" /etc/apache2/conf.d/vhost.conf
sed -i "s|APACHE_LOG_FILE|$APACHE_LOG_FILE|g" /etc/apache2/conf.d/vhost.conf
