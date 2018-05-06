# barcode_inventory
basic inventory management system for using barcode scanners

# Still getting things configured, but requirements so far:
* PHP 7.2
* MySQL 8
* Apache 2.4

Php will need to be configured with the PDO_mysql extension

To enable PHP in apache, add these lines to your httpd.conf

{{
LoadModule php7_module "C:/Dev/PHP/php7apache2_4.dll"
AddHandler application/x-httpd-php .php
PHPIniDir "C:/Dev/PHP"

<FilesMatch "\.ph(p[2-6]?|tml)$">
    SetHandler application/x-httpd-php
</FilesMatch>
}}

after unzipping apache, install with command {{httpd.exe -k install}}
restart apache with command {{httpd.exe -k restart}}
Both commands will need to be run as admin