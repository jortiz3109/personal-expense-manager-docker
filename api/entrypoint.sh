#! /bin/sh
set -e
GREEN='\033[0;32m'
BOLD='\033[1m'

echo -e "${GREEN} - Installing composer dependencies"
composer install --optimize-autoloader

echo -e "${GREEN} - Starting app with: ${BOLD}$@"

"$@"