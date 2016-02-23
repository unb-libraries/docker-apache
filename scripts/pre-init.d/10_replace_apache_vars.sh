#!/usr/bin/env sh
if [ "$DEPLOY_ENV" = "dev" ]; then
  sed -i "s|APACHE_LOG_FILE|/proc/self/fd/2|g" /etc/nginx/conf.d/app.conf
  sed -i "s|APACHE_ERROR_LOG_FILE|/proc/self/fd/2|g" /etc/nginx/conf.d/app.conf
else
  sed -i "s|APACHE_ERROR_LOG_FILE|$APACHE_ERROR_LOG_FILE|g" /etc/apache2/conf.d/app.conf
  sed -i "s|APACHE_LOG_FILE|$APACHE_LOG_FILE|g" /etc/apache2/conf.d/app.conf
fi

sed -i "s|APP_HOSTNAME|$APP_HOSTNAME|g" /etc/apache2/conf.d/app.conf
sed -i "s|APP_WEBROOT|$APP_WEBROOT|g" /etc/apache2/conf.d/app.conf
