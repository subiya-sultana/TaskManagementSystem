# Use the official PHP image from Docker Hub
FROM php:8.0-apache

# Install dependencies including Composer
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install/Enable mysqli support
RUN apt-get update && apt-get install -y libmariadb-dev-compat libmariadb-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

# Enable Apache Rewrite Module (Optional, for clean URLs)
RUN a2enmod rewrite

# Copy your application files to the container
COPY . /var/www/html/

# Set permissions for the Apache server
RUN chown -R www-data:www-data /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]

