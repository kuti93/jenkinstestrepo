FROM nginx:latest
ADD https://raw.githubusercontent.com/kuti93/jenkinstestrepo/jenkins/index.html /usr/share/nginx/html
VOLUME ["/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
WORKDIR /etc/nginx
COPY index.html /jenkins_home/var/www/html/index.home
EXPOSE 9889
