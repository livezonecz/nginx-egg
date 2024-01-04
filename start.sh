#!/bin/ash
echo "⟳ Zapínání potřebných systémů"
rm -rf /home/container/tmp/*
> /home/container/access.log
> /home/container/error.log
echo "⟳ Spouštění web hostingu"
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "✓ Úspěšné spuštění web hostingu a systémů"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
