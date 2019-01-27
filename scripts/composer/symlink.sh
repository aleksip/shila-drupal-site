#!/usr/bin/env bash

SITE_DIR=web/sites/www.shila.test

mkdir -p ${SITE_DIR}
if [ ! -L ${SITE_DIR}/settings.php ] && [ ! -e ${SITE_DIR}/settings.php ]; then
  ln -s ../../../settings.php ${SITE_DIR}/settings.php
fi
if [ ! -L ${SITE_DIR}/themes ] && [ ! -e ${SITE_DIR}/themes ]; then
  ln -s ../../../themes ${SITE_DIR}/themes
fi
if [ ! -L ${SITE_DIR}/modules ] && [ ! -e ${SITE_DIR}/modules ]; then
  ln -s ../../../modules ${SITE_DIR}/modules
fi
