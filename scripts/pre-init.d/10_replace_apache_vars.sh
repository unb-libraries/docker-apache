#!/usr/bin/env sh
sed -i "s|APACHE_ERROR_LOG_FILE|$APACHE_ERROR_LOG_FILE|g" /etc/apache2/conf.d/app.conf
sed -i "s|APACHE_LOG_FILE|$APACHE_LOG_FILE|g" /etc/apache2/conf.d/app.conf

sed -i "s|APP_HOSTNAME|$APP_HOSTNAME|g" /etc/apache2/conf.d/app.conf
sed -i "s|APP_WEBROOT|$APP_WEBROOT|g" /etc/apache2/conf.d/app.conf

sed -i '/^User / d' /etc/apache2/httpd.conf
sed -i '/^Group / d' /etc/apache2/httpd.conf
sed -i "s|APACHE_RUN_USER|$APACHE_RUN_USER|g" /etc/apache2/conf.d/app.conf
sed -i "s|APACHE_RUN_GROUP|$APACHE_RUN_GROUP|g" /etc/apache2/conf.d/app.conf
