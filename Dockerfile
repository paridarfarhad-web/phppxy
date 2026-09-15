FROM php:8.2-apache
RUN sed -i 's/80/${PORT}/g' /etc/apache2/ports.conf /etc/apache2/sites-available/*.conf
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
