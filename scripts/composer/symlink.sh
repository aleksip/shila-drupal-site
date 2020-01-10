#!/usr/bin/env bash

SITE_DIR=web/sites/www.shila.test

mkdir -p "${SITE_DIR}"
if [ ! -e "${SITE_DIR}/settings.php" ]; then
  ln -s ../../../settings.php "${SITE_DIR}/settings.php"
fi
if [ ! -e "${SITE_DIR}/themes" ]; then
  ln -s ../../../themes "${SITE_DIR}/themes"
fi
if [ ! -e "${SITE_DIR}/modules" ]; then
  ln -s ../../../modules "${SITE_DIR}/modules"
fi
