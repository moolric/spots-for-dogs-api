<?php
// rename this file to config.php and add the correct connection details

use Illuminate\Database\Capsule\Manager as Capsule;

/**
 * Configure the database and boot Eloquent
 */
$capsule = new Capsule;

$capsule->addConnection(array(
    'driver' => 'mysql',
    'host' => '',
    'database' => '',
    'username' => '',
    'password' => '',
    'charset'   => 'utf8',
    'collation' => 'utf8_general_ci',
    'prefix' => ''
));

$capsule->setAsGlobal();

$capsule->bootEloquent();

// set timezone for timestamps etc
date_default_timezone_set('UTC');