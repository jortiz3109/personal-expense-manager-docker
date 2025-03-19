#! /bin/sh
set -e
GREEN='\033[0;32m'
BOLD='\033[1m'

if [ -n "${DB_PASSWORD_FILE}" ] && [ -f "${DB_PASSWORD_FILE}" ]; then
    echo -e "${GREEN} - Installing composer dependencies"
    fileVal="$(< "${DB_PASSWORD_FILE}")"
    export DB_PASSWORD="$fileVal"
    unset "$fileVal"
fi

echo -e "${GREEN} - Installing composer dependencies"
composer install

echo -e "${GREEN} - Running composer autoload"
composer dump-autoload --optimize

echo -e "${GREEN} - Starting app with: ${BOLD}$@"

"$@"