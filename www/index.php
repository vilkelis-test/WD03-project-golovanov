<?php
require 'config.php';
require 'db.php';
require 'libs/functions.php';

$errors = array();
$success = array();
$title = '';
$description = '';

//=======РОУТЕР===========
$uri = $_SERVER['REQUEST_URI'];
$uri = trim($uri,"/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = explode('?',$uri);

session_start();
$currentUser = @$_SESSION['logged_user']; //logged_user может быть не определен, если мы не авторизовались

switch ($uri[0]) {

	case '':
		include ROOT."modules/main/index.php";
		break;
	//========== USERS =============
	case 'login':
		include ROOT."modules/login/login.php";
		break;	
	case 'logout':
		include ROOT."modules/login/logout.php";
		break;	
	case 'registration':
		include ROOT."modules/login/registration.php";
		break;	
	case 'lost-password':
		include ROOT."modules/login/lost-password.php";
		break;	
	case 'set-new-password':
		include ROOT."modules/login/set-new-password.php";
		break;	
	case 'profile':
		include ROOT."modules/profile/index.php";
		break;
	case 'profile-edit':
		include ROOT."modules/profile/edit.php";
		break;
	case 'about':
		include ROOT."modules/about/index.php";
		break;		
	case 'contacts':
		include ROOT."modules/contacts/index.php";
		break;
	case 'blog':
		include ROOT."modules/blog/index.php";
		break;
	case 'blog/post-new':
		include ROOT."modules/blog/post-new.php";
		break;		
	case 'blog/post':
		include ROOT."modules/blog/post.php";
		break;		
	case 'portfolio':
		include ROOT."modules/portfolio/index.php";
		break;		
	default:
		echo "404 page";
		break;
}

 // echo '<pre>';
 // print_r ($uri);
 // echo '</pre>';


?>