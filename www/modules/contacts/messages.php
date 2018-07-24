<?php

if (!isAdmin()) {
	header('Location: ' .HOST);
	die();
}

$title = "Сообщения пользователей";
$description = "Сообщения от пользователей";

ob_start();
include ROOT.'templates/_parts/_header.tpl';
include ROOT.'templates/contacts/messages.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_head.tpl';
include ROOT.'templates/template.tpl';
include ROOT.'templates/_parts/_footer.tpl';
include ROOT.'templates/_parts/_foot.tpl';

?>