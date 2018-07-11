<?php

require 'config.php';
require 'db.php';

// echo '<pre>';
// print_r ($_SERVER);
// echo '</pre>';

//echo ROOT;

//=======РОУТЕР===========
$uri = $_SERVER['REQUEST_URI'];
$uri = trim($uri,"/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = explode('?',$uri);

switch ($uri[0]) {

	case '':
		include "modules/main/index.php";
		break;
	case 'about':
		include "modules/about/index.php";
		break;
	case 'contacts':
		include "modules/contacts/index.php";
		break;
	case 'blog':
		include "modules/blog/index.php";
		break;
	default:
		echo "404 page and go to Main page";
		break;
}

 // echo '<pre>';
 // print_r ($uri);
 // echo '</pre>';


?>