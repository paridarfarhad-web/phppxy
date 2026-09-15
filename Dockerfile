FROM php:7.4-apache

RUN a2enmod rewrite

# تنظیم پورت آپاچی روی متغیر dynamic در Render
RUN sed -i 's/80/${PORT}/g' /etc/apache2/ports.conf /etc/apache2/sites-available/*.conf

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html
