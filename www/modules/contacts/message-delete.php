<?php 

if (!isAdmin()) {
	header('Location: ' .HOST);
	die();
}

$title = "Удаление сообщения";
$description = "Удалить сообщение";
$message = R::load('messages',$_GET['id']);
if (isset($_POST['message-delete'])) {

	//Удаляем файлы изображений, если они есть
	$img = $message->message_file;	
	$folderLocation = ROOT . 'usercontent/upload_files/';

	if ($img != '') {
		$imgPath = $folderLocation . $img;
		if (file_exists($imgPath)) { unlink($imgPath); }
	}

	R::trash($message);
 
	header('Location: ' .HOST.'messages?result=messageDeleted');
	exit();

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/message-delete.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>