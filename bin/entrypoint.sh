#!/bin/bash

set -ex

# enable apache2 module
a2enmod cgid
# allow any access
# https://httpd.apache.org/docs/2.4/ja/mod/mod_authz_core.html#require
sed -i 's|Require local|Require all granted|' /etc/apache2/conf-available/man2html.conf
apachectl start
# wait forever
tail -f /var/log/apache2/*.log
