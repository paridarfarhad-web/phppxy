FROM php:7.4-apache

RUN a2enmod rewrite

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html

# تغییر کانفیگ آپاچی در زمان اجرا (Runtime) نه در زمان ساخت (Build)
CMD sh -c "sed -i \"s/Listen 80/Listen ${PORT:-80}/g\" /etc/apache2/ports.conf /etc/apache2/sites-available/*.conf && apache2-foreground"
