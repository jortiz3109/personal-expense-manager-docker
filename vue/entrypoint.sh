#! /bin/sh
set -e
GREEN='\033[0;32m'
BOLD='\033[1m'

echo -e "${GREEN} Installing node modules dependencies"
npm install

echo -e "${GREEN} Starting web with ${BOLD}$@"

"$@"