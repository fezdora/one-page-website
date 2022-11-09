FROM httpd:alpine
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 3005
RUN [ "httpd", "-k", "graceful" ]
CMD [ "httpd-foreground" ]
