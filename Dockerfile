FROM nginx:latest
#ADD https://raw.githubusercontent.com/kuti93/jenkinstestrepo/jenkins/index.html /usr/share/nginx/html
# Define mountable directories.
VOLUME ["/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
#ENTRYPOINT ["index.html"]
#WORKDIR /etc/nginx
#COPY index.html /jenkins_home/var/www/html/index.home
CMD ["nginx"]
EXPOSE 9889
