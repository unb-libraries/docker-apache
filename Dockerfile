FROM gliderlabs/alpine
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

ENV APACHE_RUN_GROUP apache
ENV APACHE_RUN_USER apache
ENV APP_HOSTNAME apache.local
ENV APP_ROOT /app
ENV DEPLOY_ENV prod

ENV APP_LOG_DIR $APP_ROOT/log
ENV APP_WEBROOT $APP_ROOT/html

ENV APACHE_LOG_FILE ${APP_LOG_DIR}/${APP_HOSTNAME}.access.log
ENV APACHE_ERROR_LOG_FILE ${APP_LOG_DIR}/${APP_HOSTNAME}.error.log

RUN apk --update add apache2 && \
  mkdir -p /run/apache2 && \
  rm -f /var/cache/apk/* && \
  mkdir -p ${APP_WEBROOT} && \
  mkdir -p ${APP_LOG_DIR}

ADD conf/apache2/default.conf /etc/apache2/conf.d/vhost.conf
ADD scripts /scripts
RUN chmod -R 755 /scripts

WORKDIR /app
EXPOSE 80

CMD ["/scripts/run.sh"]
