FROM ubuntu

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean 

RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

COPY index.html /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]