FROM nginx:latest
ADD https://github.com/kuti93/jenkinstestrepo/blob/57d5494bce6b36d163c759b9d2ddb27cd60dbd38/index.html /usr/share/nginx/html
# Define mountable directories.
VOLUME ["/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
WORKDIR /etc/nginx
CMD ["nginx"]
EXPOSE 9889