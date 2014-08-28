#!/bin/bash
# This script resets permission and ownership(www-data:www-data for apache) on a magento install
# Assuming magento resides in sitename.com\public\ place this script in sitename.com
# Don't forget to add +x permissions

chown -R www-data:www-data .
find . -type f -exec chmod 644 {} \;
find . -type d -exec chmod 755 {} \;
chmod 550 public/mage
chmod o+w public/var public/var/.htaccess public/app/etc
chmod -R o+w public/media
chmod +x reset_permissions.sh
