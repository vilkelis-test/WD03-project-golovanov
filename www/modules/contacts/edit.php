<?php

if (!isAdmin()) {
	header('Location: ' .HOST);
	die();
}

$contacts = R::load('contacts',1);

if (isset($_POST['contacts-save'])) {

	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['phone']) == '' ) {
		$errors[] = ['title' => 'Введите Телефон'];
	}

	if (trim($_POST['address']) == '' ) {
		$errors[] = ['title' => 'Введите Адрес'];
	}

	if(empty($errors)) {
		$contacts->email = htmlentities($_POST['email']);
		$contacts->phone = htmlentities($_POST['phone']);
		$contacts->address = htmlentities($_POST['address']);

		$contacts->name = htmlentities($_POST['name']);
		$contacts->surname = htmlentities($_POST['surname']);
		$contacts->skype = htmlentities($_POST['skype']);
		$contacts->vk = htmlentities($_POST['vk']);
		$contacts->fb = htmlentities($_POST['fb']);
		$contacts->github = htmlentities($_POST['github']);
		$contacts->twitter = htmlentities($_POST['twitter']);
		R::store($contacts);

		header('Location: ' .HOST.'contacts?result=contactsUpdated');
	}
}

$title = "Редактировать контакты";
$description = "Изменить контактные данные";

ob_start();
include ROOT.'templates/_parts/_header.tpl';
include ROOT.'templates/contacts/edit.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_head.tpl';
include ROOT.'templates/template.tpl';
include ROOT.'templates/_parts/_footer.tpl';
include ROOT.'templates/_parts/_foot.tpl';

?>