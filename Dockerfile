# DOCKER-VERSION 1.1.1

FROM svickers/node-mongodb-redis:1.2

# File Author / Maintainer
MAINTAINER Scott Vickers

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx
