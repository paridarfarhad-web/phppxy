FROM php:8.2-apache

# فعال‌سازی ماژول‌های مورد نیاز PHProxy
RUN a2enmod rewrite

# کپی کردن پروژه
COPY . /var/www/html/

# تنظیم دسترسی‌ها
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
