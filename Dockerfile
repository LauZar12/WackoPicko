FROM php:5.6-apache

# Install PHP extensions
RUN docker-php-ext-install mysqli

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy project contents
COPY . /var/www/html/

# Permissions for uploads
RUN chmod -R 777 /var/www/html/upload

# Expose port
EXPOSE 80
