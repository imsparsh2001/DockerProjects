#!/bin/bash
# Start Apache
apache2ctl -D FOREGROUND &

# Start Nginx
nginx -g "daemon off;"
