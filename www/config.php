<?php

// SITE SETTINGS 
define('SITE_NAME', 'Личный сайт Степана Голованова');
define('SITE_EMAIL', 'info@webdev03.com');
define('ADMIN_EMAIL', 'info@rightblog.ru');

define('HOST', $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].'/');
define('ROOT', dirname(__FILE__).'/');

//Database connection constants
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASSWORD','');
define('DB_NAME','WD03-project-golovanov');



?>