<?php 

if (!isLoggedIn()) {
	header('Location: ' .HOST);
	die();
}

$user = R::load('users', $currentUser->id);

$sqlComments = "
 SELECT 
	 c.text,
	 c.date_time, 
	 c.post_id,
	 p.title as post_title
 FROM comments c
 LEFT JOIN posts p on p.id = c.post_id		
 WHERE 
   c.user_id = ? 
 ORDER BY c.date_time DESC
";

$comments = R::getAll($sqlComments,[$user->id]);


$title = "Профиль пользователя";
$description = "Просмотр профиля пользователя";

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>