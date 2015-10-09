# Use owncloud 8, we need to read the manual for version 9
FROM owncloud:8

# Yep thats me, please use +docker tag to help me find the mail
MAINTAINER Arnulf Heimsakk "arnulf.heimsbakk+docker@gmail.com"

# Install APCu
RUN apt-get update; apt-get install -y php5-apcu; rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh", ";", "echo '<?php $CONFIG = array ( 'memcache.local' => '\OC\Memcache\APCu', );' > /config/config.php"]

# Start Apache
CMD ["apache2-foreground"]

