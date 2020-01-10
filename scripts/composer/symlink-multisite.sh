#!/usr/bin/env bash

SITES_PATH=web/sites
MULTISITES_PATH=../../../../../multisites

symlink_site ()
{
  mkdir -p "${SITES_PATH}/${1}"
  if [ ! -e "${SITES_PATH}/${1}/settings.php" ]; then
    ln -s "${MULTISITES_PATH}/${1}/settings.php" "${SITES_PATH}/${1}/settings.php"
  fi
  if [ ! -e "${SITES_PATH}/${1}/settings.multisite.php" ]; then
    ln -s "${MULTISITES_PATH}/${1}/settings.multisite.php" "${SITES_PATH}/${1}/settings.multisite.php"
  fi
  if [ ! -e "${SITES_PATH}/${1}/themes" ]; then
    ln -s "${MULTISITES_PATH}/${1}/themes" "${SITES_PATH}/${1}/themes"
  fi
  if [ ! -e "${SITES_PATH}/${1}/modules" ]; then
    ln -s "${MULTISITES_PATH}/${1}/modules" "${SITES_PATH}/${1}/modules"
  fi
}

symlink_site www.shila.test
