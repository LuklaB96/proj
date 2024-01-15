#run.sh
#!/bin/sh

set -e
# Execute custom commands and scripts
sh -c "composer install"
exec /usr/sbin/apache2ctl -D FOREGROUND

