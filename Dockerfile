FROM php:8.0-apache

# Instalar extensiones necesarias
RUN docker-php-ext-install pdo pdo_mysql

# Copiar el código de la aplicación
COPY . /var/www/html

# Establecer permisos
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
