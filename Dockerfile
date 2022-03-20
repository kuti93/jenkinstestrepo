FROM nginx:latest
ADD https://github.com/kuti93/jenkinstestrepo/blob/jenkins/index.html
# Define mountable directories.
VOLUME ["/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
WORKDIR /etc/nginx
CMD ["nginx"]
EXPOSE 9889