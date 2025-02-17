<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'upgrade.disable-web' => true,
  'instanceid' => 'oc7d9asrgpss',
  'passwordsalt' => 'CLjNLQHf+OBmWz4ntLkmL8ihBa4nNC',
  'secret' => '3Jnyzl51iDS83/dlSSxGXRlug/cbYGiMXCwafXXgvhwv3C2H',
  'trusted_domains' => 
  array (
    0 => '192.168.110.160:18080',
    1 => '0.0.0.0:18080'
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'mysql',
  'version' => '30.0.5.1',
  'overwrite.cli.url' => 'http://192.168.110.160:18080',
  'dbname' => 'nextcloud',
  'dbhost' => 'db',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'nextcloud',
  'dbpassword' => 'mysqlpassword',
  'installed' => true,
  'default_language' => 'zh_CN',
  'default_locale' => 'zh',
);
