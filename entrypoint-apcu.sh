#!/bin/bash

# Run original entrypoint, and continue
/entrypoint.sh true

# Configfile for owncloud
CONF=/var/www/html/config/config.php

# Add APCu
cat <<EOF > $CONF
<?php 
\$CONFIG = array ( 
    'memcache.local' => '\OC\Memcache\APCu', 
);
EOF

# Set www-data as owner of the config-file
chown www-data.nogroup $CONF

# Execute CMD
exec $@
