#!/bin/sh
sed -i "s|APP_HOSTNAME|$APP_HOSTNAME|g" /etc/apache2/conf.d/vhost.conf
sed -i "s|APP_WEBROOT|$APP_WEBROOT|g" /etc/apache2/conf.d/vhost.conf
sed -i "s|APP_LOG_DIR|$APP_LOG_DIR|g" /etc/apache2/conf.d/vhost.conf
