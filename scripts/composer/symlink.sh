#!/usr/bin/env bash

if [ ! -L web/sites/default/settings.php ] && [ ! -e web/sites/default/settings.php ]; then
    ln -s ../../../settings.php web/sites/default/settings.php
fi
if [ ! -L web/sites/default/settings.single.php ] && [ ! -e web/sites/default/settings.single.php ]; then
    ln -s ../../../settings.single.php web/sites/default/settings.single.php
fi
mkdir -p web/themes
mkdir -p web/modules
if [ ! -L web/themes/custom ] && [ ! -e web/themes/custom ]; then
    ln -s ../../themes web/themes/custom
fi
if [ ! -L web/modules/custom ] && [ ! -e web/modules/custom ]; then
    ln -s ../../modules web/modules/custom
fi
