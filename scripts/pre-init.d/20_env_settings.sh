#!/usr/bin/env sh

# Inject deploy env into apache.
sed -i "s|DEPLOY_ENV|$DEPLOY_ENV|g" /etc/apache2/conf.d/app.conf
