#!/bin/ash
rm -rf /home/container/tmp/*

echo "⟳ ZApínání potřebných systémů"
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Spouštění web hostingu"
echo "✓ Úspěšné spuštění web hostingu a systémů"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
