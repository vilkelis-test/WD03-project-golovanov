<?php 

if (!isLoggedIn()) {
	header('Location: ' .HOST);
	die();
}

$title = "Профиль пользователя";
$description = "Просмотр профиля пользователя";

$user = R::load('users', $currentUser->id);

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