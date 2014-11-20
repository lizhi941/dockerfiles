#!/bin/sh

cat > /var/www/html/application/config/config.php <<EOF
<?php
$config[0]['language'] = 'en_EN';
$config['show_inactive_clients'] = false;
$config['hide_empty_pools'] = true;
$config[1]['label'] = 'Database';
$config[1]['host'] = '$DB_HOST';
$config[1]['login'] = '$DB_USER';
$config[1]['password'] = '$DB_PASS';
$config[1]['db_name'] = '$DB_NAME';
$config[1]['db_type'] = '$DB_TYPE';
$config[1]['db_port'] = '$DB_PORT';
?>
EOF

echo "date.timezone = $PHP_TIMEZONE" >> /etc/php.ini

/usr/sbin/httpd -D FOREGROUND
